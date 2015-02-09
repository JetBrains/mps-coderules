<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="1" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="jfki" ref="f:java_stub#7526e0cf-1ce7-46f8-a555-9eca1e06c23b#jetbrains.mps.unification(jetbrains.mps.unification@java_stub)" />
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
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
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1177666668936" name="jetbrains.mps.baseLanguage.structure.DoWhileStatement" flags="nn" index="MpOyq">
        <child id="1177666688034" name="condition" index="MpTkK" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
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
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
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
  <node concept="312cEu" id="2xQ7eRABXh4">
    <property role="TrG5h" value="Tree" />
    <node concept="2tJIrI" id="5JQSuNsxMiY" role="jymVt" />
    <node concept="2YIFZL" id="5JQSuNsxMzt" role="jymVt">
      <property role="TrG5h" value="create" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="5JQSuNsxMzw" role="3clF47">
        <node concept="3clFbF" id="5JQSuNsxMFn" role="3cqZAp">
          <node concept="2ShNRf" id="5JQSuNsxMFl" role="3clFbG">
            <node concept="1pGfFk" id="5JQSuNsxMO2" role="2ShVmc">
              <ref role="37wK5l" node="5JQSuNsxM_M" resolve="Tree" />
              <node concept="37vLTw" id="5JQSuNsxMOq" role="37wK5m">
                <ref role="3cqZAo" node="5JQSuNsxMzP" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5JQSuNsxMyY" role="1B3o_S" />
      <node concept="3uibUv" id="5JQSuNsxMzk" role="3clF45">
        <ref role="3uigEE" node="2xQ7eRABXh4" resolve="Tree" />
      </node>
      <node concept="37vLTG" id="5JQSuNsxMzP" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="1bm7a6FhRBF" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qUE_q" id="1bm7a6FklL$" role="11_B2D">
            <node concept="3uibUv" id="1bm7a6FklQK" role="3qUE_r">
              <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNsxM$n" role="jymVt" />
    <node concept="3clFbW" id="5JQSuNsxM_M" role="jymVt">
      <node concept="37vLTG" id="5JQSuNsxMAd" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="1bm7a6FhTv7" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qUE_q" id="1bm7a6Fkmhb" role="11_B2D">
            <node concept="3uibUv" id="1bm7a6FkmqI" role="3qUE_r">
              <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5JQSuNsxM_N" role="3clF45" />
      <node concept="3clFbS" id="5JQSuNsxM_P" role="3clF47">
        <node concept="3clFbF" id="5JQSuNsxMAH" role="3cqZAp">
          <node concept="37vLTI" id="5JQSuNsxMAJ" role="3clFbG">
            <node concept="2OqwBi" id="5JQSuNsxMAN" role="37vLTJ">
              <node concept="Xjq3P" id="5JQSuNsxMAQ" role="2Oq$k0" />
              <node concept="2OwXpG" id="5JQSuNsxMAM" role="2OqNvi">
                <ref role="2Oxat5" node="5JQSuNsxMAD" resolve="root" />
              </node>
            </node>
            <node concept="37vLTw" id="5JQSuNsxMAR" role="37vLTx">
              <ref role="3cqZAo" node="5JQSuNsxMAd" resolve="root" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5JQSuNsxM_Q" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5JQSuNsxMjf" role="jymVt" />
    <node concept="3clFb_" id="2xQ7eRACJS8" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="root" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="2xQ7eRACJSb" role="3clF47">
        <node concept="3clFbF" id="5JQSuNsxMCT" role="3cqZAp">
          <node concept="37vLTw" id="5JQSuNsxMCS" role="3clFbG">
            <ref role="3cqZAo" node="5JQSuNsxMAD" resolve="root" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1bm7a6FiZNn" role="3clF45">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
        <node concept="3qUE_q" id="1bm7a6FkmCR" role="11_B2D">
          <node concept="3uibUv" id="1bm7a6FkmJo" role="3qUE_r">
            <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2xQ7eRACJSG" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5JQSuNs_vxB" role="jymVt" />
    <node concept="3clFb_" id="5JQSuNs_vzS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="5JQSuNs_vzT" role="1B3o_S" />
      <node concept="17QB3L" id="6SkxsMz$UX6" role="3clF45" />
      <node concept="3clFbS" id="5JQSuNs_vzW" role="3clF47">
        <node concept="3clFbF" id="5JQSuNs_vCE" role="3cqZAp">
          <node concept="3cpWs3" id="5JQSuNs_w4o" role="3clFbG">
            <node concept="Xl_RD" id="5JQSuNs_w4y" role="3uHU7w">
              <property role="Xl_RC" value="]" />
            </node>
            <node concept="3cpWs3" id="5JQSuNs_vHV" role="3uHU7B">
              <node concept="Xl_RD" id="5JQSuNs_vCD" role="3uHU7B">
                <property role="Xl_RC" value="[" />
              </node>
              <node concept="2YIFZM" id="5JQSuNs_vOU" role="3uHU7w">
                <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                <node concept="37vLTw" id="5JQSuNs_vVN" role="37wK5m">
                  <ref role="3cqZAo" node="5JQSuNsxMAD" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5JQSuNs_vzX" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNsxMDx" role="jymVt" />
    <node concept="3Tm1VV" id="2xQ7eRABXh5" role="1B3o_S" />
    <node concept="312cEg" id="5JQSuNsxMAD" role="jymVt">
      <property role="TrG5h" value="root" />
      <node concept="3Tm6S6" id="5JQSuNsxMAE" role="1B3o_S" />
      <node concept="3uibUv" id="1bm7a6FhSab" role="1tU5fm">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
        <node concept="3qUE_q" id="1bm7a6Fkn8$" role="11_B2D">
          <node concept="3uibUv" id="1bm7a6FknuJ" role="3qUE_r">
            <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
          </node>
        </node>
      </node>
    </node>
  </node>
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
      <node concept="3Tm1VV" id="1msb0mq8QVb" role="1B3o_S" />
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
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
      </node>
      <node concept="3clFbS" id="1msb0mq8QTy" role="3clF47">
        <node concept="3clFbF" id="1msb0mq99w1" role="3cqZAp">
          <node concept="37vLTw" id="1msb0mq99w0" role="3clFbG">
            <ref role="3cqZAo" node="1msb0mq8QXA" resolve="symbol" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5JQSuNsxbhf" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFNWBq" role="jymVt" />
    <node concept="3clFb_" id="104EUzFNW3o" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="children" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="104EUzFNW3p" role="1B3o_S" />
      <node concept="3uibUv" id="104EUzFNW3q" role="3clF45">
        <ref role="3uigEE" to="k7g3:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="104EUzFNW3r" role="11_B2D">
          <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
        </node>
      </node>
      <node concept="3clFbS" id="104EUzFNW3s" role="3clF47">
        <node concept="3clFbF" id="104EUzFNW3t" role="3cqZAp">
          <node concept="2YIFZM" id="104EUzFNW3u" role="3clFbG">
            <ref role="1Pybhc" to="k7g3:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="k7g3:~Collections.emptyList():java.util.List" resolve="emptyList" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="104EUzFNW3v" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFNTqX" role="jymVt" />
    <node concept="3clFb_" id="104EUzFNSR8" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isTerm" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="104EUzFNSR9" role="1B3o_S" />
      <node concept="10P_77" id="104EUzFNSRa" role="3clF45" />
      <node concept="3clFbS" id="104EUzFNSRb" role="3clF47">
        <node concept="3clFbF" id="104EUzFNSRc" role="3cqZAp">
          <node concept="3clFbT" id="104EUzFNSRd" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="104EUzFNSRe" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFNSRf" role="jymVt" />
    <node concept="3clFb_" id="104EUzFNSRg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="asTerm" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="104EUzFNSRh" role="1B3o_S" />
      <node concept="3uibUv" id="104EUzFNSRi" role="3clF45">
        <ref role="3uigEE" to="jfki:~Term" resolve="Term" />
      </node>
      <node concept="3clFbS" id="104EUzFNSRj" role="3clF47">
        <node concept="3clFbF" id="104EUzFNSRk" role="3cqZAp">
          <node concept="Xjq3P" id="104EUzFNSRl" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="104EUzFNSRm" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFNSRn" role="jymVt" />
    <node concept="3clFb_" id="104EUzFNSRo" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isVar" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="104EUzFNSRp" role="1B3o_S" />
      <node concept="10P_77" id="104EUzFNSRq" role="3clF45" />
      <node concept="3clFbS" id="104EUzFNSRr" role="3clF47">
        <node concept="3clFbF" id="104EUzFNSRs" role="3cqZAp">
          <node concept="3clFbT" id="104EUzFNSRt" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="104EUzFNSRu" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFNSRv" role="jymVt" />
    <node concept="3clFb_" id="104EUzFNSRw" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="asVar" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="104EUzFNSRx" role="1B3o_S" />
      <node concept="3uibUv" id="104EUzFNSRy" role="3clF45">
        <ref role="3uigEE" to="jfki:~Var" resolve="Var" />
      </node>
      <node concept="3clFbS" id="104EUzFNSRz" role="3clF47">
        <node concept="YS8fn" id="104EUzFNSR$" role="3cqZAp">
          <node concept="2ShNRf" id="104EUzFNSR_" role="YScLw">
            <node concept="1pGfFk" id="104EUzFNSRA" role="2ShVmc">
              <ref role="37wK5l" to="e2lb:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="104EUzFNSRB" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5PpdwMfO3jx" role="jymVt" />
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
          <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02UIn0" role="3clF45">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
        <node concept="3uibUv" id="3OPtF02UIn8" role="11_B2D">
          <ref role="3uigEE" to="jfki:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3OPtF02UIn2" role="1B3o_S" />
      <node concept="3clFbS" id="3OPtF02UIn9" role="3clF47">
        <node concept="3clFbF" id="5s497VqIRDt" role="3cqZAp">
          <node concept="Xjq3P" id="5s497VqIRDs" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3OPtF02UQC1" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFORp5" role="jymVt" />
    <node concept="3clFb_" id="104EUzFOQG8" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="acceptVisitor" />
      <node concept="37vLTG" id="104EUzFOQG9" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="104EUzFOQGa" role="1tU5fm">
          <ref role="3uigEE" node="104EUzFOARB" resolve="ITreePart.Visitor" />
        </node>
      </node>
      <node concept="3uibUv" id="104EUzFOQGb" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqIpsl" role="jymVt" />
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
            <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
            <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
            <node concept="1rXfSq" id="6$jH9oLlPTn" role="37wK5m">
              <ref role="37wK5l" node="1msb0mq8QTt" resolve="symbol" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5JQSuNs$cdf" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNs$ckc" role="jymVt" />
    <node concept="3Tm1VV" id="2xQ7eRAD2dk" role="1B3o_S" />
    <node concept="312cEg" id="1msb0mq8QXA" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm6S6" id="1msb0mq8QXB" role="1B3o_S" />
      <node concept="16syzq" id="1msb0mq99yc" role="1tU5fm">
        <ref role="16sUi3" node="1msb0mq99pI" resolve="V" />
      </node>
    </node>
    <node concept="16euLQ" id="1msb0mq99pI" role="16eVyc">
      <property role="TrG5h" value="V" />
    </node>
    <node concept="3uibUv" id="104EUzFNYxa" role="EKbjA">
      <ref role="3uigEE" to="jfki:~Term" resolve="Term" />
    </node>
    <node concept="3uibUv" id="104EUzFNZ6w" role="EKbjA">
      <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
      <node concept="3uibUv" id="104EUzFNZS8" role="11_B2D">
        <ref role="3uigEE" to="jfki:~Term" resolve="Term" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1msb0mq99GH">
    <property role="TrG5h" value="ValuesBranch" />
    <node concept="3Tm1VV" id="1msb0mq99GI" role="1B3o_S" />
    <node concept="2tJIrI" id="5JQSuNsx59n" role="jymVt" />
    <node concept="2YIFZL" id="5JQSuNsx5Sv" role="jymVt">
      <property role="TrG5h" value="create" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="5JQSuNsx9Wu" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="1R$Cm9qIodq" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5JQSuNsx636" role="3clF46">
        <property role="TrG5h" value="values" />
        <node concept="8X2XB" id="5JQSuNsxa1D" role="1tU5fm">
          <node concept="3uibUv" id="5lJXK_S6b" role="8Xvag">
            <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
            <node concept="16syzq" id="5lJXK_T_U" role="11_B2D">
              <ref role="16sUi3" node="5JQSuNsx65w" resolve="V" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5JQSuNsx5Sy" role="3clF47">
        <node concept="3clFbF" id="5JQSuNsx68$" role="3cqZAp">
          <node concept="2ShNRf" id="5JQSuNsx68y" role="3clFbG">
            <node concept="1pGfFk" id="5JQSuNsx9UF" role="2ShVmc">
              <ref role="37wK5l" node="1msb0mq99PP" resolve="ValuesBranch" />
              <node concept="2YIFZM" id="6$jH9oLdGir" role="37wK5m">
                <ref role="37wK5l" node="1R$Cm9qEBDL" resolve="create" />
                <ref role="1Pybhc" node="1R$Cm9qEqLU" resolve="Path" />
                <node concept="37vLTw" id="6$jH9oLdGlo" role="37wK5m">
                  <ref role="3cqZAo" node="5JQSuNsx9Wu" resolve="symbol" />
                </node>
              </node>
              <node concept="37vLTw" id="5JQSuNsxa3T" role="37wK5m">
                <ref role="3cqZAo" node="5JQSuNsx636" resolve="values" />
              </node>
              <node concept="16syzq" id="5JQSuNszl0m" role="1pMfVU">
                <ref role="16sUi3" node="5JQSuNsx65w" resolve="V" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5JQSuNsx5lx" role="1B3o_S" />
      <node concept="3uibUv" id="5JQSuNsx5Qz" role="3clF45">
        <ref role="3uigEE" node="1msb0mq99GH" resolve="ValuesBranch" />
        <node concept="16syzq" id="5JQSuNszkOK" role="11_B2D">
          <ref role="16sUi3" node="5JQSuNsx65w" resolve="V" />
        </node>
      </node>
      <node concept="16euLQ" id="5JQSuNsx65w" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
    </node>
    <node concept="2tJIrI" id="1msb0mq9GiG" role="jymVt" />
    <node concept="3clFbW" id="1msb0mq99PP" role="jymVt">
      <node concept="3cqZAl" id="1msb0mq99PQ" role="3clF45" />
      <node concept="3clFbS" id="1msb0mq99PS" role="3clF47">
        <node concept="XkiVB" id="1msb0mq9YEk" role="3cqZAp">
          <ref role="37wK5l" node="1msb0mq9JZ8" resolve="Branch" />
          <node concept="37vLTw" id="1R$Cm9qHaIM" role="37wK5m">
            <ref role="3cqZAo" node="1msb0mq99VR" resolve="symbolPath" />
          </node>
          <node concept="37vLTw" id="1msb0mq9YPV" role="37wK5m">
            <ref role="3cqZAo" node="1msb0mq9vsN" resolve="values" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1msb0mq99PT" role="1B3o_S" />
      <node concept="37vLTG" id="1msb0mq99VR" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="3uibUv" id="6$jH9oLdG1l" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="1msb0mq9vsN" role="3clF46">
        <property role="TrG5h" value="values" />
        <node concept="10Q1$e" id="1msb0mq9$uS" role="1tU5fm">
          <node concept="3uibUv" id="5lJXK_QMp" role="10Q1$1">
            <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
            <node concept="16syzq" id="5lJXK_Uin" role="11_B2D">
              <ref role="16sUi3" node="1msb0mq99K4" resolve="V" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNs$dPk" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6EXT8b" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="copyRecursively" />
      <node concept="3uibUv" id="1bm7a6EZOQ6" role="3clF45">
        <ref role="3uigEE" node="1msb0mq99GH" resolve="ValuesBranch" />
        <node concept="16syzq" id="1bm7a6EZRhu" role="11_B2D">
          <ref role="16sUi3" node="1msb0mq99K4" resolve="V" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1bm7a6EXT8d" role="1B3o_S" />
      <node concept="3clFbS" id="1bm7a6EXT8i" role="3clF47">
        <node concept="3clFbF" id="1bm7a6EXU3e" role="3cqZAp">
          <node concept="2YIFZM" id="1bm7a6EXU99" role="3clFbG">
            <ref role="37wK5l" node="5JQSuNsx5Sv" resolve="create" />
            <ref role="1Pybhc" node="1msb0mq99GH" resolve="ValuesBranch" />
            <node concept="2OqwBi" id="1bm7a6EXUSD" role="37wK5m">
              <node concept="1rXfSq" id="1bm7a6EXUSE" role="2Oq$k0">
                <ref role="37wK5l" node="1R$Cm9qGYlZ" resolve="path" />
              </node>
              <node concept="liA8E" id="1bm7a6EXUSF" role="2OqNvi">
                <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
              </node>
            </node>
            <node concept="1rXfSq" id="1bm7a6EXUSG" role="37wK5m">
              <ref role="37wK5l" node="1bm7a6EXK6a" resolve="childrenArr" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1bm7a6EZQdc" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6EXTBm" role="jymVt" />
    <node concept="3clFb_" id="3OPtF02TY7K" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="mapRecursively" />
      <node concept="37vLTG" id="3OPtF02TY7L" role="3clF46">
        <property role="TrG5h" value="mapper" />
        <node concept="3uibUv" id="3OPtF02TY7M" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3OPtF02TY7P" role="1B3o_S" />
      <node concept="2AHcQZ" id="3OPtF02TY7R" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3OPtF02TY7U" role="3clF47">
        <node concept="3cpWs8" id="3OPtF02U4C9" role="3cqZAp">
          <node concept="3cpWsn" id="3OPtF02U4Ca" role="3cpWs9">
            <property role="TrG5h" value="values" />
            <node concept="10Q1$e" id="3OPtF02U4BI" role="1tU5fm">
              <node concept="3uibUv" id="3OPtF02U4BL" role="10Q1$1">
                <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
                <node concept="16syzq" id="3OPtF02U5t7" role="11_B2D">
                  <ref role="16sUi3" node="1msb0mq99K4" resolve="V" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="3OPtF02U4Cb" role="33vP2m">
              <node concept="3$_iS1" id="3OPtF02U4Cc" role="2ShVmc">
                <node concept="3$GHV9" id="3OPtF02U4Cd" role="3$GQph">
                  <node concept="1rXfSq" id="3OPtF02U6gJ" role="3$I4v7">
                    <ref role="37wK5l" node="6$jH9oLbZOI" resolve="childrenSize" />
                  </node>
                </node>
                <node concept="3uibUv" id="3OPtF02U4Ch" role="3$_nBY">
                  <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="3OPtF02U80_" role="3cqZAp">
          <node concept="3clFbS" id="3OPtF02U80C" role="2LFqv$">
            <node concept="3clFbF" id="3OPtF02UcQK" role="3cqZAp">
              <node concept="37vLTI" id="3OPtF02UdGm" role="3clFbG">
                <node concept="10QFUN" id="5s497VqMFY_" role="37vLTx">
                  <node concept="3uibUv" id="5s497VqMFYu" role="10QFUM">
                    <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
                    <node concept="16syzq" id="5s497VqMFYv" role="11_B2D">
                      <ref role="16sUi3" node="1msb0mq99K4" resolve="V" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5s497VqMFYw" role="10QFUP">
                    <node concept="37vLTw" id="5s497VqMFYx" role="2Oq$k0">
                      <ref role="3cqZAo" node="3OPtF02TY7L" resolve="mapper" />
                    </node>
                    <node concept="liA8E" id="5s497VqMFYy" role="2OqNvi">
                      <ref role="37wK5l" node="3OPtF02TgQt" resolve="map" />
                      <node concept="1rXfSq" id="5s497VqMFYz" role="37wK5m">
                        <ref role="37wK5l" node="6$jH9oLbK0n" resolve="childAt" />
                        <node concept="37vLTw" id="5s497VqMFY$" role="37wK5m">
                          <ref role="3cqZAo" node="3OPtF02U80F" resolve="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="AH0OO" id="3OPtF02Ud7B" role="37vLTJ">
                  <node concept="37vLTw" id="3OPtF02Udo9" role="AHEQo">
                    <ref role="3cqZAo" node="3OPtF02U80F" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="3OPtF02UcQJ" role="AHHXb">
                    <ref role="3cqZAo" node="3OPtF02U4Ca" resolve="values" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3OPtF02U80F" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="3OPtF02U8ir" role="1tU5fm" />
            <node concept="3cmrfG" id="3OPtF02UaKC" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="3OPtF02Ubyz" role="1Dwp0S">
            <node concept="1rXfSq" id="3OPtF02UbM6" role="3uHU7w">
              <ref role="37wK5l" node="6$jH9oLbZOI" resolve="childrenSize" />
            </node>
            <node concept="37vLTw" id="3OPtF02UaZc" role="3uHU7B">
              <ref role="3cqZAo" node="3OPtF02U80F" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="3OPtF02UcyF" role="1Dwrff">
            <node concept="37vLTw" id="3OPtF02UcyH" role="2$L3a6">
              <ref role="3cqZAo" node="3OPtF02U80F" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF02Uiiw" role="3cqZAp">
          <node concept="2YIFZM" id="3OPtF02UiXe" role="3clFbG">
            <ref role="37wK5l" node="5JQSuNsx5Sv" resolve="create" />
            <ref role="1Pybhc" node="1msb0mq99GH" resolve="ValuesBranch" />
            <node concept="2OqwBi" id="3OPtF02Uk6d" role="37wK5m">
              <node concept="1rXfSq" id="3OPtF02UjBo" role="2Oq$k0">
                <ref role="37wK5l" node="1R$Cm9qGYlZ" resolve="path" />
              </node>
              <node concept="liA8E" id="3OPtF02UkDZ" role="2OqNvi">
                <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
              </node>
            </node>
            <node concept="37vLTw" id="3OPtF02Uldh" role="37wK5m">
              <ref role="3cqZAo" node="3OPtF02U4Ca" resolve="values" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02V_L3" role="3clF45">
        <ref role="3uigEE" node="1msb0mq99GH" resolve="ValuesBranch" />
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
          <ref role="3uigEE" node="104EUzFOARB" resolve="ITreePart.Visitor" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02YXD2" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="47nvOnTS3ty" role="1B3o_S" />
      <node concept="3clFbS" id="47nvOnTS3tF" role="3clF47">
        <node concept="3clFbF" id="47nvOnTS58$" role="3cqZAp">
          <node concept="2OqwBi" id="47nvOnTS59e" role="3clFbG">
            <node concept="37vLTw" id="47nvOnTS58z" role="2Oq$k0">
              <ref role="3cqZAo" node="47nvOnTS3tv" resolve="visitor" />
            </node>
            <node concept="liA8E" id="47nvOnTS5EH" role="2OqNvi">
              <ref role="37wK5l" node="104EUzFOARP" resolve="visitValues" />
              <node concept="Xjq3P" id="47nvOnTS5GC" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="47nvOnTS68s" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
              <ref role="3uigEE" to="e2lb:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="2q_78a93qs4" role="33vP2m">
              <node concept="1pGfFk" id="2q_78a93qs5" role="2ShVmc">
                <ref role="37wK5l" to="e2lb:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2q_78a93qs6" role="3cqZAp">
          <node concept="2OqwBi" id="2q_78a93qs7" role="3clFbG">
            <node concept="2OqwBi" id="2q_78a93qs8" role="2Oq$k0">
              <node concept="37vLTw" id="2q_78a93qsa" role="2Oq$k0">
                <ref role="3cqZAo" node="2q_78a93qs2" resolve="sb" />
              </node>
              <node concept="liA8E" id="2q_78a93qsd" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="2YIFZM" id="2q_78a93qse" role="37wK5m">
                  <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                  <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                  <node concept="2OqwBi" id="2q_78a93qsf" role="37wK5m">
                    <node concept="1rXfSq" id="2q_78a93qsg" role="2Oq$k0">
                      <ref role="37wK5l" node="1R$Cm9qGYlZ" resolve="path" />
                    </node>
                    <node concept="liA8E" id="2q_78a93qsh" role="2OqNvi">
                      <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2q_78a93qsi" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="Xl_RD" id="2q_78a93qsj" role="37wK5m">
                <property role="Xl_RC" value="=\&quot;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2q_78a93qsk" role="3cqZAp">
          <node concept="3cpWsn" id="2q_78a93qsl" role="3cpWs9">
            <property role="TrG5h" value="sep" />
            <node concept="17QB3L" id="2q_78a93qsm" role="1tU5fm" />
            <node concept="Xl_RD" id="2q_78a93qsn" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="2q_78a93qso" role="3cqZAp">
          <node concept="3clFbS" id="2q_78a93qsp" role="2LFqv$">
            <node concept="3clFbF" id="2q_78a93qsq" role="3cqZAp">
              <node concept="2OqwBi" id="2q_78a93qsr" role="3clFbG">
                <node concept="2OqwBi" id="2q_78a93qss" role="2Oq$k0">
                  <node concept="37vLTw" id="2q_78a93qst" role="2Oq$k0">
                    <ref role="3cqZAo" node="2q_78a93qs2" resolve="sb" />
                  </node>
                  <node concept="liA8E" id="2q_78a93qsu" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                    <node concept="37vLTw" id="2q_78a93qsv" role="37wK5m">
                      <ref role="3cqZAo" node="2q_78a93qsl" resolve="sep" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2q_78a93qsw" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="2OqwBi" id="2q_78a93qsx" role="37wK5m">
                    <node concept="37vLTw" id="2q_78a93qsy" role="2Oq$k0">
                      <ref role="3cqZAo" node="2q_78a93qsC" resolve="val" />
                    </node>
                    <node concept="liA8E" id="2q_78a93qsz" role="2OqNvi">
                      <ref role="37wK5l" node="5JQSuNs$cd8" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2q_78a93qs$" role="3cqZAp">
              <node concept="37vLTI" id="2q_78a93qs_" role="3clFbG">
                <node concept="Xl_RD" id="2q_78a93qsA" role="37vLTx">
                  <property role="Xl_RC" value="," />
                </node>
                <node concept="37vLTw" id="2q_78a93qsB" role="37vLTJ">
                  <ref role="3cqZAo" node="2q_78a93qsl" resolve="sep" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2q_78a93qsC" role="1Duv9x">
            <property role="TrG5h" value="val" />
            <node concept="3uibUv" id="2q_78a93s3b" role="1tU5fm">
              <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
              <node concept="16syzq" id="2q_78a93svb" role="11_B2D">
                <ref role="16sUi3" node="1msb0mq99K4" resolve="V" />
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="2q_78a93qsE" role="1DdaDG">
            <ref role="37wK5l" node="5JQSuNswjSg" resolve="children" />
          </node>
        </node>
        <node concept="3clFbF" id="2q_78a93qsF" role="3cqZAp">
          <node concept="2OqwBi" id="2q_78a93qsG" role="3clFbG">
            <node concept="2OqwBi" id="2q_78a93qsH" role="2Oq$k0">
              <node concept="37vLTw" id="2q_78a93qsI" role="2Oq$k0">
                <ref role="3cqZAo" node="2q_78a93qs2" resolve="sb" />
              </node>
              <node concept="liA8E" id="2q_78a93qsJ" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="Xl_RD" id="2q_78a93qsK" role="37wK5m">
                  <property role="Xl_RC" value="\&quot;" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2q_78a93qsL" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5JQSuNs$e6H" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1msb0mq9$kL" role="jymVt" />
    <node concept="16euLQ" id="1msb0mq99K4" role="16eVyc">
      <property role="TrG5h" value="V" />
    </node>
    <node concept="3uibUv" id="1msb0mq9VxT" role="1zkMxy">
      <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
      <node concept="3uibUv" id="5lJXK_KKQ" role="11_B2D">
        <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
        <node concept="16syzq" id="5lJXK_OyH" role="11_B2D">
          <ref role="16sUi3" node="1msb0mq99K4" resolve="V" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1msb0mq9ID4">
    <property role="TrG5h" value="Branch" />
    <property role="1sVAO0" value="true" />
    <node concept="3Tm1VV" id="1msb0mq9ID5" role="1B3o_S" />
    <node concept="3uibUv" id="1msb0mq9ID_" role="EKbjA">
      <ref role="3uigEE" to="jfki:~Term" resolve="Term" />
    </node>
    <node concept="3uibUv" id="104EUzGgROM" role="EKbjA">
      <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
      <node concept="3uibUv" id="104EUzGgTtD" role="11_B2D">
        <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
        <node concept="16syzq" id="104EUzGgU6L" role="11_B2D">
          <ref role="16sUi3" node="5JQSuNswjwE" resolve="T" />
        </node>
      </node>
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
                <ref role="2Oxat5" node="5JQSuNswjST" resolve="branches" />
              </node>
            </node>
            <node concept="37vLTw" id="1msb0mq9KbL" role="37vLTx">
              <ref role="3cqZAo" node="1msb0mq9K2N" resolve="branches" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1msb0mq9JZc" role="1B3o_S" />
      <node concept="37vLTG" id="1R$Cm9qH1ri" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="3uibUv" id="6$jH9oLdDM2" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="1msb0mq9K2N" role="3clF46">
        <property role="TrG5h" value="branches" />
        <node concept="10Q1$e" id="1msb0mq9K4Q" role="1tU5fm">
          <node concept="16syzq" id="5JQSuNswFo5" role="10Q1$1">
            <ref role="16sUi3" node="5JQSuNswjwE" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1msb0mq9L$H" role="jymVt" />
    <node concept="3clFb_" id="5JQSuNswjSg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="children" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="5JQSuNswjSh" role="1B3o_S" />
      <node concept="3uibUv" id="5JQSuNswjSi" role="3clF45">
        <ref role="3uigEE" to="k7g3:~Collection" resolve="Collection" />
        <node concept="16syzq" id="1bm7a6EYqtm" role="11_B2D">
          <ref role="16sUi3" node="5JQSuNswjwE" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="5JQSuNswjSk" role="3clF47">
        <node concept="3clFbF" id="5JQSuNswjSl" role="3cqZAp">
          <node concept="2YIFZM" id="5JQSuNswjSm" role="3clFbG">
            <ref role="37wK5l" to="k7g3:~Collections.unmodifiableCollection(java.util.Collection):java.util.Collection" resolve="unmodifiableCollection" />
            <ref role="1Pybhc" to="k7g3:~Collections" resolve="Collections" />
            <node concept="2YIFZM" id="5JQSuNswjSn" role="37wK5m">
              <ref role="1Pybhc" to="k7g3:~Arrays" resolve="Arrays" />
              <ref role="37wK5l" to="k7g3:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
              <node concept="37vLTw" id="5JQSuNswjSo" role="37wK5m">
                <ref role="3cqZAo" node="5JQSuNswjST" resolve="branches" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5JQSuNswKvf" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNswjSq" role="jymVt" />
    <node concept="3clFb_" id="5JQSuNswjSr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isTerm" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="5JQSuNswjSs" role="1B3o_S" />
      <node concept="10P_77" id="5JQSuNswjSt" role="3clF45" />
      <node concept="3clFbS" id="5JQSuNswjSu" role="3clF47">
        <node concept="3clFbF" id="5JQSuNswjSv" role="3cqZAp">
          <node concept="3clFbT" id="5JQSuNswjSw" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5JQSuNswjSx" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNswKNs" role="jymVt" />
    <node concept="3clFb_" id="5JQSuNswjSy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="asTerm" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="5JQSuNswjSz" role="1B3o_S" />
      <node concept="3uibUv" id="5JQSuNswjS$" role="3clF45">
        <ref role="3uigEE" to="jfki:~Term" resolve="Term" />
      </node>
      <node concept="3clFbS" id="5JQSuNswjS_" role="3clF47">
        <node concept="3clFbF" id="5JQSuNswjSA" role="3cqZAp">
          <node concept="Xjq3P" id="5JQSuNswjSB" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5JQSuNswjSC" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNswL7e" role="jymVt" />
    <node concept="3clFb_" id="5JQSuNswjSD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isVar" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="5JQSuNswjSE" role="1B3o_S" />
      <node concept="10P_77" id="5JQSuNswjSF" role="3clF45" />
      <node concept="3clFbS" id="5JQSuNswjSG" role="3clF47">
        <node concept="3clFbF" id="5JQSuNswjSH" role="3cqZAp">
          <node concept="3clFbT" id="5JQSuNswjSI" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5JQSuNswjSJ" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNswLpf" role="jymVt" />
    <node concept="3clFb_" id="5JQSuNswjSK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="asVar" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="5JQSuNswjSL" role="1B3o_S" />
      <node concept="3uibUv" id="5JQSuNswjSM" role="3clF45">
        <ref role="3uigEE" to="jfki:~Var" resolve="Var" />
      </node>
      <node concept="3clFbS" id="5JQSuNswjSN" role="3clF47">
        <node concept="YS8fn" id="5JQSuNswjSO" role="3cqZAp">
          <node concept="2ShNRf" id="5JQSuNswjSP" role="YScLw">
            <node concept="1pGfFk" id="5JQSuNswjSQ" role="2ShVmc">
              <ref role="37wK5l" to="e2lb:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5JQSuNswjSR" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNs$iz_" role="jymVt" />
    <node concept="3clFb_" id="1R$Cm9qGRoH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1R$Cm9qGRoI" role="1B3o_S" />
      <node concept="3uibUv" id="1R$Cm9qGRoK" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
    </node>
    <node concept="2tJIrI" id="1R$Cm9qGWIx" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6EYD0x" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="copyRecursively" />
      <node concept="3uibUv" id="1bm7a6EZcE2" role="3clF45">
        <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
        <node concept="16syzq" id="1bm7a6EZdYq" role="11_B2D">
          <ref role="16sUi3" node="5JQSuNswjwE" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1bm7a6EYD0z" role="1B3o_S" />
      <node concept="3clFbS" id="1bm7a6EYD0A" role="3clF47" />
      <node concept="2AHcQZ" id="1bm7a6EYE2c" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6EYF63" role="jymVt" />
    <node concept="3clFb_" id="3OPtF02TqPB" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="mapRecursively" />
      <node concept="37vLTG" id="3OPtF02TqPC" role="3clF46">
        <property role="TrG5h" value="mapper" />
        <node concept="3uibUv" id="3OPtF02TqPD" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02Tu6P" role="3clF45">
        <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
        <node concept="16syzq" id="3OPtF02Tus6" role="11_B2D">
          <ref role="16sUi3" node="5JQSuNswjwE" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3OPtF02TqPG" role="1B3o_S" />
      <node concept="3clFbS" id="3OPtF02TqPP" role="3clF47" />
      <node concept="2AHcQZ" id="3OPtF02TsDH" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF02Txyh" role="jymVt" />
    <node concept="3clFb_" id="1R$Cm9qGYlZ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="path" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
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
        <ref role="2AI5Lk" to="e2lb:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="P$JXv" id="3AEuFq_MZsK" role="lGtFl">
        <node concept="TZ5HA" id="3AEuFq_MZsL" role="TZ5H$">
          <node concept="1dT_AC" id="3AEuFq_MZsM" role="1dT_Ay">
            <property role="1dT_AB" value="TODO: remove" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6EX$CM" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6EXK6a" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="childrenArr" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1bm7a6EXK6d" role="3clF47">
        <node concept="3clFbF" id="1bm7a6EXLhC" role="3cqZAp">
          <node concept="37vLTw" id="1bm7a6EXLhB" role="3clFbG">
            <ref role="3cqZAo" node="5JQSuNswjST" resolve="branches" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1bm7a6EXJmm" role="1B3o_S" />
      <node concept="10Q1$e" id="1bm7a6EXKLY" role="3clF45">
        <node concept="16syzq" id="1bm7a6EXKLX" role="10Q1$1">
          <ref role="16sUi3" node="5JQSuNswjwE" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6$jH9oLbHbo" role="jymVt" />
    <node concept="3clFb_" id="6$jH9oLbZOI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="childrenSize" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6$jH9oLbZOL" role="3clF47">
        <node concept="3clFbF" id="6$jH9oLc0uK" role="3cqZAp">
          <node concept="2OqwBi" id="6$jH9oLc0y3" role="3clFbG">
            <node concept="37vLTw" id="6$jH9oLc0uJ" role="2Oq$k0">
              <ref role="3cqZAo" node="5JQSuNswjST" resolve="branches" />
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
      <property role="TrG5h" value="childAt" />
      <node concept="37vLTG" id="6$jH9oLbMwC" role="3clF46">
        <property role="TrG5h" value="idx" />
        <node concept="10Oyi0" id="6$jH9oLbMMK" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="6$jH9oLbL1I" role="3clF45">
        <ref role="16sUi3" node="5JQSuNswjwE" resolve="T" />
      </node>
      <node concept="3Tmbuc" id="6$jH9oLbKCq" role="1B3o_S" />
      <node concept="3clFbS" id="6$jH9oLbK0r" role="3clF47">
        <node concept="3clFbF" id="6$jH9oLbMNT" role="3cqZAp">
          <node concept="AH0OO" id="6$jH9oLbMZ0" role="3clFbG">
            <node concept="37vLTw" id="6$jH9oLbN7N" role="AHEQo">
              <ref role="3cqZAo" node="6$jH9oLbMwC" resolve="idx" />
            </node>
            <node concept="37vLTw" id="6$jH9oLbMNS" role="AHHXb">
              <ref role="3cqZAo" node="5JQSuNswjST" resolve="branches" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNswjSS" role="jymVt" />
    <node concept="312cEg" id="5JQSuNswjST" role="jymVt">
      <property role="TrG5h" value="branches" />
      <node concept="3Tm6S6" id="5JQSuNswjSU" role="1B3o_S" />
      <node concept="10Q1$e" id="5JQSuNswjSV" role="1tU5fm">
        <node concept="16syzq" id="5JQSuNswjSW" role="10Q1$1">
          <ref role="16sUi3" node="5JQSuNswjwE" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R$Cm9qGSuT" role="jymVt" />
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
    <node concept="16euLQ" id="5JQSuNswjwE" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3uibUv" id="5JQSuNswH6o" role="3ztrMU">
        <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5JQSuNswOXL">
    <property role="TrG5h" value="ChildrenBranch" />
    <node concept="3Tm1VV" id="5JQSuNswOXM" role="1B3o_S" />
    <node concept="3uibUv" id="5JQSuNswOY9" role="1zkMxy">
      <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
      <node concept="3uibUv" id="5JQSuNswSi8" role="11_B2D">
        <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
        <node concept="16syzq" id="5JQSuNswV2G" role="11_B2D">
          <ref role="16sUi3" node="5JQSuNswS6P" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNsxgT7" role="jymVt" />
    <node concept="2YIFZL" id="5JQSuNsxhfn" role="jymVt">
      <property role="TrG5h" value="create" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="5JQSuNsxhmc" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="1R$Cm9qImDI" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5JQSuNsxhoK" role="3clF46">
        <property role="TrG5h" value="children" />
        <node concept="8X2XB" id="5JQSuNsxh_S" role="1tU5fm">
          <node concept="3uibUv" id="5JQSuNsxhtQ" role="8Xvag">
            <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
            <node concept="3qTvmN" id="6$jH9oLf5mO" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5JQSuNsxhfq" role="3clF47">
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
        <node concept="3cpWs8" id="1R$Cm9qGViz" role="3cqZAp">
          <node concept="3cpWsn" id="1R$Cm9qGVi$" role="3cpWs9">
            <property role="TrG5h" value="br" />
            <node concept="3uibUv" id="1R$Cm9qGVio" role="1tU5fm">
              <ref role="3uigEE" node="5JQSuNswOXL" resolve="ChildrenBranch" />
              <node concept="16syzq" id="6$jH9oLcJiC" role="11_B2D">
                <ref role="16sUi3" node="5JQSuNsxhqB" resolve="T" />
              </node>
            </node>
            <node concept="2ShNRf" id="1R$Cm9qGVi_" role="33vP2m">
              <node concept="1pGfFk" id="1R$Cm9qGViA" role="2ShVmc">
                <ref role="37wK5l" node="5JQSuNswP2z" resolve="ChildrenBranch" />
                <node concept="37vLTw" id="6$jH9oLdIkd" role="37wK5m">
                  <ref role="3cqZAo" node="6$jH9oLdIka" resolve="path" />
                </node>
                <node concept="37vLTw" id="1R$Cm9qGViC" role="37wK5m">
                  <ref role="3cqZAo" node="5JQSuNsxhoK" resolve="children" />
                </node>
                <node concept="16syzq" id="6$jH9oLcJSL" role="1pMfVU">
                  <ref role="16sUi3" node="5JQSuNsxhqB" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1R$Cm9qGVt3" role="3cqZAp">
          <node concept="3clFbS" id="1R$Cm9qGVt6" role="2LFqv$">
            <node concept="3clFbF" id="1R$Cm9qGZzo" role="3cqZAp">
              <node concept="2OqwBi" id="1R$Cm9qGZHS" role="3clFbG">
                <node concept="2OqwBi" id="3OPtF0349yF" role="2Oq$k0">
                  <node concept="37vLTw" id="3OPtF0349yG" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R$Cm9qGVt9" resolve="ch" />
                  </node>
                  <node concept="liA8E" id="3OPtF0349yH" role="2OqNvi">
                    <ref role="37wK5l" node="1R$Cm9qGYlZ" resolve="path" />
                  </node>
                </node>
                <node concept="liA8E" id="1R$Cm9qGZOe" role="2OqNvi">
                  <ref role="37wK5l" node="1R$Cm9qEroc" resolve="prepend" />
                  <node concept="37vLTw" id="6$jH9oLdIOr" role="37wK5m">
                    <ref role="3cqZAo" node="6$jH9oLdIka" resolve="path" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1R$Cm9qGVt9" role="1Duv9x">
            <property role="TrG5h" value="ch" />
            <node concept="3uibUv" id="1R$Cm9qGVEy" role="1tU5fm">
              <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
              <node concept="3qTvmN" id="6$jH9oLf7u4" role="11_B2D" />
            </node>
          </node>
          <node concept="37vLTw" id="1R$Cm9qGWcp" role="1DdaDG">
            <ref role="3cqZAo" node="5JQSuNsxhoK" resolve="children" />
          </node>
        </node>
        <node concept="3clFbF" id="5JQSuNsxiQN" role="3cqZAp">
          <node concept="37vLTw" id="1R$Cm9qGViD" role="3clFbG">
            <ref role="3cqZAo" node="1R$Cm9qGVi$" resolve="br" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5JQSuNsxh5a" role="1B3o_S" />
      <node concept="3uibUv" id="5JQSuNsxhdt" role="3clF45">
        <ref role="3uigEE" node="5JQSuNswOXL" resolve="ChildrenBranch" />
        <node concept="16syzq" id="5JQSuNszt2c" role="11_B2D">
          <ref role="16sUi3" node="5JQSuNsxhqB" resolve="T" />
        </node>
      </node>
      <node concept="16euLQ" id="5JQSuNsxhqB" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="3OPtF03d$hW" role="3ztrMU">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="3OPtF03d$Y4" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNsxgYt" role="jymVt" />
    <node concept="3clFbW" id="5JQSuNswP2z" role="jymVt">
      <node concept="3cqZAl" id="5JQSuNswP2$" role="3clF45" />
      <node concept="3clFbS" id="5JQSuNswP2A" role="3clF47">
        <node concept="XkiVB" id="5JQSuNswQer" role="3cqZAp">
          <ref role="37wK5l" node="1msb0mq9JZ8" resolve="Branch" />
          <node concept="37vLTw" id="1R$Cm9qH7KO" role="37wK5m">
            <ref role="3cqZAo" node="5JQSuNswP3S" resolve="symbolPath" />
          </node>
          <node concept="37vLTw" id="5JQSuNswQik" role="37wK5m">
            <ref role="3cqZAo" node="5JQSuNswPj8" resolve="children" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5JQSuNswP2B" role="1B3o_S" />
      <node concept="37vLTG" id="5JQSuNswP3S" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="3uibUv" id="6$jH9oLdGGe" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="5JQSuNswPj8" role="3clF46">
        <property role="TrG5h" value="children" />
        <node concept="10Q1$e" id="5JQSuNswQ9p" role="1tU5fm">
          <node concept="3uibUv" id="5JQSuNswVCy" role="10Q1$1">
            <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6EY4kQ" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6EY4Ia" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="copyRecursively" />
      <node concept="3uibUv" id="1bm7a6EZ0kf" role="3clF45">
        <ref role="3uigEE" node="5JQSuNswOXL" resolve="ChildrenBranch" />
        <node concept="16syzq" id="1bm7a6EZ1sh" role="11_B2D">
          <ref role="16sUi3" node="5JQSuNswS6P" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1bm7a6EY4Ic" role="1B3o_S" />
      <node concept="3clFbS" id="1bm7a6EY4Ih" role="3clF47">
        <node concept="3cpWs8" id="1bm7a6F2ReL" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6F2ReM" role="3cpWs9">
            <property role="TrG5h" value="childrenCopy" />
            <node concept="10Q1$e" id="1bm7a6F2ReC" role="1tU5fm">
              <node concept="3uibUv" id="1bm7a6F2ReF" role="10Q1$1">
                <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
              </node>
            </node>
            <node concept="2ShNRf" id="1bm7a6F2ReN" role="33vP2m">
              <node concept="3$_iS1" id="1bm7a6F2ReO" role="2ShVmc">
                <node concept="3$GHV9" id="1bm7a6F2ReP" role="3$GQph">
                  <node concept="1rXfSq" id="1bm7a6F2ReQ" role="3$I4v7">
                    <ref role="37wK5l" node="6$jH9oLbZOI" resolve="childrenSize" />
                  </node>
                </node>
                <node concept="3uibUv" id="1bm7a6F2ReR" role="3$_nBY">
                  <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
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
                  <node concept="1rXfSq" id="1bm7a6F2Vnj" role="2Oq$k0">
                    <ref role="37wK5l" node="6$jH9oLbK0n" resolve="childAt" />
                    <node concept="37vLTw" id="1bm7a6F2V_Z" role="37wK5m">
                      <ref role="3cqZAo" node="1bm7a6F2Suo" resolve="i" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1bm7a6F2Wb5" role="2OqNvi">
                    <ref role="37wK5l" node="1bm7a6EYD0x" resolve="copyRecursively" />
                  </node>
                </node>
                <node concept="AH0OO" id="1bm7a6F2V8J" role="37vLTJ">
                  <node concept="37vLTw" id="1bm7a6F2Va6" role="AHEQo">
                    <ref role="3cqZAo" node="1bm7a6F2Suo" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="1bm7a6F2UGb" role="AHHXb">
                    <ref role="3cqZAo" node="1bm7a6F2ReM" resolve="childrenCopy" />
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
            <node concept="1rXfSq" id="1bm7a6F2TKu" role="3uHU7w">
              <ref role="37wK5l" node="6$jH9oLbZOI" resolve="childrenSize" />
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
            <ref role="1Pybhc" node="5JQSuNswOXL" resolve="ChildrenBranch" />
            <node concept="2OqwBi" id="1bm7a6EYaTL" role="37wK5m">
              <node concept="1rXfSq" id="1bm7a6EYaHd" role="2Oq$k0">
                <ref role="37wK5l" node="1R$Cm9qGYlZ" resolve="path" />
              </node>
              <node concept="liA8E" id="1bm7a6EYb5h" role="2OqNvi">
                <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
              </node>
            </node>
            <node concept="37vLTw" id="1bm7a6F2WHc" role="37wK5m">
              <ref role="3cqZAo" node="1bm7a6F2ReM" resolve="childrenCopy" />
            </node>
            <node concept="16syzq" id="1bm7a6EZ5rA" role="3PaCim">
              <ref role="16sUi3" node="5JQSuNswS6P" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1bm7a6EYLsS" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF02TzXt" role="jymVt" />
    <node concept="3clFb_" id="3OPtF02T_i3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="mapRecursively" />
      <node concept="37vLTG" id="3OPtF02T_i4" role="3clF46">
        <property role="TrG5h" value="mapper" />
        <node concept="3uibUv" id="3OPtF02T_i5" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3OPtF02T_i8" role="1B3o_S" />
      <node concept="2AHcQZ" id="3OPtF02T_ia" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3OPtF02T_id" role="3clF47">
        <node concept="3cpWs8" id="3OPtF02TEoH" role="3cqZAp">
          <node concept="3cpWsn" id="3OPtF02TEoI" role="3cpWs9">
            <property role="TrG5h" value="childrenCopy" />
            <node concept="10Q1$e" id="3OPtF02TEoJ" role="1tU5fm">
              <node concept="3uibUv" id="5s497VqEAyr" role="10Q1$1">
                <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
                <node concept="16syzq" id="5s497VqMSKE" role="11_B2D">
                  <ref role="16sUi3" node="5JQSuNswS6P" resolve="T" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="3OPtF02TEoL" role="33vP2m">
              <node concept="3$_iS1" id="3OPtF02TEoM" role="2ShVmc">
                <node concept="3$GHV9" id="3OPtF02TEoN" role="3$GQph">
                  <node concept="1rXfSq" id="3OPtF02TEoO" role="3$I4v7">
                    <ref role="37wK5l" node="6$jH9oLbZOI" resolve="childrenSize" />
                  </node>
                </node>
                <node concept="3uibUv" id="3OPtF02TEoP" role="3$_nBY">
                  <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="3OPtF02TEoQ" role="3cqZAp">
          <node concept="3clFbS" id="3OPtF02TEoR" role="2LFqv$">
            <node concept="3clFbF" id="3OPtF02TEoS" role="3cqZAp">
              <node concept="37vLTI" id="3OPtF02TEoT" role="3clFbG">
                <node concept="AH0OO" id="3OPtF02TEoY" role="37vLTJ">
                  <node concept="37vLTw" id="3OPtF02TEoZ" role="AHEQo">
                    <ref role="3cqZAo" node="3OPtF02TEp1" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="3OPtF02TEp0" role="AHHXb">
                    <ref role="3cqZAo" node="3OPtF02TEoI" resolve="childrenCopy" />
                  </node>
                </node>
                <node concept="10QFUN" id="5s497VqMR1g" role="37vLTx">
                  <node concept="3uibUv" id="5s497VqMR1a" role="10QFUM">
                    <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
                    <node concept="16syzq" id="5s497VqMUpT" role="11_B2D">
                      <ref role="16sUi3" node="5JQSuNswS6P" resolve="T" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5s497VqMR1b" role="10QFUP">
                    <node concept="37vLTw" id="5s497VqMR1c" role="2Oq$k0">
                      <ref role="3cqZAo" node="3OPtF02T_i4" resolve="mapper" />
                    </node>
                    <node concept="liA8E" id="5s497VqMR1d" role="2OqNvi">
                      <ref role="37wK5l" node="3OPtF02TgQt" resolve="map" />
                      <node concept="1rXfSq" id="5s497VqMR1e" role="37wK5m">
                        <ref role="37wK5l" node="6$jH9oLbK0n" resolve="childAt" />
                        <node concept="37vLTw" id="5s497VqMR1f" role="37wK5m">
                          <ref role="3cqZAo" node="3OPtF02TEp1" resolve="i" />
                        </node>
                      </node>
                    </node>
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
            <node concept="1rXfSq" id="3OPtF02TEp5" role="3uHU7w">
              <ref role="37wK5l" node="6$jH9oLbZOI" resolve="childrenSize" />
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
        <node concept="3clFbF" id="3OPtF02TEp9" role="3cqZAp">
          <node concept="2YIFZM" id="3OPtF02TEpa" role="3clFbG">
            <ref role="1Pybhc" node="5JQSuNswOXL" resolve="ChildrenBranch" />
            <ref role="37wK5l" node="5JQSuNsxhfn" resolve="create" />
            <node concept="2OqwBi" id="3OPtF02TEpb" role="37wK5m">
              <node concept="1rXfSq" id="3OPtF02TEpc" role="2Oq$k0">
                <ref role="37wK5l" node="1R$Cm9qGYlZ" resolve="path" />
              </node>
              <node concept="liA8E" id="3OPtF02TEpd" role="2OqNvi">
                <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
              </node>
            </node>
            <node concept="37vLTw" id="3OPtF02TEpe" role="37wK5m">
              <ref role="3cqZAo" node="3OPtF02TEoI" resolve="childrenCopy" />
            </node>
            <node concept="16syzq" id="3OPtF02TEpf" role="3PaCim">
              <ref role="16sUi3" node="5JQSuNswS6P" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02VBI9" role="3clF45">
        <ref role="3uigEE" node="5JQSuNswOXL" resolve="ChildrenBranch" />
        <node concept="16syzq" id="3OPtF02VBIa" role="11_B2D">
          <ref role="16sUi3" node="5JQSuNswS6P" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="47nvOnTRJ2E" role="jymVt" />
    <node concept="3clFb_" id="47nvOnTRK6q" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="acceptVisitor" />
      <node concept="37vLTG" id="47nvOnTRK6r" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="3JgCwkqhww$" role="1tU5fm">
          <ref role="3uigEE" node="104EUzFOARB" resolve="ITreePart.Visitor" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02YOLj" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="47nvOnTRK6u" role="1B3o_S" />
      <node concept="3clFbS" id="47nvOnTRK6B" role="3clF47">
        <node concept="3clFbF" id="47nvOnTRMrg" role="3cqZAp">
          <node concept="2OqwBi" id="47nvOnTRMsK" role="3clFbG">
            <node concept="37vLTw" id="47nvOnTRMrf" role="2Oq$k0">
              <ref role="3cqZAo" node="47nvOnTRK6r" resolve="visitor" />
            </node>
            <node concept="liA8E" id="47nvOnTRMZ_" role="2OqNvi">
              <ref role="37wK5l" node="104EUzFOARE" resolve="visitChildren" />
              <node concept="Xjq3P" id="47nvOnTRN87" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="47nvOnTScZy" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
        <node concept="3cpWs8" id="2q_78a92ink" role="3cqZAp">
          <node concept="3cpWsn" id="2q_78a92inl" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="2q_78a92inm" role="1tU5fm">
              <ref role="3uigEE" to="e2lb:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="2q_78a92iNp" role="33vP2m">
              <node concept="1pGfFk" id="2q_78a92iLG" role="2ShVmc">
                <ref role="37wK5l" to="e2lb:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2q_78a92jfG" role="3cqZAp">
          <node concept="2OqwBi" id="2q_78a92kwx" role="3clFbG">
            <node concept="2OqwBi" id="2q_78a92jtp" role="2Oq$k0">
              <node concept="37vLTw" id="2q_78a92jfE" role="2Oq$k0">
                <ref role="3cqZAo" node="2q_78a92inl" resolve="sb" />
              </node>
              <node concept="liA8E" id="2q_78a92k3u" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="2YIFZM" id="2q_78a92rlC" role="37wK5m">
                  <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                  <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                  <node concept="2OqwBi" id="2q_78a92rlD" role="37wK5m">
                    <node concept="1rXfSq" id="2q_78a92rlE" role="2Oq$k0">
                      <ref role="37wK5l" node="1R$Cm9qGYlZ" resolve="path" />
                    </node>
                    <node concept="liA8E" id="2q_78a92rlF" role="2OqNvi">
                      <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2q_78a92lj_" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="Xl_RD" id="2q_78a92lCi" role="37wK5m">
                <property role="Xl_RC" value="=(" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2q_78a92wds" role="3cqZAp">
          <node concept="3cpWsn" id="2q_78a92wdt" role="3cpWs9">
            <property role="TrG5h" value="sep" />
            <node concept="17QB3L" id="2q_78a92wdr" role="1tU5fm" />
            <node concept="Xl_RD" id="2q_78a92wdu" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="2q_78a92nac" role="3cqZAp">
          <node concept="3clFbS" id="2q_78a92nad" role="2LFqv$">
            <node concept="3clFbF" id="2q_78a92vyS" role="3cqZAp">
              <node concept="2OqwBi" id="2q_78a92xim" role="3clFbG">
                <node concept="2OqwBi" id="2q_78a92v_X" role="2Oq$k0">
                  <node concept="37vLTw" id="2q_78a92vyR" role="2Oq$k0">
                    <ref role="3cqZAo" node="2q_78a92inl" resolve="sb" />
                  </node>
                  <node concept="liA8E" id="2q_78a92vVe" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                    <node concept="37vLTw" id="2q_78a92wdv" role="37wK5m">
                      <ref role="3cqZAo" node="2q_78a92wdt" resolve="sep" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2q_78a92xF0" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="2OqwBi" id="2q_78a92y03" role="37wK5m">
                    <node concept="37vLTw" id="2q_78a92xUF" role="2Oq$k0">
                      <ref role="3cqZAo" node="2q_78a92nag" resolve="br" />
                    </node>
                    <node concept="liA8E" id="2q_78a92yxE" role="2OqNvi">
                      <ref role="37wK5l" to="e2lb:~Object.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2q_78a92x3h" role="3cqZAp">
              <node concept="37vLTI" id="2q_78a92xai" role="3clFbG">
                <node concept="Xl_RD" id="2q_78a92xbx" role="37vLTx">
                  <property role="Xl_RC" value="," />
                </node>
                <node concept="37vLTw" id="2q_78a92x3f" role="37vLTJ">
                  <ref role="3cqZAo" node="2q_78a92wdt" resolve="sep" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2q_78a92nag" role="1Duv9x">
            <property role="TrG5h" value="br" />
            <node concept="3uibUv" id="2q_78a92nak" role="1tU5fm">
              <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
              <node concept="16syzq" id="2q_78a92nal" role="11_B2D">
                <ref role="16sUi3" node="5JQSuNswS6P" resolve="T" />
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="2q_78a92nam" role="1DdaDG">
            <ref role="37wK5l" node="5JQSuNswjSg" resolve="children" />
          </node>
        </node>
        <node concept="3clFbF" id="2q_78a92oeH" role="3cqZAp">
          <node concept="2OqwBi" id="2q_78a92owX" role="3clFbG">
            <node concept="2OqwBi" id="2q_78a92$o6" role="2Oq$k0">
              <node concept="37vLTw" id="2q_78a92oeF" role="2Oq$k0">
                <ref role="3cqZAo" node="2q_78a92inl" resolve="sb" />
              </node>
              <node concept="liA8E" id="2q_78a92$Kf" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="Xl_RD" id="2q_78a92$MH" role="37wK5m">
                  <property role="Xl_RC" value=")" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2q_78a92pzV" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5JQSuNs_fl_" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNsxgMt" role="jymVt" />
    <node concept="16euLQ" id="5JQSuNswS6P" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3uibUv" id="3OPtF03dttS" role="3ztrMU">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
        <node concept="3qTvmN" id="3OPtF03duhL" role="11_B2D" />
      </node>
    </node>
    <node concept="3UR2Jj" id="5lJXKwWWB" role="lGtFl">
      <node concept="TZ5HA" id="5lJXKwWWC" role="TZ5H$">
        <node concept="1dT_AC" id="5lJXKwWWD" role="1dT_Ay">
          <property role="1dT_AB" value="The &quot;framework&quot; branch, that is a branch that allows only other branches as its children. An example " />
        </node>
      </node>
      <node concept="TZ5HA" id="5lJXKwXZy" role="TZ5H$">
        <node concept="1dT_AC" id="5lJXKwXZz" role="1dT_Ay">
          <property role="1dT_AB" value="could be a &quot;node&quot; in an AST-like structure, which has &quot;roles&quot; containing other nodes. The &quot;roles&quot; " />
        </node>
      </node>
      <node concept="TZ5HA" id="5lJXKwZsB" role="TZ5H$">
        <node concept="1dT_AC" id="5lJXKwZsC" role="1dT_Ay">
          <property role="1dT_AB" value="here are branches too." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5JQSuNsx4Gq">
    <property role="TrG5h" value="Builder" />
    <node concept="2tJIrI" id="5s497VqlBzx" role="jymVt" />
    <node concept="2YIFZL" id="5JQSuNsxMa3" role="jymVt">
      <property role="TrG5h" value="tree" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="5JQSuNsxMbQ" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="1bm7a6FhUlX" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qUE_q" id="1bm7a6FkkYL" role="11_B2D">
            <node concept="3uibUv" id="1bm7a6Fkl64" role="3qUE_r">
              <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5JQSuNsxMa6" role="3clF47">
        <node concept="3clFbF" id="5JQSuNsxNpn" role="3cqZAp">
          <node concept="2YIFZM" id="5JQSuNsxNpD" role="3clFbG">
            <ref role="37wK5l" node="5JQSuNsxMzt" resolve="create" />
            <ref role="1Pybhc" node="2xQ7eRABXh4" resolve="Tree" />
            <node concept="37vLTw" id="5JQSuNsxNq5" role="37wK5m">
              <ref role="3cqZAo" node="5JQSuNsxMbQ" resolve="root" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5JQSuNsxM89" role="1B3o_S" />
      <node concept="3uibUv" id="5JQSuNsxM9V" role="3clF45">
        <ref role="3uigEE" node="2xQ7eRABXh4" resolve="Tree" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R$Cm9qIkwS" role="jymVt" />
    <node concept="2YIFZL" id="5JQSuNsxgzn" role="jymVt">
      <property role="TrG5h" value="child" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="5JQSuNsxg_M" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="6$jH9oLaltF" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5JQSuNsxgAm" role="3clF46">
        <property role="TrG5h" value="children" />
        <node concept="8X2XB" id="5JQSuNsxjiz" role="1tU5fm">
          <node concept="3uibUv" id="5JQSuNsxjhT" role="8Xvag">
            <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
            <node concept="3qTvmN" id="6$jH9oLeXJK" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5JQSuNsxgzq" role="3clF47">
        <node concept="3clFbF" id="5JQSuNsxjjJ" role="3cqZAp">
          <node concept="2YIFZM" id="5JQSuNsxjk2" role="3clFbG">
            <ref role="37wK5l" node="5JQSuNsxhfn" resolve="create" />
            <ref role="1Pybhc" node="5JQSuNswOXL" resolve="ChildrenBranch" />
            <node concept="37vLTw" id="5JQSuNsxjmj" role="37wK5m">
              <ref role="3cqZAo" node="5JQSuNsxg_M" resolve="symbol" />
            </node>
            <node concept="37vLTw" id="5JQSuNsxjru" role="37wK5m">
              <ref role="3cqZAo" node="5JQSuNsxgAm" resolve="children" />
            </node>
            <node concept="16syzq" id="5JQSuNsztRB" role="3PaCim">
              <ref role="16sUi3" node="5JQSuNsxhVi" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5JQSuNsxgwP" role="1B3o_S" />
      <node concept="3uibUv" id="5JQSuNsxgzf" role="3clF45">
        <ref role="3uigEE" node="5JQSuNswOXL" resolve="ChildrenBranch" />
        <node concept="16syzq" id="uNmovXd901" role="11_B2D">
          <ref role="16sUi3" node="5JQSuNsxhVi" resolve="T" />
        </node>
      </node>
      <node concept="16euLQ" id="5JQSuNsxhVi" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="3OPtF03eqU7" role="3ztrMU">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="3OPtF03eqZY" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R$Cm9qHyZy" role="jymVt" />
    <node concept="2YIFZL" id="5JQSuNsx4I5" role="jymVt">
      <property role="TrG5h" value="value" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="5JQSuNsx4IE" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="6$jH9oLalyO" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5JQSuNsx4J6" role="3clF46">
        <property role="TrG5h" value="values" />
        <node concept="8X2XB" id="5JQSuNsx4Js" role="1tU5fm">
          <node concept="16syzq" id="5JQSuNsx4Jm" role="8Xvag">
            <ref role="16sUi3" node="5JQSuNsx4Io" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5JQSuNsx4I8" role="3clF47">
        <node concept="3cpWs8" id="5JQSuNsxcY1" role="3cqZAp">
          <node concept="3cpWsn" id="5JQSuNsxcY2" role="3cpWs9">
            <property role="TrG5h" value="vterms" />
            <node concept="10Q1$e" id="5JQSuNsxcXT" role="1tU5fm">
              <node concept="3uibUv" id="5JQSuNsxcXW" role="10Q1$1">
                <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
                <node concept="16syzq" id="5lJXKyWtj" role="11_B2D">
                  <ref role="16sUi3" node="5JQSuNsx4Io" resolve="V" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="5JQSuNsxcY3" role="33vP2m">
              <node concept="3$_iS1" id="5JQSuNsxcY4" role="2ShVmc">
                <node concept="3$GHV9" id="5JQSuNsxcY5" role="3$GQph">
                  <node concept="2OqwBi" id="5JQSuNsxcY6" role="3$I4v7">
                    <node concept="37vLTw" id="5JQSuNsxcY7" role="2Oq$k0">
                      <ref role="3cqZAo" node="5JQSuNsx4J6" resolve="values" />
                    </node>
                    <node concept="1Rwk04" id="5JQSuNsxcY8" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3uibUv" id="5JQSuNsxcY9" role="3$_nBY">
                  <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="5JQSuNsxdO$" role="3cqZAp">
          <node concept="3clFbS" id="5JQSuNsxdOB" role="2LFqv$">
            <node concept="3clFbF" id="5JQSuNsxePU" role="3cqZAp">
              <node concept="37vLTI" id="5JQSuNsxeUQ" role="3clFbG">
                <node concept="AH0OO" id="5JQSuNsxeRw" role="37vLTJ">
                  <node concept="37vLTw" id="5JQSuNsxeSF" role="AHEQo">
                    <ref role="3cqZAo" node="5JQSuNsxdOE" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="5JQSuNsxePT" role="AHHXb">
                    <ref role="3cqZAo" node="5JQSuNsxcY2" resolve="vterms" />
                  </node>
                </node>
                <node concept="2YIFZM" id="5JQSuNsxf4M" role="37vLTx">
                  <ref role="37wK5l" node="5JQSuNsxb_I" resolve="create" />
                  <ref role="1Pybhc" node="2xQ7eRAD2dj" resolve="Value" />
                  <node concept="AH0OO" id="5JQSuNsxffS" role="37wK5m">
                    <node concept="37vLTw" id="5JQSuNsxfjN" role="AHEQo">
                      <ref role="3cqZAo" node="5JQSuNsxdOE" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="5JQSuNsxfbD" role="AHHXb">
                      <ref role="3cqZAo" node="5JQSuNsx4J6" resolve="values" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5JQSuNsxdOE" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5JQSuNsxdPL" role="1tU5fm" />
            <node concept="3cmrfG" id="5JQSuNsxdQW" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="5JQSuNsxecU" role="1Dwp0S">
            <node concept="2OqwBi" id="5JQSuNsxes_" role="3uHU7w">
              <node concept="37vLTw" id="5JQSuNsxeef" role="2Oq$k0">
                <ref role="3cqZAo" node="5JQSuNsx4J6" resolve="values" />
              </node>
              <node concept="1Rwk04" id="5JQSuNsxe$r" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="5JQSuNsxdRw" role="3uHU7B">
              <ref role="3cqZAo" node="5JQSuNsxdOE" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="5JQSuNsxeMC" role="1Dwrff">
            <node concept="37vLTw" id="5JQSuNsxeME" role="2$L3a6">
              <ref role="3cqZAo" node="5JQSuNsxdOE" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5JQSuNsxbY4" role="3cqZAp">
          <node concept="2YIFZM" id="5JQSuNsxbYI" role="3clFbG">
            <ref role="37wK5l" node="5JQSuNsx5Sv" resolve="create" />
            <ref role="1Pybhc" node="1msb0mq99GH" resolve="ValuesBranch" />
            <node concept="37vLTw" id="5JQSuNsxbZB" role="37wK5m">
              <ref role="3cqZAo" node="5JQSuNsx4IE" resolve="symbol" />
            </node>
            <node concept="37vLTw" id="5JQSuNsxfta" role="37wK5m">
              <ref role="3cqZAo" node="5JQSuNsxcY2" resolve="vterms" />
            </node>
            <node concept="16syzq" id="uNmovXiRyh" role="3PaCim">
              <ref role="16sUi3" node="5JQSuNsx4Io" resolve="V" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5JQSuNsx4HC" role="1B3o_S" />
      <node concept="3uibUv" id="5JQSuNsx4HR" role="3clF45">
        <ref role="3uigEE" node="1msb0mq99GH" resolve="ValuesBranch" />
        <node concept="16syzq" id="5JQSuNszq5u" role="11_B2D">
          <ref role="16sUi3" node="5JQSuNsx4Io" resolve="V" />
        </node>
      </node>
      <node concept="16euLQ" id="5JQSuNsx4Io" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNsza$c" role="jymVt" />
    <node concept="2YIFZL" id="uNmovXjpCg" role="jymVt">
      <property role="TrG5h" value="variable" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3clFbS" id="uNmovXjpCj" role="3clF47">
        <node concept="3cpWs8" id="uNmovXjx0h" role="3cqZAp">
          <node concept="3cpWsn" id="uNmovXjx0i" role="3cpWs9">
            <property role="TrG5h" value="vars" />
            <node concept="10Q1$e" id="uNmovXjx0j" role="1tU5fm">
              <node concept="3uibUv" id="uNmovXjxjX" role="10Q1$1">
                <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
              </node>
            </node>
            <node concept="2ShNRf" id="uNmovXjx0l" role="33vP2m">
              <node concept="3$_iS1" id="uNmovXjx0m" role="2ShVmc">
                <node concept="3$GHV9" id="uNmovXjx0n" role="3$GQph">
                  <node concept="2OqwBi" id="uNmovXjx0o" role="3$I4v7">
                    <node concept="37vLTw" id="uNmovXjyV_" role="2Oq$k0">
                      <ref role="3cqZAo" node="uNmovXjpHG" resolve="varNames" />
                    </node>
                    <node concept="1Rwk04" id="uNmovXjzSE" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3uibUv" id="uNmovXjypw" role="3$_nBY">
                  <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="uNmovXjx0s" role="3cqZAp">
          <node concept="3clFbS" id="uNmovXjx0t" role="2LFqv$">
            <node concept="3clFbF" id="uNmovXjx0u" role="3cqZAp">
              <node concept="37vLTI" id="uNmovXjx0v" role="3clFbG">
                <node concept="AH0OO" id="uNmovXjx0w" role="37vLTJ">
                  <node concept="37vLTw" id="uNmovXjx0x" role="AHEQo">
                    <ref role="3cqZAo" node="uNmovXjx0B" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="uNmovXj$6x" role="AHHXb">
                    <ref role="3cqZAo" node="uNmovXjx0i" resolve="vars" />
                  </node>
                </node>
                <node concept="2YIFZM" id="uNmovXjx0z" role="37vLTx">
                  <ref role="1Pybhc" node="uNmovXiEd4" resolve="Variable" />
                  <ref role="37wK5l" node="uNmovXiPrH" resolve="create" />
                  <node concept="AH0OO" id="uNmovXjx0$" role="37wK5m">
                    <node concept="37vLTw" id="uNmovXjx0_" role="AHEQo">
                      <ref role="3cqZAo" node="uNmovXjx0B" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="uNmovXj$uq" role="AHHXb">
                      <ref role="3cqZAo" node="uNmovXjpHG" resolve="varNames" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="uNmovXjx0B" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="uNmovXjx0C" role="1tU5fm" />
            <node concept="3cmrfG" id="uNmovXjx0D" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="uNmovXjx0E" role="1Dwp0S">
            <node concept="2OqwBi" id="uNmovXjx0F" role="3uHU7w">
              <node concept="37vLTw" id="uNmovXjzWL" role="2Oq$k0">
                <ref role="3cqZAo" node="uNmovXjx0i" resolve="vars" />
              </node>
              <node concept="1Rwk04" id="uNmovXjx0H" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="uNmovXjx0I" role="3uHU7B">
              <ref role="3cqZAo" node="uNmovXjx0B" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="uNmovXjx0J" role="1Dwrff">
            <node concept="37vLTw" id="uNmovXjx0K" role="2$L3a6">
              <ref role="3cqZAo" node="uNmovXjx0B" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uNmovXjx0L" role="3cqZAp">
          <node concept="2YIFZM" id="uNmovXjx0M" role="3clFbG">
            <ref role="1Pybhc" node="uNmovXiSQ6" resolve="VariableBranch" />
            <ref role="37wK5l" node="uNmovXj0Sl" resolve="create" />
            <node concept="37vLTw" id="uNmovXjx0N" role="37wK5m">
              <ref role="3cqZAo" node="uNmovXjpEC" resolve="symbol" />
            </node>
            <node concept="37vLTw" id="uNmovXjx0O" role="37wK5m">
              <ref role="3cqZAo" node="uNmovXjx0i" resolve="vars" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="uNmovXiRmW" role="1B3o_S" />
      <node concept="3uibUv" id="uNmovXjpC8" role="3clF45">
        <ref role="3uigEE" node="uNmovXiSQ6" resolve="VariableBranch" />
      </node>
      <node concept="37vLTG" id="uNmovXjpEC" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="6$jH9oLalC4" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="uNmovXjpHG" role="3clF46">
        <property role="TrG5h" value="varNames" />
        <node concept="8X2XB" id="uNmovXjzqN" role="1tU5fm">
          <node concept="17QB3L" id="6SkxsMz$UXa" role="8Xvag" />
        </node>
      </node>
      <node concept="2AHcQZ" id="104EUzFvAgG" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFwQ_E" role="jymVt" />
    <node concept="2YIFZL" id="5s497Vql4ru" role="jymVt">
      <property role="TrG5h" value="valueList" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="37vLTG" id="5s497Vql4rv" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="5s497Vql4rw" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5s497Vql4rx" role="3clF46">
        <property role="TrG5h" value="values" />
        <node concept="8X2XB" id="5s497Vql4ry" role="1tU5fm">
          <node concept="16syzq" id="5s497Vql4rz" role="8Xvag">
            <ref role="16sUi3" node="5s497Vql4sg" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5s497Vql4r$" role="3clF47">
        <node concept="3cpWs8" id="5s497Vql4r_" role="3cqZAp">
          <node concept="3cpWsn" id="5s497Vql4rA" role="3cpWs9">
            <property role="TrG5h" value="vterms" />
            <node concept="10Q1$e" id="5s497Vql4rB" role="1tU5fm">
              <node concept="3uibUv" id="5s497Vql4rC" role="10Q1$1">
                <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
                <node concept="16syzq" id="5s497Vql4rD" role="11_B2D">
                  <ref role="16sUi3" node="5s497Vql4sg" resolve="T" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="5s497Vql4rE" role="33vP2m">
              <node concept="3$_iS1" id="5s497Vql4rF" role="2ShVmc">
                <node concept="3$GHV9" id="5s497Vql4rG" role="3$GQph">
                  <node concept="2OqwBi" id="5s497Vql4rH" role="3$I4v7">
                    <node concept="37vLTw" id="5s497Vql4rI" role="2Oq$k0">
                      <ref role="3cqZAo" node="5s497Vql4rx" resolve="values" />
                    </node>
                    <node concept="1Rwk04" id="5s497Vql4rJ" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3uibUv" id="5s497Vql4rK" role="3$_nBY">
                  <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="5s497Vql4rL" role="3cqZAp">
          <node concept="3clFbS" id="5s497Vql4rM" role="2LFqv$">
            <node concept="3clFbF" id="5s497Vql4rN" role="3cqZAp">
              <node concept="37vLTI" id="5s497Vql4rO" role="3clFbG">
                <node concept="AH0OO" id="5s497Vql4rP" role="37vLTJ">
                  <node concept="37vLTw" id="5s497Vql4rQ" role="AHEQo">
                    <ref role="3cqZAo" node="5s497Vql4rW" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="5s497Vql4rR" role="AHHXb">
                    <ref role="3cqZAo" node="5s497Vql4rA" resolve="vterms" />
                  </node>
                </node>
                <node concept="2YIFZM" id="5s497Vql4rS" role="37vLTx">
                  <ref role="1Pybhc" node="2xQ7eRAD2dj" resolve="Value" />
                  <ref role="37wK5l" node="5JQSuNsxb_I" resolve="create" />
                  <node concept="AH0OO" id="5s497Vql4rT" role="37wK5m">
                    <node concept="37vLTw" id="5s497Vql4rU" role="AHEQo">
                      <ref role="3cqZAo" node="5s497Vql4rW" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="5s497Vql4rV" role="AHHXb">
                      <ref role="3cqZAo" node="5s497Vql4rx" resolve="values" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5s497Vql4rW" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5s497Vql4rX" role="1tU5fm" />
            <node concept="3cmrfG" id="5s497Vql4rY" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="5s497Vql4rZ" role="1Dwp0S">
            <node concept="2OqwBi" id="5s497Vql4s0" role="3uHU7w">
              <node concept="37vLTw" id="5s497Vql4s1" role="2Oq$k0">
                <ref role="3cqZAo" node="5s497Vql4rx" resolve="values" />
              </node>
              <node concept="1Rwk04" id="5s497Vql4s2" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="5s497Vql4s3" role="3uHU7B">
              <ref role="3cqZAo" node="5s497Vql4rW" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="5s497Vql4s4" role="1Dwrff">
            <node concept="37vLTw" id="5s497Vql4s5" role="2$L3a6">
              <ref role="3cqZAo" node="5s497Vql4rW" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497Vql4s6" role="3cqZAp">
          <node concept="2YIFZM" id="5s497Vql4s7" role="3clFbG">
            <ref role="1Pybhc" node="3OPtF03lco4" resolve="ListBranch" />
            <ref role="37wK5l" node="3OPtF03lcom" resolve="create" />
            <node concept="37vLTw" id="5s497Vql4s8" role="37wK5m">
              <ref role="3cqZAo" node="5s497Vql4rv" resolve="symbol" />
            </node>
            <node concept="37vLTw" id="5s497Vql4s9" role="37wK5m">
              <ref role="3cqZAo" node="5s497Vql4rA" resolve="vterms" />
            </node>
            <node concept="3uibUv" id="5s497Vql4sa" role="3PaCim">
              <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
              <node concept="16syzq" id="5s497Vql4sb" role="11_B2D">
                <ref role="16sUi3" node="5s497Vql4sg" resolve="T" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5s497Vql4sc" role="1B3o_S" />
      <node concept="3uibUv" id="5s497Vql4sd" role="3clF45">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
        <node concept="3uibUv" id="5s497Vql4se" role="11_B2D">
          <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
          <node concept="16syzq" id="5s497Vql4sf" role="11_B2D">
            <ref role="16sUi3" node="5s497Vql4sg" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="5s497Vql4sg" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="5s497Vql8p5" role="jymVt" />
    <node concept="2YIFZL" id="5s497Vql4Ge" role="jymVt">
      <property role="TrG5h" value="variableList" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="37vLTG" id="5s497Vql4Gf" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="5s497Vql4Gg" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5s497Vql4Gh" role="3clF46">
        <property role="TrG5h" value="varNames" />
        <node concept="8X2XB" id="5s497Vql4Gi" role="1tU5fm">
          <node concept="17QB3L" id="5s497Vql4Gj" role="8Xvag" />
        </node>
      </node>
      <node concept="3clFbS" id="5s497Vql4Gk" role="3clF47">
        <node concept="3cpWs8" id="5s497Vql4Gl" role="3cqZAp">
          <node concept="3cpWsn" id="5s497Vql4Gm" role="3cpWs9">
            <property role="TrG5h" value="vars" />
            <node concept="10Q1$e" id="5s497Vql4Gn" role="1tU5fm">
              <node concept="3uibUv" id="5s497Vql4Go" role="10Q1$1">
                <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
              </node>
            </node>
            <node concept="2ShNRf" id="5s497Vql4Gp" role="33vP2m">
              <node concept="3$_iS1" id="5s497Vql4Gq" role="2ShVmc">
                <node concept="3$GHV9" id="5s497Vql4Gr" role="3$GQph">
                  <node concept="2OqwBi" id="5s497Vql4Gs" role="3$I4v7">
                    <node concept="37vLTw" id="5s497Vql4Gt" role="2Oq$k0">
                      <ref role="3cqZAo" node="5s497Vql4Gh" resolve="varNames" />
                    </node>
                    <node concept="1Rwk04" id="5s497Vql4Gu" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3uibUv" id="5s497Vql4Gv" role="3$_nBY">
                  <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="5s497Vql4Gw" role="3cqZAp">
          <node concept="3clFbS" id="5s497Vql4Gx" role="2LFqv$">
            <node concept="3clFbF" id="5s497Vql4Gy" role="3cqZAp">
              <node concept="37vLTI" id="5s497Vql4Gz" role="3clFbG">
                <node concept="AH0OO" id="5s497Vql4G$" role="37vLTJ">
                  <node concept="37vLTw" id="5s497Vql4G_" role="AHEQo">
                    <ref role="3cqZAo" node="5s497Vql4GF" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="5s497Vql4GA" role="AHHXb">
                    <ref role="3cqZAo" node="5s497Vql4Gm" resolve="vars" />
                  </node>
                </node>
                <node concept="2YIFZM" id="5s497Vql4GB" role="37vLTx">
                  <ref role="1Pybhc" node="uNmovXiEd4" resolve="Variable" />
                  <ref role="37wK5l" node="uNmovXiPrH" resolve="create" />
                  <node concept="AH0OO" id="5s497Vql4GC" role="37wK5m">
                    <node concept="37vLTw" id="5s497Vql4GD" role="AHEQo">
                      <ref role="3cqZAo" node="5s497Vql4GF" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="5s497Vql4GE" role="AHHXb">
                      <ref role="3cqZAo" node="5s497Vql4Gh" resolve="varNames" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5s497Vql4GF" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5s497Vql4GG" role="1tU5fm" />
            <node concept="3cmrfG" id="5s497Vql4GH" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="5s497Vql4GI" role="1Dwp0S">
            <node concept="2OqwBi" id="5s497Vql4GJ" role="3uHU7w">
              <node concept="37vLTw" id="5s497Vql4GK" role="2Oq$k0">
                <ref role="3cqZAo" node="5s497Vql4Gm" resolve="vars" />
              </node>
              <node concept="1Rwk04" id="5s497Vql4GL" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="5s497Vql4GM" role="3uHU7B">
              <ref role="3cqZAo" node="5s497Vql4GF" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="5s497Vql4GN" role="1Dwrff">
            <node concept="37vLTw" id="5s497Vql4GO" role="2$L3a6">
              <ref role="3cqZAo" node="5s497Vql4GF" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497Vql4GP" role="3cqZAp">
          <node concept="2YIFZM" id="5s497Vql4GQ" role="3clFbG">
            <ref role="1Pybhc" node="3OPtF03lco4" resolve="ListBranch" />
            <ref role="37wK5l" node="3OPtF03lcom" resolve="create" />
            <node concept="37vLTw" id="5s497Vql4GR" role="37wK5m">
              <ref role="3cqZAo" node="5s497Vql4Gf" resolve="symbol" />
            </node>
            <node concept="37vLTw" id="5s497Vql4GS" role="37wK5m">
              <ref role="3cqZAo" node="5s497Vql4Gm" resolve="vars" />
            </node>
            <node concept="16syzq" id="5s497Vql4GT" role="3PaCim">
              <ref role="16sUi3" node="5s497Vql4GX" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5s497Vql4GU" role="1B3o_S" />
      <node concept="3uibUv" id="5s497Vql4GV" role="3clF45">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
        <node concept="16syzq" id="5s497Vql4GW" role="11_B2D">
          <ref role="16sUi3" node="5s497Vql4GX" resolve="T" />
        </node>
      </node>
      <node concept="16euLQ" id="5s497Vql4GX" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="5s497Vql4GY" role="3ztrMU">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="2q_78a93Y$2" role="11_B2D" />
        </node>
      </node>
      <node concept="2AHcQZ" id="104EUzFvz02" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNsx4Hp" role="jymVt" />
    <node concept="2YIFZL" id="6$jH9oLaYQA" role="jymVt">
      <property role="TrG5h" value="childrenList" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="6$jH9oLhhp2" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="6$jH9oLhhVz" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6$jH9oLaYQB" role="3clF46">
        <property role="TrG5h" value="children" />
        <node concept="8X2XB" id="6$jH9oLaYQC" role="1tU5fm">
          <node concept="3uibUv" id="1bm7a6F18Nx" role="8Xvag">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6$jH9oLaYQF" role="3clF47">
        <node concept="3clFbF" id="6$jH9oLfPDC" role="3cqZAp">
          <node concept="2YIFZM" id="6$jH9oLfPDZ" role="3clFbG">
            <ref role="1Pybhc" node="3OPtF03lco4" resolve="ListBranch" />
            <ref role="37wK5l" node="3OPtF03lcom" resolve="create" />
            <node concept="37vLTw" id="6$jH9oLhk3M" role="37wK5m">
              <ref role="3cqZAo" node="6$jH9oLhhp2" resolve="symbol" />
            </node>
            <node concept="37vLTw" id="6$jH9oLfQ7$" role="37wK5m">
              <ref role="3cqZAo" node="6$jH9oLaYQB" resolve="children" />
            </node>
            <node concept="16syzq" id="6$jH9oLkcFT" role="3PaCim">
              <ref role="16sUi3" node="6$jH9oLaYQO" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6$jH9oLaYQL" role="1B3o_S" />
      <node concept="3uibUv" id="6$jH9oLaYQM" role="3clF45">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
        <node concept="16syzq" id="6$jH9oLkczs" role="11_B2D">
          <ref role="16sUi3" node="6$jH9oLaYQO" resolve="T" />
        </node>
      </node>
      <node concept="16euLQ" id="6$jH9oLaYQO" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="1bm7a6F15XH" role="3ztrMU">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="2q_78a93Y_I" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFwUr0" role="jymVt" />
    <node concept="3Tm1VV" id="5JQSuNsx4Gr" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="uNmovXiEd4">
    <property role="TrG5h" value="Variable" />
    <node concept="3Tm1VV" id="uNmovXiEd5" role="1B3o_S" />
    <node concept="3uibUv" id="uNmovXiEdE" role="EKbjA">
      <ref role="3uigEE" to="jfki:~Var" resolve="Var" />
    </node>
    <node concept="3uibUv" id="1bm7a6F1kuO" role="EKbjA">
      <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
      <node concept="3uibUv" id="1bm7a6F1oea" role="11_B2D">
        <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
      </node>
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
                <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
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
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
                <ref role="2Oxat5" node="uNmovXiF5Z" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="uNmovXiF6d" role="37vLTx">
              <ref role="3cqZAo" node="uNmovXiF4X" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="uNmovXiEVy" role="1B3o_S" />
      <node concept="37vLTG" id="uNmovXiF4X" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="6SkxsMz$UXd" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="uNmovXiFhY" role="jymVt" />
    <node concept="3clFb_" id="uNmovXiEdQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="name" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="uNmovXiEdR" role="1B3o_S" />
      <node concept="17QB3L" id="6SkxsMz$UXe" role="3clF45" />
      <node concept="3clFbS" id="uNmovXiEdU" role="3clF47">
        <node concept="3clFbF" id="2q_78a8ZTbq" role="3cqZAp">
          <node concept="37vLTw" id="2q_78a9nVVq" role="3clFbG">
            <ref role="3cqZAo" node="uNmovXiF5Z" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="uNmovXiFAo" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="uNmovXiFLt" role="jymVt" />
    <node concept="3clFb_" id="uNmovXiEdX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isTerm" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="uNmovXiEdY" role="1B3o_S" />
      <node concept="10P_77" id="uNmovXiEe0" role="3clF45" />
      <node concept="3clFbS" id="uNmovXiEe4" role="3clF47">
        <node concept="3clFbF" id="uNmovXiEe6" role="3cqZAp">
          <node concept="3clFbT" id="uNmovXiEe5" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="uNmovXiGEG" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="uNmovXiFXw" role="jymVt" />
    <node concept="3clFb_" id="uNmovXiEe7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="asTerm" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="uNmovXiEe8" role="1B3o_S" />
      <node concept="3uibUv" id="uNmovXiEea" role="3clF45">
        <ref role="3uigEE" to="jfki:~Term" resolve="Term" />
      </node>
      <node concept="3clFbS" id="uNmovXiEee" role="3clF47">
        <node concept="YS8fn" id="uNmovXiG9A" role="3cqZAp">
          <node concept="2ShNRf" id="uNmovXiGbq" role="YScLw">
            <node concept="1pGfFk" id="uNmovXiGD5" role="2ShVmc">
              <ref role="37wK5l" to="e2lb:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="uNmovXiGQp" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="uNmovXiH1I" role="jymVt" />
    <node concept="3clFb_" id="uNmovXiEeh" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isVar" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="uNmovXiEei" role="1B3o_S" />
      <node concept="10P_77" id="uNmovXiEek" role="3clF45" />
      <node concept="3clFbS" id="uNmovXiEeo" role="3clF47">
        <node concept="3clFbF" id="uNmovXiEeq" role="3cqZAp">
          <node concept="3clFbT" id="uNmovXiHe1" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="uNmovXiHer" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="uNmovXiHpU" role="jymVt" />
    <node concept="3clFb_" id="uNmovXiEer" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="asVar" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="uNmovXiEes" role="1B3o_S" />
      <node concept="3uibUv" id="uNmovXiEeu" role="3clF45">
        <ref role="3uigEE" to="jfki:~Var" resolve="Var" />
      </node>
      <node concept="3clFbS" id="uNmovXiEey" role="3clF47">
        <node concept="3clFbF" id="uNmovXiHLX" role="3cqZAp">
          <node concept="Xjq3P" id="uNmovXiHLW" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="uNmovXiHAk" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF02UMVq" role="jymVt" />
    <node concept="3clFb_" id="3OPtF02ULUN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="mapRecursively" />
      <node concept="37vLTG" id="3OPtF02ULUO" role="3clF46">
        <property role="TrG5h" value="mapper" />
        <node concept="3uibUv" id="3OPtF02ULUP" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02ULUQ" role="3clF45">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
        <node concept="3qTvmN" id="5s497VqG$m1" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="3OPtF02ULUS" role="1B3o_S" />
      <node concept="3clFbS" id="3OPtF02ULUY" role="3clF47">
        <node concept="3clFbF" id="5s497VqITYU" role="3cqZAp">
          <node concept="Xjq3P" id="5s497VqITYT" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3OPtF02UPkG" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFOY5M" role="jymVt" />
    <node concept="3clFb_" id="104EUzFOWtH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="acceptVisitor" />
      <node concept="37vLTG" id="104EUzFOWtI" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="104EUzFOWtJ" role="1tU5fm">
          <ref role="3uigEE" node="104EUzFOARB" resolve="ITreePart.Visitor" />
        </node>
      </node>
      <node concept="3uibUv" id="104EUzFOWtK" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
    </node>
    <node concept="2tJIrI" id="5s497VqILJV" role="jymVt" />
    <node concept="3clFb_" id="uNmovXiEe_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="compareTo" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="uNmovXiEeA" role="1B3o_S" />
      <node concept="10Oyi0" id="uNmovXiEeC" role="3clF45" />
      <node concept="37vLTG" id="uNmovXiEeD" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="uNmovXiEeI" role="1tU5fm">
          <ref role="3uigEE" to="jfki:~Var" resolve="Var" />
        </node>
      </node>
      <node concept="3clFbS" id="uNmovXiEeJ" role="3clF47">
        <node concept="3clFbJ" id="uNmovXiIwy" role="3cqZAp">
          <node concept="3clFbS" id="uNmovXiIwz" role="3clFbx">
            <node concept="3cpWs6" id="1Ns6gpY57A1" role="3cqZAp">
              <node concept="2OqwBi" id="7d9KVSzUzi6" role="3cqZAk">
                <node concept="2YIFZM" id="7d9KVSzUzi7" role="2Oq$k0">
                  <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                  <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                  <node concept="2OqwBi" id="7d9KVSzUzi8" role="37wK5m">
                    <node concept="Xjq3P" id="7d9KVSzUzi9" role="2Oq$k0" />
                    <node concept="liA8E" id="7d9KVSzUzia" role="2OqNvi">
                      <ref role="37wK5l" to="e2lb:~Object.getClass():java.lang.Class" resolve="getClass" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7d9KVSzUzib" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~String.compareTo(java.lang.String):int" resolve="compareTo" />
                  <node concept="2YIFZM" id="7d9KVSzUzic" role="37wK5m">
                    <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                    <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                    <node concept="2OqwBi" id="7d9KVSzUzid" role="37wK5m">
                      <node concept="37vLTw" id="7d9KVSzUzie" role="2Oq$k0">
                        <ref role="3cqZAo" node="uNmovXiEeD" resolve="that" />
                      </node>
                      <node concept="liA8E" id="7d9KVSzUzif" role="2OqNvi">
                        <ref role="37wK5l" to="e2lb:~Object.getClass():java.lang.Class" resolve="getClass" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7d9KVSzU4UF" role="3clFbw">
            <node concept="2OqwBi" id="7d9KVSzSXAQ" role="3uHU7B">
              <node concept="37vLTw" id="7d9KVSzSWLR" role="2Oq$k0">
                <ref role="3cqZAo" node="uNmovXiEeD" resolve="that" />
              </node>
              <node concept="liA8E" id="7d9KVSzSZKD" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~Object.getClass():java.lang.Class" resolve="getClass" />
              </node>
            </node>
            <node concept="2OqwBi" id="7d9KVSzT3UU" role="3uHU7w">
              <node concept="Xjq3P" id="7d9KVSzT3uq" role="2Oq$k0" />
              <node concept="liA8E" id="7d9KVSzT5dx" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~Object.getClass():java.lang.Class" resolve="getClass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uNmovXiLi0" role="3cqZAp">
          <node concept="2OqwBi" id="uNmovXiLq2" role="3clFbG">
            <node concept="1rXfSq" id="7d9KVSzUJrY" role="2Oq$k0">
              <ref role="37wK5l" node="uNmovXiEdQ" resolve="name" />
            </node>
            <node concept="liA8E" id="uNmovXiM2l" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~String.compareTo(java.lang.String):int" resolve="compareTo" />
              <node concept="2OqwBi" id="uNmovXiNhB" role="37wK5m">
                <node concept="1eOMI4" id="uNmovXiM4B" role="2Oq$k0">
                  <node concept="10QFUN" id="uNmovXiM4$" role="1eOMHV">
                    <node concept="3uibUv" id="uNmovXiM6S" role="10QFUM">
                      <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                    </node>
                    <node concept="37vLTw" id="uNmovXiMCz" role="10QFUP">
                      <ref role="3cqZAo" node="uNmovXiEeD" resolve="that" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7d9KVSzUKq3" role="2OqNvi">
                  <ref role="37wK5l" node="uNmovXiEdQ" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="uNmovXiIc6" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="uNmovXiHZ7" role="jymVt" />
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
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
                <ref role="2Oxat5" node="uNmovXiF5Z" resolve="name" />
              </node>
            </node>
            <node concept="2OqwBi" id="3AEuFq_PXXj" role="3uHU7B">
              <node concept="Xjq3P" id="3AEuFq_PXt7" role="2Oq$k0" />
              <node concept="2OwXpG" id="3AEuFq_PYrD" role="2OqNvi">
                <ref role="2Oxat5" node="uNmovXiF5Z" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3AEuFq_PHmu" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
                      <ref role="3cqZAo" node="uNmovXiF5Z" resolve="name" />
                    </node>
                    <node concept="liA8E" id="3AEuFq_QgY1" role="2OqNvi">
                      <ref role="37wK5l" to="e2lb:~String.hashCode():int" resolve="hashCode" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="3AEuFq_Qh3N" role="3K4GZi">
                    <property role="3cmrfH" value="43" />
                  </node>
                  <node concept="3y3z36" id="3AEuFq_Qf9k" role="3K4Cdx">
                    <node concept="10Nm6u" id="3AEuFq_Qfj6" role="3uHU7w" />
                    <node concept="37vLTw" id="3AEuFq_QeXj" role="3uHU7B">
                      <ref role="3cqZAo" node="uNmovXiF5Z" resolve="name" />
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
                <ref role="3cqZAo" node="uNmovXiF5Z" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="uNmovXjH0W" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="uNmovXjHy8" role="jymVt" />
    <node concept="312cEg" id="uNmovXiF5Z" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tmbuc" id="104EUzFKnvc" role="1B3o_S" />
      <node concept="17QB3L" id="6SkxsMz$UXf" role="1tU5fm" />
    </node>
  </node>
  <node concept="312cEu" id="uNmovXiSQ6">
    <property role="TrG5h" value="VariableBranch" />
    <node concept="3Tm1VV" id="uNmovXiSQ7" role="1B3o_S" />
    <node concept="3uibUv" id="uNmovXiTJU" role="1zkMxy">
      <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
      <node concept="3uibUv" id="uNmovXiTME" role="11_B2D">
        <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
      </node>
    </node>
    <node concept="2tJIrI" id="uNmovXiU1L" role="jymVt" />
    <node concept="2YIFZL" id="uNmovXj0Sl" role="jymVt">
      <property role="TrG5h" value="create" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="uNmovXj0Sm" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="1R$Cm9qIoYC" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="uNmovXj0So" role="3clF46">
        <property role="TrG5h" value="vs" />
        <node concept="8X2XB" id="uNmovXj0Sp" role="1tU5fm">
          <node concept="3uibUv" id="uNmovXj2MX" role="8Xvag">
            <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="uNmovXj0Ss" role="3clF47">
        <node concept="3clFbF" id="uNmovXj0St" role="3cqZAp">
          <node concept="2ShNRf" id="uNmovXj0Su" role="3clFbG">
            <node concept="1pGfFk" id="uNmovXj0Sv" role="2ShVmc">
              <ref role="37wK5l" node="uNmovXiUjX" resolve="VariableBranch" />
              <node concept="2YIFZM" id="6$jH9oLdFwL" role="37wK5m">
                <ref role="37wK5l" node="1R$Cm9qEBDL" resolve="create" />
                <ref role="1Pybhc" node="1R$Cm9qEqLU" resolve="Path" />
                <node concept="37vLTw" id="6$jH9oLdFxC" role="37wK5m">
                  <ref role="3cqZAo" node="uNmovXj0Sm" resolve="symbol" />
                </node>
              </node>
              <node concept="37vLTw" id="uNmovXj0Sx" role="37wK5m">
                <ref role="3cqZAo" node="uNmovXj0So" resolve="vs" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="uNmovXj0Sz" role="1B3o_S" />
      <node concept="3uibUv" id="uNmovXj0S$" role="3clF45">
        <ref role="3uigEE" node="uNmovXiSQ6" resolve="VariableBranch" />
      </node>
    </node>
    <node concept="2tJIrI" id="uNmovXiYkR" role="jymVt" />
    <node concept="3clFbW" id="uNmovXiUjX" role="jymVt">
      <node concept="3cqZAl" id="uNmovXiUjY" role="3clF45" />
      <node concept="3clFbS" id="uNmovXiUk0" role="3clF47">
        <node concept="XkiVB" id="uNmovXiZm2" role="3cqZAp">
          <ref role="37wK5l" node="1msb0mq9JZ8" resolve="Branch" />
          <node concept="37vLTw" id="1R$Cm9qHdqU" role="37wK5m">
            <ref role="3cqZAo" node="uNmovXiUR1" resolve="symbolPath" />
          </node>
          <node concept="37vLTw" id="uNmovXiZs2" role="37wK5m">
            <ref role="3cqZAo" node="uNmovXiUmA" resolve="vs" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6$jH9oLdEE$" role="1B3o_S" />
      <node concept="37vLTG" id="uNmovXiUR1" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="3uibUv" id="6$jH9oLdEwS" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="uNmovXiUmA" role="3clF46">
        <property role="TrG5h" value="vs" />
        <node concept="10Q1$e" id="6$jH9oLbw7n" role="1tU5fm">
          <node concept="3uibUv" id="6$jH9oLbv_V" role="10Q1$1">
            <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6EXExP" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6EXEaM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="copyRecursively" />
      <node concept="3uibUv" id="1bm7a6EZL18" role="3clF45">
        <ref role="3uigEE" node="uNmovXiSQ6" resolve="VariableBranch" />
      </node>
      <node concept="3Tm1VV" id="1bm7a6EXEaO" role="1B3o_S" />
      <node concept="3clFbS" id="1bm7a6EXEaT" role="3clF47">
        <node concept="3clFbF" id="1bm7a6EXPjz" role="3cqZAp">
          <node concept="2YIFZM" id="1bm7a6EXPoQ" role="3clFbG">
            <ref role="1Pybhc" node="uNmovXiSQ6" resolve="VariableBranch" />
            <ref role="37wK5l" node="uNmovXj0Sl" resolve="create" />
            <node concept="2OqwBi" id="1bm7a6EXHkf" role="37wK5m">
              <node concept="1rXfSq" id="1bm7a6EXHdN" role="2Oq$k0">
                <ref role="37wK5l" node="1R$Cm9qGYlZ" resolve="path" />
              </node>
              <node concept="liA8E" id="1bm7a6EXHxU" role="2OqNvi">
                <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
              </node>
            </node>
            <node concept="1rXfSq" id="1bm7a6EXLUT" role="37wK5m">
              <ref role="37wK5l" node="1bm7a6EXK6a" resolve="childrenArr" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3OPtF02UT9I" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF02UnqT" role="jymVt" />
    <node concept="3clFb_" id="3OPtF02UnMJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="mapRecursively" />
      <node concept="37vLTG" id="3OPtF02UnMK" role="3clF46">
        <property role="TrG5h" value="mapper" />
        <node concept="3uibUv" id="3OPtF02UnML" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
        </node>
      </node>
      <node concept="3uibUv" id="5s497VqKvnu" role="3clF45">
        <ref role="3uigEE" node="uNmovXiSQ6" resolve="VariableBranch" />
      </node>
      <node concept="3Tm1VV" id="3OPtF02UnMO" role="1B3o_S" />
      <node concept="2AHcQZ" id="3OPtF02UnMQ" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3OPtF02UnMS" role="3clF47">
        <node concept="3cpWs8" id="3OPtF02UsLK" role="3cqZAp">
          <node concept="3cpWsn" id="3OPtF02UsLL" role="3cpWs9">
            <property role="TrG5h" value="vars" />
            <node concept="10Q1$e" id="3OPtF02UsLG" role="1tU5fm">
              <node concept="3uibUv" id="3OPtF02UsLJ" role="10Q1$1">
                <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
              </node>
            </node>
            <node concept="2ShNRf" id="3OPtF02UsLM" role="33vP2m">
              <node concept="3$_iS1" id="3OPtF02UsLN" role="2ShVmc">
                <node concept="3$GHV9" id="3OPtF02UsLO" role="3$GQph">
                  <node concept="1rXfSq" id="3OPtF02UsLP" role="3$I4v7">
                    <ref role="37wK5l" node="6$jH9oLbZOI" resolve="childrenSize" />
                  </node>
                </node>
                <node concept="3uibUv" id="3OPtF02UsLQ" role="3$_nBY">
                  <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="3OPtF02UuQX" role="3cqZAp">
          <node concept="3clFbS" id="3OPtF02UuR0" role="2LFqv$">
            <node concept="3clFbF" id="3OPtF02UzNZ" role="3cqZAp">
              <node concept="37vLTI" id="3OPtF02U_lW" role="3clFbG">
                <node concept="10QFUN" id="5s497VqMync" role="37vLTx">
                  <node concept="3uibUv" id="5s497VqMyn6" role="10QFUM">
                    <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                  </node>
                  <node concept="2OqwBi" id="5s497VqMyn7" role="10QFUP">
                    <node concept="37vLTw" id="5s497VqMyn8" role="2Oq$k0">
                      <ref role="3cqZAo" node="3OPtF02UnMK" resolve="mapper" />
                    </node>
                    <node concept="liA8E" id="5s497VqMyn9" role="2OqNvi">
                      <ref role="37wK5l" node="3OPtF02TgQt" resolve="map" />
                      <node concept="1rXfSq" id="5s497VqMyna" role="37wK5m">
                        <ref role="37wK5l" node="6$jH9oLbK0n" resolve="childAt" />
                        <node concept="37vLTw" id="5s497VqMynb" role="37wK5m">
                          <ref role="3cqZAo" node="3OPtF02UuR3" resolve="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="AH0OO" id="3OPtF02U$kM" role="37vLTJ">
                  <node concept="37vLTw" id="3OPtF02U$O$" role="AHEQo">
                    <ref role="3cqZAo" node="3OPtF02UuR3" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="3OPtF02UzNY" role="AHHXb">
                    <ref role="3cqZAo" node="3OPtF02UsLL" resolve="vars" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3OPtF02UuR3" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="3OPtF02Uvjx" role="1tU5fm" />
            <node concept="3cmrfG" id="3OPtF02UwB1" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="3OPtF02UxOn" role="1Dwp0S">
            <node concept="1rXfSq" id="3OPtF02Uyik" role="3uHU7w">
              <ref role="37wK5l" node="6$jH9oLbZOI" resolve="childrenSize" />
            </node>
            <node concept="37vLTw" id="3OPtF02Ux3p" role="3uHU7B">
              <ref role="3cqZAo" node="3OPtF02UuR3" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="3OPtF02Uzkl" role="1Dwrff">
            <node concept="37vLTw" id="3OPtF02Uzkn" role="2$L3a6">
              <ref role="3cqZAo" node="3OPtF02UuR3" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF02UDkD" role="3cqZAp">
          <node concept="2YIFZM" id="3OPtF02UDuZ" role="3clFbG">
            <ref role="37wK5l" node="uNmovXj0Sl" resolve="create" />
            <ref role="1Pybhc" node="uNmovXiSQ6" resolve="VariableBranch" />
            <node concept="2OqwBi" id="3OPtF02UDVe" role="37wK5m">
              <node concept="1rXfSq" id="3OPtF02UDRN" role="2Oq$k0">
                <ref role="37wK5l" node="1R$Cm9qGYlZ" resolve="path" />
              </node>
              <node concept="liA8E" id="3OPtF02UE3n" role="2OqNvi">
                <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
              </node>
            </node>
            <node concept="37vLTw" id="3OPtF02UEm9" role="37wK5m">
              <ref role="3cqZAo" node="3OPtF02UsLL" resolve="vars" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="47nvOnTSfuK" role="jymVt" />
    <node concept="3clFb_" id="47nvOnTSfYb" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="acceptVisitor" />
      <node concept="37vLTG" id="47nvOnTSfYc" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="3JgCwkqhKOZ" role="1tU5fm">
          <ref role="3uigEE" node="104EUzFOARB" resolve="ITreePart.Visitor" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02YZi_" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="47nvOnTSfYf" role="1B3o_S" />
      <node concept="3clFbS" id="47nvOnTSfYn" role="3clF47">
        <node concept="3clFbF" id="47nvOnTSh8O" role="3cqZAp">
          <node concept="2OqwBi" id="47nvOnTShaf" role="3clFbG">
            <node concept="37vLTw" id="47nvOnTSh8N" role="2Oq$k0">
              <ref role="3cqZAo" node="47nvOnTSfYc" resolve="visitor" />
            </node>
            <node concept="liA8E" id="47nvOnTShBl" role="2OqNvi">
              <ref role="37wK5l" node="104EUzFOARY" resolve="visitVariables" />
              <node concept="Xjq3P" id="47nvOnTShCO" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="47nvOnTShFO" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="uNmovXiU78" role="jymVt" />
    <node concept="3clFb_" id="5s497VqzgC_" role="jymVt">
      <property role="TrG5h" value="variables" />
      <node concept="10Q1$e" id="5s497VqziQZ" role="3clF45">
        <node concept="3uibUv" id="5s497Vqziwa" role="10Q1$1">
          <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5s497VqzgCC" role="1B3o_S" />
      <node concept="3clFbS" id="5s497VqzgCD" role="3clF47">
        <node concept="3cpWs8" id="5s497VqzlfQ" role="3cqZAp">
          <node concept="3cpWsn" id="5s497VqzlfR" role="3cpWs9">
            <property role="TrG5h" value="vars" />
            <node concept="10Q1$e" id="5s497VqzlfS" role="1tU5fm">
              <node concept="3uibUv" id="5s497VqzlfT" role="10Q1$1">
                <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
              </node>
            </node>
            <node concept="2ShNRf" id="5s497VqzlfU" role="33vP2m">
              <node concept="3$_iS1" id="5s497VqzlfV" role="2ShVmc">
                <node concept="3$GHV9" id="5s497VqzlfW" role="3$GQph">
                  <node concept="1rXfSq" id="5s497VqzlfX" role="3$I4v7">
                    <ref role="37wK5l" node="6$jH9oLbZOI" resolve="childrenSize" />
                  </node>
                </node>
                <node concept="3uibUv" id="5s497VqzlfY" role="3$_nBY">
                  <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="5s497VqzlfZ" role="3cqZAp">
          <node concept="3clFbS" id="5s497Vqzlg0" role="2LFqv$">
            <node concept="3clFbF" id="5s497Vqzlg1" role="3cqZAp">
              <node concept="37vLTI" id="5s497Vqzlg2" role="3clFbG">
                <node concept="1rXfSq" id="5s497VqzlYh" role="37vLTx">
                  <ref role="37wK5l" node="6$jH9oLbK0n" resolve="childAt" />
                  <node concept="37vLTw" id="5s497VqzmeE" role="37wK5m">
                    <ref role="3cqZAo" node="5s497Vqzlgb" resolve="i" />
                  </node>
                </node>
                <node concept="AH0OO" id="5s497Vqzlg8" role="37vLTJ">
                  <node concept="37vLTw" id="5s497Vqzlg9" role="AHEQo">
                    <ref role="3cqZAo" node="5s497Vqzlgb" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="5s497Vqzlga" role="AHHXb">
                    <ref role="3cqZAo" node="5s497VqzlfR" resolve="vars" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5s497Vqzlgb" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5s497Vqzlgc" role="1tU5fm" />
            <node concept="3cmrfG" id="5s497Vqzlgd" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="5s497Vqzlge" role="1Dwp0S">
            <node concept="1rXfSq" id="5s497Vqzlgf" role="3uHU7w">
              <ref role="37wK5l" node="6$jH9oLbZOI" resolve="childrenSize" />
            </node>
            <node concept="37vLTw" id="5s497Vqzlgg" role="3uHU7B">
              <ref role="3cqZAo" node="5s497Vqzlgb" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="5s497Vqzlgh" role="1Dwrff">
            <node concept="37vLTw" id="5s497Vqzlgi" role="2$L3a6">
              <ref role="3cqZAo" node="5s497Vqzlgb" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497Vqzmoa" role="3cqZAp">
          <node concept="37vLTw" id="5s497Vqzmo8" role="3clFbG">
            <ref role="3cqZAo" node="5s497VqzlfR" resolve="vars" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497Vqzhyn" role="jymVt" />
    <node concept="3clFb_" id="uNmovXiVnS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="uNmovXiVnT" role="1B3o_S" />
      <node concept="17QB3L" id="6SkxsMz$UXg" role="3clF45" />
      <node concept="3clFbS" id="uNmovXiVnY" role="3clF47">
        <node concept="3cpWs8" id="2q_78a93wwt" role="3cqZAp">
          <node concept="3cpWsn" id="2q_78a93wwu" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="2q_78a93wwv" role="1tU5fm">
              <ref role="3uigEE" to="e2lb:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="2q_78a93www" role="33vP2m">
              <node concept="1pGfFk" id="2q_78a93wwx" role="2ShVmc">
                <ref role="37wK5l" to="e2lb:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2q_78a93wwy" role="3cqZAp">
          <node concept="2OqwBi" id="2q_78a93wwz" role="3clFbG">
            <node concept="2OqwBi" id="2q_78a93ww$" role="2Oq$k0">
              <node concept="37vLTw" id="2q_78a93ww_" role="2Oq$k0">
                <ref role="3cqZAo" node="2q_78a93wwu" resolve="sb" />
              </node>
              <node concept="liA8E" id="2q_78a93wwA" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="2YIFZM" id="2q_78a93wwB" role="37wK5m">
                  <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                  <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                  <node concept="2OqwBi" id="2q_78a93wwC" role="37wK5m">
                    <node concept="1rXfSq" id="2q_78a93wwD" role="2Oq$k0">
                      <ref role="37wK5l" node="1R$Cm9qGYlZ" resolve="path" />
                    </node>
                    <node concept="liA8E" id="2q_78a93wwE" role="2OqNvi">
                      <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2q_78a93wwF" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="Xl_RD" id="2q_78a93wwG" role="37wK5m">
                <property role="Xl_RC" value="=(" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2q_78a93wwH" role="3cqZAp">
          <node concept="3cpWsn" id="2q_78a93wwI" role="3cpWs9">
            <property role="TrG5h" value="sep" />
            <node concept="17QB3L" id="2q_78a93wwJ" role="1tU5fm" />
            <node concept="Xl_RD" id="2q_78a93wwK" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="2q_78a93wwL" role="3cqZAp">
          <node concept="3clFbS" id="2q_78a93wwM" role="2LFqv$">
            <node concept="3clFbF" id="2q_78a93wwN" role="3cqZAp">
              <node concept="2OqwBi" id="2q_78a93wwO" role="3clFbG">
                <node concept="2OqwBi" id="2q_78a93wwP" role="2Oq$k0">
                  <node concept="37vLTw" id="2q_78a93wwQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="2q_78a93wwu" resolve="sb" />
                  </node>
                  <node concept="liA8E" id="2q_78a93wwR" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                    <node concept="37vLTw" id="2q_78a93wwS" role="37wK5m">
                      <ref role="3cqZAo" node="2q_78a93wwI" resolve="sep" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2q_78a93wwT" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="2OqwBi" id="2q_78a93wwU" role="37wK5m">
                    <node concept="37vLTw" id="2q_78a93wwV" role="2Oq$k0">
                      <ref role="3cqZAo" node="2q_78a93wx1" resolve="var" />
                    </node>
                    <node concept="liA8E" id="2q_78a93wwW" role="2OqNvi">
                      <ref role="37wK5l" node="uNmovXjH0O" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2q_78a93wwX" role="3cqZAp">
              <node concept="37vLTI" id="2q_78a93wwY" role="3clFbG">
                <node concept="Xl_RD" id="2q_78a93wwZ" role="37vLTx">
                  <property role="Xl_RC" value="," />
                </node>
                <node concept="37vLTw" id="2q_78a93wx0" role="37vLTJ">
                  <ref role="3cqZAo" node="2q_78a93wwI" resolve="sep" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2q_78a93wx1" role="1Duv9x">
            <property role="TrG5h" value="var" />
            <node concept="3uibUv" id="2q_78a93y9c" role="1tU5fm">
              <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
            </node>
          </node>
          <node concept="1rXfSq" id="2q_78a93wx4" role="1DdaDG">
            <ref role="37wK5l" node="5JQSuNswjSg" resolve="children" />
          </node>
        </node>
        <node concept="3clFbF" id="2q_78a93wx5" role="3cqZAp">
          <node concept="2OqwBi" id="2q_78a93wx6" role="3clFbG">
            <node concept="2OqwBi" id="2q_78a93wx7" role="2Oq$k0">
              <node concept="37vLTw" id="2q_78a93wx8" role="2Oq$k0">
                <ref role="3cqZAo" node="2q_78a93wwu" resolve="sb" />
              </node>
              <node concept="liA8E" id="2q_78a93wx9" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="Xl_RD" id="2q_78a93wxa" role="37wK5m">
                  <property role="Xl_RC" value=")" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2q_78a93wxb" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2q_78a93wgf" role="3cqZAp" />
      </node>
      <node concept="2AHcQZ" id="uNmovXiVnZ" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="uNmovXiU7i" role="jymVt" />
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
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
      <node concept="3Tm1VV" id="1R$Cm9qEvsE" role="1B3o_S" />
      <node concept="37vLTG" id="1R$Cm9qEvFi" role="3clF46">
        <property role="TrG5h" value="symbolElement" />
        <node concept="3uibUv" id="1R$Cm9qEvFh" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R$Cm9qH4qe" role="jymVt" />
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
                  <ref role="37wK5l" to="e2lb:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1R$Cm9qF2Qe" role="3clFbw">
            <node concept="10Nm6u" id="1R$Cm9qF2S6" role="3uHU7w" />
            <node concept="2OqwBi" id="1R$Cm9qF2Gq" role="3uHU7B">
              <node concept="Xjq3P" id="1R$Cm9qF2Fk" role="2Oq$k0" />
              <node concept="2OwXpG" id="1R$Cm9qF2KC" role="2OqNvi">
                <ref role="2Oxat5" node="1R$Cm9qErqE" resolve="prev" />
              </node>
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
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
              <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
                  <ref role="37wK5l" to="e2lb:~String.hashCode():int" resolve="hashCode" />
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
                  <ref role="37wK5l" to="e2lb:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                </node>
              </node>
              <node concept="10Nm6u" id="1R$Cm9qF6Br" role="37wK5m" />
            </node>
            <node concept="liA8E" id="1R$Cm9qGit8" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R$Cm9qF6OJ" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
                    <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                    <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
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
                    <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                    <node concept="2YIFZM" id="1R$Cm9qGxIf" role="37wK5m">
                      <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                      <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
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
              <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
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
        <ref role="3uigEE" to="e2lb:~StringBuilder" resolve="StringBuilder" />
      </node>
      <node concept="37vLTG" id="1R$Cm9qFOPp" role="3clF46">
        <property role="TrG5h" value="sb" />
        <node concept="3uibUv" id="1R$Cm9qFQr1" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~StringBuilder" resolve="StringBuilder" />
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
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
  </node>
  <node concept="3HP615" id="1bm7a6EXvsP">
    <property role="TrG5h" value="ITreePart" />
    <node concept="2tJIrI" id="1bm7a6EXvMM" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6EXvNI" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="copyRecursively" />
      <node concept="3uibUv" id="1bm7a6FcGgl" role="3clF45">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
        <node concept="16syzq" id="1bm7a6FcIPl" role="11_B2D">
          <ref role="16sUi3" node="1bm7a6EYNmF" resolve="T" />
        </node>
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
          <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02TkeC" role="3clF45">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
        <node concept="3qTvmN" id="5s497VqGAN6" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="3OPtF02Tjpu" role="1B3o_S" />
      <node concept="3clFbS" id="3OPtF02Tjpv" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3OPtF02Tciw" role="jymVt" />
    <node concept="3clFb_" id="104EUzFOBnD" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="acceptVisitor" />
      <node concept="37vLTG" id="104EUzFOBnE" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="104EUzFOBnF" role="1tU5fm">
          <ref role="3uigEE" node="104EUzFOARB" resolve="ITreePart.Visitor" />
        </node>
      </node>
      <node concept="3uibUv" id="104EUzFOBnG" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="104EUzFOBnH" role="1B3o_S" />
      <node concept="3clFbS" id="104EUzFOBnI" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="104EUzFOEMO" role="jymVt" />
    <node concept="3HP615" id="3OPtF02TdNT" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Mapper" />
      <node concept="2tJIrI" id="3OPtF02TdV1" role="jymVt" />
      <node concept="3clFb_" id="3OPtF02TgQt" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="map" />
        <node concept="37vLTG" id="3OPtF02TgVl" role="3clF46">
          <property role="TrG5h" value="tp" />
          <node concept="3uibUv" id="5s497VqCJhY" role="1tU5fm">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="5s497VqCJpV" role="11_B2D" />
          </node>
        </node>
        <node concept="3Tm1VV" id="3OPtF02TgQw" role="1B3o_S" />
        <node concept="3clFbS" id="3OPtF02TgQx" role="3clF47" />
        <node concept="3uibUv" id="5s497VqO5R3" role="3clF45">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="5s497VqO6cS" role="11_B2D" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF02TdWb" role="jymVt" />
      <node concept="3Tm1VV" id="3OPtF02TdNU" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="104EUzFODrC" role="jymVt" />
    <node concept="3HP615" id="104EUzFOARB" role="jymVt">
      <property role="TrG5h" value="Visitor" />
      <node concept="2tJIrI" id="104EUzFOARC" role="jymVt" />
      <node concept="3Tm1VV" id="104EUzFOARD" role="1B3o_S" />
      <node concept="3clFb_" id="104EUzFOARE" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="visitChildren" />
        <node concept="3uibUv" id="104EUzFOARF" role="3clF45">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="104EUzFOARG" role="1B3o_S" />
        <node concept="3clFbS" id="104EUzFOARH" role="3clF47" />
        <node concept="37vLTG" id="104EUzFOARI" role="3clF46">
          <property role="TrG5h" value="children" />
          <node concept="3uibUv" id="104EUzFOARJ" role="1tU5fm">
            <ref role="3uigEE" node="5JQSuNswOXL" resolve="ChildrenBranch" />
            <node concept="16syzq" id="104EUzFOARK" role="11_B2D">
              <ref role="16sUi3" node="104EUzFOARL" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="104EUzFOARL" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="104EUzFOARM" role="3ztrMU">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="104EUzFOARN" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzFOARO" role="jymVt" />
      <node concept="3clFb_" id="104EUzFOARP" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="visitValues" />
        <node concept="37vLTG" id="104EUzFOARQ" role="3clF46">
          <property role="TrG5h" value="values" />
          <node concept="3uibUv" id="104EUzFOARR" role="1tU5fm">
            <ref role="3uigEE" node="1msb0mq99GH" resolve="ValuesBranch" />
            <node concept="16syzq" id="104EUzFOARS" role="11_B2D">
              <ref role="16sUi3" node="104EUzFOARW" resolve="V" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="104EUzFOART" role="3clF45">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="104EUzFOARU" role="1B3o_S" />
        <node concept="3clFbS" id="104EUzFOARV" role="3clF47" />
        <node concept="16euLQ" id="104EUzFOARW" role="16eVyc">
          <property role="TrG5h" value="V" />
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzFOARX" role="jymVt" />
      <node concept="3clFb_" id="104EUzFOARY" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="visitVariables" />
        <node concept="37vLTG" id="104EUzFOARZ" role="3clF46">
          <property role="TrG5h" value="variables" />
          <node concept="3uibUv" id="104EUzFOAS0" role="1tU5fm">
            <ref role="3uigEE" node="uNmovXiSQ6" resolve="VariableBranch" />
          </node>
        </node>
        <node concept="3uibUv" id="104EUzFOAS1" role="3clF45">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="104EUzFOAS2" role="1B3o_S" />
        <node concept="3clFbS" id="104EUzFOAS3" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="104EUzFOAS4" role="jymVt" />
      <node concept="3clFb_" id="104EUzFOAS5" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="visitList" />
        <node concept="3uibUv" id="104EUzFOAS6" role="3clF45">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="104EUzFOAS7" role="1B3o_S" />
        <node concept="3clFbS" id="104EUzFOAS8" role="3clF47" />
        <node concept="37vLTG" id="104EUzFOAS9" role="3clF46">
          <property role="TrG5h" value="list" />
          <node concept="3uibUv" id="104EUzFOASa" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
            <node concept="16syzq" id="2q_78a96FU_" role="11_B2D">
              <ref role="16sUi3" node="2q_78a96ywn" resolve="TP" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="2q_78a96ywn" role="16eVyc">
          <property role="TrG5h" value="TP" />
          <node concept="3uibUv" id="2q_78a96BHJ" role="3ztrMU">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="2q_78a96E3f" role="11_B2D" />
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
        <node concept="3uibUv" id="104EUzFOASj" role="3clF45">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
        <node concept="3uibUv" id="104EUzFOASr" role="3clF45">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="104EUzFOASs" role="1B3o_S" />
        <node concept="3clFbS" id="104EUzFOASt" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="104EUzG8L8d" role="jymVt" />
    </node>
    <node concept="2tJIrI" id="47nvOnTQtYL" role="jymVt" />
    <node concept="3Tm1VV" id="1bm7a6EXvsQ" role="1B3o_S" />
    <node concept="3uibUv" id="1bm7a6EYHNL" role="3HQHJm">
      <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
    </node>
    <node concept="16euLQ" id="1bm7a6EYNmF" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3uibUv" id="1bm7a6EYOC8" role="3ztrMU">
        <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1hOy_Afq4Fn">
    <property role="TrG5h" value="TreeWalk" />
    <node concept="2tJIrI" id="47nvOnU4JVV" role="jymVt" />
    <node concept="2tJIrI" id="3JgCwkqiVzN" role="jymVt" />
    <node concept="3HP615" id="3JgCwkqiP3h" role="jymVt">
      <property role="TrG5h" value="Walker" />
      <node concept="2tJIrI" id="3JgCwkqiP3o" role="jymVt" />
      <node concept="3clFb_" id="3JgCwkqiP3p" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="walkChild" />
        <node concept="3uibUv" id="3JgCwkqiP3q" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="3JgCwkqiP3r" role="1B3o_S" />
        <node concept="3clFbS" id="3JgCwkqiP3s" role="3clF47" />
        <node concept="37vLTG" id="3JgCwkqiP3t" role="3clF46">
          <property role="TrG5h" value="cb" />
          <node concept="3uibUv" id="3OPtF03aJ$Y" role="1tU5fm">
            <ref role="3uigEE" node="5JQSuNswOXL" resolve="ChildrenBranch" />
            <node concept="16syzq" id="3OPtF03aJVu" role="11_B2D">
              <ref role="16sUi3" node="3OPtF03aIHe" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3JgCwkqiP3v" role="3clF46">
          <property role="TrG5h" value="children" />
          <node concept="10Q1$e" id="3JgCwkqiP3w" role="1tU5fm">
            <node concept="3uibUv" id="3JgCwkqiP3x" role="10Q1$1">
              <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
              <node concept="3qTvmN" id="3JgCwkqiP3y" role="11_B2D" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="3OPtF03aIHe" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="3OPtF03fyC3" role="3ztrMU">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="3OPtF03fyNu" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3JgCwkqiP3z" role="jymVt" />
      <node concept="3clFb_" id="3JgCwkqiP3$" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="walkValues" />
        <node concept="3uibUv" id="3JgCwkqiP3_" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="3JgCwkqiP3A" role="1B3o_S" />
        <node concept="3clFbS" id="3JgCwkqiP3B" role="3clF47" />
        <node concept="37vLTG" id="3JgCwkqiP3C" role="3clF46">
          <property role="TrG5h" value="valb" />
          <node concept="3uibUv" id="3OPtF03aKjz" role="1tU5fm">
            <ref role="3uigEE" node="1msb0mq99GH" resolve="ValuesBranch" />
            <node concept="16syzq" id="3OPtF03aKB1" role="11_B2D">
              <ref role="16sUi3" node="3JgCwkqiP3H" resolve="V" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3JgCwkqiP3E" role="3clF46">
          <property role="TrG5h" value="values" />
          <node concept="10Q1$e" id="3JgCwkqiP3F" role="1tU5fm">
            <node concept="16syzq" id="3JgCwkqiP3G" role="10Q1$1">
              <ref role="16sUi3" node="3JgCwkqiP3H" resolve="V" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="3JgCwkqiP3H" role="16eVyc">
          <property role="TrG5h" value="V" />
        </node>
      </node>
      <node concept="2tJIrI" id="3JgCwkqiP3I" role="jymVt" />
      <node concept="3clFb_" id="3JgCwkqiP3J" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="walkVariables" />
        <node concept="3uibUv" id="3JgCwkqiP3K" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="3JgCwkqiP3L" role="1B3o_S" />
        <node concept="3clFbS" id="3JgCwkqiP3M" role="3clF47" />
        <node concept="37vLTG" id="3JgCwkqiP3N" role="3clF46">
          <property role="TrG5h" value="varb" />
          <node concept="3uibUv" id="3OPtF03aKRz" role="1tU5fm">
            <ref role="3uigEE" node="uNmovXiSQ6" resolve="VariableBranch" />
          </node>
        </node>
        <node concept="37vLTG" id="3JgCwkqiP3P" role="3clF46">
          <property role="TrG5h" value="variables" />
          <node concept="10Q1$e" id="3JgCwkqiP3Q" role="1tU5fm">
            <node concept="17QB3L" id="3JgCwkqiP3R" role="10Q1$1" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3JgCwkqiP3T" role="jymVt" />
      <node concept="3clFb_" id="3JgCwkqmHc0" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="walkList" />
        <node concept="3uibUv" id="3JgCwkqmHc1" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="3JgCwkqmHc2" role="1B3o_S" />
        <node concept="3clFbS" id="3JgCwkqmHc3" role="3clF47" />
        <node concept="37vLTG" id="3JgCwkqmHc4" role="3clF46">
          <property role="TrG5h" value="listb" />
          <node concept="3uibUv" id="3OPtF03aNOs" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
            <node concept="16syzq" id="3OPtF03aObG" role="11_B2D">
              <ref role="16sUi3" node="3OPtF03aNw_" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3JgCwkqmHc6" role="3clF46">
          <property role="TrG5h" value="children" />
          <node concept="3uibUv" id="3JgCwkqmHc7" role="1tU5fm">
            <ref role="3uigEE" to="k7g3:~List" resolve="List" />
            <node concept="3qUE_q" id="3JgCwkquArw" role="11_B2D">
              <node concept="3uibUv" id="3JgCwkquAEM" role="3qUE_r">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                <node concept="3qTvmN" id="3JgCwkquBj8" role="11_B2D" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="3OPtF03aNw_" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="3OPtF03aNLA" role="3ztrMU">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="3OPtF03aNLL" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzFs$mg" role="jymVt" />
      <node concept="3clFb_" id="104EUzFszCc" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="walkValue" />
        <node concept="3uibUv" id="104EUzFszCd" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="104EUzFszCe" role="1B3o_S" />
        <node concept="3clFbS" id="104EUzFszCf" role="3clF47" />
        <node concept="37vLTG" id="104EUzFszCg" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="3uibUv" id="104EUzFZxdG" role="1tU5fm">
            <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
            <node concept="3qTvmN" id="104EUzFZzvv" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzG2c6E" role="jymVt" />
      <node concept="3clFb_" id="104EUzG2bkR" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="walkVariable" />
        <node concept="3uibUv" id="104EUzG2bkS" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="104EUzG2bkT" role="1B3o_S" />
        <node concept="3clFbS" id="104EUzG2bkU" role="3clF47" />
        <node concept="37vLTG" id="104EUzG2bkV" role="3clF46">
          <property role="TrG5h" value="variable" />
          <node concept="3uibUv" id="104EUzG2bkW" role="1tU5fm">
            <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03mNh_" role="jymVt" />
      <node concept="3clFb_" id="5s497Vr3IZm" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="endWalk" />
        <node concept="3cqZAl" id="5s497Vr3IZo" role="3clF45" />
        <node concept="3Tm1VV" id="5s497Vr3IZp" role="1B3o_S" />
        <node concept="3clFbS" id="5s497Vr3IZq" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="5s497Vr3ICg" role="jymVt" />
      <node concept="3Tm1VV" id="3JgCwkqiP3U" role="1B3o_S" />
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
          <ref role="3uigEE" node="3JgCwkqiP3h" resolve="TreeWalk.Walker" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="47nvOnTVq58" role="jymVt" />
    <node concept="3clFb_" id="1hOy_Afq63K" role="jymVt">
      <property role="TrG5h" value="walk" />
      <node concept="37vLTG" id="1hOy_Afq6Lg" role="3clF46">
        <property role="TrG5h" value="tp" />
        <node concept="3uibUv" id="1hOy_AfqoVv" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="16syzq" id="1hOy_Afqpb$" role="11_B2D">
            <ref role="16sUi3" node="1hOy_Afqp2e" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1hOy_Afq63M" role="3clF45" />
      <node concept="3Tm1VV" id="1hOy_Afq63N" role="1B3o_S" />
      <node concept="3clFbS" id="1hOy_Afq63O" role="3clF47">
        <node concept="3clFbJ" id="3_ALDc$xVzc" role="3cqZAp">
          <node concept="3clFbS" id="3_ALDc$xVzf" role="3clFbx">
            <node concept="3SKdUt" id="xBj3CwD3WV" role="3cqZAp">
              <node concept="3SKdUq" id="xBj3CwD3Z_" role="3SKWNk">
                <property role="3SKdUp" value="TODO: Walk non-branches?" />
              </node>
            </node>
            <node concept="3cpWs6" id="3_ALDc$ybPN" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="3_ALDc$xXMP" role="3clFbw">
            <node concept="2ZW3vV" id="3_ALDc$y748" role="3fr31v">
              <node concept="3uibUv" id="104EUzGgb$l" role="2ZW6by">
                <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
              </node>
              <node concept="37vLTw" id="3_ALDc$y72n" role="2ZW6bz">
                <ref role="3cqZAo" node="1hOy_Afq6Lg" resolve="tp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="47nvOnTVVsM" role="3cqZAp">
          <node concept="2OqwBi" id="47nvOnTVXoy" role="3clFbG">
            <node concept="37vLTw" id="47nvOnTVVsK" role="2Oq$k0">
              <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
            </node>
            <node concept="liA8E" id="47nvOnTW06r" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~LinkedList.push(java.lang.Object):void" resolve="push" />
              <node concept="2OqwBi" id="47nvOnTWeCu" role="37wK5m">
                <node concept="2YIFZM" id="47nvOnTWcOV" role="2Oq$k0">
                  <ref role="37wK5l" to="k7g3:~Collections.singletonList(java.lang.Object):java.util.List" resolve="singletonList" />
                  <ref role="1Pybhc" to="k7g3:~Collections" resolve="Collections" />
                  <node concept="37vLTw" id="104EUzGgdJC" role="37wK5m">
                    <ref role="3cqZAo" node="1hOy_Afq6Lg" resolve="tp" />
                  </node>
                </node>
                <node concept="liA8E" id="47nvOnTWg4c" role="2OqNvi">
                  <ref role="37wK5l" to="k7g3:~List.iterator():java.util.Iterator" resolve="iterator" />
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
                  <ref role="3uigEE" to="k7g3:~Iterator" resolve="Iterator" />
                  <node concept="3qUE_q" id="47nvOnTToTV" role="11_B2D">
                    <node concept="3uibUv" id="47nvOnTTpNL" role="3qUE_r">
                      <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                      <node concept="3qTvmN" id="47nvOnTTrjy" role="11_B2D" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="47nvOnTRBJJ" role="33vP2m">
                  <node concept="37vLTw" id="47nvOnTRBJK" role="2Oq$k0">
                    <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
                  </node>
                  <node concept="liA8E" id="47nvOnTRBJL" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~LinkedList.peek():java.lang.Object" resolve="peek" />
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
                      <ref role="37wK5l" to="k7g3:~LinkedList.pop():java.lang.Object" resolve="pop" />
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
                        <ref role="37wK5l" to="k7g3:~AbstractCollection.isEmpty():boolean" resolve="isEmpty" />
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
                    <ref role="37wK5l" to="k7g3:~Iterator.hasNext():boolean" resolve="hasNext" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="47nvOnTRDns" role="9aQIa">
                <node concept="3clFbS" id="47nvOnTRDnt" role="9aQI4">
                  <node concept="3cpWs8" id="7d$oK1$HfcO" role="3cqZAp">
                    <node concept="3cpWsn" id="7d$oK1$HfcP" role="3cpWs9">
                      <property role="TrG5h" value="next" />
                      <node concept="3uibUv" id="7d$oK1$HfcQ" role="1tU5fm">
                        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                        <node concept="3qTvmN" id="7d$oK1$HfcR" role="11_B2D" />
                      </node>
                      <node concept="2OqwBi" id="7d$oK1$HfcS" role="33vP2m">
                        <node concept="37vLTw" id="7d$oK1$HfcT" role="2Oq$k0">
                          <ref role="3cqZAo" node="47nvOnTRBJF" resolve="it" />
                        </node>
                        <node concept="liA8E" id="7d$oK1$HfcU" role="2OqNvi">
                          <ref role="37wK5l" to="k7g3:~Iterator.next():java.lang.Object" resolve="next" />
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
                <ref role="37wK5l" to="k7g3:~AbstractCollection.isEmpty():boolean" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="1hOy_Afqp2e" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="1hOy_Afqp6B" role="3ztrMU">
          <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="47nvOnTQUCu" role="jymVt" />
    <node concept="3clFb_" id="47nvOnTQNVI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="visitChildren" />
      <node concept="3uibUv" id="3OPtF02Z5Sk" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="47nvOnTQNVK" role="1B3o_S" />
      <node concept="37vLTG" id="47nvOnTQNVL" role="3clF46">
        <property role="TrG5h" value="cb" />
        <node concept="3uibUv" id="47nvOnTQNVM" role="1tU5fm">
          <ref role="3uigEE" node="5JQSuNswOXL" resolve="ChildrenBranch" />
          <node concept="16syzq" id="47nvOnTQNVN" role="11_B2D">
            <ref role="16sUi3" node="47nvOnTQNVO" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="47nvOnTQNVO" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="3OPtF03fMfG" role="3ztrMU">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="3OPtF03fMAe" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="47nvOnTQNVR" role="3clF47">
        <node concept="3cpWs8" id="47nvOnTSwYP" role="3cqZAp">
          <node concept="3cpWsn" id="47nvOnTSwYQ" role="3cpWs9">
            <property role="TrG5h" value="childrenArr" />
            <node concept="10Q1$e" id="47nvOnTSwYG" role="1tU5fm">
              <node concept="3uibUv" id="47nvOnTSwYN" role="10Q1$1">
                <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
                <node concept="16syzq" id="47nvOnTSwYO" role="11_B2D">
                  <ref role="16sUi3" node="47nvOnTQNVO" resolve="T" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="47nvOnTSwYR" role="33vP2m">
              <node concept="37vLTw" id="47nvOnTSwYS" role="2Oq$k0">
                <ref role="3cqZAo" node="47nvOnTQNVL" resolve="cb" />
              </node>
              <node concept="liA8E" id="47nvOnTSwYT" role="2OqNvi">
                <ref role="37wK5l" node="1bm7a6EXK6a" resolve="childrenArr" />
              </node>
            </node>
          </node>
        </node>
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
                    <ref role="37wK5l" to="k7g3:~LinkedList.push(java.lang.Object):void" resolve="push" />
                    <node concept="2OqwBi" id="47nvOnTT2Mr" role="37wK5m">
                      <node concept="2OqwBi" id="47nvOnTT0lp" role="2Oq$k0">
                        <node concept="37vLTw" id="47nvOnTSZEY" role="2Oq$k0">
                          <ref role="3cqZAo" node="47nvOnTQNVL" resolve="cb" />
                        </node>
                        <node concept="liA8E" id="47nvOnTT1GD" role="2OqNvi">
                          <ref role="37wK5l" node="5JQSuNswjSg" resolve="children" />
                        </node>
                      </node>
                      <node concept="liA8E" id="47nvOnTT3X$" role="2OqNvi">
                        <ref role="37wK5l" to="k7g3:~Collection.iterator():java.util.Iterator" resolve="iterator" />
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
                    <ref role="37wK5l" to="k7g3:~LinkedList.clear():void" resolve="clear" />
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
              <ref role="37wK5l" node="3JgCwkqiP3p" resolve="walkChild" />
              <node concept="37vLTw" id="47nvOnU64QV" role="37wK5m">
                <ref role="3cqZAo" node="47nvOnTQNVL" resolve="cb" />
              </node>
              <node concept="37vLTw" id="47nvOnU64QY" role="37wK5m">
                <ref role="3cqZAo" node="47nvOnTSwYQ" resolve="childrenArr" />
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="47nvOnTQOmy" role="jymVt" />
    <node concept="3clFb_" id="3OPtF03nbZt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="visitList" />
      <node concept="3uibUv" id="3OPtF03nbZu" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="3OPtF03nbZv" role="1B3o_S" />
      <node concept="37vLTG" id="3OPtF03nbZw" role="3clF46">
        <property role="TrG5h" value="lb" />
        <node concept="3uibUv" id="3OPtF03nbZx" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
          <node concept="16syzq" id="2q_78a975is" role="11_B2D">
            <ref role="16sUi3" node="2q_78a970x4" resolve="TP" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3OPtF03nbZA" role="3clF47">
        <node concept="3cpWs8" id="3OPtF03nbZB" role="3cqZAp">
          <node concept="3cpWsn" id="3OPtF03nbZC" role="3cpWs9">
            <property role="TrG5h" value="list" />
            <node concept="3uibUv" id="3OPtF03nbZD" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~List" resolve="List" />
              <node concept="16syzq" id="2q_78a976p6" role="11_B2D">
                <ref role="16sUi3" node="2q_78a970x4" resolve="TP" />
              </node>
            </node>
            <node concept="2ShNRf" id="3OPtF03nbZF" role="33vP2m">
              <node concept="1pGfFk" id="3OPtF03nbZG" role="2ShVmc">
                <ref role="37wK5l" to="k7g3:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="16syzq" id="2q_78a977IZ" role="1pMfVU">
                  <ref role="16sUi3" node="2q_78a970x4" resolve="TP" />
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
                    <ref role="37wK5l" to="k7g3:~LinkedList.push(java.lang.Object):void" resolve="push" />
                    <node concept="2OqwBi" id="5s497VqoCMn" role="37wK5m">
                      <node concept="37vLTw" id="5s497VqoCMo" role="2Oq$k0">
                        <ref role="3cqZAo" node="3OPtF03nbZC" resolve="list" />
                      </node>
                      <node concept="liA8E" id="5s497VqoCMp" role="2OqNvi">
                        <ref role="37wK5l" to="k7g3:~List.iterator():java.util.Iterator" resolve="iterator" />
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
          <node concept="2OqwBi" id="3OPtF03nbZX" role="3KbGdf">
            <node concept="1rXfSq" id="3OPtF03nbZY" role="2Oq$k0">
              <ref role="37wK5l" node="3JgCwkqnB43" resolve="walker" />
            </node>
            <node concept="liA8E" id="3OPtF03nbZZ" role="2OqNvi">
              <ref role="37wK5l" node="3JgCwkqmHc0" resolve="walkList" />
              <node concept="37vLTw" id="3OPtF03nc00" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF03nbZw" resolve="lb" />
              </node>
              <node concept="2OqwBi" id="3OPtF03nc01" role="37wK5m">
                <node concept="37vLTw" id="3OPtF03nc02" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OPtF03nbZw" resolve="lb" />
                </node>
                <node concept="liA8E" id="3OPtF03nc03" role="2OqNvi">
                  <ref role="37wK5l" node="3OPtF03lcua" resolve="toList" />
                  <node concept="37vLTw" id="3OPtF03nc04" role="37wK5m">
                    <ref role="3cqZAo" node="3OPtF03nbZC" resolve="list" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3OPtF03nc05" role="3Kb1Dw">
            <node concept="3zACq4" id="3OPtF03nc06" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF03nc07" role="3cqZAp">
          <node concept="10Nm6u" id="3OPtF03nc08" role="3clFbG" />
        </node>
      </node>
      <node concept="16euLQ" id="2q_78a970x4" role="16eVyc">
        <property role="TrG5h" value="TP" />
        <node concept="3uibUv" id="2q_78a975fJ" role="3ztrMU">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="2q_78a975gF" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03n$iU" role="jymVt" />
    <node concept="3clFb_" id="47nvOnTQNVx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="visitValues" />
      <node concept="37vLTG" id="47nvOnTQNVy" role="3clF46">
        <property role="TrG5h" value="vb" />
        <node concept="3uibUv" id="47nvOnTQNVz" role="1tU5fm">
          <ref role="3uigEE" node="1msb0mq99GH" resolve="ValuesBranch" />
          <node concept="16syzq" id="47nvOnTQNV$" role="11_B2D">
            <ref role="16sUi3" node="47nvOnTQNVB" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02ZcaI" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="47nvOnTQNVA" role="1B3o_S" />
      <node concept="16euLQ" id="47nvOnTQNVB" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
      <node concept="3clFbS" id="47nvOnTQNVD" role="3clF47">
        <node concept="3cpWs8" id="47nvOnTTOaG" role="3cqZAp">
          <node concept="3cpWsn" id="47nvOnTTOaH" role="3cpWs9">
            <property role="TrG5h" value="childrenArr" />
            <node concept="10Q1$e" id="47nvOnTTOai" role="1tU5fm">
              <node concept="3uibUv" id="47nvOnTTOap" role="10Q1$1">
                <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
                <node concept="16syzq" id="47nvOnTTOaq" role="11_B2D">
                  <ref role="16sUi3" node="47nvOnTQNVB" resolve="V" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="47nvOnTTOaI" role="33vP2m">
              <node concept="37vLTw" id="47nvOnTTOaJ" role="2Oq$k0">
                <ref role="3cqZAo" node="47nvOnTQNVy" resolve="vb" />
              </node>
              <node concept="liA8E" id="47nvOnTTOaK" role="2OqNvi">
                <ref role="37wK5l" node="1bm7a6EXK6a" resolve="childrenArr" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="47nvOnTU2GC" role="3cqZAp">
          <node concept="3cpWsn" id="47nvOnTU2GF" role="3cpWs9">
            <property role="TrG5h" value="valuesArr" />
            <node concept="10Q1$e" id="47nvOnTU2Js" role="1tU5fm">
              <node concept="16syzq" id="47nvOnTU2GB" role="10Q1$1">
                <ref role="16sUi3" node="47nvOnTQNVB" resolve="V" />
              </node>
            </node>
            <node concept="10QFUN" id="47nvOnTU7ew" role="33vP2m">
              <node concept="10Q1$e" id="47nvOnTU7en" role="10QFUM">
                <node concept="16syzq" id="47nvOnTU7eo" role="10Q1$1">
                  <ref role="16sUi3" node="47nvOnTQNVB" resolve="V" />
                </node>
              </node>
              <node concept="2ShNRf" id="47nvOnTU7ep" role="10QFUP">
                <node concept="3$_iS1" id="47nvOnTU7eq" role="2ShVmc">
                  <node concept="3$GHV9" id="47nvOnTU7er" role="3$GQph">
                    <node concept="2OqwBi" id="47nvOnTU7es" role="3$I4v7">
                      <node concept="37vLTw" id="47nvOnTU7et" role="2Oq$k0">
                        <ref role="3cqZAo" node="47nvOnTTOaH" resolve="childrenArr" />
                      </node>
                      <node concept="1Rwk04" id="47nvOnTU7eu" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="47nvOnTU7ev" role="3$_nBY">
                    <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="47nvOnTU4ld" role="3cqZAp">
          <node concept="3clFbS" id="47nvOnTU4lg" role="2LFqv$">
            <node concept="3clFbF" id="47nvOnTU5T7" role="3cqZAp">
              <node concept="37vLTI" id="47nvOnTU5XA" role="3clFbG">
                <node concept="10QFUN" id="47nvOnTUbvY" role="37vLTx">
                  <node concept="16syzq" id="47nvOnTUbvS" role="10QFUM">
                    <ref role="16sUi3" node="47nvOnTQNVB" resolve="V" />
                  </node>
                  <node concept="2OqwBi" id="47nvOnTUbvT" role="10QFUP">
                    <node concept="AH0OO" id="47nvOnTUbvU" role="2Oq$k0">
                      <node concept="37vLTw" id="47nvOnTUbvV" role="AHEQo">
                        <ref role="3cqZAo" node="47nvOnTU4lj" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="47nvOnTUbvW" role="AHHXb">
                        <ref role="3cqZAo" node="47nvOnTTOaH" resolve="childrenArr" />
                      </node>
                    </node>
                    <node concept="liA8E" id="47nvOnTUbvX" role="2OqNvi">
                      <ref role="37wK5l" node="1msb0mq8QTt" resolve="symbol" />
                    </node>
                  </node>
                </node>
                <node concept="AH0OO" id="47nvOnTU5U1" role="37vLTJ">
                  <node concept="37vLTw" id="47nvOnTU5Wc" role="AHEQo">
                    <ref role="3cqZAo" node="47nvOnTU4lj" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="47nvOnTU5T6" role="AHHXb">
                    <ref role="3cqZAo" node="47nvOnTU2GF" resolve="valuesArr" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="47nvOnTU4lj" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="47nvOnTU4nY" role="1tU5fm" />
            <node concept="3cmrfG" id="47nvOnTU4px" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="47nvOnTU4JJ" role="1Dwp0S">
            <node concept="2OqwBi" id="47nvOnTU5aY" role="3uHU7w">
              <node concept="37vLTw" id="47nvOnTU4L$" role="2Oq$k0">
                <ref role="3cqZAo" node="47nvOnTTOaH" resolve="childrenArr" />
              </node>
              <node concept="1Rwk04" id="47nvOnTU5xu" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="47nvOnTU4qV" role="3uHU7B">
              <ref role="3cqZAo" node="47nvOnTU4lj" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="47nvOnTU5Nz" role="1Dwrff">
            <node concept="37vLTw" id="47nvOnTU5N_" role="2$L3a6">
              <ref role="3cqZAo" node="47nvOnTU4lj" resolve="i" />
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
                    <ref role="37wK5l" to="k7g3:~LinkedList.push(java.lang.Object):void" resolve="push" />
                    <node concept="2OqwBi" id="104EUzFXZ5o" role="37wK5m">
                      <node concept="2OqwBi" id="104EUzFXZ5p" role="2Oq$k0">
                        <node concept="37vLTw" id="104EUzFXZ5q" role="2Oq$k0">
                          <ref role="3cqZAo" node="47nvOnTQNVy" resolve="vb" />
                        </node>
                        <node concept="liA8E" id="104EUzFXZ5r" role="2OqNvi">
                          <ref role="37wK5l" node="5JQSuNswjSg" resolve="children" />
                        </node>
                      </node>
                      <node concept="liA8E" id="104EUzFXZ5s" role="2OqNvi">
                        <ref role="37wK5l" to="k7g3:~Collection.iterator():java.util.Iterator" resolve="iterator" />
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
                    <ref role="37wK5l" to="k7g3:~LinkedList.clear():void" resolve="clear" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="47nvOnTUhxM" role="3cqZAp" />
            </node>
          </node>
          <node concept="2OqwBi" id="47nvOnU6929" role="3KbGdf">
            <node concept="37vLTw" id="47nvOnU692a" role="2Oq$k0">
              <ref role="3cqZAo" node="47nvOnTQNCA" resolve="walker" />
            </node>
            <node concept="liA8E" id="47nvOnU692b" role="2OqNvi">
              <ref role="37wK5l" node="3JgCwkqiP3$" resolve="walkValues" />
              <node concept="37vLTw" id="47nvOnU692e" role="37wK5m">
                <ref role="3cqZAo" node="47nvOnTQNVy" resolve="vb" />
              </node>
              <node concept="37vLTw" id="47nvOnU692h" role="37wK5m">
                <ref role="3cqZAo" node="47nvOnTU2GF" resolve="valuesArr" />
              </node>
            </node>
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
                    <ref role="37wK5l" to="k7g3:~LinkedList.clear():void" resolve="clear" />
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
              <ref role="37wK5l" node="104EUzFszCc" resolve="walkValue" />
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFIL1s" role="jymVt" />
    <node concept="3clFb_" id="47nvOnTQNVW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="visitVariables" />
      <node concept="37vLTG" id="47nvOnTQNVX" role="3clF46">
        <property role="TrG5h" value="vb" />
        <node concept="3uibUv" id="47nvOnTQNVY" role="1tU5fm">
          <ref role="3uigEE" node="uNmovXiSQ6" resolve="VariableBranch" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02ZgRq" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="47nvOnTQNW0" role="1B3o_S" />
      <node concept="3clFbS" id="47nvOnTQNW2" role="3clF47">
        <node concept="3cpWs8" id="47nvOnTUxZC" role="3cqZAp">
          <node concept="3cpWsn" id="47nvOnTUxZD" role="3cpWs9">
            <property role="TrG5h" value="childrenArr" />
            <node concept="10Q1$e" id="47nvOnTUxZ$" role="1tU5fm">
              <node concept="3uibUv" id="47nvOnTUxZB" role="10Q1$1">
                <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
              </node>
            </node>
            <node concept="2OqwBi" id="47nvOnTUxZE" role="33vP2m">
              <node concept="37vLTw" id="47nvOnTUxZF" role="2Oq$k0">
                <ref role="3cqZAo" node="47nvOnTQNVX" resolve="vb" />
              </node>
              <node concept="liA8E" id="47nvOnTUxZG" role="2OqNvi">
                <ref role="37wK5l" node="1bm7a6EXK6a" resolve="childrenArr" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="47nvOnTUDe1" role="3cqZAp">
          <node concept="3cpWsn" id="47nvOnTUDe4" role="3cpWs9">
            <property role="TrG5h" value="names" />
            <node concept="10Q1$e" id="47nvOnTUDf9" role="1tU5fm">
              <node concept="17QB3L" id="47nvOnTUDe0" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="47nvOnTUDkw" role="33vP2m">
              <node concept="3$_iS1" id="47nvOnTUDj$" role="2ShVmc">
                <node concept="3$GHV9" id="47nvOnTUDw$" role="3$GQph">
                  <node concept="2OqwBi" id="47nvOnTUDNE" role="3$I4v7">
                    <node concept="37vLTw" id="47nvOnTUD$w" role="2Oq$k0">
                      <ref role="3cqZAo" node="47nvOnTUxZD" resolve="childrenArr" />
                    </node>
                    <node concept="1Rwk04" id="47nvOnTUEm_" role="2OqNvi" />
                  </node>
                </node>
                <node concept="17QB3L" id="47nvOnTUDj_" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="47nvOnTUEPt" role="3cqZAp">
          <node concept="3clFbS" id="47nvOnTUEPw" role="2LFqv$">
            <node concept="3clFbF" id="47nvOnTUGR$" role="3cqZAp">
              <node concept="37vLTI" id="47nvOnTUH81" role="3clFbG">
                <node concept="2OqwBi" id="47nvOnTUHP9" role="37vLTx">
                  <node concept="AH0OO" id="47nvOnTUHt9" role="2Oq$k0">
                    <node concept="37vLTw" id="47nvOnTUHAC" role="AHEQo">
                      <ref role="3cqZAo" node="47nvOnTUEPz" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="47nvOnTUHd1" role="AHHXb">
                      <ref role="3cqZAo" node="47nvOnTUxZD" resolve="childrenArr" />
                    </node>
                  </node>
                  <node concept="liA8E" id="47nvOnTUI6t" role="2OqNvi">
                    <ref role="37wK5l" node="uNmovXiEdQ" resolve="name" />
                  </node>
                </node>
                <node concept="AH0OO" id="47nvOnTUGWb" role="37vLTJ">
                  <node concept="37vLTw" id="47nvOnTUGXk" role="AHEQo">
                    <ref role="3cqZAo" node="47nvOnTUEPz" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="47nvOnTUGRz" role="AHHXb">
                    <ref role="3cqZAo" node="47nvOnTUDe4" resolve="names" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="47nvOnTUEPz" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="47nvOnTUER8" role="1tU5fm" />
            <node concept="3cmrfG" id="47nvOnTUESH" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="47nvOnTUFfL" role="1Dwp0S">
            <node concept="2OqwBi" id="47nvOnTUFPd" role="3uHU7w">
              <node concept="37vLTw" id="47nvOnTUFgK" role="2Oq$k0">
                <ref role="3cqZAo" node="47nvOnTUxZD" resolve="childrenArr" />
              </node>
              <node concept="1Rwk04" id="47nvOnTUGnu" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="47nvOnTUEU7" role="3uHU7B">
              <ref role="3cqZAo" node="47nvOnTUEPz" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="47nvOnTUGCu" role="1Dwrff">
            <node concept="37vLTw" id="47nvOnTUGCw" role="2$L3a6">
              <ref role="3cqZAo" node="47nvOnTUEPz" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="47nvOnTUNHU" role="3cqZAp">
          <node concept="3KbdKl" id="47nvOnTUNHV" role="3KbHQx">
            <node concept="Rm8GO" id="47nvOnTUNHW" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
            </node>
            <node concept="3clFbS" id="47nvOnTUNHX" role="3Kbo56">
              <node concept="3clFbF" id="104EUzG4hk7" role="3cqZAp">
                <node concept="2OqwBi" id="104EUzG4hk8" role="3clFbG">
                  <node concept="37vLTw" id="104EUzG4hk9" role="2Oq$k0">
                    <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
                  </node>
                  <node concept="liA8E" id="104EUzG4hka" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~LinkedList.push(java.lang.Object):void" resolve="push" />
                    <node concept="2OqwBi" id="104EUzG4hkb" role="37wK5m">
                      <node concept="2OqwBi" id="104EUzG4hkc" role="2Oq$k0">
                        <node concept="37vLTw" id="104EUzG4hkd" role="2Oq$k0">
                          <ref role="3cqZAo" node="47nvOnTQNVX" resolve="vb" />
                        </node>
                        <node concept="liA8E" id="104EUzG4hke" role="2OqNvi">
                          <ref role="37wK5l" node="5JQSuNswjSg" resolve="children" />
                        </node>
                      </node>
                      <node concept="liA8E" id="104EUzG4hkf" role="2OqNvi">
                        <ref role="37wK5l" to="k7g3:~Collection.iterator():java.util.Iterator" resolve="iterator" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="47nvOnTUNHY" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="47nvOnTUNHZ" role="3KbHQx">
            <node concept="Rm8GO" id="47nvOnTUNI0" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
            </node>
            <node concept="3clFbS" id="47nvOnTUNI1" role="3Kbo56">
              <node concept="3zACq4" id="47nvOnTUNI2" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="47nvOnTUNI3" role="3KbHQx">
            <node concept="Rm8GO" id="47nvOnTUNI4" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAO" resolve="STOP" />
            </node>
            <node concept="3clFbS" id="47nvOnTUNI5" role="3Kbo56">
              <node concept="3clFbF" id="47nvOnTUNI6" role="3cqZAp">
                <node concept="2OqwBi" id="47nvOnTUNI7" role="3clFbG">
                  <node concept="37vLTw" id="47nvOnTUNI8" role="2Oq$k0">
                    <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
                  </node>
                  <node concept="liA8E" id="47nvOnTUNI9" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~LinkedList.clear():void" resolve="clear" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="47nvOnTUNIa" role="3cqZAp" />
            </node>
          </node>
          <node concept="2OqwBi" id="47nvOnU6cup" role="3KbGdf">
            <node concept="37vLTw" id="47nvOnU6cuq" role="2Oq$k0">
              <ref role="3cqZAo" node="47nvOnTQNCA" resolve="walker" />
            </node>
            <node concept="liA8E" id="47nvOnU6cur" role="2OqNvi">
              <ref role="37wK5l" node="3JgCwkqiP3J" resolve="walkVariables" />
              <node concept="37vLTw" id="47nvOnU6cuu" role="37wK5m">
                <ref role="3cqZAo" node="47nvOnTQNVX" resolve="vb" />
              </node>
              <node concept="37vLTw" id="47nvOnU6cux" role="37wK5m">
                <ref role="3cqZAo" node="47nvOnTUDe4" resolve="names" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="47nvOnTUNIc" role="3Kb1Dw">
            <node concept="3zACq4" id="47nvOnTUNId" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF02ZkG_" role="3cqZAp">
          <node concept="10Nm6u" id="3OPtF02ZkGz" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="47nvOnTQNW3" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
                    <ref role="37wK5l" to="k7g3:~LinkedList.clear():void" resolve="clear" />
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
              <ref role="37wK5l" node="104EUzG2bkR" resolve="walkVariable" />
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFIZNj" role="jymVt" />
    <node concept="3clFb_" id="3JgCwkqnB43" role="jymVt">
      <property role="TrG5h" value="walker" />
      <node concept="3uibUv" id="3JgCwkqnN3O" role="3clF45">
        <ref role="3uigEE" node="3JgCwkqiP3h" resolve="TreeWalk.Walker" />
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
              <ref role="37wK5l" to="k7g3:~LinkedList.clear():void" resolve="clear" />
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
        <ref role="3uigEE" node="3JgCwkqiP3h" resolve="TreeWalk.Walker" />
      </node>
    </node>
    <node concept="2tJIrI" id="47nvOnTQQhN" role="jymVt" />
    <node concept="312cEg" id="47nvOnTQQyc" role="jymVt">
      <property role="TrG5h" value="stack" />
      <node concept="3Tm6S6" id="47nvOnTQQyd" role="1B3o_S" />
      <node concept="3uibUv" id="47nvOnTQQNX" role="1tU5fm">
        <ref role="3uigEE" to="k7g3:~LinkedList" resolve="LinkedList" />
        <node concept="3uibUv" id="47nvOnTQSd8" role="11_B2D">
          <ref role="3uigEE" to="k7g3:~Iterator" resolve="Iterator" />
          <node concept="3qUE_q" id="47nvOnTTkCz" role="11_B2D">
            <node concept="3uibUv" id="47nvOnTQTwl" role="3qUE_r">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
              <node concept="3qTvmN" id="47nvOnTQU1x" role="11_B2D" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="47nvOnTTwCW" role="33vP2m">
        <node concept="1pGfFk" id="47nvOnTTwAb" role="2ShVmc">
          <ref role="37wK5l" to="k7g3:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
          <node concept="3uibUv" id="47nvOnTTwAc" role="1pMfVU">
            <ref role="3uigEE" to="k7g3:~Iterator" resolve="Iterator" />
            <node concept="3qUE_q" id="47nvOnTTwAd" role="11_B2D">
              <node concept="3uibUv" id="47nvOnTTwAe" role="3qUE_r">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                <node concept="3qTvmN" id="47nvOnTTwAf" role="11_B2D" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1hOy_Afq6Rc" role="jymVt" />
    <node concept="3Tm1VV" id="1hOy_Afq4Fo" role="1B3o_S" />
    <node concept="3uibUv" id="3JgCwkqhFHO" role="EKbjA">
      <ref role="3uigEE" node="104EUzFOARB" resolve="ITreePart.Visitor" />
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
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="5s497VqA2hh" role="11_B2D" />
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
      <property role="TrG5h" value="IChildrenFinder" />
      <node concept="3clFb_" id="3OPtF03gFkp" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="result" />
        <node concept="3uibUv" id="3OPtF03gFpS" role="3clF45">
          <ref role="3uigEE" node="5JQSuNswOXL" resolve="ChildrenBranch" />
          <node concept="3qTvmN" id="3OPtF03gFyJ" role="11_B2D" />
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
          <ref role="3uigEE" to="k7g3:~List" resolve="List" />
          <node concept="3qUE_q" id="3OPtF03nYWo" role="11_B2D">
            <node concept="3uibUv" id="3OPtF03nYWp" role="3qUE_r">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
              <node concept="3qTvmN" id="3OPtF03nYWq" role="11_B2D" />
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
      <property role="TrG5h" value="findChildrenByCondition" />
      <node concept="37vLTG" id="3OPtF03hjym" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="3OPtF03hjCw" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="3OPtF03hjFH" role="11_B2D" />
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
              <ref role="3uigEE" node="3OPtF03hpll" resolve="Finders.ChildrenFinder" />
            </node>
            <node concept="2ShNRf" id="3OPtF03irY_" role="33vP2m">
              <node concept="1pGfFk" id="3OPtF03irYA" role="2ShVmc">
                <ref role="37wK5l" node="3OPtF03io1Q" resolve="Finders.ChildrenFinder" />
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
                <ref role="37wK5l" node="47nvOnTQN6Q" resolve="TreeWalk" />
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
        <ref role="3uigEE" node="3OPtF03gqwb" resolve="Finders.IChildrenFinder" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03gGfa" role="jymVt" />
    <node concept="2YIFZL" id="3OPtF03pX11" role="jymVt">
      <property role="TrG5h" value="findList" />
      <node concept="37vLTG" id="3OPtF03pX12" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="3OPtF03pX13" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="3OPtF03pX14" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="3OPtF03pX15" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="8X2XB" id="3OPtF03pX16" role="1tU5fm">
          <node concept="3uibUv" id="3OPtF03pX17" role="8Xvag">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
                <ref role="37wK5l" node="47nvOnTQN6Q" resolve="TreeWalk" />
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
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="3AEuFq_Riov" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="3JgCwkqd8vd" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="8X2XB" id="3JgCwkqd8ve" role="1tU5fm">
          <node concept="3uibUv" id="3JgCwkqd8vf" role="8Xvag">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
              <ref role="3uigEE" node="3JgCwkqd8v8" resolve="Finders.ValueFinder" />
              <node concept="16syzq" id="3JgCwkqzDq8" role="11_B2D">
                <ref role="16sUi3" node="3JgCwkqzCxo" resolve="V" />
              </node>
            </node>
            <node concept="2ShNRf" id="3JgCwkqd8vm" role="33vP2m">
              <node concept="1pGfFk" id="3JgCwkqd8vn" role="2ShVmc">
                <ref role="37wK5l" node="3JgCwkqd8v_" resolve="Finders.ValueFinder" />
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
                <ref role="37wK5l" node="47nvOnTQN6Q" resolve="TreeWalk" />
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
      <property role="TrG5h" value="ChildrenFinder" />
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
              <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
              <node concept="3qTvmN" id="5s497VqA5nG" role="11_B2D" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03ip8Y" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03hrMZ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkChild" />
        <node concept="3uibUv" id="3OPtF03hrN0" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="3OPtF03hrN1" role="1B3o_S" />
        <node concept="37vLTG" id="3OPtF03hrN3" role="3clF46">
          <property role="TrG5h" value="cb" />
          <node concept="3uibUv" id="3OPtF03hrN4" role="1tU5fm">
            <ref role="3uigEE" node="5JQSuNswOXL" resolve="ChildrenBranch" />
            <node concept="16syzq" id="3OPtF03hrN5" role="11_B2D">
              <ref role="16sUi3" node="3OPtF03hrNa" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF03hrN6" role="3clF46">
          <property role="TrG5h" value="children" />
          <node concept="10Q1$e" id="3OPtF03hrN7" role="1tU5fm">
            <node concept="3uibUv" id="3OPtF03hrN8" role="10Q1$1">
              <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
              <node concept="3qTvmN" id="3OPtF03hrN9" role="11_B2D" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="3OPtF03hrNa" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="3OPtF03hrNb" role="3ztrMU">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="3OPtF03hrNc" role="11_B2D" />
          </node>
        </node>
        <node concept="3clFbS" id="3OPtF03hrNd" role="3clF47">
          <node concept="3clFbJ" id="3OPtF03hQ27" role="3cqZAp">
            <node concept="3clFbS" id="3OPtF03hQ28" role="3clFbx">
              <node concept="3clFbF" id="3OPtF03hQLj" role="3cqZAp">
                <node concept="37vLTI" id="3OPtF03hRN8" role="3clFbG">
                  <node concept="37vLTw" id="3OPtF03hRTe" role="37vLTx">
                    <ref role="3cqZAo" node="3OPtF03hrN3" resolve="cb" />
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
                  <ref role="3cqZAo" node="3OPtF03hrN3" resolve="cb" />
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
        <node concept="2AHcQZ" id="3OPtF03ibq3" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03qh6c" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03qfYN" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkList" />
        <node concept="3uibUv" id="3OPtF03qfYO" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="3OPtF03qfYP" role="1B3o_S" />
        <node concept="37vLTG" id="3OPtF03qfYR" role="3clF46">
          <property role="TrG5h" value="listb" />
          <node concept="3uibUv" id="3OPtF03qfYS" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
            <node concept="16syzq" id="3OPtF03qfYT" role="11_B2D">
              <ref role="16sUi3" node="3OPtF03qfYZ" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF03qfYU" role="3clF46">
          <property role="TrG5h" value="children" />
          <node concept="3uibUv" id="3OPtF03qfYV" role="1tU5fm">
            <ref role="3uigEE" to="k7g3:~List" resolve="List" />
            <node concept="3qUE_q" id="3OPtF03qfYW" role="11_B2D">
              <node concept="3uibUv" id="3OPtF03qfYX" role="3qUE_r">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                <node concept="3qTvmN" id="3OPtF03qfYY" role="11_B2D" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="3OPtF03qfYZ" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="3OPtF03qfZ0" role="3ztrMU">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="3OPtF03qfZ1" role="11_B2D" />
          </node>
        </node>
        <node concept="3clFbS" id="3OPtF03qfZ2" role="3clF47">
          <node concept="3clFbF" id="3OPtF03qiIh" role="3cqZAp">
            <node concept="Rm8GO" id="3OPtF03qjbR" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03qvbc" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03imPA" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03hrNg" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkValues" />
        <node concept="3uibUv" id="3OPtF03hrNh" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="3OPtF03hrNi" role="1B3o_S" />
        <node concept="37vLTG" id="3OPtF03hrNk" role="3clF46">
          <property role="TrG5h" value="valb" />
          <node concept="3uibUv" id="3OPtF03hrNl" role="1tU5fm">
            <ref role="3uigEE" node="1msb0mq99GH" resolve="ValuesBranch" />
            <node concept="16syzq" id="3OPtF03hrNm" role="11_B2D">
              <ref role="16sUi3" node="3OPtF03hrNq" resolve="V" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF03hrNn" role="3clF46">
          <property role="TrG5h" value="values" />
          <node concept="10Q1$e" id="3OPtF03hrNo" role="1tU5fm">
            <node concept="16syzq" id="3OPtF03hrNp" role="10Q1$1">
              <ref role="16sUi3" node="3OPtF03hrNq" resolve="V" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="3OPtF03hrNq" role="16eVyc">
          <property role="TrG5h" value="V" />
        </node>
        <node concept="3clFbS" id="3OPtF03hrNr" role="3clF47">
          <node concept="3clFbF" id="3OPtF03hw1A" role="3cqZAp">
            <node concept="Rm8GO" id="3OPtF03hw2M" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03idNW" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03imju" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03hrNu" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkVariables" />
        <node concept="3uibUv" id="3OPtF03hrNv" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="3OPtF03hrNw" role="1B3o_S" />
        <node concept="37vLTG" id="3OPtF03hrNy" role="3clF46">
          <property role="TrG5h" value="varb" />
          <node concept="3uibUv" id="3OPtF03hrNz" role="1tU5fm">
            <ref role="3uigEE" node="uNmovXiSQ6" resolve="VariableBranch" />
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF03hrN$" role="3clF46">
          <property role="TrG5h" value="variables" />
          <node concept="10Q1$e" id="3OPtF03hrN_" role="1tU5fm">
            <node concept="17QB3L" id="3OPtF03hrNA" role="10Q1$1" />
          </node>
        </node>
        <node concept="3clFbS" id="3OPtF03hrNB" role="3clF47">
          <node concept="3clFbF" id="3OPtF03hwm2" role="3cqZAp">
            <node concept="Rm8GO" id="3OPtF03hwm3" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03igcr" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzG2qCk" role="jymVt" />
      <node concept="3clFb_" id="104EUzG2oAT" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkVariable" />
        <node concept="3uibUv" id="104EUzG2oAU" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="104EUzG2oAV" role="1B3o_S" />
        <node concept="37vLTG" id="104EUzG2oAX" role="3clF46">
          <property role="TrG5h" value="variable" />
          <node concept="3uibUv" id="104EUzG2oAY" role="1tU5fm">
            <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
          </node>
        </node>
        <node concept="3clFbS" id="104EUzG2oAZ" role="3clF47">
          <node concept="3clFbF" id="104EUzG2rv4" role="3cqZAp">
            <node concept="Rm8GO" id="104EUzG2rv5" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="104EUzG2pZ6" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzFt0SL" role="jymVt" />
      <node concept="3clFb_" id="104EUzG0bV5" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkValue" />
        <node concept="3uibUv" id="104EUzG0bV6" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="104EUzG0bV7" role="1B3o_S" />
        <node concept="37vLTG" id="104EUzG0bV9" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="3uibUv" id="104EUzG0bVa" role="1tU5fm">
            <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
            <node concept="3qTvmN" id="104EUzG0bVb" role="11_B2D" />
          </node>
        </node>
        <node concept="3clFbS" id="104EUzG0bVc" role="3clF47">
          <node concept="3clFbF" id="104EUzG0ePi" role="3cqZAp">
            <node concept="Rm8GO" id="104EUzG0ePj" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="104EUzG0djs" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzG0e4G" role="jymVt" />
      <node concept="3clFb_" id="5s497Vr3Yc7" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="endWalk" />
        <node concept="3cqZAl" id="5s497Vr3Yc8" role="3clF45" />
        <node concept="3Tm1VV" id="5s497Vr3Yc9" role="1B3o_S" />
        <node concept="3clFbS" id="5s497Vr3Ycb" role="3clF47" />
        <node concept="2AHcQZ" id="5s497Vr3YZ9" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5s497Vr3ZIz" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03hrNE" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="result" />
        <node concept="3uibUv" id="3OPtF03hrNF" role="3clF45">
          <ref role="3uigEE" node="5JQSuNswOXL" resolve="ChildrenBranch" />
          <node concept="3qTvmN" id="3OPtF03hrNG" role="11_B2D" />
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
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
          <ref role="3uigEE" node="5JQSuNswOXL" resolve="ChildrenBranch" />
          <node concept="3qTvmN" id="3OPtF03i1LI" role="11_B2D" />
        </node>
      </node>
      <node concept="312cEg" id="3OPtF03huAJ" role="jymVt">
        <property role="TrG5h" value="condition" />
        <node concept="3Tm6S6" id="3OPtF03huAK" role="1B3o_S" />
        <node concept="3uibUv" id="3OPtF03huNP" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF03axxl" resolve="Finders.Condition" />
          <node concept="3uibUv" id="5s497VqA6Sq" role="11_B2D">
            <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
            <node concept="3qTvmN" id="5s497VqA7wL" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3OPtF03pV58" role="1B3o_S" />
      <node concept="16euLQ" id="3OPtF03hrbY" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="3OPtF03hreJ" role="3ztrMU">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="3OPtF03hrpe" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF03hrvE" role="EKbjA">
        <ref role="3uigEE" node="3JgCwkqiP3h" resolve="TreeWalk.Walker" />
      </node>
      <node concept="3uibUv" id="3OPtF03hrHZ" role="EKbjA">
        <ref role="3uigEE" node="3OPtF03gqwb" resolve="Finders.IChildrenFinder" />
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
              <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
                  <ref role="37wK5l" to="k7g3:~LinkedList.&lt;init&gt;(java.util.Collection)" resolve="LinkedList" />
                  <node concept="2YIFZM" id="3OPtF03oA1m" role="37wK5m">
                    <ref role="37wK5l" to="k7g3:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                    <ref role="1Pybhc" to="k7g3:~Arrays" resolve="Arrays" />
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
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03oA1y" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03oA1z" role="jymVt">
        <property role="TrG5h" value="result" />
        <node concept="3uibUv" id="3OPtF03oA1$" role="3clF45">
          <ref role="3uigEE" to="k7g3:~List" resolve="List" />
          <node concept="3qUE_q" id="3OPtF03oA1_" role="11_B2D">
            <node concept="3uibUv" id="3OPtF03oA1A" role="3qUE_r">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
              <node concept="3qTvmN" id="3OPtF03oA1B" role="11_B2D" />
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
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03oA1H" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03oA1I" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkList" />
        <node concept="3uibUv" id="3OPtF03oA1J" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="3OPtF03oA1K" role="1B3o_S" />
        <node concept="37vLTG" id="3OPtF03oA1L" role="3clF46">
          <property role="TrG5h" value="listb" />
          <node concept="3uibUv" id="3OPtF03oA1M" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
            <node concept="16syzq" id="3OPtF03oA1N" role="11_B2D">
              <ref role="16sUi3" node="3OPtF03oA1T" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF03oA1O" role="3clF46">
          <property role="TrG5h" value="children" />
          <node concept="3uibUv" id="3OPtF03oA1P" role="1tU5fm">
            <ref role="3uigEE" to="k7g3:~List" resolve="List" />
            <node concept="3qUE_q" id="3OPtF03oA1Q" role="11_B2D">
              <node concept="3uibUv" id="3OPtF03oA1R" role="3qUE_r">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                <node concept="3qTvmN" id="3OPtF03oA1S" role="11_B2D" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="3OPtF03oA1T" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="3OPtF03oA1U" role="3ztrMU">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="3OPtF03oA1V" role="11_B2D" />
          </node>
        </node>
        <node concept="3clFbS" id="3OPtF03oA1W" role="3clF47">
          <node concept="3clFbJ" id="3OPtF03oA1X" role="3cqZAp">
            <node concept="3clFbS" id="3OPtF03oA1Y" role="3clFbx">
              <node concept="3cpWs6" id="3OPtF03oA1Z" role="3cqZAp">
                <node concept="Rm8GO" id="3OPtF03oA20" role="3cqZAk">
                  <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                  <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
                </node>
              </node>
            </node>
            <node concept="3eOSWO" id="3OPtF03oA21" role="3clFbw">
              <node concept="3cmrfG" id="3OPtF03oA22" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="3OPtF03oA23" role="3uHU7B">
                <node concept="37vLTw" id="3OPtF03oA24" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
                </node>
                <node concept="liA8E" id="3OPtF03oA25" role="2OqNvi">
                  <ref role="37wK5l" to="k7g3:~LinkedList.size():int" resolve="size" />
                </node>
              </node>
            </node>
          </node>
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
                  <node concept="37vLTw" id="3OPtF03oA2d" role="37vLTx">
                    <ref role="3cqZAo" node="3OPtF03oA1O" resolve="children" />
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
            <node concept="17R0WA" id="3OPtF03oA2m" role="3clFbw">
              <node concept="2OqwBi" id="3OPtF03oA2n" role="3uHU7w">
                <node concept="37vLTw" id="3OPtF03oA2o" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
                </node>
                <node concept="liA8E" id="3OPtF03oA2p" role="2OqNvi">
                  <ref role="37wK5l" to="k7g3:~LinkedList.peek():java.lang.Object" resolve="peek" />
                </node>
              </node>
              <node concept="2OqwBi" id="3OPtF03oA2q" role="3uHU7B">
                <node concept="37vLTw" id="3OPtF03oA2r" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OPtF03oA1L" resolve="listb" />
                </node>
                <node concept="liA8E" id="3OPtF03oA2s" role="2OqNvi">
                  <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3OPtF03oA2t" role="3cqZAp">
            <node concept="Rm8GO" id="3OPtF03oA2u" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
          <node concept="3clFbH" id="3OPtF03oA2v" role="3cqZAp" />
        </node>
        <node concept="2AHcQZ" id="3OPtF03oA2w" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03oA2x" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03oA2y" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkChild" />
        <node concept="3uibUv" id="3OPtF03oA2z" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="3OPtF03oA2$" role="1B3o_S" />
        <node concept="37vLTG" id="3OPtF03oA2_" role="3clF46">
          <property role="TrG5h" value="cb" />
          <node concept="3uibUv" id="3OPtF03oA2A" role="1tU5fm">
            <ref role="3uigEE" node="5JQSuNswOXL" resolve="ChildrenBranch" />
            <node concept="16syzq" id="3OPtF03oA2B" role="11_B2D">
              <ref role="16sUi3" node="3OPtF03oA2G" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF03oA2C" role="3clF46">
          <property role="TrG5h" value="children" />
          <node concept="10Q1$e" id="3OPtF03oA2D" role="1tU5fm">
            <node concept="3uibUv" id="3OPtF03oA2E" role="10Q1$1">
              <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
              <node concept="3qTvmN" id="3OPtF03oA2F" role="11_B2D" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="3OPtF03oA2G" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="3OPtF03oA2H" role="3ztrMU">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="3OPtF03oA2I" role="11_B2D" />
          </node>
        </node>
        <node concept="3clFbS" id="3OPtF03oA2J" role="3clF47">
          <node concept="3clFbJ" id="3OPtF03oA2K" role="3cqZAp">
            <node concept="3clFbS" id="3OPtF03oA2L" role="3clFbx">
              <node concept="3clFbF" id="3OPtF03oA2M" role="3cqZAp">
                <node concept="2OqwBi" id="3OPtF03oA2N" role="3clFbG">
                  <node concept="37vLTw" id="3OPtF03oA2O" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="3OPtF03oA2P" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~LinkedList.pop():java.lang.Object" resolve="pop" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3OPtF03oA2Q" role="3cqZAp">
                <node concept="Rm8GO" id="3OPtF03oA2R" role="3cqZAk">
                  <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
                  <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3OPtF03oA2S" role="3clFbw">
              <node concept="17R0WA" id="3OPtF03oA2T" role="3uHU7w">
                <node concept="2OqwBi" id="3OPtF03oA2U" role="3uHU7w">
                  <node concept="37vLTw" id="3OPtF03oA2V" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="3OPtF03oA2W" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~LinkedList.peek():java.lang.Object" resolve="peek" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3OPtF03oA2X" role="3uHU7B">
                  <node concept="37vLTw" id="3OPtF03oA2Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03oA2_" resolve="cb" />
                  </node>
                  <node concept="liA8E" id="3OPtF03oA2Z" role="2OqNvi">
                    <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="3OPtF03oA30" role="3uHU7B">
                <node concept="2OqwBi" id="3OPtF03oA31" role="3fr31v">
                  <node concept="37vLTw" id="3OPtF03oA32" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="3OPtF03oA33" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~AbstractCollection.isEmpty():boolean" resolve="isEmpty" />
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
        <node concept="2AHcQZ" id="3OPtF03oA36" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03oA37" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03oA38" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkValues" />
        <node concept="3uibUv" id="3OPtF03oA39" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="3OPtF03oA3a" role="1B3o_S" />
        <node concept="37vLTG" id="3OPtF03oA3b" role="3clF46">
          <property role="TrG5h" value="valb" />
          <node concept="3uibUv" id="3OPtF03oA3c" role="1tU5fm">
            <ref role="3uigEE" node="1msb0mq99GH" resolve="ValuesBranch" />
            <node concept="16syzq" id="3OPtF03oA3d" role="11_B2D">
              <ref role="16sUi3" node="3OPtF03oA3h" resolve="V" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF03oA3e" role="3clF46">
          <property role="TrG5h" value="values" />
          <node concept="10Q1$e" id="3OPtF03oA3f" role="1tU5fm">
            <node concept="16syzq" id="3OPtF03oA3g" role="10Q1$1">
              <ref role="16sUi3" node="3OPtF03oA3h" resolve="V" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="3OPtF03oA3h" role="16eVyc">
          <property role="TrG5h" value="V" />
        </node>
        <node concept="3clFbS" id="3OPtF03oA3i" role="3clF47">
          <node concept="3clFbJ" id="3OPtF03oA3j" role="3cqZAp">
            <node concept="3clFbS" id="3OPtF03oA3k" role="3clFbx">
              <node concept="3cpWs6" id="3OPtF03oA3l" role="3cqZAp">
                <node concept="Rm8GO" id="3OPtF03oA3m" role="3cqZAk">
                  <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                  <ref role="Rm8GQ" node="2q_78a95hAO" resolve="STOP" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3OPtF03oA3n" role="3clFbw">
              <node concept="17R0WA" id="3OPtF03oA3o" role="3uHU7w">
                <node concept="2OqwBi" id="3OPtF03oA3p" role="3uHU7w">
                  <node concept="37vLTw" id="3OPtF03oA3q" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="3OPtF03oA3r" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~LinkedList.peek():java.lang.Object" resolve="peek" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3OPtF03oA3s" role="3uHU7B">
                  <node concept="37vLTw" id="3OPtF03oA3t" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03oA3b" resolve="valb" />
                  </node>
                  <node concept="liA8E" id="3OPtF03oA3u" role="2OqNvi">
                    <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="3OPtF03oA3v" role="3uHU7B">
                <node concept="2OqwBi" id="3OPtF03oA3w" role="3fr31v">
                  <node concept="37vLTw" id="3OPtF03oA3x" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="3OPtF03oA3y" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~AbstractCollection.isEmpty():boolean" resolve="isEmpty" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3OPtF03oA3z" role="3cqZAp">
            <node concept="Rm8GO" id="3OPtF03oA3$" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03oA3_" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03oA3A" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03oA3B" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkVariables" />
        <node concept="3uibUv" id="3OPtF03oA3C" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="3OPtF03oA3D" role="1B3o_S" />
        <node concept="37vLTG" id="3OPtF03oA3E" role="3clF46">
          <property role="TrG5h" value="varb" />
          <node concept="3uibUv" id="3OPtF03oA3F" role="1tU5fm">
            <ref role="3uigEE" node="uNmovXiSQ6" resolve="VariableBranch" />
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF03oA3G" role="3clF46">
          <property role="TrG5h" value="variables" />
          <node concept="10Q1$e" id="3OPtF03oA3H" role="1tU5fm">
            <node concept="17QB3L" id="3OPtF03oA3I" role="10Q1$1" />
          </node>
        </node>
        <node concept="3clFbS" id="3OPtF03oA3J" role="3clF47">
          <node concept="3clFbJ" id="3OPtF03oA3K" role="3cqZAp">
            <node concept="3clFbS" id="3OPtF03oA3L" role="3clFbx">
              <node concept="3cpWs6" id="3OPtF03oA3M" role="3cqZAp">
                <node concept="Rm8GO" id="3OPtF03oA3N" role="3cqZAk">
                  <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                  <ref role="Rm8GQ" node="2q_78a95hAO" resolve="STOP" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3OPtF03oA3O" role="3clFbw">
              <node concept="17R0WA" id="3OPtF03oA3P" role="3uHU7w">
                <node concept="2OqwBi" id="3OPtF03oA3Q" role="3uHU7w">
                  <node concept="37vLTw" id="3OPtF03oA3R" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="3OPtF03oA3S" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~LinkedList.peek():java.lang.Object" resolve="peek" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3OPtF03oA3T" role="3uHU7B">
                  <node concept="37vLTw" id="3OPtF03oA3U" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03oA3E" resolve="varb" />
                  </node>
                  <node concept="liA8E" id="3OPtF03oA3V" role="2OqNvi">
                    <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="3OPtF03oA3W" role="3uHU7B">
                <node concept="2OqwBi" id="3OPtF03oA3X" role="3fr31v">
                  <node concept="37vLTw" id="3OPtF03oA3Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="3OPtF03oA3Z" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~AbstractCollection.isEmpty():boolean" resolve="isEmpty" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3OPtF03oA40" role="3cqZAp">
            <node concept="Rm8GO" id="3OPtF03oA41" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03oA42" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzG2CdO" role="jymVt" />
      <node concept="3clFb_" id="104EUzG2_1x" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkVariable" />
        <node concept="3uibUv" id="104EUzG2_1y" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="104EUzG2_1z" role="1B3o_S" />
        <node concept="37vLTG" id="104EUzG2_1_" role="3clF46">
          <property role="TrG5h" value="variable" />
          <node concept="3uibUv" id="104EUzG2_1A" role="1tU5fm">
            <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
          </node>
        </node>
        <node concept="3clFbS" id="104EUzG2_1B" role="3clF47">
          <node concept="3clFbF" id="104EUzG2Hl1" role="3cqZAp">
            <node concept="Rm8GO" id="104EUzG2Hl2" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="104EUzG2EJ_" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzFthJt" role="jymVt" />
      <node concept="3clFb_" id="104EUzG0ui4" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkValue" />
        <node concept="3uibUv" id="104EUzG0ui5" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="104EUzG0ui6" role="1B3o_S" />
        <node concept="37vLTG" id="104EUzG0ui8" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="3uibUv" id="104EUzG0ui9" role="1tU5fm">
            <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
            <node concept="3qTvmN" id="104EUzG0uia" role="11_B2D" />
          </node>
        </node>
        <node concept="3clFbS" id="104EUzG0uib" role="3clF47">
          <node concept="3clFbF" id="104EUzG0BR0" role="3cqZAp">
            <node concept="Rm8GO" id="104EUzG0BR1" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="104EUzG0xu2" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
          <ref role="3uigEE" to="k7g3:~List" resolve="List" />
          <node concept="3qUE_q" id="3OPtF03oA4b" role="11_B2D">
            <node concept="3uibUv" id="3OPtF03oA4c" role="3qUE_r">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
              <node concept="3qTvmN" id="3OPtF03oA4d" role="11_B2D" />
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
          <ref role="3uigEE" to="k7g3:~LinkedList" resolve="LinkedList" />
          <node concept="3uibUv" id="3OPtF03oA4h" role="11_B2D">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3OPtF03oA4i" role="1B3o_S" />
      <node concept="3uibUv" id="3OPtF03oGCx" role="EKbjA">
        <ref role="3uigEE" node="3JgCwkqiP3h" resolve="TreeWalk.Walker" />
      </node>
      <node concept="3uibUv" id="3OPtF03oA4k" role="EKbjA">
        <ref role="3uigEE" node="3OPtF03nYWl" resolve="Finders.IListFinder" />
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
              <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
                  <ref role="37wK5l" to="k7g3:~LinkedList.&lt;init&gt;(java.util.Collection)" resolve="LinkedList" />
                  <node concept="2YIFZM" id="3JgCwkqd8vN" role="37wK5m">
                    <ref role="37wK5l" to="k7g3:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                    <ref role="1Pybhc" to="k7g3:~Arrays" resolve="Arrays" />
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
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3JgCwkqd8w5" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03cqRb" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkChild" />
        <node concept="3uibUv" id="3OPtF03cqRc" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="3OPtF03cqRd" role="1B3o_S" />
        <node concept="37vLTG" id="3OPtF03cqRf" role="3clF46">
          <property role="TrG5h" value="cb" />
          <node concept="3uibUv" id="3OPtF03cqRg" role="1tU5fm">
            <ref role="3uigEE" node="5JQSuNswOXL" resolve="ChildrenBranch" />
            <node concept="16syzq" id="3OPtF03cqRh" role="11_B2D">
              <ref role="16sUi3" node="3OPtF03cqRm" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF03cqRi" role="3clF46">
          <property role="TrG5h" value="children" />
          <node concept="10Q1$e" id="3OPtF03cqRj" role="1tU5fm">
            <node concept="3uibUv" id="3OPtF03cqRk" role="10Q1$1">
              <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
              <node concept="3qTvmN" id="3OPtF03cqRl" role="11_B2D" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="3OPtF03cqRm" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="3OPtF03eGWt" role="3ztrMU">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="3OPtF03eHO6" role="11_B2D" />
          </node>
        </node>
        <node concept="3clFbS" id="3OPtF03cqRo" role="3clF47">
          <node concept="3clFbJ" id="3JgCwkqd8wg" role="3cqZAp">
            <node concept="3clFbS" id="3JgCwkqd8wh" role="3clFbx">
              <node concept="3clFbF" id="3JgCwkqd8wi" role="3cqZAp">
                <node concept="2OqwBi" id="3JgCwkqd8wj" role="3clFbG">
                  <node concept="37vLTw" id="3JgCwkqd8wk" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JgCwkqd8xC" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="3JgCwkqd8wl" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~LinkedList.pop():java.lang.Object" resolve="pop" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3JgCwkqd8wm" role="3cqZAp">
                <node concept="Rm8GO" id="3JgCwkqd8wn" role="3cqZAk">
                  <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                  <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3JgCwkqd8wo" role="3clFbw">
              <node concept="17R0WA" id="3JgCwkqd8wp" role="3uHU7w">
                <node concept="2OqwBi" id="3JgCwkqd8wq" role="3uHU7w">
                  <node concept="37vLTw" id="3JgCwkqd8wr" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JgCwkqd8xC" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="3JgCwkqd8ws" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~LinkedList.peek():java.lang.Object" resolve="peek" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3OPtF03cABN" role="3uHU7B">
                  <node concept="37vLTw" id="3OPtF03cAeh" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03cqRf" resolve="cb" />
                  </node>
                  <node concept="liA8E" id="3OPtF03cC7R" role="2OqNvi">
                    <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="3JgCwkqd8wu" role="3uHU7B">
                <node concept="2OqwBi" id="3JgCwkqd8wv" role="3fr31v">
                  <node concept="37vLTw" id="3JgCwkqd8ww" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JgCwkqd8xC" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="3JgCwkqd8wx" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~AbstractCollection.isEmpty():boolean" resolve="isEmpty" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3JgCwkqd8wy" role="3cqZAp">
            <node concept="Rm8GO" id="3JgCwkqd8wz" role="3clFbG">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03cuCo" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03qkBk" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03qnse" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkList" />
        <node concept="3uibUv" id="3OPtF03qnsf" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="3OPtF03qnsg" role="1B3o_S" />
        <node concept="37vLTG" id="3OPtF03qnsi" role="3clF46">
          <property role="TrG5h" value="listb" />
          <node concept="3uibUv" id="3OPtF03qnsj" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
            <node concept="16syzq" id="3OPtF03qnsk" role="11_B2D">
              <ref role="16sUi3" node="3OPtF03qnsq" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF03qnsl" role="3clF46">
          <property role="TrG5h" value="children" />
          <node concept="3uibUv" id="3OPtF03qnsm" role="1tU5fm">
            <ref role="3uigEE" to="k7g3:~List" resolve="List" />
            <node concept="3qUE_q" id="3OPtF03qnsn" role="11_B2D">
              <node concept="3uibUv" id="3OPtF03qnso" role="3qUE_r">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                <node concept="3qTvmN" id="3OPtF03qnsp" role="11_B2D" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="3OPtF03qnsq" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="3OPtF03qnsr" role="3ztrMU">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="3OPtF03qnss" role="11_B2D" />
          </node>
        </node>
        <node concept="3clFbS" id="3OPtF03qnst" role="3clF47">
          <node concept="3clFbF" id="3OPtF03qtJv" role="3cqZAp">
            <node concept="Rm8GO" id="3OPtF03qtJP" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03qqNX" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3JgCwkqd8w_" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03cGBC" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkValues" />
        <node concept="3uibUv" id="3OPtF03cGBD" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="3OPtF03cGBE" role="1B3o_S" />
        <node concept="37vLTG" id="3OPtF03cGBG" role="3clF46">
          <property role="TrG5h" value="valb" />
          <node concept="3uibUv" id="3OPtF03cGBH" role="1tU5fm">
            <ref role="3uigEE" node="1msb0mq99GH" resolve="ValuesBranch" />
            <node concept="16syzq" id="3OPtF03cGBI" role="11_B2D">
              <ref role="16sUi3" node="3OPtF03cGBM" resolve="V" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF03cGBJ" role="3clF46">
          <property role="TrG5h" value="values" />
          <node concept="10Q1$e" id="3OPtF03cGBK" role="1tU5fm">
            <node concept="16syzq" id="3OPtF03cGBL" role="10Q1$1">
              <ref role="16sUi3" node="3OPtF03cGBM" resolve="V" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="3OPtF03cGBM" role="16eVyc">
          <property role="TrG5h" value="V" />
        </node>
        <node concept="3clFbS" id="3OPtF03cGBN" role="3clF47">
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
                  <ref role="37wK5l" to="k7g3:~LinkedList.size():int" resolve="size" />
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
                  <node concept="AH0OO" id="3JgCwkqd8x0" role="37vLTx">
                    <node concept="3cmrfG" id="3JgCwkqd8x1" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="3OPtF03cUnJ" role="AHHXb">
                      <ref role="3cqZAo" node="3OPtF03cGBJ" resolve="values" />
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
            <node concept="17R0WA" id="3JgCwkqd8xb" role="3clFbw">
              <node concept="2OqwBi" id="3JgCwkqd8xc" role="3uHU7w">
                <node concept="37vLTw" id="3JgCwkqd8xd" role="2Oq$k0">
                  <ref role="3cqZAo" node="3JgCwkqd8xC" resolve="symbolPath" />
                </node>
                <node concept="liA8E" id="3JgCwkqd8xe" role="2OqNvi">
                  <ref role="37wK5l" to="k7g3:~LinkedList.peek():java.lang.Object" resolve="peek" />
                </node>
              </node>
              <node concept="2OqwBi" id="3OPtF03cQLH" role="3uHU7B">
                <node concept="37vLTw" id="3OPtF03cQhj" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OPtF03cGBG" resolve="valb" />
                </node>
                <node concept="liA8E" id="3OPtF03cRSD" role="2OqNvi">
                  <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
                </node>
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
        <node concept="2AHcQZ" id="5s497Vqn3JJ" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03cOlL" role="jymVt" />
      <node concept="3clFb_" id="104EUzG0VmU" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkValue" />
        <node concept="3uibUv" id="104EUzG0VmV" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="104EUzG0VmW" role="1B3o_S" />
        <node concept="37vLTG" id="104EUzG0VmY" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="3uibUv" id="104EUzG0VmZ" role="1tU5fm">
            <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
            <node concept="3qTvmN" id="104EUzG0Vn0" role="11_B2D" />
          </node>
        </node>
        <node concept="3clFbS" id="104EUzG0Vn1" role="3clF47">
          <node concept="3clFbF" id="104EUzG126k" role="3cqZAp">
            <node concept="Rm8GO" id="104EUzG126l" role="3clFbG">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="104EUzG0Y1F" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzG3asM" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03cWxf" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkVariables" />
        <node concept="3uibUv" id="3OPtF03cWxg" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="3OPtF03cWxh" role="1B3o_S" />
        <node concept="37vLTG" id="3OPtF03cWxj" role="3clF46">
          <property role="TrG5h" value="varb" />
          <node concept="3uibUv" id="3OPtF03cWxk" role="1tU5fm">
            <ref role="3uigEE" node="uNmovXiSQ6" resolve="VariableBranch" />
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF03cWxl" role="3clF46">
          <property role="TrG5h" value="variables" />
          <node concept="10Q1$e" id="3OPtF03cWxm" role="1tU5fm">
            <node concept="17QB3L" id="3OPtF03cWxn" role="10Q1$1" />
          </node>
        </node>
        <node concept="3clFbS" id="3OPtF03cWxo" role="3clF47">
          <node concept="3clFbJ" id="3JgCwkqwa7t" role="3cqZAp">
            <node concept="3clFbS" id="3JgCwkqwa7u" role="3clFbx">
              <node concept="3cpWs6" id="3JgCwkqwa7v" role="3cqZAp">
                <node concept="Rm8GO" id="3JgCwkqwa7w" role="3cqZAk">
                  <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                  <ref role="Rm8GQ" node="2q_78a95hAO" resolve="STOP" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3JgCwkqwa7x" role="3clFbw">
              <node concept="17R0WA" id="3JgCwkqwa7y" role="3uHU7w">
                <node concept="2OqwBi" id="3JgCwkqwa7z" role="3uHU7w">
                  <node concept="37vLTw" id="3JgCwkqwa7$" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JgCwkqd8xC" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="3JgCwkqwa7_" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~LinkedList.peek():java.lang.Object" resolve="peek" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3OPtF03d5HD" role="3uHU7B">
                  <node concept="37vLTw" id="3OPtF03d5kZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03cWxj" resolve="varb" />
                  </node>
                  <node concept="liA8E" id="3OPtF03d73x" role="2OqNvi">
                    <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="3JgCwkqwa7B" role="3uHU7B">
                <node concept="2OqwBi" id="3JgCwkqwa7C" role="3fr31v">
                  <node concept="37vLTw" id="3JgCwkqwa7D" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JgCwkqd8xC" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="3JgCwkqwa7E" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~AbstractCollection.isEmpty():boolean" resolve="isEmpty" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3JgCwkqwf$k" role="3cqZAp">
            <node concept="Rm8GO" id="3JgCwkqwhzF" role="3clFbG">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03cYwX" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzFtz5q" role="jymVt" />
      <node concept="3clFb_" id="104EUzG3eAi" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="walkVariable" />
        <node concept="3uibUv" id="104EUzG3eAj" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="104EUzG3eAk" role="1B3o_S" />
        <node concept="37vLTG" id="104EUzG3eAm" role="3clF46">
          <property role="TrG5h" value="variable" />
          <node concept="3uibUv" id="104EUzG3eAn" role="1tU5fm">
            <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
          </node>
        </node>
        <node concept="3clFbS" id="104EUzG3eAo" role="3clF47">
          <node concept="3clFbF" id="104EUzG3lv0" role="3cqZAp">
            <node concept="Rm8GO" id="104EUzG3lv1" role="3clFbG">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="104EUzG3jnq" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzG3cxs" role="jymVt" />
      <node concept="3clFb_" id="5s497Vr4nBh" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="endWalk" />
        <node concept="3cqZAl" id="5s497Vr4nBi" role="3clF45" />
        <node concept="3Tm1VV" id="5s497Vr4nBj" role="1B3o_S" />
        <node concept="3clFbS" id="5s497Vr4nBl" role="3clF47" />
        <node concept="2AHcQZ" id="5s497Vr4pKl" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="312cEg" id="3JgCwkqd8xC" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="symbolPath" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="3JgCwkqd8xD" role="1B3o_S" />
        <node concept="3uibUv" id="3JgCwkqd8xE" role="1tU5fm">
          <ref role="3uigEE" to="k7g3:~LinkedList" resolve="LinkedList" />
          <node concept="3uibUv" id="3JgCwkqd8xF" role="11_B2D">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3OPtF03pQuW" role="1B3o_S" />
      <node concept="3uibUv" id="3JgCwkqk8Dw" role="EKbjA">
        <ref role="3uigEE" node="3JgCwkqiP3h" resolve="TreeWalk.Walker" />
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
    </node>
    <node concept="2tJIrI" id="3JgCwkqd8nj" role="jymVt" />
    <node concept="3Tm1VV" id="3JgCwkqd3K8" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3OPtF02T8yx">
    <property role="TrG5h" value="Mappers" />
    <node concept="2tJIrI" id="3OPtF02Tc41" role="jymVt" />
    <node concept="3HP615" id="3OPtF031GQe" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="MapperDelegate" />
      <node concept="2tJIrI" id="3OPtF037F41" role="jymVt" />
      <node concept="3clFb_" id="3OPtF037E1C" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="map" />
        <node concept="37vLTG" id="3OPtF037E1D" role="3clF46">
          <property role="TrG5h" value="tp" />
          <node concept="16syzq" id="3OPtF038_c6" role="1tU5fm">
            <ref role="16sUi3" node="3OPtF038uzE" resolve="T" />
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF037G3a" role="3clF46">
          <property role="TrG5h" value="fallback" />
          <node concept="3uibUv" id="3OPtF037G8i" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
          </node>
        </node>
        <node concept="3Tm1VV" id="3OPtF037E1F" role="1B3o_S" />
        <node concept="3clFbS" id="3OPtF037E1G" role="3clF47" />
        <node concept="3uibUv" id="5s497VqzFLM" role="3clF45">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="5s497VqzHP1" role="11_B2D" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF031K1i" role="jymVt" />
      <node concept="3Tm1VV" id="3OPtF031GQf" role="1B3o_S" />
      <node concept="16euLQ" id="3OPtF038uzE" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="3OPtF038x4$" role="3ztrMU">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="5s497VquQve" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF031mjg" role="jymVt" />
    <node concept="2tJIrI" id="3OPtF031mnc" role="jymVt" />
    <node concept="2YIFZL" id="5s497VqteR6" role="jymVt">
      <property role="TrG5h" value="variablesMapper" />
      <node concept="37vLTG" id="5s497VqtgPx" role="3clF46">
        <property role="TrG5h" value="delegate" />
        <node concept="3uibUv" id="5s497VqtgY1" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF031GQe" resolve="Mappers.MapperDelegate" />
          <node concept="3uibUv" id="5s497VqPLU3" role="11_B2D">
            <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5s497Vq$6sF" role="3clF45">
        <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
      </node>
      <node concept="3Tm1VV" id="5s497VqteR9" role="1B3o_S" />
      <node concept="3clFbS" id="5s497VqteRa" role="3clF47">
        <node concept="3clFbF" id="5s497Vqtqbd" role="3cqZAp">
          <node concept="2ShNRf" id="5s497Vqtqbb" role="3clFbG">
            <node concept="1pGfFk" id="5s497VqtqE8" role="2ShVmc">
              <ref role="37wK5l" node="5s497VqqLbx" resolve="Mappers.VariableMapper" />
              <node concept="37vLTw" id="5s497VqtqM2" role="37wK5m">
                <ref role="3cqZAo" node="5s497VqtgPx" resolve="delegate" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqtbE$" role="jymVt" />
    <node concept="2YIFZL" id="3OPtF032av3" role="jymVt">
      <property role="TrG5h" value="childrenMapper" />
      <node concept="37vLTG" id="3OPtF032bCU" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="3OPtF032bEz" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3OPtF032bPl" role="3clF46">
        <property role="TrG5h" value="delegate" />
        <node concept="3uibUv" id="3OPtF032bTy" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF031GQe" resolve="Mappers.MapperDelegate" />
          <node concept="3uibUv" id="104EUzGgsoO" role="11_B2D">
            <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
            <node concept="3qTvmN" id="104EUzGgwJd" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF032btb" role="3clF45">
        <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
      </node>
      <node concept="3Tm1VV" id="3OPtF032av6" role="1B3o_S" />
      <node concept="3clFbS" id="3OPtF032av7" role="3clF47">
        <node concept="3clFbF" id="3OPtF032e1Z" role="3cqZAp">
          <node concept="2ShNRf" id="3OPtF032e1X" role="3clFbG">
            <node concept="1pGfFk" id="3OPtF032hNE" role="2ShVmc">
              <ref role="37wK5l" node="3OPtF031$$0" resolve="Mappers.ChildrenMapper" />
              <node concept="37vLTw" id="3OPtF032hWL" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF032bCU" resolve="symbol" />
              </node>
              <node concept="37vLTw" id="3OPtF032i06" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF032bPl" resolve="delegate" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF0329wd" role="jymVt" />
    <node concept="312cEu" id="5s497VqqJkg" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="VariableMapper" />
      <node concept="2tJIrI" id="5s497VqqL8s" role="jymVt" />
      <node concept="3clFbW" id="5s497VqqLbx" role="jymVt">
        <node concept="37vLTG" id="5s497Vqr3WN" role="3clF46">
          <property role="TrG5h" value="delegate" />
          <node concept="3uibUv" id="5s497Vqrabr" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF031GQe" resolve="Mappers.MapperDelegate" />
            <node concept="3uibUv" id="5s497VqPOor" role="11_B2D">
              <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
            </node>
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
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="5s497VqDhXc" role="11_B2D" />
          </node>
        </node>
        <node concept="3Tm1VV" id="5s497VqDhXd" role="1B3o_S" />
        <node concept="3uibUv" id="5s497VqDhXf" role="3clF45">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="5s497VqDhXg" role="11_B2D" />
        </node>
        <node concept="3clFbS" id="5s497VqDhXh" role="3clF47">
          <node concept="3SKdUt" id="5s497Vqw2Ou" role="3cqZAp">
            <node concept="3SKdUq" id="5s497Vqw3C7" role="3SKWNk">
              <property role="3SKdUp" value="FIXME: let all tree parts accept visitor, avoid instanceof" />
            </node>
          </node>
          <node concept="3clFbJ" id="5s497Vquvvl" role="3cqZAp">
            <node concept="3clFbS" id="5s497Vquvvm" role="3clFbx">
              <node concept="3cpWs6" id="5s497Vqt7nx" role="3cqZAp">
                <node concept="10QFUN" id="5s497VqDpfu" role="3cqZAk">
                  <node concept="3uibUv" id="5s497VqDpfl" role="10QFUM">
                    <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                    <node concept="3qTvmN" id="5s497VqDpfm" role="11_B2D" />
                  </node>
                  <node concept="2OqwBi" id="5s497VqDpfn" role="10QFUP">
                    <node concept="1eOMI4" id="5s497VqDpfo" role="2Oq$k0">
                      <node concept="10QFUN" id="5s497VqDpfp" role="1eOMHV">
                        <node concept="3uibUv" id="5s497VqDpfq" role="10QFUM">
                          <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
                        </node>
                        <node concept="37vLTw" id="5s497VqDpfr" role="10QFUP">
                          <ref role="3cqZAo" node="5s497VqDhXa" resolve="tp" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5s497VqDpfs" role="2OqNvi">
                      <ref role="37wK5l" node="104EUzFOBnD" resolve="acceptVisitor" />
                      <node concept="Xjq3P" id="5s497VqDpft" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="5s497VquvvG" role="3clFbw">
              <node concept="3uibUv" id="5s497VquvvH" role="2ZW6by">
                <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
              </node>
              <node concept="37vLTw" id="5s497VqDnKr" role="2ZW6bz">
                <ref role="3cqZAo" node="5s497VqDhXa" resolve="tp" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5PpdwMf$Ukx" role="3cqZAp" />
          <node concept="3SKdUt" id="5PpdwMf$VK6" role="3cqZAp">
            <node concept="3SKdUq" id="5PpdwMf$Wye" role="3SKWNk">
              <property role="3SKdUp" value="FIXME: use the Var interface instead and cast to ITreePart&lt;Var&gt;" />
            </node>
          </node>
          <node concept="3clFbJ" id="5s497VqPR2q" role="3cqZAp">
            <node concept="3clFbS" id="5s497VqPR2t" role="3clFbx">
              <node concept="3cpWs6" id="5s497VqPTzR" role="3cqZAp">
                <node concept="2OqwBi" id="5s497VqPVqd" role="3cqZAk">
                  <node concept="37vLTw" id="5s497VqPUnt" role="2Oq$k0">
                    <ref role="3cqZAo" node="5s497VqrarK" resolve="delegate" />
                  </node>
                  <node concept="liA8E" id="5s497VqPWeh" role="2OqNvi">
                    <ref role="37wK5l" node="3OPtF037E1C" resolve="map" />
                    <node concept="10QFUN" id="5s497VqQ3KB" role="37wK5m">
                      <node concept="3uibUv" id="5s497VqQ3K_" role="10QFUM">
                        <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                      </node>
                      <node concept="37vLTw" id="5s497VqQ3KA" role="10QFUP">
                        <ref role="3cqZAo" node="5s497VqDhXa" resolve="tp" />
                      </node>
                    </node>
                    <node concept="Xjq3P" id="5s497VqQ06M" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="5s497VqPSB0" role="3clFbw">
              <node concept="3uibUv" id="5s497VqPTpw" role="2ZW6by">
                <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="37vLTw" id="5s497VqPRO_" role="2ZW6bz">
                <ref role="3cqZAo" node="5s497VqDhXa" resolve="tp" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="5s497VquB$d" role="3cqZAp">
            <node concept="2OqwBi" id="5s497VquHcq" role="3cqZAk">
              <node concept="37vLTw" id="5s497VqDqgP" role="2Oq$k0">
                <ref role="3cqZAo" node="5s497VqDhXa" resolve="tp" />
              </node>
              <node concept="liA8E" id="5s497VqBcs4" role="2OqNvi">
                <ref role="37wK5l" node="1bm7a6EXvNI" resolve="copyRecursively" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5s497VqDj5R" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5s497Vqrc8h" role="jymVt" />
      <node concept="3clFb_" id="5s497VqraRt" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitChildren" />
        <node concept="3uibUv" id="5s497VqraRu" role="3clF45">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="5s497VqraRv" role="1B3o_S" />
        <node concept="37vLTG" id="5s497VqraRx" role="3clF46">
          <property role="TrG5h" value="children" />
          <node concept="3uibUv" id="5s497VqraRy" role="1tU5fm">
            <ref role="3uigEE" node="5JQSuNswOXL" resolve="ChildrenBranch" />
            <node concept="16syzq" id="5s497VqraRz" role="11_B2D">
              <ref role="16sUi3" node="5s497VqraR$" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="5s497VqraR$" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="5s497VqraR_" role="3ztrMU">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="5s497VqraRA" role="11_B2D" />
          </node>
        </node>
        <node concept="3clFbS" id="5s497VqraRB" role="3clF47">
          <node concept="3clFbF" id="5s497VqsOrx" role="3cqZAp">
            <node concept="2OqwBi" id="5s497VqsOC3" role="3clFbG">
              <node concept="37vLTw" id="5s497VqsOrw" role="2Oq$k0">
                <ref role="3cqZAo" node="5s497VqraRx" resolve="children" />
              </node>
              <node concept="liA8E" id="5s497VqsOYp" role="2OqNvi">
                <ref role="37wK5l" node="3OPtF02T_i3" resolve="mapRecursively" />
                <node concept="Xjq3P" id="5s497VqOSiH" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5s497VqrcoY" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5s497VqrduJ" role="jymVt" />
      <node concept="3clFb_" id="5s497VqraRY" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitList" />
        <node concept="3uibUv" id="5s497VqraRZ" role="3clF45">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="5s497VqraS0" role="1B3o_S" />
        <node concept="37vLTG" id="5s497VqraS2" role="3clF46">
          <property role="TrG5h" value="list" />
          <node concept="3uibUv" id="5s497VqraS3" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
            <node concept="16syzq" id="2q_78a96Rez" role="11_B2D">
              <ref role="16sUi3" node="2q_78a96Qqp" resolve="TP" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5s497VqraS8" role="3clF47">
          <node concept="3clFbF" id="5s497VqsK2c" role="3cqZAp">
            <node concept="2OqwBi" id="5s497VqsKcB" role="3clFbG">
              <node concept="37vLTw" id="5s497VqsK2b" role="2Oq$k0">
                <ref role="3cqZAo" node="5s497VqraS2" resolve="list" />
              </node>
              <node concept="liA8E" id="5s497VqsKBA" role="2OqNvi">
                <ref role="37wK5l" node="3OPtF03lct2" resolve="mapRecursively" />
                <node concept="Xjq3P" id="5s497VqOJkS" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5s497VqrdHQ" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
        <node concept="16euLQ" id="2q_78a96Qqp" role="16eVyc">
          <property role="TrG5h" value="TP" />
          <node concept="3uibUv" id="2q_78a96RcG" role="3ztrMU">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="2q_78a96RcM" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5s497VqrcAB" role="jymVt" />
      <node concept="3clFb_" id="5s497VqraRE" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitValues" />
        <node concept="37vLTG" id="5s497VqraRF" role="3clF46">
          <property role="TrG5h" value="values" />
          <node concept="3uibUv" id="5s497VqraRG" role="1tU5fm">
            <ref role="3uigEE" node="1msb0mq99GH" resolve="ValuesBranch" />
            <node concept="16syzq" id="5s497VqraRH" role="11_B2D">
              <ref role="16sUi3" node="5s497VqraRL" resolve="V" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="5s497VqraRI" role="3clF45">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="5s497VqraRJ" role="1B3o_S" />
        <node concept="16euLQ" id="5s497VqraRL" role="16eVyc">
          <property role="TrG5h" value="V" />
        </node>
        <node concept="3clFbS" id="5s497VqraRM" role="3clF47">
          <node concept="3clFbF" id="5s497VqsLbg" role="3cqZAp">
            <node concept="2OqwBi" id="5s497VqsLmW" role="3clFbG">
              <node concept="37vLTw" id="5s497VqsLbf" role="2Oq$k0">
                <ref role="3cqZAo" node="5s497VqraRF" resolve="values" />
              </node>
              <node concept="liA8E" id="5s497VqsVPE" role="2OqNvi">
                <ref role="37wK5l" node="1bm7a6EXT8b" resolve="copyRecursively" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5s497VqrcPm" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5s497Vqrd29" role="jymVt" />
      <node concept="3clFb_" id="104EUzFJcnK" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitValue" />
        <node concept="37vLTG" id="104EUzFJcnL" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="3uibUv" id="104EUzFJcnM" role="1tU5fm">
            <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
            <node concept="16syzq" id="104EUzFJcnN" role="11_B2D">
              <ref role="16sUi3" node="104EUzFJcnR" resolve="V" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="104EUzFJcnO" role="3clF45">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="104EUzFJcnP" role="1B3o_S" />
        <node concept="16euLQ" id="104EUzFJcnR" role="16eVyc">
          <property role="TrG5h" value="V" />
        </node>
        <node concept="3clFbS" id="104EUzFJcnS" role="3clF47">
          <node concept="3SKdUt" id="104EUzGbrMM" role="3cqZAp">
            <node concept="3SKdUq" id="104EUzGbrNK" role="3SKWNk">
              <property role="3SKdUp" value="FIXME implement me" />
            </node>
          </node>
          <node concept="YS8fn" id="104EUzFJesV" role="3cqZAp">
            <node concept="2ShNRf" id="104EUzFJeun" role="YScLw">
              <node concept="1pGfFk" id="104EUzFJeGZ" role="2ShVmc">
                <ref role="37wK5l" to="e2lb:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="104EUzFJjKf" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzFJdvB" role="jymVt" />
      <node concept="3clFb_" id="5s497VqraRP" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitVariables" />
        <node concept="37vLTG" id="5s497VqraRQ" role="3clF46">
          <property role="TrG5h" value="variables" />
          <node concept="3uibUv" id="5s497VqraRR" role="1tU5fm">
            <ref role="3uigEE" node="uNmovXiSQ6" resolve="VariableBranch" />
          </node>
        </node>
        <node concept="3uibUv" id="5s497VqraRS" role="3clF45">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="5s497VqraRT" role="1B3o_S" />
        <node concept="3clFbS" id="5s497VqraRV" role="3clF47">
          <node concept="3clFbF" id="5s497VqQ5Mb" role="3cqZAp">
            <node concept="2OqwBi" id="5s497VqQ5V5" role="3clFbG">
              <node concept="37vLTw" id="5s497VqQ5Ma" role="2Oq$k0">
                <ref role="3cqZAo" node="5s497VqraRQ" resolve="variables" />
              </node>
              <node concept="liA8E" id="5s497VqQ6z9" role="2OqNvi">
                <ref role="37wK5l" node="3OPtF02UnMJ" resolve="mapRecursively" />
                <node concept="Xjq3P" id="5s497VqQ7CI" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5s497Vqrdh6" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5s497VqraD6" role="jymVt" />
      <node concept="3clFb_" id="104EUzFJfZX" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitVariable" />
        <node concept="37vLTG" id="104EUzFJfZY" role="3clF46">
          <property role="TrG5h" value="variable" />
          <node concept="3uibUv" id="104EUzFJfZZ" role="1tU5fm">
            <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
          </node>
        </node>
        <node concept="3uibUv" id="104EUzFJg00" role="3clF45">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="104EUzFJg01" role="1B3o_S" />
        <node concept="3clFbS" id="104EUzFJg03" role="3clF47">
          <node concept="3SKdUt" id="104EUzGbtaL" role="3cqZAp">
            <node concept="3SKdUq" id="104EUzGbtaT" role="3SKWNk">
              <property role="3SKdUp" value="FIXME implement me" />
            </node>
          </node>
          <node concept="YS8fn" id="104EUzFJlCK" role="3cqZAp">
            <node concept="2ShNRf" id="104EUzFJlFw" role="YScLw">
              <node concept="1pGfFk" id="104EUzFJlU8" role="2ShVmc">
                <ref role="37wK5l" to="e2lb:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="104EUzFJkEG" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzFJhb8" role="jymVt" />
      <node concept="3Tm6S6" id="5s497VqtaGv" role="1B3o_S" />
      <node concept="3uibUv" id="5s497VqqKLX" role="EKbjA">
        <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
      </node>
      <node concept="3uibUv" id="5s497VqqKYG" role="EKbjA">
        <ref role="3uigEE" node="104EUzFOARB" resolve="ITreePart.Visitor" />
      </node>
      <node concept="312cEg" id="5s497VqrarK" role="jymVt">
        <property role="TrG5h" value="delegate" />
        <node concept="3Tm6S6" id="5s497VqrarL" role="1B3o_S" />
        <node concept="3uibUv" id="5s497VqrarN" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF031GQe" resolve="Mappers.MapperDelegate" />
          <node concept="3uibUv" id="5s497VqPOEn" role="11_B2D">
            <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqqG$D" role="jymVt" />
    <node concept="2tJIrI" id="5s497VqqGBZ" role="jymVt" />
    <node concept="312cEu" id="3OPtF02YFod" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="ChildrenMapper" />
      <node concept="2tJIrI" id="3OPtF031$89" role="jymVt" />
      <node concept="3clFbW" id="3OPtF031$$0" role="jymVt">
        <node concept="3cqZAl" id="3OPtF031$$2" role="3clF45" />
        <node concept="3Tm1VV" id="3OPtF031$$3" role="1B3o_S" />
        <node concept="3clFbS" id="3OPtF031$$4" role="3clF47">
          <node concept="3clFbF" id="3OPtF031_15" role="3cqZAp">
            <node concept="37vLTI" id="3OPtF031_17" role="3clFbG">
              <node concept="2OqwBi" id="3OPtF031_1b" role="37vLTJ">
                <node concept="Xjq3P" id="3OPtF031_1e" role="2Oq$k0" />
                <node concept="2OwXpG" id="3OPtF031_1a" role="2OqNvi">
                  <ref role="2Oxat5" node="3OPtF031_11" resolve="symbol" />
                </node>
              </node>
              <node concept="37vLTw" id="3OPtF031_1f" role="37vLTx">
                <ref role="3cqZAo" node="3OPtF031$QA" resolve="symbol" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3OPtF031MyQ" role="3cqZAp">
            <node concept="37vLTI" id="3OPtF031MyS" role="3clFbG">
              <node concept="2OqwBi" id="3OPtF031MyW" role="37vLTJ">
                <node concept="Xjq3P" id="3OPtF031MyZ" role="2Oq$k0" />
                <node concept="2OwXpG" id="3OPtF031MyV" role="2OqNvi">
                  <ref role="2Oxat5" node="3OPtF031MyM" resolve="delegate" />
                </node>
              </node>
              <node concept="37vLTw" id="3OPtF031Mz0" role="37vLTx">
                <ref role="3cqZAo" node="3OPtF031MkV" resolve="delegate" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF031$QA" role="3clF46">
          <property role="TrG5h" value="symbol" />
          <node concept="3uibUv" id="3OPtF031$Q_" role="1tU5fm">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF031MkV" role="3clF46">
          <property role="TrG5h" value="delegate" />
          <node concept="3uibUv" id="3OPtF031Mua" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF031GQe" resolve="Mappers.MapperDelegate" />
            <node concept="3uibUv" id="104EUzGgqNL" role="11_B2D">
              <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
              <node concept="3qTvmN" id="104EUzGgynA" role="11_B2D" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5s497VqqFeE" role="1B3o_S" />
      <node concept="3uibUv" id="3OPtF02YFy3" role="EKbjA">
        <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
      </node>
      <node concept="3uibUv" id="3OPtF02YF$6" role="EKbjA">
        <ref role="3uigEE" node="104EUzFOARB" resolve="ITreePart.Visitor" />
      </node>
      <node concept="2tJIrI" id="3OPtF030ZzQ" role="jymVt" />
      <node concept="3clFb_" id="5s497VqCQ9n" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="map" />
        <node concept="37vLTG" id="5s497VqCQ9o" role="3clF46">
          <property role="TrG5h" value="tp" />
          <node concept="3uibUv" id="5s497VqCQ9p" role="1tU5fm">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="5s497VqCQ9q" role="11_B2D" />
          </node>
        </node>
        <node concept="3Tm1VV" id="5s497VqCQ9r" role="1B3o_S" />
        <node concept="3uibUv" id="5s497VqCQ9t" role="3clF45">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="5s497VqCQ9u" role="11_B2D" />
        </node>
        <node concept="3clFbS" id="5s497VqCQ9v" role="3clF47">
          <node concept="3clFbJ" id="3OPtF035KoH" role="3cqZAp">
            <node concept="3clFbS" id="3OPtF035KoI" role="3clFbx">
              <node concept="3cpWs6" id="3OPtF035QkN" role="3cqZAp">
                <node concept="10QFUN" id="5s497VqDdw8" role="3cqZAk">
                  <node concept="3uibUv" id="5s497VqDdvZ" role="10QFUM">
                    <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                    <node concept="3qTvmN" id="5s497VqDdw0" role="11_B2D" />
                  </node>
                  <node concept="2OqwBi" id="5s497VqDdw1" role="10QFUP">
                    <node concept="1eOMI4" id="5s497VqDdw2" role="2Oq$k0">
                      <node concept="10QFUN" id="5s497VqDdw3" role="1eOMHV">
                        <node concept="3uibUv" id="5s497VqDdw4" role="10QFUM">
                          <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
                        </node>
                        <node concept="37vLTw" id="5s497VqDdw5" role="10QFUP">
                          <ref role="3cqZAo" node="5s497VqCQ9o" resolve="tp" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5s497VqDdw6" role="2OqNvi">
                      <ref role="37wK5l" node="3OPtF03lcuq" resolve="acceptVisitor" />
                      <node concept="Xjq3P" id="5s497VqDdw7" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="3OPtF035K_6" role="3clFbw">
              <node concept="3uibUv" id="3OPtF035KK5" role="2ZW6by">
                <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
              </node>
              <node concept="37vLTw" id="5s497VqCX1I" role="2ZW6bz">
                <ref role="3cqZAo" node="5s497VqCQ9o" resolve="tp" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3OPtF0301J5" role="3cqZAp">
            <node concept="3clFbS" id="3OPtF0301J6" role="3clFbx">
              <node concept="3cpWs8" id="5s497VqCZPP" role="3cqZAp">
                <node concept="3cpWsn" id="5s497VqCZPQ" role="3cpWs9">
                  <property role="TrG5h" value="res" />
                  <node concept="10QFUN" id="5s497VqD7pt" role="33vP2m">
                    <node concept="3uibUv" id="5s497VqD7pk" role="10QFUM">
                      <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                      <node concept="3qTvmN" id="5s497VqD7pl" role="11_B2D" />
                    </node>
                    <node concept="2OqwBi" id="5s497VqD7pm" role="10QFUP">
                      <node concept="1eOMI4" id="5s497VqD7pn" role="2Oq$k0">
                        <node concept="10QFUN" id="5s497VqD7po" role="1eOMHV">
                          <node concept="3uibUv" id="5s497VqD7pp" role="10QFUM">
                            <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
                          </node>
                          <node concept="37vLTw" id="5s497VqD7pq" role="10QFUP">
                            <ref role="3cqZAo" node="5s497VqCQ9o" resolve="tp" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="5s497VqD7pr" role="2OqNvi">
                        <ref role="37wK5l" node="104EUzFOBnD" resolve="acceptVisitor" />
                        <node concept="Xjq3P" id="5s497VqD7ps" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="5s497VqD64V" role="1tU5fm">
                    <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                    <node concept="3qTvmN" id="5s497VqD64W" role="11_B2D" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="3OPtF035hv7" role="3cqZAp">
                <node concept="3SKdUq" id="3OPtF035ilC" role="3SKWNk">
                  <property role="3SKdUp" value="TODO this smells. move ListBranch into this package and avoid Visitor hierarchy" />
                </node>
              </node>
              <node concept="3clFbJ" id="3OPtF035elz" role="3cqZAp">
                <node concept="3clFbS" id="3OPtF035elA" role="3clFbx">
                  <node concept="3cpWs6" id="3OPtF035flW" role="3cqZAp">
                    <node concept="37vLTw" id="5s497VqD9$q" role="3cqZAk">
                      <ref role="3cqZAo" node="5s497VqCZPQ" resolve="res" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="3OPtF035fiO" role="3clFbw">
                  <node concept="10Nm6u" id="3OPtF035fjN" role="3uHU7w" />
                  <node concept="37vLTw" id="5s497VqDakP" role="3uHU7B">
                    <ref role="3cqZAo" node="5s497VqCZPQ" resolve="res" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="3OPtF0301SQ" role="3clFbw">
              <node concept="3uibUv" id="3OPtF03020H" role="2ZW6by">
                <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
              </node>
              <node concept="37vLTw" id="5s497VqCY3W" role="2ZW6bz">
                <ref role="3cqZAo" node="5s497VqCQ9o" resolve="tp" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3OPtF0304P6" role="3cqZAp">
            <node concept="2OqwBi" id="3OPtF030Yvq" role="3cqZAk">
              <node concept="37vLTw" id="5s497VqCYPe" role="2Oq$k0">
                <ref role="3cqZAo" node="5s497VqCQ9o" resolve="tp" />
              </node>
              <node concept="liA8E" id="3OPtF030Yvs" role="2OqNvi">
                <ref role="37wK5l" node="3OPtF02Tjpr" resolve="mapRecursively" />
                <node concept="Xjq3P" id="3OPtF035vXx" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5s497VqCRCQ" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF030ZhF" role="jymVt" />
      <node concept="3clFb_" id="3OPtF02YFAi" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitChildren" />
        <node concept="3uibUv" id="3OPtF02Zn2N" role="3clF45">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="3OPtF02YFAk" role="1B3o_S" />
        <node concept="37vLTG" id="3OPtF02YFAm" role="3clF46">
          <property role="TrG5h" value="children" />
          <node concept="3uibUv" id="3OPtF02YFAn" role="1tU5fm">
            <ref role="3uigEE" node="5JQSuNswOXL" resolve="ChildrenBranch" />
            <node concept="16syzq" id="3OPtF02YFAo" role="11_B2D">
              <ref role="16sUi3" node="3OPtF02YFAp" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="3OPtF02YFAp" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="3OPtF03feG2" role="3ztrMU">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="3OPtF03ffAD" role="11_B2D" />
          </node>
        </node>
        <node concept="3clFbS" id="3OPtF02YFAr" role="3clF47">
          <node concept="3clFbJ" id="3OPtF031_SM" role="3cqZAp">
            <node concept="3clFbS" id="3OPtF031_SN" role="3clFbx">
              <node concept="3cpWs6" id="3OPtF031Q$9" role="3cqZAp">
                <node concept="2OqwBi" id="3OPtF031Syx" role="3cqZAk">
                  <node concept="37vLTw" id="3OPtF031RXo" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF031MyM" resolve="delegate" />
                  </node>
                  <node concept="liA8E" id="3OPtF031TnN" role="2OqNvi">
                    <ref role="37wK5l" node="3OPtF037E1C" resolve="map" />
                    <node concept="37vLTw" id="3OPtF031UbH" role="37wK5m">
                      <ref role="3cqZAo" node="3OPtF02YFAm" resolve="children" />
                    </node>
                    <node concept="Xjq3P" id="3OPtF0385jM" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="3OPtF031AMW" role="3clFbw">
              <node concept="2OqwBi" id="3OPtF031A2V" role="3uHU7B">
                <node concept="37vLTw" id="3OPtF031_Vo" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OPtF02YFAm" resolve="children" />
                </node>
                <node concept="liA8E" id="3OPtF031Aul" role="2OqNvi">
                  <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
                </node>
              </node>
              <node concept="37vLTw" id="3OPtF031AZa" role="3uHU7w">
                <ref role="3cqZAo" node="3OPtF031_11" resolve="symbol" />
              </node>
            </node>
            <node concept="9aQIb" id="3OPtF031B9h" role="9aQIa">
              <node concept="3clFbS" id="3OPtF031B9i" role="9aQI4">
                <node concept="3cpWs6" id="3OPtF031Be_" role="3cqZAp">
                  <node concept="2OqwBi" id="3OPtF031C1b" role="3cqZAk">
                    <node concept="37vLTw" id="3OPtF031BC$" role="2Oq$k0">
                      <ref role="3cqZAo" node="3OPtF02YFAm" resolve="children" />
                    </node>
                    <node concept="liA8E" id="3OPtF031C$7" role="2OqNvi">
                      <ref role="37wK5l" node="3OPtF02T_i3" resolve="mapRecursively" />
                      <node concept="Xjq3P" id="5s497VqP5rL" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5s497VqvzNz" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF030ZQS" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03qYWk" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitList" />
        <node concept="3Tm1VV" id="3OPtF03qYWm" role="1B3o_S" />
        <node concept="37vLTG" id="3OPtF03qYWo" role="3clF46">
          <property role="TrG5h" value="list" />
          <node concept="3uibUv" id="3OPtF03qYWp" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
            <node concept="16syzq" id="2q_78a96NSM" role="11_B2D">
              <ref role="16sUi3" node="2q_78a96M5p" resolve="TP" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="3OPtF03qYWu" role="3clF47">
          <node concept="3SKdUt" id="3OPtF03r4kP" role="3cqZAp">
            <node concept="3SKdUq" id="3OPtF03r4vZ" role="3SKWNk">
              <property role="3SKdUp" value="TODO check this out" />
            </node>
          </node>
          <node concept="3clFbF" id="3OPtF03r3eb" role="3cqZAp">
            <node concept="2OqwBi" id="3OPtF03r3w8" role="3clFbG">
              <node concept="37vLTw" id="3OPtF03r3ea" role="2Oq$k0">
                <ref role="3cqZAo" node="3OPtF03qYWo" resolve="list" />
              </node>
              <node concept="liA8E" id="3OPtF03r3Ol" role="2OqNvi">
                <ref role="37wK5l" node="3OPtF03lct2" resolve="mapRecursively" />
                <node concept="Xjq3P" id="5s497VqOYzX" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="5s497VqrgfG" role="3clF45">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="5s497VqrjlX" role="11_B2D" />
        </node>
        <node concept="2AHcQZ" id="5s497Vqv_b$" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
        <node concept="16euLQ" id="2q_78a96M5p" role="16eVyc">
          <property role="TrG5h" value="TP" />
          <node concept="3uibUv" id="2q_78a96MZG" role="3ztrMU">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="2q_78a96NRF" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03r08O" role="jymVt" />
      <node concept="3clFb_" id="3OPtF02YFAs" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitValues" />
        <node concept="37vLTG" id="3OPtF02YFAt" role="3clF46">
          <property role="TrG5h" value="values" />
          <node concept="3uibUv" id="3OPtF02YFAu" role="1tU5fm">
            <ref role="3uigEE" node="1msb0mq99GH" resolve="ValuesBranch" />
            <node concept="16syzq" id="3OPtF02YFAv" role="11_B2D">
              <ref role="16sUi3" node="3OPtF02YFAz" resolve="V" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="3OPtF02ZRrt" role="3clF45">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qUE_q" id="3OPtF02ZRNF" role="11_B2D">
            <node concept="3uibUv" id="3OPtF02ZRWz" role="3qUE_r">
              <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3OPtF02YFAx" role="1B3o_S" />
        <node concept="16euLQ" id="3OPtF02YFAz" role="16eVyc">
          <property role="TrG5h" value="V" />
        </node>
        <node concept="3clFbS" id="3OPtF02YFA$" role="3clF47">
          <node concept="3clFbF" id="3OPtF02ZPXU" role="3cqZAp">
            <node concept="2OqwBi" id="3OPtF02ZQeO" role="3clFbG">
              <node concept="37vLTw" id="3OPtF02ZPXT" role="2Oq$k0">
                <ref role="3cqZAo" node="3OPtF02YFAt" resolve="values" />
              </node>
              <node concept="liA8E" id="3OPtF02ZQ$E" role="2OqNvi">
                <ref role="37wK5l" node="1bm7a6EXT8b" resolve="copyRecursively" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5s497VqvAx1" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF031095" role="jymVt" />
      <node concept="3clFb_" id="104EUzFJnf0" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitValue" />
        <node concept="37vLTG" id="104EUzFJnf1" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="3uibUv" id="104EUzFJnf2" role="1tU5fm">
            <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
            <node concept="16syzq" id="104EUzFJnf3" role="11_B2D">
              <ref role="16sUi3" node="104EUzFJnf7" resolve="V" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="104EUzFJnf4" role="3clF45">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="104EUzFJnf5" role="1B3o_S" />
        <node concept="16euLQ" id="104EUzFJnf7" role="16eVyc">
          <property role="TrG5h" value="V" />
        </node>
        <node concept="3clFbS" id="104EUzFJnf8" role="3clF47">
          <node concept="3SKdUt" id="104EUzGbuyO" role="3cqZAp">
            <node concept="3SKdUq" id="104EUzGbuyW" role="3SKWNk">
              <property role="3SKdUp" value="FIXME implement me" />
            </node>
          </node>
          <node concept="YS8fn" id="104EUzFJqGk" role="3cqZAp">
            <node concept="2ShNRf" id="104EUzFJqGU" role="YScLw">
              <node concept="1pGfFk" id="104EUzFJqWo" role="2ShVmc">
                <ref role="37wK5l" to="e2lb:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="104EUzFJpDV" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzFJoyy" role="jymVt" />
      <node concept="3clFb_" id="3OPtF02YFA_" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitVariables" />
        <node concept="37vLTG" id="3OPtF02YFAA" role="3clF46">
          <property role="TrG5h" value="variables" />
          <node concept="3uibUv" id="3OPtF02YFAB" role="1tU5fm">
            <ref role="3uigEE" node="uNmovXiSQ6" resolve="VariableBranch" />
          </node>
        </node>
        <node concept="3Tm1VV" id="3OPtF02YFAD" role="1B3o_S" />
        <node concept="3clFbS" id="3OPtF02YFAF" role="3clF47">
          <node concept="3clFbF" id="3OPtF02ZUbs" role="3cqZAp">
            <node concept="2OqwBi" id="3OPtF02ZUmm" role="3clFbG">
              <node concept="37vLTw" id="3OPtF02ZUbr" role="2Oq$k0">
                <ref role="3cqZAo" node="3OPtF02YFAA" resolve="variables" />
              </node>
              <node concept="liA8E" id="3OPtF02ZUAF" role="2OqNvi">
                <ref role="37wK5l" node="1bm7a6EXEaM" resolve="copyRecursively" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="3OPtF02ZTUY" role="3clF45">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qUE_q" id="3OPtF02ZTUZ" role="11_B2D">
            <node concept="3uibUv" id="3OPtF02ZTV0" role="3qUE_r">
              <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5s497VqvC2B" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5s497VqE8$3" role="jymVt" />
      <node concept="3clFb_" id="104EUzFJs2F" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitVariable" />
        <node concept="37vLTG" id="104EUzFJs2G" role="3clF46">
          <property role="TrG5h" value="variable" />
          <node concept="3uibUv" id="104EUzFJs2H" role="1tU5fm">
            <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
          </node>
        </node>
        <node concept="3uibUv" id="104EUzFJs2I" role="3clF45">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="104EUzFJs2J" role="1B3o_S" />
        <node concept="3clFbS" id="104EUzFJs2L" role="3clF47">
          <node concept="3SKdUt" id="104EUzGbqpX" role="3cqZAp">
            <node concept="3SKdUq" id="104EUzGbqqV" role="3SKWNk">
              <property role="3SKdUp" value="FIXME implement me" />
            </node>
          </node>
          <node concept="YS8fn" id="104EUzFJw_u" role="3cqZAp">
            <node concept="2ShNRf" id="104EUzFJwA4" role="YScLw">
              <node concept="1pGfFk" id="104EUzFJwOG" role="2ShVmc">
                <ref role="37wK5l" to="e2lb:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="104EUzFJvxT" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzFJtqh" role="jymVt" />
      <node concept="312cEg" id="3OPtF031_11" role="jymVt">
        <property role="TrG5h" value="symbol" />
        <node concept="3Tm6S6" id="3OPtF031_12" role="1B3o_S" />
        <node concept="3uibUv" id="3OPtF031_14" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="312cEg" id="3OPtF031MyM" role="jymVt">
        <property role="TrG5h" value="delegate" />
        <node concept="3Tm6S6" id="3OPtF031MyN" role="1B3o_S" />
        <node concept="3uibUv" id="3OPtF031MyP" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF031GQe" resolve="Mappers.MapperDelegate" />
          <node concept="3uibUv" id="104EUzGgonO" role="11_B2D">
            <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
            <node concept="3qTvmN" id="104EUzGg$Zt" role="11_B2D" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF02Tc53" role="jymVt" />
    <node concept="3Tm1VV" id="3OPtF02T8yy" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3OPtF03lco4">
    <property role="TrG5h" value="ListBranch" />
    <node concept="2tJIrI" id="3OPtF03lcol" role="jymVt" />
    <node concept="2YIFZL" id="3OPtF03lcom" role="jymVt">
      <property role="TrG5h" value="create" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="3OPtF03lcon" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="3OPtF03lcoo" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3OPtF03lcop" role="3clF46">
        <property role="TrG5h" value="elements" />
        <node concept="8X2XB" id="3OPtF03lcoq" role="1tU5fm">
          <node concept="3uibUv" id="3OPtF03lcor" role="8Xvag">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3OPtF03lcos" role="3clF47">
        <node concept="3cpWs8" id="3OPtF03lcot" role="3cqZAp">
          <node concept="3cpWsn" id="3OPtF03lcou" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="3uibUv" id="3OPtF03lcov" role="1tU5fm">
              <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
            </node>
            <node concept="2YIFZM" id="3OPtF03lcow" role="33vP2m">
              <ref role="37wK5l" node="1R$Cm9qEBDL" resolve="create" />
              <ref role="1Pybhc" node="1R$Cm9qEqLU" resolve="Path" />
              <node concept="37vLTw" id="3OPtF03lcox" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF03lcon" resolve="symbol" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF03lcoy" role="3cqZAp">
          <node concept="2ShNRf" id="3OPtF03lcoz" role="3clFbG">
            <node concept="1pGfFk" id="3OPtF03lco$" role="2ShVmc">
              <ref role="37wK5l" node="3OPtF03lcrB" resolve="ListBranch" />
              <node concept="37vLTw" id="3OPtF03lco_" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF03lcou" resolve="path" />
              </node>
              <node concept="2YIFZM" id="3OPtF03lcoA" role="37wK5m">
                <ref role="37wK5l" node="3OPtF03lcoL" resolve="createList" />
                <ref role="1Pybhc" node="3OPtF03lco4" resolve="ListBranch" />
                <node concept="37vLTw" id="3OPtF03lcoB" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03lcou" resolve="path" />
                </node>
                <node concept="37vLTw" id="3OPtF03lcoC" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03lcop" resolve="elements" />
                </node>
                <node concept="3cmrfG" id="3OPtF03lcoD" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3OPtF03lcoE" role="1B3o_S" />
      <node concept="3uibUv" id="3OPtF03lcoF" role="3clF45">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
        <node concept="16syzq" id="3OPtF03lcoG" role="11_B2D">
          <ref role="16sUi3" node="3OPtF03lcoH" resolve="T" />
        </node>
      </node>
      <node concept="16euLQ" id="3OPtF03lcoH" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="3OPtF03lcoI" role="3ztrMU">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="3OPtF03lcoJ" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcoK" role="jymVt" />
    <node concept="2YIFZL" id="3OPtF03lcoL" role="jymVt">
      <property role="TrG5h" value="createList" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="3OPtF03lcoM" role="3clF46">
        <property role="TrG5h" value="parentPath" />
        <node concept="3uibUv" id="3OPtF03lcoN" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="3OPtF03lcoO" role="3clF46">
        <property role="TrG5h" value="elements" />
        <node concept="10Q1$e" id="3OPtF03lcoP" role="1tU5fm">
          <node concept="3uibUv" id="3OPtF03lcoQ" role="10Q1$1">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3OPtF03lcoR" role="3clF46">
        <property role="TrG5h" value="headIdx" />
        <node concept="10Oyi0" id="3OPtF03lcoS" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3OPtF03lcoT" role="3clF47">
        <node concept="3clFbJ" id="3OPtF03lcoU" role="3cqZAp">
          <node concept="3clFbS" id="3OPtF03lcoV" role="3clFbx">
            <node concept="3cpWs8" id="3OPtF03lcoW" role="3cqZAp">
              <node concept="3cpWsn" id="3OPtF03lcoX" role="3cpWs9">
                <property role="TrG5h" value="head" />
                <node concept="3uibUv" id="3OPtF03lcoY" role="1tU5fm">
                  <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                </node>
                <node concept="AH0OO" id="3OPtF03lcoZ" role="33vP2m">
                  <node concept="37vLTw" id="3OPtF03lcp0" role="AHEQo">
                    <ref role="3cqZAo" node="3OPtF03lcoR" resolve="headIdx" />
                  </node>
                  <node concept="37vLTw" id="3OPtF03lcp1" role="AHHXb">
                    <ref role="3cqZAo" node="3OPtF03lcoO" resolve="elements" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3OPtF03lcp2" role="3cqZAp">
              <node concept="3cpWsn" id="3OPtF03lcp3" role="3cpWs9">
                <property role="TrG5h" value="cons" />
                <node concept="3uibUv" id="3OPtF03lcp4" role="1tU5fm">
                  <ref role="3uigEE" node="3OPtF03lcvH" resolve="ListBranch.Cons" />
                  <node concept="16syzq" id="3OPtF03lcp5" role="11_B2D">
                    <ref role="16sUi3" node="3OPtF03lcq9" resolve="T" />
                  </node>
                </node>
                <node concept="2ShNRf" id="3OPtF03lcp6" role="33vP2m">
                  <node concept="1pGfFk" id="3OPtF03lcp7" role="2ShVmc">
                    <ref role="37wK5l" node="3OPtF03lcvJ" resolve="ListBranch.Cons" />
                    <node concept="37vLTw" id="3OPtF03lcp8" role="37wK5m">
                      <ref role="3cqZAo" node="3OPtF03lcoX" resolve="head" />
                    </node>
                    <node concept="37vLTw" id="3OPtF03lcp9" role="37wK5m">
                      <ref role="3cqZAo" node="3OPtF03lcoR" resolve="headIdx" />
                    </node>
                    <node concept="2YIFZM" id="3OPtF03lcpa" role="37wK5m">
                      <ref role="1Pybhc" node="3OPtF03lco4" resolve="ListBranch" />
                      <ref role="37wK5l" node="3OPtF03lcoL" resolve="createList" />
                      <node concept="37vLTw" id="3OPtF03lcpb" role="37wK5m">
                        <ref role="3cqZAo" node="3OPtF03lcoM" resolve="parentPath" />
                      </node>
                      <node concept="37vLTw" id="3OPtF03lcpc" role="37wK5m">
                        <ref role="3cqZAo" node="3OPtF03lcoO" resolve="elements" />
                      </node>
                      <node concept="2$rviw" id="3OPtF03lcpd" role="37wK5m">
                        <node concept="37vLTw" id="3OPtF03lcpe" role="2$L3a6">
                          <ref role="3cqZAo" node="3OPtF03lcoR" resolve="headIdx" />
                        </node>
                      </node>
                      <node concept="16syzq" id="3OPtF03lcpf" role="3PaCim">
                        <ref role="16sUi3" node="3OPtF03lcq9" resolve="T" />
                      </node>
                    </node>
                    <node concept="16syzq" id="3OPtF03lcpg" role="1pMfVU">
                      <ref role="16sUi3" node="3OPtF03lcq9" resolve="T" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3OPtF03lcph" role="3cqZAp" />
            <node concept="3SKdUt" id="3OPtF03lcpi" role="3cqZAp">
              <node concept="3SKdUq" id="3OPtF03lcpj" role="3SKWNk">
                <property role="3SKdUp" value="TODO: this smells" />
              </node>
            </node>
            <node concept="3clFbJ" id="3OPtF03lcpk" role="3cqZAp">
              <node concept="3clFbS" id="3OPtF03lcpl" role="3clFbx">
                <node concept="3clFbF" id="3OPtF03lcpm" role="3cqZAp">
                  <node concept="2OqwBi" id="3OPtF03lcpn" role="3clFbG">
                    <node concept="liA8E" id="3OPtF03lcpo" role="2OqNvi">
                      <ref role="37wK5l" node="1R$Cm9qEroc" resolve="prepend" />
                      <node concept="37vLTw" id="3OPtF03lcpp" role="37wK5m">
                        <ref role="3cqZAo" node="3OPtF03lcoM" resolve="parentPath" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3OPtF03lcpq" role="2Oq$k0">
                      <node concept="1eOMI4" id="3OPtF03lcpr" role="2Oq$k0">
                        <node concept="10QFUN" id="3OPtF03lcps" role="1eOMHV">
                          <node concept="3uibUv" id="3OPtF03lcpt" role="10QFUM">
                            <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
                          </node>
                          <node concept="37vLTw" id="3OPtF03lcpu" role="10QFUP">
                            <ref role="3cqZAo" node="3OPtF03lcoX" resolve="head" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3OPtF03lcpv" role="2OqNvi">
                        <ref role="37wK5l" node="1R$Cm9qGYlZ" resolve="path" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="3OPtF03lcpw" role="3clFbw">
                <node concept="3uibUv" id="3OPtF03lcpx" role="2ZW6by">
                  <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
                </node>
                <node concept="37vLTw" id="3OPtF03lcpy" role="2ZW6bz">
                  <ref role="3cqZAo" node="3OPtF03lcoX" resolve="head" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3OPtF03lcpz" role="3cqZAp" />
            <node concept="3clFbF" id="3OPtF03lcp$" role="3cqZAp">
              <node concept="2OqwBi" id="3OPtF03lcp_" role="3clFbG">
                <node concept="2OqwBi" id="3OPtF03lcpA" role="2Oq$k0">
                  <node concept="37vLTw" id="3OPtF03lcpB" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03lcp3" resolve="cons" />
                  </node>
                  <node concept="liA8E" id="3OPtF03lcpC" role="2OqNvi">
                    <ref role="37wK5l" node="3OPtF03lcw2" resolve="path" />
                  </node>
                </node>
                <node concept="liA8E" id="3OPtF03lcpD" role="2OqNvi">
                  <ref role="37wK5l" node="1R$Cm9qEroc" resolve="prepend" />
                  <node concept="37vLTw" id="3OPtF03lcpE" role="37wK5m">
                    <ref role="3cqZAo" node="3OPtF03lcoM" resolve="parentPath" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3OPtF03lcpF" role="3cqZAp">
              <node concept="37vLTw" id="3OPtF03lcpG" role="3cqZAk">
                <ref role="3cqZAo" node="3OPtF03lcp3" resolve="cons" />
              </node>
            </node>
            <node concept="3clFbH" id="3OPtF03lcpH" role="3cqZAp" />
          </node>
          <node concept="3eOVzh" id="3OPtF03lcpI" role="3clFbw">
            <node concept="2OqwBi" id="3OPtF03lcpJ" role="3uHU7w">
              <node concept="37vLTw" id="3OPtF03lcpK" role="2Oq$k0">
                <ref role="3cqZAo" node="3OPtF03lcoO" resolve="elements" />
              </node>
              <node concept="1Rwk04" id="3OPtF03lcpL" role="2OqNvi" />
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
                    <ref role="3uigEE" node="3OPtF03lcyJ" resolve="ListBranch.Nil" />
                    <node concept="16syzq" id="3OPtF03lcpS" role="11_B2D">
                      <ref role="16sUi3" node="3OPtF03lcq9" resolve="T" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="3OPtF03lcpT" role="33vP2m">
                    <node concept="1pGfFk" id="3OPtF03lcpU" role="2ShVmc">
                      <ref role="37wK5l" node="3OPtF03lcyL" resolve="ListBranch.Nil" />
                      <node concept="16syzq" id="3OPtF03lcpV" role="1pMfVU">
                        <ref role="16sUi3" node="3OPtF03lcq9" resolve="T" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3OPtF03lcpW" role="3cqZAp">
                <node concept="2OqwBi" id="3OPtF03lcpX" role="3clFbG">
                  <node concept="2OqwBi" id="3OPtF03lcpY" role="2Oq$k0">
                    <node concept="37vLTw" id="3OPtF03lcpZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="3OPtF03lcpQ" resolve="nil" />
                    </node>
                    <node concept="liA8E" id="3OPtF03lcq0" role="2OqNvi">
                      <ref role="37wK5l" node="3OPtF03lcyT" resolve="path" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3OPtF03lcq1" role="2OqNvi">
                    <ref role="37wK5l" node="1R$Cm9qEroc" resolve="prepend" />
                    <node concept="37vLTw" id="3OPtF03lcq2" role="37wK5m">
                      <ref role="3cqZAo" node="3OPtF03lcoM" resolve="parentPath" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3OPtF03lcq3" role="3cqZAp">
                <node concept="37vLTw" id="3OPtF03lcq4" role="3cqZAk">
                  <ref role="3cqZAo" node="3OPtF03lcpQ" resolve="nil" />
                </node>
              </node>
              <node concept="3clFbH" id="3OPtF03lcq5" role="3cqZAp" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3OPtF03lcq6" role="1B3o_S" />
      <node concept="3uibUv" id="3OPtF03lcq7" role="3clF45">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
        <node concept="16syzq" id="3OPtF03lcq8" role="11_B2D">
          <ref role="16sUi3" node="3OPtF03lcq9" resolve="T" />
        </node>
      </node>
      <node concept="16euLQ" id="3OPtF03lcq9" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="3OPtF03lcqa" role="3ztrMU">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qUE_q" id="3OPtF03lcqb" role="11_B2D">
            <node concept="3uibUv" id="3OPtF03lcqc" role="3qUE_r">
              <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcqd" role="jymVt" />
    <node concept="2YIFZL" id="3OPtF03lcqe" role="jymVt">
      <property role="TrG5h" value="prependPath" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3OPtF03lcqf" role="3clF47">
        <node concept="3clFbJ" id="3OPtF03lcqg" role="3cqZAp">
          <node concept="3clFbS" id="3OPtF03lcqh" role="3clFbx">
            <node concept="3cpWs8" id="3OPtF03lcqi" role="3cqZAp">
              <node concept="3cpWsn" id="3OPtF03lcqj" role="3cpWs9">
                <property role="TrG5h" value="cons" />
                <node concept="3uibUv" id="3OPtF03lcqk" role="1tU5fm">
                  <ref role="3uigEE" node="3OPtF03lcvH" resolve="ListBranch.Cons" />
                  <node concept="16syzq" id="3OPtF03lcql" role="11_B2D">
                    <ref role="16sUi3" node="3OPtF03lcrx" resolve="T" />
                  </node>
                </node>
                <node concept="10QFUN" id="3OPtF03lcqm" role="33vP2m">
                  <node concept="3uibUv" id="3OPtF03lcqn" role="10QFUM">
                    <ref role="3uigEE" node="3OPtF03lcvH" resolve="ListBranch.Cons" />
                    <node concept="16syzq" id="3OPtF03lcqo" role="11_B2D">
                      <ref role="16sUi3" node="3OPtF03lcrx" resolve="T" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3OPtF03lcqp" role="10QFUP">
                    <ref role="3cqZAo" node="3OPtF03lcrr" resolve="list" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3OPtF03lcqq" role="3cqZAp">
              <node concept="3cpWsn" id="3OPtF03lcqr" role="3cpWs9">
                <property role="TrG5h" value="head" />
                <node concept="16syzq" id="3OPtF03lcqs" role="1tU5fm">
                  <ref role="16sUi3" node="3OPtF03lcrx" resolve="T" />
                </node>
                <node concept="2OqwBi" id="3OPtF03lcqt" role="33vP2m">
                  <node concept="37vLTw" id="3OPtF03lcqu" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03lcqj" resolve="cons" />
                  </node>
                  <node concept="liA8E" id="3OPtF03lcqv" role="2OqNvi">
                    <ref role="37wK5l" node="3OPtF03lcy7" resolve="head" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3OPtF03lcqw" role="3cqZAp" />
            <node concept="3SKdUt" id="3OPtF03lcqx" role="3cqZAp">
              <node concept="3SKdUq" id="3OPtF03lcqy" role="3SKWNk">
                <property role="3SKdUp" value="TODO: this smells" />
              </node>
            </node>
            <node concept="3clFbJ" id="3OPtF03lcqz" role="3cqZAp">
              <node concept="3clFbS" id="3OPtF03lcq$" role="3clFbx">
                <node concept="3clFbF" id="3OPtF03lcq_" role="3cqZAp">
                  <node concept="2OqwBi" id="3OPtF03lcqA" role="3clFbG">
                    <node concept="liA8E" id="3OPtF03lcqB" role="2OqNvi">
                      <ref role="37wK5l" node="1R$Cm9qEroc" resolve="prepend" />
                      <node concept="37vLTw" id="3OPtF03lcqC" role="37wK5m">
                        <ref role="3cqZAo" node="3OPtF03lcru" resolve="parentPath" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3OPtF03lcqD" role="2Oq$k0">
                      <node concept="1eOMI4" id="3OPtF03lcqE" role="2Oq$k0">
                        <node concept="10QFUN" id="3OPtF03lcqF" role="1eOMHV">
                          <node concept="3uibUv" id="3OPtF03lcqG" role="10QFUM">
                            <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
                          </node>
                          <node concept="37vLTw" id="3OPtF03lcqH" role="10QFUP">
                            <ref role="3cqZAo" node="3OPtF03lcqr" resolve="head" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3OPtF03lcqI" role="2OqNvi">
                        <ref role="37wK5l" node="1R$Cm9qGYlZ" resolve="path" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="3OPtF03lcqJ" role="3clFbw">
                <node concept="3uibUv" id="3OPtF03lcqK" role="2ZW6by">
                  <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
                </node>
                <node concept="37vLTw" id="3OPtF03lcqL" role="2ZW6bz">
                  <ref role="3cqZAo" node="3OPtF03lcqr" resolve="head" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3OPtF03lcqM" role="3cqZAp" />
            <node concept="3clFbF" id="3OPtF03lcqN" role="3cqZAp">
              <node concept="2OqwBi" id="3OPtF03lcqO" role="3clFbG">
                <node concept="37vLTw" id="3OPtF03lcqP" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OPtF03lcqj" resolve="cons" />
                </node>
                <node concept="liA8E" id="3OPtF03lcqQ" role="2OqNvi">
                  <ref role="37wK5l" node="3OPtF03lcyr" resolve="prependPath" />
                  <node concept="37vLTw" id="3OPtF03lcqR" role="37wK5m">
                    <ref role="3cqZAo" node="3OPtF03lcru" resolve="parentPath" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3OPtF03lcqS" role="3cqZAp">
              <node concept="1rXfSq" id="3OPtF03lcqT" role="3clFbG">
                <ref role="37wK5l" node="3OPtF03lcqe" resolve="prependPath" />
                <node concept="2OqwBi" id="3OPtF03lcqU" role="37wK5m">
                  <node concept="37vLTw" id="3OPtF03lcqV" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03lcqj" resolve="cons" />
                  </node>
                  <node concept="liA8E" id="3OPtF03lcqW" role="2OqNvi">
                    <ref role="37wK5l" node="3OPtF03lcyf" resolve="tail" />
                  </node>
                </node>
                <node concept="37vLTw" id="3OPtF03lcqX" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03lcru" resolve="parentPath" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3OPtF03lcqY" role="3cqZAp" />
          </node>
          <node concept="3eNFk2" id="3OPtF03lcqZ" role="3eNLev">
            <node concept="3clFbS" id="3OPtF03lcr0" role="3eOfB_">
              <node concept="3cpWs8" id="3OPtF03lcr1" role="3cqZAp">
                <node concept="3cpWsn" id="3OPtF03lcr2" role="3cpWs9">
                  <property role="TrG5h" value="nil" />
                  <node concept="3uibUv" id="3OPtF03lcr3" role="1tU5fm">
                    <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
                    <node concept="16syzq" id="3OPtF03lcr4" role="11_B2D">
                      <ref role="16sUi3" node="3OPtF03lcrx" resolve="T" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3OPtF03lcr5" role="33vP2m">
                    <node concept="37vLTw" id="3OPtF03lcr6" role="2Oq$k0">
                      <ref role="3cqZAo" node="3OPtF03lcrr" resolve="list" />
                    </node>
                    <node concept="liA8E" id="3OPtF03lcr7" role="2OqNvi">
                      <ref role="37wK5l" node="3OPtF03lcsv" resolve="copyRecursively" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3OPtF03lcr8" role="3cqZAp">
                <node concept="2OqwBi" id="3OPtF03lcr9" role="3clFbG">
                  <node concept="37vLTw" id="3OPtF03lcra" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03lcr2" resolve="nil" />
                  </node>
                  <node concept="liA8E" id="3OPtF03lcrb" role="2OqNvi">
                    <ref role="37wK5l" node="3OPtF03lcuT" resolve="prependPath" />
                    <node concept="37vLTw" id="3OPtF03lcrc" role="37wK5m">
                      <ref role="3cqZAo" node="3OPtF03lcru" resolve="parentPath" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3OPtF03lcrd" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="3OPtF03lcre" role="3eO9$A">
              <node concept="37vLTw" id="3OPtF03lcrf" role="2Oq$k0">
                <ref role="3cqZAo" node="3OPtF03lcrr" resolve="list" />
              </node>
              <node concept="liA8E" id="3OPtF03lcrg" role="2OqNvi">
                <ref role="37wK5l" node="3OPtF03lcvc" resolve="isNil" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3OPtF03lcrh" role="3clFbw">
            <node concept="37vLTw" id="3OPtF03lcri" role="2Oq$k0">
              <ref role="3cqZAo" node="3OPtF03lcrr" resolve="list" />
            </node>
            <node concept="liA8E" id="3OPtF03lcrj" role="2OqNvi">
              <ref role="37wK5l" node="3OPtF03lcv5" resolve="isCons" />
            </node>
          </node>
          <node concept="9aQIb" id="3OPtF03lcrk" role="9aQIa">
            <node concept="3clFbS" id="3OPtF03lcrl" role="9aQI4">
              <node concept="3SKdUt" id="3OPtF03lcrm" role="3cqZAp">
                <node concept="3SKdUq" id="3OPtF03lcrn" role="3SKWNk">
                  <property role="3SKdUp" value="FIXME implement me" />
                </node>
              </node>
              <node concept="YS8fn" id="3OPtF03lcro" role="3cqZAp">
                <node concept="2ShNRf" id="3OPtF03lcrp" role="YScLw">
                  <node concept="1pGfFk" id="3OPtF03lcrq" role="2ShVmc">
                    <ref role="37wK5l" to="e2lb:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3OPtF03lcrr" role="3clF46">
        <property role="TrG5h" value="list" />
        <node concept="3uibUv" id="3OPtF03lcrs" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
          <node concept="16syzq" id="3OPtF03lcrt" role="11_B2D">
            <ref role="16sUi3" node="3OPtF03lcrx" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3OPtF03lcru" role="3clF46">
        <property role="TrG5h" value="parentPath" />
        <node concept="3uibUv" id="3OPtF03lcrv" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
      <node concept="3cqZAl" id="3OPtF03lcrw" role="3clF45" />
      <node concept="16euLQ" id="3OPtF03lcrx" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="3OPtF03lcry" role="3ztrMU">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qUE_q" id="3OPtF03lcrz" role="11_B2D">
            <node concept="3uibUv" id="3OPtF03lcr$" role="3qUE_r">
              <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3OPtF03lcr_" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3OPtF03lcrA" role="jymVt" />
    <node concept="3clFbW" id="3OPtF03lcrB" role="jymVt">
      <node concept="3cqZAl" id="3OPtF03lcrC" role="3clF45" />
      <node concept="3clFbS" id="3OPtF03lcrD" role="3clF47">
        <node concept="XkiVB" id="3OPtF03lcrE" role="3cqZAp">
          <ref role="37wK5l" node="1msb0mq9JZ8" resolve="Branch" />
          <node concept="37vLTw" id="3OPtF03lcrF" role="37wK5m">
            <ref role="3cqZAo" node="3OPtF03lcrO" resolve="symbolPath" />
          </node>
          <node concept="10QFUN" id="3OPtF03lcrG" role="37wK5m">
            <node concept="10Q1$e" id="3OPtF03lcrH" role="10QFUM">
              <node concept="16syzq" id="3OPtF03lcrI" role="10Q1$1">
                <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
              </node>
            </node>
            <node concept="2ShNRf" id="3OPtF03lcrJ" role="10QFUP">
              <node concept="3g6Rrh" id="3OPtF03lcrK" role="2ShVmc">
                <node concept="37vLTw" id="3OPtF03lcrL" role="3g7hyw">
                  <ref role="3cqZAo" node="3OPtF03lcrQ" resolve="tail" />
                </node>
                <node concept="3uibUv" id="3OPtF03lcrM" role="3g7fb8">
                  <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3OPtF03lcrN" role="1B3o_S" />
      <node concept="37vLTG" id="3OPtF03lcrO" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="3uibUv" id="3OPtF03lcrP" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="3OPtF03lcrQ" role="3clF46">
        <property role="TrG5h" value="tail" />
        <node concept="3uibUv" id="3OPtF03lcrR" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
          <node concept="16syzq" id="3OPtF03lcrS" role="11_B2D">
            <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcrT" role="jymVt" />
    <node concept="3clFbW" id="3OPtF03lcrU" role="jymVt">
      <node concept="3cqZAl" id="3OPtF03lcrV" role="3clF45" />
      <node concept="3clFbS" id="3OPtF03lcrW" role="3clF47">
        <node concept="XkiVB" id="3OPtF03lcrX" role="3cqZAp">
          <ref role="37wK5l" node="1msb0mq9JZ8" resolve="Branch" />
          <node concept="37vLTw" id="3OPtF03lcrY" role="37wK5m">
            <ref role="3cqZAo" node="3OPtF03lcs8" resolve="symbolPath" />
          </node>
          <node concept="10QFUN" id="3OPtF03lcrZ" role="37wK5m">
            <node concept="10Q1$e" id="3OPtF03lcs0" role="10QFUM">
              <node concept="16syzq" id="3OPtF03lcs1" role="10Q1$1">
                <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
              </node>
            </node>
            <node concept="2ShNRf" id="3OPtF03lcs2" role="10QFUP">
              <node concept="3g6Rrh" id="3OPtF03lcs3" role="2ShVmc">
                <node concept="37vLTw" id="3OPtF03lcs4" role="3g7hyw">
                  <ref role="3cqZAo" node="3OPtF03lcsa" resolve="value" />
                </node>
                <node concept="37vLTw" id="3OPtF03lcs5" role="3g7hyw">
                  <ref role="3cqZAo" node="3OPtF03lcsc" resolve="tail" />
                </node>
                <node concept="3uibUv" id="3OPtF03lcs6" role="3g7fb8">
                  <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3OPtF03lcs7" role="1B3o_S" />
      <node concept="37vLTG" id="3OPtF03lcs8" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="3uibUv" id="3OPtF03lcs9" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="3OPtF03lcsa" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="3OPtF03lcsb" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
        </node>
      </node>
      <node concept="37vLTG" id="3OPtF03lcsc" role="3clF46">
        <property role="TrG5h" value="tail" />
        <node concept="3uibUv" id="3OPtF03lcsd" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
          <node concept="16syzq" id="3OPtF03lcse" role="11_B2D">
            <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcsf" role="jymVt" />
    <node concept="3clFbW" id="3OPtF03lcsg" role="jymVt">
      <node concept="3cqZAl" id="3OPtF03lcsh" role="3clF45" />
      <node concept="3clFbS" id="3OPtF03lcsi" role="3clF47">
        <node concept="XkiVB" id="3OPtF03lcsj" role="3cqZAp">
          <ref role="37wK5l" node="1msb0mq9JZ8" resolve="Branch" />
          <node concept="37vLTw" id="3OPtF03lcsk" role="37wK5m">
            <ref role="3cqZAo" node="3OPtF03lcss" resolve="symbolPath" />
          </node>
          <node concept="10QFUN" id="3OPtF03lcsl" role="37wK5m">
            <node concept="10Q1$e" id="3OPtF03lcsm" role="10QFUM">
              <node concept="16syzq" id="3OPtF03lcsn" role="10Q1$1">
                <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
              </node>
            </node>
            <node concept="2ShNRf" id="3OPtF03lcso" role="10QFUP">
              <node concept="3g6Rrh" id="3OPtF03lcsp" role="2ShVmc">
                <node concept="3uibUv" id="3OPtF03lcsq" role="3g7fb8">
                  <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3OPtF03lcsr" role="1B3o_S" />
      <node concept="37vLTG" id="3OPtF03lcss" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="3uibUv" id="3OPtF03lcst" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcsu" role="jymVt" />
    <node concept="3clFb_" id="3OPtF03lcsv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="copyRecursively" />
      <node concept="3uibUv" id="3OPtF03lcsw" role="3clF45">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
        <node concept="16syzq" id="3OPtF03lcsx" role="11_B2D">
          <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3OPtF03lcsy" role="1B3o_S" />
      <node concept="2AHcQZ" id="3OPtF03lcsz" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3OPtF03lcs$" role="3clF47">
        <node concept="3cpWs8" id="3OPtF03lcs_" role="3cqZAp">
          <node concept="3cpWsn" id="3OPtF03lcsA" role="3cpWs9">
            <property role="TrG5h" value="copy" />
            <node concept="3uibUv" id="3OPtF03lcsB" role="1tU5fm">
              <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
              <node concept="16syzq" id="3OPtF03lcsC" role="11_B2D">
                <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
              </node>
            </node>
            <node concept="2OqwBi" id="3OPtF03lcsD" role="33vP2m">
              <node concept="1eOMI4" id="3OPtF03lcsE" role="2Oq$k0">
                <node concept="10QFUN" id="3OPtF03lcsF" role="1eOMHV">
                  <node concept="3uibUv" id="3OPtF03lcsG" role="10QFUM">
                    <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
                    <node concept="16syzq" id="3OPtF03lcsH" role="11_B2D">
                      <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="3OPtF03lcsI" role="10QFUP">
                    <ref role="37wK5l" node="6$jH9oLbK0n" resolve="childAt" />
                    <node concept="3cmrfG" id="3OPtF03lcsJ" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3OPtF03lcsK" role="2OqNvi">
                <ref role="37wK5l" node="3OPtF03lcsv" resolve="copyRecursively" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3OPtF03lcsL" role="3cqZAp">
          <node concept="3cpWsn" id="3OPtF03lcsM" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="3uibUv" id="3OPtF03lcsN" role="1tU5fm">
              <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
            </node>
            <node concept="2YIFZM" id="3OPtF03lcsO" role="33vP2m">
              <ref role="37wK5l" node="1R$Cm9qEBDL" resolve="create" />
              <ref role="1Pybhc" node="1R$Cm9qEqLU" resolve="Path" />
              <node concept="2OqwBi" id="3OPtF03lcsP" role="37wK5m">
                <node concept="1rXfSq" id="3OPtF03lcsQ" role="2Oq$k0">
                  <ref role="37wK5l" node="3OPtF03lcuL" resolve="path" />
                </node>
                <node concept="liA8E" id="3OPtF03lcsR" role="2OqNvi">
                  <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF03lcsS" role="3cqZAp">
          <node concept="1rXfSq" id="3OPtF03lcsT" role="3clFbG">
            <ref role="37wK5l" node="3OPtF03lcqe" resolve="prependPath" />
            <node concept="37vLTw" id="3OPtF03lcsU" role="37wK5m">
              <ref role="3cqZAo" node="3OPtF03lcsA" resolve="copy" />
            </node>
            <node concept="37vLTw" id="3OPtF03lcsV" role="37wK5m">
              <ref role="3cqZAo" node="3OPtF03lcsM" resolve="path" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF03lcsW" role="3cqZAp">
          <node concept="2ShNRf" id="3OPtF03lcsX" role="3clFbG">
            <node concept="1pGfFk" id="3OPtF03lcsY" role="2ShVmc">
              <ref role="37wK5l" node="3OPtF03lcrB" resolve="ListBranch" />
              <node concept="37vLTw" id="3OPtF03lcsZ" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF03lcsM" resolve="path" />
              </node>
              <node concept="37vLTw" id="3OPtF03lct0" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF03lcsA" resolve="copy" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lct1" role="jymVt" />
    <node concept="3clFb_" id="3OPtF03lct2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="mapRecursively" />
      <node concept="37vLTG" id="3OPtF03lct3" role="3clF46">
        <property role="TrG5h" value="mapper" />
        <node concept="3uibUv" id="3OPtF03lct4" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF03lct5" role="3clF45">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
        <node concept="16syzq" id="3OPtF03lct6" role="11_B2D">
          <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3OPtF03lct7" role="1B3o_S" />
      <node concept="2AHcQZ" id="3OPtF03lct8" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3OPtF03lct9" role="3clF47">
        <node concept="3cpWs8" id="3OPtF03lcta" role="3cqZAp">
          <node concept="3cpWsn" id="3OPtF03lctb" role="3cpWs9">
            <property role="TrG5h" value="map" />
            <node concept="3uibUv" id="3OPtF03lctc" role="1tU5fm">
              <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
              <node concept="16syzq" id="3OPtF03lctd" role="11_B2D">
                <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
              </node>
            </node>
            <node concept="10QFUN" id="5s497VqNEtb" role="33vP2m">
              <node concept="3uibUv" id="5s497VqNEt0" role="10QFUM">
                <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
                <node concept="16syzq" id="5s497VqNEt1" role="11_B2D">
                  <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="5s497VqNEt2" role="10QFUP">
                <node concept="37vLTw" id="5s497VqNEt3" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OPtF03lct3" resolve="mapper" />
                </node>
                <node concept="liA8E" id="5s497VqNEt4" role="2OqNvi">
                  <ref role="37wK5l" node="3OPtF02TgQt" resolve="map" />
                  <node concept="1eOMI4" id="5s497VqNEt5" role="37wK5m">
                    <node concept="10QFUN" id="5s497VqNEt6" role="1eOMHV">
                      <node concept="3uibUv" id="5s497VqNEt7" role="10QFUM">
                        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
                        <node concept="16syzq" id="5s497VqNEt8" role="11_B2D">
                          <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="5s497VqNEt9" role="10QFUP">
                        <ref role="37wK5l" node="6$jH9oLbK0n" resolve="childAt" />
                        <node concept="3cmrfG" id="5s497VqNEta" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3OPtF03lctn" role="3cqZAp">
          <node concept="3cpWsn" id="3OPtF03lcto" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="3uibUv" id="3OPtF03lctp" role="1tU5fm">
              <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
            </node>
            <node concept="2YIFZM" id="3OPtF03lctq" role="33vP2m">
              <ref role="37wK5l" node="1R$Cm9qEBDL" resolve="create" />
              <ref role="1Pybhc" node="1R$Cm9qEqLU" resolve="Path" />
              <node concept="2OqwBi" id="3OPtF03lctr" role="37wK5m">
                <node concept="1rXfSq" id="3OPtF03lcts" role="2Oq$k0">
                  <ref role="37wK5l" node="3OPtF03lcuL" resolve="path" />
                </node>
                <node concept="liA8E" id="3OPtF03lctt" role="2OqNvi">
                  <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF03lctu" role="3cqZAp">
          <node concept="1rXfSq" id="3OPtF03lctv" role="3clFbG">
            <ref role="37wK5l" node="3OPtF03lcqe" resolve="prependPath" />
            <node concept="37vLTw" id="3OPtF03lctw" role="37wK5m">
              <ref role="3cqZAo" node="3OPtF03lctb" resolve="map" />
            </node>
            <node concept="37vLTw" id="3OPtF03lctx" role="37wK5m">
              <ref role="3cqZAo" node="3OPtF03lcto" resolve="path" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF03lcty" role="3cqZAp">
          <node concept="2ShNRf" id="3OPtF03lctz" role="3clFbG">
            <node concept="1pGfFk" id="3OPtF03lct$" role="2ShVmc">
              <ref role="37wK5l" node="3OPtF03lcrB" resolve="ListBranch" />
              <node concept="37vLTw" id="3OPtF03lct_" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF03lcto" resolve="path" />
              </node>
              <node concept="37vLTw" id="3OPtF03lctA" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF03lctb" resolve="map" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lctB" role="jymVt" />
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
              <ref role="3uigEE" to="e2lb:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="2q_78a92HDe" role="33vP2m">
              <node concept="1pGfFk" id="2q_78a92HDf" role="2ShVmc">
                <ref role="37wK5l" to="e2lb:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2q_78a92HDg" role="3cqZAp">
          <node concept="2OqwBi" id="2q_78a92HDh" role="3clFbG">
            <node concept="2OqwBi" id="2q_78a92HDi" role="2Oq$k0">
              <node concept="2OqwBi" id="2q_78a92K68" role="2Oq$k0">
                <node concept="37vLTw" id="2q_78a92HDj" role="2Oq$k0">
                  <ref role="3cqZAo" node="2q_78a92HDc" resolve="sb" />
                </node>
                <node concept="liA8E" id="2q_78a92LKn" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="Xl_RD" id="2q_78a92N88" role="37wK5m">
                    <property role="Xl_RC" value="\&quot;" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2q_78a92HDk" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="2YIFZM" id="2q_78a92HDl" role="37wK5m">
                  <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                  <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                  <node concept="2OqwBi" id="2q_78a92HDm" role="37wK5m">
                    <node concept="1rXfSq" id="2q_78a92HDn" role="2Oq$k0">
                      <ref role="37wK5l" node="3OPtF03lcuL" resolve="path" />
                    </node>
                    <node concept="liA8E" id="2q_78a92HDo" role="2OqNvi">
                      <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2q_78a92HDp" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="Xl_RD" id="2q_78a92HDq" role="37wK5m">
                <property role="Xl_RC" value="\&quot;=[" />
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
                    <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                    <node concept="37vLTw" id="2q_78a92HDA" role="37wK5m">
                      <ref role="3cqZAo" node="2q_78a92HDs" resolve="sep" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2q_78a92HDB" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="2OqwBi" id="2q_78a92HDC" role="37wK5m">
                    <node concept="37vLTw" id="2q_78a92HDD" role="2Oq$k0">
                      <ref role="3cqZAo" node="2q_78a92HDJ" resolve="br" />
                    </node>
                    <node concept="liA8E" id="2q_78a92HDE" role="2OqNvi">
                      <ref role="37wK5l" to="e2lb:~Object.toString():java.lang.String" resolve="toString" />
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
            <node concept="16syzq" id="2q_78a93bOH" role="1tU5fm">
              <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
            </node>
          </node>
          <node concept="1rXfSq" id="2q_78a92HDM" role="1DdaDG">
            <ref role="37wK5l" node="5JQSuNswjSg" resolve="children" />
          </node>
        </node>
        <node concept="3clFbF" id="2q_78a92HDN" role="3cqZAp">
          <node concept="2OqwBi" id="2q_78a92HDO" role="3clFbG">
            <node concept="2OqwBi" id="2q_78a92HDP" role="2Oq$k0">
              <node concept="37vLTw" id="2q_78a92HDQ" role="2Oq$k0">
                <ref role="3cqZAo" node="2q_78a92HDc" resolve="sb" />
              </node>
              <node concept="liA8E" id="2q_78a92HDR" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="Xl_RD" id="2q_78a92HDS" role="37wK5m">
                  <property role="Xl_RC" value="]" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2q_78a92HDT" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3OPtF03lcu8" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcu9" role="jymVt" />
    <node concept="3clFb_" id="3OPtF03lcua" role="jymVt">
      <property role="TrG5h" value="toList" />
      <node concept="37vLTG" id="3OPtF03lcub" role="3clF46">
        <property role="TrG5h" value="list" />
        <node concept="3uibUv" id="3OPtF03lcuc" role="1tU5fm">
          <ref role="3uigEE" to="k7g3:~List" resolve="List" />
          <node concept="16syzq" id="3OPtF03lcud" role="11_B2D">
            <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF03lcue" role="3clF45">
        <ref role="3uigEE" to="k7g3:~List" resolve="List" />
        <node concept="16syzq" id="3OPtF03lcuf" role="11_B2D">
          <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3OPtF03lcug" role="1B3o_S" />
      <node concept="3clFbS" id="3OPtF03lcuh" role="3clF47">
        <node concept="3clFbF" id="3OPtF03lcui" role="3cqZAp">
          <node concept="2OqwBi" id="3OPtF03lcuj" role="3clFbG">
            <node concept="1rXfSq" id="3OPtF03lcuk" role="2Oq$k0">
              <ref role="37wK5l" node="3OPtF03lcvw" resolve="head" />
            </node>
            <node concept="liA8E" id="3OPtF03lcul" role="2OqNvi">
              <ref role="37wK5l" node="3OPtF03lcvj" resolve="appendTo" />
              <node concept="37vLTw" id="3OPtF03lcum" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF03lcub" resolve="list" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF03lcun" role="3cqZAp">
          <node concept="37vLTw" id="3OPtF03lcuo" role="3clFbG">
            <ref role="3cqZAo" node="3OPtF03lcub" resolve="list" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcup" role="jymVt" />
    <node concept="3clFb_" id="3OPtF03lcuq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="acceptVisitor" />
      <node concept="37vLTG" id="3OPtF03lcur" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="3OPtF03lcus" role="1tU5fm">
          <ref role="3uigEE" node="104EUzFOARB" resolve="ITreePart.Visitor" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF03lcut" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcuK" role="jymVt" />
    <node concept="3clFb_" id="3OPtF03lcuL" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="path" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3OPtF03lcuM" role="1B3o_S" />
      <node concept="3uibUv" id="3OPtF03lcuN" role="3clF45">
        <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
      </node>
      <node concept="3clFbS" id="3OPtF03lcuO" role="3clF47">
        <node concept="3clFbF" id="3OPtF03lcuP" role="3cqZAp">
          <node concept="3nyPlj" id="3OPtF03lcuQ" role="3clFbG">
            <ref role="37wK5l" node="1R$Cm9qGYlZ" resolve="path" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3OPtF03lcuR" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcuS" role="jymVt" />
    <node concept="3clFb_" id="3OPtF03lcuT" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="prependPath" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3OPtF03lcuU" role="3clF47">
        <node concept="3clFbF" id="3OPtF03lcuV" role="3cqZAp">
          <node concept="2OqwBi" id="3OPtF03lcuW" role="3clFbG">
            <node concept="1rXfSq" id="3OPtF03lcuX" role="2Oq$k0">
              <ref role="37wK5l" node="3OPtF03lcuL" resolve="path" />
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
    <node concept="3clFb_" id="3OPtF03lcv5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isCons" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3OPtF03lcv6" role="3clF47">
        <node concept="3clFbF" id="3OPtF03lcv7" role="3cqZAp">
          <node concept="3clFbT" id="3OPtF03lcv8" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3OPtF03lcv9" role="1B3o_S" />
      <node concept="10P_77" id="3OPtF03lcva" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3OPtF03lcvb" role="jymVt" />
    <node concept="3clFb_" id="3OPtF03lcvc" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isNil" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3OPtF03lcvd" role="3clF47">
        <node concept="3clFbF" id="3OPtF03lcve" role="3cqZAp">
          <node concept="3clFbT" id="3OPtF03lcvf" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3OPtF03lcvg" role="1B3o_S" />
      <node concept="10P_77" id="3OPtF03lcvh" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3OPtF03lcvi" role="jymVt" />
    <node concept="3clFb_" id="3OPtF03lcvj" role="jymVt">
      <property role="TrG5h" value="appendTo" />
      <node concept="37vLTG" id="3OPtF03lcvk" role="3clF46">
        <property role="TrG5h" value="list" />
        <node concept="3uibUv" id="3OPtF03lcvl" role="1tU5fm">
          <ref role="3uigEE" to="k7g3:~List" resolve="List" />
          <node concept="16syzq" id="3OPtF03lcvm" role="11_B2D">
            <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3OPtF03lcvn" role="3clF45" />
      <node concept="3Tmbuc" id="3OPtF03lcvo" role="1B3o_S" />
      <node concept="3clFbS" id="3OPtF03lcvp" role="3clF47">
        <node concept="3clFbF" id="3OPtF03lcvq" role="3cqZAp">
          <node concept="2OqwBi" id="3OPtF03lcvr" role="3clFbG">
            <node concept="1rXfSq" id="3OPtF03lcvs" role="2Oq$k0">
              <ref role="37wK5l" node="3OPtF03lcvw" resolve="head" />
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
      <property role="TrG5h" value="head" />
      <node concept="3uibUv" id="3OPtF03lcvx" role="3clF45">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
        <node concept="16syzq" id="3OPtF03lcvy" role="11_B2D">
          <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3OPtF03lcvz" role="1B3o_S" />
      <node concept="3clFbS" id="3OPtF03lcv$" role="3clF47">
        <node concept="3clFbF" id="3OPtF03lcv_" role="3cqZAp">
          <node concept="1eOMI4" id="3OPtF03lcvA" role="3clFbG">
            <node concept="10QFUN" id="3OPtF03lcvB" role="1eOMHV">
              <node concept="3uibUv" id="3OPtF03lcvC" role="10QFUM">
                <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
                <node concept="16syzq" id="3OPtF03lcvD" role="11_B2D">
                  <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
                </node>
              </node>
              <node concept="1rXfSq" id="3OPtF03lcvE" role="10QFUP">
                <ref role="37wK5l" node="6$jH9oLbK0n" resolve="childAt" />
                <node concept="3cmrfG" id="3OPtF03lcvF" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
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
      <node concept="2tJIrI" id="3OPtF03lcvI" role="jymVt" />
      <node concept="3clFbW" id="3OPtF03lcvJ" role="jymVt">
        <node concept="37vLTG" id="3OPtF03lcvK" role="3clF46">
          <property role="TrG5h" value="head" />
          <node concept="3uibUv" id="3OPtF03lcvL" role="1tU5fm">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF03lcvM" role="3clF46">
          <property role="TrG5h" value="headIdx" />
          <node concept="10Oyi0" id="3OPtF03lcvN" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="3OPtF03lcvO" role="3clF46">
          <property role="TrG5h" value="tail" />
          <node concept="3uibUv" id="3OPtF03lcvP" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
            <node concept="16syzq" id="3OPtF03lcvQ" role="11_B2D">
              <ref role="16sUi3" node="3OPtF03lcyE" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="3OPtF03lcvR" role="3clF45" />
        <node concept="3clFbS" id="3OPtF03lcvS" role="3clF47">
          <node concept="XkiVB" id="3OPtF03lcvT" role="3cqZAp">
            <ref role="37wK5l" node="3OPtF03lcrU" resolve="ListBranch" />
            <node concept="2YIFZM" id="3OPtF03lcvU" role="37wK5m">
              <ref role="37wK5l" node="1R$Cm9qEBDL" resolve="create" />
              <ref role="1Pybhc" node="1R$Cm9qEqLU" resolve="Path" />
              <node concept="2YIFZM" id="3OPtF03lcvV" role="37wK5m">
                <ref role="37wK5l" node="3OPtF03lc$d" resolve="wrap" />
                <ref role="1Pybhc" node="3OPtF03lc$b" resolve="ListBranch.SymbolWrapper" />
                <node concept="Rm8GO" id="3OPtF03lcvW" role="37wK5m">
                  <ref role="Rm8GQ" node="3OPtF03lc$8" resolve="CONS" />
                  <ref role="1Px2BO" node="3OPtF03lc$6" resolve="ListBranch.Symbols" />
                </node>
                <node concept="37vLTw" id="3OPtF03lcvX" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03lcvM" resolve="headIdx" />
                </node>
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
        <node concept="3Tm1VV" id="3OPtF03lcw0" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="3OPtF03lcw1" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lcw2" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="path" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3OPtF03lcw3" role="1B3o_S" />
        <node concept="3uibUv" id="3OPtF03lcw4" role="3clF45">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
        <node concept="3clFbS" id="3OPtF03lcw5" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lcw6" role="3cqZAp">
            <node concept="3nyPlj" id="3OPtF03lcw7" role="3clFbG">
              <ref role="37wK5l" node="3OPtF03lcuL" resolve="path" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03lcw8" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lcw9" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lcwa" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="copyRecursively" />
        <node concept="3uibUv" id="3OPtF03lcwb" role="3clF45">
          <ref role="3uigEE" node="3OPtF03lcvH" resolve="ListBranch.Cons" />
          <node concept="16syzq" id="3OPtF03lcwc" role="11_B2D">
            <ref role="16sUi3" node="3OPtF03lcyE" resolve="T" />
          </node>
        </node>
        <node concept="3Tm1VV" id="3OPtF03lcwd" role="1B3o_S" />
        <node concept="2AHcQZ" id="3OPtF03lcwe" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="3OPtF03lcwf" role="3clF47">
          <node concept="3cpWs8" id="3OPtF03lcwg" role="3cqZAp">
            <node concept="3cpWsn" id="3OPtF03lcwh" role="3cpWs9">
              <property role="TrG5h" value="headCopy" />
              <node concept="3uibUv" id="3OPtF03lcwi" role="1tU5fm">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                <node concept="3qUE_q" id="3OPtF03lcwj" role="11_B2D">
                  <node concept="3uibUv" id="3OPtF03lcwk" role="3qUE_r">
                    <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3OPtF03lcwl" role="33vP2m">
                <node concept="1rXfSq" id="3OPtF03lcwm" role="2Oq$k0">
                  <ref role="37wK5l" node="3OPtF03lcy7" resolve="head" />
                </node>
                <node concept="liA8E" id="3OPtF03lcwn" role="2OqNvi">
                  <ref role="37wK5l" node="1bm7a6EXvNI" resolve="copyRecursively" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3OPtF03lcwo" role="3cqZAp">
            <node concept="3cpWsn" id="3OPtF03lcwp" role="3cpWs9">
              <property role="TrG5h" value="tailCopy" />
              <node concept="3uibUv" id="3OPtF03lcwq" role="1tU5fm">
                <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
                <node concept="16syzq" id="3OPtF03lcwr" role="11_B2D">
                  <ref role="16sUi3" node="3OPtF03lcyE" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="3OPtF03lcws" role="33vP2m">
                <node concept="1rXfSq" id="3OPtF03lcwt" role="2Oq$k0">
                  <ref role="37wK5l" node="3OPtF03lcyf" resolve="tail" />
                </node>
                <node concept="liA8E" id="3OPtF03lcwu" role="2OqNvi">
                  <ref role="37wK5l" node="3OPtF03lcsv" resolve="copyRecursively" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3OPtF03lcwv" role="3cqZAp">
            <node concept="3cpWsn" id="3OPtF03lcww" role="3cpWs9">
              <property role="TrG5h" value="idx" />
              <node concept="10Oyi0" id="3OPtF03lcwx" role="1tU5fm" />
              <node concept="2OqwBi" id="3OPtF03lcwy" role="33vP2m">
                <node concept="1eOMI4" id="3OPtF03lcwz" role="2Oq$k0">
                  <node concept="10QFUN" id="3OPtF03lcw$" role="1eOMHV">
                    <node concept="3uibUv" id="3OPtF03lcw_" role="10QFUM">
                      <ref role="3uigEE" node="3OPtF03lc$b" resolve="ListBranch.SymbolWrapper" />
                    </node>
                    <node concept="2OqwBi" id="3OPtF03lcwA" role="10QFUP">
                      <node concept="1rXfSq" id="3OPtF03lcwB" role="2Oq$k0">
                        <ref role="37wK5l" node="3OPtF03lcw2" resolve="path" />
                      </node>
                      <node concept="liA8E" id="3OPtF03lcwC" role="2OqNvi">
                        <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="3OPtF03lcwD" role="2OqNvi">
                  <ref role="2Oxat5" node="3OPtF03lc_S" resolve="idx" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3OPtF03lcwE" role="3cqZAp">
            <node concept="2ShNRf" id="3OPtF03lcwF" role="3clFbG">
              <node concept="1pGfFk" id="3OPtF03lcwG" role="2ShVmc">
                <ref role="37wK5l" node="3OPtF03lcvJ" resolve="ListBranch.Cons" />
                <node concept="37vLTw" id="3OPtF03lcwH" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03lcwh" resolve="headCopy" />
                </node>
                <node concept="37vLTw" id="3OPtF03lcwI" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03lcww" resolve="idx" />
                </node>
                <node concept="37vLTw" id="3OPtF03lcwJ" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03lcwp" resolve="tailCopy" />
                </node>
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
            <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
          </node>
        </node>
        <node concept="3Tm1VV" id="3OPtF03lcwO" role="1B3o_S" />
        <node concept="2AHcQZ" id="3OPtF03lcwP" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="3OPtF03lcwQ" role="3clF47">
          <node concept="3cpWs8" id="3OPtF03lcwR" role="3cqZAp">
            <node concept="3cpWsn" id="3OPtF03lcwS" role="3cpWs9">
              <property role="TrG5h" value="headMap" />
              <node concept="2OqwBi" id="3OPtF03lcwT" role="33vP2m">
                <node concept="37vLTw" id="3OPtF03lcwU" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OPtF03lcwM" resolve="mapper" />
                </node>
                <node concept="liA8E" id="3OPtF03lcwV" role="2OqNvi">
                  <ref role="37wK5l" node="3OPtF02TgQt" resolve="map" />
                  <node concept="1rXfSq" id="3OPtF03lcwW" role="37wK5m">
                    <ref role="37wK5l" node="3OPtF03lcy7" resolve="head" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="3OPtF03lcwX" role="1tU5fm">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                <node concept="3qUE_q" id="3OPtF03lcwY" role="11_B2D">
                  <node concept="3uibUv" id="3OPtF03lcwZ" role="3qUE_r">
                    <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3OPtF03lcx0" role="3cqZAp">
            <node concept="3cpWsn" id="3OPtF03lcx1" role="3cpWs9">
              <property role="TrG5h" value="tailMap" />
              <node concept="3uibUv" id="3OPtF03lcx2" role="1tU5fm">
                <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
                <node concept="16syzq" id="3OPtF03lcx3" role="11_B2D">
                  <ref role="16sUi3" node="3OPtF03lcyE" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="3OPtF03lcx4" role="33vP2m">
                <node concept="1rXfSq" id="3OPtF03lcx5" role="2Oq$k0">
                  <ref role="37wK5l" node="3OPtF03lcyf" resolve="tail" />
                </node>
                <node concept="liA8E" id="3OPtF03lcx6" role="2OqNvi">
                  <ref role="37wK5l" node="3OPtF03lct2" resolve="mapRecursively" />
                  <node concept="37vLTw" id="3OPtF03lcx7" role="37wK5m">
                    <ref role="3cqZAo" node="3OPtF03lcwM" resolve="mapper" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3OPtF03lcx8" role="3cqZAp">
            <node concept="3cpWsn" id="3OPtF03lcx9" role="3cpWs9">
              <property role="TrG5h" value="idx" />
              <node concept="10Oyi0" id="3OPtF03lcxa" role="1tU5fm" />
              <node concept="2OqwBi" id="3OPtF03lcxb" role="33vP2m">
                <node concept="1eOMI4" id="3OPtF03lcxc" role="2Oq$k0">
                  <node concept="10QFUN" id="3OPtF03lcxd" role="1eOMHV">
                    <node concept="3uibUv" id="3OPtF03lcxe" role="10QFUM">
                      <ref role="3uigEE" node="3OPtF03lc$b" resolve="ListBranch.SymbolWrapper" />
                    </node>
                    <node concept="2OqwBi" id="3OPtF03lcxf" role="10QFUP">
                      <node concept="1rXfSq" id="3OPtF03lcxg" role="2Oq$k0">
                        <ref role="37wK5l" node="3OPtF03lcw2" resolve="path" />
                      </node>
                      <node concept="liA8E" id="3OPtF03lcxh" role="2OqNvi">
                        <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="3OPtF03lcxi" role="2OqNvi">
                  <ref role="2Oxat5" node="3OPtF03lc_S" resolve="idx" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3OPtF03lcxj" role="3cqZAp">
            <node concept="2ShNRf" id="3OPtF03lcxk" role="3clFbG">
              <node concept="1pGfFk" id="3OPtF03lcxl" role="2ShVmc">
                <ref role="37wK5l" node="3OPtF03lcvJ" resolve="ListBranch.Cons" />
                <node concept="37vLTw" id="3OPtF03lcxm" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03lcwS" resolve="headMap" />
                </node>
                <node concept="37vLTw" id="3OPtF03lcxn" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03lcx9" resolve="idx" />
                </node>
                <node concept="37vLTw" id="3OPtF03lcxo" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03lcx1" resolve="tailMap" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="3OPtF03lcxp" role="3clF45">
          <ref role="3uigEE" node="3OPtF03lcvH" resolve="ListBranch.Cons" />
          <node concept="16syzq" id="3OPtF03lcxq" role="11_B2D">
            <ref role="16sUi3" node="3OPtF03lcyE" resolve="T" />
          </node>
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
                <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                <node concept="1rXfSq" id="3OPtF03lcxz" role="37wK5m">
                  <ref role="37wK5l" node="6$jH9oLbK0n" resolve="childAt" />
                  <node concept="3cmrfG" id="3OPtF03lcx$" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs3" id="3OPtF03lcx_" role="3uHU7B">
                <node concept="2YIFZM" id="3OPtF03lcxA" role="3uHU7B">
                  <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                  <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                  <node concept="1rXfSq" id="3OPtF03lcxB" role="37wK5m">
                    <ref role="37wK5l" node="6$jH9oLbK0n" resolve="childAt" />
                    <node concept="3cmrfG" id="3OPtF03lcxC" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="3OPtF03lcxD" role="3uHU7w">
                  <property role="Xl_RC" value=":" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03lcxE" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lcxF" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lcxG" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isCons" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3Tmbuc" id="3OPtF03lcxH" role="1B3o_S" />
        <node concept="10P_77" id="3OPtF03lcxI" role="3clF45" />
        <node concept="3clFbS" id="3OPtF03lcxJ" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lcxK" role="3cqZAp">
            <node concept="3clFbT" id="3OPtF03lcxL" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03lcxM" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lcxN" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lcxO" role="jymVt">
        <property role="TrG5h" value="appendTo" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="3OPtF03lcxP" role="3clF46">
          <property role="TrG5h" value="list" />
          <node concept="3uibUv" id="3OPtF03lcxQ" role="1tU5fm">
            <ref role="3uigEE" to="k7g3:~List" resolve="List" />
            <node concept="16syzq" id="3OPtF03lcxR" role="11_B2D">
              <ref role="16sUi3" node="3OPtF03lcyE" resolve="T" />
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
                <ref role="37wK5l" to="k7g3:~List.add(java.lang.Object):boolean" resolve="add" />
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
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lcy6" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lcy7" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="head" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3clFbS" id="3OPtF03lcy8" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lcy9" role="3cqZAp">
            <node concept="1rXfSq" id="3OPtF03lcya" role="3clFbG">
              <ref role="37wK5l" node="6$jH9oLbK0n" resolve="childAt" />
              <node concept="3cmrfG" id="3OPtF03lcyb" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="3OPtF03lcyc" role="1B3o_S" />
        <node concept="16syzq" id="3OPtF03lcyd" role="3clF45">
          <ref role="16sUi3" node="3OPtF03lcyE" resolve="T" />
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
                <ref role="37wK5l" node="6$jH9oLbK0n" resolve="childAt" />
                <node concept="3cmrfG" id="3OPtF03lcyk" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="3uibUv" id="3OPtF03lcyl" role="10QFUM">
                <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
                <node concept="16syzq" id="3OPtF03lcym" role="11_B2D">
                  <ref role="16sUi3" node="3OPtF03lcyE" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="3OPtF03lcyn" role="1B3o_S" />
        <node concept="3uibUv" id="3OPtF03lcyo" role="3clF45">
          <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
          <node concept="16syzq" id="3OPtF03lcyp" role="11_B2D">
            <ref role="16sUi3" node="3OPtF03lcyE" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lcyq" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lcyr" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="prependPath" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3Tmbuc" id="3OPtF03lcys" role="1B3o_S" />
        <node concept="3cqZAl" id="3OPtF03lcyt" role="3clF45" />
        <node concept="37vLTG" id="3OPtF03lcyu" role="3clF46">
          <property role="TrG5h" value="parentPath" />
          <node concept="3uibUv" id="3OPtF03lcyv" role="1tU5fm">
            <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
          </node>
        </node>
        <node concept="3clFbS" id="3OPtF03lcyw" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lcyx" role="3cqZAp">
            <node concept="2OqwBi" id="3OPtF03lcyy" role="3clFbG">
              <node concept="1rXfSq" id="3OPtF03lcyz" role="2Oq$k0">
                <ref role="37wK5l" node="3OPtF03lcw2" resolve="path" />
              </node>
              <node concept="liA8E" id="3OPtF03lcy$" role="2OqNvi">
                <ref role="37wK5l" node="1R$Cm9qEroc" resolve="prepend" />
                <node concept="37vLTw" id="3OPtF03lcy_" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03lcyu" resolve="parentPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03lcyA" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3OPtF03lcyB" role="1B3o_S" />
      <node concept="3uibUv" id="3OPtF03lcyC" role="1zkMxy">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
        <node concept="16syzq" id="3OPtF03lcyD" role="11_B2D">
          <ref role="16sUi3" node="3OPtF03lcyE" resolve="T" />
        </node>
      </node>
      <node concept="16euLQ" id="3OPtF03lcyE" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="3OPtF03lcyF" role="3ztrMU">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qUE_q" id="3OPtF03lcyG" role="11_B2D">
            <node concept="3uibUv" id="3OPtF03lcyH" role="3qUE_r">
              <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
            </node>
          </node>
        </node>
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
            <ref role="37wK5l" node="3OPtF03lcsg" resolve="ListBranch" />
            <node concept="2YIFZM" id="3OPtF03lcyP" role="37wK5m">
              <ref role="37wK5l" node="1R$Cm9qEBDL" resolve="create" />
              <ref role="1Pybhc" node="1R$Cm9qEqLU" resolve="Path" />
              <node concept="Rm8GO" id="3OPtF03lcyQ" role="37wK5m">
                <ref role="Rm8GQ" node="3OPtF03lc$7" resolve="NIL" />
                <ref role="1Px2BO" node="3OPtF03lc$6" resolve="ListBranch.Symbols" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3OPtF03lcyR" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="3OPtF03lcyS" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lcyT" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="path" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3OPtF03lcyU" role="1B3o_S" />
        <node concept="3uibUv" id="3OPtF03lcyV" role="3clF45">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
        <node concept="3clFbS" id="3OPtF03lcyW" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lcyX" role="3cqZAp">
            <node concept="3nyPlj" id="3OPtF03lcyY" role="3clFbG">
              <ref role="37wK5l" node="3OPtF03lcuL" resolve="path" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03lcyZ" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lcz0" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lcz1" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="copyRecursively" />
        <node concept="3Tm1VV" id="3OPtF03lcz2" role="1B3o_S" />
        <node concept="2AHcQZ" id="3OPtF03lcz3" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="3OPtF03lcz4" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lcz5" role="3cqZAp">
            <node concept="2ShNRf" id="3OPtF03lcz6" role="3clFbG">
              <node concept="1pGfFk" id="3OPtF03lcz7" role="2ShVmc">
                <ref role="37wK5l" node="3OPtF03lcyL" resolve="ListBranch.Nil" />
                <node concept="16syzq" id="3OPtF03lcz8" role="1pMfVU">
                  <ref role="16sUi3" node="3OPtF03lc$1" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="3OPtF03lcz9" role="3clF45">
          <ref role="3uigEE" node="3OPtF03lcyJ" resolve="ListBranch.Nil" />
          <node concept="16syzq" id="3OPtF03lcza" role="11_B2D">
            <ref role="16sUi3" node="3OPtF03lc$1" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lczb" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lczc" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="mapRecursively" />
        <node concept="37vLTG" id="3OPtF03lczd" role="3clF46">
          <property role="TrG5h" value="mapper" />
          <node concept="3uibUv" id="3OPtF03lcze" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
          </node>
        </node>
        <node concept="3Tm1VV" id="3OPtF03lczf" role="1B3o_S" />
        <node concept="2AHcQZ" id="3OPtF03lczg" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="3OPtF03lczh" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lczi" role="3cqZAp">
            <node concept="2ShNRf" id="3OPtF03lczj" role="3clFbG">
              <node concept="1pGfFk" id="3OPtF03lczk" role="2ShVmc">
                <ref role="37wK5l" node="3OPtF03lcyL" resolve="ListBranch.Nil" />
                <node concept="16syzq" id="3OPtF03lczl" role="1pMfVU">
                  <ref role="16sUi3" node="3OPtF03lc$1" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="3OPtF03lczm" role="3clF45">
          <ref role="3uigEE" node="3OPtF03lcyJ" resolve="ListBranch.Nil" />
          <node concept="16syzq" id="3OPtF03lczn" role="11_B2D">
            <ref role="16sUi3" node="3OPtF03lc$1" resolve="T" />
          </node>
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
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lczw" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lczx" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isNil" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3Tmbuc" id="3OPtF03lczy" role="1B3o_S" />
        <node concept="10P_77" id="3OPtF03lczz" role="3clF45" />
        <node concept="3clFbS" id="3OPtF03lcz$" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lcz_" role="3cqZAp">
            <node concept="3clFbT" id="3OPtF03lczA" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03lczB" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lczC" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lczD" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="prependPath" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3Tmbuc" id="3OPtF03lczE" role="1B3o_S" />
        <node concept="3cqZAl" id="3OPtF03lczF" role="3clF45" />
        <node concept="37vLTG" id="3OPtF03lczG" role="3clF46">
          <property role="TrG5h" value="parentPath" />
          <node concept="3uibUv" id="3OPtF03lczH" role="1tU5fm">
            <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
          </node>
        </node>
        <node concept="3clFbS" id="3OPtF03lczI" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lczJ" role="3cqZAp">
            <node concept="2OqwBi" id="3OPtF03lczK" role="3clFbG">
              <node concept="1rXfSq" id="3OPtF03lczL" role="2Oq$k0">
                <ref role="37wK5l" node="3OPtF03lcyT" resolve="path" />
              </node>
              <node concept="liA8E" id="3OPtF03lczM" role="2OqNvi">
                <ref role="37wK5l" node="1R$Cm9qEroc" resolve="prepend" />
                <node concept="37vLTw" id="3OPtF03lczN" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03lczG" resolve="parentPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03lczO" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lczP" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lczQ" role="jymVt">
        <property role="TrG5h" value="appendTo" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="3OPtF03lczR" role="3clF46">
          <property role="TrG5h" value="list" />
          <node concept="3uibUv" id="3OPtF03lczS" role="1tU5fm">
            <ref role="3uigEE" to="k7g3:~List" resolve="List" />
            <node concept="16syzq" id="3OPtF03lczT" role="11_B2D">
              <ref role="16sUi3" node="3OPtF03lc$1" resolve="T" />
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
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3OPtF03lc$0" role="1B3o_S" />
      <node concept="16euLQ" id="3OPtF03lc$1" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="3OPtF03lc$2" role="3ztrMU">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="2q_78a93OWf" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF03lc$3" role="1zkMxy">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
        <node concept="16syzq" id="3OPtF03lc$4" role="11_B2D">
          <ref role="16sUi3" node="3OPtF03lc$1" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lc$5" role="jymVt" />
    <node concept="Qs71p" id="3OPtF03lc$6" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Symbols" />
      <node concept="QsSxf" id="3OPtF03lc$7" role="Qtgdg">
        <property role="TrG5h" value="NIL" />
        <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="3OPtF03lc$8" role="Qtgdg">
        <property role="TrG5h" value="CONS" />
        <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="3OPtF03lc$9" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3OPtF03lc$a" role="jymVt" />
    <node concept="312cEu" id="3OPtF03lc$b" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="SymbolWrapper" />
      <node concept="2tJIrI" id="3OPtF03lc$c" role="jymVt" />
      <node concept="2YIFZL" id="3OPtF03lc$d" role="jymVt">
        <property role="TrG5h" value="wrap" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="37vLTG" id="3OPtF03lc$e" role="3clF46">
          <property role="TrG5h" value="symbol" />
          <node concept="3uibUv" id="3OPtF03lc$f" role="1tU5fm">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF03lc$g" role="3clF46">
          <property role="TrG5h" value="idx" />
          <node concept="10Oyi0" id="3OPtF03lc$h" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="3OPtF03lc$i" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lc$j" role="3cqZAp">
            <node concept="2ShNRf" id="3OPtF03lc$k" role="3clFbG">
              <node concept="1pGfFk" id="3OPtF03lc$l" role="2ShVmc">
                <ref role="37wK5l" node="3OPtF03lc$r" resolve="ListBranch.SymbolWrapper" />
                <node concept="37vLTw" id="3OPtF03lc$m" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03lc$e" resolve="symbol" />
                </node>
                <node concept="37vLTw" id="3OPtF03lc$n" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03lc$g" resolve="idx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3OPtF03lc$o" role="1B3o_S" />
        <node concept="3uibUv" id="3OPtF03lc$p" role="3clF45">
          <ref role="3uigEE" node="3OPtF03lc$b" resolve="ListBranch.SymbolWrapper" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lc$q" role="jymVt" />
      <node concept="3clFbW" id="3OPtF03lc$r" role="jymVt">
        <node concept="3cqZAl" id="3OPtF03lc$s" role="3clF45" />
        <node concept="3clFbS" id="3OPtF03lc$t" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lc$u" role="3cqZAp">
            <node concept="37vLTI" id="3OPtF03lc$v" role="3clFbG">
              <node concept="2OqwBi" id="3OPtF03lc$w" role="37vLTJ">
                <node concept="Xjq3P" id="3OPtF03lc$x" role="2Oq$k0" />
                <node concept="2OwXpG" id="3OPtF03lc$y" role="2OqNvi">
                  <ref role="2Oxat5" node="3OPtF03lc_P" resolve="symbol" />
                </node>
              </node>
              <node concept="37vLTw" id="3OPtF03lc$z" role="37vLTx">
                <ref role="3cqZAo" node="3OPtF03lc$F" resolve="symbol" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3OPtF03lc$$" role="3cqZAp">
            <node concept="37vLTI" id="3OPtF03lc$_" role="3clFbG">
              <node concept="2OqwBi" id="3OPtF03lc$A" role="37vLTJ">
                <node concept="Xjq3P" id="3OPtF03lc$B" role="2Oq$k0" />
                <node concept="2OwXpG" id="3OPtF03lc$C" role="2OqNvi">
                  <ref role="2Oxat5" node="3OPtF03lc_S" resolve="idx" />
                </node>
              </node>
              <node concept="37vLTw" id="3OPtF03lc$D" role="37vLTx">
                <ref role="3cqZAo" node="3OPtF03lc$H" resolve="idx" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3OPtF03lc$E" role="1B3o_S" />
        <node concept="37vLTG" id="3OPtF03lc$F" role="3clF46">
          <property role="TrG5h" value="symbol" />
          <node concept="3uibUv" id="3OPtF03lc$G" role="1tU5fm">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF03lc$H" role="3clF46">
          <property role="TrG5h" value="idx" />
          <node concept="10Oyi0" id="3OPtF03lc$I" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lc$J" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lc$K" role="jymVt">
        <property role="TrG5h" value="idx" />
        <node concept="10Oyi0" id="3OPtF03lc$L" role="3clF45" />
        <node concept="3clFbS" id="3OPtF03lc$M" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lc$N" role="3cqZAp">
            <node concept="37vLTw" id="3OPtF03lc$O" role="3clFbG">
              <ref role="3cqZAo" node="3OPtF03lc_S" resolve="idx" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lc$P" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lc$Q" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="toString" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="3OPtF03lc$R" role="1B3o_S" />
        <node concept="17QB3L" id="3OPtF03lc$S" role="3clF45" />
        <node concept="3clFbS" id="3OPtF03lc$T" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lc$U" role="3cqZAp">
            <node concept="3cpWs3" id="3OPtF03lc$V" role="3clFbG">
              <node concept="37vLTw" id="3OPtF03lc$W" role="3uHU7w">
                <ref role="3cqZAo" node="3OPtF03lc_S" resolve="idx" />
              </node>
              <node concept="3cpWs3" id="3OPtF03lc$X" role="3uHU7B">
                <node concept="2YIFZM" id="3OPtF03lc$Y" role="3uHU7B">
                  <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                  <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                  <node concept="37vLTw" id="3OPtF03lc$Z" role="37wK5m">
                    <ref role="3cqZAo" node="3OPtF03lc_P" resolve="symbol" />
                  </node>
                </node>
                <node concept="Xl_RD" id="3OPtF03lc_0" role="3uHU7w">
                  <property role="Xl_RC" value="#" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03lc_1" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lc_2" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lc_3" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="hashCode" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="3OPtF03lc_4" role="1B3o_S" />
        <node concept="10Oyi0" id="3OPtF03lc_5" role="3clF45" />
        <node concept="3clFbS" id="3OPtF03lc_6" role="3clF47">
          <node concept="3cpWs6" id="3OPtF03lc_7" role="3cqZAp">
            <node concept="3cpWs3" id="3OPtF03lc_8" role="3cqZAk">
              <node concept="17qRlL" id="3OPtF03lc_9" role="3uHU7w">
                <node concept="2OqwBi" id="3OPtF03lc_a" role="3uHU7w">
                  <node concept="37vLTw" id="3OPtF03lc_b" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03lc_P" resolve="symbol" />
                  </node>
                  <node concept="liA8E" id="3OPtF03lc_c" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~Object.hashCode():int" resolve="hashCode" />
                  </node>
                </node>
                <node concept="3cmrfG" id="3OPtF03lc_d" role="3uHU7B">
                  <property role="3cmrfH" value="23" />
                </node>
              </node>
              <node concept="3cmrfG" id="3OPtF03lc_e" role="3uHU7B">
                <property role="3cmrfH" value="47" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03lc_f" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lc_g" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lc_h" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="equals" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="3OPtF03lc_i" role="1B3o_S" />
        <node concept="10P_77" id="3OPtF03lc_j" role="3clF45" />
        <node concept="37vLTG" id="3OPtF03lc_k" role="3clF46">
          <property role="TrG5h" value="object" />
          <node concept="3uibUv" id="3OPtF03lc_l" role="1tU5fm">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="3OPtF03lc_m" role="3clF47">
          <node concept="3clFbJ" id="3OPtF03lc_n" role="3cqZAp">
            <node concept="3clFbS" id="3OPtF03lc_o" role="3clFbx">
              <node concept="3cpWs6" id="3OPtF03lc_p" role="3cqZAp">
                <node concept="3clFbT" id="3OPtF03lc_q" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="3OPtF03lc_r" role="3clFbw">
              <node concept="2ZW3vV" id="3OPtF03lc_s" role="3fr31v">
                <node concept="3uibUv" id="3OPtF03lc_t" role="2ZW6by">
                  <ref role="3uigEE" node="3OPtF03lc$b" resolve="ListBranch.SymbolWrapper" />
                </node>
                <node concept="37vLTw" id="3OPtF03lc_u" role="2ZW6bz">
                  <ref role="3cqZAo" node="3OPtF03lc_k" resolve="object" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3OPtF03lc_v" role="3cqZAp">
            <node concept="1Wc70l" id="3OPtF03lc_w" role="3cqZAk">
              <node concept="3clFbC" id="3OPtF03lc_x" role="3uHU7w">
                <node concept="2OqwBi" id="3OPtF03lc_y" role="3uHU7w">
                  <node concept="1eOMI4" id="3OPtF03lc_z" role="2Oq$k0">
                    <node concept="10QFUN" id="3OPtF03lc_$" role="1eOMHV">
                      <node concept="3uibUv" id="3OPtF03lc__" role="10QFUM">
                        <ref role="3uigEE" node="3OPtF03lc$b" resolve="ListBranch.SymbolWrapper" />
                      </node>
                      <node concept="37vLTw" id="3OPtF03lc_A" role="10QFUP">
                        <ref role="3cqZAo" node="3OPtF03lc_k" resolve="object" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OwXpG" id="3OPtF03lc_B" role="2OqNvi">
                    <ref role="2Oxat5" node="3OPtF03lc_S" resolve="idx" />
                  </node>
                </node>
                <node concept="37vLTw" id="3OPtF03lc_C" role="3uHU7B">
                  <ref role="3cqZAo" node="3OPtF03lc_S" resolve="idx" />
                </node>
              </node>
              <node concept="2OqwBi" id="3OPtF03lc_D" role="3uHU7B">
                <node concept="37vLTw" id="3OPtF03lc_E" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OPtF03lc_P" resolve="symbol" />
                </node>
                <node concept="liA8E" id="3OPtF03lc_F" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="3OPtF03lc_G" role="37wK5m">
                    <node concept="1eOMI4" id="3OPtF03lc_H" role="2Oq$k0">
                      <node concept="10QFUN" id="3OPtF03lc_I" role="1eOMHV">
                        <node concept="3uibUv" id="3OPtF03lc_J" role="10QFUM">
                          <ref role="3uigEE" node="3OPtF03lc$b" resolve="ListBranch.SymbolWrapper" />
                        </node>
                        <node concept="37vLTw" id="3OPtF03lc_K" role="10QFUP">
                          <ref role="3cqZAo" node="3OPtF03lc_k" resolve="object" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OwXpG" id="3OPtF03lc_L" role="2OqNvi">
                      <ref role="2Oxat5" node="3OPtF03lc_P" resolve="symbol" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03lc_M" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lc_N" role="jymVt" />
      <node concept="3Tm6S6" id="3OPtF03lc_O" role="1B3o_S" />
      <node concept="312cEg" id="3OPtF03lc_P" role="jymVt">
        <property role="TrG5h" value="symbol" />
        <node concept="3Tm6S6" id="3OPtF03lc_Q" role="1B3o_S" />
        <node concept="3uibUv" id="3OPtF03lc_R" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="312cEg" id="3OPtF03lc_S" role="jymVt">
        <property role="TrG5h" value="idx" />
        <node concept="3Tm6S6" id="3OPtF03lc_T" role="1B3o_S" />
        <node concept="10Oyi0" id="3OPtF03lc_U" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3OPtF03lc_V" role="1B3o_S" />
    <node concept="16euLQ" id="3OPtF03lc_W" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3uibUv" id="3OPtF03lc_X" role="3ztrMU">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
        <node concept="3qTvmN" id="3OPtF03lc_Y" role="11_B2D" />
      </node>
    </node>
    <node concept="3uibUv" id="3OPtF03lc_Z" role="1zkMxy">
      <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
      <node concept="16syzq" id="3OPtF03lcA0" role="11_B2D">
        <ref role="16sUi3" node="3OPtF03lc_W" resolve="T" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5s497VqXwA7">
    <property role="TrG5h" value="PrettyPrinter" />
    <node concept="3Tm1VV" id="5s497VqXwA8" role="1B3o_S" />
    <node concept="3uibUv" id="5s497VqXwGs" role="EKbjA">
      <ref role="3uigEE" node="3JgCwkqiP3h" resolve="TreeWalk.Walker" />
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
                <node concept="37vLTw" id="5s497VrdM$F" role="37wK5m">
                  <ref role="3cqZAo" node="5s497VrdmAW" resolve="indentLevel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7d$oK1$CY7x" role="3cqZAp">
          <node concept="3SKdUq" id="7d$oK1$CYbC" role="3SKWNk">
            <property role="3SKdUp" value="FIXME hack to support printing variables" />
          </node>
        </node>
        <node concept="3clFbJ" id="7d$oK1$CXUA" role="3cqZAp">
          <node concept="3clFbS" id="7d$oK1$CXUD" role="3clFbx">
            <node concept="3clFbF" id="7d$oK1$Deqy" role="3cqZAp">
              <node concept="2OqwBi" id="7d$oK1$DeGK" role="3clFbG">
                <node concept="Rm8GO" id="7d$oK1$DeCz" role="2Oq$k0">
                  <ref role="Rm8GQ" node="5s497Vr0Gpo" resolve="EOL" />
                  <ref role="1Px2BO" node="5s497Vr0zK6" resolve="PrettyPrinter.Separator" />
                </node>
                <node concept="liA8E" id="7d$oK1$DfgT" role="2OqNvi">
                  <ref role="37wK5l" node="5s497Vr0_pl" resolve="appendTo" />
                  <node concept="37vLTw" id="7d$oK1$Dfny" role="37wK5m">
                    <ref role="3cqZAo" node="5s497VqXMV$" resolve="printer" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7d$oK1$CZqv" role="3cqZAp">
              <node concept="2OqwBi" id="7d$oK1$CZCS" role="3clFbG">
                <node concept="Rm8GO" id="7d$oK1$CZ$F" role="2Oq$k0">
                  <ref role="Rm8GQ" node="5s497Vr0AJd" resolve="INDENT" />
                  <ref role="1Px2BO" node="5s497Vr0zK6" resolve="PrettyPrinter.Separator" />
                </node>
                <node concept="liA8E" id="7d$oK1$CZU6" role="2OqNvi">
                  <ref role="37wK5l" node="5s497Vr0_pl" resolve="appendTo" />
                  <node concept="37vLTw" id="7d$oK1$D05r" role="37wK5m">
                    <ref role="3cqZAo" node="5s497VqXMV$" resolve="printer" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7d$oK1$D2my" role="3cqZAp">
              <node concept="2OqwBi" id="7d$oK1$D2p3" role="3clFbG">
                <node concept="37vLTw" id="7d$oK1$D2mw" role="2Oq$k0">
                  <ref role="3cqZAo" node="5s497VqXMV$" resolve="printer" />
                </node>
                <node concept="liA8E" id="7d$oK1$D2zR" role="2OqNvi">
                  <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
                  <node concept="2YIFZM" id="7d$oK1$D2T4" role="37wK5m">
                    <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                    <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                    <node concept="37vLTw" id="7d$oK1$D379" role="37wK5m">
                      <ref role="3cqZAo" node="5s497VqXKRl" resolve="tbr" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7d$oK1$CYss" role="3clFbw">
            <node concept="37vLTw" id="7d$oK1$CYmw" role="2Oq$k0">
              <ref role="3cqZAo" node="5s497VqXKRl" resolve="tbr" />
            </node>
            <node concept="liA8E" id="7d$oK1$CYAZ" role="2OqNvi">
              <ref role="37wK5l" to="jfki:~Node.isVar()" resolve="isVar" />
            </node>
          </node>
          <node concept="9aQIb" id="7d$oK1$CYEt" role="9aQIa">
            <node concept="3clFbS" id="7d$oK1$CYEu" role="9aQI4">
              <node concept="3clFbF" id="5s497VqXTFm" role="3cqZAp">
                <node concept="2OqwBi" id="5s497VqXTVl" role="3clFbG">
                  <node concept="2ShNRf" id="5s497VqXTFk" role="2Oq$k0">
                    <node concept="1pGfFk" id="5s497VqXTQP" role="2ShVmc">
                      <ref role="37wK5l" node="47nvOnTQN6Q" resolve="TreeWalk" />
                      <node concept="37vLTw" id="5s497VqY2RT" role="37wK5m">
                        <ref role="3cqZAo" node="5s497VqXMV$" resolve="printer" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5s497VqXU6v" role="2OqNvi">
                    <ref role="37wK5l" node="1hOy_Afq63K" resolve="walk" />
                    <node concept="37vLTw" id="5s497VqY2Xw" role="37wK5m">
                      <ref role="3cqZAo" node="5s497VqXKRl" resolve="tbr" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqXMCa" role="3cqZAp">
          <node concept="2OqwBi" id="5s497VqZOvC" role="3clFbG">
            <node concept="37vLTw" id="5s497VqXMVB" role="2Oq$k0">
              <ref role="3cqZAo" node="5s497VqXMV$" resolve="printer" />
            </node>
            <node concept="liA8E" id="5s497VqZOCR" role="2OqNvi">
              <ref role="37wK5l" node="5s497VqXNEj" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5s497VqXKRl" role="3clF46">
        <property role="TrG5h" value="tbr" />
        <node concept="3uibUv" id="5s497VqXKRk" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="5s497VqXL3u" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="5s497VrdmAW" role="3clF46">
        <property role="TrG5h" value="indentLevel" />
        <node concept="10Oyi0" id="5s497VrdmUa" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqXL6G" role="jymVt" />
    <node concept="3clFbW" id="5s497VqXLBS" role="jymVt">
      <node concept="3cqZAl" id="5s497VqXLBU" role="3clF45" />
      <node concept="3Tm6S6" id="5s497VqYqp7" role="1B3o_S" />
      <node concept="3clFbS" id="5s497VqXLBW" role="3clF47">
        <node concept="3clFbF" id="5s497VrdkFO" role="3cqZAp">
          <node concept="37vLTI" id="5s497Vrdl9p" role="3clFbG">
            <node concept="37vLTw" id="5s497Vrdlm7" role="37vLTx">
              <ref role="3cqZAo" node="5s497VrdkhT" resolve="indentLevel" />
            </node>
            <node concept="2OqwBi" id="5s497VrdkGk" role="37vLTJ">
              <node concept="Xjq3P" id="5s497VrdkFN" role="2Oq$k0" />
              <node concept="2OwXpG" id="5s497VrdkQc" role="2OqNvi">
                <ref role="2Oxat5" node="5s497VqXzcI" resolve="indentLevel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5s497VrdkhT" role="3clF46">
        <property role="TrG5h" value="indentLevel" />
        <node concept="10Oyi0" id="5s497VrdkhS" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqXx2G" role="jymVt" />
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
              <ref role="37wK5l" to="e2lb:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqXNai" role="jymVt" />
    <node concept="3clFb_" id="5s497VqXwHx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="walkChild" />
      <node concept="3uibUv" id="5s497VqXwHy" role="3clF45">
        <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
      </node>
      <node concept="3Tm1VV" id="5s497VqXwHz" role="1B3o_S" />
      <node concept="37vLTG" id="5s497VqXwH_" role="3clF46">
        <property role="TrG5h" value="cb" />
        <node concept="3uibUv" id="5s497VqXwHA" role="1tU5fm">
          <ref role="3uigEE" node="5JQSuNswOXL" resolve="ChildrenBranch" />
          <node concept="16syzq" id="5s497VqXwHB" role="11_B2D">
            <ref role="16sUi3" node="5s497VqXwHG" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5s497VqXwHC" role="3clF46">
        <property role="TrG5h" value="children" />
        <node concept="10Q1$e" id="5s497VqXwHD" role="1tU5fm">
          <node concept="3uibUv" id="5s497VqXwHE" role="10Q1$1">
            <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
            <node concept="3qTvmN" id="5s497VqXwHF" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="5s497VqXwHG" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="5s497VqXwHH" role="3ztrMU">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="5s497VqXwHI" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="5s497VqXwHJ" role="3clF47">
        <node concept="3clFbF" id="5s497Vr9tWx" role="3cqZAp">
          <node concept="1rXfSq" id="5s497Vr9tWv" role="3clFbG">
            <ref role="37wK5l" node="5s497VqZfX$" resolve="newLine" />
          </node>
        </node>
        <node concept="3clFbF" id="5s497Vr9fV3" role="3cqZAp">
          <node concept="1rXfSq" id="5s497Vr9fV4" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
            <node concept="2YIFZM" id="5s497Vr9fV5" role="37wK5m">
              <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
              <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
              <node concept="2OqwBi" id="5s497Vr9fV6" role="37wK5m">
                <node concept="37vLTw" id="5s497Vr9gmW" role="2Oq$k0">
                  <ref role="3cqZAo" node="5s497VqXwH_" resolve="cb" />
                </node>
                <node concept="liA8E" id="5s497Vr9fV8" role="2OqNvi">
                  <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
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
              <ref role="37wK5l" to="k7g3:~LinkedList.push(java.lang.Object):void" resolve="push" />
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
      <node concept="2AHcQZ" id="5s497VqXxdY" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqZN_3" role="jymVt" />
    <node concept="3clFb_" id="5s497VqXwN9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="walkList" />
      <node concept="3uibUv" id="5s497VqXwNa" role="3clF45">
        <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
      </node>
      <node concept="3Tm1VV" id="5s497VqXwNb" role="1B3o_S" />
      <node concept="37vLTG" id="5s497VqXwNd" role="3clF46">
        <property role="TrG5h" value="listb" />
        <node concept="3uibUv" id="5s497VqXwNe" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF03lco4" resolve="ListBranch" />
          <node concept="16syzq" id="5s497VqXwNf" role="11_B2D">
            <ref role="16sUi3" node="5s497VqXwNl" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5s497VqXwNg" role="3clF46">
        <property role="TrG5h" value="children" />
        <node concept="3uibUv" id="5s497VqXwNh" role="1tU5fm">
          <ref role="3uigEE" to="k7g3:~List" resolve="List" />
          <node concept="3qUE_q" id="5s497VqXwNi" role="11_B2D">
            <node concept="3uibUv" id="5s497VqXwNj" role="3qUE_r">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
              <node concept="3qTvmN" id="5s497VqXwNk" role="11_B2D" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="5s497VqXwNl" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="5s497VqXwNm" role="3ztrMU">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="5s497VqXwNn" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="5s497VqXwNo" role="3clF47">
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
              <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
              <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
              <node concept="2OqwBi" id="5s497Vr0pa4" role="37wK5m">
                <node concept="37vLTw" id="5s497Vr0psl" role="2Oq$k0">
                  <ref role="3cqZAo" node="5s497VqXwNd" resolve="listb" />
                </node>
                <node concept="liA8E" id="5s497Vr0pa6" role="2OqNvi">
                  <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
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
              <ref role="37wK5l" to="k7g3:~LinkedList.push(java.lang.Object):void" resolve="push" />
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
      <node concept="2AHcQZ" id="5s497VqXxBF" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqZMML" role="jymVt" />
    <node concept="3clFb_" id="5s497VqXwMJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="walkValues" />
      <node concept="3uibUv" id="5s497VqXwMK" role="3clF45">
        <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
      </node>
      <node concept="3Tm1VV" id="5s497VqXwML" role="1B3o_S" />
      <node concept="37vLTG" id="5s497VqXwMN" role="3clF46">
        <property role="TrG5h" value="valb" />
        <node concept="3uibUv" id="5s497VqXwMO" role="1tU5fm">
          <ref role="3uigEE" node="1msb0mq99GH" resolve="ValuesBranch" />
          <node concept="16syzq" id="5s497VqXwMP" role="11_B2D">
            <ref role="16sUi3" node="5s497VqXwMT" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5s497VqXwMQ" role="3clF46">
        <property role="TrG5h" value="values" />
        <node concept="10Q1$e" id="5s497VqXwMR" role="1tU5fm">
          <node concept="16syzq" id="5s497VqXwMS" role="10Q1$1">
            <ref role="16sUi3" node="5s497VqXwMT" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="5s497VqXwMT" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
      <node concept="3clFbS" id="5s497VqXwMU" role="3clF47">
        <node concept="3clFbF" id="5s497VqZVpb" role="3cqZAp">
          <node concept="1rXfSq" id="5s497VqZVp9" role="3clFbG">
            <ref role="37wK5l" node="5s497VqZ6ry" resolve="newToken" />
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqYTlY" role="3cqZAp">
          <node concept="1rXfSq" id="5s497VqYTlW" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
            <node concept="2YIFZM" id="5s497VqYW8H" role="37wK5m">
              <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
              <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
              <node concept="2OqwBi" id="5s497VqYTFq" role="37wK5m">
                <node concept="37vLTw" id="5s497VqZZNj" role="2Oq$k0">
                  <ref role="3cqZAo" node="5s497VqXwMN" resolve="valb" />
                </node>
                <node concept="liA8E" id="5s497VqYUF3" role="2OqNvi">
                  <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
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
            <ref role="37wK5l" node="5s497VqYCA_" resolve="appendList" />
            <node concept="2YIFZM" id="5s497VqYAqn" role="37wK5m">
              <ref role="37wK5l" to="k7g3:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
              <ref role="1Pybhc" to="k7g3:~Arrays" resolve="Arrays" />
              <node concept="37vLTw" id="5s497Vr001h" role="37wK5m">
                <ref role="3cqZAo" node="5s497VqXwMQ" resolve="values" />
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
      <node concept="2AHcQZ" id="5s497VqXxK_" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqZM0w" role="jymVt" />
    <node concept="3clFb_" id="104EUzG1hql" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="walkValue" />
      <node concept="3uibUv" id="104EUzG1hqm" role="3clF45">
        <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
      </node>
      <node concept="3Tm1VV" id="104EUzG1hqn" role="1B3o_S" />
      <node concept="37vLTG" id="104EUzG1hqp" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="104EUzG1hqq" role="1tU5fm">
          <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
          <node concept="3qTvmN" id="104EUzG1hqr" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="104EUzG1hqs" role="3clF47">
        <node concept="3SKdUt" id="104EUzGby$A" role="3cqZAp">
          <node concept="3SKdUq" id="104EUzGby$G" role="3SKWNk">
            <property role="3SKdUp" value="FIXME implement me" />
          </node>
        </node>
        <node concept="YS8fn" id="104EUzFtS9V" role="3cqZAp">
          <node concept="2ShNRf" id="104EUzFtSbZ" role="YScLw">
            <node concept="1pGfFk" id="104EUzFtSHH" role="2ShVmc">
              <ref role="37wK5l" to="e2lb:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="104EUzG1jFl" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFtOEd" role="jymVt" />
    <node concept="3clFb_" id="5s497VqXwMX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="walkVariables" />
      <node concept="3uibUv" id="5s497VqXwMY" role="3clF45">
        <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
      </node>
      <node concept="3Tm1VV" id="5s497VqXwMZ" role="1B3o_S" />
      <node concept="37vLTG" id="5s497VqXwN1" role="3clF46">
        <property role="TrG5h" value="varb" />
        <node concept="3uibUv" id="5s497VqXwN2" role="1tU5fm">
          <ref role="3uigEE" node="uNmovXiSQ6" resolve="VariableBranch" />
        </node>
      </node>
      <node concept="37vLTG" id="5s497VqXwN3" role="3clF46">
        <property role="TrG5h" value="variables" />
        <node concept="10Q1$e" id="5s497VqXwN4" role="1tU5fm">
          <node concept="17QB3L" id="5s497VqXwN5" role="10Q1$1" />
        </node>
      </node>
      <node concept="3clFbS" id="5s497VqXwN6" role="3clF47">
        <node concept="3clFbF" id="5s497VqZWV3" role="3cqZAp">
          <node concept="1rXfSq" id="5s497VqZWV4" role="3clFbG">
            <ref role="37wK5l" node="5s497VqZ6ry" resolve="newToken" />
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqZWVi" role="3cqZAp">
          <node concept="1rXfSq" id="5s497VqZWVj" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
            <node concept="2YIFZM" id="5s497VqZWVk" role="37wK5m">
              <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
              <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
              <node concept="2OqwBi" id="5s497VqZWVl" role="37wK5m">
                <node concept="37vLTw" id="5s497VqZWVm" role="2Oq$k0">
                  <ref role="3cqZAo" node="5s497VqXwN1" resolve="varb" />
                </node>
                <node concept="liA8E" id="5s497VqZWVn" role="2OqNvi">
                  <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqZWVf" role="3cqZAp">
          <node concept="1rXfSq" id="5s497VqZWVg" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
            <node concept="Xl_RD" id="5s497VqZWVh" role="37wK5m">
              <property role="Xl_RC" value="=" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqZWVc" role="3cqZAp">
          <node concept="1rXfSq" id="5s497VqZWVd" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
            <node concept="Xl_RD" id="5s497VqZWVe" role="37wK5m">
              <property role="Xl_RC" value="%" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqZWV8" role="3cqZAp">
          <node concept="1rXfSq" id="5s497VqZWV9" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYCA_" resolve="appendList" />
            <node concept="2YIFZM" id="5s497VqZWVa" role="37wK5m">
              <ref role="37wK5l" to="k7g3:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
              <ref role="1Pybhc" to="k7g3:~Arrays" resolve="Arrays" />
              <node concept="37vLTw" id="5s497VqZWVb" role="37wK5m">
                <ref role="3cqZAo" node="5s497VqXwN3" resolve="variables" />
              </node>
            </node>
            <node concept="Rm8GO" id="5s497Vr1rpE" role="37wK5m">
              <ref role="Rm8GQ" node="5s497Vr1lsT" resolve="COMMA" />
              <ref role="1Px2BO" node="5s497Vr0zK6" resolve="PrettyPrinter.Separator" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqZWV5" role="3cqZAp">
          <node concept="1rXfSq" id="5s497VqZWV6" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
            <node concept="Xl_RD" id="5s497VqZWV7" role="37wK5m">
              <property role="Xl_RC" value="%" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqYyYb" role="3cqZAp">
          <node concept="Rm8GO" id="5s497Vr8rHl" role="3clFbG">
            <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
            <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5s497VqXxTr" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqX$Ha" role="jymVt" />
    <node concept="3clFb_" id="104EUzG3Cqy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="walkVariable" />
      <node concept="3uibUv" id="104EUzG3Cqz" role="3clF45">
        <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
      </node>
      <node concept="3Tm1VV" id="104EUzG3Cq$" role="1B3o_S" />
      <node concept="37vLTG" id="104EUzG3CqA" role="3clF46">
        <property role="TrG5h" value="variable" />
        <node concept="3uibUv" id="104EUzG3CqB" role="1tU5fm">
          <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
        </node>
      </node>
      <node concept="3clFbS" id="104EUzG3CqC" role="3clF47">
        <node concept="3clFbF" id="6_KEUt$WyUj" role="3cqZAp">
          <node concept="1rXfSq" id="6_KEUt$WyUk" role="3clFbG">
            <ref role="37wK5l" node="5s497VqZfX$" resolve="newLine" />
          </node>
        </node>
        <node concept="3clFbF" id="6_KEUt$WxC9" role="3cqZAp">
          <node concept="1rXfSq" id="6_KEUt$WxCa" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
            <node concept="2OqwBi" id="6_KEUt$WBP9" role="37wK5m">
              <node concept="37vLTw" id="6_KEUt$WBzs" role="2Oq$k0">
                <ref role="3cqZAo" node="104EUzG3CqA" resolve="variable" />
              </node>
              <node concept="liA8E" id="6_KEUt$WCxk" role="2OqNvi">
                <ref role="37wK5l" node="uNmovXjH0O" resolve="toString" />
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
      <node concept="2AHcQZ" id="104EUzG3GRe" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
                <ref role="37wK5l" to="k7g3:~LinkedList.pop():java.lang.Object" resolve="pop" />
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
              <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
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
      <property role="TrG5h" value="appendList" />
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
                  <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="2YIFZM" id="5s497VqYOz0" role="37wK5m">
                    <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                    <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
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
              <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
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
          <ref role="3uigEE" to="k7g3:~List" resolve="List" />
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
                  <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
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
        <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
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
            <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
          </node>
        </node>
      </node>
      <node concept="QsSxf" id="5s497Vr9kSP" role="Qtgdg">
        <property role="TrG5h" value="END_CHILDREN" />
        <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
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
            <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
            <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
        <node concept="37vLTG" id="5s497Vr0ENY" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="17QB3L" id="3_ALDc$_5nt" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="5s497Vr0EFS" role="3clF45" />
        <node concept="3Tm1VV" id="5s497Vr0EFT" role="1B3o_S" />
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
    <node concept="2tJIrI" id="5s497VqXz0L" role="jymVt" />
    <node concept="312cEg" id="5s497Vr90Ww" role="jymVt">
      <property role="TrG5h" value="endActions" />
      <node concept="3Tm6S6" id="5s497Vr90Wx" role="1B3o_S" />
      <node concept="3uibUv" id="5s497Vr92gN" role="1tU5fm">
        <ref role="3uigEE" to="k7g3:~LinkedList" resolve="LinkedList" />
        <node concept="3uibUv" id="5s497Vr92xe" role="11_B2D">
          <ref role="3uigEE" node="5s497Vr8LPr" resolve="PrettyPrinter.EndWalk" />
        </node>
      </node>
      <node concept="2ShNRf" id="5s497Vr92PY" role="33vP2m">
        <node concept="1pGfFk" id="5s497Vr92Im" role="2ShVmc">
          <ref role="37wK5l" to="k7g3:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
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
        <ref role="3uigEE" to="e2lb:~StringBuilder" resolve="StringBuilder" />
      </node>
      <node concept="2ShNRf" id="5s497VqY1wG" role="33vP2m">
        <node concept="1pGfFk" id="5s497VqY1o6" role="2ShVmc">
          <ref role="37wK5l" to="e2lb:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
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
  </node>
  <node concept="312cEu" id="HdxW7q$dvC">
    <property role="TrG5h" value="TreeMatcher" />
    <node concept="2tJIrI" id="HdxW7q$dvD" role="jymVt" />
    <node concept="3clFbW" id="HdxW7q$dvE" role="jymVt">
      <node concept="37vLTG" id="HdxW7q$dvF" role="3clF46">
        <property role="TrG5h" value="pattern" />
        <node concept="3uibUv" id="HdxW7q$dvG" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="HdxW7q$dvH" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="HdxW7q$dvI" role="3clF46">
        <property role="TrG5h" value="replace" />
        <node concept="3uibUv" id="HdxW7q$dvJ" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="HdxW7q$dvK" role="11_B2D" />
        </node>
      </node>
      <node concept="3cqZAl" id="HdxW7q$dvL" role="3clF45" />
      <node concept="3Tm1VV" id="HdxW7q$dvM" role="1B3o_S" />
      <node concept="3clFbS" id="HdxW7q$dvN" role="3clF47">
        <node concept="3clFbF" id="HdxW7q$dvO" role="3cqZAp">
          <node concept="37vLTI" id="HdxW7q$dvP" role="3clFbG">
            <node concept="2OqwBi" id="HdxW7q$dvQ" role="37vLTJ">
              <node concept="Xjq3P" id="HdxW7q$dvR" role="2Oq$k0" />
              <node concept="2OwXpG" id="HdxW7q$dvS" role="2OqNvi">
                <ref role="2Oxat5" node="HdxW7q$dyd" resolve="pattern" />
              </node>
            </node>
            <node concept="37vLTw" id="HdxW7q$dvT" role="37vLTx">
              <ref role="3cqZAo" node="HdxW7q$dvF" resolve="pattern" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="HdxW7q$dvU" role="3cqZAp">
          <node concept="37vLTI" id="HdxW7q$dvV" role="3clFbG">
            <node concept="2OqwBi" id="HdxW7q$dvW" role="37vLTJ">
              <node concept="Xjq3P" id="HdxW7q$dvX" role="2Oq$k0" />
              <node concept="2OwXpG" id="HdxW7q$dvY" role="2OqNvi">
                <ref role="2Oxat5" node="HdxW7q$dyh" resolve="replace" />
              </node>
            </node>
            <node concept="37vLTw" id="HdxW7q$dvZ" role="37vLTx">
              <ref role="3cqZAo" node="HdxW7q$dvI" resolve="replace" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="HdxW7q$dw0" role="jymVt" />
    <node concept="3clFbW" id="HdxW7q$dw1" role="jymVt">
      <node concept="37vLTG" id="HdxW7q$dw2" role="3clF46">
        <property role="TrG5h" value="pattern" />
        <node concept="3uibUv" id="HdxW7q$dw3" role="1tU5fm">
          <ref role="3uigEE" node="2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="HdxW7q$dw4" role="3clF46">
        <property role="TrG5h" value="replace" />
        <node concept="3uibUv" id="HdxW7q$dw5" role="1tU5fm">
          <ref role="3uigEE" node="2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="3cqZAl" id="HdxW7q$dw6" role="3clF45" />
      <node concept="3Tm1VV" id="HdxW7q$dw7" role="1B3o_S" />
      <node concept="3clFbS" id="HdxW7q$dw8" role="3clF47">
        <node concept="3clFbF" id="HdxW7q$dw9" role="3cqZAp">
          <node concept="37vLTI" id="HdxW7q$dwa" role="3clFbG">
            <node concept="2OqwBi" id="HdxW7q$dwb" role="37vLTJ">
              <node concept="Xjq3P" id="HdxW7q$dwc" role="2Oq$k0" />
              <node concept="2OwXpG" id="HdxW7q$dwd" role="2OqNvi">
                <ref role="2Oxat5" node="HdxW7q$dyd" resolve="pattern" />
              </node>
            </node>
            <node concept="2OqwBi" id="HdxW7q$dwe" role="37vLTx">
              <node concept="37vLTw" id="HdxW7q$dwf" role="2Oq$k0">
                <ref role="3cqZAo" node="HdxW7q$dw2" resolve="pattern" />
              </node>
              <node concept="liA8E" id="HdxW7q$dwg" role="2OqNvi">
                <ref role="37wK5l" node="2xQ7eRACJS8" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="HdxW7q$dwh" role="3cqZAp">
          <node concept="37vLTI" id="HdxW7q$dwi" role="3clFbG">
            <node concept="2OqwBi" id="HdxW7q$dwj" role="37vLTJ">
              <node concept="Xjq3P" id="HdxW7q$dwk" role="2Oq$k0" />
              <node concept="2OwXpG" id="HdxW7q$dwl" role="2OqNvi">
                <ref role="2Oxat5" node="HdxW7q$dyh" resolve="replace" />
              </node>
            </node>
            <node concept="2OqwBi" id="HdxW7q$dwm" role="37vLTx">
              <node concept="37vLTw" id="HdxW7q$dwn" role="2Oq$k0">
                <ref role="3cqZAo" node="HdxW7q$dw4" resolve="replace" />
              </node>
              <node concept="liA8E" id="HdxW7q$dwo" role="2OqNvi">
                <ref role="37wK5l" node="2xQ7eRACJS8" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="HdxW7q$dwp" role="jymVt" />
    <node concept="3clFb_" id="HdxW7q$dwq" role="jymVt">
      <property role="TrG5h" value="matches" />
      <node concept="37vLTG" id="HdxW7q$dwr" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="HdxW7q$dws" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="HdxW7q$dwt" role="11_B2D" />
        </node>
      </node>
      <node concept="10P_77" id="HdxW7q$dwu" role="3clF45" />
      <node concept="3Tm1VV" id="HdxW7q$dwv" role="1B3o_S" />
      <node concept="3clFbS" id="HdxW7q$dww" role="3clF47">
        <node concept="3cpWs8" id="5PpdwMfDjde" role="3cqZAp">
          <node concept="3cpWsn" id="5PpdwMfDjdf" role="3cpWs9">
            <property role="TrG5h" value="sub" />
            <node concept="3uibUv" id="5PpdwMfDjd5" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution" resolve="Substitution" />
            </node>
            <node concept="2YIFZM" id="5PpdwMfDjdg" role="33vP2m">
              <ref role="37wK5l" to="jfki:~Unification.unify(Node,Node)" resolve="unify" />
              <ref role="1Pybhc" to="jfki:~Unification" resolve="Unification" />
              <node concept="37vLTw" id="5PpdwMfDjdh" role="37wK5m">
                <ref role="3cqZAo" node="HdxW7q$dyd" resolve="pattern" />
              </node>
              <node concept="37vLTw" id="5PpdwMfDjdi" role="37wK5m">
                <ref role="3cqZAo" node="HdxW7q$dwr" resolve="source" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5PpdwMfDjIS" role="3cqZAp">
          <node concept="3clFbS" id="5PpdwMfDjIV" role="3clFbx">
            <node concept="3cpWs6" id="5PpdwMfDjQY" role="3cqZAp">
              <node concept="3clFbT" id="5PpdwMfDjSc" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5PpdwMfDjOs" role="3clFbw">
            <node concept="2OqwBi" id="HdxW7q$dwy" role="3fr31v">
              <node concept="37vLTw" id="5PpdwMfDjdj" role="2Oq$k0">
                <ref role="3cqZAo" node="5PpdwMfDjdf" resolve="sub" />
              </node>
              <node concept="liA8E" id="HdxW7q$dwA" role="2OqNvi">
                <ref role="37wK5l" to="jfki:~Substitution.isSuccessful()" resolve="isSuccessful" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PpdwMfDkpV" role="3cqZAp" />
        <node concept="3SKdUt" id="5PpdwMfDti7" role="3cqZAp">
          <node concept="3SKdUq" id="5PpdwMfDu70" role="3SKWNk">
            <property role="3SKdUp" value="TODO: need a better way to check for the &quot;capturing&quot; variables" />
          </node>
        </node>
        <node concept="1DcWWT" id="5PpdwMfDlUD" role="3cqZAp">
          <node concept="3clFbS" id="5PpdwMfDlUE" role="2LFqv$">
            <node concept="3clFbJ" id="5PpdwMfDmB7" role="3cqZAp">
              <node concept="3clFbS" id="5PpdwMfDmB8" role="3clFbx">
                <node concept="3cpWs6" id="5PpdwMfDnWU" role="3cqZAp">
                  <node concept="3clFbT" id="5PpdwMfDnXm" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="5PpdwMfDmCq" role="3clFbw">
                <node concept="2ZW3vV" id="5PpdwMfDnph" role="3fr31v">
                  <node concept="3uibUv" id="5PpdwMfDnD4" role="2ZW6by">
                    <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                  </node>
                  <node concept="2OqwBi" id="5PpdwMfDmEC" role="2ZW6bz">
                    <node concept="37vLTw" id="5PpdwMfDmD1" role="2Oq$k0">
                      <ref role="3cqZAo" node="5PpdwMfDlUH" resolve="bnd" />
                    </node>
                    <node concept="liA8E" id="5PpdwMfDmJ7" role="2OqNvi">
                      <ref role="37wK5l" to="jfki:~Substitution.Binding.var()" resolve="var" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5PpdwMfDlUH" role="1Duv9x">
            <property role="TrG5h" value="bnd" />
            <node concept="3uibUv" id="5PpdwMfDlUL" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution.Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="5PpdwMfDlUM" role="1DdaDG">
            <node concept="37vLTw" id="5PpdwMfDlUN" role="2Oq$k0">
              <ref role="3cqZAo" node="5PpdwMfDjdf" resolve="sub" />
            </node>
            <node concept="liA8E" id="5PpdwMfDlUO" role="2OqNvi">
              <ref role="37wK5l" to="jfki:~Substitution.bindings()" resolve="bindings" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PpdwMfDrD7" role="3cqZAp" />
        <node concept="3clFbF" id="5PpdwMfDpAi" role="3cqZAp">
          <node concept="3clFbT" id="5PpdwMfDpAh" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="HdxW7q$dwB" role="jymVt" />
    <node concept="3clFb_" id="HdxW7q$dwC" role="jymVt">
      <property role="TrG5h" value="replace" />
      <node concept="37vLTG" id="HdxW7q$dwD" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="HdxW7q$dwE" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="HdxW7q$dwF" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="HdxW7q$dwG" role="3clF45">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
        <node concept="3qTvmN" id="HdxW7q$dwH" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="HdxW7q$dwI" role="1B3o_S" />
      <node concept="3clFbS" id="HdxW7q$dwJ" role="3clF47">
        <node concept="3cpWs8" id="HdxW7q$dwK" role="3cqZAp">
          <node concept="3cpWsn" id="HdxW7q$dwL" role="3cpWs9">
            <property role="TrG5h" value="subs" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="HdxW7q$dwM" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution" resolve="Substitution" />
            </node>
            <node concept="2YIFZM" id="HdxW7q$dwN" role="33vP2m">
              <ref role="37wK5l" to="jfki:~Unification.unify(Node,Node)" resolve="unify" />
              <ref role="1Pybhc" to="jfki:~Unification" resolve="Unification" />
              <node concept="37vLTw" id="HdxW7q$dwO" role="37wK5m">
                <ref role="3cqZAo" node="HdxW7q$dyd" resolve="pattern" />
              </node>
              <node concept="37vLTw" id="HdxW7q$dwP" role="37wK5m">
                <ref role="3cqZAo" node="HdxW7q$dwD" resolve="source" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="HdxW7q$dwQ" role="3cqZAp">
          <node concept="3clFbS" id="HdxW7q$dwR" role="3clFbx">
            <node concept="3cpWs6" id="HdxW7q$dwS" role="3cqZAp">
              <node concept="37vLTw" id="HdxW7q$dwT" role="3cqZAk">
                <ref role="3cqZAo" node="HdxW7q$dwD" resolve="source" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="HdxW7q$dwU" role="3clFbw">
            <node concept="2OqwBi" id="HdxW7q$dwV" role="3fr31v">
              <node concept="37vLTw" id="HdxW7q$dwW" role="2Oq$k0">
                <ref role="3cqZAo" node="HdxW7q$dwL" resolve="subs" />
              </node>
              <node concept="liA8E" id="HdxW7q$dwX" role="2OqNvi">
                <ref role="37wK5l" to="jfki:~Substitution.isSuccessful()" resolve="isSuccessful" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="HdxW7q$dwY" role="3cqZAp" />
        <node concept="3cpWs8" id="HdxW7q$dwZ" role="3cqZAp">
          <node concept="3cpWsn" id="HdxW7q$dx0" role="3cpWs9">
            <property role="TrG5h" value="mapper" />
            <node concept="3uibUv" id="HdxW7q$dx1" role="1tU5fm">
              <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
            </node>
            <node concept="2YIFZM" id="HdxW7q$dx2" role="33vP2m">
              <ref role="37wK5l" node="5s497VqteR6" resolve="variablesMapper" />
              <ref role="1Pybhc" node="3OPtF02T8yx" resolve="Mappers" />
              <node concept="2ShNRf" id="HdxW7q$dx3" role="37wK5m">
                <node concept="YeOm9" id="HdxW7q$dx4" role="2ShVmc">
                  <node concept="1Y3b0j" id="HdxW7q$dx5" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" node="3OPtF031GQe" resolve="Mappers.MapperDelegate" />
                    <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="HdxW7q$dx6" role="1B3o_S" />
                    <node concept="2tJIrI" id="HdxW7q$dx7" role="jymVt" />
                    <node concept="3clFb_" id="HdxW7q$dx8" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="map" />
                      <node concept="37vLTG" id="HdxW7q$dx9" role="3clF46">
                        <property role="TrG5h" value="var" />
                        <node concept="3uibUv" id="HdxW7q$dxa" role="1tU5fm">
                          <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="HdxW7q$dxb" role="3clF46">
                        <property role="TrG5h" value="fallback" />
                        <node concept="3uibUv" id="HdxW7q$dxc" role="1tU5fm">
                          <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="HdxW7q$dxd" role="1B3o_S" />
                      <node concept="3clFbS" id="HdxW7q$dxe" role="3clF47">
                        <node concept="3clFbH" id="5PpdwMf$9hm" role="3cqZAp" />
                        <node concept="1DcWWT" id="HdxW7q$dxf" role="3cqZAp">
                          <node concept="3clFbS" id="HdxW7q$dxg" role="2LFqv$">
                            <node concept="3clFbJ" id="HdxW7q$dxh" role="3cqZAp">
                              <node concept="3clFbS" id="HdxW7q$dxi" role="3clFbx">
                                <node concept="3SKdUt" id="HdxW7q$dxj" role="3cqZAp">
                                  <node concept="3SKdUq" id="HdxW7q$dxk" role="3SKWNk">
                                    <property role="3SKdUp" value="TODO need better generic support in Node inteface" />
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="HdxW7q$dxl" role="3cqZAp">
                                  <node concept="3cpWsn" id="HdxW7q$dxm" role="3cpWs9">
                                    <property role="TrG5h" value="node" />
                                    <node concept="3uibUv" id="HdxW7q$dxn" role="1tU5fm">
                                      <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
                                    </node>
                                    <node concept="2OqwBi" id="HdxW7q$dxo" role="33vP2m">
                                      <node concept="37vLTw" id="HdxW7q$dxp" role="2Oq$k0">
                                        <ref role="3cqZAo" node="HdxW7q$dxL" resolve="bnd" />
                                      </node>
                                      <node concept="liA8E" id="HdxW7q$dxq" role="2OqNvi">
                                        <ref role="37wK5l" to="jfki:~Substitution.Binding.node()" resolve="node" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="HdxW7q$dxr" role="3cqZAp">
                                  <node concept="3clFbS" id="HdxW7q$dxs" role="3clFbx">
                                    <node concept="3cpWs6" id="HdxW7q$dxt" role="3cqZAp">
                                      <node concept="2OqwBi" id="HdxW7q$dxu" role="3cqZAk">
                                        <node concept="1eOMI4" id="HdxW7q$dxv" role="2Oq$k0">
                                          <node concept="10QFUN" id="HdxW7q$dxw" role="1eOMHV">
                                            <node concept="3uibUv" id="HdxW7q$dxx" role="10QFUM">
                                              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                                              <node concept="3qTvmN" id="HdxW7q$dxy" role="11_B2D" />
                                            </node>
                                            <node concept="37vLTw" id="HdxW7q$dxz" role="10QFUP">
                                              <ref role="3cqZAo" node="HdxW7q$dxm" resolve="node" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="HdxW7q$dx$" role="2OqNvi">
                                          <ref role="37wK5l" node="1bm7a6EXvNI" resolve="copyRecursively" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2ZW3vV" id="HdxW7q$dx_" role="3clFbw">
                                    <node concept="3uibUv" id="HdxW7q$dxA" role="2ZW6by">
                                      <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                                    </node>
                                    <node concept="37vLTw" id="HdxW7q$dxB" role="2ZW6bz">
                                      <ref role="3cqZAo" node="HdxW7q$dxm" resolve="node" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="17R0WA" id="HdxW7q$dxC" role="3clFbw">
                                <node concept="2OqwBi" id="HdxW7q$dxD" role="3uHU7w">
                                  <node concept="37vLTw" id="HdxW7q$dxE" role="2Oq$k0">
                                    <ref role="3cqZAo" node="HdxW7q$dx9" resolve="var" />
                                  </node>
                                  <node concept="liA8E" id="HdxW7q$dxF" role="2OqNvi">
                                    <ref role="37wK5l" node="uNmovXiEdQ" resolve="name" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="HdxW7q$dxG" role="3uHU7B">
                                  <node concept="2OqwBi" id="HdxW7q$dxH" role="2Oq$k0">
                                    <node concept="37vLTw" id="HdxW7q$dxI" role="2Oq$k0">
                                      <ref role="3cqZAo" node="HdxW7q$dxL" resolve="bnd" />
                                    </node>
                                    <node concept="liA8E" id="HdxW7q$dxJ" role="2OqNvi">
                                      <ref role="37wK5l" to="jfki:~Substitution.Binding.var()" resolve="var" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="HdxW7q$dxK" role="2OqNvi">
                                    <ref role="37wK5l" to="jfki:~Var.name()" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="HdxW7q$dxL" role="1Duv9x">
                            <property role="TrG5h" value="bnd" />
                            <node concept="3uibUv" id="HdxW7q$dxM" role="1tU5fm">
                              <ref role="3uigEE" to="jfki:~Substitution.Binding" resolve="Substitution.Binding" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="HdxW7q$dxN" role="1DdaDG">
                            <node concept="37vLTw" id="HdxW7q$dxO" role="2Oq$k0">
                              <ref role="3cqZAo" node="HdxW7q$dwL" resolve="subs" />
                            </node>
                            <node concept="liA8E" id="HdxW7q$dxP" role="2OqNvi">
                              <ref role="37wK5l" to="jfki:~Substitution.bindings()" resolve="bindings" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="HdxW7q$dxQ" role="3cqZAp">
                          <node concept="2OqwBi" id="HdxW7q$dxR" role="3clFbG">
                            <node concept="37vLTw" id="HdxW7q$dxS" role="2Oq$k0">
                              <ref role="3cqZAo" node="HdxW7q$dx9" resolve="var" />
                            </node>
                            <node concept="liA8E" id="HdxW7q$dxT" role="2OqNvi">
                              <ref role="37wK5l" node="3OPtF02ULUN" resolve="mapRecursively" />
                              <node concept="37vLTw" id="HdxW7q$dxU" role="37wK5m">
                                <ref role="3cqZAo" node="HdxW7q$dxb" resolve="fallback" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="HdxW7q$dxV" role="2AJF6D">
                        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                      </node>
                      <node concept="3uibUv" id="HdxW7q$dxW" role="3clF45">
                        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                        <node concept="3qTvmN" id="HdxW7q$dxX" role="11_B2D" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="HdxW7q$dxY" role="jymVt" />
                    <node concept="3uibUv" id="HdxW7q$dxZ" role="2Ghqu4">
                      <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="HdxW7q$dy0" role="3cqZAp" />
        <node concept="3SKdUt" id="HdxW7q$dy1" role="3cqZAp">
          <node concept="3SKdUq" id="HdxW7q$dy2" role="3SKWNk">
            <property role="3SKdUp" value="TODO better generic support" />
          </node>
        </node>
        <node concept="3clFbF" id="HdxW7q$dy3" role="3cqZAp">
          <node concept="2OqwBi" id="HdxW7q$dy5" role="3clFbG">
            <node concept="37vLTw" id="HdxW7q$dy6" role="2Oq$k0">
              <ref role="3cqZAo" node="HdxW7q$dyh" resolve="replace" />
            </node>
            <node concept="liA8E" id="HdxW7q$dy7" role="2OqNvi">
              <ref role="37wK5l" node="3OPtF02Tjpr" resolve="mapRecursively" />
              <node concept="37vLTw" id="HdxW7q$dy8" role="37wK5m">
                <ref role="3cqZAo" node="HdxW7q$dx0" resolve="mapper" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="HdxW7q$dyb" role="jymVt" />
    <node concept="3Tm1VV" id="HdxW7q$dyc" role="1B3o_S" />
    <node concept="312cEg" id="HdxW7q$dyd" role="jymVt">
      <property role="TrG5h" value="pattern" />
      <node concept="3Tm6S6" id="HdxW7q$dye" role="1B3o_S" />
      <node concept="3uibUv" id="HdxW7q$dyf" role="1tU5fm">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
        <node concept="3qTvmN" id="HdxW7q$dyg" role="11_B2D" />
      </node>
    </node>
    <node concept="312cEg" id="HdxW7q$dyh" role="jymVt">
      <property role="TrG5h" value="replace" />
      <node concept="3Tm6S6" id="HdxW7q$dyi" role="1B3o_S" />
      <node concept="3uibUv" id="HdxW7q$dyj" role="1tU5fm">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
        <node concept="3qTvmN" id="HdxW7q$dyk" role="11_B2D" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5PpdwMfyOkX">
    <property role="TrG5h" value="PatternProcessor" />
    <node concept="2tJIrI" id="5PpdwMfyOkY" role="jymVt" />
    <node concept="2YIFZL" id="5PpdwMfyOkZ" role="jymVt">
      <property role="TrG5h" value="recursiveWithPatterns" />
      <node concept="37vLTG" id="5PpdwMfyOl0" role="3clF46">
        <property role="TrG5h" value="matcher" />
        <node concept="8X2XB" id="5PpdwMfyOl1" role="1tU5fm">
          <node concept="3uibUv" id="5PpdwMfyOl2" role="8Xvag">
            <ref role="3uigEE" node="HdxW7q$dvC" resolve="TreeMatcher" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5PpdwMfyOl3" role="3clF45">
        <ref role="3uigEE" node="5PpdwMfyOkX" resolve="PatternProcessor" />
      </node>
      <node concept="3Tm1VV" id="5PpdwMfyOl4" role="1B3o_S" />
      <node concept="3clFbS" id="5PpdwMfyOl5" role="3clF47">
        <node concept="3clFbF" id="5PpdwMfyOl6" role="3cqZAp">
          <node concept="2ShNRf" id="5PpdwMfyOl7" role="3clFbG">
            <node concept="1pGfFk" id="5PpdwMfyOl8" role="2ShVmc">
              <ref role="37wK5l" node="5PpdwMfyOlp" resolve="PatternProcessor" />
              <node concept="3clFbT" id="5PpdwMfyOl9" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="37vLTw" id="5PpdwMfyOla" role="37wK5m">
                <ref role="3cqZAo" node="5PpdwMfyOl0" resolve="matcher" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PpdwMfyOlb" role="jymVt" />
    <node concept="2YIFZL" id="5PpdwMfyOlc" role="jymVt">
      <property role="TrG5h" value="nonRecursiveWithPatterns" />
      <node concept="37vLTG" id="5PpdwMfyOld" role="3clF46">
        <property role="TrG5h" value="matcher" />
        <node concept="8X2XB" id="5PpdwMfyOle" role="1tU5fm">
          <node concept="3uibUv" id="5PpdwMfyOlf" role="8Xvag">
            <ref role="3uigEE" node="HdxW7q$dvC" resolve="TreeMatcher" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5PpdwMfyOlg" role="3clF45">
        <ref role="3uigEE" node="5PpdwMfyOkX" resolve="PatternProcessor" />
      </node>
      <node concept="3Tm1VV" id="5PpdwMfyOlh" role="1B3o_S" />
      <node concept="3clFbS" id="5PpdwMfyOli" role="3clF47">
        <node concept="3clFbF" id="5PpdwMfyOlj" role="3cqZAp">
          <node concept="2ShNRf" id="5PpdwMfyOlk" role="3clFbG">
            <node concept="1pGfFk" id="5PpdwMfyOll" role="2ShVmc">
              <ref role="37wK5l" node="5PpdwMfyOlp" resolve="PatternProcessor" />
              <node concept="3clFbT" id="5PpdwMfyOlm" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="37vLTw" id="5PpdwMfyOln" role="37wK5m">
                <ref role="3cqZAo" node="5PpdwMfyOld" resolve="matcher" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PpdwMfyOlo" role="jymVt" />
    <node concept="3clFbW" id="5PpdwMfyOlp" role="jymVt">
      <node concept="3cqZAl" id="5PpdwMfyOlq" role="3clF45" />
      <node concept="3Tm1VV" id="5PpdwMfyOlr" role="1B3o_S" />
      <node concept="3clFbS" id="5PpdwMfyOls" role="3clF47">
        <node concept="3clFbF" id="5PpdwMfyOlt" role="3cqZAp">
          <node concept="37vLTI" id="5PpdwMfyOlu" role="3clFbG">
            <node concept="37vLTw" id="5PpdwMfyOlv" role="37vLTx">
              <ref role="3cqZAo" node="5PpdwMfyOlA" resolve="recursive" />
            </node>
            <node concept="2OqwBi" id="5PpdwMfyOlw" role="37vLTJ">
              <node concept="Xjq3P" id="5PpdwMfyOlx" role="2Oq$k0" />
              <node concept="2OwXpG" id="5PpdwMfyOly" role="2OqNvi">
                <ref role="2Oxat5" node="5PpdwMfyOpN" resolve="recursive" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5PpdwMfyOlz" role="3cqZAp">
          <node concept="1rXfSq" id="5PpdwMfyOl$" role="3clFbG">
            <ref role="37wK5l" node="5PpdwMfyOna" resolve="addPatterns" />
            <node concept="37vLTw" id="5PpdwMfyOl_" role="37wK5m">
              <ref role="3cqZAo" node="5PpdwMfyOlC" resolve="matcher" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5PpdwMfyOlA" role="3clF46">
        <property role="TrG5h" value="recursive" />
        <node concept="10P_77" id="5PpdwMfyOlB" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5PpdwMfyOlC" role="3clF46">
        <property role="TrG5h" value="matcher" />
        <node concept="8X2XB" id="5PpdwMfyOlD" role="1tU5fm">
          <node concept="3uibUv" id="5PpdwMfyOlE" role="8Xvag">
            <ref role="3uigEE" node="HdxW7q$dvC" resolve="TreeMatcher" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PpdwMfyOlF" role="jymVt" />
    <node concept="3clFb_" id="5PpdwMfyOlG" role="jymVt">
      <property role="TrG5h" value="process" />
      <node concept="37vLTG" id="5PpdwMfyOlH" role="3clF46">
        <property role="TrG5h" value="tp" />
        <node concept="3uibUv" id="5PpdwMfyOlI" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="5PpdwMfyOlJ" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="5PpdwMfyOlK" role="3clF45">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
        <node concept="3qTvmN" id="5PpdwMfyOlL" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="5PpdwMfyOlM" role="1B3o_S" />
      <node concept="3clFbS" id="5PpdwMfyOlN" role="3clF47">
        <node concept="3cpWs8" id="5PpdwMfyOlO" role="3cqZAp">
          <node concept="3cpWsn" id="5PpdwMfyOlP" role="3cpWs9">
            <property role="TrG5h" value="activated" />
            <node concept="3uibUv" id="5PpdwMfyOlQ" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~Set" resolve="Set" />
              <node concept="3uibUv" id="5PpdwMfyOlR" role="11_B2D">
                <ref role="3uigEE" node="HdxW7q$dvC" resolve="TreeMatcher" />
              </node>
            </node>
            <node concept="2ShNRf" id="5PpdwMfyOlS" role="33vP2m">
              <node concept="1pGfFk" id="5PpdwMfyOlT" role="2ShVmc">
                <ref role="37wK5l" to="k7g3:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="5PpdwMfyOlU" role="1pMfVU">
                  <ref role="3uigEE" node="HdxW7q$dvC" resolve="TreeMatcher" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PpdwMfyOlV" role="3cqZAp">
          <node concept="3cpWsn" id="5PpdwMfyOlW" role="3cpWs9">
            <property role="TrG5h" value="source" />
            <node concept="3uibUv" id="5PpdwMfyOlX" role="1tU5fm">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
              <node concept="3qTvmN" id="5PpdwMfyOlY" role="11_B2D" />
            </node>
            <node concept="37vLTw" id="5PpdwMfyOlZ" role="33vP2m">
              <ref role="3cqZAo" node="5PpdwMfyOlH" resolve="tp" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PpdwMfyOm0" role="3cqZAp">
          <node concept="3cpWsn" id="5PpdwMfyOm1" role="3cpWs9">
            <property role="TrG5h" value="active" />
            <node concept="10P_77" id="5PpdwMfyOm2" role="1tU5fm" />
          </node>
        </node>
        <node concept="MpOyq" id="5PpdwMfyOm3" role="3cqZAp">
          <node concept="3clFbS" id="5PpdwMfyOm4" role="2LFqv$">
            <node concept="3clFbF" id="5PpdwMfyOm5" role="3cqZAp">
              <node concept="37vLTI" id="5PpdwMfyOm6" role="3clFbG">
                <node concept="3clFbT" id="5PpdwMfyOm7" role="37vLTx">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="37vLTw" id="5PpdwMfyOm8" role="37vLTJ">
                  <ref role="3cqZAo" node="5PpdwMfyOm1" resolve="active" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="5PpdwMfyOm9" role="3cqZAp">
              <node concept="3clFbS" id="5PpdwMfyOma" role="2LFqv$">
                <node concept="3clFbJ" id="5PpdwMfyOmb" role="3cqZAp">
                  <node concept="3clFbS" id="5PpdwMfyOmc" role="3clFbx">
                    <node concept="3SKdUt" id="5PpdwMfyOmd" role="3cqZAp">
                      <node concept="3SKdUq" id="5PpdwMfyOme" role="3SKWNk">
                        <property role="3SKdUp" value="TODO record activation as pair (source, matcher)" />
                      </node>
                    </node>
                    <node concept="3N13vt" id="5PpdwMfyOmf" role="3cqZAp" />
                  </node>
                  <node concept="2OqwBi" id="5PpdwMfyOmg" role="3clFbw">
                    <node concept="37vLTw" id="5PpdwMfyOmh" role="2Oq$k0">
                      <ref role="3cqZAo" node="5PpdwMfyOlP" resolve="activated" />
                    </node>
                    <node concept="liA8E" id="5PpdwMfyOmi" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~Set.contains(java.lang.Object):boolean" resolve="contains" />
                      <node concept="37vLTw" id="5PpdwMfyOmj" role="37wK5m">
                        <ref role="3cqZAo" node="5PpdwMfyOmI" resolve="matcher" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5PpdwMfyOmk" role="3cqZAp">
                  <node concept="3clFbS" id="5PpdwMfyOml" role="3clFbx">
                    <node concept="3clFbF" id="5PpdwMfyOmm" role="3cqZAp">
                      <node concept="37vLTI" id="5PpdwMfyOmn" role="3clFbG">
                        <node concept="1rXfSq" id="5PpdwMfyOmo" role="37vLTx">
                          <ref role="37wK5l" node="5PpdwMfyOoI" resolve="replace" />
                          <node concept="37vLTw" id="5PpdwMfyOmp" role="37wK5m">
                            <ref role="3cqZAo" node="5PpdwMfyOlW" resolve="source" />
                          </node>
                          <node concept="37vLTw" id="5PpdwMfyOmq" role="37wK5m">
                            <ref role="3cqZAo" node="5PpdwMfyOmI" resolve="matcher" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="5PpdwMfyOmr" role="37vLTJ">
                          <ref role="3cqZAo" node="5PpdwMfyOlW" resolve="source" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5PpdwMfyOms" role="3cqZAp">
                      <node concept="2OqwBi" id="5PpdwMfyOmt" role="3clFbG">
                        <node concept="37vLTw" id="5PpdwMfyOmu" role="2Oq$k0">
                          <ref role="3cqZAo" node="5PpdwMfyOlP" resolve="activated" />
                        </node>
                        <node concept="liA8E" id="5PpdwMfyOmv" role="2OqNvi">
                          <ref role="37wK5l" to="k7g3:~Set.add(java.lang.Object):boolean" resolve="add" />
                          <node concept="37vLTw" id="5PpdwMfyOmw" role="37wK5m">
                            <ref role="3cqZAo" node="5PpdwMfyOmI" resolve="matcher" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5PpdwMfyOmx" role="3cqZAp">
                      <node concept="37vLTI" id="5PpdwMfyOmy" role="3clFbG">
                        <node concept="3clFbT" id="5PpdwMfyOmz" role="37vLTx">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="37vLTw" id="5PpdwMfyOm$" role="37vLTJ">
                          <ref role="3cqZAo" node="5PpdwMfyOm1" resolve="active" />
                        </node>
                      </node>
                    </node>
                    <node concept="3zACq4" id="5PpdwMfyOm_" role="3cqZAp" />
                  </node>
                  <node concept="3K4zz7" id="5PpdwMfyOmA" role="3clFbw">
                    <node concept="37vLTw" id="5PpdwMfyOmB" role="3K4Cdx">
                      <ref role="3cqZAo" node="5PpdwMfyOpN" resolve="recursive" />
                    </node>
                    <node concept="1rXfSq" id="5PpdwMfyOmC" role="3K4E3e">
                      <ref role="37wK5l" node="5PpdwMfyOnL" resolve="matchesAny" />
                      <node concept="37vLTw" id="5PpdwMfyOmD" role="37wK5m">
                        <ref role="3cqZAo" node="5PpdwMfyOlW" resolve="source" />
                      </node>
                      <node concept="37vLTw" id="5PpdwMfyOmE" role="37wK5m">
                        <ref role="3cqZAo" node="5PpdwMfyOmI" resolve="matcher" />
                      </node>
                    </node>
                    <node concept="1rXfSq" id="5PpdwMfyOmF" role="3K4GZi">
                      <ref role="37wK5l" node="5PpdwMfyOov" resolve="matchesOutline" />
                      <node concept="37vLTw" id="5PpdwMfyOmG" role="37wK5m">
                        <ref role="3cqZAo" node="5PpdwMfyOlW" resolve="source" />
                      </node>
                      <node concept="37vLTw" id="5PpdwMfyOmH" role="37wK5m">
                        <ref role="3cqZAo" node="5PpdwMfyOmI" resolve="matcher" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5PpdwMfyOmI" role="1Duv9x">
                <property role="TrG5h" value="matcher" />
                <node concept="3uibUv" id="5PpdwMfyOmJ" role="1tU5fm">
                  <ref role="3uigEE" node="HdxW7q$dvC" resolve="TreeMatcher" />
                </node>
              </node>
              <node concept="37vLTw" id="5PpdwMfyOmK" role="1DdaDG">
                <ref role="3cqZAo" node="5PpdwMfyOpE" resolve="patterns" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="5PpdwMfyOmL" role="MpTkK">
            <ref role="3cqZAo" node="5PpdwMfyOm1" resolve="active" />
          </node>
        </node>
        <node concept="3clFbH" id="5PpdwMfyOmM" role="3cqZAp" />
        <node concept="3cpWs6" id="5PpdwMfyOn7" role="3cqZAp">
          <node concept="37vLTw" id="5PpdwMfyOn8" role="3cqZAk">
            <ref role="3cqZAo" node="5PpdwMfyOlW" resolve="source" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PpdwMfyOn9" role="jymVt" />
    <node concept="3clFb_" id="5PpdwMfyOna" role="jymVt">
      <property role="TrG5h" value="addPatterns" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5PpdwMfyOnb" role="3clF47">
        <node concept="1Dw8fO" id="5PpdwMfyOnc" role="3cqZAp">
          <node concept="3clFbS" id="5PpdwMfyOnd" role="2LFqv$">
            <node concept="3clFbF" id="5PpdwMfyOne" role="3cqZAp">
              <node concept="2OqwBi" id="5PpdwMfyOnf" role="3clFbG">
                <node concept="Xjq3P" id="5PpdwMfyOng" role="2Oq$k0" />
                <node concept="liA8E" id="5PpdwMfyOnh" role="2OqNvi">
                  <ref role="37wK5l" node="5PpdwMfyOn_" resolve="addPattern" />
                  <node concept="AH0OO" id="5PpdwMfyOni" role="37wK5m">
                    <node concept="37vLTw" id="5PpdwMfyOnj" role="AHEQo">
                      <ref role="3cqZAo" node="5PpdwMfyOnl" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="5PpdwMfyOnk" role="AHHXb">
                      <ref role="3cqZAo" node="5PpdwMfyOnv" resolve="matcher" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5PpdwMfyOnl" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5PpdwMfyOnm" role="1tU5fm" />
            <node concept="3cmrfG" id="5PpdwMfyOnn" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="5PpdwMfyOno" role="1Dwp0S">
            <node concept="2OqwBi" id="5PpdwMfyOnp" role="3uHU7w">
              <node concept="37vLTw" id="5PpdwMfyOnq" role="2Oq$k0">
                <ref role="3cqZAo" node="5PpdwMfyOnv" resolve="matcher" />
              </node>
              <node concept="1Rwk04" id="5PpdwMfyOnr" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="5PpdwMfyOns" role="3uHU7B">
              <ref role="3cqZAo" node="5PpdwMfyOnl" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="5PpdwMfyOnt" role="1Dwrff">
            <node concept="37vLTw" id="5PpdwMfyOnu" role="2$L3a6">
              <ref role="3cqZAo" node="5PpdwMfyOnl" resolve="i" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5PpdwMfyOnv" role="3clF46">
        <property role="TrG5h" value="matcher" />
        <node concept="8X2XB" id="5PpdwMfyOnw" role="1tU5fm">
          <node concept="3uibUv" id="5PpdwMfyOnx" role="8Xvag">
            <ref role="3uigEE" node="HdxW7q$dvC" resolve="TreeMatcher" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5PpdwMfyOny" role="3clF45" />
      <node concept="3Tm6S6" id="5PpdwMfyOnz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5PpdwMfyOn$" role="jymVt" />
    <node concept="3clFb_" id="5PpdwMfyOn_" role="jymVt">
      <property role="TrG5h" value="addPattern" />
      <node concept="37vLTG" id="5PpdwMfyOnA" role="3clF46">
        <property role="TrG5h" value="matcher" />
        <node concept="3uibUv" id="5PpdwMfyOnB" role="1tU5fm">
          <ref role="3uigEE" node="HdxW7q$dvC" resolve="TreeMatcher" />
        </node>
      </node>
      <node concept="3cqZAl" id="5PpdwMfyOnC" role="3clF45" />
      <node concept="3Tm6S6" id="5PpdwMfyOnD" role="1B3o_S" />
      <node concept="3clFbS" id="5PpdwMfyOnE" role="3clF47">
        <node concept="3clFbF" id="5PpdwMfyOnF" role="3cqZAp">
          <node concept="2OqwBi" id="5PpdwMfyOnG" role="3clFbG">
            <node concept="37vLTw" id="5PpdwMfyOnH" role="2Oq$k0">
              <ref role="3cqZAo" node="5PpdwMfyOpE" resolve="patterns" />
            </node>
            <node concept="liA8E" id="5PpdwMfyOnI" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~List.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="5PpdwMfyOnJ" role="37wK5m">
                <ref role="3cqZAo" node="5PpdwMfyOnA" resolve="matcher" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PpdwMfyOnK" role="jymVt" />
    <node concept="3clFb_" id="5PpdwMfyOnL" role="jymVt">
      <property role="TrG5h" value="matchesAny" />
      <node concept="37vLTG" id="5PpdwMfyOnM" role="3clF46">
        <property role="TrG5h" value="source" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5PpdwMfyOnN" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="5PpdwMfyOnO" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="5PpdwMfyOnP" role="3clF46">
        <property role="TrG5h" value="matcher" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5PpdwMfyOnQ" role="1tU5fm">
          <ref role="3uigEE" node="HdxW7q$dvC" resolve="TreeMatcher" />
        </node>
      </node>
      <node concept="10P_77" id="5PpdwMfyOnR" role="3clF45" />
      <node concept="3Tm6S6" id="5PpdwMfyOnS" role="1B3o_S" />
      <node concept="3clFbS" id="5PpdwMfyOnT" role="3clF47">
        <node concept="3SKdUt" id="5PpdwMfyOnU" role="3cqZAp">
          <node concept="3SKdUq" id="5PpdwMfyOnV" role="3SKWNk">
            <property role="3SKdUp" value="TODO: non-branches?" />
          </node>
        </node>
        <node concept="3clFbJ" id="5PpdwMfyOnW" role="3cqZAp">
          <node concept="3clFbS" id="5PpdwMfyOnX" role="3clFbx">
            <node concept="3cpWs8" id="5PpdwMfyOnY" role="3cqZAp">
              <node concept="3cpWsn" id="5PpdwMfyOnZ" role="3cpWs9">
                <property role="TrG5h" value="finder" />
                <node concept="3uibUv" id="5PpdwMfyOo0" role="1tU5fm">
                  <ref role="3uigEE" node="3OPtF03gqwb" resolve="Finders.IChildrenFinder" />
                </node>
                <node concept="2YIFZM" id="5PpdwMfyOo1" role="33vP2m">
                  <ref role="37wK5l" node="3OPtF03gI4I" resolve="findChildrenByCondition" />
                  <ref role="1Pybhc" node="3JgCwkqd3K7" resolve="Finders" />
                  <node concept="37vLTw" id="5PpdwMfyOo2" role="37wK5m">
                    <ref role="3cqZAo" node="5PpdwMfyOnM" resolve="source" />
                  </node>
                  <node concept="2ShNRf" id="5PpdwMfyOo3" role="37wK5m">
                    <node concept="YeOm9" id="5PpdwMfyOo4" role="2ShVmc">
                      <node concept="1Y3b0j" id="5PpdwMfyOo5" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
                        <ref role="1Y3XeK" node="3OPtF03axxl" resolve="Finders.Condition" />
                        <node concept="3Tm1VV" id="5PpdwMfyOo6" role="1B3o_S" />
                        <node concept="3clFb_" id="5PpdwMfyOo7" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="matches" />
                          <node concept="37vLTG" id="5PpdwMfyOo8" role="3clF46">
                            <property role="TrG5h" value="tp" />
                            <node concept="3uibUv" id="5PpdwMfyOo9" role="1tU5fm">
                              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                              <node concept="3qTvmN" id="5PpdwMfyOoa" role="11_B2D" />
                            </node>
                          </node>
                          <node concept="10P_77" id="5PpdwMfyOob" role="3clF45" />
                          <node concept="3Tm1VV" id="5PpdwMfyOoc" role="1B3o_S" />
                          <node concept="3clFbS" id="5PpdwMfyOod" role="3clF47">
                            <node concept="3clFbF" id="5PpdwMfyOoe" role="3cqZAp">
                              <node concept="2OqwBi" id="5PpdwMfyOof" role="3clFbG">
                                <node concept="37vLTw" id="5PpdwMfyOog" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5PpdwMfyOnP" resolve="matcher" />
                                </node>
                                <node concept="liA8E" id="5PpdwMfyOoh" role="2OqNvi">
                                  <ref role="37wK5l" node="HdxW7q$dwq" resolve="matches" />
                                  <node concept="37vLTw" id="5PpdwMfyOoi" role="37wK5m">
                                    <ref role="3cqZAo" node="5PpdwMfyOo8" resolve="tp" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3uibUv" id="5PpdwMfyOoj" role="2Ghqu4">
                          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                          <node concept="3qTvmN" id="5PpdwMfyOok" role="11_B2D" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5PpdwMfyOol" role="3cqZAp">
              <node concept="2OqwBi" id="5PpdwMfyOom" role="3cqZAk">
                <node concept="37vLTw" id="5PpdwMfyOon" role="2Oq$k0">
                  <ref role="3cqZAo" node="5PpdwMfyOnZ" resolve="finder" />
                </node>
                <node concept="liA8E" id="5PpdwMfyOoo" role="2OqNvi">
                  <ref role="37wK5l" node="3JgCwkqkUKY" resolve="found" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="5PpdwMfyOop" role="3clFbw">
            <node concept="3uibUv" id="104EUzGg20K" role="2ZW6by">
              <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
            </node>
            <node concept="37vLTw" id="5PpdwMfyOor" role="2ZW6bz">
              <ref role="3cqZAo" node="5PpdwMfyOnM" resolve="source" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5PpdwMfyOos" role="3cqZAp">
          <node concept="3clFbT" id="5PpdwMfyOot" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PpdwMfyOou" role="jymVt" />
    <node concept="3clFb_" id="5PpdwMfyOov" role="jymVt">
      <property role="TrG5h" value="matchesOutline" />
      <node concept="37vLTG" id="5PpdwMfyOow" role="3clF46">
        <property role="TrG5h" value="source" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5PpdwMfyOox" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="5PpdwMfyOoy" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="5PpdwMfyOoz" role="3clF46">
        <property role="TrG5h" value="matcher" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5PpdwMfyOo$" role="1tU5fm">
          <ref role="3uigEE" node="HdxW7q$dvC" resolve="TreeMatcher" />
        </node>
      </node>
      <node concept="10P_77" id="5PpdwMfyOo_" role="3clF45" />
      <node concept="3Tm6S6" id="5PpdwMfyOoA" role="1B3o_S" />
      <node concept="3clFbS" id="5PpdwMfyOoB" role="3clF47">
        <node concept="3clFbF" id="5PpdwMfyOoC" role="3cqZAp">
          <node concept="2OqwBi" id="5PpdwMfyOoD" role="3clFbG">
            <node concept="37vLTw" id="5PpdwMfyOoE" role="2Oq$k0">
              <ref role="3cqZAo" node="5PpdwMfyOoz" resolve="matcher" />
            </node>
            <node concept="liA8E" id="5PpdwMfyOoF" role="2OqNvi">
              <ref role="37wK5l" node="HdxW7q$dwq" resolve="matches" />
              <node concept="37vLTw" id="5PpdwMfyOoG" role="37wK5m">
                <ref role="3cqZAo" node="5PpdwMfyOow" resolve="source" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PpdwMfyOoH" role="jymVt" />
    <node concept="3clFb_" id="5PpdwMfyOoI" role="jymVt">
      <property role="TrG5h" value="replace" />
      <node concept="37vLTG" id="5PpdwMfyOoJ" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="5PpdwMfyOoK" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
          <node concept="3qTvmN" id="5PpdwMfyOoL" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="5PpdwMfyOoM" role="3clF46">
        <property role="TrG5h" value="matcher" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5PpdwMfyOoN" role="1tU5fm">
          <ref role="3uigEE" node="HdxW7q$dvC" resolve="TreeMatcher" />
        </node>
      </node>
      <node concept="3uibUv" id="5PpdwMfyOoO" role="3clF45">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
        <node concept="3qTvmN" id="5PpdwMfyOoP" role="11_B2D" />
      </node>
      <node concept="3Tm6S6" id="5PpdwMfyOoQ" role="1B3o_S" />
      <node concept="3clFbS" id="5PpdwMfyOoR" role="3clF47">
        <node concept="3SKdUt" id="5PpdwMfyOoS" role="3cqZAp">
          <node concept="3SKdUq" id="5PpdwMfyOoT" role="3SKWNk">
            <property role="3SKdUp" value="FIXME process ALL actually. avoid &quot;node&quot; reference" />
          </node>
        </node>
        <node concept="3cpWs8" id="5PpdwMfyOoU" role="3cqZAp">
          <node concept="3cpWsn" id="5PpdwMfyOoV" role="3cpWs9">
            <property role="TrG5h" value="mapper" />
            <node concept="3uibUv" id="5PpdwMfyOoW" role="1tU5fm">
              <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
            </node>
            <node concept="2YIFZM" id="5PpdwMfyOoX" role="33vP2m">
              <ref role="1Pybhc" node="3OPtF02T8yx" resolve="Mappers" />
              <ref role="37wK5l" node="3OPtF032av3" resolve="childrenMapper" />
              <node concept="Xl_RD" id="5PpdwMfyOoY" role="37wK5m">
                <property role="Xl_RC" value="node" />
              </node>
              <node concept="2ShNRf" id="5PpdwMfyOoZ" role="37wK5m">
                <node concept="YeOm9" id="5PpdwMfyOp0" role="2ShVmc">
                  <node concept="1Y3b0j" id="5PpdwMfyOp1" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" node="3OPtF031GQe" resolve="Mappers.MapperDelegate" />
                    <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="2tJIrI" id="5PpdwMfyOp2" role="jymVt" />
                    <node concept="3clFb_" id="5PpdwMfyOp3" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="map" />
                      <node concept="37vLTG" id="5PpdwMfyOp4" role="3clF46">
                        <property role="TrG5h" value="tp" />
                        <node concept="3uibUv" id="5PpdwMfyOp5" role="1tU5fm">
                          <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
                          <node concept="3qTvmN" id="5PpdwMfyOp6" role="11_B2D" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5PpdwMfyOp7" role="3clF46">
                        <property role="TrG5h" value="fallback" />
                        <node concept="3uibUv" id="5PpdwMfyOp8" role="1tU5fm">
                          <ref role="3uigEE" node="3OPtF02TdNT" resolve="ITreePart.Mapper" />
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="5PpdwMfyOp9" role="1B3o_S" />
                      <node concept="3uibUv" id="5PpdwMfyOpa" role="3clF45">
                        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="ITreePart" />
                        <node concept="3qTvmN" id="5PpdwMfyOpb" role="11_B2D" />
                      </node>
                      <node concept="3clFbS" id="5PpdwMfyOpc" role="3clF47">
                        <node concept="3clFbJ" id="5PpdwMfyOpd" role="3cqZAp">
                          <node concept="3clFbS" id="5PpdwMfyOpe" role="3clFbx">
                            <node concept="3cpWs6" id="5PpdwMfyOpf" role="3cqZAp">
                              <node concept="2OqwBi" id="5PpdwMfyOpg" role="3cqZAk">
                                <node concept="37vLTw" id="5PpdwMfyOph" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5PpdwMfyOoM" resolve="matcher" />
                                </node>
                                <node concept="liA8E" id="5PpdwMfyOpi" role="2OqNvi">
                                  <ref role="37wK5l" node="HdxW7q$dwC" resolve="replace" />
                                  <node concept="37vLTw" id="5PpdwMfyOpj" role="37wK5m">
                                    <ref role="3cqZAo" node="5PpdwMfyOp4" resolve="tp" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5PpdwMfyOpk" role="3clFbw">
                            <node concept="37vLTw" id="5PpdwMfyOpl" role="2Oq$k0">
                              <ref role="3cqZAo" node="5PpdwMfyOoM" resolve="matcher" />
                            </node>
                            <node concept="liA8E" id="5PpdwMfyOpm" role="2OqNvi">
                              <ref role="37wK5l" node="HdxW7q$dwq" resolve="matches" />
                              <node concept="37vLTw" id="5PpdwMfyOpn" role="37wK5m">
                                <ref role="3cqZAo" node="5PpdwMfyOp4" resolve="tp" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="5PpdwMfyOpo" role="3cqZAp">
                          <node concept="3K4zz7" id="5PpdwMfyOpp" role="3cqZAk">
                            <node concept="37vLTw" id="5PpdwMfyOpq" role="3K4GZi">
                              <ref role="3cqZAo" node="5PpdwMfyOp4" resolve="tp" />
                            </node>
                            <node concept="37vLTw" id="5PpdwMfyOpr" role="3K4Cdx">
                              <ref role="3cqZAo" node="5PpdwMfyOpN" resolve="recursive" />
                            </node>
                            <node concept="2OqwBi" id="5PpdwMfyOps" role="3K4E3e">
                              <node concept="37vLTw" id="5PpdwMfyOpt" role="2Oq$k0">
                                <ref role="3cqZAo" node="5PpdwMfyOp4" resolve="tp" />
                              </node>
                              <node concept="liA8E" id="5PpdwMfyOpu" role="2OqNvi">
                                <ref role="37wK5l" node="3OPtF02TqPB" resolve="mapRecursively" />
                                <node concept="37vLTw" id="5PpdwMfyOpv" role="37wK5m">
                                  <ref role="3cqZAo" node="5PpdwMfyOp7" resolve="fallback" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2tJIrI" id="5PpdwMfyOpw" role="jymVt" />
                    <node concept="3Tm1VV" id="5PpdwMfyOpx" role="1B3o_S" />
                    <node concept="3uibUv" id="5PpdwMfyOpy" role="2Ghqu4">
                      <ref role="3uigEE" node="1msb0mq9ID4" resolve="Branch" />
                      <node concept="3qTvmN" id="5PpdwMfyOpz" role="11_B2D" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5PpdwMfyOp$" role="3cqZAp">
          <node concept="2OqwBi" id="5PpdwMfyOp_" role="3clFbG">
            <node concept="37vLTw" id="5PpdwMfyOpA" role="2Oq$k0">
              <ref role="3cqZAo" node="5PpdwMfyOoV" resolve="mapper" />
            </node>
            <node concept="liA8E" id="5PpdwMfyOpB" role="2OqNvi">
              <ref role="37wK5l" node="3OPtF02TgQt" resolve="map" />
              <node concept="37vLTw" id="5PpdwMfyOpC" role="37wK5m">
                <ref role="3cqZAo" node="5PpdwMfyOoJ" resolve="source" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PpdwMfyOpD" role="jymVt" />
    <node concept="312cEg" id="5PpdwMfyOpE" role="jymVt">
      <property role="TrG5h" value="patterns" />
      <node concept="3Tm6S6" id="5PpdwMfyOpF" role="1B3o_S" />
      <node concept="3uibUv" id="5PpdwMfyOpG" role="1tU5fm">
        <ref role="3uigEE" to="k7g3:~List" resolve="List" />
        <node concept="3uibUv" id="5PpdwMfyOpH" role="11_B2D">
          <ref role="3uigEE" node="HdxW7q$dvC" resolve="TreeMatcher" />
        </node>
      </node>
      <node concept="2ShNRf" id="5PpdwMfyOpI" role="33vP2m">
        <node concept="1pGfFk" id="5PpdwMfyOpJ" role="2ShVmc">
          <ref role="37wK5l" to="k7g3:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="5PpdwMfyOpK" role="1pMfVU">
            <ref role="3uigEE" node="HdxW7q$dvC" resolve="TreeMatcher" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PpdwMfyOpL" role="jymVt" />
    <node concept="3Tm1VV" id="5PpdwMfyOpM" role="1B3o_S" />
    <node concept="312cEg" id="5PpdwMfyOpN" role="jymVt">
      <property role="TrG5h" value="recursive" />
      <node concept="3Tm6S6" id="5PpdwMfyOpO" role="1B3o_S" />
      <node concept="10P_77" id="5PpdwMfyOpP" role="1tU5fm" />
      <node concept="3clFbT" id="5PpdwMfyOpQ" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
  </node>
  <node concept="Qs71p" id="2q_78a95hAL">
    <property role="TrG5h" value="Action" />
    <node concept="QsSxf" id="2q_78a95hAM" role="Qtgdg">
      <property role="TrG5h" value="WALK" />
      <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="2q_78a95hAN" role="Qtgdg">
      <property role="TrG5h" value="CONTINUE" />
      <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="2q_78a95hAO" role="Qtgdg">
      <property role="TrG5h" value="STOP" />
      <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="3Tm1VV" id="2q_78a95hAP" role="1B3o_S" />
  </node>
</model>

