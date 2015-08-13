<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="f8dg" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:annotations(jetbrains.mps.jchr.runtime/)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="eifs" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:runtime(jetbrains.mps.jchr.runtime/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="yt73" ref="7526e0cf-1ce7-46f8-a555-9eca1e06c23b/java:jetbrains.mps.unification()" />
    <import index="eift" ref="a5478664-6b44-4c62-a9f7-434f8aa57eee/java:runtime()" />
    <import index="9js4" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:runtime.hash(jetbrains.mps.jchr.runtime/)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="bspi" ref="r:b094f86e-558c-4295-8b38-f6a26ad07b4f(jetbrains.mps.logic.constraint)" />
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
        <child id="1188214630783" name="value" index="2B76xF" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188214545140" name="jetbrains.mps.baseLanguage.structure.AnnotationInstanceValue" flags="ng" index="2B6LJw">
        <reference id="1188214555875" name="key" index="2B6OnR" />
        <child id="1188214607812" name="value" index="2B70Vg" />
      </concept>
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
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
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
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
  <node concept="3HP615" id="6njqcfQVO0n">
    <property role="TrG5h" value="UnificationSolver" />
    <node concept="2tJIrI" id="4OsiK2BAn9B" role="jymVt" />
    <node concept="3clFb_" id="4OsiK2BAlI6" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="4OsiK2BAm0x" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4OsiK2BAm4d" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="4OsiK2BAm7X" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4OsiK2BAm87" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3cqZAl" id="4OsiK2BAlI8" role="3clF45" />
      <node concept="3Tm1VV" id="4OsiK2BAlI9" role="1B3o_S" />
      <node concept="3clFbS" id="4OsiK2BAlIa" role="3clF47" />
      <node concept="2AHcQZ" id="4OsiK2BAnpo" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4OsiK2BAnsG" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="4OsiK2BALzP" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogCcGT" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogCcGI" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="4U_yxogCcGJ" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogCcGK" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogCcGL" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCd0t" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogCcGN" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogCcGO" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogCcGP" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogCcGQ" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4U_yxogCcGR" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogCcGS" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogCdk7" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogCdjW" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="4U_yxogCdjZ" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogCdk0" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogCdjX" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCdjY" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogCdk1" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogCdk2" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogCdk3" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogCdk4" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4U_yxogCdk5" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogCdk6" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogCeA5" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogCe_U" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="4U_yxogCe_V" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogCe_W" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogCe_X" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCf2Z" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogCe_Z" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogCeA0" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogCeA1" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogCeA2" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4U_yxogCeA3" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogCeA4" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6njqcfQVOwI" role="jymVt" />
    <node concept="3clFb_" id="4OsiK2BAnTP" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="4OsiK2BAohR" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4OsiK2BAohS" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="4OsiK2BAohT" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4OsiK2BAohU" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogCa6w" role="3clF45" />
      <node concept="3Tm1VV" id="4OsiK2BAnTS" role="1B3o_S" />
      <node concept="3clFbS" id="4OsiK2BAnTT" role="3clF47" />
      <node concept="2AHcQZ" id="4OsiK2BAoPZ" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4OsiK2BAoUv" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="4OsiK2BALAQ" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogCa3m" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogC9UH" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="4U_yxogC9UI" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogC9UJ" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogC9UK" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCabD" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogCc3n" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogC9UN" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogC9UO" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogC9UP" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4U_yxogC9UQ" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogC9UR" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogCan8" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogCamX" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="4U_yxogCan0" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogCan1" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogCamY" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCamZ" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogCch8" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogCan3" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogCan4" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogCan5" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4U_yxogCan6" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogCan7" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogCbuO" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogCbuD" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="4U_yxogCbuE" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogCbuF" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogCbuG" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCbIA" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogCcuX" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogCbuJ" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogCbuK" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogCbuL" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4U_yxogCbuM" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogCbuN" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6njqcfQVO0o" role="1B3o_S" />
    <node concept="2AHcQZ" id="6njqcfQVOAK" role="2AJF6D">
      <ref role="2AI5Lk" to="f8dg:~JCHR_Constraints" resolve="JCHR_Constraints" />
      <node concept="2B6LJw" id="6njqcfQWtmO" role="2B76xF">
        <ref role="2B6OnR" to="f8dg:~JCHR_Constraints.value()" resolve="value" />
        <node concept="2BsdOp" id="6njqcfQWztx" role="2B70Vg">
          <node concept="2AHcQZ" id="6njqcfQWwcA" role="2BsfMF">
            <ref role="2AI5Lk" to="f8dg:~JCHR_Constraint" resolve="JCHR_Constraint" />
            <node concept="2B6LJw" id="6njqcfQWwea" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.identifier()" resolve="identifier" />
              <node concept="10M0yZ" id="4OsiK2BALdr" role="2B70Vg">
                <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
                <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
              </node>
            </node>
            <node concept="2B6LJw" id="6njqcfQWwks" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.arity()" resolve="arity" />
              <node concept="3cmrfG" id="6njqcfQWwog" role="2B70Vg">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
            <node concept="2B6LJw" id="35Lj3Tj3LGP" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.infix()" resolve="infix" />
              <node concept="10M0yZ" id="5lJXKvHNj" role="2B70Vg">
                <ref role="3cqZAo" node="2GO7tyJVob6" resolve="INFIX_UNI" />
                <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
              </node>
            </node>
            <node concept="2B6LJw" id="6njqcfQWwzK" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.idempotent()" resolve="idempotent" />
              <node concept="Rm8GO" id="6GYQG_SpstN" role="2B70Vg">
                <ref role="Rm8GQ" to="f8dg:~JCHR_Constraint$Value.YES" resolve="YES" />
                <ref role="1Px2BO" to="f8dg:~JCHR_Constraint$Value" resolve="JCHR_Constraint.Value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="4xBopTzmsJi" role="3HQHJm">
      <ref role="3uigEE" to="bspi:6Kcfpq7AYBh" resolve="Queryable" />
    </node>
  </node>
  <node concept="312cEu" id="6GYQG_Spvw5">
    <property role="TrG5h" value="UnificationSolverImpl" />
    <node concept="3Tm1VV" id="6GYQG_Spvw6" role="1B3o_S" />
    <node concept="3uibUv" id="6GYQG_Spv$P" role="EKbjA">
      <ref role="3uigEE" node="6njqcfQVO0n" resolve="UnificationSolver" />
    </node>
    <node concept="2tJIrI" id="4U_yxogBZmE" role="jymVt" />
    <node concept="3clFbW" id="4U_yxogDDy9" role="jymVt">
      <node concept="3cqZAl" id="4U_yxogDDyb" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogDDyc" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogDDyd" role="3clF47">
        <node concept="1VxSAg" id="4U_yxogDHyO" role="3cqZAp">
          <ref role="37wK5l" node="5p8T3QHGKJ7" resolve="UnificationSolverImpl" />
          <node concept="2YIFZM" id="3HJTsBn5QEl" role="37wK5m">
            <ref role="1Pybhc" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
            <ref role="37wK5l" to="bspi:4xBopTzo4e1" resolve="getDefault" />
          </node>
          <node concept="2YIFZM" id="4U_yxogDI7o" role="37wK5m">
            <ref role="37wK5l" to="eifs:~ConstraintSystem.get():runtime.ConstraintSystem" resolve="get" />
            <ref role="1Pybhc" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
          </node>
          <node concept="10Nm6u" id="24Vro6cS4RB" role="37wK5m" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogDFEu" role="jymVt" />
    <node concept="3clFbW" id="4U_yxogDEZX" role="jymVt">
      <node concept="3cqZAl" id="4U_yxogDEZZ" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogDF00" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogDF01" role="3clF47">
        <node concept="1VxSAg" id="3HJTsBn5PAu" role="3cqZAp">
          <ref role="37wK5l" node="5p8T3QHGKJ7" resolve="UnificationSolverImpl" />
          <node concept="2YIFZM" id="3HJTsBn5Qos" role="37wK5m">
            <ref role="1Pybhc" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
            <ref role="37wK5l" to="bspi:4xBopTzo4e1" resolve="getDefault" />
          </node>
          <node concept="37vLTw" id="3HJTsBn5PN0" role="37wK5m">
            <ref role="3cqZAo" node="4U_yxogDGlk" resolve="constraintSystem" />
          </node>
          <node concept="10Nm6u" id="24Vro6cS4Dm" role="37wK5m" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogDGlk" role="3clF46">
        <property role="TrG5h" value="constraintSystem" />
        <node concept="3uibUv" id="4U_yxogDGlj" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn5L7i" role="jymVt" />
    <node concept="3clFbW" id="3HJTsBn5KhD" role="jymVt">
      <node concept="37vLTG" id="4xBopTznZLI" role="3clF46">
        <property role="TrG5h" value="computingSession" />
        <node concept="3uibUv" id="4xBopTznZRE" role="1tU5fm">
          <ref role="3uigEE" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="37vLTG" id="24Vro6cRCEu" role="3clF46">
        <property role="TrG5h" value="tracer" />
        <node concept="3uibUv" id="24Vro6cRCWH" role="1tU5fm">
          <ref role="3uigEE" to="bspi:24Vro6cQnrj" resolve="ComputingTracer" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBn5KhE" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn5KhF" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn5KhG" role="3clF47">
        <node concept="1VxSAg" id="5p8T3QHGN6D" role="3cqZAp">
          <ref role="37wK5l" node="5p8T3QHGKJ7" resolve="UnificationSolverImpl" />
          <node concept="37vLTw" id="4xBopTzo0xW" role="37wK5m">
            <ref role="3cqZAo" node="4xBopTznZLI" resolve="computingSession" />
          </node>
          <node concept="2YIFZM" id="5p8T3QHGNuy" role="37wK5m">
            <ref role="1Pybhc" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
            <ref role="37wK5l" to="eifs:~ConstraintSystem.get():runtime.ConstraintSystem" resolve="get" />
          </node>
          <node concept="37vLTw" id="24Vro6cS4ev" role="37wK5m">
            <ref role="3cqZAo" node="24Vro6cRCEu" resolve="tracer" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5p8T3QHGLEm" role="jymVt" />
    <node concept="3clFbW" id="5p8T3QHGKJ7" role="jymVt">
      <node concept="3cqZAl" id="5p8T3QHGKJ8" role="3clF45" />
      <node concept="3Tm6S6" id="24Vro6cS3ib" role="1B3o_S" />
      <node concept="3clFbS" id="5p8T3QHGKJa" role="3clF47">
        <node concept="3clFbF" id="5p8T3QHGKJb" role="3cqZAp">
          <node concept="37vLTI" id="5p8T3QHGKJc" role="3clFbG">
            <node concept="2OqwBi" id="5p8T3QHGKJd" role="37vLTJ">
              <node concept="Xjq3P" id="5p8T3QHGKJe" role="2Oq$k0" />
              <node concept="2OwXpG" id="5p8T3QHGKJf" role="2OqNvi">
                <ref role="2Oxat5" node="4U_yxogDGOE" resolve="constraintSystem" />
              </node>
            </node>
            <node concept="37vLTw" id="5p8T3QHGKJg" role="37vLTx">
              <ref role="3cqZAo" node="5p8T3QHGKJp" resolve="constraintSystem" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5p8T3QHGKJh" role="3cqZAp">
          <node concept="37vLTI" id="5p8T3QHGKJi" role="3clFbG">
            <node concept="2OqwBi" id="5p8T3QHGKJj" role="37vLTJ">
              <node concept="Xjq3P" id="5p8T3QHGKJk" role="2Oq$k0" />
              <node concept="2OwXpG" id="4xBopTzo20Y" role="2OqNvi">
                <ref role="2Oxat5" node="4xBopTznWRz" resolve="computingSession" />
              </node>
            </node>
            <node concept="37vLTw" id="4xBopTzo2dl" role="37vLTx">
              <ref role="3cqZAo" node="4xBopTzo15x" resolve="computingSession" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="24Vro6cS6Oz" role="3cqZAp">
          <node concept="37vLTI" id="24Vro6cS6O$" role="3clFbG">
            <node concept="2OqwBi" id="24Vro6cS6O_" role="37vLTJ">
              <node concept="Xjq3P" id="24Vro6cS6OA" role="2Oq$k0" />
              <node concept="2OwXpG" id="24Vro6cS6OB" role="2OqNvi">
                <ref role="2Oxat5" node="24Vro6cRIgn" resolve="tracer" />
              </node>
            </node>
            <node concept="3K4zz7" id="24Vro6cS8Ax" role="37vLTx">
              <node concept="37vLTw" id="24Vro6cS8BY" role="3K4E3e">
                <ref role="3cqZAo" node="24Vro6cS3w6" resolve="tracer" />
              </node>
              <node concept="3y3z36" id="24Vro6cS8vj" role="3K4Cdx">
                <node concept="10Nm6u" id="24Vro6cS8yR" role="3uHU7w" />
                <node concept="37vLTw" id="24Vro6cS6Pb" role="3uHU7B">
                  <ref role="3cqZAo" node="24Vro6cS3w6" resolve="tracer" />
                </node>
              </node>
              <node concept="10M0yZ" id="24Vro6cS8Di" role="3K4GZi">
                <ref role="1PxDUh" to="bspi:24Vro6cQnrj" resolve="ComputingTracer" />
                <ref role="3cqZAo" to="bspi:24Vro6cS5rK" resolve="NULL" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4xBopTzo15x" role="3clF46">
        <property role="TrG5h" value="computingSession" />
        <node concept="3uibUv" id="4xBopTzo1oi" role="1tU5fm">
          <ref role="3uigEE" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="37vLTG" id="5p8T3QHGKJp" role="3clF46">
        <property role="TrG5h" value="constraintSystem" />
        <node concept="3uibUv" id="5p8T3QHGKJq" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
        </node>
      </node>
      <node concept="37vLTG" id="24Vro6cS3w6" role="3clF46">
        <property role="TrG5h" value="tracer" />
        <node concept="3uibUv" id="24Vro6cS3NX" role="1tU5fm">
          <ref role="3uigEE" to="bspi:24Vro6cQnrj" resolve="ComputingTracer" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogDCRM" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzmx3e" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="4xBopTznuZi" role="3clF46">
        <property role="TrG5h" value="autoConstraint" />
        <node concept="3uibUv" id="4xBopTzpb7D" role="1tU5fm">
          <ref role="3uigEE" to="bspi:6Kcfpq7Bj7q" resolve="AutoConstraint" />
        </node>
      </node>
      <node concept="37vLTG" id="4xBopTzmx3f" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="8X2XB" id="4xBopTzmx3g" role="1tU5fm">
          <node concept="3uibUv" id="4xBopTzmx3h" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4xBopTzmx3i" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzmx3j" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzmx3m" role="3clF47">
        <node concept="3clFbJ" id="4xBopTzpMyQ" role="3cqZAp">
          <node concept="3clFbS" id="4xBopTzpMyS" role="3clFbx">
            <node concept="3clFbJ" id="4xBopTzmCt4" role="3cqZAp">
              <node concept="3clFbS" id="4xBopTzmCt5" role="3clFbx">
                <node concept="YS8fn" id="4xBopTzmCt6" role="3cqZAp">
                  <node concept="2ShNRf" id="4xBopTzmCt7" role="YScLw">
                    <node concept="1pGfFk" id="4xBopTzmCt8" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                      <node concept="Xl_RD" id="4xBopTzmCt9" role="37wK5m">
                        <property role="Xl_RC" value="invalid arguments count" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="4xBopTzmCta" role="3clFbw">
                <node concept="3cmrfG" id="4xBopTzmCtb" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="2OqwBi" id="4xBopTzmCtc" role="3uHU7B">
                  <node concept="37vLTw" id="4xBopTzmCtd" role="2Oq$k0">
                    <ref role="3cqZAo" node="4xBopTzmx3f" resolve="arg" />
                  </node>
                  <node concept="1Rwk04" id="4xBopTzmCte" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4xBopTzmDp3" role="3cqZAp">
              <node concept="3cpWsn" id="4xBopTzmDp4" role="3cpWs9">
                <property role="TrG5h" value="left" />
                <node concept="3uibUv" id="4xBopTzmDoX" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="AH0OO" id="4xBopTzmDp5" role="33vP2m">
                  <node concept="3cmrfG" id="4xBopTzmDp6" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="4xBopTzmDp7" role="AHHXb">
                    <ref role="3cqZAo" node="4xBopTzmx3f" resolve="arg" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4xBopTzmF9k" role="3cqZAp">
              <node concept="3cpWsn" id="4xBopTzmF9l" role="3cpWs9">
                <property role="TrG5h" value="right" />
                <node concept="3uibUv" id="4xBopTzmF9e" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="AH0OO" id="4xBopTzmF9m" role="33vP2m">
                  <node concept="3cmrfG" id="4xBopTzmF9n" role="AHEQo">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="4xBopTzmF9o" role="AHHXb">
                    <ref role="3cqZAo" node="4xBopTzmx3f" resolve="arg" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4xBopTzmCXk" role="3cqZAp">
              <node concept="3clFbS" id="4xBopTzmCXm" role="3clFbx">
                <node concept="3cpWs6" id="4xBopTzmIh5" role="3cqZAp">
                  <node concept="1rXfSq" id="4xBopTzmJkB" role="3cqZAk">
                    <ref role="37wK5l" node="6GYQG_SpvAS" resolve="askUni" />
                    <node concept="10QFUN" id="4xBopTzmKo$" role="37wK5m">
                      <node concept="37vLTw" id="4xBopTzmMu0" role="10QFUP">
                        <ref role="3cqZAo" node="4xBopTzmDp4" resolve="left" />
                      </node>
                      <node concept="3uibUv" id="4xBopTzmLrH" role="10QFUM">
                        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                      </node>
                    </node>
                    <node concept="10QFUN" id="4xBopTzmQtE" role="37wK5m">
                      <node concept="3uibUv" id="4xBopTzmQtC" role="10QFUM">
                        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                      </node>
                      <node concept="37vLTw" id="4xBopTzmRzm" role="10QFUP">
                        <ref role="3cqZAo" node="4xBopTzmF9l" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="4xBopTzmEtC" role="3clFbw">
                <node concept="2ZW3vV" id="4xBopTzmFtV" role="3uHU7w">
                  <node concept="3uibUv" id="4xBopTzmFuA" role="2ZW6by">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                  <node concept="37vLTw" id="4xBopTzmF9p" role="2ZW6bz">
                    <ref role="3cqZAo" node="4xBopTzmF9l" resolve="right" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="4xBopTzmDLq" role="3uHU7B">
                  <node concept="3uibUv" id="4xBopTzmDLT" role="2ZW6by">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                  <node concept="37vLTw" id="4xBopTzmDp8" role="2ZW6bz">
                    <ref role="3cqZAo" node="4xBopTzmDp4" resolve="left" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="4xBopTzmFIU" role="3eNLev">
                <node concept="3clFbS" id="4xBopTzmFIW" role="3eOfB_">
                  <node concept="3cpWs6" id="4xBopTzmSAy" role="3cqZAp">
                    <node concept="1rXfSq" id="4xBopTzmSAz" role="3cqZAk">
                      <ref role="37wK5l" node="4U_yxogC1eF" resolve="askUni" />
                      <node concept="10QFUN" id="4xBopTzmSA$" role="37wK5m">
                        <node concept="37vLTw" id="4xBopTzmSA_" role="10QFUP">
                          <ref role="3cqZAo" node="4xBopTzmDp4" resolve="left" />
                        </node>
                        <node concept="3uibUv" id="4xBopTzmSAA" role="10QFUM">
                          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                        </node>
                      </node>
                      <node concept="10QFUN" id="4xBopTzmSAB" role="37wK5m">
                        <node concept="3uibUv" id="4xBopTzmUuX" role="10QFUM">
                          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                        </node>
                        <node concept="37vLTw" id="4xBopTzmSAD" role="10QFUP">
                          <ref role="3cqZAo" node="4xBopTzmF9l" resolve="right" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="4xBopTzmFJS" role="3eO9$A">
                  <node concept="2ZW3vV" id="4xBopTzmFJT" role="3uHU7w">
                    <node concept="3uibUv" id="4xBopTzmG0$" role="2ZW6by">
                      <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                    </node>
                    <node concept="37vLTw" id="4xBopTzmFJV" role="2ZW6bz">
                      <ref role="3cqZAo" node="4xBopTzmF9l" resolve="right" />
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="4xBopTzmFJW" role="3uHU7B">
                    <node concept="3uibUv" id="4xBopTzmFJX" role="2ZW6by">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                    <node concept="37vLTw" id="4xBopTzmFJY" role="2ZW6bz">
                      <ref role="3cqZAo" node="4xBopTzmDp4" resolve="left" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="4xBopTzmGhf" role="3eNLev">
                <node concept="3clFbS" id="4xBopTzmGhg" role="3eOfB_">
                  <node concept="3cpWs6" id="4xBopTzmYxz" role="3cqZAp">
                    <node concept="1rXfSq" id="4xBopTzmYx$" role="3cqZAk">
                      <ref role="37wK5l" node="4U_yxogC1Eh" resolve="askUni" />
                      <node concept="10QFUN" id="4xBopTzmYx_" role="37wK5m">
                        <node concept="37vLTw" id="4xBopTzmYxA" role="10QFUP">
                          <ref role="3cqZAo" node="4xBopTzmDp4" resolve="left" />
                        </node>
                        <node concept="3uibUv" id="4xBopTzn22$" role="10QFUM">
                          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                        </node>
                      </node>
                      <node concept="10QFUN" id="4xBopTzmYxC" role="37wK5m">
                        <node concept="3uibUv" id="4xBopTzmYxD" role="10QFUM">
                          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                        </node>
                        <node concept="37vLTw" id="4xBopTzmYxE" role="10QFUP">
                          <ref role="3cqZAo" node="4xBopTzmF9l" resolve="right" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="4xBopTzmGhh" role="3eO9$A">
                  <node concept="2ZW3vV" id="4xBopTzmGhi" role="3uHU7w">
                    <node concept="3uibUv" id="4xBopTzmGNJ" role="2ZW6by">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                    <node concept="37vLTw" id="4xBopTzmGhk" role="2ZW6bz">
                      <ref role="3cqZAo" node="4xBopTzmF9l" resolve="right" />
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="4xBopTzmGhl" role="3uHU7B">
                    <node concept="3uibUv" id="4xBopTzmGyU" role="2ZW6by">
                      <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                    </node>
                    <node concept="37vLTw" id="4xBopTzmGhn" role="2ZW6bz">
                      <ref role="3cqZAo" node="4xBopTzmDp4" resolve="left" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="4xBopTzmH4t" role="3eNLev">
                <node concept="3clFbS" id="4xBopTzmH4u" role="3eOfB_">
                  <node concept="3cpWs6" id="4xBopTzn37K" role="3cqZAp">
                    <node concept="1rXfSq" id="4xBopTzn37L" role="3cqZAk">
                      <ref role="37wK5l" node="4U_yxogC2zx" resolve="askUni" />
                      <node concept="10QFUN" id="4xBopTzn37M" role="37wK5m">
                        <node concept="37vLTw" id="4xBopTzn37N" role="10QFUP">
                          <ref role="3cqZAo" node="4xBopTzmDp4" resolve="left" />
                        </node>
                        <node concept="3uibUv" id="4xBopTzn37O" role="10QFUM">
                          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                        </node>
                      </node>
                      <node concept="10QFUN" id="4xBopTzn37P" role="37wK5m">
                        <node concept="3uibUv" id="4xBopTzn5PY" role="10QFUM">
                          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                        </node>
                        <node concept="37vLTw" id="4xBopTzn37R" role="10QFUP">
                          <ref role="3cqZAo" node="4xBopTzmF9l" resolve="right" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="4xBopTzmH4v" role="3eO9$A">
                  <node concept="2ZW3vV" id="4xBopTzmH4w" role="3uHU7w">
                    <node concept="3uibUv" id="4xBopTzmHmk" role="2ZW6by">
                      <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                    </node>
                    <node concept="37vLTw" id="4xBopTzmH4y" role="2ZW6bz">
                      <ref role="3cqZAo" node="4xBopTzmF9l" resolve="right" />
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="4xBopTzmH4z" role="3uHU7B">
                    <node concept="3uibUv" id="4xBopTzmH4$" role="2ZW6by">
                      <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                    </node>
                    <node concept="37vLTw" id="4xBopTzmH4_" role="2ZW6bz">
                      <ref role="3cqZAo" node="4xBopTzmDp4" resolve="left" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="4xBopTzmHB6" role="9aQIa">
                <node concept="3clFbS" id="4xBopTzmHB7" role="9aQI4">
                  <node concept="YS8fn" id="4xBopTznan2" role="3cqZAp">
                    <node concept="2ShNRf" id="4xBopTznan3" role="YScLw">
                      <node concept="1pGfFk" id="4xBopTznan4" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                        <node concept="Xl_RD" id="4xBopTznan5" role="37wK5m">
                          <property role="Xl_RC" value="invalid arguments" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4xBopTzpOhS" role="3clFbw">
            <node concept="10M0yZ" id="4xBopTzpOhT" role="3uHU7w">
              <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
              <ref role="3cqZAo" node="2GO7tyJY8Rr" resolve="INSTANCE" />
            </node>
            <node concept="37vLTw" id="4xBopTzpO$W" role="3uHU7B">
              <ref role="3cqZAo" node="4xBopTznuZi" resolve="autoConstraint" />
            </node>
          </node>
          <node concept="9aQIb" id="4xBopTzpSNl" role="9aQIa">
            <node concept="3clFbS" id="4xBopTzpSNm" role="9aQI4">
              <node concept="YS8fn" id="4xBopTzpUth" role="3cqZAp">
                <node concept="2ShNRf" id="4xBopTzpUti" role="YScLw">
                  <node concept="1pGfFk" id="4xBopTzpUtj" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="4xBopTzpUtk" role="37wK5m">
                      <property role="Xl_RC" value="invalid constraint" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4xBopTzm_cS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzmyvu" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzmx3p" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tell" />
      <node concept="37vLTG" id="4xBopTzp2Tv" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="4xBopTzp2Tw" role="1tU5fm">
          <ref role="3uigEE" to="bspi:6Kcfpq7BfEn" resolve="Constraint" />
        </node>
      </node>
      <node concept="37vLTG" id="4xBopTzmx3q" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="8X2XB" id="4xBopTzmx3r" role="1tU5fm">
          <node concept="3uibUv" id="4xBopTzmx3s" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4xBopTzmx3t" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzmx3u" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzmx3y" role="3clF47">
        <node concept="3clFbJ" id="4xBopTznwFJ" role="3cqZAp">
          <node concept="3clFbS" id="4xBopTznwFL" role="3clFbx">
            <node concept="3clFbJ" id="4xBopTznc_n" role="3cqZAp">
              <node concept="3clFbS" id="4xBopTznc_o" role="3clFbx">
                <node concept="YS8fn" id="4xBopTznc_p" role="3cqZAp">
                  <node concept="2ShNRf" id="4xBopTznc_q" role="YScLw">
                    <node concept="1pGfFk" id="4xBopTznc_r" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                      <node concept="Xl_RD" id="4xBopTznc_s" role="37wK5m">
                        <property role="Xl_RC" value="invalid arguments count" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="4xBopTznc_t" role="3clFbw">
                <node concept="3cmrfG" id="4xBopTznc_u" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="2OqwBi" id="4xBopTznc_v" role="3uHU7B">
                  <node concept="37vLTw" id="4xBopTznc_w" role="2Oq$k0">
                    <ref role="3cqZAo" node="4xBopTzmx3q" resolve="arg" />
                  </node>
                  <node concept="1Rwk04" id="4xBopTznc_x" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4xBopTznc_y" role="3cqZAp">
              <node concept="3cpWsn" id="4xBopTznc_z" role="3cpWs9">
                <property role="TrG5h" value="left" />
                <node concept="3uibUv" id="4xBopTznc_$" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="AH0OO" id="4xBopTznc__" role="33vP2m">
                  <node concept="3cmrfG" id="4xBopTznc_A" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="4xBopTznc_B" role="AHHXb">
                    <ref role="3cqZAo" node="4xBopTzmx3q" resolve="arg" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4xBopTznc_C" role="3cqZAp">
              <node concept="3cpWsn" id="4xBopTznc_D" role="3cpWs9">
                <property role="TrG5h" value="right" />
                <node concept="3uibUv" id="4xBopTznc_E" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="AH0OO" id="4xBopTznc_F" role="33vP2m">
                  <node concept="3cmrfG" id="4xBopTznc_G" role="AHEQo">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="4xBopTznc_H" role="AHHXb">
                    <ref role="3cqZAo" node="4xBopTzmx3q" resolve="arg" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4xBopTznc_I" role="3cqZAp">
              <node concept="3clFbS" id="4xBopTznc_J" role="3clFbx">
                <node concept="3clFbF" id="4xBopTznd1Z" role="3cqZAp">
                  <node concept="1rXfSq" id="4xBopTznc_L" role="3clFbG">
                    <ref role="37wK5l" node="6GYQG_SpvAG" resolve="tellUni" />
                    <node concept="10QFUN" id="4xBopTznc_M" role="37wK5m">
                      <node concept="37vLTw" id="4xBopTznc_N" role="10QFUP">
                        <ref role="3cqZAo" node="4xBopTznc_z" resolve="left" />
                      </node>
                      <node concept="3uibUv" id="4xBopTznc_O" role="10QFUM">
                        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                      </node>
                    </node>
                    <node concept="10QFUN" id="4xBopTznc_P" role="37wK5m">
                      <node concept="3uibUv" id="4xBopTznc_Q" role="10QFUM">
                        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                      </node>
                      <node concept="37vLTw" id="4xBopTznc_R" role="10QFUP">
                        <ref role="3cqZAo" node="4xBopTznc_D" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="4xBopTznc_S" role="3clFbw">
                <node concept="2ZW3vV" id="4xBopTznc_T" role="3uHU7w">
                  <node concept="3uibUv" id="4xBopTznc_U" role="2ZW6by">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                  <node concept="37vLTw" id="4xBopTznc_V" role="2ZW6bz">
                    <ref role="3cqZAo" node="4xBopTznc_D" resolve="right" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="4xBopTznc_W" role="3uHU7B">
                  <node concept="3uibUv" id="4xBopTznc_X" role="2ZW6by">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                  <node concept="37vLTw" id="4xBopTznc_Y" role="2ZW6bz">
                    <ref role="3cqZAo" node="4xBopTznc_z" resolve="left" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="4xBopTznc_Z" role="3eNLev">
                <node concept="3clFbS" id="4xBopTzncA0" role="3eOfB_">
                  <node concept="3clFbF" id="4xBopTznflL" role="3cqZAp">
                    <node concept="1rXfSq" id="4xBopTzncA2" role="3clFbG">
                      <ref role="37wK5l" node="4U_yxogBZsK" resolve="tellUni" />
                      <node concept="10QFUN" id="4xBopTzncA3" role="37wK5m">
                        <node concept="37vLTw" id="4xBopTzncA4" role="10QFUP">
                          <ref role="3cqZAo" node="4xBopTznc_z" resolve="left" />
                        </node>
                        <node concept="3uibUv" id="4xBopTzncA5" role="10QFUM">
                          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                        </node>
                      </node>
                      <node concept="10QFUN" id="4xBopTzncA6" role="37wK5m">
                        <node concept="3uibUv" id="4xBopTzncA7" role="10QFUM">
                          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                        </node>
                        <node concept="37vLTw" id="4xBopTzncA8" role="10QFUP">
                          <ref role="3cqZAo" node="4xBopTznc_D" resolve="right" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="4xBopTzncA9" role="3eO9$A">
                  <node concept="2ZW3vV" id="4xBopTzncAa" role="3uHU7w">
                    <node concept="3uibUv" id="4xBopTzncAb" role="2ZW6by">
                      <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                    </node>
                    <node concept="37vLTw" id="4xBopTzncAc" role="2ZW6bz">
                      <ref role="3cqZAo" node="4xBopTznc_D" resolve="right" />
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="4xBopTzncAd" role="3uHU7B">
                    <node concept="3uibUv" id="4xBopTzncAe" role="2ZW6by">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                    <node concept="37vLTw" id="4xBopTzncAf" role="2ZW6bz">
                      <ref role="3cqZAo" node="4xBopTznc_z" resolve="left" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="4xBopTzncAg" role="3eNLev">
                <node concept="3clFbS" id="4xBopTzncAh" role="3eOfB_">
                  <node concept="3clFbF" id="4xBopTznitc" role="3cqZAp">
                    <node concept="1rXfSq" id="4xBopTzncAj" role="3clFbG">
                      <ref role="37wK5l" node="4U_yxogBZLB" resolve="tellUni" />
                      <node concept="10QFUN" id="4xBopTzncAk" role="37wK5m">
                        <node concept="37vLTw" id="4xBopTzncAl" role="10QFUP">
                          <ref role="3cqZAo" node="4xBopTznc_z" resolve="left" />
                        </node>
                        <node concept="3uibUv" id="4xBopTzncAm" role="10QFUM">
                          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                        </node>
                      </node>
                      <node concept="10QFUN" id="4xBopTzncAn" role="37wK5m">
                        <node concept="3uibUv" id="4xBopTzncAo" role="10QFUM">
                          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                        </node>
                        <node concept="37vLTw" id="4xBopTzncAp" role="10QFUP">
                          <ref role="3cqZAo" node="4xBopTznc_D" resolve="right" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="4xBopTzncAq" role="3eO9$A">
                  <node concept="2ZW3vV" id="4xBopTzncAr" role="3uHU7w">
                    <node concept="3uibUv" id="4xBopTzncAs" role="2ZW6by">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                    <node concept="37vLTw" id="4xBopTzncAt" role="2ZW6bz">
                      <ref role="3cqZAo" node="4xBopTznc_D" resolve="right" />
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="4xBopTzncAu" role="3uHU7B">
                    <node concept="3uibUv" id="4xBopTzncAv" role="2ZW6by">
                      <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                    </node>
                    <node concept="37vLTw" id="4xBopTzncAw" role="2ZW6bz">
                      <ref role="3cqZAo" node="4xBopTznc_z" resolve="left" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="4xBopTzncAx" role="3eNLev">
                <node concept="3clFbS" id="4xBopTzncAy" role="3eOfB_">
                  <node concept="3clFbF" id="4xBopTznl$p" role="3cqZAp">
                    <node concept="1rXfSq" id="4xBopTzncA$" role="3clFbG">
                      <ref role="37wK5l" node="4U_yxogC05I" resolve="tellUni" />
                      <node concept="10QFUN" id="4xBopTzncA_" role="37wK5m">
                        <node concept="37vLTw" id="4xBopTzncAA" role="10QFUP">
                          <ref role="3cqZAo" node="4xBopTznc_z" resolve="left" />
                        </node>
                        <node concept="3uibUv" id="4xBopTzncAB" role="10QFUM">
                          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                        </node>
                      </node>
                      <node concept="10QFUN" id="4xBopTzncAC" role="37wK5m">
                        <node concept="3uibUv" id="4xBopTzncAD" role="10QFUM">
                          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                        </node>
                        <node concept="37vLTw" id="4xBopTzncAE" role="10QFUP">
                          <ref role="3cqZAo" node="4xBopTznc_D" resolve="right" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="4xBopTzncAF" role="3eO9$A">
                  <node concept="2ZW3vV" id="4xBopTzncAG" role="3uHU7w">
                    <node concept="3uibUv" id="4xBopTzncAH" role="2ZW6by">
                      <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                    </node>
                    <node concept="37vLTw" id="4xBopTzncAI" role="2ZW6bz">
                      <ref role="3cqZAo" node="4xBopTznc_D" resolve="right" />
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="4xBopTzncAJ" role="3uHU7B">
                    <node concept="3uibUv" id="4xBopTzncAK" role="2ZW6by">
                      <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                    </node>
                    <node concept="37vLTw" id="4xBopTzncAL" role="2ZW6bz">
                      <ref role="3cqZAo" node="4xBopTznc_z" resolve="left" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="4xBopTzncAM" role="9aQIa">
                <node concept="3clFbS" id="4xBopTzncAN" role="9aQI4">
                  <node concept="YS8fn" id="4xBopTzncAO" role="3cqZAp">
                    <node concept="2ShNRf" id="4xBopTzncAP" role="YScLw">
                      <node concept="1pGfFk" id="4xBopTzncAQ" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                        <node concept="Xl_RD" id="4xBopTzncAR" role="37wK5m">
                          <property role="Xl_RC" value="invalid arguments" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4xBopTznwQp" role="3clFbw">
            <node concept="10M0yZ" id="4xBopTznx5a" role="3uHU7w">
              <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
              <ref role="3cqZAo" node="2GO7tyJY8Rr" resolve="INSTANCE" />
            </node>
            <node concept="37vLTw" id="4xBopTzp$oR" role="3uHU7B">
              <ref role="3cqZAo" node="4xBopTzp2Tv" resolve="constraint" />
            </node>
          </node>
          <node concept="9aQIb" id="4xBopTznxTx" role="9aQIa">
            <node concept="3clFbS" id="4xBopTznxTy" role="9aQI4">
              <node concept="YS8fn" id="4xBopTzny4b" role="3cqZAp">
                <node concept="2ShNRf" id="4xBopTzny4c" role="YScLw">
                  <node concept="1pGfFk" id="4xBopTzny4d" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="4xBopTzny4e" role="37wK5m">
                      <property role="Xl_RC" value="invalid constraint" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4xBopTzmAfv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzmvIq" role="jymVt" />
    <node concept="3clFb_" id="6GYQG_SpvAG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="6GYQG_SpvAH" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="3uibUv" id="6GYQG_SpvAI" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="6GYQG_SpvAJ" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="3uibUv" id="6GYQG_SpvAK" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3cqZAl" id="6GYQG_SpvAL" role="3clF45" />
      <node concept="3Tm1VV" id="6GYQG_SpvAM" role="1B3o_S" />
      <node concept="2AHcQZ" id="6GYQG_SpvAO" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6GYQG_SpvAP" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="6GYQG_SpvAQ" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6GYQG_SpvAR" role="3clF47">
        <node concept="3clFbJ" id="6SkxsMzDe$5" role="3cqZAp">
          <node concept="3clFbS" id="6SkxsMzDe$6" role="3clFbx">
            <node concept="3clFbF" id="6SkxsMzDe$7" role="3cqZAp">
              <node concept="2YIFZM" id="6SkxsMzDe$8" role="3clFbG">
                <ref role="37wK5l" to="eift:~ConstraintSystemUtil.queue(ConstraintSystem,Runnable)" resolve="queue" />
                <ref role="1Pybhc" to="eift:~ConstraintSystemUtil" resolve="ConstraintSystemUtil" />
                <node concept="37vLTw" id="6SkxsMzDe$9" role="37wK5m">
                  <ref role="3cqZAo" node="4U_yxogDGOE" resolve="constraintSystem" />
                </node>
                <node concept="1bVj0M" id="6SkxsMzDe$a" role="37wK5m">
                  <node concept="3clFbS" id="6SkxsMzDe$b" role="1bW5cS">
                    <node concept="3clFbF" id="6SkxsMzDe$c" role="3cqZAp">
                      <node concept="1rXfSq" id="6SkxsMzDe$d" role="3clFbG">
                        <ref role="37wK5l" node="6GYQG_SpvAG" resolve="tellUni" />
                        <node concept="37vLTw" id="6SkxsMzDrQQ" role="37wK5m">
                          <ref role="3cqZAo" node="6GYQG_SpvAH" resolve="leftVal" />
                        </node>
                        <node concept="37vLTw" id="6SkxsMzDsn9" role="37wK5m">
                          <ref role="3cqZAo" node="6GYQG_SpvAJ" resolve="rightVal" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6SkxsMzDe$g" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="6SkxsMzDe$h" role="3clFbw">
            <node concept="37vLTw" id="6SkxsMzDe$i" role="2Oq$k0">
              <ref role="3cqZAo" node="4U_yxogDGOE" resolve="constraintSystem" />
            </node>
            <node concept="liA8E" id="6SkxsMzDe$j" role="2OqNvi">
              <ref role="37wK5l" to="eifs:~ConstraintSystem.isQueuing():boolean" resolve="isQueuing" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6SkxsMzDjwi" role="3cqZAp" />
        <node concept="3cpWs8" id="6SkxsMzDnLI" role="3cqZAp">
          <node concept="3cpWsn" id="6SkxsMzDnLJ" role="3cpWs9">
            <property role="TrG5h" value="subs" />
            <node concept="3uibUv" id="6SkxsMzDnLG" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
            </node>
            <node concept="1rXfSq" id="6SkxsMzDnLK" role="33vP2m">
              <ref role="37wK5l" node="4U_yxogCRUf" resolve="unify" />
              <node concept="37vLTw" id="6SkxsMzDnLL" role="37wK5m">
                <ref role="3cqZAo" node="6GYQG_SpvAH" resolve="leftVal" />
              </node>
              <node concept="37vLTw" id="6SkxsMzDnLM" role="37wK5m">
                <ref role="3cqZAo" node="6GYQG_SpvAJ" resolve="rightVal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6SkxsMzEdRd" role="3cqZAp">
          <node concept="3clFbS" id="6SkxsMzEdRg" role="3clFbx">
            <node concept="YS8fn" id="6SkxsMzEery" role="3cqZAp">
              <node concept="2ShNRf" id="6SkxsMzEeu4" role="YScLw">
                <node concept="1pGfFk" id="6SkxsMzEeGa" role="2ShVmc">
                  <ref role="37wK5l" to="eifs:~FailureException.&lt;init&gt;(java.lang.String)" resolve="FailureException" />
                  <node concept="3cpWs3" id="6SkxsMzEhV3" role="37wK5m">
                    <node concept="37vLTw" id="6SkxsMzEi2u" role="3uHU7w">
                      <ref role="3cqZAo" node="6GYQG_SpvAJ" resolve="rightVal" />
                    </node>
                    <node concept="3cpWs3" id="6SkxsMzEg$B" role="3uHU7B">
                      <node concept="3cpWs3" id="6SkxsMzEg2E" role="3uHU7B">
                        <node concept="Xl_RD" id="6SkxsMzEf1a" role="3uHU7B">
                          <property role="Xl_RC" value="Cannot unify " />
                        </node>
                        <node concept="37vLTw" id="6SkxsMzEg5t" role="3uHU7w">
                          <ref role="3cqZAo" node="6GYQG_SpvAH" resolve="leftVal" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="6SkxsMzEh3h" role="3uHU7w">
                        <property role="Xl_RC" value=" and " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6SkxsMzEe76" role="3clFbw">
            <node concept="2OqwBi" id="6SkxsMzEeju" role="3fr31v">
              <node concept="37vLTw" id="6SkxsMzEehu" role="2Oq$k0">
                <ref role="3cqZAo" node="6SkxsMzDnLJ" resolve="subs" />
              </node>
              <node concept="liA8E" id="6SkxsMzEepC" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Substitution.isSuccessful()" resolve="isSuccessful" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6SkxsMzEiLZ" role="3cqZAp" />
        <node concept="1DcWWT" id="6SkxsMzDp24" role="3cqZAp">
          <node concept="3clFbS" id="6SkxsMzDp25" role="2LFqv$">
            <node concept="3cpWs8" id="1Ns6gpY7SoW" role="3cqZAp">
              <node concept="3cpWsn" id="1Ns6gpY7SoX" role="3cpWs9">
                <property role="TrG5h" value="bvar" />
                <node concept="3uibUv" id="573vQv1oNZg" role="1tU5fm">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
                <node concept="2OqwBi" id="1Ns6gpY7SoY" role="33vP2m">
                  <node concept="37vLTw" id="1Ns6gpY7SoZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                  </node>
                  <node concept="liA8E" id="1Ns6gpY7Sp0" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Substitution.Binding.var()" resolve="var" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6SkxsMzDQjP" role="3cqZAp">
              <node concept="3cpWsn" id="6SkxsMzDQjQ" role="3cpWs9">
                <property role="TrG5h" value="bvarLogical" />
                <node concept="3uibUv" id="46l0wJhweNW" role="1tU5fm">
                  <ref role="3uigEE" to="yg8f:1mP5b6jQP$C" resolve="ILogical" />
                  <node concept="3qTvmN" id="46l0wJhwffh" role="11_B2D" />
                </node>
                <node concept="2OqwBi" id="1Ns6gpY7UeN" role="33vP2m">
                  <node concept="1eOMI4" id="1Ns6gpY7Td2" role="2Oq$k0">
                    <node concept="10QFUN" id="1Ns6gpY7TcZ" role="1eOMHV">
                      <node concept="3uibUv" id="46l0wJhwfMI" role="10QFUM">
                        <ref role="3uigEE" to="yg8f:46l0wJhtOD_" resolve="ILogicalVar" />
                      </node>
                      <node concept="37vLTw" id="1Ns6gpY7TAs" role="10QFUP">
                        <ref role="3cqZAo" node="1Ns6gpY7SoX" resolve="bvar" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1Ns6gpY7UPC" role="2OqNvi">
                    <ref role="37wK5l" to="yg8f:46l0wJhtXlr" resolve="logical" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6SkxsMzDT2t" role="3cqZAp" />
            <node concept="3clFbJ" id="46l0wJhwjhD" role="3cqZAp">
              <node concept="3clFbS" id="46l0wJhwjhF" role="3clFbx">
                <node concept="3clFbJ" id="6SkxsMzEpRs" role="3cqZAp">
                  <node concept="3clFbS" id="6SkxsMzEpRv" role="3clFbx">
                    <node concept="3SKdUt" id="6SkxsMzF2Sk" role="3cqZAp">
                      <node concept="3SKdUq" id="6SkxsMzF2Xe" role="3SKWNk">
                        <property role="3SKdUp" value="TODO: unchecked cast smells" />
                      </node>
                    </node>
                    <node concept="3cpWs8" id="6SkxsMzErJ5" role="3cqZAp">
                      <node concept="3cpWsn" id="6SkxsMzErJ6" role="3cpWs9">
                        <property role="TrG5h" value="subValue" />
                        <node concept="3uibUv" id="6SkxsMzErIT" role="1tU5fm">
                          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                        </node>
                        <node concept="2OqwBi" id="4peSo3CLEwx" role="33vP2m">
                          <node concept="1eOMI4" id="4peSo3CLEwy" role="2Oq$k0">
                            <node concept="10QFUN" id="4peSo3CLEwz" role="1eOMHV">
                              <node concept="2OqwBi" id="4peSo3CLEw$" role="10QFUP">
                                <node concept="37vLTw" id="4peSo3CLEw_" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                                </node>
                                <node concept="liA8E" id="4peSo3CLEwA" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Substitution.Binding.term()" resolve="term" />
                                </node>
                              </node>
                              <node concept="3uibUv" id="4peSo3CLEwB" role="10QFUM">
                                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="4peSo3CLEwE" role="2OqNvi">
                            <ref role="37wK5l" to="ie8e:2QE4RCGndD7" resolve="asRoot" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6SkxsMzEti1" role="3cqZAp">
                      <node concept="1rXfSq" id="6SkxsMzEti0" role="3clFbG">
                        <ref role="37wK5l" node="4U_yxogBZLB" resolve="tellUni" />
                        <node concept="10QFUN" id="46l0wJhwl3r" role="37wK5m">
                          <node concept="3uibUv" id="46l0wJhwl3p" role="10QFUM">
                            <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                          </node>
                          <node concept="37vLTw" id="46l0wJhwl3q" role="10QFUP">
                            <ref role="3cqZAo" node="6SkxsMzDQjQ" resolve="bvarLogical" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="6SkxsMzEu16" role="37wK5m">
                          <ref role="3cqZAo" node="6SkxsMzErJ6" resolve="subValue" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="6SkxsMzF270" role="3cqZAp" />
                  </node>
                  <node concept="2OqwBi" id="6SkxsMzEpXG" role="3clFbw">
                    <node concept="2OqwBi" id="6SkxsMzFMgW" role="2Oq$k0">
                      <node concept="37vLTw" id="6SkxsMzFMgX" role="2Oq$k0">
                        <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                      </node>
                      <node concept="liA8E" id="6SkxsMzFMgY" role="2OqNvi">
                        <ref role="37wK5l" to="yt73:~Substitution.Binding.term()" resolve="term" />
                      </node>
                    </node>
                    <node concept="liA8E" id="56MMu0Ap5n2" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Term.is(Kind)" resolve="is" />
                      <node concept="Rm8GO" id="573vQv1oO8g" role="37wK5m">
                        <ref role="Rm8GQ" to="yt73:~Term.FUN" resolve="FUN" />
                        <ref role="1Px2BO" to="yt73:~Term.Kind" resolve="Term.Kind" />
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="6SkxsMzEv3z" role="3eNLev">
                    <node concept="2OqwBi" id="6SkxsMzEv9Q" role="3eO9$A">
                      <node concept="2OqwBi" id="6SkxsMzFMD6" role="2Oq$k0">
                        <node concept="37vLTw" id="6SkxsMzFMD7" role="2Oq$k0">
                          <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                        </node>
                        <node concept="liA8E" id="6SkxsMzFMD8" role="2OqNvi">
                          <ref role="37wK5l" to="yt73:~Substitution.Binding.term()" resolve="term" />
                        </node>
                      </node>
                      <node concept="liA8E" id="56MMu0ApUkU" role="2OqNvi">
                        <ref role="37wK5l" to="yt73:~Term.is(Kind)" resolve="is" />
                        <node concept="Rm8GO" id="56MMu0ApUkV" role="37wK5m">
                          <ref role="1Px2BO" to="yt73:~Term.Kind" resolve="Term.Kind" />
                          <ref role="Rm8GQ" to="yt73:~Term.VAR" resolve="VAR" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="6SkxsMzEv3_" role="3eOfB_">
                      <node concept="3cpWs8" id="1Ns6gpY7VW1" role="3cqZAp">
                        <node concept="3cpWsn" id="1Ns6gpY7VW2" role="3cpWs9">
                          <property role="TrG5h" value="nvar" />
                          <node concept="3uibUv" id="573vQv1oOkk" role="1tU5fm">
                            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                          </node>
                          <node concept="2OqwBi" id="1Ns6gpY7VW4" role="33vP2m">
                            <node concept="37vLTw" id="1Ns6gpY7VW5" role="2Oq$k0">
                              <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                            </node>
                            <node concept="liA8E" id="1Ns6gpY7VW6" role="2OqNvi">
                              <ref role="37wK5l" to="yt73:~Substitution.Binding.term()" resolve="term" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3SKdUt" id="3HJTsBmUjxp" role="3cqZAp">
                        <node concept="3SKdUq" id="3HJTsBmUjAT" role="3SKWNk">
                          <property role="3SKdUp" value="TODO: unchecked cast" />
                        </node>
                      </node>
                      <node concept="3cpWs8" id="6SkxsMzEXSV" role="3cqZAp">
                        <node concept="3cpWsn" id="6SkxsMzEXSW" role="3cpWs9">
                          <property role="TrG5h" value="nodeLogical" />
                          <node concept="3uibUv" id="6SkxsMzEXSX" role="1tU5fm">
                            <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                          </node>
                          <node concept="2OqwBi" id="1Ns6gpY7Z4h" role="33vP2m">
                            <node concept="1eOMI4" id="1Ns6gpY7Y34" role="2Oq$k0">
                              <node concept="10QFUN" id="1Ns6gpY7Y31" role="1eOMHV">
                                <node concept="3uibUv" id="3HJTsBmUjG6" role="10QFUM">
                                  <ref role="3uigEE" node="3HJTsBmSn3l" resolve="AtomLogical.AtomLogicalVar" />
                                </node>
                                <node concept="37vLTw" id="1Ns6gpY7Yti" role="10QFUP">
                                  <ref role="3cqZAo" node="1Ns6gpY7VW2" resolve="nvar" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="1Ns6gpY7ZGe" role="2OqNvi">
                              <ref role="37wK5l" node="3HJTsBmSn3F" resolve="logical" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="6SkxsMzF0u3" role="3cqZAp">
                        <node concept="1rXfSq" id="6SkxsMzF0u2" role="3clFbG">
                          <ref role="37wK5l" node="4U_yxogC05I" resolve="tellUni" />
                          <node concept="10QFUN" id="46l0wJhwllB" role="37wK5m">
                            <node concept="3uibUv" id="46l0wJhwll_" role="10QFUM">
                              <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                            </node>
                            <node concept="37vLTw" id="46l0wJhwllA" role="10QFUP">
                              <ref role="3cqZAo" node="6SkxsMzDQjQ" resolve="bvarLogical" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="6SkxsMzF1ft" role="37wK5m">
                            <ref role="3cqZAo" node="6SkxsMzEXSW" resolve="nodeLogical" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="5p8T3QHDuuE" role="3cqZAp" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="46l0wJhwjVN" role="3clFbw">
                <node concept="3uibUv" id="46l0wJhwjW$" role="2ZW6by">
                  <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                </node>
                <node concept="37vLTw" id="46l0wJhwj_T" role="2ZW6bz">
                  <ref role="3cqZAo" node="6SkxsMzDQjQ" resolve="bvarLogical" />
                </node>
              </node>
              <node concept="9aQIb" id="46l0wJhwmlt" role="9aQIa">
                <node concept="3clFbS" id="46l0wJhwmlu" role="9aQI4">
                  <node concept="3SKdUt" id="46l0wJhwoq9" role="3cqZAp">
                    <node concept="3SKdUq" id="46l0wJhwoqh" role="3SKWNk">
                      <property role="3SKdUp" value="FIXME: implement me" />
                    </node>
                  </node>
                  <node concept="YS8fn" id="46l0wJhwmwE" role="3cqZAp">
                    <node concept="2ShNRf" id="46l0wJhwmx5" role="YScLw">
                      <node concept="1pGfFk" id="46l0wJhwnQf" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                        <node concept="Xl_RD" id="46l0wJhwokC" role="37wK5m">
                          <property role="Xl_RC" value="not implemented" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="46l0wJhwokc" role="3cqZAp" />
                </node>
              </node>
              <node concept="3eNFk2" id="5p8T3QHDoXh" role="3eNLev">
                <node concept="2ZW3vV" id="5p8T3QHDp$Q" role="3eO9$A">
                  <node concept="3uibUv" id="5p8T3QHDp_A" role="2ZW6by">
                    <ref role="3uigEE" node="1H8E3iB85PX" resolve="StringLogical" />
                  </node>
                  <node concept="37vLTw" id="5p8T3QHDpeI" role="2ZW6bz">
                    <ref role="3cqZAo" node="6SkxsMzDQjQ" resolve="bvarLogical" />
                  </node>
                </node>
                <node concept="3clFbS" id="5p8T3QHDoXj" role="3eOfB_">
                  <node concept="3clFbJ" id="5p8T3QHDAFU" role="3cqZAp">
                    <node concept="3clFbS" id="5p8T3QHDAFW" role="3clFbx">
                      <node concept="3cpWs8" id="56MMu0AoNE1" role="3cqZAp">
                        <node concept="3cpWsn" id="56MMu0AoNE2" role="3cpWs9">
                          <property role="TrG5h" value="nterm" />
                          <node concept="3uibUv" id="573vQv1oOoF" role="1tU5fm">
                            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                          </node>
                          <node concept="2OqwBi" id="56MMu0AoNE3" role="33vP2m">
                            <node concept="37vLTw" id="56MMu0AoNE4" role="2Oq$k0">
                              <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                            </node>
                            <node concept="liA8E" id="56MMu0AoNE5" role="2OqNvi">
                              <ref role="37wK5l" to="yt73:~Substitution.Binding.term()" resolve="term" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="5p8T3QHGXiQ" role="3cqZAp" />
                      <node concept="3cpWs8" id="5p8T3QHGZ1h" role="3cqZAp">
                        <node concept="3cpWsn" id="5p8T3QHGZ1i" role="3cpWs9">
                          <property role="TrG5h" value="nodeLogical" />
                          <node concept="3uibUv" id="5p8T3QHGZ19" role="1tU5fm">
                            <ref role="3uigEE" node="1H8E3iB85PX" resolve="StringLogical" />
                          </node>
                          <node concept="2ShNRf" id="5p8T3QHGZ1j" role="33vP2m">
                            <node concept="1pGfFk" id="5p8T3QHGZ1k" role="2ShVmc">
                              <ref role="37wK5l" node="1GDBwhEE__7" resolve="StringLogical" />
                              <node concept="2YIFZM" id="5p8T3QHGZ1l" role="37wK5m">
                                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                                <node concept="2OqwBi" id="5p8T3QHGZ1m" role="37wK5m">
                                  <node concept="37vLTw" id="5p8T3QHGZ1n" role="2Oq$k0">
                                    <ref role="3cqZAo" node="56MMu0AoNE2" resolve="nterm" />
                                  </node>
                                  <node concept="liA8E" id="5p8T3QHGZ1o" role="2OqNvi">
                                    <ref role="37wK5l" to="yt73:~Term.symbol()" resolve="symbol" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5p8T3QHGZaj" role="3cqZAp">
                        <node concept="2OqwBi" id="5p8T3QHGZak" role="3clFbG">
                          <node concept="37vLTw" id="4xBopTzrwz6" role="2Oq$k0">
                            <ref role="3cqZAo" node="4xBopTznWRz" resolve="computingSession" />
                          </node>
                          <node concept="liA8E" id="5p8T3QHGZam" role="2OqNvi">
                            <ref role="37wK5l" to="bspi:4xBopTznPKO" resolve="tell" />
                            <node concept="10M0yZ" id="4xBopTzrMis" role="37wK5m">
                              <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
                              <ref role="3cqZAo" node="3HJTsBn4kQs" resolve="INSTANCE" />
                            </node>
                            <node concept="10QFUN" id="5p8T3QHGZap" role="37wK5m">
                              <node concept="3uibUv" id="5p8T3QHGZaq" role="10QFUM">
                                <ref role="3uigEE" node="1H8E3iB85PX" resolve="StringLogical" />
                              </node>
                              <node concept="37vLTw" id="5p8T3QHGZar" role="10QFUP">
                                <ref role="3cqZAo" node="6SkxsMzDQjQ" resolve="bvarLogical" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="5p8T3QHGZWm" role="37wK5m">
                              <ref role="3cqZAo" node="5p8T3QHGZ1i" resolve="nodeLogical" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="5p8T3QHDAFV" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="5p8T3QHDAUf" role="3clFbw">
                      <node concept="2OqwBi" id="5p8T3QHDANh" role="2Oq$k0">
                        <node concept="37vLTw" id="5p8T3QHDAMv" role="2Oq$k0">
                          <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                        </node>
                        <node concept="liA8E" id="5p8T3QHDATn" role="2OqNvi">
                          <ref role="37wK5l" to="yt73:~Substitution.Binding.term()" resolve="term" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5p8T3QHDB81" role="2OqNvi">
                        <ref role="37wK5l" to="yt73:~Term.is(Kind)" resolve="is" />
                        <node concept="Rm8GO" id="56MMu0AoMUp" role="37wK5m">
                          <ref role="1Px2BO" to="yt73:~Term.Kind" resolve="Term.Kind" />
                          <ref role="Rm8GQ" to="yt73:~Term.FUN" resolve="FUN" />
                        </node>
                      </node>
                    </node>
                    <node concept="3eNFk2" id="5p8T3QHDB8O" role="3eNLev">
                      <node concept="2OqwBi" id="5p8T3QHDBgJ" role="3eO9$A">
                        <node concept="2OqwBi" id="5p8T3QHDBax" role="2Oq$k0">
                          <node concept="37vLTw" id="5p8T3QHDB9J" role="2Oq$k0">
                            <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                          </node>
                          <node concept="liA8E" id="5p8T3QHDBg3" role="2OqNvi">
                            <ref role="37wK5l" to="yt73:~Substitution.Binding.term()" resolve="term" />
                          </node>
                        </node>
                        <node concept="liA8E" id="56MMu0ApUmr" role="2OqNvi">
                          <ref role="37wK5l" to="yt73:~Term.is(Kind)" resolve="is" />
                          <node concept="Rm8GO" id="56MMu0ApUms" role="37wK5m">
                            <ref role="1Px2BO" to="yt73:~Term.Kind" resolve="Term.Kind" />
                            <ref role="Rm8GQ" to="yt73:~Term.VAR" resolve="VAR" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="5p8T3QHDB8Q" role="3eOfB_">
                        <node concept="3cpWs8" id="5p8T3QHDBTm" role="3cqZAp">
                          <node concept="3cpWsn" id="5p8T3QHDBTn" role="3cpWs9">
                            <property role="TrG5h" value="nvar" />
                            <node concept="3uibUv" id="573vQv1oOxl" role="1tU5fm">
                              <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                            </node>
                            <node concept="2OqwBi" id="5p8T3QHDBTp" role="33vP2m">
                              <node concept="37vLTw" id="5p8T3QHDBTq" role="2Oq$k0">
                                <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                              </node>
                              <node concept="liA8E" id="5p8T3QHDBTr" role="2OqNvi">
                                <ref role="37wK5l" to="yt73:~Substitution.Binding.term()" resolve="term" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3SKdUt" id="5p8T3QHDFfd" role="3cqZAp">
                          <node concept="3SKdUq" id="5p8T3QHDFmM" role="3SKWNk">
                            <property role="3SKdUp" value="TODO: unchecked cast" />
                          </node>
                        </node>
                        <node concept="3cpWs8" id="5p8T3QHDDFT" role="3cqZAp">
                          <node concept="3cpWsn" id="5p8T3QHDDFU" role="3cpWs9">
                            <property role="TrG5h" value="nodeLogical" />
                            <node concept="3uibUv" id="5p8T3QHDDFL" role="1tU5fm">
                              <ref role="3uigEE" node="1H8E3iB85PX" resolve="StringLogical" />
                            </node>
                            <node concept="2OqwBi" id="5p8T3QHDDFV" role="33vP2m">
                              <node concept="1eOMI4" id="5p8T3QHDDFW" role="2Oq$k0">
                                <node concept="10QFUN" id="5p8T3QHDDFX" role="1eOMHV">
                                  <node concept="37vLTw" id="5p8T3QHDDFY" role="10QFUP">
                                    <ref role="3cqZAo" node="5p8T3QHDBTn" resolve="nvar" />
                                  </node>
                                  <node concept="3uibUv" id="5p8T3QHDDFZ" role="10QFUM">
                                    <ref role="3uigEE" node="7jC45KcioOY" resolve="StringLogical.StringLogicalVar" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="5p8T3QHDDG0" role="2OqNvi">
                                <ref role="37wK5l" node="7jC45Kcis37" resolve="logical" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="3HJTsBn83CR" role="3cqZAp">
                          <node concept="2OqwBi" id="3HJTsBn83DT" role="3clFbG">
                            <node concept="37vLTw" id="4xBopTzr$Ed" role="2Oq$k0">
                              <ref role="3cqZAo" node="4xBopTznWRz" resolve="computingSession" />
                            </node>
                            <node concept="liA8E" id="3HJTsBn83JD" role="2OqNvi">
                              <ref role="37wK5l" to="bspi:4xBopTznPKO" resolve="tell" />
                              <node concept="10M0yZ" id="4xBopTzrMpw" role="37wK5m">
                                <ref role="3cqZAo" node="3HJTsBn4kQs" resolve="INSTANCE" />
                                <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
                              </node>
                              <node concept="10QFUN" id="5p8T3QHDoek" role="37wK5m">
                                <node concept="3uibUv" id="5p8T3QHDqlq" role="10QFUM">
                                  <ref role="3uigEE" node="1H8E3iB85PX" resolve="StringLogical" />
                                </node>
                                <node concept="37vLTw" id="5p8T3QHDo8t" role="10QFUP">
                                  <ref role="3cqZAo" node="6SkxsMzDQjQ" resolve="bvarLogical" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="5p8T3QHDELY" role="37wK5m">
                                <ref role="3cqZAo" node="5p8T3QHDDFU" resolve="nodeLogical" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="5p8T3QHDG2H" role="3cqZAp" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6SkxsMzDp28" role="1Duv9x">
            <property role="TrG5h" value="bnd" />
            <node concept="3uibUv" id="6SkxsMzDp2c" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution.Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="6SkxsMzDp2d" role="1DdaDG">
            <node concept="37vLTw" id="6SkxsMzDp2e" role="2Oq$k0">
              <ref role="3cqZAo" node="6SkxsMzDnLJ" resolve="subs" />
            </node>
            <node concept="liA8E" id="6SkxsMzDp2f" role="2OqNvi">
              <ref role="37wK5l" to="yt73:~Substitution.bindings()" resolve="bindings" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6SkxsMzEz46" role="3cqZAp" />
        <node concept="3SKdUt" id="6SkxsMzE_KM" role="3cqZAp">
          <node concept="3SKdUq" id="6SkxsMzEA5A" role="3SKWNk">
            <property role="3SKdUp" value="unification succeeded and all the bindings have been processed" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4U_yxogCgbX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogBZ9l" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogBZsK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="4U_yxogBZsL" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="3uibUv" id="4U_yxogBZsM" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogBZsN" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogBZCz" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogBZsP" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogBZsQ" role="1B3o_S" />
      <node concept="2AHcQZ" id="4U_yxogBZsR" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4U_yxogBZsS" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogBZsT" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4U_yxogBZsU" role="3clF47">
        <node concept="3clFbF" id="1bm7a6EV6Wo" role="3cqZAp">
          <node concept="1rXfSq" id="1bm7a6EV6Wn" role="3clFbG">
            <ref role="37wK5l" node="4U_yxogBZLB" resolve="tellUni" />
            <node concept="37vLTw" id="1bm7a6EV7k2" role="37wK5m">
              <ref role="3cqZAo" node="4U_yxogBZsN" resolve="right" />
            </node>
            <node concept="37vLTw" id="1bm7a6EV7BE" role="37wK5m">
              <ref role="3cqZAo" node="4U_yxogBZsL" resolve="leftVal" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4U_yxogCgFa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogBZsJ" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogBZLB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="4U_yxogBZLE" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogBZLF" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogBZLC" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="3uibUv" id="4U_yxogBZLD" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogBZLG" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogBZLH" role="1B3o_S" />
      <node concept="2AHcQZ" id="4U_yxogBZLI" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4U_yxogBZLJ" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogBZLK" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4U_yxogBZLL" role="3clF47">
        <node concept="3cpWs8" id="7d$oK1$qfYc" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$qfYd" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="7d$oK1$qfYe" role="1tU5fm">
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$qfYf" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$qfYg" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogBZLE" resolve="left" />
              </node>
              <node concept="liA8E" id="7d$oK1$qfYh" role="2OqNvi">
                <ref role="37wK5l" node="dfChU1gcsX" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1bm7a6EV0yc" role="3cqZAp" />
        <node concept="3clFbJ" id="1bm7a6EV0XB" role="3cqZAp">
          <node concept="3clFbS" id="1bm7a6EV0XC" role="3clFbx">
            <node concept="3clFbF" id="1bm7a6EV0XD" role="3cqZAp">
              <node concept="2YIFZM" id="1bm7a6FeHva" role="3clFbG">
                <ref role="37wK5l" to="eift:~ConstraintSystemUtil.queue(ConstraintSystem,Runnable)" resolve="queue" />
                <ref role="1Pybhc" to="eift:~ConstraintSystemUtil" resolve="ConstraintSystemUtil" />
                <node concept="37vLTw" id="1bm7a6FeHvb" role="37wK5m">
                  <ref role="3cqZAo" node="4U_yxogDGOE" resolve="constraintSystem" />
                </node>
                <node concept="1bVj0M" id="1bm7a6FeHvc" role="37wK5m">
                  <node concept="3clFbS" id="1bm7a6FeHvd" role="1bW5cS">
                    <node concept="3clFbF" id="1bm7a6FeHve" role="3cqZAp">
                      <node concept="1rXfSq" id="1bm7a6FeHvf" role="3clFbG">
                        <ref role="37wK5l" node="4U_yxogBZLB" resolve="tellUni" />
                        <node concept="37vLTw" id="7d$oK1$qjQ$" role="37wK5m">
                          <ref role="3cqZAo" node="7d$oK1$qfYd" resolve="leftRepr" />
                        </node>
                        <node concept="37vLTw" id="1bm7a6FeHvh" role="37wK5m">
                          <ref role="3cqZAo" node="4U_yxogBZLC" resolve="rightVal" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1bm7a6EV0XM" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="1bm7a6EV0XN" role="3clFbw">
            <node concept="37vLTw" id="1bm7a6EV0XO" role="2Oq$k0">
              <ref role="3cqZAo" node="4U_yxogDGOE" resolve="constraintSystem" />
            </node>
            <node concept="liA8E" id="1bm7a6EV0XP" role="2OqNvi">
              <ref role="37wK5l" to="eifs:~ConstraintSystem.isQueuing():boolean" resolve="isQueuing" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1bm7a6EV0zi" role="3cqZAp" />
        <node concept="3cpWs8" id="1bm7a6EUZWd" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6EUZWe" role="3cpWs9">
            <property role="TrG5h" value="leftVal" />
            <node concept="3uibUv" id="1bm7a6EUZW9" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
            <node concept="2OqwBi" id="1bm7a6EUZWf" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$qgWW" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$qfYd" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6EUZWh" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1bm7a6EV2Np" role="3cqZAp">
          <node concept="3clFbS" id="1bm7a6EV2Ns" role="3clFbx">
            <node concept="3clFbF" id="1bm7a6EV48H" role="3cqZAp">
              <node concept="2OqwBi" id="1bm7a6EV4cC" role="3clFbG">
                <node concept="37vLTw" id="7d$oK1$qhnK" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$qfYd" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="1bm7a6EV5ci" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmK4yW" resolve="setValue" />
                  <node concept="37vLTw" id="1bm7a6EV5e0" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogBZLC" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1bm7a6EV64O" role="3cqZAp">
              <node concept="2OqwBi" id="1bm7a6EV64P" role="3clFbG">
                <node concept="37vLTw" id="7d$oK1$qhLD" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$qfYd" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="1bm7a6EV64R" role="2OqNvi">
                  <ref role="37wK5l" to="eifs:~Logical.rehashAllAndDispose():void" resolve="rehashAllAndDispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7d$oK1$raE$" role="3cqZAp" />
            <node concept="3SKdUt" id="7d$oK1$r7D0" role="3cqZAp">
              <node concept="3SKdUq" id="7d$oK1$r7Gh" role="3SKWNk">
                <property role="3SKdUp" value="TODO: check the invariants of leftRepr" />
              </node>
            </node>
            <node concept="3clFbF" id="3HJTsBmDmAV" role="3cqZAp">
              <node concept="2OqwBi" id="3HJTsBmDmKb" role="3clFbG">
                <node concept="37vLTw" id="3HJTsBmDmAT" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$qfYd" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="3HJTsBmDnig" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmDhnk" resolve="reactivateAndClearObservers" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1bm7a6EV5AJ" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="1bm7a6EV3c0" role="3clFbw">
            <node concept="10Nm6u" id="1bm7a6EV3fP" role="3uHU7w" />
            <node concept="37vLTw" id="1bm7a6EV2Ww" role="3uHU7B">
              <ref role="3cqZAo" node="1bm7a6EUZWe" resolve="leftVal" />
            </node>
          </node>
          <node concept="9aQIb" id="1bm7a6EV3hd" role="9aQIa">
            <node concept="3clFbS" id="1bm7a6EV3he" role="9aQI4">
              <node concept="3clFbF" id="6SkxsMzEU$Q" role="3cqZAp">
                <node concept="1rXfSq" id="6SkxsMzEU$P" role="3clFbG">
                  <ref role="37wK5l" node="6GYQG_SpvAG" resolve="tellUni" />
                  <node concept="37vLTw" id="6SkxsMzEUWY" role="37wK5m">
                    <ref role="3cqZAo" node="1bm7a6EUZWe" resolve="leftVal" />
                  </node>
                  <node concept="37vLTw" id="6SkxsMzEV29" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogBZLC" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4U_yxogChbd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogBZLA" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogC05I" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="4U_yxogC05J" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogC05K" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogC0jU" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogC0jV" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogC05N" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogC05O" role="1B3o_S" />
      <node concept="2AHcQZ" id="4U_yxogC05P" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4U_yxogC05Q" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogC05R" role="2B70Vg">
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4U_yxogC05S" role="3clF47">
        <node concept="3clFbJ" id="4U_yxogDsYF" role="3cqZAp">
          <node concept="3clFbS" id="4U_yxogDsYG" role="3clFbx">
            <node concept="3cpWs6" id="4U_yxogDtRP" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="4U_yxogDt6$" role="3clFbw">
            <node concept="37vLTw" id="4U_yxogDtvd" role="3uHU7w">
              <ref role="3cqZAo" node="4U_yxogC0jU" resolve="right" />
            </node>
            <node concept="37vLTw" id="4U_yxogDsZV" role="3uHU7B">
              <ref role="3cqZAo" node="4U_yxogC05J" resolve="left" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4U_yxogDtSL" role="3cqZAp" />
        <node concept="3cpWs8" id="7d$oK1$rAnD" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$rAnE" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="7d$oK1$rAnF" role="1tU5fm">
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$rAnG" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rAnH" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogC05J" resolve="left" />
              </node>
              <node concept="liA8E" id="7d$oK1$rAnI" role="2OqNvi">
                <ref role="37wK5l" node="dfChU1gcsX" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7d$oK1$rAnJ" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$rAnK" role="3cpWs9">
            <property role="TrG5h" value="rightRepr" />
            <node concept="3uibUv" id="7d$oK1$rAnL" role="1tU5fm">
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$rAnM" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rAnN" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogC0jU" resolve="right" />
              </node>
              <node concept="liA8E" id="7d$oK1$rAnO" role="2OqNvi">
                <ref role="37wK5l" node="dfChU1gcsX" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4U_yxogDxtv" role="3cqZAp" />
        <node concept="3clFbJ" id="4U_yxogDxEc" role="3cqZAp">
          <node concept="3clFbS" id="4U_yxogDxEf" role="3clFbx">
            <node concept="3cpWs6" id="4U_yxogDybj" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="4U_yxogDy8i" role="3clFbw">
            <node concept="37vLTw" id="7d$oK1$rBSI" role="3uHU7w">
              <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
            </node>
            <node concept="37vLTw" id="7d$oK1$rBvZ" role="3uHU7B">
              <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4U_yxogDycf" role="3cqZAp" />
        <node concept="3clFbJ" id="4U_yxogDyfZ" role="3cqZAp">
          <node concept="3clFbS" id="4U_yxogDyg2" role="3clFbx">
            <node concept="3clFbF" id="1bm7a6ESbDn" role="3cqZAp">
              <node concept="2YIFZM" id="1bm7a6FeHZx" role="3clFbG">
                <ref role="37wK5l" to="eift:~ConstraintSystemUtil.queue(ConstraintSystem,Runnable)" resolve="queue" />
                <ref role="1Pybhc" to="eift:~ConstraintSystemUtil" resolve="ConstraintSystemUtil" />
                <node concept="37vLTw" id="1bm7a6FeHZy" role="37wK5m">
                  <ref role="3cqZAo" node="4U_yxogDGOE" resolve="constraintSystem" />
                </node>
                <node concept="1bVj0M" id="1bm7a6FeHZz" role="37wK5m">
                  <node concept="3clFbS" id="1bm7a6FeHZ$" role="1bW5cS">
                    <node concept="3clFbF" id="1bm7a6FeHZ_" role="3cqZAp">
                      <node concept="1rXfSq" id="1bm7a6FeHZA" role="3clFbG">
                        <ref role="37wK5l" node="4U_yxogC05I" resolve="tellUni" />
                        <node concept="37vLTw" id="7d$oK1$rXgC" role="37wK5m">
                          <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                        </node>
                        <node concept="37vLTw" id="7d$oK1$rXMJ" role="37wK5m">
                          <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1bm7a6EU4Lp" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="4U_yxogDIEs" role="3clFbw">
            <node concept="37vLTw" id="4U_yxogDIig" role="2Oq$k0">
              <ref role="3cqZAo" node="4U_yxogDGOE" resolve="constraintSystem" />
            </node>
            <node concept="liA8E" id="4U_yxogDIKF" role="2OqNvi">
              <ref role="37wK5l" to="eifs:~ConstraintSystem.isQueuing():boolean" resolve="isQueuing" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1bm7a6ESeh1" role="3cqZAp" />
        <node concept="3clFbJ" id="1bm7a6ETDaN" role="3cqZAp">
          <node concept="3clFbS" id="1bm7a6ETDaQ" role="3clFbx">
            <node concept="3clFbF" id="1bm7a6ETFYW" role="3cqZAp">
              <node concept="1rXfSq" id="1bm7a6ETFYV" role="3clFbG">
                <ref role="37wK5l" node="4U_yxogC05I" resolve="tellUni" />
                <node concept="37vLTw" id="7d$oK1$rIWS" role="37wK5m">
                  <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                </node>
                <node concept="37vLTw" id="7d$oK1$rDe0" role="37wK5m">
                  <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1bm7a6ETHxT" role="3cqZAp" />
          </node>
          <node concept="3eOVzh" id="1bm7a6ETEMk" role="3clFbw">
            <node concept="2OqwBi" id="1bm7a6ETFzX" role="3uHU7w">
              <node concept="37vLTw" id="7d$oK1$rCMW" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6ETFSp" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmD3ef" resolve="rank" />
              </node>
            </node>
            <node concept="2OqwBi" id="1bm7a6ETDv8" role="3uHU7B">
              <node concept="37vLTw" id="7d$oK1$rCn4" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6ETDQM" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmD3ef" resolve="rank" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1bm7a6ETIam" role="3cqZAp">
          <node concept="3clFbS" id="1bm7a6ETIap" role="3clFbx">
            <node concept="3clFbF" id="1bm7a6ETKOC" role="3cqZAp">
              <node concept="2OqwBi" id="1bm7a6ETKTH" role="3clFbG">
                <node concept="37vLTw" id="7d$oK1$rE4T" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="1bm7a6ETLA$" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmD3em" resolve="incRank" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1bm7a6ETJtz" role="3clFbw">
            <node concept="2OqwBi" id="1bm7a6ETKe1" role="3uHU7w">
              <node concept="37vLTw" id="7d$oK1$rJof" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6ETKyt" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmD3ef" resolve="rank" />
              </node>
            </node>
            <node concept="2OqwBi" id="1bm7a6ETIAy" role="3uHU7B">
              <node concept="37vLTw" id="7d$oK1$rDE4" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6ETJ2Q" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmD3ef" resolve="rank" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1bm7a6ETLS_" role="3cqZAp">
          <node concept="2OqwBi" id="1bm7a6ETM9W" role="3clFbG">
            <node concept="37vLTw" id="7d$oK1$rJM7" role="2Oq$k0">
              <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
            </node>
            <node concept="liA8E" id="1bm7a6ETMW8" role="2OqNvi">
              <ref role="37wK5l" node="3HJTsBmD3e2" resolve="setParent" />
              <node concept="37vLTw" id="7d$oK1$rEug" role="37wK5m">
                <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1bm7a6ETArX" role="3cqZAp" />
        <node concept="3cpWs8" id="1bm7a6ESodZ" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6ESoe0" role="3cpWs9">
            <property role="TrG5h" value="leftVal" />
            <node concept="3uibUv" id="1bm7a6ESoe1" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
            <node concept="2OqwBi" id="1bm7a6ESoe2" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rESp" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6ESoe4" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bm7a6ESoe5" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6ESoe6" role="3cpWs9">
            <property role="TrG5h" value="rightVal" />
            <node concept="3uibUv" id="1bm7a6ESoe7" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
            <node concept="2OqwBi" id="1bm7a6ESoe8" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rKcs" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6ESoea" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1bm7a6ESoeb" role="3cqZAp" />
        <node concept="3clFbJ" id="1bm7a6ETNtZ" role="3cqZAp">
          <node concept="3clFbS" id="1bm7a6ETNu2" role="3clFbx">
            <node concept="3SKdUt" id="1bm7a6ETRAY" role="3cqZAp">
              <node concept="3SKdUq" id="1bm7a6ETRBQ" role="3SKWNk">
                <property role="3SKdUp" value="var ground" />
              </node>
            </node>
            <node concept="3clFbF" id="1bm7a6EU0T2" role="3cqZAp">
              <node concept="2OqwBi" id="1bm7a6EU0X1" role="3clFbG">
                <node concept="37vLTw" id="7d$oK1$rFVH" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="1bm7a6EU1Ab" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmK4yW" resolve="setValue" />
                  <node concept="2OqwBi" id="1bm7a6EU1P$" role="37wK5m">
                    <node concept="37vLTw" id="7d$oK1$rKDe" role="2Oq$k0">
                      <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                    </node>
                    <node concept="liA8E" id="1bm7a6EU2wg" role="2OqNvi">
                      <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1bm7a6EU2Mj" role="3cqZAp">
              <node concept="2OqwBi" id="1bm7a6EU2RG" role="3clFbG">
                <node concept="37vLTw" id="7d$oK1$rGlr" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="1bm7a6EU3xE" role="2OqNvi">
                  <ref role="37wK5l" to="eifs:~Logical.rehashAllAndDispose():void" resolve="rehashAllAndDispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1bm7a6EU3$B" role="3cqZAp" />
            <node concept="3clFbF" id="3HJTsBmDoas" role="3cqZAp">
              <node concept="2OqwBi" id="3HJTsBmDokY" role="3clFbG">
                <node concept="37vLTw" id="3HJTsBmDoaq" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="3HJTsBmDpoI" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmDhnk" resolve="reactivateAndClearObservers" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1bm7a6EU_8e" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="1bm7a6ETQ0A" role="3clFbw">
            <node concept="3y3z36" id="1bm7a6ETQeM" role="3uHU7w">
              <node concept="10Nm6u" id="1bm7a6ETQfV" role="3uHU7w" />
              <node concept="37vLTw" id="1bm7a6ETQcj" role="3uHU7B">
                <ref role="3cqZAo" node="1bm7a6ESoe6" resolve="rightVal" />
              </node>
            </node>
            <node concept="3clFbC" id="1bm7a6ETPON" role="3uHU7B">
              <node concept="37vLTw" id="1bm7a6ETPE4" role="3uHU7B">
                <ref role="3cqZAo" node="1bm7a6ESoe0" resolve="leftVal" />
              </node>
              <node concept="10Nm6u" id="1bm7a6ETPZX" role="3uHU7w" />
            </node>
          </node>
          <node concept="3eNFk2" id="1bm7a6ETQiJ" role="3eNLev">
            <node concept="1Wc70l" id="1bm7a6ETQzC" role="3eO9$A">
              <node concept="3clFbC" id="1bm7a6ETQBE" role="3uHU7w">
                <node concept="10Nm6u" id="1bm7a6ETQDD" role="3uHU7w" />
                <node concept="37vLTw" id="1bm7a6ETQ$I" role="3uHU7B">
                  <ref role="3cqZAo" node="1bm7a6ESoe6" resolve="rightVal" />
                </node>
              </node>
              <node concept="3y3z36" id="1bm7a6ETQxx" role="3uHU7B">
                <node concept="37vLTw" id="1bm7a6ETQvA" role="3uHU7B">
                  <ref role="3cqZAo" node="1bm7a6ESoe0" resolve="leftVal" />
                </node>
                <node concept="10Nm6u" id="1bm7a6ETQy4" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbS" id="1bm7a6ETQiL" role="3eOfB_">
              <node concept="3SKdUt" id="1bm7a6ETRDG" role="3cqZAp">
                <node concept="3SKdUq" id="1bm7a6ETRDI" role="3SKWNk">
                  <property role="3SKdUp" value="ground var" />
                </node>
              </node>
              <node concept="3clFbF" id="1bm7a6EUzC8" role="3cqZAp">
                <node concept="2OqwBi" id="1bm7a6EUzC9" role="3clFbG">
                  <node concept="37vLTw" id="7d$oK1$rL35" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                  </node>
                  <node concept="liA8E" id="1bm7a6EUzCb" role="2OqNvi">
                    <ref role="37wK5l" node="3HJTsBmK4yW" resolve="setValue" />
                    <node concept="2OqwBi" id="1bm7a6EUzCc" role="37wK5m">
                      <node concept="37vLTw" id="7d$oK1$rHET" role="2Oq$k0">
                        <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                      </node>
                      <node concept="liA8E" id="1bm7a6EUzCe" role="2OqNvi">
                        <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1bm7a6EUzC4" role="3cqZAp">
                <node concept="2OqwBi" id="1bm7a6EUzC5" role="3clFbG">
                  <node concept="37vLTw" id="7d$oK1$rLsN" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                  </node>
                  <node concept="liA8E" id="1bm7a6EUzC7" role="2OqNvi">
                    <ref role="37wK5l" to="eifs:~Logical.rehashAllAndDispose():void" resolve="rehashAllAndDispose" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1bm7a6EUzC3" role="3cqZAp" />
              <node concept="3clFbF" id="3HJTsBmDpNa" role="3cqZAp">
                <node concept="2OqwBi" id="3HJTsBmDq5g" role="3clFbG">
                  <node concept="37vLTw" id="3HJTsBmDpN8" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                  </node>
                  <node concept="liA8E" id="3HJTsBmDr90" role="2OqNvi">
                    <ref role="37wK5l" node="3HJTsBmDhnk" resolve="reactivateAndClearObservers" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1bm7a6EU_eB" role="3cqZAp" />
            </node>
          </node>
          <node concept="3eNFk2" id="1bm7a6ETQFB" role="3eNLev">
            <node concept="1Wc70l" id="1bm7a6ETQY6" role="3eO9$A">
              <node concept="3clFbC" id="1bm7a6ETRMO" role="3uHU7w">
                <node concept="37vLTw" id="1bm7a6ETRMR" role="3uHU7B">
                  <ref role="3cqZAo" node="1bm7a6ESoe6" resolve="rightVal" />
                </node>
                <node concept="10Nm6u" id="1bm7a6ETRMQ" role="3uHU7w" />
              </node>
              <node concept="3clFbC" id="1bm7a6ETRKJ" role="3uHU7B">
                <node concept="37vLTw" id="1bm7a6ETRKL" role="3uHU7B">
                  <ref role="3cqZAo" node="1bm7a6ESoe0" resolve="leftVal" />
                </node>
                <node concept="10Nm6u" id="1bm7a6ETRKM" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbS" id="1bm7a6ETQFD" role="3eOfB_">
              <node concept="3SKdUt" id="1bm7a6ETSu_" role="3cqZAp">
                <node concept="3SKdUq" id="1bm7a6ETSuB" role="3SKWNk">
                  <property role="3SKdUp" value="var var" />
                </node>
              </node>
              <node concept="3clFbF" id="1bm7a6EU5Cw" role="3cqZAp">
                <node concept="1rXfSq" id="1bm7a6EU5Cv" role="3clFbG">
                  <ref role="37wK5l" node="1bm7a6ESp$p" resolve="mergeObservers" />
                  <node concept="37vLTw" id="7d$oK1$rMgq" role="37wK5m">
                    <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                  </node>
                  <node concept="37vLTw" id="7d$oK1$rI5I" role="37wK5m">
                    <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1bm7a6EU_G1" role="3cqZAp" />
            </node>
          </node>
          <node concept="9aQIb" id="1bm7a6ETRlN" role="9aQIa">
            <node concept="3clFbS" id="1bm7a6ETRlO" role="9aQI4">
              <node concept="3SKdUt" id="1bm7a6ETRFA" role="3cqZAp">
                <node concept="3SKdUq" id="1bm7a6ETRGv" role="3SKWNk">
                  <property role="3SKdUp" value="ground ground" />
                </node>
              </node>
              <node concept="3clFbF" id="6SkxsMzEWn9" role="3cqZAp">
                <node concept="1rXfSq" id="6SkxsMzEWna" role="3clFbG">
                  <ref role="37wK5l" node="6GYQG_SpvAG" resolve="tellUni" />
                  <node concept="37vLTw" id="6SkxsMzEWnb" role="37wK5m">
                    <ref role="3cqZAo" node="1bm7a6ESoe0" resolve="leftVal" />
                  </node>
                  <node concept="37vLTw" id="6SkxsMzEWnc" role="37wK5m">
                    <ref role="3cqZAo" node="1bm7a6ESoe6" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4U_yxogChDW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogC05H" role="jymVt" />
    <node concept="3clFb_" id="6GYQG_SpvAS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="6GYQG_SpvAT" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="3uibUv" id="6GYQG_SpvAU" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="6GYQG_SpvAV" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="3uibUv" id="6GYQG_SpvAW" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogC8WW" role="3clF45" />
      <node concept="3Tm1VV" id="6GYQG_SpvAY" role="1B3o_S" />
      <node concept="2AHcQZ" id="6GYQG_SpvB0" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6GYQG_SpvB1" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6GYQG_SpvB2" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6GYQG_SpvB3" role="3clF47">
        <node concept="3cpWs8" id="6SkxsMzGv6v" role="3cqZAp">
          <node concept="3cpWsn" id="6SkxsMzGv6w" role="3cpWs9">
            <property role="TrG5h" value="subs" />
            <node concept="3uibUv" id="6SkxsMzGv6x" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
            </node>
            <node concept="1rXfSq" id="6SkxsMzGv6y" role="33vP2m">
              <ref role="37wK5l" node="4U_yxogCRUf" resolve="unify" />
              <node concept="37vLTw" id="6SkxsMzGv6$" role="37wK5m">
                <ref role="3cqZAo" node="6GYQG_SpvAT" resolve="leftVal" />
              </node>
              <node concept="37vLTw" id="6SkxsMzGxzH" role="37wK5m">
                <ref role="3cqZAo" node="6GYQG_SpvAV" resolve="rightVal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6xYPVrp_rZu" role="3cqZAp">
          <node concept="3clFbS" id="6xYPVrp_rZv" role="3clFbx">
            <node concept="3clFbF" id="24Vro6cRuza" role="3cqZAp">
              <node concept="2OqwBi" id="24Vro6cRvuy" role="3clFbG">
                <node concept="37vLTw" id="24Vro6cRJzK" role="2Oq$k0">
                  <ref role="3cqZAo" node="24Vro6cRIgn" resolve="tracer" />
                </node>
                <node concept="liA8E" id="24Vro6cRJN_" role="2OqNvi">
                  <ref role="37wK5l" to="bspi:24Vro6cQCzk" resolve="askFailure" />
                  <node concept="10M0yZ" id="24Vro6cROA3" role="37wK5m">
                    <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                    <ref role="3cqZAo" node="2GO7tyJY8Rr" resolve="INSTANCE" />
                  </node>
                  <node concept="37vLTw" id="24Vro6cRJSf" role="37wK5m">
                    <ref role="3cqZAo" node="6GYQG_SpvAT" resolve="leftVal" />
                  </node>
                  <node concept="37vLTw" id="24Vro6cRK8v" role="37wK5m">
                    <ref role="3cqZAo" node="6GYQG_SpvAV" resolve="rightVal" />
                  </node>
                  <node concept="1rXfSq" id="1MWQR5Sq0BL" role="37wK5m">
                    <ref role="37wK5l" node="1MWQR5SpMLA" resolve="formatMessage" />
                    <node concept="37vLTw" id="1MWQR5Sq0XE" role="37wK5m">
                      <ref role="3cqZAo" node="6SkxsMzGv6w" resolve="subs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6xYPVrp_rZw" role="3cqZAp">
              <node concept="3clFbT" id="6xYPVrp_rZx" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6xYPVrp_rZy" role="3clFbw">
            <node concept="2OqwBi" id="6xYPVrp_rZz" role="3fr31v">
              <node concept="37vLTw" id="6xYPVrp_vQg" role="2Oq$k0">
                <ref role="3cqZAo" node="6SkxsMzGv6w" resolve="subs" />
              </node>
              <node concept="liA8E" id="6xYPVrp_rZ_" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Substitution.isSuccessful()" resolve="isSuccessful" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xYPVrp_rZA" role="3cqZAp" />
        <node concept="1DcWWT" id="6xYPVrp_rZB" role="3cqZAp">
          <node concept="3clFbS" id="6xYPVrp_rZC" role="2LFqv$">
            <node concept="3clFbJ" id="6xYPVrp_rZM" role="3cqZAp">
              <node concept="3clFbS" id="6xYPVrp_rZN" role="3clFbx">
                <node concept="3cpWs6" id="6xYPVrp_rZO" role="3cqZAp">
                  <node concept="3clFbT" id="6xYPVrp_rZP" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="6xYPVrp_rZQ" role="3clFbw">
                <node concept="1rXfSq" id="6xYPVrp_rZR" role="3fr31v">
                  <ref role="37wK5l" node="6xYPVrp$baS" resolve="askLogicalUni" />
                  <node concept="2OqwBi" id="6xYPVrp_rZS" role="37wK5m">
                    <node concept="1eOMI4" id="6xYPVrp_rZT" role="2Oq$k0">
                      <node concept="10QFUN" id="6xYPVrp_rZU" role="1eOMHV">
                        <node concept="3uibUv" id="6xYPVrp_rZV" role="10QFUM">
                          <ref role="3uigEE" to="yg8f:46l0wJhtOD_" resolve="ILogicalVar" />
                        </node>
                        <node concept="2OqwBi" id="6xYPVrp_rZW" role="10QFUP">
                          <node concept="37vLTw" id="6xYPVrp_rZX" role="2Oq$k0">
                            <ref role="3cqZAo" node="6xYPVrp_s03" resolve="bnd" />
                          </node>
                          <node concept="liA8E" id="6xYPVrp_rZY" role="2OqNvi">
                            <ref role="37wK5l" to="yt73:~Substitution.Binding.var()" resolve="var" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6xYPVrp_rZZ" role="2OqNvi">
                      <ref role="37wK5l" to="yg8f:46l0wJhtXlr" resolve="logical" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6xYPVrp_s00" role="37wK5m">
                    <node concept="37vLTw" id="6xYPVrp_s01" role="2Oq$k0">
                      <ref role="3cqZAo" node="6xYPVrp_s03" resolve="bnd" />
                    </node>
                    <node concept="liA8E" id="6xYPVrp_s02" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution.Binding.term()" resolve="term" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6xYPVrp_s03" role="1Duv9x">
            <property role="TrG5h" value="bnd" />
            <node concept="3uibUv" id="6xYPVrp_s04" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution.Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="6xYPVrp_s05" role="1DdaDG">
            <node concept="37vLTw" id="6xYPVrp_s06" role="2Oq$k0">
              <ref role="3cqZAo" node="6SkxsMzGv6w" resolve="subs" />
            </node>
            <node concept="liA8E" id="6xYPVrp_s07" role="2OqNvi">
              <ref role="37wK5l" to="yt73:~Substitution.bindings()" resolve="bindings" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="24Vro6cSeKn" role="3cqZAp" />
        <node concept="3clFbF" id="24Vro6cScGL" role="3cqZAp">
          <node concept="2OqwBi" id="24Vro6cScGM" role="3clFbG">
            <node concept="37vLTw" id="24Vro6cScGN" role="2Oq$k0">
              <ref role="3cqZAo" node="24Vro6cRIgn" resolve="tracer" />
            </node>
            <node concept="liA8E" id="24Vro6cScGO" role="2OqNvi">
              <ref role="37wK5l" to="bspi:24Vro6cQC7A" resolve="askSuccess" />
              <node concept="10M0yZ" id="24Vro6cScGP" role="37wK5m">
                <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                <ref role="3cqZAo" node="2GO7tyJY8Rr" resolve="INSTANCE" />
              </node>
              <node concept="37vLTw" id="24Vro6cScGQ" role="37wK5m">
                <ref role="3cqZAo" node="6GYQG_SpvAT" resolve="leftVal" />
              </node>
              <node concept="37vLTw" id="24Vro6cScGR" role="37wK5m">
                <ref role="3cqZAo" node="6GYQG_SpvAV" resolve="rightVal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6xYPVrp_s09" role="3cqZAp">
          <node concept="3clFbT" id="6xYPVrp_s0a" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4U_yxogCi8v" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogC15$" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogC1eF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="4U_yxogC1eG" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="3uibUv" id="4U_yxogC1eH" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogC1eI" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogC1uU" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogC8Kd" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogC1eL" role="1B3o_S" />
      <node concept="2AHcQZ" id="4U_yxogC1eM" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4U_yxogC1eN" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogC1eO" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4U_yxogC1eP" role="3clF47">
        <node concept="3clFbF" id="1bm7a6EVoQx" role="3cqZAp">
          <node concept="1rXfSq" id="1bm7a6EVoQw" role="3clFbG">
            <ref role="37wK5l" node="4U_yxogC1Eh" resolve="askUni" />
            <node concept="37vLTw" id="1bm7a6EVpBI" role="37wK5m">
              <ref role="3cqZAo" node="4U_yxogC1eI" resolve="right" />
            </node>
            <node concept="37vLTw" id="1bm7a6EVqdf" role="37wK5m">
              <ref role="3cqZAo" node="4U_yxogC1eG" resolve="leftVal" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4U_yxogCiBu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogC1eE" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogC1Eh" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="4U_yxogC1Ek" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogC1El" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogC1Ei" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="3uibUv" id="4U_yxogC1Ej" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogC8y$" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogC1En" role="1B3o_S" />
      <node concept="2AHcQZ" id="4U_yxogC1Eo" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4U_yxogC1Ep" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogC1Eq" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4U_yxogC1Er" role="3clF47">
        <node concept="3cpWs8" id="4U_yxogDnOi" role="3cqZAp">
          <node concept="3cpWsn" id="4U_yxogDnOj" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="4U_yxogDnOk" role="1tU5fm">
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
            </node>
            <node concept="2OqwBi" id="4U_yxogDnOl" role="33vP2m">
              <node concept="37vLTw" id="4U_yxogDock" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogC1Ek" resolve="left" />
              </node>
              <node concept="liA8E" id="4U_yxogDnOn" role="2OqNvi">
                <ref role="37wK5l" node="dfChU1gcsX" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4U_yxogDnOp" role="3cqZAp">
          <node concept="3clFbS" id="4U_yxogDnOq" role="3clFbx">
            <node concept="3clFbF" id="24Vro6cSitU" role="3cqZAp">
              <node concept="2OqwBi" id="24Vro6cSitV" role="3clFbG">
                <node concept="37vLTw" id="24Vro6cSitW" role="2Oq$k0">
                  <ref role="3cqZAo" node="24Vro6cRIgn" resolve="tracer" />
                </node>
                <node concept="liA8E" id="24Vro6cSitX" role="2OqNvi">
                  <ref role="37wK5l" to="bspi:24Vro6cQC7A" resolve="askSuccess" />
                  <node concept="10M0yZ" id="24Vro6cSitY" role="37wK5m">
                    <ref role="3cqZAo" node="2GO7tyJY8Rr" resolve="INSTANCE" />
                    <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                  </node>
                  <node concept="37vLTw" id="24Vro6cSkqp" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogC1Ek" resolve="left" />
                  </node>
                  <node concept="37vLTw" id="24Vro6cSiu0" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogC1Ei" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4U_yxogDnOr" role="3cqZAp">
              <node concept="3clFbT" id="5oZZzbriPgw" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4U_yxogDnOt" role="3clFbw">
            <node concept="10Nm6u" id="4U_yxogDnOu" role="3uHU7w" />
            <node concept="2OqwBi" id="4U_yxogDnOv" role="3uHU7B">
              <node concept="37vLTw" id="4U_yxogDnOw" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogDnOj" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="4U_yxogDnOx" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6SkxsMzGbYZ" role="3cqZAp" />
        <node concept="3cpWs8" id="6SkxsMzGc5v" role="3cqZAp">
          <node concept="3cpWsn" id="6SkxsMzGc5w" role="3cpWs9">
            <property role="TrG5h" value="subs" />
            <node concept="3uibUv" id="6SkxsMzGc5x" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
            </node>
            <node concept="1rXfSq" id="6SkxsMzGc5y" role="33vP2m">
              <ref role="37wK5l" node="4U_yxogCRUf" resolve="unify" />
              <node concept="2OqwBi" id="6SkxsMzGc5z" role="37wK5m">
                <node concept="37vLTw" id="3K_0akStpXO" role="2Oq$k0">
                  <ref role="3cqZAo" node="4U_yxogDnOj" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="6SkxsMzGc5_" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                </node>
              </node>
              <node concept="37vLTw" id="6SkxsMzGc5B" role="37wK5m">
                <ref role="3cqZAo" node="4U_yxogC1Ei" resolve="rightVal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6xYPVrp_lGU" role="3cqZAp">
          <node concept="3clFbS" id="6xYPVrp_lGV" role="3clFbx">
            <node concept="3clFbF" id="1MWQR5SpD92" role="3cqZAp">
              <node concept="2OqwBi" id="1MWQR5SpD93" role="3clFbG">
                <node concept="37vLTw" id="1MWQR5SpD94" role="2Oq$k0">
                  <ref role="3cqZAo" node="24Vro6cRIgn" resolve="tracer" />
                </node>
                <node concept="liA8E" id="1MWQR5SpD95" role="2OqNvi">
                  <ref role="37wK5l" to="bspi:24Vro6cQCzk" resolve="askFailure" />
                  <node concept="10M0yZ" id="1MWQR5SpD96" role="37wK5m">
                    <ref role="3cqZAo" node="2GO7tyJY8Rr" resolve="INSTANCE" />
                    <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                  </node>
                  <node concept="37vLTw" id="1MWQR5SpErK" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogC1Ek" resolve="left" />
                  </node>
                  <node concept="37vLTw" id="1MWQR5SpD98" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogC1Ei" resolve="rightVal" />
                  </node>
                  <node concept="1rXfSq" id="1MWQR5SpWQS" role="37wK5m">
                    <ref role="37wK5l" node="1MWQR5SpMLA" resolve="formatMessage" />
                    <node concept="37vLTw" id="1MWQR5SpX6U" role="37wK5m">
                      <ref role="3cqZAo" node="6SkxsMzGc5w" resolve="subs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6xYPVrp_lGW" role="3cqZAp">
              <node concept="3clFbT" id="6xYPVrp_lGX" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6xYPVrp_lGY" role="3clFbw">
            <node concept="2OqwBi" id="6xYPVrp_lGZ" role="3fr31v">
              <node concept="37vLTw" id="6xYPVrp_lH0" role="2Oq$k0">
                <ref role="3cqZAo" node="6SkxsMzGc5w" resolve="subs" />
              </node>
              <node concept="liA8E" id="6xYPVrp_lH1" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Substitution.isSuccessful()" resolve="isSuccessful" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xYPVrp_lH2" role="3cqZAp" />
        <node concept="1DcWWT" id="6xYPVrp_lH3" role="3cqZAp">
          <node concept="3clFbS" id="6xYPVrp_lH4" role="2LFqv$">
            <node concept="3clFbJ" id="6xYPVrp_lH5" role="3cqZAp">
              <node concept="3clFbS" id="6xYPVrp_lH6" role="3clFbx">
                <node concept="3N13vt" id="6xYPVrp_lH7" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="6xYPVrp_lHe" role="3clFbw">
                <node concept="2OqwBi" id="6xYPVrp_lHf" role="3uHU7B">
                  <node concept="37vLTw" id="6xYPVrp_lHg" role="2Oq$k0">
                    <ref role="3cqZAo" node="6xYPVrp_lH_" resolve="bnd" />
                  </node>
                  <node concept="liA8E" id="6xYPVrp_lHh" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Substitution.Binding.var()" resolve="var" />
                  </node>
                </node>
                <node concept="37vLTw" id="6xYPVrp_lHi" role="3uHU7w">
                  <ref role="3cqZAo" node="4U_yxogDnOj" resolve="leftRepr" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6xYPVrp_lHj" role="3cqZAp" />
            <node concept="3clFbJ" id="6xYPVrp_lHk" role="3cqZAp">
              <node concept="3clFbS" id="6xYPVrp_lHl" role="3clFbx">
                <node concept="3cpWs6" id="6xYPVrp_lHm" role="3cqZAp">
                  <node concept="3clFbT" id="6xYPVrp_lHn" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="6xYPVrp_lHo" role="3clFbw">
                <node concept="1rXfSq" id="6xYPVrp_lHp" role="3fr31v">
                  <ref role="37wK5l" node="6xYPVrp$baS" resolve="askLogicalUni" />
                  <node concept="2OqwBi" id="6xYPVrp_lHq" role="37wK5m">
                    <node concept="1eOMI4" id="6xYPVrp_lHr" role="2Oq$k0">
                      <node concept="10QFUN" id="6xYPVrp_lHs" role="1eOMHV">
                        <node concept="3uibUv" id="6xYPVrp_lHt" role="10QFUM">
                          <ref role="3uigEE" to="yg8f:46l0wJhtOD_" resolve="ILogicalVar" />
                        </node>
                        <node concept="2OqwBi" id="6xYPVrp_lHu" role="10QFUP">
                          <node concept="37vLTw" id="6xYPVrp_lHv" role="2Oq$k0">
                            <ref role="3cqZAo" node="6xYPVrp_lH_" resolve="bnd" />
                          </node>
                          <node concept="liA8E" id="6xYPVrp_lHw" role="2OqNvi">
                            <ref role="37wK5l" to="yt73:~Substitution.Binding.var()" resolve="var" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6xYPVrp_lHx" role="2OqNvi">
                      <ref role="37wK5l" to="yg8f:46l0wJhtXlr" resolve="logical" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6xYPVrp_lHy" role="37wK5m">
                    <node concept="37vLTw" id="6xYPVrp_lHz" role="2Oq$k0">
                      <ref role="3cqZAo" node="6xYPVrp_lH_" resolve="bnd" />
                    </node>
                    <node concept="liA8E" id="6xYPVrp_lH$" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution.Binding.term()" resolve="term" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6xYPVrp_lH_" role="1Duv9x">
            <property role="TrG5h" value="bnd" />
            <node concept="3uibUv" id="6xYPVrp_lHA" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution.Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="6xYPVrp_lHB" role="1DdaDG">
            <node concept="37vLTw" id="6xYPVrp_lHC" role="2Oq$k0">
              <ref role="3cqZAo" node="6SkxsMzGc5w" resolve="subs" />
            </node>
            <node concept="liA8E" id="6xYPVrp_lHD" role="2OqNvi">
              <ref role="37wK5l" to="yt73:~Substitution.bindings()" resolve="bindings" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xYPVrp_lHE" role="3cqZAp" />
        <node concept="3clFbF" id="24Vro6cS$6C" role="3cqZAp">
          <node concept="2OqwBi" id="24Vro6cS$6D" role="3clFbG">
            <node concept="37vLTw" id="24Vro6cS$6E" role="2Oq$k0">
              <ref role="3cqZAo" node="24Vro6cRIgn" resolve="tracer" />
            </node>
            <node concept="liA8E" id="24Vro6cS$6F" role="2OqNvi">
              <ref role="37wK5l" to="bspi:24Vro6cQC7A" resolve="askSuccess" />
              <node concept="10M0yZ" id="24Vro6cS$6G" role="37wK5m">
                <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                <ref role="3cqZAo" node="2GO7tyJY8Rr" resolve="INSTANCE" />
              </node>
              <node concept="37vLTw" id="24Vro6cS$6H" role="37wK5m">
                <ref role="3cqZAo" node="4U_yxogC1Ek" resolve="left" />
              </node>
              <node concept="37vLTw" id="24Vro6cS$6I" role="37wK5m">
                <ref role="3cqZAo" node="4U_yxogC1Ei" resolve="rightVal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6xYPVrp_lHF" role="3cqZAp">
          <node concept="3clFbT" id="6xYPVrp_lHG" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4U_yxogCj6N" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7txc83pee6D" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogC2zx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="4U_yxogC2zy" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogC2zz" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogC2z$" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogC2QL" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogC8eN" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogC2zB" role="1B3o_S" />
      <node concept="2AHcQZ" id="4U_yxogC2zC" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4U_yxogC2zD" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogC2zE" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4U_yxogC2zF" role="3clF47">
        <node concept="3clFbJ" id="4U_yxogC7xg" role="3cqZAp">
          <node concept="3clFbS" id="4U_yxogC7xh" role="3clFbx">
            <node concept="3clFbF" id="24Vro6cSpbR" role="3cqZAp">
              <node concept="2OqwBi" id="24Vro6cSpbS" role="3clFbG">
                <node concept="37vLTw" id="24Vro6cSpbT" role="2Oq$k0">
                  <ref role="3cqZAo" node="24Vro6cRIgn" resolve="tracer" />
                </node>
                <node concept="liA8E" id="24Vro6cSpbU" role="2OqNvi">
                  <ref role="37wK5l" to="bspi:24Vro6cQC7A" resolve="askSuccess" />
                  <node concept="10M0yZ" id="24Vro6cSpbV" role="37wK5m">
                    <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                    <ref role="3cqZAo" node="2GO7tyJY8Rr" resolve="INSTANCE" />
                  </node>
                  <node concept="37vLTw" id="24Vro6cSpbW" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogC2zy" resolve="left" />
                  </node>
                  <node concept="37vLTw" id="24Vro6cSqj2" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogC2z$" resolve="right" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4U_yxogC7Zq" role="3cqZAp">
              <node concept="3clFbT" id="4U_yxogC80f" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4U_yxogC7D9" role="3clFbw">
            <node concept="37vLTw" id="4U_yxogC7P8" role="3uHU7w">
              <ref role="3cqZAo" node="4U_yxogC2z$" resolve="right" />
            </node>
            <node concept="37vLTw" id="4U_yxogC7yw" role="3uHU7B">
              <ref role="3cqZAo" node="4U_yxogC2zy" resolve="left" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4U_yxogCjFq" role="3cqZAp" />
        <node concept="3cpWs8" id="7d$oK1$nL7E" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$nL7F" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="7d$oK1$nL7G" role="1tU5fm">
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$nL7H" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$nL7I" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogC2zy" resolve="left" />
              </node>
              <node concept="liA8E" id="7d$oK1$nL7J" role="2OqNvi">
                <ref role="37wK5l" node="dfChU1gcsX" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7d$oK1$nLDM" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$nLDN" role="3cpWs9">
            <property role="TrG5h" value="rightRepr" />
            <node concept="3uibUv" id="7d$oK1$nLDO" role="1tU5fm">
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$nLDP" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$nLDQ" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogC2z$" resolve="right" />
              </node>
              <node concept="liA8E" id="7d$oK1$nLDR" role="2OqNvi">
                <ref role="37wK5l" node="dfChU1gcsX" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4U_yxogCA7q" role="3cqZAp">
          <node concept="3clFbS" id="4U_yxogCA7t" role="3clFbx">
            <node concept="3clFbF" id="24Vro6cSqz6" role="3cqZAp">
              <node concept="2OqwBi" id="24Vro6cSqz7" role="3clFbG">
                <node concept="37vLTw" id="24Vro6cSqz8" role="2Oq$k0">
                  <ref role="3cqZAo" node="24Vro6cRIgn" resolve="tracer" />
                </node>
                <node concept="liA8E" id="24Vro6cSqz9" role="2OqNvi">
                  <ref role="37wK5l" to="bspi:24Vro6cQC7A" resolve="askSuccess" />
                  <node concept="10M0yZ" id="24Vro6cSqza" role="37wK5m">
                    <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                    <ref role="3cqZAo" node="2GO7tyJY8Rr" resolve="INSTANCE" />
                  </node>
                  <node concept="37vLTw" id="24Vro6cSqzb" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogC2zy" resolve="left" />
                  </node>
                  <node concept="37vLTw" id="24Vro6cSrFx" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogC2z$" resolve="right" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4U_yxogCANm" role="3cqZAp">
              <node concept="3clFbT" id="4U_yxogCAQD" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4U_yxogCAKd" role="3clFbw">
            <node concept="37vLTw" id="7d$oK1$oi_v" role="3uHU7w">
              <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
            </node>
            <node concept="37vLTw" id="7d$oK1$oicb" role="3uHU7B">
              <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5oZZzbrizbG" role="3cqZAp">
          <node concept="3clFbS" id="5oZZzbrizbH" role="3clFbx">
            <node concept="3clFbF" id="24Vro6cSrV$" role="3cqZAp">
              <node concept="2OqwBi" id="24Vro6cSrV_" role="3clFbG">
                <node concept="37vLTw" id="24Vro6cSrVA" role="2Oq$k0">
                  <ref role="3cqZAo" node="24Vro6cRIgn" resolve="tracer" />
                </node>
                <node concept="liA8E" id="24Vro6cSrVB" role="2OqNvi">
                  <ref role="37wK5l" to="bspi:24Vro6cQC7A" resolve="askSuccess" />
                  <node concept="10M0yZ" id="24Vro6cSrVC" role="37wK5m">
                    <ref role="3cqZAo" node="2GO7tyJY8Rr" resolve="INSTANCE" />
                    <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                  </node>
                  <node concept="37vLTw" id="24Vro6cSrVD" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogC2zy" resolve="left" />
                  </node>
                  <node concept="37vLTw" id="24Vro6cSt4y" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogC2z$" resolve="right" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5oZZzbrizbI" role="3cqZAp">
              <node concept="3clFbT" id="7d9KVSzW7Za" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5oZZzbrizbK" role="3clFbw">
            <node concept="3clFbC" id="5oZZzbrizbL" role="3uHU7w">
              <node concept="10Nm6u" id="5oZZzbrizbM" role="3uHU7w" />
              <node concept="2OqwBi" id="5oZZzbrizbN" role="3uHU7B">
                <node concept="37vLTw" id="7d$oK1$ojqV" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
                </node>
                <node concept="liA8E" id="5oZZzbrizbP" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="5oZZzbrizbQ" role="3uHU7B">
              <node concept="2OqwBi" id="5oZZzbrizbR" role="3uHU7B">
                <node concept="37vLTw" id="7d$oK1$oiZM" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="5oZZzbrizbT" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                </node>
              </node>
              <node concept="10Nm6u" id="5oZZzbrizbU" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4U_yxogDeXH" role="3cqZAp" />
        <node concept="3cpWs8" id="1bm7a6EWb4q" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6EWb4r" role="3cpWs9">
            <property role="TrG5h" value="subs" />
            <node concept="3uibUv" id="1bm7a6EWb4m" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
            </node>
            <node concept="1rXfSq" id="1bm7a6EWb4s" role="33vP2m">
              <ref role="37wK5l" node="4U_yxogCRUf" resolve="unify" />
              <node concept="2OqwBi" id="1bm7a6EWb4t" role="37wK5m">
                <node concept="37vLTw" id="7d$oK1$okp6" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="1bm7a6EWb4v" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                </node>
              </node>
              <node concept="2OqwBi" id="1bm7a6EWb4w" role="37wK5m">
                <node concept="37vLTw" id="7d$oK1$okSZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
                </node>
                <node concept="liA8E" id="1bm7a6EWb4y" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6xYPVrp$4Ed" role="3cqZAp">
          <node concept="3clFbS" id="6xYPVrp$4Ef" role="3clFbx">
            <node concept="3clFbF" id="1MWQR5SpIjw" role="3cqZAp">
              <node concept="2OqwBi" id="1MWQR5SpIjx" role="3clFbG">
                <node concept="37vLTw" id="1MWQR5SpIjy" role="2Oq$k0">
                  <ref role="3cqZAo" node="24Vro6cRIgn" resolve="tracer" />
                </node>
                <node concept="liA8E" id="1MWQR5SpIjz" role="2OqNvi">
                  <ref role="37wK5l" to="bspi:24Vro6cQCzk" resolve="askFailure" />
                  <node concept="10M0yZ" id="1MWQR5SpIj$" role="37wK5m">
                    <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                    <ref role="3cqZAo" node="2GO7tyJY8Rr" resolve="INSTANCE" />
                  </node>
                  <node concept="37vLTw" id="1MWQR5SpJEg" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogC2zy" resolve="left" />
                  </node>
                  <node concept="37vLTw" id="1MWQR5SpJVc" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogC2z$" resolve="right" />
                  </node>
                  <node concept="1rXfSq" id="1MWQR5Sq265" role="37wK5m">
                    <ref role="37wK5l" node="1MWQR5SpMLA" resolve="formatMessage" />
                    <node concept="37vLTw" id="1MWQR5Sq266" role="37wK5m">
                      <ref role="3cqZAo" node="1bm7a6EWb4r" resolve="subs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6xYPVrp$6uI" role="3cqZAp">
              <node concept="3clFbT" id="6xYPVrp$78l" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6xYPVrp$5Oo" role="3clFbw">
            <node concept="2OqwBi" id="6xYPVrp$5Oq" role="3fr31v">
              <node concept="37vLTw" id="6xYPVrp$5Or" role="2Oq$k0">
                <ref role="3cqZAo" node="1bm7a6EWb4r" resolve="subs" />
              </node>
              <node concept="liA8E" id="6xYPVrp$5Os" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Substitution.isSuccessful()" resolve="isSuccessful" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xYPVrp$7Mc" role="3cqZAp" />
        <node concept="1DcWWT" id="6xYPVrp_5wu" role="3cqZAp">
          <node concept="3clFbS" id="6xYPVrp_5ww" role="2LFqv$">
            <node concept="3clFbJ" id="6xYPVrp_6jE" role="3cqZAp">
              <node concept="3clFbS" id="6xYPVrp_6jF" role="3clFbx">
                <node concept="3N13vt" id="6xYPVrp_7sh" role="3cqZAp" />
              </node>
              <node concept="22lmx$" id="6xYPVrp_6M3" role="3clFbw">
                <node concept="3clFbC" id="6xYPVrp_7oR" role="3uHU7w">
                  <node concept="37vLTw" id="6xYPVrp_7qM" role="3uHU7w">
                    <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
                  </node>
                  <node concept="2OqwBi" id="6xYPVrp_77g" role="3uHU7B">
                    <node concept="37vLTw" id="6xYPVrp_6NA" role="2Oq$k0">
                      <ref role="3cqZAo" node="6xYPVrp_5wy" resolve="bnd" />
                    </node>
                    <node concept="liA8E" id="6xYPVrp_7dq" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution.Binding.var()" resolve="var" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6xYPVrp_6_Q" role="3uHU7B">
                  <node concept="2OqwBi" id="6xYPVrp_6ld" role="3uHU7B">
                    <node concept="37vLTw" id="6xYPVrp_6kh" role="2Oq$k0">
                      <ref role="3cqZAo" node="6xYPVrp_5wy" resolve="bnd" />
                    </node>
                    <node concept="liA8E" id="6xYPVrp_6qV" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution.Binding.var()" resolve="var" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6xYPVrp_6Bj" role="3uHU7w">
                    <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6xYPVrp_7st" role="3cqZAp" />
            <node concept="3clFbJ" id="6xYPVrp_7w8" role="3cqZAp">
              <node concept="3clFbS" id="6xYPVrp_7wa" role="3clFbx">
                <node concept="3cpWs6" id="6xYPVrp_8fn" role="3cqZAp">
                  <node concept="3clFbT" id="6xYPVrp_8LE" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="6xYPVrp_7yc" role="3clFbw">
                <node concept="1rXfSq" id="6xYPVrp_7z8" role="3fr31v">
                  <ref role="37wK5l" node="6xYPVrp$baS" resolve="askLogicalUni" />
                  <node concept="2OqwBi" id="6xYPVrp_7QY" role="37wK5m">
                    <node concept="1eOMI4" id="6xYPVrp_7QZ" role="2Oq$k0">
                      <node concept="10QFUN" id="6xYPVrp_7R0" role="1eOMHV">
                        <node concept="3uibUv" id="6xYPVrp_7R1" role="10QFUM">
                          <ref role="3uigEE" to="yg8f:46l0wJhtOD_" resolve="ILogicalVar" />
                        </node>
                        <node concept="2OqwBi" id="6xYPVrp_7R2" role="10QFUP">
                          <node concept="37vLTw" id="6xYPVrp_7R3" role="2Oq$k0">
                            <ref role="3cqZAo" node="6xYPVrp_5wy" resolve="bnd" />
                          </node>
                          <node concept="liA8E" id="6xYPVrp_7R4" role="2OqNvi">
                            <ref role="37wK5l" to="yt73:~Substitution.Binding.var()" resolve="var" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6xYPVrp_7R5" role="2OqNvi">
                      <ref role="37wK5l" to="yg8f:46l0wJhtXlr" resolve="logical" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6xYPVrp_83v" role="37wK5m">
                    <node concept="37vLTw" id="6xYPVrp_81m" role="2Oq$k0">
                      <ref role="3cqZAo" node="6xYPVrp_5wy" resolve="bnd" />
                    </node>
                    <node concept="liA8E" id="6xYPVrp_8db" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution.Binding.term()" resolve="term" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6xYPVrp_5wy" role="1Duv9x">
            <property role="TrG5h" value="bnd" />
            <node concept="3uibUv" id="6xYPVrp_5wA" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution.Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="6xYPVrp_5wB" role="1DdaDG">
            <node concept="37vLTw" id="6xYPVrp_5wC" role="2Oq$k0">
              <ref role="3cqZAo" node="1bm7a6EWb4r" resolve="subs" />
            </node>
            <node concept="liA8E" id="6xYPVrp_5wD" role="2OqNvi">
              <ref role="37wK5l" to="yt73:~Substitution.bindings()" resolve="bindings" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="24Vro6cSyV3" role="3cqZAp" />
        <node concept="3clFbF" id="24Vro6cSweS" role="3cqZAp">
          <node concept="2OqwBi" id="24Vro6cSweT" role="3clFbG">
            <node concept="37vLTw" id="24Vro6cSweU" role="2Oq$k0">
              <ref role="3cqZAo" node="24Vro6cRIgn" resolve="tracer" />
            </node>
            <node concept="liA8E" id="24Vro6cSweV" role="2OqNvi">
              <ref role="37wK5l" to="bspi:24Vro6cQC7A" resolve="askSuccess" />
              <node concept="10M0yZ" id="24Vro6cSweW" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJY8Rr" resolve="INSTANCE" />
                <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
              </node>
              <node concept="37vLTw" id="24Vro6cSweX" role="37wK5m">
                <ref role="3cqZAo" node="4U_yxogC2zy" resolve="left" />
              </node>
              <node concept="37vLTw" id="24Vro6cSxsn" role="37wK5m">
                <ref role="3cqZAo" node="4U_yxogC2z$" resolve="right" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3HJTsBn3F6H" role="3cqZAp">
          <node concept="3clFbT" id="6xYPVrp_bB3" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6xYPVrp$ahc" role="jymVt" />
    <node concept="3clFb_" id="6xYPVrp$baS" role="jymVt">
      <property role="TrG5h" value="askLogicalUni" />
      <node concept="37vLTG" id="6xYPVrp_1P$" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="6xYPVrp_2ET" role="1tU5fm">
          <ref role="3uigEE" to="yg8f:1mP5b6jQP$C" resolve="ILogical" />
          <node concept="3qTvmN" id="6xYPVrp_31s" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="6xYPVrp_37O" role="3clF46">
        <property role="TrG5h" value="bound" />
        <node concept="3uibUv" id="573vQv1oR6C" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="10P_77" id="6xYPVrp$cck" role="3clF45" />
      <node concept="3Tm6S6" id="6xYPVrp$spZ" role="1B3o_S" />
      <node concept="3clFbS" id="6xYPVrp$baW" role="3clF47">
        <node concept="3clFbJ" id="6xYPVrp$mDl" role="3cqZAp">
          <node concept="3clFbS" id="6xYPVrp$mDn" role="3clFbx">
            <node concept="3SKdUt" id="6xYPVrp$mZ7" role="3cqZAp">
              <node concept="3SKdUq" id="6xYPVrp$mZc" role="3SKWNk">
                <property role="3SKdUp" value="recurse into the bound value" />
              </node>
            </node>
            <node concept="3clFbH" id="6xYPVrp$y4c" role="3cqZAp" />
            <node concept="3SKdUt" id="6xYPVrp$n0H" role="3cqZAp">
              <node concept="3SKdUq" id="6xYPVrp$n0S" role="3SKWNk">
                <property role="3SKdUp" value="TODO: double dispatch?" />
              </node>
            </node>
            <node concept="3clFbJ" id="6xYPVrp$mZE" role="3cqZAp">
              <node concept="3clFbS" id="6xYPVrp$mZG" role="3clFbx">
                <node concept="3clFbJ" id="6xYPVrp$wIO" role="3cqZAp">
                  <node concept="3clFbS" id="6xYPVrp$wIQ" role="3clFbx">
                    <node concept="3cpWs6" id="6xYPVrp$WMI" role="3cqZAp">
                      <node concept="3clFbT" id="6xYPVrp$WN9" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="6xYPVrp$wJB" role="3clFbw">
                    <node concept="1rXfSq" id="6xYPVrp$wKr" role="3fr31v">
                      <ref role="37wK5l" node="6xYPVrp$t7Y" resolve="askLogicalUni" />
                      <node concept="10QFUN" id="6xYPVrp$wYA" role="37wK5m">
                        <node concept="37vLTw" id="6xYPVrp$xp2" role="10QFUP">
                          <ref role="3cqZAo" node="6xYPVrp_1P$" resolve="logical" />
                        </node>
                        <node concept="3uibUv" id="6xYPVrp$wZe" role="10QFUM">
                          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6xYPVrp_kmp" role="37wK5m">
                        <ref role="3cqZAo" node="6xYPVrp_37O" resolve="bound" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6xYPVrp$XyF" role="3cqZAp" />
              </node>
              <node concept="2ZW3vV" id="6xYPVrp$n3P" role="3clFbw">
                <node concept="3uibUv" id="6xYPVrp$n4y" role="2ZW6by">
                  <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                </node>
                <node concept="37vLTw" id="6xYPVrp$n1b" role="2ZW6bz">
                  <ref role="3cqZAo" node="6xYPVrp_1P$" resolve="logical" />
                </node>
              </node>
              <node concept="3eNFk2" id="6xYPVrp$nj4" role="3eNLev">
                <node concept="2ZW3vV" id="6xYPVrp$nlz" role="3eO9$A">
                  <node concept="3uibUv" id="6xYPVrp$nmg" role="2ZW6by">
                    <ref role="3uigEE" node="1H8E3iB85PX" resolve="StringLogical" />
                  </node>
                  <node concept="37vLTw" id="6xYPVrp$njL" role="2ZW6bz">
                    <ref role="3cqZAo" node="6xYPVrp_1P$" resolve="logical" />
                  </node>
                </node>
                <node concept="3clFbS" id="6xYPVrp$nj6" role="3eOfB_">
                  <node concept="3clFbJ" id="6xYPVrpBltW" role="3cqZAp">
                    <node concept="3clFbS" id="6xYPVrpBltY" role="3clFbx">
                      <node concept="3cpWs6" id="6xYPVrpBlZN" role="3cqZAp">
                        <node concept="3clFbT" id="6xYPVrpBnMj" role="3cqZAk">
                          <property role="3clFbU" value="false" />
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="6xYPVrpBluE" role="3clFbw">
                      <node concept="1rXfSq" id="6xYPVrpBlvK" role="3fr31v">
                        <ref role="37wK5l" node="6xYPVrpA0lt" resolve="askLogicalEq" />
                        <node concept="10QFUN" id="6xYPVrpBlTF" role="37wK5m">
                          <node concept="3uibUv" id="6xYPVrpBlTD" role="10QFUM">
                            <ref role="3uigEE" node="1H8E3iB85PX" resolve="StringLogical" />
                          </node>
                          <node concept="37vLTw" id="6xYPVrpBlTE" role="10QFUP">
                            <ref role="3cqZAo" node="6xYPVrp_1P$" resolve="logical" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="6xYPVrpBlXR" role="37wK5m">
                          <ref role="3cqZAo" node="6xYPVrp_37O" resolve="bound" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6xYPVrp$mGi" role="3clFbw">
            <node concept="37vLTw" id="6xYPVrp$mF5" role="2Oq$k0">
              <ref role="3cqZAo" node="6xYPVrp_1P$" resolve="logical" />
            </node>
            <node concept="liA8E" id="6xYPVrp$mR0" role="2OqNvi">
              <ref role="37wK5l" to="yg8f:1mP5b6jQPKP" resolve="isBound" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6xYPVrp_itn" role="3cqZAp">
          <node concept="3clFbT" id="6xYPVrp_jCJ" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogC2zw" role="jymVt" />
    <node concept="3clFb_" id="6xYPVrp$t7Y" role="jymVt">
      <property role="TrG5h" value="askLogicalUni" />
      <node concept="37vLTG" id="6xYPVrp$uAC" role="3clF46">
        <property role="TrG5h" value="atomLogical" />
        <node concept="3uibUv" id="6xYPVrp$yz2" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="6xYPVrp$v6t" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="573vQv1oRC3" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="10P_77" id="6xYPVrp$tY5" role="3clF45" />
      <node concept="3Tm6S6" id="6xYPVrp$tXY" role="1B3o_S" />
      <node concept="3clFbS" id="6xYPVrp$t82" role="3clF47">
        <node concept="3clFbJ" id="6xYPVrp$yRD" role="3cqZAp">
          <node concept="3clFbS" id="6xYPVrp$zL2" role="3clFbx">
            <node concept="3cpWs6" id="6xYPVrp$Lry" role="3cqZAp">
              <node concept="1rXfSq" id="6xYPVrp$Lrz" role="3cqZAk">
                <ref role="37wK5l" node="4U_yxogC1Eh" resolve="askUni" />
                <node concept="37vLTw" id="6xYPVrp$Lr$" role="37wK5m">
                  <ref role="3cqZAo" node="6xYPVrp$uAC" resolve="atomLogical" />
                </node>
                <node concept="2OqwBi" id="4peSo3CLF_7" role="37wK5m">
                  <node concept="1eOMI4" id="4peSo3CLF_8" role="2Oq$k0">
                    <node concept="10QFUN" id="4peSo3CLF_9" role="1eOMHV">
                      <node concept="3uibUv" id="4peSo3CLF_a" role="10QFUM">
                        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                      </node>
                      <node concept="37vLTw" id="4peSo3CLF_c" role="10QFUP">
                        <ref role="3cqZAo" node="6xYPVrp$v6t" resolve="node" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4peSo3CLF_d" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:2QE4RCGndD7" resolve="asRoot" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6xYPVrp$zM5" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="6xYPVrpAf3$" role="3clFbw">
            <node concept="37vLTw" id="6xYPVrpAeuZ" role="2Oq$k0">
              <ref role="3cqZAo" node="6xYPVrp$v6t" resolve="node" />
            </node>
            <node concept="liA8E" id="56MMu0Ap5oY" role="2OqNvi">
              <ref role="37wK5l" to="yt73:~Term.is(Kind)" resolve="is" />
              <node concept="Rm8GO" id="56MMu0Ap5oZ" role="37wK5m">
                <ref role="1Px2BO" to="yt73:~Term.Kind" resolve="Term.Kind" />
                <ref role="Rm8GQ" to="yt73:~Term.FUN" resolve="FUN" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="6xYPVrpAgRc" role="3eNLev">
            <node concept="3clFbS" id="6xYPVrpAgRd" role="3eOfB_">
              <node concept="3cpWs6" id="6xYPVrpAgRe" role="3cqZAp">
                <node concept="1rXfSq" id="6xYPVrpAgRf" role="3cqZAk">
                  <ref role="37wK5l" node="4U_yxogC2zx" resolve="askUni" />
                  <node concept="37vLTw" id="6xYPVrpAgRg" role="37wK5m">
                    <ref role="3cqZAo" node="6xYPVrp$uAC" resolve="atomLogical" />
                  </node>
                  <node concept="10QFUN" id="6xYPVrpAgRh" role="37wK5m">
                    <node concept="3uibUv" id="6xYPVrpAgRi" role="10QFUM">
                      <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
                    </node>
                    <node concept="2OqwBi" id="6xYPVrpAgRj" role="10QFUP">
                      <node concept="1eOMI4" id="6xYPVrpAgRk" role="2Oq$k0">
                        <node concept="10QFUN" id="6xYPVrpAgRl" role="1eOMHV">
                          <node concept="3uibUv" id="6xYPVrpAgRm" role="10QFUM">
                            <ref role="3uigEE" to="yg8f:46l0wJhtOD_" resolve="ILogicalVar" />
                          </node>
                          <node concept="37vLTw" id="6xYPVrpAgRn" role="10QFUP">
                            <ref role="3cqZAo" node="6xYPVrp$v6t" resolve="node" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6xYPVrpAgRo" role="2OqNvi">
                        <ref role="37wK5l" to="yg8f:46l0wJhtXlr" resolve="logical" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6xYPVrpAgRp" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="6xYPVrpAj76" role="3eO9$A">
              <node concept="37vLTw" id="6xYPVrpAiyh" role="2Oq$k0">
                <ref role="3cqZAo" node="6xYPVrp$v6t" resolve="node" />
              </node>
              <node concept="liA8E" id="56MMu0ApUC5" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Term.is(Kind)" resolve="is" />
                <node concept="Rm8GO" id="56MMu0ApUC6" role="37wK5m">
                  <ref role="1Px2BO" to="yt73:~Term.Kind" resolve="Term.Kind" />
                  <ref role="Rm8GQ" to="yt73:~Term.VAR" resolve="VAR" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="6xYPVrpAkPR" role="9aQIa">
            <node concept="3clFbS" id="6xYPVrpAkPS" role="9aQI4">
              <node concept="YS8fn" id="6xYPVrpAmuM" role="3cqZAp">
                <node concept="2ShNRf" id="6xYPVrpAmvv" role="YScLw">
                  <node concept="1pGfFk" id="6xYPVrpAmGx" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="3cpWs3" id="6xYPVrpAndr" role="37wK5m">
                      <node concept="Xl_RD" id="6xYPVrpAndJ" role="3uHU7w">
                        <property role="Xl_RC" value="'" />
                      </node>
                      <node concept="3cpWs3" id="6xYPVrpAn55" role="3uHU7B">
                        <node concept="Xl_RD" id="6xYPVrpAmHS" role="3uHU7B">
                          <property role="Xl_RC" value="node is neither a term nor a var: '" />
                        </node>
                        <node concept="37vLTw" id="6xYPVrpAn7f" role="3uHU7w">
                          <ref role="3cqZAo" node="6xYPVrp$v6t" resolve="node" />
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
    <node concept="2tJIrI" id="6xYPVrpA2yi" role="jymVt" />
    <node concept="3clFb_" id="6xYPVrpA0lt" role="jymVt">
      <property role="TrG5h" value="askLogicalEq" />
      <node concept="37vLTG" id="6xYPVrpA0lu" role="3clF46">
        <property role="TrG5h" value="stringLogical" />
        <node concept="3uibUv" id="6xYPVrpA6dH" role="1tU5fm">
          <ref role="3uigEE" node="1H8E3iB85PX" resolve="StringLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="6xYPVrpA0lw" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="573vQv1oSMI" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="10P_77" id="6xYPVrpA0ly" role="3clF45" />
      <node concept="3Tm6S6" id="6xYPVrpA0lz" role="1B3o_S" />
      <node concept="3clFbS" id="6xYPVrpA0l$" role="3clF47">
        <node concept="3clFbJ" id="6xYPVrpA0l_" role="3cqZAp">
          <node concept="2OqwBi" id="6xYPVrpAsZ0" role="3clFbw">
            <node concept="37vLTw" id="6xYPVrpAspT" role="2Oq$k0">
              <ref role="3cqZAo" node="6xYPVrpA0lw" resolve="node" />
            </node>
            <node concept="liA8E" id="56MMu0Ap1Z2" role="2OqNvi">
              <ref role="37wK5l" to="yt73:~Term.is(Kind)" resolve="is" />
              <node concept="Rm8GO" id="56MMu0Ap21O" role="37wK5m">
                <ref role="1Px2BO" to="yt73:~Term.Kind" resolve="Term.Kind" />
                <ref role="Rm8GQ" to="yt73:~Term.FUN" resolve="FUN" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6xYPVrpA0lR" role="3clFbx">
            <node concept="3cpWs8" id="6xYPVrpAEDE" role="3cqZAp">
              <node concept="3cpWsn" id="6xYPVrpAEDF" role="3cpWs9">
                <property role="TrG5h" value="nodeLogical" />
                <node concept="3uibUv" id="6xYPVrpAEDG" role="1tU5fm">
                  <ref role="3uigEE" node="1H8E3iB85PX" resolve="StringLogical" />
                </node>
                <node concept="2ShNRf" id="6xYPVrpAEDH" role="33vP2m">
                  <node concept="1pGfFk" id="6xYPVrpAEDI" role="2ShVmc">
                    <ref role="37wK5l" node="1GDBwhEE__7" resolve="StringLogical" />
                    <node concept="2YIFZM" id="6xYPVrpAEDJ" role="37wK5m">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                      <node concept="2OqwBi" id="6xYPVrpAEDK" role="37wK5m">
                        <node concept="37vLTw" id="6xYPVrpAGy_" role="2Oq$k0">
                          <ref role="3cqZAo" node="6xYPVrpA0lw" resolve="node" />
                        </node>
                        <node concept="liA8E" id="6xYPVrpAEDM" role="2OqNvi">
                          <ref role="37wK5l" to="yt73:~Term.symbol()" resolve="symbol" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6xYPVrpANVa" role="3cqZAp">
              <node concept="2OqwBi" id="6xYPVrpAQ$d" role="3cqZAk">
                <node concept="37vLTw" id="4xBopTzrmtw" role="2Oq$k0">
                  <ref role="3cqZAo" node="4xBopTznWRz" resolve="computingSession" />
                </node>
                <node concept="liA8E" id="6xYPVrpAQ$f" role="2OqNvi">
                  <ref role="37wK5l" to="bspi:4xBopTznHV5" resolve="ask" />
                  <node concept="10M0yZ" id="4xBopTzrNsC" role="37wK5m">
                    <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
                    <ref role="3cqZAo" node="3HJTsBn4kQs" resolve="INSTANCE" />
                  </node>
                  <node concept="37vLTw" id="6xYPVrpAQ$i" role="37wK5m">
                    <ref role="3cqZAo" node="6xYPVrpA0lu" resolve="stringLogical" />
                  </node>
                  <node concept="37vLTw" id="6xYPVrpAQ$j" role="37wK5m">
                    <ref role="3cqZAo" node="6xYPVrpAEDF" resolve="nodeLogical" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6xYPVrpAWdU" role="3cqZAp" />
          </node>
          <node concept="3eNFk2" id="6xYPVrpAuNS" role="3eNLev">
            <node concept="3clFbS" id="6xYPVrpAuNT" role="3eOfB_">
              <node concept="3SKdUt" id="6xYPVrpBbrM" role="3cqZAp">
                <node concept="3SKdUq" id="6xYPVrpBbrN" role="3SKWNk">
                  <property role="3SKdUp" value="TODO: unchecked cast" />
                </node>
              </node>
              <node concept="3cpWs8" id="6xYPVrpAZYJ" role="3cqZAp">
                <node concept="3cpWsn" id="6xYPVrpAZYK" role="3cpWs9">
                  <property role="TrG5h" value="nodeLogical" />
                  <node concept="3uibUv" id="6xYPVrpAZYL" role="1tU5fm">
                    <ref role="3uigEE" node="1H8E3iB85PX" resolve="StringLogical" />
                  </node>
                  <node concept="2OqwBi" id="6xYPVrpAZYM" role="33vP2m">
                    <node concept="1eOMI4" id="6xYPVrpAZYN" role="2Oq$k0">
                      <node concept="10QFUN" id="6xYPVrpAZYO" role="1eOMHV">
                        <node concept="37vLTw" id="6xYPVrpB7tz" role="10QFUP">
                          <ref role="3cqZAo" node="6xYPVrpA0lw" resolve="node" />
                        </node>
                        <node concept="3uibUv" id="6xYPVrpAZYQ" role="10QFUM">
                          <ref role="3uigEE" node="7jC45KcioOY" resolve="StringLogical.StringLogicalVar" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6xYPVrpAZYR" role="2OqNvi">
                      <ref role="37wK5l" node="7jC45Kcis37" resolve="logical" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6xYPVrpAY24" role="3cqZAp">
                <node concept="2OqwBi" id="6xYPVrpAY25" role="3cqZAk">
                  <node concept="37vLTw" id="4xBopTzrqa8" role="2Oq$k0">
                    <ref role="3cqZAo" node="4xBopTznWRz" resolve="computingSession" />
                  </node>
                  <node concept="liA8E" id="6xYPVrpAY27" role="2OqNvi">
                    <ref role="37wK5l" to="bspi:4xBopTznHV5" resolve="ask" />
                    <node concept="10M0yZ" id="4xBopTzrMvx" role="37wK5m">
                      <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
                      <ref role="3cqZAo" node="3HJTsBn4kQs" resolve="INSTANCE" />
                    </node>
                    <node concept="37vLTw" id="6xYPVrpAY2a" role="37wK5m">
                      <ref role="3cqZAo" node="6xYPVrpA0lu" resolve="stringLogical" />
                    </node>
                    <node concept="37vLTw" id="6xYPVrpB7Ch" role="37wK5m">
                      <ref role="3cqZAo" node="6xYPVrpAZYK" resolve="nodeLogical" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6xYPVrpAuO8" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="6xYPVrpAx5w" role="3eO9$A">
              <node concept="37vLTw" id="6xYPVrpAww9" role="2Oq$k0">
                <ref role="3cqZAo" node="6xYPVrpA0lw" resolve="node" />
              </node>
              <node concept="liA8E" id="56MMu0ApUht" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Term.is(Kind)" resolve="is" />
                <node concept="Rm8GO" id="56MMu0ApUjt" role="37wK5m">
                  <ref role="1Px2BO" to="yt73:~Term.Kind" resolve="Term.Kind" />
                  <ref role="Rm8GQ" to="yt73:~Term.VAR" resolve="VAR" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="6xYPVrpAyPi" role="9aQIa">
            <node concept="3clFbS" id="6xYPVrpAyPj" role="9aQI4">
              <node concept="YS8fn" id="6xYPVrpA$vo" role="3cqZAp">
                <node concept="2ShNRf" id="6xYPVrpA$vp" role="YScLw">
                  <node concept="1pGfFk" id="6xYPVrpA$vq" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="3cpWs3" id="6xYPVrpA$vr" role="37wK5m">
                      <node concept="Xl_RD" id="6xYPVrpA$vs" role="3uHU7w">
                        <property role="Xl_RC" value="'" />
                      </node>
                      <node concept="3cpWs3" id="6xYPVrpA$vt" role="3uHU7B">
                        <node concept="Xl_RD" id="6xYPVrpA$vu" role="3uHU7B">
                          <property role="Xl_RC" value="node is neither a term nor a var: '" />
                        </node>
                        <node concept="37vLTw" id="6xYPVrpA$vv" role="3uHU7w">
                          <ref role="3cqZAo" node="6xYPVrpA0lw" resolve="node" />
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
    <node concept="2tJIrI" id="6xYPVrp$rqc" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogCRUf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="unify" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="4U_yxogD4ia" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogD4QV" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogD5pj" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogD5Xk" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3clFbS" id="4U_yxogCRUi" role="3clF47">
        <node concept="3clFbF" id="4U_yxogD8__" role="3cqZAp">
          <node concept="2YIFZM" id="1R$Cm9qAcFk" role="3clFbG">
            <ref role="1Pybhc" to="yt73:~Unification" resolve="Unification" />
            <ref role="37wK5l" to="yt73:~Unification.unify(Term,Term)" resolve="unify" />
            <node concept="37vLTw" id="4U_yxogDbAT" role="37wK5m">
              <ref role="3cqZAo" node="4U_yxogD4ia" resolve="left" />
            </node>
            <node concept="37vLTw" id="4U_yxogDd13" role="37wK5m">
              <ref role="3cqZAo" node="4U_yxogD5pj" resolve="right" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4U_yxogCQZy" role="1B3o_S" />
      <node concept="3uibUv" id="4U_yxogD3zx" role="3clF45">
        <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6ESmmh" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6ESp$p" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="mergeObservers" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1bm7a6ESp$s" role="3clF47">
        <node concept="3cpWs8" id="1bm7a6ESL5I" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6ESL5J" role="3cpWs9">
            <property role="TrG5h" value="fromHObs" />
            <node concept="3uibUv" id="1bm7a6ESL41" role="1tU5fm">
              <ref role="3uigEE" to="9js4:~RehashableKeySet" resolve="RehashableKeySet" />
            </node>
            <node concept="2OqwBi" id="1bm7a6ESL5K" role="33vP2m">
              <node concept="37vLTw" id="1bm7a6ESL5L" role="2Oq$k0">
                <ref role="3cqZAo" node="1bm7a6ESq2C" resolve="mergeFrom" />
              </node>
              <node concept="liA8E" id="1bm7a6ESL5M" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmD3ex" resolve="hashObservers" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1bm7a6ESrnB" role="3cqZAp">
          <node concept="3clFbS" id="1bm7a6ESrnC" role="3clFbx">
            <node concept="3clFbF" id="1bm7a6ESFKq" role="3cqZAp">
              <node concept="2OqwBi" id="1bm7a6ESFR2" role="3clFbG">
                <node concept="37vLTw" id="1bm7a6ESFKp" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bm7a6ESq2C" resolve="mergeFrom" />
                </node>
                <node concept="liA8E" id="1bm7a6ESGb$" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmD3eC" resolve="clearHashObservers" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1bm7a6ESy6$" role="3cqZAp">
              <node concept="2OqwBi" id="1bm7a6ESybn" role="3clFbG">
                <node concept="37vLTw" id="1bm7a6ESy6z" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bm7a6ESqut" resolve="mergeInto" />
                </node>
                <node concept="liA8E" id="1bm7a6ESyv3" role="2OqNvi">
                  <ref role="37wK5l" to="eifs:~Logical.mergeHashObservers(runtime.hash.RehashableKeySet):void" resolve="mergeHashObservers" />
                  <node concept="37vLTw" id="1bm7a6ESL5O" role="37wK5m">
                    <ref role="3cqZAo" node="1bm7a6ESL5J" resolve="fromHObs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1bm7a6ESxSf" role="3clFbw">
            <node concept="10Nm6u" id="1bm7a6ESxT$" role="3uHU7w" />
            <node concept="37vLTw" id="1bm7a6ESL5N" role="3uHU7B">
              <ref role="3cqZAo" node="1bm7a6ESL5J" resolve="fromHObs" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1bm7a6ESGck" role="3cqZAp" />
        <node concept="3cpWs8" id="1bm7a6ESLie" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6ESLif" role="3cpWs9">
            <property role="TrG5h" value="fromVObs" />
            <node concept="3uibUv" id="1bm7a6ESLi4" role="1tU5fm">
              <ref role="3uigEE" to="eifs:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
              <node concept="3uibUv" id="1bm7a6ESLi7" role="11_B2D">
                <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
              </node>
            </node>
            <node concept="2OqwBi" id="1bm7a6ESLig" role="33vP2m">
              <node concept="37vLTw" id="1bm7a6ESLih" role="2Oq$k0">
                <ref role="3cqZAo" node="1bm7a6ESq2C" resolve="mergeFrom" />
              </node>
              <node concept="liA8E" id="1bm7a6ESLii" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmD3eN" resolve="variableObservers" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1bm7a6ESJw4" role="3cqZAp">
          <node concept="3clFbS" id="1bm7a6ESJw7" role="3clFbx">
            <node concept="3clFbF" id="1bm7a6ESSfI" role="3cqZAp">
              <node concept="2OqwBi" id="1bm7a6ESSjI" role="3clFbG">
                <node concept="37vLTw" id="1bm7a6ESSfH" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bm7a6ESq2C" resolve="mergeFrom" />
                </node>
                <node concept="liA8E" id="1bm7a6ESSXl" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmD3f9" resolve="clearVariableObservers" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1bm7a6ESUiH" role="3cqZAp">
              <node concept="3cpWsn" id="1bm7a6ESUiI" role="3cpWs9">
                <property role="TrG5h" value="intoVObs" />
                <node concept="3uibUv" id="1bm7a6ESUhw" role="1tU5fm">
                  <ref role="3uigEE" to="eifs:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
                  <node concept="3uibUv" id="1bm7a6ESUhz" role="11_B2D">
                    <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1bm7a6ESUiJ" role="33vP2m">
                  <node concept="37vLTw" id="1bm7a6ESV46" role="2Oq$k0">
                    <ref role="3cqZAo" node="1bm7a6ESqut" resolve="mergeInto" />
                  </node>
                  <node concept="liA8E" id="1bm7a6ESUiL" role="2OqNvi">
                    <ref role="37wK5l" node="3HJTsBmD3eN" resolve="variableObservers" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1bm7a6ESUXS" role="3cqZAp">
              <node concept="3clFbS" id="1bm7a6ESUXV" role="3clFbx">
                <node concept="3SKdUt" id="1bm7a6ESWMF" role="3cqZAp">
                  <node concept="3SKdUq" id="1bm7a6ESWRC" role="3SKWNk">
                    <property role="3SKdUp" value="first get an iterator over the current container" />
                  </node>
                </node>
                <node concept="3cpWs8" id="1bm7a6ESWxS" role="3cqZAp">
                  <node concept="3cpWsn" id="1bm7a6ESWxT" role="3cpWs9">
                    <property role="TrG5h" value="intoIt" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="1bm7a6ESWxB" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                      <node concept="3uibUv" id="1bm7a6ESWxE" role="11_B2D">
                        <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1bm7a6ESWxU" role="33vP2m">
                      <node concept="37vLTw" id="1bm7a6ESWxV" role="2Oq$k0">
                        <ref role="3cqZAo" node="1bm7a6ESUiI" resolve="intoVObs" />
                      </node>
                      <node concept="liA8E" id="1bm7a6ESWxW" role="2OqNvi">
                        <ref role="37wK5l" to="eifs:~DoublyLinkedConstraintList.iterator():java.util.Iterator" resolve="iterator" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="1bm7a6ET0ey" role="3cqZAp">
                  <node concept="3SKdUq" id="1bm7a6ET0n4" role="3SKWNk">
                    <property role="3SKdUp" value="then do merge" />
                  </node>
                </node>
                <node concept="3clFbF" id="1bm7a6ESXfp" role="3cqZAp">
                  <node concept="2OqwBi" id="1bm7a6ESXs3" role="3clFbG">
                    <node concept="37vLTw" id="1bm7a6ESXfo" role="2Oq$k0">
                      <ref role="3cqZAo" node="1bm7a6ESUiI" resolve="intoVObs" />
                    </node>
                    <node concept="liA8E" id="1bm7a6ESY72" role="2OqNvi">
                      <ref role="37wK5l" to="eifs:~DoublyLinkedConstraintList.mergeWith(runtime.DoublyLinkedConstraintList):void" resolve="mergeWith" />
                      <node concept="37vLTw" id="1bm7a6ESYbu" role="37wK5m">
                        <ref role="3cqZAo" node="1bm7a6ESLif" resolve="fromVObs" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="1bm7a6ET0pN" role="3cqZAp">
                  <node concept="3SKdUq" id="1bm7a6ET0vO" role="3SKWNk">
                    <property role="3SKdUp" value="finally notify" />
                  </node>
                </node>
                <node concept="2$JKZl" id="1bm7a6ET0yz" role="3cqZAp">
                  <node concept="3clFbS" id="1bm7a6ET0y_" role="2LFqv$">
                    <node concept="3clFbF" id="1bm7a6ET1je" role="3cqZAp">
                      <node concept="2OqwBi" id="1bm7a6ET1Kk" role="3clFbG">
                        <node concept="2OqwBi" id="1bm7a6ET1kC" role="2Oq$k0">
                          <node concept="37vLTw" id="1bm7a6ET1jd" role="2Oq$k0">
                            <ref role="3cqZAo" node="1bm7a6ESWxT" resolve="intoIt" />
                          </node>
                          <node concept="liA8E" id="1bm7a6ET1FD" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1bm7a6ET29t" role="2OqNvi">
                          <ref role="37wK5l" to="eifs:~Constraint.reactivate():void" resolve="reactivate" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1bm7a6ET0Ff" role="2$JKZa">
                    <node concept="37vLTw" id="1bm7a6ET0D5" role="2Oq$k0">
                      <ref role="3cqZAo" node="1bm7a6ESWxT" resolve="intoIt" />
                    </node>
                    <node concept="liA8E" id="1bm7a6ET12Q" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1bm7a6ESVnT" role="3clFbw">
                <node concept="10Nm6u" id="1bm7a6ESVpo" role="3uHU7w" />
                <node concept="37vLTw" id="1bm7a6ESV8D" role="3uHU7B">
                  <ref role="3cqZAo" node="1bm7a6ESUiI" resolve="intoVObs" />
                </node>
              </node>
              <node concept="9aQIb" id="1bm7a6ET2Bj" role="9aQIa">
                <node concept="3clFbS" id="1bm7a6ET2Bk" role="9aQI4">
                  <node concept="3clFbF" id="1bm7a6ET2M5" role="3cqZAp">
                    <node concept="2OqwBi" id="1bm7a6ET2Uh" role="3clFbG">
                      <node concept="37vLTw" id="1bm7a6ET2Pw" role="2Oq$k0">
                        <ref role="3cqZAo" node="1bm7a6ESqut" resolve="mergeInto" />
                      </node>
                      <node concept="liA8E" id="1bm7a6ET8UV" role="2OqNvi">
                        <ref role="37wK5l" node="3HJTsBmD3eV" resolve="setVariableObservers" />
                        <node concept="37vLTw" id="1bm7a6ET8YF" role="37wK5m">
                          <ref role="3cqZAo" node="1bm7a6ESLif" resolve="fromVObs" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1bm7a6ESKGZ" role="3clFbw">
            <node concept="10Nm6u" id="1bm7a6ESKNg" role="3uHU7w" />
            <node concept="37vLTw" id="1bm7a6ESLij" role="3uHU7B">
              <ref role="3cqZAo" node="1bm7a6ESLif" resolve="fromVObs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1bm7a6ESpoj" role="1B3o_S" />
      <node concept="3cqZAl" id="1bm7a6ESpxP" role="3clF45" />
      <node concept="37vLTG" id="1bm7a6ESq2C" role="3clF46">
        <property role="TrG5h" value="mergeFrom" />
        <node concept="3uibUv" id="3HJTsBmDtpz" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
          <node concept="3qTvmN" id="3HJTsBmDu6u" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="1bm7a6ESqut" role="3clF46">
        <property role="TrG5h" value="mergeInto" />
        <node concept="3uibUv" id="3HJTsBmDujx" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
          <node concept="3qTvmN" id="3HJTsBmDv0k" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="24Vro6cRYFv" role="jymVt" />
    <node concept="3clFb_" id="1MWQR5SpMLA" role="jymVt">
      <property role="TrG5h" value="formatMessage" />
      <node concept="3Tm6S6" id="1MWQR5SpMLB" role="1B3o_S" />
      <node concept="17QB3L" id="1MWQR5SpMLC" role="3clF45" />
      <node concept="37vLTG" id="1MWQR5SpMLu" role="3clF46">
        <property role="TrG5h" value="subs" />
        <node concept="3uibUv" id="1MWQR5SpMLv" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
        </node>
      </node>
      <node concept="3clFbS" id="1MWQR5SpMKW" role="3clF47">
        <node concept="3cpWs8" id="1MWQR5SpMKZ" role="3cqZAp">
          <node concept="3cpWsn" id="1MWQR5SpML0" role="3cpWs9">
            <property role="TrG5h" value="msg" />
            <node concept="17QB3L" id="1MWQR5SpML1" role="1tU5fm" />
            <node concept="2OqwBi" id="1MWQR5SpML2" role="33vP2m">
              <node concept="2OqwBi" id="1MWQR5SpML3" role="2Oq$k0">
                <node concept="37vLTw" id="1MWQR5SpMLw" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MWQR5SpMLu" resolve="subs" />
                </node>
                <node concept="liA8E" id="1MWQR5SpML5" role="2OqNvi">
                  <ref role="37wK5l" to="yt73:~Substitution.failureCause()" resolve="failureCause" />
                </node>
              </node>
              <node concept="liA8E" id="1MWQR5SpML6" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Substitution.FailureCause.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1MWQR5SpML7" role="3cqZAp">
          <node concept="3clFbS" id="1MWQR5SpML8" role="3clFbx">
            <node concept="3clFbF" id="1MWQR5SpML9" role="3cqZAp">
              <node concept="37vLTI" id="1MWQR5SpMLa" role="3clFbG">
                <node concept="2YIFZM" id="1MWQR5SpMLb" role="37vLTx">
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                  <node concept="Xl_RD" id="1MWQR5SpMLc" role="37wK5m">
                    <property role="Xl_RC" value="'%s' != '%s'" />
                  </node>
                  <node concept="2OqwBi" id="1MWQR5SpMLd" role="37wK5m">
                    <node concept="37vLTw" id="1MWQR5SpMLy" role="2Oq$k0">
                      <ref role="3cqZAo" node="1MWQR5SpMLu" resolve="subs" />
                    </node>
                    <node concept="liA8E" id="1MWQR5SpMLf" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution.failureDetails()" resolve="failureDetails" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1MWQR5SpMLg" role="37vLTJ">
                  <ref role="3cqZAo" node="1MWQR5SpML0" resolve="msg" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="1MWQR5SpMLh" role="3clFbw">
            <node concept="3clFbC" id="1MWQR5SpMLi" role="3uHU7B">
              <node concept="Rm8GO" id="1MWQR5SpMLj" role="3uHU7w">
                <ref role="1Px2BO" to="yt73:~Substitution.FailureCause" resolve="Substitution.FailureCause" />
                <ref role="Rm8GQ" to="yt73:~Substitution.SYMBOL_CLASH" resolve="SYMBOL_CLASH" />
              </node>
              <node concept="2OqwBi" id="1MWQR5SpMLk" role="3uHU7B">
                <node concept="37vLTw" id="1MWQR5SpMLx" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MWQR5SpMLu" resolve="subs" />
                </node>
                <node concept="liA8E" id="1MWQR5SpMLm" role="2OqNvi">
                  <ref role="37wK5l" to="yt73:~Substitution.failureCause()" resolve="failureCause" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1MWQR5SpMLn" role="3uHU7w">
              <node concept="10Nm6u" id="1MWQR5SpMLo" role="3uHU7w" />
              <node concept="2OqwBi" id="1MWQR5SpMLp" role="3uHU7B">
                <node concept="37vLTw" id="1MWQR5SpMLz" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MWQR5SpMLu" resolve="subs" />
                </node>
                <node concept="liA8E" id="1MWQR5SpMLr" role="2OqNvi">
                  <ref role="37wK5l" to="yt73:~Substitution.failureDetails()" resolve="failureDetails" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1MWQR5SpMLs" role="3cqZAp">
          <node concept="37vLTw" id="1MWQR5SpMLt" role="3cqZAk">
            <ref role="3cqZAo" node="1MWQR5SpML0" resolve="msg" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6EU93j" role="jymVt" />
    <node concept="312cEg" id="4xBopTznWRz" role="jymVt">
      <property role="TrG5h" value="computingSession" />
      <node concept="3Tm6S6" id="4xBopTznWR$" role="1B3o_S" />
      <node concept="3uibUv" id="4xBopTznYl8" role="1tU5fm">
        <ref role="3uigEE" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
      </node>
    </node>
    <node concept="312cEg" id="4U_yxogDGOE" role="jymVt">
      <property role="TrG5h" value="constraintSystem" />
      <node concept="3Tm6S6" id="4U_yxogDGOF" role="1B3o_S" />
      <node concept="3uibUv" id="4U_yxogDGOH" role="1tU5fm">
        <ref role="3uigEE" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
      </node>
    </node>
    <node concept="312cEg" id="24Vro6cRIgn" role="jymVt">
      <property role="TrG5h" value="tracer" />
      <node concept="3Tm6S6" id="24Vro6cRIgo" role="1B3o_S" />
      <node concept="3uibUv" id="24Vro6cRIgq" role="1tU5fm">
        <ref role="3uigEE" to="bspi:24Vro6cQnrj" resolve="ComputingTracer" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4U_yxogAknZ">
    <property role="TrG5h" value="AtomLogical" />
    <node concept="2tJIrI" id="4U_yxogB9ZV" role="jymVt" />
    <node concept="3clFbW" id="4U_yxogBkww" role="jymVt">
      <node concept="3cqZAl" id="4U_yxogBkwx" role="3clF45" />
      <node concept="3clFbS" id="4U_yxogBkwz" role="3clF47">
        <node concept="XkiVB" id="4U_yxogBkBp" role="3cqZAp">
          <ref role="37wK5l" node="3HJTsBmBUfM" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6SkxsM$bMnC" role="1B3o_S" />
      <node concept="2AHcQZ" id="6SkxsM$bLTa" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Declare" resolve="JCHR_Declare" />
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOlUqa" role="jymVt" />
    <node concept="3clFbW" id="2DKqMqOlTiR" role="jymVt">
      <node concept="3cqZAl" id="2DKqMqOlTiS" role="3clF45" />
      <node concept="3clFbS" id="2DKqMqOlTiT" role="3clF47">
        <node concept="XkiVB" id="2DKqMqOlTiU" role="3cqZAp">
          <ref role="37wK5l" node="2DKqMqOlOj4" resolve="AbstractLogical" />
          <node concept="37vLTw" id="2DKqMqOlVIe" role="37wK5m">
            <ref role="3cqZAo" node="2DKqMqOlVxk" resolve="wildcard" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2DKqMqOlTiV" role="1B3o_S" />
      <node concept="2AHcQZ" id="2DKqMqOlTiW" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Declare" resolve="JCHR_Declare" />
      </node>
      <node concept="37vLTG" id="2DKqMqOlVxk" role="3clF46">
        <property role="TrG5h" value="wildcard" />
        <node concept="10P_77" id="2DKqMqOlVxj" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6SkxsM$30ID" role="jymVt" />
    <node concept="3clFbW" id="6SkxsM$96Z2" role="jymVt">
      <node concept="37vLTG" id="6SkxsM$96Z3" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="6SkxsM$96Z4" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6SkxsM$96Z5" role="3clF45" />
      <node concept="3clFbS" id="6SkxsM$96Z6" role="3clF47">
        <node concept="XkiVB" id="6SkxsM$96Z7" role="3cqZAp">
          <ref role="37wK5l" node="3HJTsBmBV0W" resolve="AbstractLogical" />
          <node concept="37vLTw" id="6SkxsM$96Z8" role="37wK5m">
            <ref role="3cqZAo" node="6SkxsM$96Z3" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6SkxsM$bMwH" role="1B3o_S" />
      <node concept="2AHcQZ" id="6SkxsM$bM5w" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Declare" resolve="JCHR_Declare" />
      </node>
    </node>
    <node concept="2tJIrI" id="7nuzzkr21VL" role="jymVt" />
    <node concept="3clFbW" id="7nuzzkr2143" role="jymVt">
      <node concept="37vLTG" id="7nuzzkr2144" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7nuzzkr2145" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7nuzzkr22MK" role="3clF46">
        <property role="TrG5h" value="wildcard" />
        <node concept="10P_77" id="7nuzzkr231n" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7nuzzkr2146" role="3clF45" />
      <node concept="3clFbS" id="7nuzzkr2147" role="3clF47">
        <node concept="XkiVB" id="7nuzzkr2148" role="3cqZAp">
          <ref role="37wK5l" node="7nuzzkr1W8y" resolve="AbstractLogical" />
          <node concept="37vLTw" id="7nuzzkr2149" role="37wK5m">
            <ref role="3cqZAo" node="7nuzzkr2144" resolve="name" />
          </node>
          <node concept="37vLTw" id="7nuzzkr23aF" role="37wK5m">
            <ref role="3cqZAo" node="7nuzzkr22MK" resolve="wildcard" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7nuzzkr214a" role="1B3o_S" />
      <node concept="2AHcQZ" id="7nuzzkr214b" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Declare" resolve="JCHR_Declare" />
      </node>
    </node>
    <node concept="2tJIrI" id="6SkxsM$96Z1" role="jymVt" />
    <node concept="3clFbW" id="6SkxsM$2Uu7" role="jymVt">
      <node concept="3cqZAl" id="6SkxsM$2Uua" role="3clF45" />
      <node concept="3clFbS" id="6SkxsM$2Uub" role="3clF47">
        <node concept="XkiVB" id="6SkxsM$301q" role="3cqZAp">
          <ref role="37wK5l" node="3HJTsBmBVmo" resolve="AbstractLogical" />
          <node concept="10Nm6u" id="3HJTsBmCNtN" role="37wK5m" />
          <node concept="37vLTw" id="6SkxsM$302O" role="37wK5m">
            <ref role="3cqZAo" node="6SkxsM$2XXX" resolve="atom" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6SkxsM$bMBA" role="1B3o_S" />
      <node concept="37vLTG" id="6SkxsM$2XXX" role="3clF46">
        <property role="TrG5h" value="atom" />
        <node concept="3uibUv" id="6SkxsM$2XXW" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6SkxsM$bMc$" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Init" resolve="JCHR_Init" />
      </node>
    </node>
    <node concept="2tJIrI" id="1GDBwhEEL81" role="jymVt" />
    <node concept="3clFbW" id="1GDBwhEEL82" role="jymVt">
      <node concept="3cqZAl" id="1GDBwhEEL83" role="3clF45" />
      <node concept="3clFbS" id="1GDBwhEEL84" role="3clF47">
        <node concept="XkiVB" id="1GDBwhEEL85" role="3cqZAp">
          <ref role="37wK5l" node="3HJTsBmBVmo" resolve="AbstractLogical" />
          <node concept="37vLTw" id="1GDBwhEEM8m" role="37wK5m">
            <ref role="3cqZAo" node="1GDBwhEEM36" resolve="name" />
          </node>
          <node concept="37vLTw" id="1GDBwhEEL86" role="37wK5m">
            <ref role="3cqZAo" node="1GDBwhEEL88" resolve="atom" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1GDBwhEEL87" role="1B3o_S" />
      <node concept="37vLTG" id="1GDBwhEEM36" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1GDBwhEEM3$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1GDBwhEEL88" role="3clF46">
        <property role="TrG5h" value="atom" />
        <node concept="3uibUv" id="1GDBwhEEL89" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1GDBwhEEL8a" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Init" resolve="JCHR_Init" />
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogCsEV" role="jymVt" />
    <node concept="3clFb_" id="dfChU1gcsX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="findRoot" />
      <node concept="3uibUv" id="3HJTsBn63I2" role="3clF45">
        <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
      </node>
      <node concept="3Tm1VV" id="dfChU1gct0" role="1B3o_S" />
      <node concept="3clFbS" id="dfChU1gct6" role="3clF47">
        <node concept="3clFbF" id="dfChU1ggsh" role="3cqZAp">
          <node concept="10QFUN" id="3HJTsBmKpNm" role="3clFbG">
            <node concept="3uibUv" id="3HJTsBn64qV" role="10QFUM">
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
            </node>
            <node concept="1rXfSq" id="dfChU1ggsg" role="10QFUP">
              <ref role="37wK5l" to="eifs:~Logical.find():runtime.Logical" resolve="find" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="dfChU1gf8K" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1Ns6gpY6S29" role="jymVt" />
    <node concept="3clFb_" id="1Ns6gpY6DeD" role="jymVt">
      <property role="TrG5h" value="asAtom" />
      <node concept="3uibUv" id="1Ns6gpY6FOz" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
      <node concept="3Tm1VV" id="1Ns6gpY6DeG" role="1B3o_S" />
      <node concept="3clFbS" id="1Ns6gpY6DeH" role="3clF47">
        <node concept="3clFbJ" id="1Ns6gpY6Kcd" role="3cqZAp">
          <node concept="3y3z36" id="3HJTsBmTaZ8" role="3clFbw">
            <node concept="2OqwBi" id="2DKqMqOr8nL" role="3uHU7B">
              <node concept="1rXfSq" id="2DKqMqOr8nM" role="2Oq$k0">
                <ref role="37wK5l" node="dfChU1gcsX" resolve="findRoot" />
              </node>
              <node concept="liA8E" id="2DKqMqOr8nN" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
            <node concept="10Nm6u" id="1Ns6gpY6Kcm" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="3HJTsBmTaZd" role="3clFbx">
            <node concept="3cpWs8" id="7MlQDeOykrg" role="3cqZAp">
              <node concept="3cpWsn" id="7MlQDeOykrh" role="3cpWs9">
                <property role="TrG5h" value="value" />
                <node concept="3uibUv" id="7MlQDeOykrf" role="1tU5fm">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
                <node concept="2OqwBi" id="7MlQDeOykri" role="33vP2m">
                  <node concept="1rXfSq" id="7MlQDeOykrj" role="2Oq$k0">
                    <ref role="37wK5l" node="dfChU1gcsX" resolve="findRoot" />
                  </node>
                  <node concept="liA8E" id="7MlQDeOykrk" role="2OqNvi">
                    <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7MlQDeOymb6" role="3cqZAp">
              <node concept="3clFbS" id="7MlQDeOymb8" role="3clFbx">
                <node concept="YS8fn" id="7MlQDeOyqkC" role="3cqZAp">
                  <node concept="2ShNRf" id="7MlQDeOyqn7" role="YScLw">
                    <node concept="1pGfFk" id="7MlQDeOyqCR" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                      <node concept="Xl_RD" id="7MlQDeOyqFs" role="37wK5m">
                        <property role="Xl_RC" value="prorotype constraint violation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="7MlQDeOynKu" role="3clFbw">
                <node concept="3fqX7Q" id="7MlQDeOynZ5" role="3uHU7w">
                  <node concept="2OqwBi" id="7MlQDeOyofF" role="3fr31v">
                    <node concept="37vLTw" id="7MlQDeOyo4F" role="2Oq$k0">
                      <ref role="3cqZAo" node="7MlQDeOyfvd" resolve="prototype" />
                    </node>
                    <node concept="liA8E" id="7MlQDeOyoS3" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Class.isAssignableFrom(java.lang.Class):boolean" resolve="isAssignableFrom" />
                      <node concept="2OqwBi" id="7MlQDeOyplw" role="37wK5m">
                        <node concept="37vLTw" id="7MlQDeOypaK" role="2Oq$k0">
                          <ref role="3cqZAo" node="7MlQDeOykrh" resolve="value" />
                        </node>
                        <node concept="liA8E" id="7MlQDeOypR3" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="7MlQDeOynuH" role="3uHU7B">
                  <node concept="37vLTw" id="7MlQDeOyn9R" role="3uHU7B">
                    <ref role="3cqZAo" node="7MlQDeOyfvd" resolve="prototype" />
                  </node>
                  <node concept="10Nm6u" id="7MlQDeOyny8" role="3uHU7w" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7MlQDeOyli0" role="3cqZAp" />
            <node concept="3cpWs6" id="3HJTsBmTdN1" role="3cqZAp">
              <node concept="37vLTw" id="7MlQDeOykrl" role="3cqZAk">
                <ref role="3cqZAo" node="7MlQDeOykrh" resolve="value" />
              </node>
            </node>
            <node concept="3clFbH" id="2DKqMqOr9f7" role="3cqZAp" />
          </node>
          <node concept="9aQIb" id="2DKqMqOra27" role="9aQIa">
            <node concept="3clFbS" id="2DKqMqOra28" role="9aQI4">
              <node concept="3SKdUt" id="1Ns6gpY6Kcf" role="3cqZAp">
                <node concept="3SKdUq" id="1Ns6gpY6Kcg" role="3SKWNk">
                  <property role="3SKdUp" value="construct a new tree variable" />
                </node>
              </node>
              <node concept="3cpWs6" id="1Ns6gpY6Kch" role="3cqZAp">
                <node concept="2ShNRf" id="1Ns6gpY6Kci" role="3cqZAk">
                  <node concept="1pGfFk" id="1Ns6gpY6Kcj" role="2ShVmc">
                    <ref role="37wK5l" node="3HJTsBmSn3o" resolve="AtomLogical.AtomLogicalVar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="dfChU1ktNm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7MlQDeOydKQ" role="jymVt" />
    <node concept="3clFb_" id="7MlQDeOycM5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="asAtom" />
      <node concept="3uibUv" id="7MlQDeOycM6" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
      <node concept="3Tm1VV" id="7MlQDeOycM7" role="1B3o_S" />
      <node concept="37vLTG" id="7MlQDeOycM9" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="3uibUv" id="7MlQDeOycMa" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="7MlQDeOycMb" role="11_B2D">
            <node concept="3uibUv" id="7MlQDeOycMc" role="3qUE_r">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7MlQDeOycMo" role="3clF47">
        <node concept="3clFbJ" id="7MlQDeOysnR" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <property role="TyiWL" value="false" />
          <node concept="3clFbS" id="7MlQDeOysnT" role="3clFbx">
            <node concept="YS8fn" id="7MlQDeOyvB1" role="3cqZAp">
              <node concept="2ShNRf" id="7MlQDeOyvDm" role="YScLw">
                <node concept="1pGfFk" id="7MlQDeOyvUW" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="7MlQDeOyvYY" role="37wK5m">
                    <property role="Xl_RC" value="prototype already set" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="3VqIndedLVx" role="3clFbw">
            <node concept="3y3z36" id="3VqIndedOpj" role="3uHU7w">
              <node concept="37vLTw" id="3VqIndedOvU" role="3uHU7w">
                <ref role="3cqZAo" node="7MlQDeOycM9" resolve="prototype" />
              </node>
              <node concept="2OqwBi" id="3VqIndedMrl" role="3uHU7B">
                <node concept="Xjq3P" id="3VqIndedMae" role="2Oq$k0" />
                <node concept="2OwXpG" id="3VqIndedNyC" role="2OqNvi">
                  <ref role="2Oxat5" node="7MlQDeOyfvd" resolve="prototype" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="7MlQDeOytDY" role="3uHU7B">
              <node concept="2OqwBi" id="7MlQDeOyuha" role="3uHU7B">
                <node concept="Xjq3P" id="7MlQDeOytUj" role="2Oq$k0" />
                <node concept="2OwXpG" id="7MlQDeOyvno" role="2OqNvi">
                  <ref role="2Oxat5" node="7MlQDeOyfvd" resolve="prototype" />
                </node>
              </node>
              <node concept="10Nm6u" id="7MlQDeOytRG" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3VqIndedOHI" role="3cqZAp" />
        <node concept="3clFbF" id="7MlQDeOyfvj" role="3cqZAp">
          <node concept="37vLTI" id="7MlQDeOyfvl" role="3clFbG">
            <node concept="2OqwBi" id="7MlQDeOyfvp" role="37vLTJ">
              <node concept="Xjq3P" id="7MlQDeOyfvs" role="2Oq$k0" />
              <node concept="2OwXpG" id="7MlQDeOyfvo" role="2OqNvi">
                <ref role="2Oxat5" node="7MlQDeOyfvd" resolve="prototype" />
              </node>
            </node>
            <node concept="37vLTw" id="7MlQDeOyfvt" role="37vLTx">
              <ref role="3cqZAo" node="7MlQDeOycM9" resolve="prototype" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7MlQDeOyg$e" role="3cqZAp">
          <node concept="1rXfSq" id="7MlQDeOyhw3" role="3cqZAk">
            <ref role="37wK5l" node="1Ns6gpY6DeD" resolve="asAtom" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7MlQDeOyeEZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ev$9JFO6zk" role="jymVt" />
    <node concept="3clFb_" id="6Sag3KsvpQ0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isValid" />
      <node concept="37vLTG" id="6Sag3KsvpQ1" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="3uibUv" id="6Sag3KsvpQ2" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="6Sag3KsvpQ3" role="11_B2D">
            <node concept="3uibUv" id="6Sag3KsvpQ4" role="3qUE_r">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6Sag3KsvpQ5" role="3clF45" />
      <node concept="3Tm1VV" id="6Sag3KsvpQ6" role="1B3o_S" />
      <node concept="3clFbS" id="6Sag3KsvpQj" role="3clF47">
        <node concept="3clFbF" id="6Sag3KsvtdR" role="3cqZAp">
          <node concept="3K4zz7" id="6Sag3KsvvQR" role="3clFbG">
            <node concept="3clFbC" id="6Sag3Ksvz3O" role="3K4E3e">
              <node concept="37vLTw" id="6Sag3Ksvzn_" role="3uHU7w">
                <ref role="3cqZAo" node="6Sag3KsvpQ1" resolve="prototype" />
              </node>
              <node concept="2OqwBi" id="6Sag3Ksvwl5" role="3uHU7B">
                <node concept="Xjq3P" id="6Sag3Ksvw7E" role="2Oq$k0" />
                <node concept="2OwXpG" id="6Sag3KsvydU" role="2OqNvi">
                  <ref role="2Oxat5" node="7MlQDeOyfvd" resolve="prototype" />
                </node>
              </node>
            </node>
            <node concept="3clFbT" id="6Sag3KsvzCy" role="3K4GZi">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="3y3z36" id="6Sag3KsvvJx" role="3K4Cdx">
              <node concept="10Nm6u" id="6Sag3KsvvNn" role="3uHU7w" />
              <node concept="2OqwBi" id="6Sag3KsvtFH" role="3uHU7B">
                <node concept="Xjq3P" id="6Sag3KsvtdQ" role="2Oq$k0" />
                <node concept="2OwXpG" id="6Sag3KsvuPK" role="2OqNvi">
                  <ref role="2Oxat5" node="7MlQDeOyfvd" resolve="prototype" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6Sag3Ksvr6w" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Sag3Ksvs4S" role="jymVt" />
    <node concept="3clFb_" id="2DKqMqOp3g$" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="2DKqMqOp3g_" role="1B3o_S" />
      <node concept="10P_77" id="2DKqMqOp3gA" role="3clF45" />
      <node concept="37vLTG" id="2DKqMqOp3gB" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="2DKqMqOp3gC" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2DKqMqOp3hw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="2DKqMqOp3hx" role="3clF47">
        <node concept="3SKdUt" id="2DKqMqOp5eW" role="3cqZAp">
          <node concept="3SKdUq" id="2DKqMqOp5f$" role="3SKWNk">
            <property role="3SKdUp" value="super.equals is ok" />
          </node>
        </node>
        <node concept="3clFbF" id="2DKqMqOp3h$" role="3cqZAp">
          <node concept="3nyPlj" id="2DKqMqOp3hz" role="3clFbG">
            <ref role="37wK5l" node="3HJTsBmCeTt" resolve="equals" />
            <node concept="37vLTw" id="2DKqMqOp3hy" role="37wK5m">
              <ref role="3cqZAo" node="2DKqMqOp3gB" resolve="that" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOp4nc" role="jymVt" />
    <node concept="3clFb_" id="2ev$9JFO7gJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="2ev$9JFO7gK" role="1B3o_S" />
      <node concept="10Oyi0" id="2ev$9JFO7gL" role="3clF45" />
      <node concept="2AHcQZ" id="2ev$9JFO7gP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="2ev$9JFO7gQ" role="3clF47">
        <node concept="3SKdUt" id="2ev$9JFOlPY" role="3cqZAp">
          <node concept="3SKdUq" id="2ev$9JFOmtb" role="3SKWNk">
            <property role="3SKdUp" value="avoid recursing into the value as there might be an infinite loop" />
          </node>
        </node>
        <node concept="3cpWs8" id="2ev$9JFOazL" role="3cqZAp">
          <node concept="3cpWsn" id="2ev$9JFOazM" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="3uibUv" id="2ev$9JFOazI" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
            <node concept="2OqwBi" id="2ev$9JFOazN" role="33vP2m">
              <node concept="1rXfSq" id="2ev$9JFOazO" role="2Oq$k0">
                <ref role="37wK5l" node="dfChU1gcsX" resolve="findRoot" />
              </node>
              <node concept="liA8E" id="2ev$9JFOazP" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2ev$9JFOaLH" role="3cqZAp">
          <node concept="1eOMI4" id="2ev$9JFOfB1" role="3cqZAk">
            <node concept="3K4zz7" id="2ev$9JFOfB2" role="1eOMHV">
              <node concept="3cpWs3" id="2ev$9JFOhVI" role="3K4E3e">
                <node concept="3cmrfG" id="2ev$9JFOizR" role="3uHU7w">
                  <property role="3cmrfH" value="29" />
                </node>
                <node concept="17qRlL" id="2ev$9JFOfB4" role="3uHU7B">
                  <node concept="3cmrfG" id="2ev$9JFOfB5" role="3uHU7B">
                    <property role="3cmrfH" value="23" />
                  </node>
                  <node concept="2YIFZM" id="2ev$9JFOfB6" role="3uHU7w">
                    <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object):int" resolve="identityHashCode" />
                    <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                    <node concept="37vLTw" id="2ev$9JFOfB7" role="37wK5m">
                      <ref role="3cqZAo" node="2ev$9JFOazM" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="2ev$9JFOfB8" role="3K4Cdx">
                <node concept="10Nm6u" id="2ev$9JFOfB9" role="3uHU7w" />
                <node concept="37vLTw" id="2ev$9JFOfBa" role="3uHU7B">
                  <ref role="3cqZAo" node="2ev$9JFOazM" resolve="value" />
                </node>
              </node>
              <node concept="2YIFZM" id="2DKqMqOqaPx" role="3K4GZi">
                <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object):int" resolve="identityHashCode" />
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <node concept="1rXfSq" id="2DKqMqOqaPy" role="37wK5m">
                  <ref role="37wK5l" node="dfChU1gcsX" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ev$9JFO5ru" role="jymVt" />
    <node concept="3clFb_" id="5NuEpF1xPNu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="5NuEpF1xPNv" role="1B3o_S" />
      <node concept="17QB3L" id="77AxcO5bvNn" role="3clF45" />
      <node concept="3clFbS" id="5NuEpF1xPNy" role="3clF47">
        <node concept="3cpWs8" id="5NuEpF1xSwy" role="3cqZAp">
          <node concept="3cpWsn" id="5NuEpF1xSwz" role="3cpWs9">
            <property role="TrG5h" value="repr" />
            <node concept="3uibUv" id="3HJTsBmKuiA" role="1tU5fm">
              <ref role="3uigEE" to="yg8f:dfChU1jXdE" resolve="IAtomLogical" />
            </node>
            <node concept="1rXfSq" id="5NuEpF1xSw$" role="33vP2m">
              <ref role="37wK5l" node="dfChU1gcsX" resolve="findRoot" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3v$7B1Kczo0" role="3cqZAp">
          <node concept="3cpWsn" id="3v$7B1Kczo1" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="3uibUv" id="3v$7B1KcznY" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
            <node concept="2OqwBi" id="3v$7B1Kczo2" role="33vP2m">
              <node concept="37vLTw" id="3v$7B1Kczo3" role="2Oq$k0">
                <ref role="3cqZAo" node="5NuEpF1xSwz" resolve="repr" />
              </node>
              <node concept="liA8E" id="3v$7B1Kczo4" role="2OqNvi">
                <ref role="37wK5l" to="yg8f:1mP5b6jQPMI" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2QE4RCGhZVd" role="3cqZAp">
          <node concept="3cpWsn" id="2QE4RCGhZVe" role="3cpWs9">
            <property role="TrG5h" value="fullName" />
            <node concept="17QB3L" id="6tTPqJZ13Gf" role="1tU5fm" />
            <node concept="3K4zz7" id="2QE4RCGhZVf" role="33vP2m">
              <node concept="1rXfSq" id="2QE4RCGhZVg" role="3K4E3e">
                <ref role="37wK5l" to="eifs:~Logical.getName():java.lang.String" resolve="getName" />
              </node>
              <node concept="3clFbC" id="2QE4RCGhZVh" role="3K4Cdx">
                <node concept="37vLTw" id="2QE4RCGhZVi" role="3uHU7w">
                  <ref role="3cqZAo" node="5NuEpF1xSwz" resolve="repr" />
                </node>
                <node concept="Xjq3P" id="2QE4RCGhZVj" role="3uHU7B" />
              </node>
              <node concept="3cpWs3" id="2QE4RCGhZVk" role="3K4GZi">
                <node concept="2OqwBi" id="2QE4RCGhZVl" role="3uHU7w">
                  <node concept="37vLTw" id="2QE4RCGhZVm" role="2Oq$k0">
                    <ref role="3cqZAo" node="5NuEpF1xSwz" resolve="repr" />
                  </node>
                  <node concept="liA8E" id="2QE4RCGhZVn" role="2OqNvi">
                    <ref role="37wK5l" to="yg8f:677NV56hh2k" resolve="name" />
                  </node>
                </node>
                <node concept="3cpWs3" id="2QE4RCGhZVo" role="3uHU7B">
                  <node concept="1rXfSq" id="2QE4RCGhZVp" role="3uHU7B">
                    <ref role="37wK5l" to="eifs:~Logical.getName():java.lang.String" resolve="getName" />
                  </node>
                  <node concept="Xl_RD" id="2QE4RCGhZVq" role="3uHU7w">
                    <property role="Xl_RC" value=":" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5NuEpF1xSlQ" role="3cqZAp">
          <node concept="3K4zz7" id="5NuEpF1xUF9" role="3clFbG">
            <node concept="3cpWs3" id="2QE4RCGi0Vz" role="3K4E3e">
              <node concept="3cpWs3" id="2QE4RCGi1gc" role="3uHU7B">
                <node concept="Xl_RD" id="2QE4RCGi1m6" role="3uHU7w">
                  <property role="Xl_RC" value="=" />
                </node>
                <node concept="37vLTw" id="2QE4RCGi0Zs" role="3uHU7B">
                  <ref role="3cqZAo" node="2QE4RCGhZVe" resolve="fullName" />
                </node>
              </node>
              <node concept="2OqwBi" id="5NuEpF1y3Hh" role="3uHU7w">
                <node concept="37vLTw" id="3v$7B1KczTq" role="2Oq$k0">
                  <ref role="3cqZAo" node="3v$7B1Kczo1" resolve="value" />
                </node>
                <node concept="liA8E" id="5NuEpF1y45Z" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5NuEpF1xUat" role="3K4Cdx">
              <node concept="10Nm6u" id="5NuEpF1xUr8" role="3uHU7w" />
              <node concept="37vLTw" id="3v$7B1Kczo5" role="3uHU7B">
                <ref role="3cqZAo" node="3v$7B1Kczo1" resolve="value" />
              </node>
            </node>
            <node concept="37vLTw" id="2QE4RCGhZVr" role="3K4GZi">
              <ref role="3cqZAo" node="2QE4RCGhZVe" resolve="fullName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5NuEpF1xPNz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2h41Ezbxe8N" role="jymVt" />
    <node concept="312cEu" id="3HJTsBmSn3l" role="jymVt">
      <property role="TrG5h" value="AtomLogicalVar" />
      <property role="2bfB8j" value="true" />
      <node concept="2tJIrI" id="3HJTsBmSn3m" role="jymVt" />
      <node concept="3Tm1VV" id="3HJTsBmSn3n" role="1B3o_S" />
      <node concept="3clFbW" id="3HJTsBmSn3o" role="jymVt">
        <node concept="3cqZAl" id="3HJTsBmSn3p" role="3clF45" />
        <node concept="3Tm1VV" id="3HJTsBmSn3q" role="1B3o_S" />
        <node concept="3clFbS" id="3HJTsBmSn3r" role="3clF47">
          <node concept="XkiVB" id="2h41EzbxxP9" role="3cqZAp">
            <ref role="37wK5l" to="ie8e:uNmovXiEVu" resolve="Variable" />
            <node concept="1rXfSq" id="2h41Ezbx$v8" role="37wK5m">
              <ref role="37wK5l" node="3HJTsBmCy5P" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2h41Ezbx2H3" role="jymVt" />
      <node concept="3clFb_" id="2h41EzbwS8H" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="get" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="2h41EzbwS8I" role="1B3o_S" />
        <node concept="3uibUv" id="573vQv1pew4" role="3clF45">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
        <node concept="3clFbS" id="2h41EzbwS8M" role="3clF47">
          <node concept="3clFbJ" id="2h41EzbxGVG" role="3cqZAp">
            <node concept="3clFbS" id="2h41EzbxGVI" role="3clFbx">
              <node concept="3cpWs6" id="2h41EzbxJTK" role="3cqZAp">
                <node concept="1rXfSq" id="2h41EzbxKA7" role="3cqZAk">
                  <ref role="37wK5l" node="1Ns6gpY6DeD" resolve="asAtom" />
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="2h41EzbxGYR" role="3clFbw">
              <ref role="37wK5l" node="3HJTsBmC6RD" resolve="isBound" />
            </node>
            <node concept="9aQIb" id="2h41EzbxH5p" role="9aQIa">
              <node concept="3clFbS" id="2h41EzbxH5q" role="9aQI4">
                <node concept="3cpWs6" id="2h41EzbxH7Z" role="3cqZAp">
                  <node concept="Xjq3P" id="2h41EzbxH9z" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2h41Ezbx5ZA" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2h41Ezbx5gj" role="jymVt" />
      <node concept="3clFb_" id="2h41EzbwS8P" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="is" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="2h41EzbwS8Q" role="1B3o_S" />
        <node concept="37vLTG" id="2h41EzbwS8R" role="3clF46">
          <property role="TrG5h" value="kind" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="573vQv1pfmQ" role="1tU5fm">
            <ref role="3uigEE" to="yt73:~Term.Kind" resolve="Term.Kind" />
          </node>
        </node>
        <node concept="10P_77" id="2h41EzbwS8U" role="3clF45" />
        <node concept="3clFbS" id="2h41EzbwS8W" role="3clF47">
          <node concept="3clFbJ" id="2h41EzbxNr9" role="3cqZAp">
            <node concept="3clFbS" id="2h41EzbxNra" role="3clFbx">
              <node concept="3cpWs6" id="2h41EzbxNA6" role="3cqZAp">
                <node concept="3clFbC" id="2h41EzbxUn2" role="3cqZAk">
                  <node concept="37vLTw" id="2h41EzbxV2Z" role="3uHU7w">
                    <ref role="3cqZAo" node="2h41EzbwS8R" resolve="kind" />
                  </node>
                  <node concept="Rm8GO" id="2h41EzbxTzV" role="3uHU7B">
                    <ref role="1Px2BO" to="yt73:~Term.Kind" resolve="Term.Kind" />
                    <ref role="Rm8GQ" to="yt73:~Term.REF" resolve="REF" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="2h41EzbxNuf" role="3clFbw">
              <ref role="37wK5l" node="3HJTsBmC6RD" resolve="isBound" />
            </node>
            <node concept="9aQIb" id="2h41EzbxVHT" role="9aQIa">
              <node concept="3clFbS" id="2h41EzbxVHU" role="9aQI4">
                <node concept="3cpWs6" id="2h41EzbxWqe" role="3cqZAp">
                  <node concept="3clFbC" id="2h41EzbxYi0" role="3cqZAk">
                    <node concept="37vLTw" id="2h41EzbxYIt" role="3uHU7w">
                      <ref role="3cqZAo" node="2h41EzbwS8R" resolve="kind" />
                    </node>
                    <node concept="Rm8GO" id="2h41EzbxXxv" role="3uHU7B">
                      <ref role="1Px2BO" to="yt73:~Term.Kind" resolve="Term.Kind" />
                      <ref role="Rm8GQ" to="yt73:~Term.VAR" resolve="VAR" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2h41Ezbx7tm" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2h41Ezbx8bH" role="jymVt" />
      <node concept="3clFb_" id="3HJTsBmSn3F" role="jymVt">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="3HJTsBmSn3G" role="3clF45">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="AtomLogical" />
        </node>
        <node concept="3Tm1VV" id="3HJTsBmSn3H" role="1B3o_S" />
        <node concept="3clFbS" id="3HJTsBmSn3I" role="3clF47">
          <node concept="3clFbF" id="3HJTsBmSn3J" role="3cqZAp">
            <node concept="Xjq3P" id="3HJTsBmToxQ" role="3clFbG">
              <ref role="1HBi2w" node="4U_yxogAknZ" resolve="AtomLogical" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3HJTsBmSn3L" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2DKqMqOj7IE" role="jymVt" />
      <node concept="3clFb_" id="2DKqMqOj8gF" role="jymVt">
        <property role="TrG5h" value="isWildcard" />
        <property role="1EzhhJ" value="false" />
        <node concept="10P_77" id="2DKqMqOj8gG" role="3clF45" />
        <node concept="3Tm1VV" id="2DKqMqOj8gH" role="1B3o_S" />
        <node concept="3clFbS" id="2DKqMqOj8gL" role="3clF47">
          <node concept="3clFbF" id="2DKqMqOjdRo" role="3cqZAp">
            <node concept="2OqwBi" id="2DKqMqOjdRp" role="3clFbG">
              <node concept="Xjq3P" id="2DKqMqOjdRq" role="2Oq$k0">
                <ref role="1HBi2w" node="4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="liA8E" id="2DKqMqOjdRr" role="2OqNvi">
                <ref role="37wK5l" node="2DKqMqOiEEz" resolve="isWildcard" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2DKqMqOj8gM" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2DKqMqOjahb" role="jymVt" />
      <node concept="3clFb_" id="6Sag3Ksvc97" role="jymVt">
        <property role="TrG5h" value="canRepresent" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="6Sag3Ksvc98" role="3clF46">
          <property role="TrG5h" value="klass" />
          <node concept="3uibUv" id="6Sag3Ksvc99" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
            <node concept="3qUE_q" id="6Sag3Ksvc9a" role="11_B2D">
              <node concept="3uibUv" id="6Sag3Ksvc9b" role="3qUE_r">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
            </node>
          </node>
        </node>
        <node concept="10P_77" id="6Sag3Ksvc9c" role="3clF45" />
        <node concept="3Tm1VV" id="6Sag3Ksvc9d" role="1B3o_S" />
        <node concept="3clFbS" id="6Sag3Ksvc9h" role="3clF47">
          <node concept="3clFbF" id="6Sag3KsvzPQ" role="3cqZAp">
            <node concept="1rXfSq" id="6Sag3KsvzPP" role="3clFbG">
              <ref role="37wK5l" node="6Sag3KsvpQ0" resolve="isValid" />
              <node concept="37vLTw" id="6Sag3Ksv$97" role="37wK5m">
                <ref role="3cqZAo" node="6Sag3Ksvc98" resolve="klass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6Sag3Ksvc9i" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6Sag3Ksvdhv" role="jymVt" />
      <node concept="3clFb_" id="3HJTsBmSn4t" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="toString" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="3HJTsBmSn4u" role="1B3o_S" />
        <node concept="17QB3L" id="3HJTsBmSn4v" role="3clF45" />
        <node concept="3clFbS" id="3HJTsBmSn4w" role="3clF47">
          <node concept="3clFbF" id="3HJTsBmSn4x" role="3cqZAp">
            <node concept="2OqwBi" id="3HJTsBmSn4y" role="3clFbG">
              <node concept="1rXfSq" id="3HJTsBmTsLO" role="2Oq$k0">
                <ref role="37wK5l" node="3HJTsBmSn3F" resolve="logical" />
              </node>
              <node concept="liA8E" id="3HJTsBmSn4$" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmCy5P" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3HJTsBmSn4_" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3HJTsBmSn3M" role="jymVt" />
      <node concept="3clFb_" id="3HJTsBmSn3N" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="hashCode" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="3HJTsBmSn3O" role="1B3o_S" />
        <node concept="10Oyi0" id="3HJTsBmSn3P" role="3clF45" />
        <node concept="3clFbS" id="3HJTsBmSn3Q" role="3clF47">
          <node concept="3clFbF" id="3HJTsBmSn3R" role="3cqZAp">
            <node concept="3cpWs3" id="3HJTsBmSn3S" role="3clFbG">
              <node concept="3cmrfG" id="3HJTsBmSn3T" role="3uHU7w">
                <property role="3cmrfH" value="31" />
              </node>
              <node concept="17qRlL" id="3HJTsBmSn3U" role="3uHU7B">
                <node concept="3cmrfG" id="3HJTsBmSn3Y" role="3uHU7w">
                  <property role="3cmrfH" value="17" />
                </node>
                <node concept="2OqwBi" id="3HJTsBmTmPB" role="3uHU7B">
                  <node concept="Xjq3P" id="3HJTsBmTmBJ" role="2Oq$k0">
                    <ref role="1HBi2w" node="4U_yxogAknZ" resolve="AtomLogical" />
                  </node>
                  <node concept="liA8E" id="3HJTsBmTo2d" role="2OqNvi">
                    <ref role="37wK5l" node="2ev$9JFO7gJ" resolve="hashCode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3HJTsBmSn3Z" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3HJTsBmSn40" role="jymVt" />
      <node concept="3clFb_" id="3HJTsBmSn41" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="equals" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="3HJTsBmSn42" role="1B3o_S" />
        <node concept="10P_77" id="3HJTsBmSn43" role="3clF45" />
        <node concept="37vLTG" id="3HJTsBmSn44" role="3clF46">
          <property role="TrG5h" value="that" />
          <node concept="3uibUv" id="3HJTsBmSn45" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="3HJTsBmSn46" role="3clF47">
          <node concept="3clFbJ" id="3HJTsBmSn47" role="3cqZAp">
            <node concept="3clFbS" id="3HJTsBmSn48" role="3clFbx">
              <node concept="3cpWs6" id="3HJTsBmSn49" role="3cqZAp">
                <node concept="3clFbT" id="3HJTsBmSn4a" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="3HJTsBmSn4b" role="3clFbw">
              <node concept="2ZW3vV" id="3HJTsBmSn4c" role="3fr31v">
                <node concept="3uibUv" id="3HJTsBmSn4d" role="2ZW6by">
                  <ref role="3uigEE" node="3HJTsBmSn3l" resolve="AtomLogical.AtomLogicalVar" />
                </node>
                <node concept="37vLTw" id="3HJTsBmSn4e" role="2ZW6bz">
                  <ref role="3cqZAo" node="3HJTsBmSn44" resolve="that" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3HJTsBmSn4f" role="3cqZAp">
            <node concept="2OqwBi" id="3HJTsBmSn4g" role="3cqZAk">
              <node concept="2OqwBi" id="3HJTsBmSn4h" role="2Oq$k0">
                <node concept="Xjq3P" id="3HJTsBmSn4i" role="2Oq$k0" />
                <node concept="liA8E" id="3HJTsBmTqlz" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmSn3F" resolve="logical" />
                </node>
              </node>
              <node concept="liA8E" id="3HJTsBmSn4k" role="2OqNvi">
                <ref role="37wK5l" node="2DKqMqOp3g$" resolve="equals" />
                <node concept="2OqwBi" id="3HJTsBmSn4l" role="37wK5m">
                  <node concept="1eOMI4" id="3HJTsBmSn4m" role="2Oq$k0">
                    <node concept="10QFUN" id="3HJTsBmSn4n" role="1eOMHV">
                      <node concept="3uibUv" id="3HJTsBmSn4o" role="10QFUM">
                        <ref role="3uigEE" node="3HJTsBmSn3l" resolve="AtomLogical.AtomLogicalVar" />
                      </node>
                      <node concept="37vLTw" id="3HJTsBmSn4p" role="10QFUP">
                        <ref role="3cqZAo" node="3HJTsBmSn44" resolve="that" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3HJTsBmTrTy" role="2OqNvi">
                    <ref role="37wK5l" node="3HJTsBmSn3F" resolve="logical" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3HJTsBmSn4r" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3HJTsBmSn4E" role="jymVt" />
      <node concept="3uibUv" id="3HJTsBmSn4G" role="EKbjA">
        <ref role="3uigEE" to="yg8f:46l0wJhtOD_" resolve="ILogicalVar" />
      </node>
      <node concept="3uibUv" id="2h41Ezbxu$Q" role="1zkMxy">
        <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4U_yxogAko0" role="1B3o_S" />
    <node concept="3uibUv" id="4U_yxogB8or" role="1zkMxy">
      <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
      <node concept="3uibUv" id="4U_yxogB8yy" role="11_B2D">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
    </node>
    <node concept="3uibUv" id="dfChU1k2Og" role="EKbjA">
      <ref role="3uigEE" to="yg8f:dfChU1jXdE" resolve="IAtomLogical" />
    </node>
    <node concept="3UR2Jj" id="2ev$9JF$huc" role="lGtFl">
      <node concept="TZ5HA" id="2ev$9JF$hud" role="TZ5H$">
        <node concept="1dT_AC" id="2ev$9JF$hue" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="2ev$9JF$iKo" role="TZ5H$">
        <node concept="1dT_AC" id="2ev$9JF$iKp" role="1dT_Ay">
          <property role="1dT_AB" value="TODO: the existance of this class and the possibility to present a logical variable referring " />
        </node>
      </node>
      <node concept="TZ5HA" id="2ev$9JF$iKi" role="TZ5H$">
        <node concept="1dT_AC" id="2ev$9JF$iKj" role="1dT_Ay">
          <property role="1dT_AB" value="to its instance effectively makes an Atom mutable, so it should be supported in reactive schemes, such" />
        </node>
      </node>
      <node concept="TZ5HA" id="2ev$9JF$iLe" role="TZ5H$">
        <node concept="1dT_AC" id="2ev$9JF$iLf" role="1dT_Ay">
          <property role="1dT_AB" value="as a constraint occurrence. " />
        </node>
      </node>
      <node concept="TZ5HA" id="2ev$9JF$iLq" role="TZ5H$">
        <node concept="1dT_AC" id="2ev$9JF$iLr" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="2ev$9JF$iLC" role="TZ5H$">
        <node concept="1dT_AC" id="2ev$9JF$iLD" role="1dT_Ay">
          <property role="1dT_AB" value="So far Atom has been treated as an immutable construct, constraints are matched with its instances as " />
        </node>
      </node>
      <node concept="TZ5HA" id="2ev$9JF$iMa" role="TZ5H$">
        <node concept="1dT_AC" id="2ev$9JF$iMb" role="1dT_Ay">
          <property role="1dT_AB" value="with opaque objects. This may change in the future. " />
        </node>
      </node>
      <node concept="TZ5HA" id="2ev$9JF$iKM" role="TZ5H$">
        <node concept="1dT_AC" id="2ev$9JF$iKN" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7MlQDeOyjsA" role="jymVt" />
    <node concept="312cEg" id="7MlQDeOyfvd" role="jymVt">
      <property role="TrG5h" value="prototype" />
      <node concept="3Tm6S6" id="7MlQDeOyfve" role="1B3o_S" />
      <node concept="3uibUv" id="7MlQDeOyfvg" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3qUE_q" id="7MlQDeOyfvh" role="11_B2D">
          <node concept="3uibUv" id="7MlQDeOyfvi" role="3qUE_r">
            <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2GO7tyJVmP4">
    <property role="TrG5h" value="UnificationBuiltinConstraint" />
    <node concept="3Tm1VV" id="2GO7tyJVmP5" role="1B3o_S" />
    <node concept="3uibUv" id="4xBopTzmljS" role="EKbjA">
      <ref role="3uigEE" to="bspi:6Kcfpq7Bj7q" resolve="AutoConstraint" />
    </node>
    <node concept="2tJIrI" id="2GO7tyJVpZ9" role="jymVt" />
    <node concept="Wx3nA" id="2GO7tyJVob2" role="jymVt">
      <property role="TrG5h" value="UNI" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2GO7tyJVob3" role="1B3o_S" />
      <node concept="17QB3L" id="2GO7tyJVob4" role="1tU5fm" />
      <node concept="Xl_RD" id="2GO7tyJVob5" role="33vP2m">
        <property role="Xl_RC" value="uni" />
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJVq9R" role="jymVt" />
    <node concept="Wx3nA" id="2GO7tyJVob6" role="jymVt">
      <property role="TrG5h" value="INFIX_UNI" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2GO7tyJVob7" role="1B3o_S" />
      <node concept="17QB3L" id="2GO7tyJVob8" role="1tU5fm" />
      <node concept="Xl_RD" id="2GO7tyJVob9" role="33vP2m">
        <property role="Xl_RC" value="===" />
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJVqjK" role="jymVt" />
    <node concept="Wx3nA" id="2GO7tyJY8Rr" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2GO7tyJYdE3" role="1B3o_S" />
      <node concept="3uibUv" id="2GO7tyJY94o" role="1tU5fm">
        <ref role="3uigEE" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
      </node>
      <node concept="2ShNRf" id="2GO7tyJY9ff" role="33vP2m">
        <node concept="1pGfFk" id="4xBopTzmoEn" role="2ShVmc">
          <ref role="37wK5l" node="4xBopTzmopz" resolve="UnificationBuiltinConstraint" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJY8Fs" role="jymVt" />
    <node concept="3clFbW" id="4xBopTzmopz" role="jymVt">
      <node concept="3cqZAl" id="4xBopTzmop_" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzmopA" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzmopB" role="3clF47">
        <node concept="XkiVB" id="4xBopTzmoNB" role="3cqZAp">
          <ref role="37wK5l" to="bspi:6Kcfpq7B1f7" resolve="AbstractConstraint" />
          <node concept="37vLTw" id="4xBopTzmp2O" role="37wK5m">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
          </node>
          <node concept="3cmrfG" id="4xBopTzmp8v" role="37wK5m">
            <property role="3cmrfH" value="2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzmo93" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzmp95" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="solverClass" />
      <node concept="3uibUv" id="4xBopTzmp96" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3qUE_q" id="4xBopTzmp97" role="11_B2D">
          <node concept="3uibUv" id="4xBopTzmp98" role="3qUE_r">
            <ref role="3uigEE" to="bspi:6Kcfpq7AYBh" resolve="Queryable" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xBopTzmp99" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzmp9c" role="3clF47">
        <node concept="3clFbF" id="4xBopTztl0s" role="3cqZAp">
          <node concept="3VsKOn" id="4xBopTztl0u" role="3clFbG">
            <ref role="3VsUkX" node="6njqcfQVO0n" resolve="UnificationSolver" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4xBopTznCo5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzmpnW" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzmp9f" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="init" />
      <node concept="3cqZAl" id="4xBopTzmp9g" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzmp9h" role="1B3o_S" />
      <node concept="37vLTG" id="4xBopTzmp9j" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="4xBopTzmp9k" role="1tU5fm">
          <ref role="3uigEE" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="37vLTG" id="24Vro6cRB6v" role="3clF46">
        <property role="TrG5h" value="tracer" />
        <node concept="3uibUv" id="24Vro6cRB6w" role="1tU5fm">
          <ref role="3uigEE" to="bspi:24Vro6cQnrj" resolve="ComputingTracer" />
        </node>
      </node>
      <node concept="3clFbS" id="4xBopTzmp9n" role="3clF47">
        <node concept="3clFbF" id="4xBopTznD$v" role="3cqZAp">
          <node concept="3nyPlj" id="4xBopTznD$u" role="3clFbG">
            <ref role="37wK5l" to="bspi:6Kcfpq7Buzk" resolve="registerSolver" />
            <node concept="37vLTw" id="4xBopTznDNK" role="37wK5m">
              <ref role="3cqZAo" node="4xBopTzmp9j" resolve="session" />
            </node>
            <node concept="2ShNRf" id="4xBopTznDXV" role="37wK5m">
              <node concept="1pGfFk" id="4xBopTznEZG" role="2ShVmc">
                <ref role="37wK5l" node="3HJTsBn5KhD" resolve="UnificationSolverImpl" />
                <node concept="37vLTw" id="4xBopTznF6e" role="37wK5m">
                  <ref role="3cqZAo" node="4xBopTzmp9j" resolve="session" />
                </node>
                <node concept="37vLTw" id="24Vro6cRBd8" role="37wK5m">
                  <ref role="3cqZAo" node="24Vro6cRB6v" resolve="tracer" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4xBopTznC$I" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzmpJL" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzmp9o" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="4xBopTzmp9p" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzmp9q" role="1B3o_S" />
      <node concept="37vLTG" id="4xBopTzmp9s" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="4xBopTzmp9t" role="1tU5fm">
          <ref role="3uigEE" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="3clFbS" id="4xBopTzmp9w" role="3clF47" />
      <node concept="2AHcQZ" id="4xBopTznCL0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="4xBopTzmmAx" role="1zkMxy">
      <ref role="3uigEE" to="bspi:6Kcfpq7B0Wu" resolve="AbstractConstraint" />
    </node>
  </node>
  <node concept="312cEu" id="1H8E3iB85PX">
    <property role="TrG5h" value="StringLogical" />
    <node concept="2tJIrI" id="1H8E3iB88px" role="jymVt" />
    <node concept="3clFbW" id="1H8E3iB88rE" role="jymVt">
      <node concept="3cqZAl" id="1H8E3iB88rG" role="3clF45" />
      <node concept="3Tm1VV" id="1H8E3iB88rH" role="1B3o_S" />
      <node concept="3clFbS" id="1H8E3iB88rI" role="3clF47">
        <node concept="XkiVB" id="1H8E3iB894O" role="3cqZAp">
          <ref role="37wK5l" node="3HJTsBmBUfM" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1H8E3iB88tB" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Declare" resolve="JCHR_Declare" />
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOlXta" role="jymVt" />
    <node concept="3clFbW" id="2DKqMqOlWOd" role="jymVt">
      <node concept="3cqZAl" id="2DKqMqOlWOe" role="3clF45" />
      <node concept="3Tm1VV" id="2DKqMqOlWOf" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOlWOg" role="3clF47">
        <node concept="XkiVB" id="2DKqMqOlWOh" role="3cqZAp">
          <ref role="37wK5l" node="2DKqMqOlOj4" resolve="AbstractLogical" />
          <node concept="37vLTw" id="2DKqMqOlYfg" role="37wK5m">
            <ref role="3cqZAo" node="2DKqMqOlY17" resolve="wildcard" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2DKqMqOlWOi" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Declare" resolve="JCHR_Declare" />
      </node>
      <node concept="37vLTG" id="2DKqMqOlY17" role="3clF46">
        <property role="TrG5h" value="wildcard" />
        <node concept="10P_77" id="2DKqMqOlY16" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1GDBwhEE__6" role="jymVt" />
    <node concept="3clFbW" id="1GDBwhEE__7" role="jymVt">
      <node concept="37vLTG" id="1GDBwhEE__8" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="1GDBwhEE__9" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1GDBwhEE__a" role="3clF45" />
      <node concept="3Tm1VV" id="1GDBwhEE__b" role="1B3o_S" />
      <node concept="3clFbS" id="1GDBwhEE__c" role="3clF47">
        <node concept="XkiVB" id="1GDBwhEE__d" role="3cqZAp">
          <ref role="37wK5l" node="3HJTsBmBVmo" resolve="AbstractLogical" />
          <node concept="10Nm6u" id="1GDBwhEE__e" role="37wK5m" />
          <node concept="37vLTw" id="1GDBwhEE__f" role="37wK5m">
            <ref role="3cqZAo" node="1GDBwhEE__8" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1GDBwhEE__g" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Init" resolve="JCHR_Init" />
      </node>
    </node>
    <node concept="2tJIrI" id="1H8E3iB88qs" role="jymVt" />
    <node concept="3clFbW" id="1H8E3iB8adK" role="jymVt">
      <node concept="37vLTG" id="1GDBwhEEAcf" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1GDBwhEEAib" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1H8E3iB8aSH" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="1H8E3iB8aSX" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1H8E3iB8adM" role="3clF45" />
      <node concept="3Tm1VV" id="1H8E3iB8adN" role="1B3o_S" />
      <node concept="3clFbS" id="1H8E3iB8adO" role="3clF47">
        <node concept="XkiVB" id="1H8E3iB8e1X" role="3cqZAp">
          <ref role="37wK5l" node="3HJTsBmBVmo" resolve="AbstractLogical" />
          <node concept="37vLTw" id="1GDBwhEEB7I" role="37wK5m">
            <ref role="3cqZAo" node="1GDBwhEEAcf" resolve="name" />
          </node>
          <node concept="37vLTw" id="1H8E3iB8e6E" role="37wK5m">
            <ref role="3cqZAo" node="1H8E3iB8aSH" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1H8E3iB8alF" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Init" resolve="JCHR_Init" />
      </node>
    </node>
    <node concept="2tJIrI" id="677NV56hva7" role="jymVt" />
    <node concept="3clFb_" id="dfChU1gi$L" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="findRoot" />
      <node concept="3uibUv" id="46l0wJhx3xk" role="3clF45">
        <ref role="3uigEE" node="1H8E3iB85PX" resolve="StringLogical" />
      </node>
      <node concept="3Tm1VV" id="dfChU1gi$O" role="1B3o_S" />
      <node concept="3clFbS" id="dfChU1gi$U" role="3clF47">
        <node concept="3clFbF" id="dfChU1gkqG" role="3cqZAp">
          <node concept="10QFUN" id="dfChU1gl7$" role="3clFbG">
            <node concept="1rXfSq" id="dfChU1gl7z" role="10QFUP">
              <ref role="37wK5l" to="eifs:~Logical.find():runtime.Logical" resolve="find" />
            </node>
            <node concept="3uibUv" id="dfChU1glDa" role="10QFUM">
              <ref role="3uigEE" node="1H8E3iB85PX" resolve="StringLogical" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="dfChU1gjOV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="dfChU1gjdF" role="jymVt" />
    <node concept="3clFb_" id="7jC45KciagG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="asAtom" />
      <node concept="3uibUv" id="7jC45KciagH" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
      <node concept="3Tm1VV" id="7jC45KciagJ" role="1B3o_S" />
      <node concept="3clFbS" id="7jC45KciagQ" role="3clF47">
        <node concept="3clFbJ" id="7jC45KciiRU" role="3cqZAp">
          <node concept="3clFbS" id="7jC45KciiRW" role="3clFbx">
            <node concept="3cpWs6" id="7jC45KcijDi" role="3cqZAp">
              <node concept="2YIFZM" id="7jC45KcikLk" role="3cqZAk">
                <ref role="37wK5l" to="ie8e:5JQSuNsxb_I" resolve="create" />
                <ref role="1Pybhc" to="ie8e:2xQ7eRAD2dj" resolve="Value" />
                <node concept="2OqwBi" id="2DKqMqOrdpP" role="37wK5m">
                  <node concept="1rXfSq" id="2DKqMqOrdpQ" role="2Oq$k0">
                    <ref role="37wK5l" node="dfChU1gi$L" resolve="findRoot" />
                  </node>
                  <node concept="liA8E" id="2DKqMqOrdpR" role="2OqNvi">
                    <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2DKqMqOrewZ" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="7jC45KcijoX" role="3clFbw">
            <node concept="10Nm6u" id="7jC45Kcijx5" role="3uHU7w" />
            <node concept="2OqwBi" id="2DKqMqOrdpS" role="3uHU7B">
              <node concept="1rXfSq" id="2DKqMqOrdpT" role="2Oq$k0">
                <ref role="37wK5l" node="dfChU1gi$L" resolve="findRoot" />
              </node>
              <node concept="liA8E" id="2DKqMqOrdpU" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2DKqMqOrdZJ" role="9aQIa">
            <node concept="3clFbS" id="2DKqMqOrdZK" role="9aQI4">
              <node concept="3SKdUt" id="2DKqMqOrgdt" role="3cqZAp">
                <node concept="3SKdUq" id="2DKqMqOrgdu" role="3SKWNk">
                  <property role="3SKdUp" value="construct a new tree variable" />
                </node>
              </node>
              <node concept="3cpWs6" id="7jC45KciLiJ" role="3cqZAp">
                <node concept="2ShNRf" id="7jC45KciM65" role="3cqZAk">
                  <node concept="1pGfFk" id="7jC45KciN1y" role="2ShVmc">
                    <ref role="37wK5l" node="7jC45Kciqer" resolve="StringLogical.StringLogicalVar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7jC45Kcib7k" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7MlQDeOyz4i" role="jymVt" />
    <node concept="3clFb_" id="7MlQDeOyypC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="asAtom" />
      <node concept="3uibUv" id="7MlQDeOyypD" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
      <node concept="3Tm1VV" id="7MlQDeOyypE" role="1B3o_S" />
      <node concept="37vLTG" id="7MlQDeOyypF" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="3uibUv" id="7MlQDeOyypG" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="7MlQDeOyypH" role="11_B2D">
            <node concept="3uibUv" id="7MlQDeOyypI" role="3qUE_r">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7MlQDeOyypJ" role="3clF47">
        <node concept="3clFbJ" id="6Sag3KswTx4" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <property role="TyiWL" value="false" />
          <node concept="3clFbS" id="6Sag3KswTx5" role="3clFbx">
            <node concept="YS8fn" id="6Sag3KswTx6" role="3cqZAp">
              <node concept="2ShNRf" id="6Sag3KswTx7" role="YScLw">
                <node concept="1pGfFk" id="6Sag3KswTx8" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="6Sag3KswTx9" role="37wK5m">
                    <property role="Xl_RC" value="illegal prototype" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6Sag3Ksx0nU" role="3clFbw">
            <node concept="2OqwBi" id="6Sag3Ksx0$J" role="3fr31v">
              <node concept="3VsKOn" id="6Sag3Ksx0tP" role="2Oq$k0">
                <ref role="3VsUkX" to="ie8e:2xQ7eRAD2dj" resolve="Value" />
              </node>
              <node concept="liA8E" id="6Sag3Ksx1aw" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.isAssignableFrom(java.lang.Class):boolean" resolve="isAssignableFrom" />
                <node concept="37vLTw" id="6Sag3Ksx1h8" role="37wK5m">
                  <ref role="3cqZAo" node="7MlQDeOyypF" resolve="prototype" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6Sag3Ksx2bL" role="3cqZAp" />
        <node concept="3clFbF" id="6Sag3Ksx1XX" role="3cqZAp">
          <node concept="1rXfSq" id="6Sag3Ksx1XV" role="3clFbG">
            <ref role="37wK5l" node="7jC45KciagG" resolve="asAtom" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7MlQDeOyypQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Sag3KsvAv9" role="jymVt" />
    <node concept="3clFb_" id="6Sag3Ksv_IA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isValid" />
      <node concept="37vLTG" id="6Sag3Ksv_IB" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="3uibUv" id="6Sag3Ksv_IC" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="6Sag3Ksv_ID" role="11_B2D">
            <node concept="3uibUv" id="6Sag3Ksv_IE" role="3qUE_r">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6Sag3Ksv_IF" role="3clF45" />
      <node concept="3Tm1VV" id="6Sag3Ksv_IG" role="1B3o_S" />
      <node concept="3clFbS" id="6Sag3Ksv_IT" role="3clF47">
        <node concept="3clFbF" id="6Sag3KswYAO" role="3cqZAp">
          <node concept="2OqwBi" id="6Sag3KswYIz" role="3clFbG">
            <node concept="3VsKOn" id="6Sag3KswYBK" role="2Oq$k0">
              <ref role="3VsUkX" to="ie8e:2xQ7eRAD2dj" resolve="Value" />
            </node>
            <node concept="liA8E" id="6Sag3KswZka" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Class.isAssignableFrom(java.lang.Class):boolean" resolve="isAssignableFrom" />
              <node concept="37vLTw" id="6Sag3KswZq$" role="37wK5m">
                <ref role="3cqZAo" node="6Sag3Ksv_IB" resolve="prototype" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6Sag3KsvB8B" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7jC45KciaGD" role="jymVt" />
    <node concept="3clFb_" id="5NuEpF1z6iY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="5NuEpF1z6iZ" role="1B3o_S" />
      <node concept="17QB3L" id="77AxcO5bvNp" role="3clF45" />
      <node concept="3clFbS" id="5NuEpF1z6j2" role="3clF47">
        <node concept="3clFbJ" id="2DKqMqOrxbT" role="3cqZAp">
          <node concept="3clFbS" id="2DKqMqOrxbV" role="3clFbx">
            <node concept="3cpWs6" id="2DKqMqOrBKZ" role="3cqZAp">
              <node concept="2OqwBi" id="2DKqMqOrzuI" role="3cqZAk">
                <node concept="liA8E" id="2DKqMqOrzuK" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.toString():java.lang.String" resolve="toString" />
                </node>
                <node concept="2OqwBi" id="2DKqMqOr$fO" role="2Oq$k0">
                  <node concept="1rXfSq" id="2DKqMqOr$fP" role="2Oq$k0">
                    <ref role="37wK5l" node="dfChU1gi$L" resolve="findRoot" />
                  </node>
                  <node concept="liA8E" id="2DKqMqOr$fQ" role="2OqNvi">
                    <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2DKqMqOrDgC" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="2DKqMqOrzfv" role="3clFbw">
            <node concept="10Nm6u" id="2DKqMqOrznm" role="3uHU7w" />
            <node concept="2OqwBi" id="2DKqMqOrxGt" role="3uHU7B">
              <node concept="1rXfSq" id="2DKqMqOrxkl" role="2Oq$k0">
                <ref role="37wK5l" node="dfChU1gi$L" resolve="findRoot" />
              </node>
              <node concept="liA8E" id="2DKqMqOryWO" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2DKqMqOr$NI" role="9aQIa">
            <node concept="3clFbS" id="2DKqMqOr$NJ" role="9aQI4">
              <node concept="3cpWs6" id="2DKqMqOr$QJ" role="3cqZAp">
                <node concept="3K4zz7" id="5NuEpF1zcqV" role="3cqZAk">
                  <node concept="3cpWs3" id="5NuEpF1zdm2" role="3K4GZi">
                    <node concept="2OqwBi" id="5NuEpF1zdKL" role="3uHU7w">
                      <node concept="1rXfSq" id="2DKqMqOrwSC" role="2Oq$k0">
                        <ref role="37wK5l" node="dfChU1gi$L" resolve="findRoot" />
                      </node>
                      <node concept="liA8E" id="5NuEpF1zeJV" role="2OqNvi">
                        <ref role="37wK5l" node="3HJTsBmCy5P" resolve="name" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="5NuEpF1zcWy" role="3uHU7B">
                      <node concept="1rXfSq" id="5NuEpF1zc_Z" role="3uHU7B">
                        <ref role="37wK5l" node="3HJTsBmCy5P" resolve="name" />
                      </node>
                      <node concept="Xl_RD" id="5NuEpF1zcXi" role="3uHU7w">
                        <property role="Xl_RC" value=":" />
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="5NuEpF1zcvb" role="3K4E3e">
                    <ref role="37wK5l" node="3HJTsBmCy5P" resolve="name" />
                  </node>
                  <node concept="3clFbC" id="5NuEpF1zciC" role="3K4Cdx">
                    <node concept="1rXfSq" id="2DKqMqOrwSA" role="3uHU7w">
                      <ref role="37wK5l" node="dfChU1gi$L" resolve="findRoot" />
                    </node>
                    <node concept="Xjq3P" id="5NuEpF1zc4d" role="3uHU7B" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5NuEpF1z6j3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7jC45KcinQd" role="jymVt" />
    <node concept="312cEu" id="7jC45KcioOY" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="StringLogicalVar" />
      <node concept="2tJIrI" id="7jC45Kciq26" role="jymVt" />
      <node concept="3clFbW" id="7jC45Kciqer" role="jymVt">
        <node concept="3cqZAl" id="7jC45Kciqet" role="3clF45" />
        <node concept="3Tm1VV" id="7jC45Kciqeu" role="1B3o_S" />
        <node concept="3clFbS" id="7jC45Kciqev" role="3clF47">
          <node concept="XkiVB" id="7jC45Kciqnh" role="3cqZAp">
            <ref role="37wK5l" to="ie8e:uNmovXiEVu" resolve="Variable" />
            <node concept="1rXfSq" id="7jC45KciqsG" role="37wK5m">
              <ref role="37wK5l" to="eifs:~Logical.getName():java.lang.String" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7jC45KciJeE" role="jymVt" />
      <node concept="3clFb_" id="7jC45Kcis37" role="jymVt">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="7jC45Kciscl" role="3clF45">
          <ref role="3uigEE" node="1H8E3iB85PX" resolve="StringLogical" />
        </node>
        <node concept="3Tm1VV" id="46l0wJhu04E" role="1B3o_S" />
        <node concept="3clFbS" id="7jC45Kcis3b" role="3clF47">
          <node concept="3clFbF" id="7jC45KcisFm" role="3cqZAp">
            <node concept="Xjq3P" id="7jC45KcisFl" role="3clFbG">
              <ref role="1HBi2w" node="1H8E3iB85PX" resolve="StringLogical" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="46l0wJhu0JD" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6Sag3Ksx4s_" role="jymVt" />
      <node concept="3clFb_" id="6Sag3Ksx5sI" role="jymVt">
        <property role="TrG5h" value="canRepresent" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="6Sag3Ksx5sJ" role="3clF46">
          <property role="TrG5h" value="klass" />
          <node concept="3uibUv" id="6Sag3Ksx5sK" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
            <node concept="3qUE_q" id="6Sag3Ksx5sL" role="11_B2D">
              <node concept="3uibUv" id="6Sag3Ksx5sM" role="3qUE_r">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
            </node>
          </node>
        </node>
        <node concept="10P_77" id="6Sag3Ksx5sN" role="3clF45" />
        <node concept="3Tm1VV" id="6Sag3Ksx5sO" role="1B3o_S" />
        <node concept="3clFbS" id="6Sag3Ksx5sS" role="3clF47">
          <node concept="3clFbF" id="6Sag3Ksx9el" role="3cqZAp">
            <node concept="1rXfSq" id="6Sag3Ksx9ek" role="3clFbG">
              <ref role="37wK5l" node="6Sag3Ksv_IA" resolve="isValid" />
              <node concept="37vLTw" id="6Sag3Ksx9sL" role="37wK5m">
                <ref role="3cqZAo" node="6Sag3Ksx5sJ" resolve="klass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6Sag3Ksx5sT" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6Sag3Ksx6Ip" role="jymVt" />
      <node concept="3clFb_" id="7jC45KciFWZ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="toString" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="7jC45KciFX0" role="1B3o_S" />
        <node concept="17QB3L" id="7jC45KciFX1" role="3clF45" />
        <node concept="2AHcQZ" id="7jC45KciFX9" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="7jC45KciFXa" role="3clF47">
          <node concept="3clFbF" id="7jC45KciG_0" role="3cqZAp">
            <node concept="2OqwBi" id="7jC45KciGEM" role="3clFbG">
              <node concept="1rXfSq" id="7jC45KciG$Z" role="2Oq$k0">
                <ref role="37wK5l" node="7jC45Kcis37" resolve="logical" />
              </node>
              <node concept="liA8E" id="7jC45KciHbv" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmCy5P" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7jC45KcisN8" role="jymVt" />
      <node concept="3clFb_" id="7jC45KcisUN" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="hashCode" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="7jC45KcisUO" role="1B3o_S" />
        <node concept="10Oyi0" id="7jC45KcisUP" role="3clF45" />
        <node concept="2AHcQZ" id="7jC45KcisVb" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="7jC45KcisVc" role="3clF47">
          <node concept="3clFbF" id="7jC45KcitsZ" role="3cqZAp">
            <node concept="3cpWs3" id="7jC45Kcitt0" role="3clFbG">
              <node concept="3cmrfG" id="7jC45Kcitt1" role="3uHU7w">
                <property role="3cmrfH" value="31" />
              </node>
              <node concept="17qRlL" id="7jC45Kcitt2" role="3uHU7B">
                <node concept="2OqwBi" id="7jC45Kcitt3" role="3uHU7B">
                  <node concept="1rXfSq" id="7jC45Kciv1v" role="2Oq$k0">
                    <ref role="37wK5l" node="7jC45Kcis37" resolve="logical" />
                  </node>
                  <node concept="liA8E" id="7jC45Kcitt5" role="2OqNvi">
                    <ref role="37wK5l" node="3HJTsBmCeUf" resolve="hashCode" />
                  </node>
                </node>
                <node concept="3cmrfG" id="7jC45Kcitt6" role="3uHU7w">
                  <property role="3cmrfH" value="17" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7jC45KciExz" role="jymVt" />
      <node concept="3clFb_" id="7jC45KcisUl" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="equals" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="7jC45KcisUm" role="1B3o_S" />
        <node concept="10P_77" id="7jC45KcisUn" role="3clF45" />
        <node concept="37vLTG" id="7jC45KcisUo" role="3clF46">
          <property role="TrG5h" value="that" />
          <node concept="3uibUv" id="7jC45KcisUp" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="2AHcQZ" id="7jC45KcisUI" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="7jC45KcisUJ" role="3clF47">
          <node concept="3clFbJ" id="7jC45KciwN4" role="3cqZAp">
            <node concept="3clFbS" id="7jC45KciwN5" role="3clFbx">
              <node concept="3cpWs6" id="7jC45KciwN6" role="3cqZAp">
                <node concept="3clFbT" id="7jC45KciwN7" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="7jC45KciwN8" role="3clFbw">
              <node concept="2ZW3vV" id="7jC45KciwN9" role="3fr31v">
                <node concept="3uibUv" id="7jC45KcixmW" role="2ZW6by">
                  <ref role="3uigEE" node="7jC45KcioOY" resolve="StringLogical.StringLogicalVar" />
                </node>
                <node concept="37vLTw" id="7jC45KciwNb" role="2ZW6bz">
                  <ref role="3cqZAo" node="7jC45KcisUo" resolve="that" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7jC45KciwNc" role="3cqZAp">
            <node concept="2OqwBi" id="7jC45KciwNd" role="3cqZAk">
              <node concept="2OqwBi" id="7jC45KciwNe" role="2Oq$k0">
                <node concept="Xjq3P" id="7jC45KciwNf" role="2Oq$k0" />
                <node concept="liA8E" id="7jC45Kci$Vz" role="2OqNvi">
                  <ref role="37wK5l" node="7jC45Kcis37" resolve="logical" />
                </node>
              </node>
              <node concept="liA8E" id="7jC45KciwNh" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmCeTt" resolve="equals" />
                <node concept="2OqwBi" id="7jC45KciwNi" role="37wK5m">
                  <node concept="1eOMI4" id="7jC45KciwNj" role="2Oq$k0">
                    <node concept="10QFUN" id="7jC45KciwNk" role="1eOMHV">
                      <node concept="3uibUv" id="7jC45KciC1b" role="10QFUM">
                        <ref role="3uigEE" node="7jC45KcioOY" resolve="StringLogical.StringLogicalVar" />
                      </node>
                      <node concept="37vLTw" id="7jC45KciwNm" role="10QFUP">
                        <ref role="3cqZAo" node="7jC45KcisUo" resolve="that" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7jC45KciDdQ" role="2OqNvi">
                    <ref role="37wK5l" node="7jC45Kcis37" resolve="logical" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7jC45KcionH" role="1B3o_S" />
      <node concept="3uibUv" id="7jC45KcipOI" role="1zkMxy">
        <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3uibUv" id="46l0wJhtZlC" role="EKbjA">
        <ref role="3uigEE" to="yg8f:46l0wJhtOD_" resolve="ILogicalVar" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Sag3KswU4W" role="jymVt" />
    <node concept="3Tm1VV" id="1H8E3iB85PY" role="1B3o_S" />
    <node concept="3uibUv" id="1H8E3iB89ci" role="1zkMxy">
      <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
      <node concept="17QB3L" id="77AxcO5bvNq" role="11_B2D" />
    </node>
    <node concept="3UR2Jj" id="1H8E3iB8hOe" role="lGtFl">
      <node concept="TZ5HA" id="3HJTsBmCGUa" role="TZ5H$">
        <node concept="1dT_AC" id="3HJTsBmCGUb" role="1dT_Ay">
          <property role="1dT_AB" value="A logical variable representing string value." />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="1mP5b6jQTY7" role="EKbjA">
      <ref role="3uigEE" to="yg8f:7jC45KcfYla" resolve="IStringLogical" />
    </node>
  </node>
  <node concept="312cEu" id="3HJTsBmBSJa">
    <property role="TrG5h" value="AbstractLogical" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="3HJTsBmBSVh" role="jymVt" />
    <node concept="3clFbW" id="3HJTsBmBUfM" role="jymVt">
      <node concept="3cqZAl" id="3HJTsBmBUfO" role="3clF45" />
      <node concept="3Tmbuc" id="3HJTsBmBV01" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmBUfQ" role="3clF47">
        <node concept="XkiVB" id="3HJTsBmBUT6" role="3cqZAp">
          <ref role="37wK5l" to="eifs:~Logical.&lt;init&gt;()" resolve="Logical" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOlPfZ" role="jymVt" />
    <node concept="3clFbW" id="2DKqMqOlOj4" role="jymVt">
      <node concept="3cqZAl" id="2DKqMqOlOj5" role="3clF45" />
      <node concept="3Tmbuc" id="2DKqMqOlOj6" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOlOj7" role="3clF47">
        <node concept="XkiVB" id="2DKqMqOlOj8" role="3cqZAp">
          <ref role="37wK5l" to="eifs:~Logical.&lt;init&gt;()" resolve="Logical" />
        </node>
        <node concept="3clFbF" id="2DKqMqOlQsd" role="3cqZAp">
          <node concept="37vLTI" id="2DKqMqOlSk3" role="3clFbG">
            <node concept="37vLTw" id="2DKqMqOlSxN" role="37vLTx">
              <ref role="3cqZAo" node="2DKqMqOlQcI" resolve="wildcard" />
            </node>
            <node concept="2OqwBi" id="2DKqMqOlQAd" role="37vLTJ">
              <node concept="Xjq3P" id="2DKqMqOlQsb" role="2Oq$k0" />
              <node concept="2OwXpG" id="2DKqMqOlR_1" role="2OqNvi">
                <ref role="2Oxat5" node="2DKqMqOi$it" resolve="wildcard" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2DKqMqOlQcI" role="3clF46">
        <property role="TrG5h" value="wildcard" />
        <node concept="10P_77" id="2DKqMqOlQcH" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmBV0n" role="jymVt" />
    <node concept="3clFbW" id="3HJTsBmBV0W" role="jymVt">
      <node concept="3cqZAl" id="3HJTsBmBV0Y" role="3clF45" />
      <node concept="3Tmbuc" id="3HJTsBmBV3L" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmBV10" role="3clF47">
        <node concept="XkiVB" id="3HJTsBmBV5O" role="3cqZAp">
          <ref role="37wK5l" to="eifs:~Logical.&lt;init&gt;(java.lang.String)" resolve="Logical" />
          <node concept="37vLTw" id="3HJTsBmBVeG" role="37wK5m">
            <ref role="3cqZAo" node="3HJTsBmBV1v" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBmBV1v" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3HJTsBmBV1u" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7nuzzkr1WTZ" role="jymVt" />
    <node concept="3clFbW" id="7nuzzkr1W8y" role="jymVt">
      <node concept="3cqZAl" id="7nuzzkr1W8z" role="3clF45" />
      <node concept="3Tmbuc" id="7nuzzkr1W8$" role="1B3o_S" />
      <node concept="3clFbS" id="7nuzzkr1W8_" role="3clF47">
        <node concept="XkiVB" id="7nuzzkr1W8A" role="3cqZAp">
          <ref role="37wK5l" to="eifs:~Logical.&lt;init&gt;(java.lang.String)" resolve="Logical" />
          <node concept="37vLTw" id="7nuzzkr1W8B" role="37wK5m">
            <ref role="3cqZAo" node="7nuzzkr1W8L" resolve="name" />
          </node>
        </node>
        <node concept="3clFbF" id="7nuzzkr1Y31" role="3cqZAp">
          <node concept="37vLTI" id="7nuzzkr1ZVn" role="3clFbG">
            <node concept="37vLTw" id="7nuzzkr20am" role="37vLTx">
              <ref role="3cqZAo" node="7nuzzkr1XEB" resolve="wildcard" />
            </node>
            <node concept="2OqwBi" id="7nuzzkr1Ydg" role="37vLTJ">
              <node concept="Xjq3P" id="7nuzzkr1Y2Z" role="2Oq$k0" />
              <node concept="2OwXpG" id="7nuzzkr1Zce" role="2OqNvi">
                <ref role="2Oxat5" node="2DKqMqOi$it" resolve="wildcard" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7nuzzkr1W8L" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7nuzzkr1W8M" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7nuzzkr1XEB" role="3clF46">
        <property role="TrG5h" value="wildcard" />
        <node concept="10P_77" id="7nuzzkr1XT7" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOisBZ" role="jymVt" />
    <node concept="3clFbW" id="3HJTsBmBVmo" role="jymVt">
      <node concept="37vLTG" id="3HJTsBmBVne" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3HJTsBmBVpx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3HJTsBmBVrK" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="3HJTsBmBVu7" role="1tU5fm">
          <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBmBVmq" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBmBVmr" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmBVms" role="3clF47">
        <node concept="XkiVB" id="3HJTsBmBVyo" role="3cqZAp">
          <ref role="37wK5l" to="eifs:~Logical.&lt;init&gt;(java.lang.String,java.lang.Object)" resolve="Logical" />
          <node concept="37vLTw" id="3HJTsBmBVF_" role="37wK5m">
            <ref role="3cqZAo" node="3HJTsBmBVne" resolve="name" />
          </node>
          <node concept="37vLTw" id="3HJTsBmBVQR" role="37wK5m">
            <ref role="3cqZAo" node="3HJTsBmBVrK" resolve="value" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmBSVq" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmCy5P" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="3HJTsBmCy5Q" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBmCy5R" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmCy5S" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmCy5T" role="3cqZAp">
          <node concept="1rXfSq" id="3HJTsBmCy5U" role="3clFbG">
            <ref role="37wK5l" to="eifs:~Logical.getName():java.lang.String" resolve="getName" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBmCy5V" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmCvU3" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmBZ0h" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="value" />
      <node concept="3Tm1VV" id="3HJTsBmBZ0j" role="1B3o_S" />
      <node concept="16syzq" id="3HJTsBmBZ0o" role="3clF45">
        <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
      </node>
      <node concept="3clFbS" id="3HJTsBmBZ0p" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmC0hc" role="3cqZAp">
          <node concept="37vLTw" id="3HJTsBmC0hb" role="3clFbG">
            <ref role="3cqZAo" to="eifs:~Logical.value" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBmBZRW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn6sQw" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn6rgQ" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="findRoot" />
      <node concept="3uibUv" id="3HJTsBn6uNs" role="3clF45">
        <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        <node concept="16syzq" id="3HJTsBn6vt4" role="11_B2D">
          <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3HJTsBn6rgT" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn6rgZ" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3HJTsBmBYbS" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmC6RD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isBound" />
      <node concept="10P_77" id="3HJTsBmC6RE" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBmC6RF" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmC6RK" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmC8E2" role="3cqZAp">
          <node concept="1rXfSq" id="3HJTsBmC8E1" role="3clFbG">
            <ref role="37wK5l" to="eifs:~Logical.isNonVar():boolean" resolve="isNonVar" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBmC9mb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmCabo" role="jymVt" />
    <node concept="3clFb_" id="2DKqMqOiEEz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="isWildcard" />
      <node concept="3Tm1VV" id="2DKqMqOiEE$" role="1B3o_S" />
      <node concept="10P_77" id="2DKqMqOiEE_" role="3clF45" />
      <node concept="3clFbS" id="2DKqMqOiEEA" role="3clF47">
        <node concept="3clFbF" id="2DKqMqOiEEB" role="3cqZAp">
          <node concept="37vLTw" id="2DKqMqOiH7Z" role="3clFbG">
            <ref role="3cqZAo" node="2DKqMqOi$it" resolve="wildcard" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2DKqMqOiEED" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7MlQDeOy8j5" role="jymVt" />
    <node concept="3clFb_" id="2DKqMqOiKCY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="2DKqMqOiKCZ" role="1B3o_S" />
      <node concept="17QB3L" id="2DKqMqOrE5e" role="3clF45" />
      <node concept="3clFbS" id="2DKqMqOiKD2" role="3clF47">
        <node concept="3cpWs8" id="2DKqMqOiMKv" role="3cqZAp">
          <node concept="3cpWsn" id="2DKqMqOiMKw" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="2DKqMqOiMKx" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="2DKqMqOiMNl" role="33vP2m">
              <node concept="1pGfFk" id="2DKqMqOiMNk" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2DKqMqOiMPp" role="3cqZAp">
          <node concept="3clFbS" id="2DKqMqOiMPr" role="3clFbx">
            <node concept="3clFbF" id="2DKqMqOiN2u" role="3cqZAp">
              <node concept="2OqwBi" id="2DKqMqOiN6K" role="3clFbG">
                <node concept="37vLTw" id="2DKqMqOiN2s" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DKqMqOiMKw" resolve="sb" />
                </node>
                <node concept="liA8E" id="2DKqMqOiNtq" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="Xl_RD" id="2DKqMqOiNuY" role="37wK5m">
                    <property role="Xl_RC" value="_" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2DKqMqOiMSt" role="3clFbw">
            <ref role="3cqZAo" node="2DKqMqOi$it" resolve="wildcard" />
          </node>
        </node>
        <node concept="3clFbF" id="2DKqMqOiOH2" role="3cqZAp">
          <node concept="2OqwBi" id="2DKqMqOiOMb" role="3clFbG">
            <node concept="37vLTw" id="2DKqMqOiOH0" role="2Oq$k0">
              <ref role="3cqZAo" node="2DKqMqOiMKw" resolve="sb" />
            </node>
            <node concept="liA8E" id="2DKqMqOiP8t" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="1rXfSq" id="2DKqMqOiPcl" role="37wK5m">
                <ref role="37wK5l" node="3HJTsBmCy5P" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2DKqMqOiPq2" role="3cqZAp">
          <node concept="2OqwBi" id="2DKqMqOiPw0" role="3clFbG">
            <node concept="37vLTw" id="2DKqMqOiPq0" role="2Oq$k0">
              <ref role="3cqZAo" node="2DKqMqOiMKw" resolve="sb" />
            </node>
            <node concept="liA8E" id="2DKqMqOiPRi" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2DKqMqOiKD3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOiLDE" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmCeTt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="3HJTsBmCeTu" role="1B3o_S" />
      <node concept="10P_77" id="3HJTsBmCeTv" role="3clF45" />
      <node concept="37vLTG" id="3HJTsBmCeTw" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="3HJTsBmCeTx" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="3HJTsBmCeTy" role="3clF47">
        <node concept="3clFbJ" id="2DKqMqOpzdC" role="3cqZAp">
          <node concept="3clFbS" id="2DKqMqOpzdE" role="3clFbx">
            <node concept="3cpWs6" id="2DKqMqOp$Kg" role="3cqZAp">
              <node concept="3clFbT" id="2DKqMqOp$LJ" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2DKqMqOp$iQ" role="3clFbw">
            <node concept="10Nm6u" id="2DKqMqOp$It" role="3uHU7w" />
            <node concept="37vLTw" id="2DKqMqOpzEL" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBmCeTw" resolve="that" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3HJTsBmCeTz" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBmCeT$" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBmCeT_" role="3cqZAp">
              <node concept="3clFbT" id="3HJTsBmCeTA" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3HJTsBmCkGE" role="3clFbw">
            <node concept="2OqwBi" id="3HJTsBmClyo" role="3uHU7w">
              <node concept="Xjq3P" id="3HJTsBmClhr" role="2Oq$k0" />
              <node concept="liA8E" id="3HJTsBmCmUX" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJTsBmChK1" role="3uHU7B">
              <node concept="37vLTw" id="3HJTsBmCgQg" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBmCeTw" resolve="that" />
              </node>
              <node concept="liA8E" id="3HJTsBmCkg$" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2DKqMqOpqwz" role="3cqZAp">
          <node concept="3clFbS" id="2DKqMqOpqw_" role="3clFbx">
            <node concept="3cpWs6" id="2DKqMqOpsCv" role="3cqZAp">
              <node concept="3clFbT" id="2DKqMqOpt3s" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2DKqMqOprUm" role="3clFbw">
            <node concept="2OqwBi" id="2DKqMqOpZbM" role="3uHU7w">
              <node concept="1eOMI4" id="2DKqMqOpZbN" role="2Oq$k0">
                <node concept="10QFUN" id="2DKqMqOpZbO" role="1eOMHV">
                  <node concept="3uibUv" id="2DKqMqOpZbP" role="10QFUM">
                    <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                    <node concept="3qTvmN" id="2DKqMqOpZbQ" role="11_B2D" />
                  </node>
                  <node concept="37vLTw" id="2DKqMqOpZbR" role="10QFUP">
                    <ref role="3cqZAo" node="3HJTsBmCeTw" resolve="that" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2DKqMqOpZbS" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
              </node>
            </node>
            <node concept="1rXfSq" id="2DKqMqOpYiq" role="3uHU7B">
              <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2DKqMqOpvSN" role="3cqZAp" />
        <node concept="3cpWs8" id="2DKqMqOp8PO" role="3cqZAp">
          <node concept="3cpWsn" id="2DKqMqOp8PP" role="3cpWs9">
            <property role="TrG5h" value="thisVal" />
            <node concept="16syzq" id="2DKqMqOp8PJ" role="1tU5fm">
              <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
            </node>
            <node concept="2OqwBi" id="2DKqMqOp8PQ" role="33vP2m">
              <node concept="1rXfSq" id="2DKqMqOpYir" role="2Oq$k0">
                <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
              </node>
              <node concept="liA8E" id="2DKqMqOp8PS" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2DKqMqOpl1_" role="3cqZAp">
          <node concept="3cpWsn" id="2DKqMqOpl1A" role="3cpWs9">
            <property role="TrG5h" value="thatVal" />
            <node concept="3uibUv" id="2DKqMqOpl1$" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="2DKqMqOpl1B" role="33vP2m">
              <node concept="2OqwBi" id="2DKqMqOpZbF" role="2Oq$k0">
                <node concept="1eOMI4" id="2DKqMqOpZbG" role="2Oq$k0">
                  <node concept="10QFUN" id="2DKqMqOpZbH" role="1eOMHV">
                    <node concept="3uibUv" id="2DKqMqOpZbI" role="10QFUM">
                      <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                      <node concept="3qTvmN" id="2DKqMqOpZbJ" role="11_B2D" />
                    </node>
                    <node concept="37vLTw" id="2DKqMqOpZbK" role="10QFUP">
                      <ref role="3cqZAo" node="3HJTsBmCeTw" resolve="that" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2DKqMqOpZbL" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
                </node>
              </node>
              <node concept="liA8E" id="2DKqMqOpl1J" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3HJTsBmCeTJ" role="3cqZAp">
          <node concept="3K4zz7" id="3HJTsBmCeTK" role="3cqZAk">
            <node concept="2OqwBi" id="3HJTsBmCeTL" role="3K4GZi">
              <node concept="37vLTw" id="2DKqMqOpEBn" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOp8PP" resolve="thisVal" />
              </node>
              <node concept="liA8E" id="3HJTsBmCeTN" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="2DKqMqOpFXH" role="37wK5m">
                  <ref role="3cqZAo" node="2DKqMqOpl1A" resolve="thatVal" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="3HJTsBmCeTU" role="3K4E3e">
              <node concept="10Nm6u" id="3HJTsBmCeTV" role="3uHU7w" />
              <node concept="37vLTw" id="2DKqMqOpDUp" role="3uHU7B">
                <ref role="3cqZAo" node="2DKqMqOpl1A" resolve="thatVal" />
              </node>
            </node>
            <node concept="3clFbC" id="3HJTsBmCeU2" role="3K4Cdx">
              <node concept="10Nm6u" id="3HJTsBmCeU3" role="3uHU7w" />
              <node concept="37vLTw" id="2DKqMqOpCyS" role="3uHU7B">
                <ref role="3cqZAo" node="2DKqMqOp8PP" resolve="thisVal" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBmCeUd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmCeUe" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmCeUf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="3HJTsBmCeUg" role="1B3o_S" />
      <node concept="10Oyi0" id="3HJTsBmCeUh" role="3clF45" />
      <node concept="3clFbS" id="3HJTsBmCeUi" role="3clF47">
        <node concept="3cpWs8" id="2DKqMqOpK8x" role="3cqZAp">
          <node concept="3cpWsn" id="2DKqMqOpK8y" role="3cpWs9">
            <property role="TrG5h" value="val" />
            <node concept="16syzq" id="2DKqMqOpK8v" role="1tU5fm">
              <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
            </node>
            <node concept="2OqwBi" id="2DKqMqOpK8z" role="33vP2m">
              <node concept="1rXfSq" id="2DKqMqOq2L7" role="2Oq$k0">
                <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
              </node>
              <node concept="liA8E" id="2DKqMqOpK8_" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2DKqMqOpL1Z" role="3cqZAp">
          <node concept="3K4zz7" id="2DKqMqOpNDy" role="3cqZAk">
            <node concept="3cpWs3" id="2DKqMqOpQBR" role="3K4E3e">
              <node concept="3cmrfG" id="2DKqMqOpQD9" role="3uHU7w">
                <property role="3cmrfH" value="31" />
              </node>
              <node concept="17qRlL" id="2DKqMqOpP4T" role="3uHU7B">
                <node concept="3cmrfG" id="2DKqMqOpOr$" role="3uHU7B">
                  <property role="3cmrfH" value="17" />
                </node>
                <node concept="2OqwBi" id="2DKqMqOpPvN" role="3uHU7w">
                  <node concept="37vLTw" id="2DKqMqOpP6f" role="2Oq$k0">
                    <ref role="3cqZAo" node="2DKqMqOpK8y" resolve="val" />
                  </node>
                  <node concept="liA8E" id="2DKqMqOpPYN" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="2DKqMqOpTn1" role="3K4GZi">
              <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object):int" resolve="identityHashCode" />
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <node concept="1rXfSq" id="2DKqMqOq2L8" role="37wK5m">
                <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
              </node>
            </node>
            <node concept="3y3z36" id="2DKqMqOpMnD" role="3K4Cdx">
              <node concept="10Nm6u" id="2DKqMqOpMOe" role="3uHU7w" />
              <node concept="37vLTw" id="2DKqMqOpLYq" role="3uHU7B">
                <ref role="3cqZAo" node="2DKqMqOpK8y" resolve="val" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBmCeUl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmCeUm" role="jymVt" />
    <node concept="3Tm1VV" id="3HJTsBmBSJb" role="1B3o_S" />
    <node concept="3uibUv" id="3HJTsBmBSLt" role="1zkMxy">
      <ref role="3uigEE" to="eifs:~Logical" resolve="Logical" />
      <node concept="16syzq" id="3HJTsBmBSV4" role="11_B2D">
        <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
      </node>
    </node>
    <node concept="16euLQ" id="3HJTsBmBSUN" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
    <node concept="3uibUv" id="3HJTsBmBTqG" role="EKbjA">
      <ref role="3uigEE" to="yg8f:1mP5b6jQP$C" resolve="ILogical" />
      <node concept="16syzq" id="3HJTsBmBTr8" role="11_B2D">
        <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
      </node>
    </node>
    <node concept="3clFb_" id="3HJTsBmD3e2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setParent" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3HJTsBmD3e3" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmD3e4" role="3cqZAp">
          <node concept="37vLTI" id="3HJTsBmD3e5" role="3clFbG">
            <node concept="37vLTw" id="3HJTsBmD3e6" role="37vLTx">
              <ref role="3cqZAo" node="3HJTsBmD3ec" resolve="parent" />
            </node>
            <node concept="2OqwBi" id="3HJTsBmD3e7" role="37vLTJ">
              <node concept="Xjq3P" id="3HJTsBmD3e8" role="2Oq$k0" />
              <node concept="2OwXpG" id="3HJTsBmD3e9" role="2OqNvi">
                <ref role="2Oxat5" to="eifs:~Logical.parent" resolve="parent" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3HJTsBmD3ea" role="1B3o_S" />
      <node concept="3cqZAl" id="3HJTsBmD3eb" role="3clF45" />
      <node concept="37vLTG" id="3HJTsBmD3ec" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="3HJTsBmD5To" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
          <node concept="16syzq" id="3HJTsBmD6H5" role="11_B2D">
            <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmD3ee" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmK4yW" role="jymVt">
      <property role="TrG5h" value="setValue" />
      <node concept="37vLTG" id="3HJTsBmK7EC" role="3clF46">
        <property role="TrG5h" value="newVal" />
        <node concept="16syzq" id="3HJTsBmK83g" role="1tU5fm">
          <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBmK4yY" role="3clF45" />
      <node concept="3Tmbuc" id="3HJTsBmK6nW" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmK4z0" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmK8iS" role="3cqZAp">
          <node concept="37vLTI" id="3HJTsBmKbmL" role="3clFbG">
            <node concept="37vLTw" id="3HJTsBmKb$7" role="37vLTx">
              <ref role="3cqZAo" node="3HJTsBmK7EC" resolve="newVal" />
            </node>
            <node concept="2OqwBi" id="3HJTsBmK8$2" role="37vLTJ">
              <node concept="Xjq3P" id="3HJTsBmK8iR" role="2Oq$k0" />
              <node concept="2OwXpG" id="3HJTsBmK9K7" role="2OqNvi">
                <ref role="2Oxat5" to="eifs:~Logical.value" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmK5ue" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmD3ef" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="rank" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3HJTsBmD3eg" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmD3eh" role="3cqZAp">
          <node concept="37vLTw" id="3HJTsBmD3ei" role="3clFbG">
            <ref role="3cqZAo" to="eifs:~Logical.rank" resolve="rank" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3HJTsBmD3ej" role="1B3o_S" />
      <node concept="10Oyi0" id="3HJTsBmD3ek" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3HJTsBmD3el" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmD3em" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="incRank" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3HJTsBmD3en" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmD3eo" role="3cqZAp">
          <node concept="3uNrnE" id="3HJTsBmD3ep" role="3clFbG">
            <node concept="2OqwBi" id="3HJTsBmD3eq" role="2$L3a6">
              <node concept="Xjq3P" id="3HJTsBmD3er" role="2Oq$k0" />
              <node concept="2OwXpG" id="3HJTsBmD3es" role="2OqNvi">
                <ref role="2Oxat5" to="eifs:~Logical.rank" resolve="rank" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3HJTsBmD3et" role="1B3o_S" />
      <node concept="3cqZAl" id="3HJTsBmD3eu" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3HJTsBmD3ev" role="jymVt" />
    <node concept="2tJIrI" id="3HJTsBmD3ew" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmD3ex" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashObservers" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3HJTsBmD3ey" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmD3ez" role="3cqZAp">
          <node concept="37vLTw" id="3HJTsBmD3e$" role="3clFbG">
            <ref role="3cqZAo" to="eifs:~Logical.hashObservers" resolve="hashObservers" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3HJTsBmD3e_" role="1B3o_S" />
      <node concept="3uibUv" id="3HJTsBmD3eA" role="3clF45">
        <ref role="3uigEE" to="9js4:~RehashableKeySet" resolve="RehashableKeySet" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmD3eB" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmD3eC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="clearHashObservers" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3HJTsBmD3eD" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmD3eE" role="3cqZAp">
          <node concept="37vLTI" id="3HJTsBmD3eF" role="3clFbG">
            <node concept="10Nm6u" id="3HJTsBmD3eG" role="37vLTx" />
            <node concept="2OqwBi" id="3HJTsBmD3eH" role="37vLTJ">
              <node concept="Xjq3P" id="3HJTsBmD3eI" role="2Oq$k0" />
              <node concept="2OwXpG" id="3HJTsBmD3eJ" role="2OqNvi">
                <ref role="2Oxat5" to="eifs:~Logical.hashObservers" resolve="hashObservers" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3HJTsBmD3eK" role="1B3o_S" />
      <node concept="3cqZAl" id="3HJTsBmD3eL" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3HJTsBmD3eM" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmD3eN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="variableObservers" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3HJTsBmD3eO" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmD3eP" role="3cqZAp">
          <node concept="37vLTw" id="3HJTsBmD3eQ" role="3clFbG">
            <ref role="3cqZAo" to="eifs:~Logical.variableObservers" resolve="variableObservers" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3HJTsBmD3eR" role="1B3o_S" />
      <node concept="3uibUv" id="3HJTsBmD3eS" role="3clF45">
        <ref role="3uigEE" to="eifs:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
        <node concept="3uibUv" id="3HJTsBmD3eT" role="11_B2D">
          <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmD3eU" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmD3eV" role="jymVt">
      <property role="TrG5h" value="setVariableObservers" />
      <node concept="37vLTG" id="3HJTsBmD3eW" role="3clF46">
        <property role="TrG5h" value="vobs" />
        <node concept="3uibUv" id="3HJTsBmD3eX" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
          <node concept="3uibUv" id="3HJTsBmD3eY" role="11_B2D">
            <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBmD3eZ" role="3clF45" />
      <node concept="3Tmbuc" id="3HJTsBmD3f0" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmD3f1" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmD3f2" role="3cqZAp">
          <node concept="37vLTI" id="3HJTsBmD3f3" role="3clFbG">
            <node concept="37vLTw" id="3HJTsBmD3f4" role="37vLTx">
              <ref role="3cqZAo" node="3HJTsBmD3eW" resolve="vobs" />
            </node>
            <node concept="2OqwBi" id="3HJTsBmD3f5" role="37vLTJ">
              <node concept="Xjq3P" id="3HJTsBmD3f6" role="2Oq$k0" />
              <node concept="2OwXpG" id="3HJTsBmD3f7" role="2OqNvi">
                <ref role="2Oxat5" to="eifs:~Logical.variableObservers" resolve="variableObservers" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmD3f8" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmD3f9" role="jymVt">
      <property role="TrG5h" value="clearVariableObservers" />
      <node concept="3cqZAl" id="3HJTsBmD3fa" role="3clF45" />
      <node concept="3Tmbuc" id="3HJTsBmD3fb" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmD3fc" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmD3fd" role="3cqZAp">
          <node concept="37vLTI" id="3HJTsBmD3fe" role="3clFbG">
            <node concept="10Nm6u" id="3HJTsBmD3ff" role="37vLTx" />
            <node concept="2OqwBi" id="3HJTsBmD3fg" role="37vLTJ">
              <node concept="Xjq3P" id="3HJTsBmD3fh" role="2Oq$k0" />
              <node concept="2OwXpG" id="3HJTsBmD3fi" role="2OqNvi">
                <ref role="2Oxat5" to="eifs:~Logical.variableObservers" resolve="variableObservers" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmD3fj" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmDhnk" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="reactivateAndClearObservers" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3HJTsBmDhnl" role="3clF47">
        <node concept="3cpWs8" id="3HJTsBmDhnm" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBmDhnn" role="3cpWs9">
            <property role="TrG5h" value="vobs" />
            <node concept="3uibUv" id="3HJTsBmDhno" role="1tU5fm">
              <ref role="3uigEE" to="eifs:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
              <node concept="3uibUv" id="3HJTsBmDhnp" role="11_B2D">
                <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
              </node>
            </node>
            <node concept="1rXfSq" id="3HJTsBmDhnq" role="33vP2m">
              <ref role="37wK5l" node="3HJTsBmD3eN" resolve="variableObservers" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3HJTsBmDhnr" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBmDhns" role="3clFbx">
            <node concept="3clFbF" id="3HJTsBmDhnt" role="3cqZAp">
              <node concept="1rXfSq" id="3HJTsBmDhnu" role="3clFbG">
                <ref role="37wK5l" node="3HJTsBmD3f9" resolve="clearVariableObservers" />
              </node>
            </node>
            <node concept="3cpWs8" id="3HJTsBmDhnv" role="3cqZAp">
              <node concept="3cpWsn" id="3HJTsBmDhnw" role="3cpWs9">
                <property role="TrG5h" value="vobsIt" />
                <node concept="3uibUv" id="3HJTsBmDhnx" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                  <node concept="3uibUv" id="3HJTsBmDhny" role="11_B2D">
                    <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3HJTsBmDhnz" role="33vP2m">
                  <node concept="37vLTw" id="3HJTsBmDhn$" role="2Oq$k0">
                    <ref role="3cqZAo" node="3HJTsBmDhnn" resolve="vobs" />
                  </node>
                  <node concept="liA8E" id="3HJTsBmDhn_" role="2OqNvi">
                    <ref role="37wK5l" to="eifs:~DoublyLinkedConstraintList.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="3HJTsBmDhnA" role="3cqZAp">
              <node concept="3clFbS" id="3HJTsBmDhnB" role="2LFqv$">
                <node concept="3clFbF" id="3HJTsBmDhnC" role="3cqZAp">
                  <node concept="2OqwBi" id="3HJTsBmDhnD" role="3clFbG">
                    <node concept="2OqwBi" id="3HJTsBmDhnE" role="2Oq$k0">
                      <node concept="37vLTw" id="3HJTsBmDhnF" role="2Oq$k0">
                        <ref role="3cqZAo" node="3HJTsBmDhnw" resolve="vobsIt" />
                      </node>
                      <node concept="liA8E" id="3HJTsBmDhnG" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3HJTsBmDhnH" role="2OqNvi">
                      <ref role="37wK5l" to="eifs:~Constraint.reactivate():void" resolve="reactivate" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3HJTsBmDhnI" role="2$JKZa">
                <node concept="37vLTw" id="3HJTsBmDhnJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBmDhnw" resolve="vobsIt" />
                </node>
                <node concept="liA8E" id="3HJTsBmDhnK" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3HJTsBmDhnL" role="3clFbw">
            <node concept="10Nm6u" id="3HJTsBmDhnM" role="3uHU7w" />
            <node concept="37vLTw" id="3HJTsBmDhnN" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBmDhnn" resolve="vobs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3HJTsBmDhnO" role="1B3o_S" />
      <node concept="3cqZAl" id="3HJTsBmDhnP" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5zfvpQ7aN5o" role="jymVt" />
    <node concept="312cEg" id="2DKqMqOi$it" role="jymVt">
      <property role="TrG5h" value="wildcard" />
      <node concept="3Tm6S6" id="2DKqMqOi$iu" role="1B3o_S" />
      <node concept="10P_77" id="2DKqMqOi$iv" role="1tU5fm" />
      <node concept="3clFbT" id="2DKqMqOi$iw" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3HJTsBn4kk_">
    <property role="TrG5h" value="EqualsBuiltinConstraint" />
    <node concept="2tJIrI" id="3HJTsBn4kJ_" role="jymVt" />
    <node concept="Wx3nA" id="3HJTsBn4kQi" role="jymVt">
      <property role="TrG5h" value="EQ" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3HJTsBn4kQj" role="1B3o_S" />
      <node concept="17QB3L" id="3HJTsBn4kQk" role="1tU5fm" />
      <node concept="Xl_RD" id="3HJTsBn4kQl" role="33vP2m">
        <property role="Xl_RC" value="eq" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4kQm" role="jymVt" />
    <node concept="Wx3nA" id="3HJTsBn4kQn" role="jymVt">
      <property role="TrG5h" value="INFIX_EQ" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3HJTsBn4kQo" role="1B3o_S" />
      <node concept="17QB3L" id="3HJTsBn4kQp" role="1tU5fm" />
      <node concept="Xl_RD" id="3HJTsBn4kQq" role="33vP2m">
        <property role="Xl_RC" value="==" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4kQr" role="jymVt" />
    <node concept="Wx3nA" id="3HJTsBn4kQs" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3HJTsBn4kQt" role="1B3o_S" />
      <node concept="3uibUv" id="3HJTsBn4mlL" role="1tU5fm">
        <ref role="3uigEE" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
      </node>
      <node concept="2ShNRf" id="3HJTsBn4kQv" role="33vP2m">
        <node concept="1pGfFk" id="4xBopTzoA9J" role="2ShVmc">
          <ref role="37wK5l" node="4xBopTzo_Q1" resolve="EqualsBuiltinConstraint" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4kQx" role="jymVt" />
    <node concept="3clFbW" id="4xBopTzo_Q1" role="jymVt">
      <node concept="3cqZAl" id="4xBopTzo_Q3" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzo_Q4" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzo_Q5" role="3clF47">
        <node concept="XkiVB" id="4xBopTzoAs2" role="3cqZAp">
          <ref role="37wK5l" to="bspi:6Kcfpq7B1f7" resolve="AbstractConstraint" />
          <node concept="37vLTw" id="4xBopTzoALa" role="37wK5m">
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
          </node>
          <node concept="3cmrfG" id="4xBopTzoB0z" role="37wK5m">
            <property role="3cmrfH" value="2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzo_yK" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzopJj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="solverClass" />
      <node concept="3uibUv" id="4xBopTzopJk" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3qUE_q" id="4xBopTzopJl" role="11_B2D">
          <node concept="3uibUv" id="4xBopTzopJm" role="3qUE_r">
            <ref role="3uigEE" to="bspi:6Kcfpq7AYBh" resolve="Queryable" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xBopTzopJn" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzopJp" role="3clF47">
        <node concept="3clFbF" id="4xBopTzorXt" role="3cqZAp">
          <node concept="3VsKOn" id="4xBopTzos2A" role="3clFbG">
            <ref role="3VsUkX" node="3HJTsBn4mEA" resolve="EqualsSolver" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4xBopTzorrq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzoBHv" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzopJV" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="init" />
      <node concept="3cqZAl" id="4xBopTzopJW" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzopJX" role="1B3o_S" />
      <node concept="37vLTG" id="4xBopTzopJZ" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="4xBopTzopK0" role="1tU5fm">
          <ref role="3uigEE" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="37vLTG" id="24Vro6cRA82" role="3clF46">
        <property role="TrG5h" value="tracer" />
        <node concept="3uibUv" id="24Vro6cRA83" role="1tU5fm">
          <ref role="3uigEE" to="bspi:24Vro6cQnrj" resolve="ComputingTracer" />
        </node>
      </node>
      <node concept="3clFbS" id="4xBopTzopK3" role="3clF47">
        <node concept="3clFbF" id="4xBopTzoDmY" role="3cqZAp">
          <node concept="3nyPlj" id="4xBopTzoDmX" role="3clFbG">
            <ref role="37wK5l" to="bspi:6Kcfpq7Buzk" resolve="registerSolver" />
            <node concept="37vLTw" id="4xBopTzoDFO" role="37wK5m">
              <ref role="3cqZAo" node="4xBopTzopJZ" resolve="session" />
            </node>
            <node concept="2ShNRf" id="4xBopTzoDQJ" role="37wK5m">
              <node concept="1pGfFk" id="4xBopTzoE8L" role="2ShVmc">
                <ref role="37wK5l" node="3HJTsBn5dl7" resolve="EqualsSolverImpl" />
                <node concept="37vLTw" id="4xBopTzoEb7" role="37wK5m">
                  <ref role="3cqZAo" node="4xBopTzopJZ" resolve="session" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4xBopTzoCz6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzoCMB" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzopK4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="4xBopTzopK5" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzopK6" role="1B3o_S" />
      <node concept="37vLTG" id="4xBopTzopK8" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="4xBopTzopK9" role="1tU5fm">
          <ref role="3uigEE" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="3clFbS" id="4xBopTzopKc" role="3clF47" />
      <node concept="2AHcQZ" id="4xBopTzoD3t" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzop_B" role="jymVt" />
    <node concept="3Tm1VV" id="3HJTsBn4kkA" role="1B3o_S" />
    <node concept="3uibUv" id="4xBopTzo9vV" role="EKbjA">
      <ref role="3uigEE" to="bspi:6Kcfpq7Bj7q" resolve="AutoConstraint" />
    </node>
    <node concept="3uibUv" id="4xBopTzozPs" role="1zkMxy">
      <ref role="3uigEE" to="bspi:6Kcfpq7B0Wu" resolve="AbstractConstraint" />
    </node>
  </node>
  <node concept="3HP615" id="3HJTsBn4mEA">
    <property role="TrG5h" value="EqualsSolver" />
    <node concept="2tJIrI" id="3HJTsBn4xyI" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4xBk" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellEq" />
      <node concept="37vLTG" id="3HJTsBn4xBl" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2c3nq4GRSNF" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4xBn" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2c3nq4GRT5f" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBn4xBp" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4xBq" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4xBr" role="3clF47" />
      <node concept="2AHcQZ" id="3HJTsBn4xBs" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="3HJTsBn4xBt" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4EEH" role="2B70Vg">
            <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4xBx" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4xBy" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellEq" />
      <node concept="37vLTG" id="3HJTsBn4xBz" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2c3nq4GRTmz" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4xB_" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="3HJTsBn4JMA" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBn4xBB" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4xBC" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4xBD" role="3clF47" />
      <node concept="2AHcQZ" id="3HJTsBn4xBE" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="3HJTsBn4xBF" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4F8f" role="2B70Vg">
            <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4xBJ" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4xBK" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellEq" />
      <node concept="37vLTG" id="3HJTsBn4xBL" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="3HJTsBn4KPZ" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4xBN" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2c3nq4GRU9Y" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBn4xBP" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4xBQ" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4xBR" role="3clF47" />
      <node concept="2AHcQZ" id="3HJTsBn4xBS" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="3HJTsBn4xBT" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4Fuw" role="2B70Vg">
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
            <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4xBX" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4xBY" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellEq" />
      <node concept="37vLTG" id="3HJTsBn4xBZ" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="3HJTsBn4Mp4" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4xC1" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="3HJTsBn4Nkq" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBn4xC3" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4xC4" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4xC5" role="3clF47" />
      <node concept="2AHcQZ" id="3HJTsBn4xC6" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="3HJTsBn4xC7" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4FOM" role="2B70Vg">
            <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4xCb" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4xCc" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askEq" />
      <node concept="37vLTG" id="3HJTsBn4xCd" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2c3nq4GRUZy" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4xCf" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2c3nq4GRVhh" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="3HJTsBn4xCh" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4xCi" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4xCj" role="3clF47" />
      <node concept="2AHcQZ" id="3HJTsBn4xCk" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="3HJTsBn4xCl" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4Gb3" role="2B70Vg">
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
            <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4xCp" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4xCq" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askEq" />
      <node concept="37vLTG" id="3HJTsBn4xCr" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2c3nq4GRVyI" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4xCt" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="3HJTsBn4PwM" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="10P_77" id="3HJTsBn4xCv" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4xCw" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4xCx" role="3clF47" />
      <node concept="2AHcQZ" id="3HJTsBn4xCy" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="3HJTsBn4xCz" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4Gxk" role="2B70Vg">
            <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4xCB" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4xCC" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askEq" />
      <node concept="37vLTG" id="3HJTsBn4xCD" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="3HJTsBn4QmS" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4xCF" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2c3nq4GRWm$" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="3HJTsBn4xCH" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4xCI" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4xCJ" role="3clF47" />
      <node concept="2AHcQZ" id="3HJTsBn4xCK" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="3HJTsBn4xCL" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4GR_" role="2B70Vg">
            <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4xCP" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4xCQ" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askEq" />
      <node concept="37vLTG" id="3HJTsBn4xCR" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="3HJTsBn4RFp" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4xCT" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="3HJTsBn4SiQ" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="10P_77" id="3HJTsBn4xCV" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4xCW" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4xCX" role="3clF47" />
      <node concept="2AHcQZ" id="3HJTsBn4xCY" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="3HJTsBn4xCZ" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4HdQ" role="2B70Vg">
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
            <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4xyN" role="jymVt" />
    <node concept="3Tm1VV" id="3HJTsBn4mEB" role="1B3o_S" />
    <node concept="2AHcQZ" id="3HJTsBn4BXb" role="2AJF6D">
      <ref role="2AI5Lk" to="f8dg:~JCHR_Constraints" resolve="JCHR_Constraints" />
      <node concept="2B6LJw" id="3HJTsBn4BXc" role="2B76xF">
        <ref role="2B6OnR" to="f8dg:~JCHR_Constraints.value()" resolve="value" />
        <node concept="2BsdOp" id="3HJTsBn4BXd" role="2B70Vg">
          <node concept="2AHcQZ" id="3HJTsBn4BXe" role="2BsfMF">
            <ref role="2AI5Lk" to="f8dg:~JCHR_Constraint" resolve="JCHR_Constraint" />
            <node concept="2B6LJw" id="3HJTsBn4BXf" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.identifier()" resolve="identifier" />
              <node concept="10M0yZ" id="3HJTsBn4BXg" role="2B70Vg">
                <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
                <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
              </node>
            </node>
            <node concept="2B6LJw" id="3HJTsBn4BXh" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.arity()" resolve="arity" />
              <node concept="3cmrfG" id="3HJTsBn4BXi" role="2B70Vg">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
            <node concept="2B6LJw" id="3HJTsBn4BXj" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.infix()" resolve="infix" />
              <node concept="10M0yZ" id="3HJTsBn4BXk" role="2B70Vg">
                <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
                <ref role="3cqZAo" node="3HJTsBn4kQn" resolve="INFIX_EQ" />
              </node>
            </node>
            <node concept="2B6LJw" id="3HJTsBn4BXl" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.idempotent()" resolve="idempotent" />
              <node concept="Rm8GO" id="3HJTsBn4BXm" role="2B70Vg">
                <ref role="Rm8GQ" to="f8dg:~JCHR_Constraint$Value.YES" resolve="YES" />
                <ref role="1Px2BO" to="f8dg:~JCHR_Constraint$Value" resolve="JCHR_Constraint.Value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="4xBopTzovrt" role="3HQHJm">
      <ref role="3uigEE" to="bspi:6Kcfpq7AYBh" resolve="Queryable" />
    </node>
  </node>
  <node concept="312cEu" id="3HJTsBn4ogZ">
    <property role="TrG5h" value="EqualsSolverImpl" />
    <node concept="2tJIrI" id="3HJTsBn4V$2" role="jymVt" />
    <node concept="3clFbW" id="3HJTsBn5aeI" role="jymVt">
      <node concept="3cqZAl" id="3HJTsBn5aeJ" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn5aeK" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn5aeL" role="3clF47">
        <node concept="1VxSAg" id="3HJTsBn5hAA" role="3cqZAp">
          <ref role="37wK5l" node="5p8T3QHE69j" resolve="EqualsSolverImpl" />
          <node concept="2YIFZM" id="3HJTsBn5CzW" role="37wK5m">
            <ref role="1Pybhc" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
            <ref role="37wK5l" to="bspi:4xBopTzo4e1" resolve="getDefault" />
          </node>
          <node concept="2YIFZM" id="3HJTsBn5imU" role="37wK5m">
            <ref role="37wK5l" to="eifs:~ConstraintSystem.get():runtime.ConstraintSystem" resolve="get" />
            <ref role="1Pybhc" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn5jDB" role="jymVt" />
    <node concept="3clFbW" id="3HJTsBn5jeB" role="jymVt">
      <node concept="3cqZAl" id="3HJTsBn5jeC" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn5jeD" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn5jeE" role="3clF47">
        <node concept="1VxSAg" id="3HJTsBn5jeF" role="3cqZAp">
          <ref role="37wK5l" node="5p8T3QHE69j" resolve="EqualsSolverImpl" />
          <node concept="2YIFZM" id="4xBopTzoKyT" role="37wK5m">
            <ref role="37wK5l" to="bspi:4xBopTzo4e1" resolve="getDefault" />
            <ref role="1Pybhc" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
          </node>
          <node concept="37vLTw" id="3HJTsBn5Tmd" role="37wK5m">
            <ref role="3cqZAo" node="3HJTsBn5Sey" resolve="constraintSystem" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn5Sey" role="3clF46">
        <property role="TrG5h" value="constraintSystem" />
        <node concept="3uibUv" id="3HJTsBn5Sez" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn5dPK" role="jymVt" />
    <node concept="3clFbW" id="3HJTsBn5dl7" role="jymVt">
      <node concept="3cqZAl" id="3HJTsBn5dl8" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn5dl9" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn5dla" role="3clF47">
        <node concept="1VxSAg" id="5p8T3QHE9fd" role="3cqZAp">
          <ref role="37wK5l" node="5p8T3QHE69j" resolve="EqualsSolverImpl" />
          <node concept="37vLTw" id="5p8T3QHEaRn" role="37wK5m">
            <ref role="3cqZAo" node="3HJTsBn5dln" resolve="computingSession" />
          </node>
          <node concept="2YIFZM" id="5p8T3QHEaTh" role="37wK5m">
            <ref role="37wK5l" to="eifs:~ConstraintSystem.get():runtime.ConstraintSystem" resolve="get" />
            <ref role="1Pybhc" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn5dln" role="3clF46">
        <property role="TrG5h" value="computingSession" />
        <node concept="3uibUv" id="4xBopTzoKGe" role="1tU5fm">
          <ref role="3uigEE" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5p8T3QHE7qu" role="jymVt" />
    <node concept="3clFbW" id="5p8T3QHE69j" role="jymVt">
      <node concept="3cqZAl" id="5p8T3QHE69k" role="3clF45" />
      <node concept="3Tm1VV" id="5p8T3QHE69l" role="1B3o_S" />
      <node concept="3clFbS" id="5p8T3QHE69m" role="3clF47">
        <node concept="3clFbF" id="4xBopTzoLHT" role="3cqZAp">
          <node concept="37vLTI" id="4xBopTzoNkA" role="3clFbG">
            <node concept="37vLTw" id="4xBopTzoNHS" role="37vLTx">
              <ref role="3cqZAo" node="5p8T3QHE69z" resolve="computingSession" />
            </node>
            <node concept="2OqwBi" id="4xBopTzoLQ6" role="37vLTJ">
              <node concept="Xjq3P" id="4xBopTzoLHR" role="2Oq$k0" />
              <node concept="2OwXpG" id="4xBopTzoMCX" role="2OqNvi">
                <ref role="2Oxat5" node="4xBopTzoHcz" resolve="computingSession" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5p8T3QHE69t" role="3cqZAp">
          <node concept="37vLTI" id="5p8T3QHE69u" role="3clFbG">
            <node concept="2OqwBi" id="5p8T3QHE69v" role="37vLTJ">
              <node concept="Xjq3P" id="5p8T3QHE69w" role="2Oq$k0" />
              <node concept="2OwXpG" id="5p8T3QHE69x" role="2OqNvi">
                <ref role="2Oxat5" node="3HJTsBn53Hy" resolve="constraintSystem" />
              </node>
            </node>
            <node concept="37vLTw" id="5p8T3QHE69y" role="37vLTx">
              <ref role="3cqZAo" node="5p8T3QHE69_" resolve="constraintSystem" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5p8T3QHE69z" role="3clF46">
        <property role="TrG5h" value="computingSession" />
        <node concept="3uibUv" id="4xBopTzoL5d" role="1tU5fm">
          <ref role="3uigEE" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="37vLTG" id="5p8T3QHE69_" role="3clF46">
        <property role="TrG5h" value="constraintSystem" />
        <node concept="3uibUv" id="5p8T3QHE69A" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn52W4" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzoSXw" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="4xBopTzoSXx" role="3clF46">
        <property role="TrG5h" value="autoConstraint" />
        <node concept="3uibUv" id="4xBopTzoSXy" role="1tU5fm">
          <ref role="3uigEE" to="bspi:6Kcfpq7Bj7q" resolve="AutoConstraint" />
        </node>
      </node>
      <node concept="37vLTG" id="4xBopTzoSXz" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="8X2XB" id="4xBopTzoSX$" role="1tU5fm">
          <node concept="3uibUv" id="4xBopTzoSX_" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4xBopTzoSXA" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzoSXB" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzoSXE" role="3clF47">
        <node concept="3clFbJ" id="4xBopTzpUzz" role="3cqZAp">
          <node concept="3clFbS" id="4xBopTzpUz$" role="3clFbx">
            <node concept="3clFbJ" id="4xBopTzpUz_" role="3cqZAp">
              <node concept="3clFbS" id="4xBopTzpUzA" role="3clFbx">
                <node concept="YS8fn" id="4xBopTzpUzB" role="3cqZAp">
                  <node concept="2ShNRf" id="4xBopTzpUzC" role="YScLw">
                    <node concept="1pGfFk" id="4xBopTzpUzD" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                      <node concept="Xl_RD" id="4xBopTzpUzE" role="37wK5m">
                        <property role="Xl_RC" value="invalid arguments count" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="4xBopTzpUzF" role="3clFbw">
                <node concept="3cmrfG" id="4xBopTzpUzG" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="2OqwBi" id="4xBopTzpUzH" role="3uHU7B">
                  <node concept="37vLTw" id="4xBopTzpUzI" role="2Oq$k0">
                    <ref role="3cqZAo" node="4xBopTzoSXz" resolve="arg" />
                  </node>
                  <node concept="1Rwk04" id="4xBopTzpUzJ" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4xBopTzpUzK" role="3cqZAp">
              <node concept="3cpWsn" id="4xBopTzpUzL" role="3cpWs9">
                <property role="TrG5h" value="left" />
                <node concept="3uibUv" id="4xBopTzpUzM" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="AH0OO" id="4xBopTzpUzN" role="33vP2m">
                  <node concept="3cmrfG" id="4xBopTzpUzO" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="4xBopTzpUzP" role="AHHXb">
                    <ref role="3cqZAo" node="4xBopTzoSXz" resolve="arg" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4xBopTzpUzQ" role="3cqZAp">
              <node concept="3cpWsn" id="4xBopTzpUzR" role="3cpWs9">
                <property role="TrG5h" value="right" />
                <node concept="3uibUv" id="4xBopTzpUzS" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="AH0OO" id="4xBopTzpUzT" role="33vP2m">
                  <node concept="3cmrfG" id="4xBopTzpUzU" role="AHEQo">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="4xBopTzpUzV" role="AHHXb">
                    <ref role="3cqZAo" node="4xBopTzoSXz" resolve="arg" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4xBopTzpUzW" role="3cqZAp">
              <node concept="3clFbS" id="4xBopTzpUzX" role="3clFbx">
                <node concept="3cpWs6" id="4xBopTzpUzY" role="3cqZAp">
                  <node concept="1rXfSq" id="4xBopTzpUzZ" role="3cqZAk">
                    <ref role="37wK5l" node="3HJTsBn4VAS" resolve="askEq" />
                    <node concept="10QFUN" id="4xBopTzpU$0" role="37wK5m">
                      <node concept="37vLTw" id="4xBopTzpU$1" role="10QFUP">
                        <ref role="3cqZAo" node="4xBopTzpUzL" resolve="left" />
                      </node>
                      <node concept="3uibUv" id="4xBopTzpYQu" role="10QFUM">
                        <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                        <node concept="3qTvmN" id="2c3nq4GSeVZ" role="11_B2D" />
                      </node>
                    </node>
                    <node concept="10QFUN" id="4xBopTzpU$3" role="37wK5m">
                      <node concept="3uibUv" id="4xBopTzpZZU" role="10QFUM">
                        <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                        <node concept="3qTvmN" id="2c3nq4GSfUd" role="11_B2D" />
                      </node>
                      <node concept="37vLTw" id="4xBopTzpU$5" role="10QFUP">
                        <ref role="3cqZAo" node="4xBopTzpUzR" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="4xBopTzpU$6" role="3clFbw">
                <node concept="2ZW3vV" id="4xBopTzpU$7" role="3uHU7w">
                  <node concept="3uibUv" id="4xBopTzpXiD" role="2ZW6by">
                    <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                  </node>
                  <node concept="37vLTw" id="4xBopTzpU$9" role="2ZW6bz">
                    <ref role="3cqZAo" node="4xBopTzpUzR" resolve="right" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="4xBopTzpU$a" role="3uHU7B">
                  <node concept="3uibUv" id="4xBopTzpWJ9" role="2ZW6by">
                    <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                  </node>
                  <node concept="37vLTw" id="4xBopTzpU$c" role="2ZW6bz">
                    <ref role="3cqZAo" node="4xBopTzpUzL" resolve="left" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="4xBopTzpU$d" role="3eNLev">
                <node concept="3clFbS" id="4xBopTzpU$e" role="3eOfB_">
                  <node concept="3cpWs6" id="4xBopTzpU$f" role="3cqZAp">
                    <node concept="1rXfSq" id="4xBopTzpU$g" role="3cqZAk">
                      <ref role="37wK5l" node="3HJTsBn4VAB" resolve="askEq" />
                      <node concept="10QFUN" id="4xBopTzpU$h" role="37wK5m">
                        <node concept="37vLTw" id="4xBopTzpU$i" role="10QFUP">
                          <ref role="3cqZAo" node="4xBopTzpUzL" resolve="left" />
                        </node>
                        <node concept="3uibUv" id="4xBopTzq5Mm" role="10QFUM">
                          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4xBopTzq8eJ" role="37wK5m">
                        <ref role="3cqZAo" node="4xBopTzpUzR" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="4xBopTzpU$n" role="3eO9$A">
                  <node concept="3fqX7Q" id="4xBopTzq1Ho" role="3uHU7w">
                    <node concept="1eOMI4" id="4xBopTzq1Ne" role="3fr31v">
                      <node concept="2ZW3vV" id="4xBopTzq1Nf" role="1eOMHV">
                        <node concept="3uibUv" id="4xBopTzq1PA" role="2ZW6by">
                          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                        </node>
                        <node concept="37vLTw" id="4xBopTzq1Nh" role="2ZW6bz">
                          <ref role="3cqZAo" node="4xBopTzpUzR" resolve="right" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="4xBopTzpU$r" role="3uHU7B">
                    <node concept="3uibUv" id="4xBopTzq19h" role="2ZW6by">
                      <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                    </node>
                    <node concept="37vLTw" id="4xBopTzpU$t" role="2ZW6bz">
                      <ref role="3cqZAo" node="4xBopTzpUzL" resolve="left" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="4xBopTzpU$u" role="3eNLev">
                <node concept="3clFbS" id="4xBopTzpU$v" role="3eOfB_">
                  <node concept="3cpWs6" id="4xBopTzpU$w" role="3cqZAp">
                    <node concept="1rXfSq" id="4xBopTzpU$x" role="3cqZAk">
                      <ref role="37wK5l" node="3HJTsBn4VAm" resolve="askEq" />
                      <node concept="37vLTw" id="4xBopTzpU$z" role="37wK5m">
                        <ref role="3cqZAo" node="4xBopTzpUzL" resolve="left" />
                      </node>
                      <node concept="10QFUN" id="4xBopTzpU$_" role="37wK5m">
                        <node concept="3uibUv" id="4xBopTzqkkC" role="10QFUM">
                          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                          <node concept="3qTvmN" id="2c3nq4GS_0U" role="11_B2D" />
                        </node>
                        <node concept="37vLTw" id="4xBopTzpU$B" role="10QFUP">
                          <ref role="3cqZAo" node="4xBopTzpUzR" resolve="right" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="4xBopTzpU$C" role="3eO9$A">
                  <node concept="2ZW3vV" id="4xBopTzpU$D" role="3uHU7w">
                    <node concept="3uibUv" id="4xBopTzqh$G" role="2ZW6by">
                      <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                    </node>
                    <node concept="37vLTw" id="4xBopTzpU$F" role="2ZW6bz">
                      <ref role="3cqZAo" node="4xBopTzpUzR" resolve="right" />
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="4xBopTzqhbd" role="3uHU7B">
                    <node concept="1eOMI4" id="4xBopTzqhbf" role="3fr31v">
                      <node concept="2ZW3vV" id="4xBopTzqhbg" role="1eOMHV">
                        <node concept="3uibUv" id="4xBopTzqhbh" role="2ZW6by">
                          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                        </node>
                        <node concept="37vLTw" id="4xBopTzqhbi" role="2ZW6bz">
                          <ref role="3cqZAo" node="4xBopTzpUzL" resolve="left" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="4xBopTzpU$J" role="3eNLev">
                <node concept="3clFbS" id="4xBopTzpU$K" role="3eOfB_">
                  <node concept="3cpWs6" id="4xBopTzpU$L" role="3cqZAp">
                    <node concept="1rXfSq" id="4xBopTzpU$M" role="3cqZAk">
                      <ref role="37wK5l" node="3HJTsBn4VA6" resolve="askEq" />
                      <node concept="37vLTw" id="4xBopTzpU$O" role="37wK5m">
                        <ref role="3cqZAo" node="4xBopTzpUzL" resolve="left" />
                      </node>
                      <node concept="37vLTw" id="4xBopTzpU$S" role="37wK5m">
                        <ref role="3cqZAo" node="4xBopTzpUzR" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="4xBopTzpU$T" role="3eO9$A">
                  <node concept="1eOMI4" id="4xBopTzqne1" role="3uHU7B">
                    <node concept="2ZW3vV" id="4xBopTzqne2" role="1eOMHV">
                      <node concept="3uibUv" id="4xBopTzqne3" role="2ZW6by">
                        <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                      </node>
                      <node concept="37vLTw" id="4xBopTzqne4" role="2ZW6bz">
                        <ref role="3cqZAo" node="4xBopTzpUzL" resolve="left" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="4xBopTzqnBm" role="3uHU7w">
                    <node concept="1eOMI4" id="4xBopTzqnBn" role="3fr31v">
                      <node concept="2ZW3vV" id="4xBopTzqnBo" role="1eOMHV">
                        <node concept="3uibUv" id="4xBopTzqnBp" role="2ZW6by">
                          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                        </node>
                        <node concept="37vLTw" id="4xBopTzqnBq" role="2ZW6bz">
                          <ref role="3cqZAo" node="4xBopTzpUzR" resolve="right" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="4xBopTzpU_0" role="9aQIa">
                <node concept="3clFbS" id="4xBopTzpU_1" role="9aQI4">
                  <node concept="YS8fn" id="4xBopTzpU_2" role="3cqZAp">
                    <node concept="2ShNRf" id="4xBopTzpU_3" role="YScLw">
                      <node concept="1pGfFk" id="4xBopTzpU_4" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                        <node concept="Xl_RD" id="4xBopTzpU_5" role="37wK5m">
                          <property role="Xl_RC" value="invalid arguments" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4xBopTzpU_6" role="3clFbw">
            <node concept="10M0yZ" id="4xBopTzpU_7" role="3uHU7w">
              <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
              <ref role="3cqZAo" node="3HJTsBn4kQs" resolve="INSTANCE" />
            </node>
            <node concept="37vLTw" id="4xBopTzpU_8" role="3uHU7B">
              <ref role="3cqZAo" node="4xBopTzoSXx" resolve="autoConstraint" />
            </node>
          </node>
          <node concept="9aQIb" id="4xBopTzpU_9" role="9aQIa">
            <node concept="3clFbS" id="4xBopTzpU_a" role="9aQI4">
              <node concept="YS8fn" id="4xBopTzpU_b" role="3cqZAp">
                <node concept="2ShNRf" id="4xBopTzpU_c" role="YScLw">
                  <node concept="1pGfFk" id="4xBopTzpU_d" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="4xBopTzpU_e" role="37wK5m">
                      <property role="Xl_RC" value="invalid constraint" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4xBopTzoVu4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzoUmz" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzoSXH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tell" />
      <node concept="37vLTG" id="4xBopTzoSXI" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="4xBopTzoSXJ" role="1tU5fm">
          <ref role="3uigEE" to="bspi:6Kcfpq7BfEn" resolve="Constraint" />
        </node>
      </node>
      <node concept="37vLTG" id="4xBopTzoSXK" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="8X2XB" id="4xBopTzoSXL" role="1tU5fm">
          <node concept="3uibUv" id="4xBopTzoSXM" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4xBopTzoSXN" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzoSXO" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzoSXS" role="3clF47">
        <node concept="3clFbJ" id="4xBopTzquci" role="3cqZAp">
          <node concept="3clFbS" id="4xBopTzqucj" role="3clFbx">
            <node concept="3clFbJ" id="4xBopTzquck" role="3cqZAp">
              <node concept="3clFbS" id="4xBopTzqucl" role="3clFbx">
                <node concept="YS8fn" id="4xBopTzqucm" role="3cqZAp">
                  <node concept="2ShNRf" id="4xBopTzqucn" role="YScLw">
                    <node concept="1pGfFk" id="4xBopTzquco" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                      <node concept="Xl_RD" id="4xBopTzqucp" role="37wK5m">
                        <property role="Xl_RC" value="invalid arguments count" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="4xBopTzqucq" role="3clFbw">
                <node concept="3cmrfG" id="4xBopTzqucr" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="2OqwBi" id="4xBopTzqucs" role="3uHU7B">
                  <node concept="37vLTw" id="4xBopTzquct" role="2Oq$k0">
                    <ref role="3cqZAo" node="4xBopTzoSXK" resolve="arg" />
                  </node>
                  <node concept="1Rwk04" id="4xBopTzqucu" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4xBopTzqucv" role="3cqZAp">
              <node concept="3cpWsn" id="4xBopTzqucw" role="3cpWs9">
                <property role="TrG5h" value="left" />
                <node concept="3uibUv" id="4xBopTzqucx" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="AH0OO" id="4xBopTzqucy" role="33vP2m">
                  <node concept="3cmrfG" id="4xBopTzqucz" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="4xBopTzquc$" role="AHHXb">
                    <ref role="3cqZAo" node="4xBopTzoSXK" resolve="arg" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4xBopTzquc_" role="3cqZAp">
              <node concept="3cpWsn" id="4xBopTzqucA" role="3cpWs9">
                <property role="TrG5h" value="right" />
                <node concept="3uibUv" id="4xBopTzqucB" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="AH0OO" id="4xBopTzqucC" role="33vP2m">
                  <node concept="3cmrfG" id="4xBopTzqucD" role="AHEQo">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="4xBopTzqucE" role="AHHXb">
                    <ref role="3cqZAo" node="4xBopTzoSXK" resolve="arg" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4xBopTzqucF" role="3cqZAp">
              <node concept="3clFbS" id="4xBopTzqucG" role="3clFbx">
                <node concept="3clFbF" id="4xBopTzqvvu" role="3cqZAp">
                  <node concept="1rXfSq" id="4xBopTzqucI" role="3clFbG">
                    <ref role="37wK5l" node="3HJTsBn4V_Q" resolve="tellEq" />
                    <node concept="10QFUN" id="4xBopTzqucJ" role="37wK5m">
                      <node concept="37vLTw" id="4xBopTzqucK" role="10QFUP">
                        <ref role="3cqZAo" node="4xBopTzqucw" resolve="left" />
                      </node>
                      <node concept="3uibUv" id="4xBopTzqucL" role="10QFUM">
                        <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                        <node concept="3qTvmN" id="2c3nq4GSy7i" role="11_B2D" />
                      </node>
                    </node>
                    <node concept="10QFUN" id="4xBopTzqucN" role="37wK5m">
                      <node concept="3uibUv" id="4xBopTzqucO" role="10QFUM">
                        <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                        <node concept="3qTvmN" id="2c3nq4GSy8j" role="11_B2D" />
                      </node>
                      <node concept="37vLTw" id="4xBopTzqucQ" role="10QFUP">
                        <ref role="3cqZAo" node="4xBopTzqucA" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="4xBopTzqucR" role="3clFbw">
                <node concept="2ZW3vV" id="4xBopTzqucS" role="3uHU7w">
                  <node concept="3uibUv" id="4xBopTzqucT" role="2ZW6by">
                    <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                  </node>
                  <node concept="37vLTw" id="4xBopTzqucU" role="2ZW6bz">
                    <ref role="3cqZAo" node="4xBopTzqucA" resolve="right" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="4xBopTzqucV" role="3uHU7B">
                  <node concept="3uibUv" id="4xBopTzqucW" role="2ZW6by">
                    <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                  </node>
                  <node concept="37vLTw" id="4xBopTzqucX" role="2ZW6bz">
                    <ref role="3cqZAo" node="4xBopTzqucw" resolve="left" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="4xBopTzqucY" role="3eNLev">
                <node concept="3clFbS" id="4xBopTzqucZ" role="3eOfB_">
                  <node concept="3clFbF" id="4xBopTzqyRu" role="3cqZAp">
                    <node concept="1rXfSq" id="4xBopTzqud1" role="3clFbG">
                      <ref role="37wK5l" node="3HJTsBn4V_B" resolve="tellEq" />
                      <node concept="10QFUN" id="4xBopTzqud2" role="37wK5m">
                        <node concept="37vLTw" id="4xBopTzqud3" role="10QFUP">
                          <ref role="3cqZAo" node="4xBopTzqucw" resolve="left" />
                        </node>
                        <node concept="3uibUv" id="4xBopTzqud4" role="10QFUM">
                          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4xBopTzqud7" role="37wK5m">
                        <ref role="3cqZAo" node="4xBopTzqucA" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="4xBopTzqud8" role="3eO9$A">
                  <node concept="3fqX7Q" id="4xBopTzqud9" role="3uHU7w">
                    <node concept="1eOMI4" id="4xBopTzquda" role="3fr31v">
                      <node concept="2ZW3vV" id="4xBopTzqudb" role="1eOMHV">
                        <node concept="3uibUv" id="4xBopTzqudc" role="2ZW6by">
                          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                        </node>
                        <node concept="37vLTw" id="4xBopTzqudd" role="2ZW6bz">
                          <ref role="3cqZAo" node="4xBopTzqucA" resolve="right" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="4xBopTzqude" role="3uHU7B">
                    <node concept="3uibUv" id="4xBopTzqudf" role="2ZW6by">
                      <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                    </node>
                    <node concept="37vLTw" id="4xBopTzqudg" role="2ZW6bz">
                      <ref role="3cqZAo" node="4xBopTzqucw" resolve="left" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="4xBopTzqudh" role="3eNLev">
                <node concept="3clFbS" id="4xBopTzqudi" role="3eOfB_">
                  <node concept="3clFbF" id="4xBopTzqAfu" role="3cqZAp">
                    <node concept="1rXfSq" id="4xBopTzqudk" role="3clFbG">
                      <ref role="37wK5l" node="3HJTsBn4V_o" resolve="tellEq" />
                      <node concept="37vLTw" id="4xBopTzqudm" role="37wK5m">
                        <ref role="3cqZAo" node="4xBopTzqucw" resolve="left" />
                      </node>
                      <node concept="10QFUN" id="4xBopTzqudo" role="37wK5m">
                        <node concept="3uibUv" id="4xBopTzqudp" role="10QFUM">
                          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                          <node concept="3qTvmN" id="2c3nq4GSy4o" role="11_B2D" />
                        </node>
                        <node concept="37vLTw" id="4xBopTzqudr" role="10QFUP">
                          <ref role="3cqZAo" node="4xBopTzqucA" resolve="right" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="4xBopTzquds" role="3eO9$A">
                  <node concept="2ZW3vV" id="4xBopTzqudt" role="3uHU7w">
                    <node concept="3uibUv" id="4xBopTzqudu" role="2ZW6by">
                      <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                    </node>
                    <node concept="37vLTw" id="4xBopTzqudv" role="2ZW6bz">
                      <ref role="3cqZAo" node="4xBopTzqucA" resolve="right" />
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="4xBopTzqudw" role="3uHU7B">
                    <node concept="1eOMI4" id="4xBopTzqudx" role="3fr31v">
                      <node concept="2ZW3vV" id="4xBopTzqudy" role="1eOMHV">
                        <node concept="3uibUv" id="4xBopTzqudz" role="2ZW6by">
                          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                        </node>
                        <node concept="37vLTw" id="4xBopTzqud$" role="2ZW6bz">
                          <ref role="3cqZAo" node="4xBopTzqucw" resolve="left" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="4xBopTzqud_" role="3eNLev">
                <node concept="3clFbS" id="4xBopTzqudA" role="3eOfB_">
                  <node concept="3clFbF" id="4xBopTzqDEq" role="3cqZAp">
                    <node concept="1rXfSq" id="4xBopTzqudC" role="3clFbG">
                      <ref role="37wK5l" node="3HJTsBn4V_a" resolve="tellEq" />
                      <node concept="37vLTw" id="4xBopTzqudE" role="37wK5m">
                        <ref role="3cqZAo" node="4xBopTzqucw" resolve="left" />
                      </node>
                      <node concept="37vLTw" id="4xBopTzqudI" role="37wK5m">
                        <ref role="3cqZAo" node="4xBopTzqucA" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="4xBopTzqudJ" role="3eO9$A">
                  <node concept="1eOMI4" id="4xBopTzqudK" role="3uHU7B">
                    <node concept="2ZW3vV" id="4xBopTzqudL" role="1eOMHV">
                      <node concept="3uibUv" id="4xBopTzqudM" role="2ZW6by">
                        <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                      </node>
                      <node concept="37vLTw" id="4xBopTzqudN" role="2ZW6bz">
                        <ref role="3cqZAo" node="4xBopTzqucw" resolve="left" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="4xBopTzqudO" role="3uHU7w">
                    <node concept="1eOMI4" id="4xBopTzqudP" role="3fr31v">
                      <node concept="2ZW3vV" id="4xBopTzqudQ" role="1eOMHV">
                        <node concept="3uibUv" id="4xBopTzqudR" role="2ZW6by">
                          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                        </node>
                        <node concept="37vLTw" id="4xBopTzqudS" role="2ZW6bz">
                          <ref role="3cqZAo" node="4xBopTzqucA" resolve="right" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="4xBopTzqudT" role="9aQIa">
                <node concept="3clFbS" id="4xBopTzqudU" role="9aQI4">
                  <node concept="YS8fn" id="4xBopTzqudV" role="3cqZAp">
                    <node concept="2ShNRf" id="4xBopTzqudW" role="YScLw">
                      <node concept="1pGfFk" id="4xBopTzqudX" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                        <node concept="Xl_RD" id="4xBopTzqudY" role="37wK5m">
                          <property role="Xl_RC" value="invalid arguments" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4xBopTzqudZ" role="3clFbw">
            <node concept="10M0yZ" id="4xBopTzque0" role="3uHU7w">
              <ref role="3cqZAo" node="3HJTsBn4kQs" resolve="INSTANCE" />
              <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
            </node>
            <node concept="37vLTw" id="4xBopTzqvb$" role="3uHU7B">
              <ref role="3cqZAo" node="4xBopTzoSXI" resolve="constraint" />
            </node>
          </node>
          <node concept="9aQIb" id="4xBopTzque2" role="9aQIa">
            <node concept="3clFbS" id="4xBopTzque3" role="9aQI4">
              <node concept="YS8fn" id="4xBopTzque4" role="3cqZAp">
                <node concept="2ShNRf" id="4xBopTzque5" role="YScLw">
                  <node concept="1pGfFk" id="4xBopTzque6" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="4xBopTzque7" role="37wK5m">
                      <property role="Xl_RC" value="invalid constraint" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4xBopTzoWrk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzoRRK" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4V_a" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellEq" />
      <node concept="37vLTG" id="3HJTsBn4V_b" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="3uibUv" id="2c3nq4GSwuq" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4V_d" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="3uibUv" id="2c3nq4GSxer" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBn4V_f" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4V_g" role="1B3o_S" />
      <node concept="2AHcQZ" id="3HJTsBn4V_i" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="3HJTsBn4V_j" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4V_k" role="2B70Vg">
            <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3HJTsBn4V_n" role="3clF47">
        <node concept="3clFbJ" id="3HJTsBn7ifh" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn7ifi" role="3clFbx">
            <node concept="3clFbF" id="3HJTsBn7ifj" role="3cqZAp">
              <node concept="2YIFZM" id="3HJTsBn7ifk" role="3clFbG">
                <ref role="1Pybhc" to="eift:~ConstraintSystemUtil" resolve="ConstraintSystemUtil" />
                <ref role="37wK5l" to="eift:~ConstraintSystemUtil.queue(ConstraintSystem,Runnable)" resolve="queue" />
                <node concept="37vLTw" id="3HJTsBn7ifl" role="37wK5m">
                  <ref role="3cqZAo" node="3HJTsBn53Hy" resolve="constraintSystem" />
                </node>
                <node concept="1bVj0M" id="3HJTsBn7ifm" role="37wK5m">
                  <node concept="3clFbS" id="3HJTsBn7ifn" role="1bW5cS">
                    <node concept="3clFbF" id="3HJTsBn7ifo" role="3cqZAp">
                      <node concept="1rXfSq" id="3HJTsBn7ifp" role="3clFbG">
                        <ref role="37wK5l" node="3HJTsBn4V_a" resolve="tellEq" />
                        <node concept="37vLTw" id="3HJTsBn7ifq" role="37wK5m">
                          <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
                        </node>
                        <node concept="37vLTw" id="3HJTsBn7ifr" role="37wK5m">
                          <ref role="3cqZAo" node="3HJTsBn4V_d" resolve="rightVal" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3HJTsBn7ifs" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="3HJTsBn7ift" role="3clFbw">
            <node concept="37vLTw" id="3HJTsBn7ifu" role="2Oq$k0">
              <ref role="3cqZAo" node="3HJTsBn53Hy" resolve="constraintSystem" />
            </node>
            <node concept="liA8E" id="3HJTsBn7ifv" role="2OqNvi">
              <ref role="37wK5l" to="eifs:~ConstraintSystem.isQueuing():boolean" resolve="isQueuing" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn7osg" role="3cqZAp" />
        <node concept="3clFbJ" id="3HJTsBn7oRW" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn7oRY" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBn7qLI" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="3HJTsBn7pR4" role="3clFbw">
            <node concept="37vLTw" id="3HJTsBn7qsr" role="3uHU7w">
              <ref role="3cqZAo" node="3HJTsBn4V_d" resolve="rightVal" />
            </node>
            <node concept="37vLTw" id="3HJTsBn7pkA" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3HJTsBn7rbx" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn7rbz" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBn7xcC" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="3HJTsBn7w0_" role="3clFbw">
            <node concept="3y3z36" id="3HJTsBn7vHz" role="3uHU7B">
              <node concept="37vLTw" id="3HJTsBn7rCt" role="3uHU7B">
                <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
              </node>
              <node concept="10Nm6u" id="3HJTsBn7sHc" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="3HJTsBn7tMQ" role="3uHU7w">
              <node concept="37vLTw" id="3HJTsBn7xH_" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
              </node>
              <node concept="liA8E" id="3HJTsBn7udV" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="3HJTsBn7y6H" role="37wK5m">
                  <ref role="3cqZAo" node="3HJTsBn4V_d" resolve="rightVal" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn7xcH" role="3cqZAp" />
        <node concept="YS8fn" id="3HJTsBn7z9d" role="3cqZAp">
          <node concept="2ShNRf" id="3HJTsBn7zsx" role="YScLw">
            <node concept="1pGfFk" id="3HJTsBn7zW8" role="2ShVmc">
              <ref role="37wK5l" to="eifs:~FailureException.&lt;init&gt;(java.lang.String)" resolve="FailureException" />
              <node concept="3cpWs3" id="3HJTsBn7Ap2" role="37wK5m">
                <node concept="Xl_RD" id="3HJTsBn7Asb" role="3uHU7w">
                  <property role="Xl_RC" value="'" />
                </node>
                <node concept="3cpWs3" id="3HJTsBn7_Qy" role="3uHU7B">
                  <node concept="3cpWs3" id="3HJTsBn7$Jy" role="3uHU7B">
                    <node concept="3cpWs3" id="3HJTsBn7$fY" role="3uHU7B">
                      <node concept="Xl_RD" id="3HJTsBn7$0f" role="3uHU7B">
                        <property role="Xl_RC" value="cannot make equal '" />
                      </node>
                      <node concept="37vLTw" id="3HJTsBn7$mY" role="3uHU7w">
                        <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="3HJTsBn7_7W" role="3uHU7w">
                      <property role="Xl_RC" value="' and '" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3HJTsBn7A0g" role="3uHU7w">
                    <ref role="3cqZAo" node="3HJTsBn4V_d" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBn4WNZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4X9i" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4V_o" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellEq" />
      <node concept="37vLTG" id="3HJTsBn4V_p" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="3uibUv" id="2c3nq4GSveu" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4V_r" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="3HJTsBn4V_s" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBn4V_u" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4V_v" role="1B3o_S" />
      <node concept="2AHcQZ" id="3HJTsBn4V_x" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="3HJTsBn4V_y" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4V_z" role="2B70Vg">
            <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3HJTsBn4V_A" role="3clF47">
        <node concept="3clFbF" id="3HJTsBn7fYl" role="3cqZAp">
          <node concept="1rXfSq" id="3HJTsBn7fYk" role="3clFbG">
            <ref role="37wK5l" node="3HJTsBn4V_B" resolve="tellEq" />
            <node concept="37vLTw" id="3HJTsBn7g__" role="37wK5m">
              <ref role="3cqZAo" node="3HJTsBn4V_r" resolve="right" />
            </node>
            <node concept="37vLTw" id="3HJTsBn7h4K" role="37wK5m">
              <ref role="3cqZAo" node="3HJTsBn4V_p" resolve="leftVal" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBn4Xy2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4XRl" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4V_B" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellEq" />
      <node concept="37vLTG" id="3HJTsBn4V_C" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="3HJTsBn4V_D" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4V_F" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="3uibUv" id="2c3nq4GSuxT" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBn4V_H" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4V_I" role="1B3o_S" />
      <node concept="2AHcQZ" id="3HJTsBn4V_K" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="3HJTsBn4V_L" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4V_M" role="2B70Vg">
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
            <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3HJTsBn4V_P" role="3clF47">
        <node concept="3cpWs8" id="3HJTsBn77YV" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn77YW" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="3HJTsBn79hD" role="1tU5fm">
              <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
              <node concept="3qTvmN" id="2c3nq4GStLG" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="3HJTsBn77YY" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn77YZ" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn4V_C" resolve="left" />
              </node>
              <node concept="liA8E" id="3HJTsBn77Z0" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn77Z1" role="3cqZAp" />
        <node concept="3clFbJ" id="3HJTsBn77Z2" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn77Z3" role="3clFbx">
            <node concept="3clFbF" id="3HJTsBn77Z4" role="3cqZAp">
              <node concept="2YIFZM" id="3HJTsBn77Z5" role="3clFbG">
                <ref role="37wK5l" to="eift:~ConstraintSystemUtil.queue(ConstraintSystem,Runnable)" resolve="queue" />
                <ref role="1Pybhc" to="eift:~ConstraintSystemUtil" resolve="ConstraintSystemUtil" />
                <node concept="37vLTw" id="3HJTsBn77Z6" role="37wK5m">
                  <ref role="3cqZAo" node="3HJTsBn53Hy" resolve="constraintSystem" />
                </node>
                <node concept="1bVj0M" id="3HJTsBn77Z7" role="37wK5m">
                  <node concept="3clFbS" id="3HJTsBn77Z8" role="1bW5cS">
                    <node concept="3clFbF" id="3HJTsBn77Z9" role="3cqZAp">
                      <node concept="1rXfSq" id="3HJTsBn77Za" role="3clFbG">
                        <ref role="37wK5l" node="3HJTsBn4V_B" resolve="tellEq" />
                        <node concept="37vLTw" id="3HJTsBn77Zb" role="37wK5m">
                          <ref role="3cqZAo" node="3HJTsBn77YW" resolve="leftRepr" />
                        </node>
                        <node concept="37vLTw" id="3HJTsBn77Zc" role="37wK5m">
                          <ref role="3cqZAo" node="3HJTsBn4V_F" resolve="rightVal" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3HJTsBn77Zd" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="3HJTsBn77Ze" role="3clFbw">
            <node concept="37vLTw" id="3HJTsBn77Zf" role="2Oq$k0">
              <ref role="3cqZAo" node="3HJTsBn53Hy" resolve="constraintSystem" />
            </node>
            <node concept="liA8E" id="3HJTsBn77Zg" role="2OqNvi">
              <ref role="37wK5l" to="eifs:~ConstraintSystem.isQueuing():boolean" resolve="isQueuing" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn77Zh" role="3cqZAp" />
        <node concept="3cpWs8" id="3HJTsBn77Zi" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn77Zj" role="3cpWs9">
            <property role="TrG5h" value="leftVal" />
            <node concept="3uibUv" id="2c3nq4GStuE" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="3HJTsBn77Zl" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn77Zm" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn77YW" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="3HJTsBn77Zn" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3HJTsBn77Zo" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn77Zp" role="3clFbx">
            <node concept="3SKdUt" id="2c3nq4GSB5U" role="3cqZAp">
              <node concept="3SKdUq" id="2c3nq4GSB8k" role="3SKWNk">
                <property role="3SKdUp" value="FIXME: hack -- cast to raw to" />
              </node>
            </node>
            <node concept="3clFbF" id="3HJTsBn77Zq" role="3cqZAp">
              <node concept="2OqwBi" id="3HJTsBn77Zr" role="3clFbG">
                <node concept="1eOMI4" id="2c3nq4GSB8Y" role="2Oq$k0">
                  <node concept="10QFUN" id="2c3nq4GSB8V" role="1eOMHV">
                    <node concept="3uibUv" id="2c3nq4GSBdY" role="10QFUM">
                      <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                    </node>
                    <node concept="37vLTw" id="2c3nq4GSB90" role="10QFUP">
                      <ref role="3cqZAo" node="3HJTsBn77YW" resolve="leftRepr" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="3HJTsBn77Zt" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmK4yW" resolve="setValue" />
                  <node concept="37vLTw" id="3HJTsBn77Zu" role="37wK5m">
                    <ref role="3cqZAo" node="3HJTsBn4V_F" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3HJTsBn77Zv" role="3cqZAp">
              <node concept="2OqwBi" id="3HJTsBn77Zw" role="3clFbG">
                <node concept="37vLTw" id="3HJTsBn77Zx" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn77YW" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="3HJTsBn77Zy" role="2OqNvi">
                  <ref role="37wK5l" to="eifs:~Logical.rehashAllAndDispose():void" resolve="rehashAllAndDispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3HJTsBn77Zz" role="3cqZAp" />
            <node concept="3SKdUt" id="3HJTsBn77Z$" role="3cqZAp">
              <node concept="3SKdUq" id="3HJTsBn77Z_" role="3SKWNk">
                <property role="3SKdUp" value="TODO: check the invariants of leftRepr" />
              </node>
            </node>
            <node concept="3clFbF" id="3HJTsBn77ZA" role="3cqZAp">
              <node concept="2OqwBi" id="3HJTsBn77ZB" role="3clFbG">
                <node concept="37vLTw" id="3HJTsBn77ZC" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn77YW" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="3HJTsBn77ZD" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmDhnk" resolve="reactivateAndClearObservers" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3HJTsBn77ZE" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="3HJTsBn77ZF" role="3clFbw">
            <node concept="10Nm6u" id="3HJTsBn77ZG" role="3uHU7w" />
            <node concept="37vLTw" id="3HJTsBn77ZH" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBn77Zj" resolve="leftVal" />
            </node>
          </node>
          <node concept="9aQIb" id="3HJTsBn77ZI" role="9aQIa">
            <node concept="3clFbS" id="3HJTsBn77ZJ" role="9aQI4">
              <node concept="3clFbF" id="3HJTsBn77ZK" role="3cqZAp">
                <node concept="1rXfSq" id="3HJTsBn77ZL" role="3clFbG">
                  <ref role="37wK5l" node="3HJTsBn4V_a" resolve="tellEq" />
                  <node concept="37vLTw" id="3HJTsBn77ZM" role="37wK5m">
                    <ref role="3cqZAo" node="3HJTsBn77Zj" resolve="leftVal" />
                  </node>
                  <node concept="37vLTw" id="3HJTsBn77ZN" role="37wK5m">
                    <ref role="3cqZAo" node="3HJTsBn4V_F" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBn4YgI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn5gqM" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4V_Q" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellEq" />
      <node concept="37vLTG" id="3HJTsBn4V_R" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="3HJTsBn4V_S" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4V_U" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="3HJTsBn4V_V" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBn4V_X" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4V_Y" role="1B3o_S" />
      <node concept="2AHcQZ" id="3HJTsBn4VA0" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="3HJTsBn4VA1" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4VA2" role="2B70Vg">
            <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3HJTsBn4VA5" role="3clF47">
        <node concept="3SKdUt" id="3HJTsBn6TsO" role="3cqZAp">
          <node concept="3SKdUq" id="3HJTsBn6U2z" role="3SKWNk">
            <property role="3SKdUp" value="TODO: avoid code duplication" />
          </node>
        </node>
        <node concept="3clFbJ" id="3HJTsBn6R7p" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn6R7q" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBn6R7r" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="3HJTsBn6R7s" role="3clFbw">
            <node concept="37vLTw" id="3HJTsBn6R7t" role="3uHU7w">
              <ref role="3cqZAo" node="3HJTsBn4V_U" resolve="right" />
            </node>
            <node concept="37vLTw" id="3HJTsBn6R7u" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBn4V_R" resolve="left" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn6R7v" role="3cqZAp" />
        <node concept="3cpWs8" id="3HJTsBn6R7w" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn6R7x" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="3HJTsBn6UOm" role="1tU5fm">
              <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
              <node concept="3qTvmN" id="2c3nq4GSrJZ" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="3HJTsBn6R7z" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn6R7$" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn4V_R" resolve="left" />
              </node>
              <node concept="liA8E" id="3HJTsBn6R7_" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3HJTsBn6R7A" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn6R7B" role="3cpWs9">
            <property role="TrG5h" value="rightRepr" />
            <node concept="3uibUv" id="3HJTsBn6WzP" role="1tU5fm">
              <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
              <node concept="3qTvmN" id="2c3nq4GSrym" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="3HJTsBn6R7D" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn6R7E" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn4V_U" resolve="right" />
              </node>
              <node concept="liA8E" id="3HJTsBn6R7F" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn6R7G" role="3cqZAp" />
        <node concept="3clFbJ" id="3HJTsBn6R7H" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn6R7I" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBn6R7J" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="3HJTsBn6R7K" role="3clFbw">
            <node concept="37vLTw" id="3HJTsBn6R7L" role="3uHU7w">
              <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
            </node>
            <node concept="37vLTw" id="3HJTsBn6R7M" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn6R7N" role="3cqZAp" />
        <node concept="3clFbJ" id="3HJTsBn6R7O" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn6R7P" role="3clFbx">
            <node concept="3clFbF" id="3HJTsBn6R7Q" role="3cqZAp">
              <node concept="2YIFZM" id="3HJTsBn6R7R" role="3clFbG">
                <ref role="1Pybhc" to="eift:~ConstraintSystemUtil" resolve="ConstraintSystemUtil" />
                <ref role="37wK5l" to="eift:~ConstraintSystemUtil.queue(ConstraintSystem,Runnable)" resolve="queue" />
                <node concept="37vLTw" id="3HJTsBn6R7S" role="37wK5m">
                  <ref role="3cqZAo" node="3HJTsBn53Hy" resolve="constraintSystem" />
                </node>
                <node concept="1bVj0M" id="3HJTsBn6R7T" role="37wK5m">
                  <node concept="3clFbS" id="3HJTsBn6R7U" role="1bW5cS">
                    <node concept="3clFbF" id="3HJTsBn6R7V" role="3cqZAp">
                      <node concept="1rXfSq" id="3HJTsBn6R7W" role="3clFbG">
                        <ref role="37wK5l" node="3HJTsBn4V_Q" resolve="tellEq" />
                        <node concept="37vLTw" id="3HJTsBn6R7X" role="37wK5m">
                          <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
                        </node>
                        <node concept="37vLTw" id="3HJTsBn6R7Y" role="37wK5m">
                          <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3HJTsBn6R7Z" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="3HJTsBn6R80" role="3clFbw">
            <node concept="37vLTw" id="3HJTsBn6R81" role="2Oq$k0">
              <ref role="3cqZAo" node="3HJTsBn53Hy" resolve="constraintSystem" />
            </node>
            <node concept="liA8E" id="3HJTsBn6R82" role="2OqNvi">
              <ref role="37wK5l" to="eifs:~ConstraintSystem.isQueuing():boolean" resolve="isQueuing" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn6R83" role="3cqZAp" />
        <node concept="3clFbJ" id="3HJTsBn6R84" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn6R85" role="3clFbx">
            <node concept="3clFbF" id="3HJTsBn6R86" role="3cqZAp">
              <node concept="1rXfSq" id="3HJTsBn6R87" role="3clFbG">
                <ref role="37wK5l" node="3HJTsBn4V_Q" resolve="tellEq" />
                <node concept="37vLTw" id="3HJTsBn6R88" role="37wK5m">
                  <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
                </node>
                <node concept="37vLTw" id="3HJTsBn6R89" role="37wK5m">
                  <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3HJTsBn6R8a" role="3cqZAp" />
          </node>
          <node concept="3eOVzh" id="3HJTsBn6R8b" role="3clFbw">
            <node concept="2OqwBi" id="3HJTsBn6R8c" role="3uHU7w">
              <node concept="37vLTw" id="3HJTsBn6R8d" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
              </node>
              <node concept="liA8E" id="3HJTsBn6R8e" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmD3ef" resolve="rank" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJTsBn6R8f" role="3uHU7B">
              <node concept="37vLTw" id="3HJTsBn6R8g" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="3HJTsBn6R8h" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmD3ef" resolve="rank" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3HJTsBn6R8i" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn6R8j" role="3clFbx">
            <node concept="3clFbF" id="3HJTsBn6R8k" role="3cqZAp">
              <node concept="2OqwBi" id="3HJTsBn6R8l" role="3clFbG">
                <node concept="37vLTw" id="3HJTsBn6R8m" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="3HJTsBn6R8n" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmD3em" resolve="incRank" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3HJTsBn6R8o" role="3clFbw">
            <node concept="2OqwBi" id="3HJTsBn6R8p" role="3uHU7w">
              <node concept="37vLTw" id="3HJTsBn6R8q" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
              </node>
              <node concept="liA8E" id="3HJTsBn6R8r" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmD3ef" resolve="rank" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJTsBn6R8s" role="3uHU7B">
              <node concept="37vLTw" id="3HJTsBn6R8t" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="3HJTsBn6R8u" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmD3ef" resolve="rank" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2c3nq4GSHxz" role="3cqZAp">
          <node concept="3SKdUq" id="2c3nq4GSHOm" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: hack -- cast to raw" />
          </node>
        </node>
        <node concept="3clFbF" id="3HJTsBn6R8v" role="3cqZAp">
          <node concept="2OqwBi" id="3HJTsBn6R8w" role="3clFbG">
            <node concept="1eOMI4" id="2c3nq4GSHYq" role="2Oq$k0">
              <node concept="10QFUN" id="2c3nq4GSHYn" role="1eOMHV">
                <node concept="3uibUv" id="2c3nq4GSI3Z" role="10QFUM">
                  <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                </node>
                <node concept="37vLTw" id="2c3nq4GSHYs" role="10QFUP">
                  <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3HJTsBn6R8y" role="2OqNvi">
              <ref role="37wK5l" node="3HJTsBmD3e2" resolve="setParent" />
              <node concept="37vLTw" id="3HJTsBn6R8z" role="37wK5m">
                <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn6R8$" role="3cqZAp" />
        <node concept="3cpWs8" id="3HJTsBn6R8_" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn6R8A" role="3cpWs9">
            <property role="TrG5h" value="leftVal" />
            <node concept="3uibUv" id="2c3nq4GSqTI" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="3HJTsBn6R8C" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn6R8D" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="3HJTsBn6R8E" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3HJTsBn6R8F" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn6R8G" role="3cpWs9">
            <property role="TrG5h" value="rightVal" />
            <node concept="3uibUv" id="2c3nq4GSre2" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="3HJTsBn6R8I" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn6R8J" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
              </node>
              <node concept="liA8E" id="3HJTsBn6R8K" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn6R8L" role="3cqZAp" />
        <node concept="3clFbJ" id="3HJTsBn6R8M" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn6R8N" role="3clFbx">
            <node concept="3SKdUt" id="3HJTsBn6R8O" role="3cqZAp">
              <node concept="3SKdUq" id="3HJTsBn6R8P" role="3SKWNk">
                <property role="3SKdUp" value="var ground" />
              </node>
            </node>
            <node concept="3SKdUt" id="2c3nq4GSImT" role="3cqZAp">
              <node concept="3SKdUq" id="2c3nq4GSImU" role="3SKWNk">
                <property role="3SKdUp" value="FIXME: hack -- cast to raw" />
              </node>
            </node>
            <node concept="3clFbF" id="3HJTsBn6R8Q" role="3cqZAp">
              <node concept="2OqwBi" id="3HJTsBn6R8R" role="3clFbG">
                <node concept="1eOMI4" id="2c3nq4GSJ_Y" role="2Oq$k0">
                  <node concept="10QFUN" id="2c3nq4GSJ_V" role="1eOMHV">
                    <node concept="3uibUv" id="2c3nq4GSJFG" role="10QFUM">
                      <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                    </node>
                    <node concept="37vLTw" id="2c3nq4GSJA0" role="10QFUP">
                      <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="3HJTsBn6R8T" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmK4yW" resolve="setValue" />
                  <node concept="2OqwBi" id="3HJTsBn6R8U" role="37wK5m">
                    <node concept="37vLTw" id="3HJTsBn6R8V" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
                    </node>
                    <node concept="liA8E" id="3HJTsBn6R8W" role="2OqNvi">
                      <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3HJTsBn6R8X" role="3cqZAp">
              <node concept="2OqwBi" id="3HJTsBn6R8Y" role="3clFbG">
                <node concept="37vLTw" id="3HJTsBn6R8Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="3HJTsBn6R90" role="2OqNvi">
                  <ref role="37wK5l" to="eifs:~Logical.rehashAllAndDispose():void" resolve="rehashAllAndDispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3HJTsBn6R91" role="3cqZAp" />
            <node concept="3clFbF" id="3HJTsBn6R92" role="3cqZAp">
              <node concept="2OqwBi" id="3HJTsBn6R93" role="3clFbG">
                <node concept="37vLTw" id="3HJTsBn6R94" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="3HJTsBn6R95" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmDhnk" resolve="reactivateAndClearObservers" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3HJTsBn6R96" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="3HJTsBn6R97" role="3clFbw">
            <node concept="3y3z36" id="3HJTsBn6R98" role="3uHU7w">
              <node concept="10Nm6u" id="3HJTsBn6R99" role="3uHU7w" />
              <node concept="37vLTw" id="3HJTsBn6R9a" role="3uHU7B">
                <ref role="3cqZAo" node="3HJTsBn6R8G" resolve="rightVal" />
              </node>
            </node>
            <node concept="3clFbC" id="3HJTsBn6R9b" role="3uHU7B">
              <node concept="37vLTw" id="3HJTsBn6R9c" role="3uHU7B">
                <ref role="3cqZAo" node="3HJTsBn6R8A" resolve="leftVal" />
              </node>
              <node concept="10Nm6u" id="3HJTsBn6R9d" role="3uHU7w" />
            </node>
          </node>
          <node concept="3eNFk2" id="3HJTsBn6R9e" role="3eNLev">
            <node concept="1Wc70l" id="3HJTsBn6R9f" role="3eO9$A">
              <node concept="3clFbC" id="3HJTsBn6R9g" role="3uHU7w">
                <node concept="10Nm6u" id="3HJTsBn6R9h" role="3uHU7w" />
                <node concept="37vLTw" id="3HJTsBn6R9i" role="3uHU7B">
                  <ref role="3cqZAo" node="3HJTsBn6R8G" resolve="rightVal" />
                </node>
              </node>
              <node concept="3y3z36" id="3HJTsBn6R9j" role="3uHU7B">
                <node concept="37vLTw" id="3HJTsBn6R9k" role="3uHU7B">
                  <ref role="3cqZAo" node="3HJTsBn6R8A" resolve="leftVal" />
                </node>
                <node concept="10Nm6u" id="3HJTsBn6R9l" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbS" id="3HJTsBn6R9m" role="3eOfB_">
              <node concept="3SKdUt" id="3HJTsBn6R9n" role="3cqZAp">
                <node concept="3SKdUq" id="3HJTsBn6R9o" role="3SKWNk">
                  <property role="3SKdUp" value="ground var" />
                </node>
              </node>
              <node concept="3SKdUt" id="2c3nq4GSJYw" role="3cqZAp">
                <node concept="3SKdUq" id="2c3nq4GSJYx" role="3SKWNk">
                  <property role="3SKdUp" value="FIXME: hack -- cast to raw" />
                </node>
              </node>
              <node concept="3clFbF" id="3HJTsBn6R9p" role="3cqZAp">
                <node concept="2OqwBi" id="3HJTsBn6R9q" role="3clFbG">
                  <node concept="1eOMI4" id="2c3nq4GSKbJ" role="2Oq$k0">
                    <node concept="10QFUN" id="2c3nq4GSKbG" role="1eOMHV">
                      <node concept="3uibUv" id="2c3nq4GSKhs" role="10QFUM">
                        <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                      </node>
                      <node concept="37vLTw" id="2c3nq4GSKbL" role="10QFUP">
                        <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3HJTsBn6R9s" role="2OqNvi">
                    <ref role="37wK5l" node="3HJTsBmK4yW" resolve="setValue" />
                    <node concept="2OqwBi" id="3HJTsBn6R9t" role="37wK5m">
                      <node concept="37vLTw" id="3HJTsBn6R9u" role="2Oq$k0">
                        <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
                      </node>
                      <node concept="liA8E" id="3HJTsBn6R9v" role="2OqNvi">
                        <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3HJTsBn6R9w" role="3cqZAp">
                <node concept="2OqwBi" id="3HJTsBn6R9x" role="3clFbG">
                  <node concept="37vLTw" id="3HJTsBn6R9y" role="2Oq$k0">
                    <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
                  </node>
                  <node concept="liA8E" id="3HJTsBn6R9z" role="2OqNvi">
                    <ref role="37wK5l" to="eifs:~Logical.rehashAllAndDispose():void" resolve="rehashAllAndDispose" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3HJTsBn6R9$" role="3cqZAp" />
              <node concept="3clFbF" id="3HJTsBn6R9_" role="3cqZAp">
                <node concept="2OqwBi" id="3HJTsBn6R9A" role="3clFbG">
                  <node concept="37vLTw" id="3HJTsBn6R9B" role="2Oq$k0">
                    <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
                  </node>
                  <node concept="liA8E" id="3HJTsBn6R9C" role="2OqNvi">
                    <ref role="37wK5l" node="3HJTsBmDhnk" resolve="reactivateAndClearObservers" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3HJTsBn6R9D" role="3cqZAp" />
            </node>
          </node>
          <node concept="3eNFk2" id="3HJTsBn6R9E" role="3eNLev">
            <node concept="1Wc70l" id="3HJTsBn6R9F" role="3eO9$A">
              <node concept="3clFbC" id="3HJTsBn6R9G" role="3uHU7w">
                <node concept="37vLTw" id="3HJTsBn6R9H" role="3uHU7B">
                  <ref role="3cqZAo" node="3HJTsBn6R8G" resolve="rightVal" />
                </node>
                <node concept="10Nm6u" id="3HJTsBn6R9I" role="3uHU7w" />
              </node>
              <node concept="3clFbC" id="3HJTsBn6R9J" role="3uHU7B">
                <node concept="37vLTw" id="3HJTsBn6R9K" role="3uHU7B">
                  <ref role="3cqZAo" node="3HJTsBn6R8A" resolve="leftVal" />
                </node>
                <node concept="10Nm6u" id="3HJTsBn6R9L" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbS" id="3HJTsBn6R9M" role="3eOfB_">
              <node concept="3SKdUt" id="3HJTsBn6R9N" role="3cqZAp">
                <node concept="3SKdUq" id="3HJTsBn6R9O" role="3SKWNk">
                  <property role="3SKdUp" value="var var" />
                </node>
              </node>
              <node concept="3clFbF" id="3HJTsBn6R9P" role="3cqZAp">
                <node concept="1rXfSq" id="3HJTsBn6R9Q" role="3clFbG">
                  <ref role="37wK5l" node="3HJTsBn736J" resolve="mergeObservers" />
                  <node concept="37vLTw" id="3HJTsBn6R9R" role="37wK5m">
                    <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
                  </node>
                  <node concept="37vLTw" id="3HJTsBn6R9S" role="37wK5m">
                    <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3HJTsBn6R9T" role="3cqZAp" />
            </node>
          </node>
          <node concept="9aQIb" id="3HJTsBn6R9U" role="9aQIa">
            <node concept="3clFbS" id="3HJTsBn6R9V" role="9aQI4">
              <node concept="3SKdUt" id="3HJTsBn6R9W" role="3cqZAp">
                <node concept="3SKdUq" id="3HJTsBn6R9X" role="3SKWNk">
                  <property role="3SKdUp" value="ground ground" />
                </node>
              </node>
              <node concept="3clFbF" id="3HJTsBn6R9Y" role="3cqZAp">
                <node concept="1rXfSq" id="3HJTsBn6R9Z" role="3clFbG">
                  <ref role="37wK5l" node="3HJTsBn4V_a" resolve="tellEq" />
                  <node concept="37vLTw" id="3HJTsBn6Ra0" role="37wK5m">
                    <ref role="3cqZAo" node="3HJTsBn6R8A" resolve="leftVal" />
                  </node>
                  <node concept="37vLTw" id="3HJTsBn6Ra1" role="37wK5m">
                    <ref role="3cqZAo" node="3HJTsBn6R8G" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBn4Zij" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4Yxf" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4VA6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askEq" />
      <node concept="37vLTG" id="3HJTsBn4VA7" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="3uibUv" id="2c3nq4GSoxU" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4VA9" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="3uibUv" id="2c3nq4GSpI1" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="3HJTsBn4VAb" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4VAc" role="1B3o_S" />
      <node concept="2AHcQZ" id="3HJTsBn4VAe" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="3HJTsBn4VAf" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4VAg" role="2B70Vg">
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
            <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3HJTsBn4VAj" role="3clF47">
        <node concept="3clFbF" id="3HJTsBn6MDF" role="3cqZAp">
          <node concept="3K4zz7" id="3HJTsBn6Nsx" role="3clFbG">
            <node concept="2OqwBi" id="3HJTsBn6O_B" role="3K4GZi">
              <node concept="37vLTw" id="3HJTsBn6OuR" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn4VA7" resolve="leftVal" />
              </node>
              <node concept="liA8E" id="3HJTsBn6P0A" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="3HJTsBn6Pvw" role="37wK5m">
                  <ref role="3cqZAo" node="3HJTsBn4VA9" resolve="rightVal" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="3HJTsBn6O7B" role="3K4E3e">
              <node concept="10Nm6u" id="3HJTsBn6Ob2" role="3uHU7w" />
              <node concept="37vLTw" id="3HJTsBn6NNu" role="3uHU7B">
                <ref role="3cqZAo" node="3HJTsBn4VA9" resolve="rightVal" />
              </node>
            </node>
            <node concept="3clFbC" id="3HJTsBn6N3d" role="3K4Cdx">
              <node concept="10Nm6u" id="3HJTsBn6Npj" role="3uHU7w" />
              <node concept="37vLTw" id="3HJTsBn6MDD" role="3uHU7B">
                <ref role="3cqZAo" node="3HJTsBn4VA7" resolve="leftVal" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBn4ZCE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn6LBY" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4VAm" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askEq" />
      <node concept="37vLTG" id="3HJTsBn4VAn" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="3uibUv" id="2c3nq4GSmdX" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4VAp" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="3HJTsBn4VAq" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="10P_77" id="3HJTsBn4VAs" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4VAt" role="1B3o_S" />
      <node concept="2AHcQZ" id="3HJTsBn4VAv" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="3HJTsBn4VAw" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4VAx" role="2B70Vg">
            <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3HJTsBn4VA$" role="3clF47">
        <node concept="3clFbF" id="3HJTsBn6Ihr" role="3cqZAp">
          <node concept="1rXfSq" id="3HJTsBn6Ihp" role="3clFbG">
            <ref role="37wK5l" node="3HJTsBn4VAB" resolve="askEq" />
            <node concept="37vLTw" id="3HJTsBn6IDu" role="37wK5m">
              <ref role="3cqZAo" node="3HJTsBn4VAp" resolve="right" />
            </node>
            <node concept="37vLTw" id="3HJTsBn6ISy" role="37wK5m">
              <ref role="3cqZAo" node="3HJTsBn4VAn" resolve="leftVal" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBn50GJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4ZY2" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4VAB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askEq" />
      <node concept="37vLTG" id="3HJTsBn4VAC" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="3HJTsBn4VAD" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4VAF" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="3uibUv" id="2c3nq4GSj4w" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="3HJTsBn4VAH" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4VAI" role="1B3o_S" />
      <node concept="2AHcQZ" id="3HJTsBn4VAK" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="3HJTsBn4VAL" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4VAM" role="2B70Vg">
            <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3HJTsBn4VAP" role="3clF47">
        <node concept="3cpWs8" id="3HJTsBn6Ehj" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn6Ehk" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="3HJTsBn6Fci" role="1tU5fm">
              <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
              <node concept="3qTvmN" id="2c3nq4GSlfL" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="3HJTsBn6Ehm" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn6Ehn" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn4VAC" resolve="left" />
              </node>
              <node concept="liA8E" id="3HJTsBn6Eho" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn6Ehp" role="3cqZAp" />
        <node concept="3clFbJ" id="3HJTsBn6Ehq" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn6Ehr" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBn6Ehs" role="3cqZAp">
              <node concept="3clFbT" id="3HJTsBn6Eht" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3HJTsBn6Ehu" role="3clFbw">
            <node concept="10Nm6u" id="3HJTsBn6Ehv" role="3uHU7w" />
            <node concept="2OqwBi" id="3HJTsBn6Ehw" role="3uHU7B">
              <node concept="37vLTw" id="3HJTsBn6Ehx" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn6Ehk" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="3HJTsBn6Ehy" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn6Hcd" role="3cqZAp" />
        <node concept="3cpWs6" id="6xYPVrpBEPt" role="3cqZAp">
          <node concept="2OqwBi" id="6xYPVrpBHwX" role="3cqZAk">
            <node concept="2OqwBi" id="6xYPVrpBGBZ" role="2Oq$k0">
              <node concept="37vLTw" id="6xYPVrpBGC0" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn6Ehk" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="6xYPVrpBGC1" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
            <node concept="liA8E" id="6xYPVrpBIo_" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="37vLTw" id="6xYPVrpBK4v" role="37wK5m">
                <ref role="3cqZAo" node="3HJTsBn4VAF" resolve="rightVal" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBn513x" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn51oT" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4VAS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askEq" />
      <node concept="37vLTG" id="3HJTsBn4VAT" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="3HJTsBn4VAU" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4VAW" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="3HJTsBn4VAX" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="10P_77" id="3HJTsBn4VAZ" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4VB0" role="1B3o_S" />
      <node concept="2AHcQZ" id="3HJTsBn4VB2" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="3HJTsBn4VB3" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4VB4" role="2B70Vg">
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
            <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3HJTsBn4VB7" role="3clF47">
        <node concept="3clFbJ" id="3HJTsBn61de" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn61df" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBn61dg" role="3cqZAp">
              <node concept="3clFbT" id="3HJTsBn61dh" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3HJTsBn61di" role="3clFbw">
            <node concept="37vLTw" id="3HJTsBn61dj" role="3uHU7w">
              <ref role="3cqZAo" node="3HJTsBn4VAW" resolve="right" />
            </node>
            <node concept="37vLTw" id="3HJTsBn61dk" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBn4VAT" resolve="left" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn61vc" role="3cqZAp" />
        <node concept="3cpWs8" id="3HJTsBn61Rq" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn61Rr" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="3HJTsBn6y1d" role="1tU5fm">
              <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
              <node concept="3qTvmN" id="2c3nq4GS8zb" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="3HJTsBn61Rt" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn61Ru" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn4VAT" resolve="left" />
              </node>
              <node concept="liA8E" id="3HJTsBn61Rv" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3HJTsBn61Rw" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn61Rx" role="3cpWs9">
            <property role="TrG5h" value="rightRepr" />
            <node concept="3uibUv" id="3HJTsBn6yZM" role="1tU5fm">
              <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
              <node concept="3qTvmN" id="2c3nq4GSaEO" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="3HJTsBn61Rz" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn61R$" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn4VAW" resolve="right" />
              </node>
              <node concept="liA8E" id="3HJTsBn61R_" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn6_OQ" role="3cqZAp" />
        <node concept="3clFbJ" id="3HJTsBn6_pv" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn6_pw" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBn6_px" role="3cqZAp">
              <node concept="3clFbT" id="3HJTsBn6_py" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3HJTsBn6_pz" role="3clFbw">
            <node concept="37vLTw" id="3HJTsBn6_p$" role="3uHU7w">
              <ref role="3cqZAo" node="3HJTsBn61Rx" resolve="rightRepr" />
            </node>
            <node concept="37vLTw" id="3HJTsBn6_p_" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBn61Rr" resolve="leftRepr" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3HJTsBn6AhK" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn6AhL" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBn6AhM" role="3cqZAp">
              <node concept="3clFbT" id="3HJTsBn6AhN" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3HJTsBn6AhO" role="3clFbw">
            <node concept="3clFbC" id="3HJTsBn6AhP" role="3uHU7w">
              <node concept="10Nm6u" id="3HJTsBn6AhQ" role="3uHU7w" />
              <node concept="2OqwBi" id="6xYPVrpBCt8" role="3uHU7B">
                <node concept="37vLTw" id="6xYPVrpBCt9" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn61Rr" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="6xYPVrpBCta" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="3HJTsBn6AhU" role="3uHU7B">
              <node concept="2OqwBi" id="3HJTsBn6AhV" role="3uHU7B">
                <node concept="37vLTw" id="3HJTsBn6AhW" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn61Rr" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="3HJTsBn6AhX" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                </node>
              </node>
              <node concept="10Nm6u" id="3HJTsBn6AhY" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn6$tM" role="3cqZAp" />
        <node concept="3cpWs6" id="6xYPVrpB$nu" role="3cqZAp">
          <node concept="2OqwBi" id="6xYPVrpBAd_" role="3cqZAk">
            <node concept="2OqwBi" id="6xYPVrpB_nq" role="2Oq$k0">
              <node concept="37vLTw" id="6xYPVrpB_nr" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn61Rr" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="6xYPVrpB_ns" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
            <node concept="liA8E" id="6xYPVrpBBqE" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="2OqwBi" id="6xYPVrpBCwT" role="37wK5m">
                <node concept="37vLTw" id="7FuqS$4jAt6" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn61Rx" resolve="rightRepr" />
                </node>
                <node concept="liA8E" id="6xYPVrpBCwV" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBn51Ii" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn72OZ" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn736J" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="mergeObservers" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3HJTsBn736K" role="3clF47">
        <node concept="3SKdUt" id="3HJTsBn74MJ" role="3cqZAp">
          <node concept="3SKdUq" id="3HJTsBn750V" role="3SKWNk">
            <property role="3SKdUp" value="TODO: avoid code duplication" />
          </node>
        </node>
        <node concept="3cpWs8" id="3HJTsBn736L" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn736M" role="3cpWs9">
            <property role="TrG5h" value="fromHObs" />
            <node concept="3uibUv" id="3HJTsBn736N" role="1tU5fm">
              <ref role="3uigEE" to="9js4:~RehashableKeySet" resolve="RehashableKeySet" />
            </node>
            <node concept="2OqwBi" id="3HJTsBn736O" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn736P" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn7388" resolve="mergeFrom" />
              </node>
              <node concept="liA8E" id="3HJTsBn736Q" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmD3ex" resolve="hashObservers" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3HJTsBn736R" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn736S" role="3clFbx">
            <node concept="3clFbF" id="3HJTsBn736T" role="3cqZAp">
              <node concept="2OqwBi" id="3HJTsBn736U" role="3clFbG">
                <node concept="37vLTw" id="3HJTsBn736V" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn7388" resolve="mergeFrom" />
                </node>
                <node concept="liA8E" id="3HJTsBn736W" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmD3eC" resolve="clearHashObservers" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3HJTsBn736X" role="3cqZAp">
              <node concept="2OqwBi" id="3HJTsBn736Y" role="3clFbG">
                <node concept="37vLTw" id="3HJTsBn736Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn738b" resolve="mergeInto" />
                </node>
                <node concept="liA8E" id="3HJTsBn7370" role="2OqNvi">
                  <ref role="37wK5l" to="eifs:~Logical.mergeHashObservers(runtime.hash.RehashableKeySet):void" resolve="mergeHashObservers" />
                  <node concept="37vLTw" id="3HJTsBn7371" role="37wK5m">
                    <ref role="3cqZAo" node="3HJTsBn736M" resolve="fromHObs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3HJTsBn7372" role="3clFbw">
            <node concept="10Nm6u" id="3HJTsBn7373" role="3uHU7w" />
            <node concept="37vLTw" id="3HJTsBn7374" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBn736M" resolve="fromHObs" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn7375" role="3cqZAp" />
        <node concept="3cpWs8" id="3HJTsBn7376" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn7377" role="3cpWs9">
            <property role="TrG5h" value="fromVObs" />
            <node concept="3uibUv" id="3HJTsBn7378" role="1tU5fm">
              <ref role="3uigEE" to="eifs:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
              <node concept="3uibUv" id="3HJTsBn7379" role="11_B2D">
                <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJTsBn737a" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn737b" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn7388" resolve="mergeFrom" />
              </node>
              <node concept="liA8E" id="3HJTsBn737c" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmD3eN" resolve="variableObservers" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3HJTsBn737d" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn737e" role="3clFbx">
            <node concept="3clFbF" id="3HJTsBn737f" role="3cqZAp">
              <node concept="2OqwBi" id="3HJTsBn737g" role="3clFbG">
                <node concept="37vLTw" id="3HJTsBn737h" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn7388" resolve="mergeFrom" />
                </node>
                <node concept="liA8E" id="3HJTsBn737i" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmD3f9" resolve="clearVariableObservers" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3HJTsBn737j" role="3cqZAp">
              <node concept="3cpWsn" id="3HJTsBn737k" role="3cpWs9">
                <property role="TrG5h" value="intoVObs" />
                <node concept="3uibUv" id="3HJTsBn737l" role="1tU5fm">
                  <ref role="3uigEE" to="eifs:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
                  <node concept="3uibUv" id="3HJTsBn737m" role="11_B2D">
                    <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3HJTsBn737n" role="33vP2m">
                  <node concept="37vLTw" id="3HJTsBn737o" role="2Oq$k0">
                    <ref role="3cqZAo" node="3HJTsBn738b" resolve="mergeInto" />
                  </node>
                  <node concept="liA8E" id="3HJTsBn737p" role="2OqNvi">
                    <ref role="37wK5l" node="3HJTsBmD3eN" resolve="variableObservers" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3HJTsBn737q" role="3cqZAp">
              <node concept="3clFbS" id="3HJTsBn737r" role="3clFbx">
                <node concept="3SKdUt" id="3HJTsBn737s" role="3cqZAp">
                  <node concept="3SKdUq" id="3HJTsBn737t" role="3SKWNk">
                    <property role="3SKdUp" value="first get an iterator over the current container" />
                  </node>
                </node>
                <node concept="3cpWs8" id="3HJTsBn737u" role="3cqZAp">
                  <node concept="3cpWsn" id="3HJTsBn737v" role="3cpWs9">
                    <property role="TrG5h" value="intoIt" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="3HJTsBn737w" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                      <node concept="3uibUv" id="3HJTsBn737x" role="11_B2D">
                        <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3HJTsBn737y" role="33vP2m">
                      <node concept="37vLTw" id="3HJTsBn737z" role="2Oq$k0">
                        <ref role="3cqZAo" node="3HJTsBn737k" resolve="intoVObs" />
                      </node>
                      <node concept="liA8E" id="3HJTsBn737$" role="2OqNvi">
                        <ref role="37wK5l" to="eifs:~DoublyLinkedConstraintList.iterator():java.util.Iterator" resolve="iterator" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="3HJTsBn737_" role="3cqZAp">
                  <node concept="3SKdUq" id="3HJTsBn737A" role="3SKWNk">
                    <property role="3SKdUp" value="then do merge" />
                  </node>
                </node>
                <node concept="3clFbF" id="3HJTsBn737B" role="3cqZAp">
                  <node concept="2OqwBi" id="3HJTsBn737C" role="3clFbG">
                    <node concept="37vLTw" id="3HJTsBn737D" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJTsBn737k" resolve="intoVObs" />
                    </node>
                    <node concept="liA8E" id="3HJTsBn737E" role="2OqNvi">
                      <ref role="37wK5l" to="eifs:~DoublyLinkedConstraintList.mergeWith(runtime.DoublyLinkedConstraintList):void" resolve="mergeWith" />
                      <node concept="37vLTw" id="3HJTsBn737F" role="37wK5m">
                        <ref role="3cqZAo" node="3HJTsBn7377" resolve="fromVObs" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="3HJTsBn737G" role="3cqZAp">
                  <node concept="3SKdUq" id="3HJTsBn737H" role="3SKWNk">
                    <property role="3SKdUp" value="finally notify" />
                  </node>
                </node>
                <node concept="2$JKZl" id="3HJTsBn737I" role="3cqZAp">
                  <node concept="3clFbS" id="3HJTsBn737J" role="2LFqv$">
                    <node concept="3clFbF" id="3HJTsBn737K" role="3cqZAp">
                      <node concept="2OqwBi" id="3HJTsBn737L" role="3clFbG">
                        <node concept="2OqwBi" id="3HJTsBn737M" role="2Oq$k0">
                          <node concept="37vLTw" id="3HJTsBn737N" role="2Oq$k0">
                            <ref role="3cqZAo" node="3HJTsBn737v" resolve="intoIt" />
                          </node>
                          <node concept="liA8E" id="3HJTsBn737O" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3HJTsBn737P" role="2OqNvi">
                          <ref role="37wK5l" to="eifs:~Constraint.reactivate():void" resolve="reactivate" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3HJTsBn737Q" role="2$JKZa">
                    <node concept="37vLTw" id="3HJTsBn737R" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJTsBn737v" resolve="intoIt" />
                    </node>
                    <node concept="liA8E" id="3HJTsBn737S" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="3HJTsBn737T" role="3clFbw">
                <node concept="10Nm6u" id="3HJTsBn737U" role="3uHU7w" />
                <node concept="37vLTw" id="3HJTsBn737V" role="3uHU7B">
                  <ref role="3cqZAo" node="3HJTsBn737k" resolve="intoVObs" />
                </node>
              </node>
              <node concept="9aQIb" id="3HJTsBn737W" role="9aQIa">
                <node concept="3clFbS" id="3HJTsBn737X" role="9aQI4">
                  <node concept="3clFbF" id="3HJTsBn737Y" role="3cqZAp">
                    <node concept="2OqwBi" id="3HJTsBn737Z" role="3clFbG">
                      <node concept="37vLTw" id="3HJTsBn7380" role="2Oq$k0">
                        <ref role="3cqZAo" node="3HJTsBn738b" resolve="mergeInto" />
                      </node>
                      <node concept="liA8E" id="3HJTsBn7381" role="2OqNvi">
                        <ref role="37wK5l" node="3HJTsBmD3eV" resolve="setVariableObservers" />
                        <node concept="37vLTw" id="3HJTsBn7382" role="37wK5m">
                          <ref role="3cqZAo" node="3HJTsBn7377" resolve="fromVObs" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3HJTsBn7383" role="3clFbw">
            <node concept="10Nm6u" id="3HJTsBn7384" role="3uHU7w" />
            <node concept="37vLTw" id="3HJTsBn7385" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBn7377" resolve="fromVObs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3HJTsBn7386" role="1B3o_S" />
      <node concept="3cqZAl" id="3HJTsBn7387" role="3clF45" />
      <node concept="37vLTG" id="3HJTsBn7388" role="3clF46">
        <property role="TrG5h" value="mergeFrom" />
        <node concept="3uibUv" id="3HJTsBn7389" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn738b" role="3clF46">
        <property role="TrG5h" value="mergeInto" />
        <node concept="3uibUv" id="3HJTsBn738c" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn54Bn" role="jymVt" />
    <node concept="3Tm1VV" id="3HJTsBn4oh0" role="1B3o_S" />
    <node concept="3uibUv" id="3HJTsBn4qMH" role="EKbjA">
      <ref role="3uigEE" node="3HJTsBn4mEA" resolve="EqualsSolver" />
    </node>
    <node concept="312cEg" id="4xBopTzoHcz" role="jymVt">
      <property role="TrG5h" value="computingSession" />
      <node concept="3Tm6S6" id="4xBopTzoHc$" role="1B3o_S" />
      <node concept="3uibUv" id="4xBopTzoIhj" role="1tU5fm">
        <ref role="3uigEE" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
      </node>
    </node>
    <node concept="312cEg" id="3HJTsBn53Hy" role="jymVt">
      <property role="TrG5h" value="constraintSystem" />
      <node concept="3Tm6S6" id="3HJTsBn53Hz" role="1B3o_S" />
      <node concept="3uibUv" id="3HJTsBn53H_" role="1tU5fm">
        <ref role="3uigEE" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="6infEALA98Q">
    <property role="TrG5h" value="AssertSolver" />
    <node concept="2tJIrI" id="6infEALAaW4" role="jymVt" />
    <node concept="3clFb_" id="6infEALAaWf" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellAssert" />
      <node concept="37vLTG" id="6infEALAbaU" role="3clF46">
        <property role="TrG5h" value="val" />
        <node concept="3uibUv" id="6infEALAJy7" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3cqZAl" id="6infEALAaWh" role="3clF45" />
      <node concept="3Tm1VV" id="6infEALAaWi" role="1B3o_S" />
      <node concept="3clFbS" id="6infEALAaWj" role="3clF47" />
      <node concept="2AHcQZ" id="6infEALAbJf" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6infEALAbJg" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="6infEALACqu" role="2B70Vg">
            <ref role="1PxDUh" node="6infEALAfer" resolve="AssertBuiltinConstraint" />
            <ref role="3cqZAo" node="6infEALAgS7" resolve="ASSERT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALADHP" role="jymVt" />
    <node concept="3clFb_" id="6infEALADHG" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellAssert" />
      <node concept="37vLTG" id="6infEALADHH" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="6infEALADVW" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
          <node concept="3uibUv" id="6infEALAEo5" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6infEALADHJ" role="3clF45" />
      <node concept="3Tm1VV" id="6infEALADHK" role="1B3o_S" />
      <node concept="3clFbS" id="6infEALADHL" role="3clF47" />
      <node concept="2AHcQZ" id="6infEALADHM" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6infEALADHN" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="6infEALADHO" role="2B70Vg">
            <ref role="1PxDUh" node="6infEALAfer" resolve="AssertBuiltinConstraint" />
            <ref role="3cqZAo" node="6infEALAgS7" resolve="ASSERT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALAbl1" role="jymVt" />
    <node concept="3clFb_" id="6infEALAblu" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askAssert" />
      <node concept="37vLTG" id="6infEALAb$A" role="3clF46">
        <property role="TrG5h" value="val" />
        <node concept="3uibUv" id="6infEALAJD0" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="10P_77" id="6infEALB2Ar" role="3clF45" />
      <node concept="3Tm1VV" id="6infEALAblx" role="1B3o_S" />
      <node concept="3clFbS" id="6infEALAbly" role="3clF47" />
      <node concept="2AHcQZ" id="6infEALAc0y" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6infEALAc0z" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6infEALACVN" role="2B70Vg">
            <ref role="1PxDUh" node="6infEALAfer" resolve="AssertBuiltinConstraint" />
            <ref role="3cqZAo" node="6infEALAgS7" resolve="ASSERT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALAFgW" role="jymVt" />
    <node concept="3clFb_" id="6infEALAFgN" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askAssert" />
      <node concept="37vLTG" id="6infEALAFgO" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="6infEALAFw7" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
          <node concept="3uibUv" id="6infEALAFXw" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6infEALB2E2" role="3clF45" />
      <node concept="3Tm1VV" id="6infEALAFgR" role="1B3o_S" />
      <node concept="3clFbS" id="6infEALAFgS" role="3clF47" />
      <node concept="2AHcQZ" id="6infEALAFgT" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6infEALAFgU" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6infEALAFgV" role="2B70Vg">
            <ref role="1PxDUh" node="6infEALAfer" resolve="AssertBuiltinConstraint" />
            <ref role="3cqZAo" node="6infEALAgS7" resolve="ASSERT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALAGQr" role="jymVt" />
    <node concept="3Tm1VV" id="6infEALA98R" role="1B3o_S" />
    <node concept="2AHcQZ" id="6infEALAaAS" role="2AJF6D">
      <ref role="2AI5Lk" to="f8dg:~JCHR_Constraints" resolve="JCHR_Constraints" />
      <node concept="2B6LJw" id="6infEALAaAT" role="2B76xF">
        <ref role="2B6OnR" to="f8dg:~JCHR_Constraints.value()" resolve="value" />
        <node concept="2BsdOp" id="6infEALAaAU" role="2B70Vg">
          <node concept="2AHcQZ" id="6infEALAaAV" role="2BsfMF">
            <ref role="2AI5Lk" to="f8dg:~JCHR_Constraint" resolve="JCHR_Constraint" />
            <node concept="2B6LJw" id="6infEALAaAW" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.identifier()" resolve="identifier" />
              <node concept="10M0yZ" id="6infEALAaAX" role="2B70Vg">
                <ref role="1PxDUh" node="6infEALAfer" resolve="AssertBuiltinConstraint" />
                <ref role="3cqZAo" node="6infEALAgS7" resolve="ASSERT" />
              </node>
            </node>
            <node concept="2B6LJw" id="6infEALAaAY" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.arity()" resolve="arity" />
              <node concept="3cmrfG" id="6infEALAaAZ" role="2B70Vg">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
            <node concept="2B6LJw" id="6infEALAaB2" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.idempotent()" resolve="idempotent" />
              <node concept="Rm8GO" id="6infEALAaB3" role="2B70Vg">
                <ref role="Rm8GQ" to="f8dg:~JCHR_Constraint$Value.YES" resolve="YES" />
                <ref role="1Px2BO" to="f8dg:~JCHR_Constraint$Value" resolve="JCHR_Constraint.Value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="4xBopTzrR7K" role="3HQHJm">
      <ref role="3uigEE" to="bspi:6Kcfpq7AYBh" resolve="Queryable" />
    </node>
  </node>
  <node concept="312cEu" id="6infEALAfer">
    <property role="TrG5h" value="AssertBuiltinConstraint" />
    <node concept="2tJIrI" id="6infEALAgQp" role="jymVt" />
    <node concept="Wx3nA" id="6infEALAgS7" role="jymVt">
      <property role="TrG5h" value="ASSERT" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="6infEALAgT4" role="1B3o_S" />
      <node concept="17QB3L" id="6infEALAgTf" role="1tU5fm" />
      <node concept="Xl_RD" id="6infEALAgUt" role="33vP2m">
        <property role="Xl_RC" value="assertThat" />
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALAgV7" role="jymVt" />
    <node concept="Wx3nA" id="6infEALAhFy" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="6infEALCj4e" role="1B3o_S" />
      <node concept="3uibUv" id="6infEALAhG$" role="1tU5fm">
        <ref role="3uigEE" node="6infEALAfer" resolve="AssertBuiltinConstraint" />
      </node>
      <node concept="2ShNRf" id="6infEALAhIC" role="33vP2m">
        <node concept="1pGfFk" id="4xBopTzrQ4X" role="2ShVmc">
          <ref role="37wK5l" node="4xBopTzrPWl" resolve="AssertBuiltinConstraint" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzrPN8" role="jymVt" />
    <node concept="3clFbW" id="4xBopTzrPWl" role="jymVt">
      <node concept="3cqZAl" id="4xBopTzrPWn" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzrPWo" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzrPWp" role="3clF47">
        <node concept="XkiVB" id="4xBopTzrQgb" role="3cqZAp">
          <ref role="37wK5l" to="bspi:6Kcfpq7B1f7" resolve="AbstractConstraint" />
          <node concept="37vLTw" id="4xBopTzrQxA" role="37wK5m">
            <ref role="3cqZAo" node="6infEALAgS7" resolve="ASSERT" />
          </node>
          <node concept="3cmrfG" id="4xBopTzrQO2" role="37wK5m">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzrQOJ" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzs1xV" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="solverClass" />
      <node concept="3uibUv" id="4xBopTzs1xW" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3qUE_q" id="4xBopTzs1xX" role="11_B2D">
          <node concept="3uibUv" id="4xBopTzs1xY" role="3qUE_r">
            <ref role="3uigEE" to="bspi:6Kcfpq7AYBh" resolve="Queryable" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xBopTzs1xZ" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzs1y2" role="3clF47">
        <node concept="3clFbF" id="4xBopTzs3gC" role="3cqZAp">
          <node concept="3VsKOn" id="4xBopTzs3qC" role="3clFbG">
            <ref role="3VsUkX" node="6infEALA98Q" resolve="AssertSolver" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4xBopTzs4eK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzs2O5" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzs1y5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="init" />
      <node concept="3cqZAl" id="4xBopTzs1y6" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzs1y7" role="1B3o_S" />
      <node concept="37vLTG" id="4xBopTzs1y9" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="4xBopTzs1ya" role="1tU5fm">
          <ref role="3uigEE" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="37vLTG" id="24Vro6cR_QP" role="3clF46">
        <property role="TrG5h" value="tracer" />
        <node concept="3uibUv" id="24Vro6cR_S2" role="1tU5fm">
          <ref role="3uigEE" to="bspi:24Vro6cQnrj" resolve="ComputingTracer" />
        </node>
      </node>
      <node concept="3clFbS" id="4xBopTzs1yd" role="3clF47">
        <node concept="3clFbF" id="4xBopTzs52D" role="3cqZAp">
          <node concept="3nyPlj" id="4xBopTzs52C" role="3clFbG">
            <ref role="37wK5l" to="bspi:6Kcfpq7Buzk" resolve="registerSolver" />
            <node concept="37vLTw" id="4xBopTzs5fC" role="37wK5m">
              <ref role="3cqZAo" node="4xBopTzs1y9" resolve="session" />
            </node>
            <node concept="2ShNRf" id="4xBopTzs5hV" role="37wK5m">
              <node concept="1pGfFk" id="4xBopTzs5zN" role="2ShVmc">
                <ref role="37wK5l" node="6infEALANZc" resolve="AssertSolverImpl" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4xBopTzs4KL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzs3LM" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzs1ye" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="4xBopTzs1yf" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzs1yg" role="1B3o_S" />
      <node concept="37vLTG" id="4xBopTzs1yi" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="4xBopTzs1yj" role="1tU5fm">
          <ref role="3uigEE" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="3clFbS" id="4xBopTzs1ym" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6infEALA_pw" role="jymVt" />
    <node concept="3Tm1VV" id="6infEALAfes" role="1B3o_S" />
    <node concept="3uibUv" id="4xBopTzrPvj" role="EKbjA">
      <ref role="3uigEE" to="bspi:6Kcfpq7Bj7q" resolve="AutoConstraint" />
    </node>
    <node concept="3uibUv" id="4xBopTzrP0O" role="1zkMxy">
      <ref role="3uigEE" to="bspi:6Kcfpq7B0Wu" resolve="AbstractConstraint" />
    </node>
  </node>
  <node concept="312cEu" id="6infEALAKBG">
    <property role="TrG5h" value="AssertSolverImpl" />
    <node concept="2tJIrI" id="6infEALANSl" role="jymVt" />
    <node concept="3clFbW" id="6infEALANZc" role="jymVt">
      <node concept="3cqZAl" id="6infEALANZe" role="3clF45" />
      <node concept="3Tm1VV" id="6infEALANZf" role="1B3o_S" />
      <node concept="3clFbS" id="6infEALANZg" role="3clF47">
        <node concept="1VxSAg" id="6infEALARU4" role="3cqZAp">
          <ref role="37wK5l" node="6infEALAOYK" resolve="AssertSolverImpl" />
          <node concept="2YIFZM" id="6infEALARU6" role="37wK5m">
            <ref role="37wK5l" to="eifs:~ConstraintSystem.get():runtime.ConstraintSystem" resolve="get" />
            <ref role="1Pybhc" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALANTA" role="jymVt" />
    <node concept="3clFbW" id="6infEALAOYK" role="jymVt">
      <node concept="37vLTG" id="6infEALAPix" role="3clF46">
        <property role="TrG5h" value="constraintSystem" />
        <node concept="3uibUv" id="6infEALAPrf" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
        </node>
      </node>
      <node concept="3cqZAl" id="6infEALAOYM" role="3clF45" />
      <node concept="3Tm1VV" id="6infEALAOYN" role="1B3o_S" />
      <node concept="3clFbS" id="6infEALAOYO" role="3clF47">
        <node concept="3clFbF" id="6infEALAQoJ" role="3cqZAp">
          <node concept="37vLTI" id="6infEALAQoL" role="3clFbG">
            <node concept="2OqwBi" id="6infEALAQoP" role="37vLTJ">
              <node concept="Xjq3P" id="6infEALAQoS" role="2Oq$k0" />
              <node concept="2OwXpG" id="6infEALAQoO" role="2OqNvi">
                <ref role="2Oxat5" node="6infEALAQoF" resolve="constraintSystem" />
              </node>
            </node>
            <node concept="37vLTw" id="6infEALAQoT" role="37vLTx">
              <ref role="3cqZAo" node="6infEALAPix" resolve="constraintSystem" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALAO4J" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzrRGw" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="4xBopTzrRGx" role="3clF46">
        <property role="TrG5h" value="autoConstraint" />
        <node concept="3uibUv" id="4xBopTzrRGy" role="1tU5fm">
          <ref role="3uigEE" to="bspi:6Kcfpq7Bj7q" resolve="AutoConstraint" />
        </node>
      </node>
      <node concept="37vLTG" id="4xBopTzrRGz" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="8X2XB" id="4xBopTzrRG$" role="1tU5fm">
          <node concept="3uibUv" id="4xBopTzrRG_" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4xBopTzrRGA" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzrRGB" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzrRGE" role="3clF47">
        <node concept="3clFbJ" id="4xBopTzrTfq" role="3cqZAp">
          <node concept="3clFbS" id="4xBopTzrTfr" role="3clFbx">
            <node concept="YS8fn" id="4xBopTzrTfs" role="3cqZAp">
              <node concept="2ShNRf" id="4xBopTzrTft" role="YScLw">
                <node concept="1pGfFk" id="4xBopTzrTfu" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="Xl_RD" id="4xBopTzrTfv" role="37wK5m">
                    <property role="Xl_RC" value="invalid arguments count" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4xBopTzrTfw" role="3clFbw">
            <node concept="3cmrfG" id="4xBopTzrTfx" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="4xBopTzrTfy" role="3uHU7B">
              <node concept="37vLTw" id="4xBopTzrTfz" role="2Oq$k0">
                <ref role="3cqZAo" node="4xBopTzrRGz" resolve="arg" />
              </node>
              <node concept="1Rwk04" id="4xBopTzrTf$" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4xBopTzrf7s" role="3cqZAp">
          <node concept="3cpWsn" id="4xBopTzrf7t" role="3cpWs9">
            <property role="TrG5h" value="test" />
            <node concept="3uibUv" id="4xBopTzrf7m" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="AH0OO" id="4xBopTzrf7u" role="33vP2m">
              <node concept="3cmrfG" id="4xBopTzrf7v" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="4xBopTzrf7w" role="AHHXb">
                <ref role="3cqZAo" node="4xBopTzrRGz" resolve="arg" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xBopTzrVGA" role="3cqZAp" />
        <node concept="3clFbJ" id="4xBopTzrTO5" role="3cqZAp">
          <node concept="3clFbS" id="4xBopTzrTO7" role="3clFbx">
            <node concept="3cpWs6" id="4xBopTzrU2e" role="3cqZAp">
              <node concept="1rXfSq" id="4xBopTzrUa_" role="3cqZAk">
                <ref role="37wK5l" node="6infEALAKR2" resolve="askAssert" />
                <node concept="1eOMI4" id="4xBopTzrUjr" role="37wK5m">
                  <node concept="10QFUN" id="4xBopTzrUjo" role="1eOMHV">
                    <node concept="3uibUv" id="4xBopTzrUjt" role="10QFUM">
                      <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                      <node concept="3uibUv" id="4xBopTzrULi" role="11_B2D">
                        <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4xBopTzrUju" role="10QFUP">
                      <ref role="3cqZAo" node="4xBopTzrf7t" resolve="test" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4xBopTzrVj0" role="3cqZAp" />
          </node>
          <node concept="2ZW3vV" id="4xBopTzrTW0" role="3clFbw">
            <node concept="3uibUv" id="4xBopTzrTWr" role="2ZW6by">
              <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
            </node>
            <node concept="37vLTw" id="4xBopTzrTOY" role="2ZW6bz">
              <ref role="3cqZAo" node="4xBopTzrf7t" resolve="test" />
            </node>
          </node>
          <node concept="3eNFk2" id="4xBopTzrVao" role="3eNLev">
            <node concept="2ZW3vV" id="4xBopTzrVWl" role="3eO9$A">
              <node concept="3uibUv" id="4xBopTzrVWQ" role="2ZW6by">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="37vLTw" id="4xBopTzrVPh" role="2ZW6bz">
                <ref role="3cqZAo" node="4xBopTzrf7t" resolve="test" />
              </node>
            </node>
            <node concept="3clFbS" id="4xBopTzrVaq" role="3eOfB_">
              <node concept="3cpWs6" id="4xBopTzrW2H" role="3cqZAp">
                <node concept="1rXfSq" id="4xBopTzrW3_" role="3cqZAk">
                  <ref role="37wK5l" node="6infEALAKQS" resolve="askAssert" />
                  <node concept="10QFUN" id="4xBopTzrWcM" role="37wK5m">
                    <node concept="37vLTw" id="4xBopTzrWuT" role="10QFUP">
                      <ref role="3cqZAo" node="4xBopTzrf7t" resolve="test" />
                    </node>
                    <node concept="3uibUv" id="4xBopTzrWlO" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="4xBopTzrWBx" role="3cqZAp" />
            </node>
          </node>
          <node concept="9aQIb" id="4xBopTzrWTZ" role="9aQIa">
            <node concept="3clFbS" id="4xBopTzrWU0" role="9aQI4">
              <node concept="YS8fn" id="4xBopTzrX2G" role="3cqZAp">
                <node concept="2ShNRf" id="4xBopTzrX2H" role="YScLw">
                  <node concept="1pGfFk" id="4xBopTzrX2I" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="4xBopTzrX2J" role="37wK5m">
                      <property role="Xl_RC" value="invalid arguments" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzrSfF" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzrRGH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tell" />
      <node concept="37vLTG" id="4xBopTzrRGI" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="4xBopTzrRGJ" role="1tU5fm">
          <ref role="3uigEE" to="bspi:6Kcfpq7BfEn" resolve="Constraint" />
        </node>
      </node>
      <node concept="37vLTG" id="4xBopTzrRGK" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="8X2XB" id="4xBopTzrRGL" role="1tU5fm">
          <node concept="3uibUv" id="4xBopTzrRGM" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4xBopTzrRGN" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzrRGO" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzrRGS" role="3clF47">
        <node concept="3clFbJ" id="4xBopTzrXNl" role="3cqZAp">
          <node concept="3clFbS" id="4xBopTzrXNm" role="3clFbx">
            <node concept="YS8fn" id="4xBopTzrXNn" role="3cqZAp">
              <node concept="2ShNRf" id="4xBopTzrXNo" role="YScLw">
                <node concept="1pGfFk" id="4xBopTzrXNp" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="Xl_RD" id="4xBopTzrXNq" role="37wK5m">
                    <property role="Xl_RC" value="invalid arguments count" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4xBopTzrXNr" role="3clFbw">
            <node concept="3cmrfG" id="4xBopTzrXNs" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="4xBopTzrXNt" role="3uHU7B">
              <node concept="37vLTw" id="4xBopTzrXNu" role="2Oq$k0">
                <ref role="3cqZAo" node="4xBopTzrRGK" resolve="arg" />
              </node>
              <node concept="1Rwk04" id="4xBopTzrXNv" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4xBopTzrXNw" role="3cqZAp">
          <node concept="3cpWsn" id="4xBopTzrXNx" role="3cpWs9">
            <property role="TrG5h" value="test" />
            <node concept="3uibUv" id="4xBopTzrXNy" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="AH0OO" id="4xBopTzrXNz" role="33vP2m">
              <node concept="3cmrfG" id="4xBopTzrXN$" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="4xBopTzrXN_" role="AHHXb">
                <ref role="3cqZAo" node="4xBopTzrRGK" resolve="arg" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xBopTzrXNA" role="3cqZAp" />
        <node concept="3clFbJ" id="4xBopTzrXNB" role="3cqZAp">
          <node concept="3clFbS" id="4xBopTzrXNC" role="3clFbx">
            <node concept="3clFbF" id="4xBopTzrXZ6" role="3cqZAp">
              <node concept="1rXfSq" id="4xBopTzrXNE" role="3clFbG">
                <ref role="37wK5l" node="6infEALAKQH" resolve="tellAssert" />
                <node concept="1eOMI4" id="4xBopTzrXNF" role="37wK5m">
                  <node concept="10QFUN" id="4xBopTzrXNG" role="1eOMHV">
                    <node concept="3uibUv" id="4xBopTzrXNH" role="10QFUM">
                      <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
                      <node concept="3uibUv" id="4xBopTzrXNI" role="11_B2D">
                        <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4xBopTzrXNJ" role="10QFUP">
                      <ref role="3cqZAo" node="4xBopTzrXNx" resolve="test" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4xBopTzrXNK" role="3cqZAp" />
          </node>
          <node concept="2ZW3vV" id="4xBopTzrXNL" role="3clFbw">
            <node concept="3uibUv" id="4xBopTzrXNM" role="2ZW6by">
              <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
            </node>
            <node concept="37vLTw" id="4xBopTzrXNN" role="2ZW6bz">
              <ref role="3cqZAo" node="4xBopTzrXNx" resolve="test" />
            </node>
          </node>
          <node concept="3eNFk2" id="4xBopTzrXNO" role="3eNLev">
            <node concept="2ZW3vV" id="4xBopTzrXNP" role="3eO9$A">
              <node concept="3uibUv" id="4xBopTzrXNQ" role="2ZW6by">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="37vLTw" id="4xBopTzrXNR" role="2ZW6bz">
                <ref role="3cqZAo" node="4xBopTzrXNx" resolve="test" />
              </node>
            </node>
            <node concept="3clFbS" id="4xBopTzrXNS" role="3eOfB_">
              <node concept="3clFbF" id="4xBopTzrYrU" role="3cqZAp">
                <node concept="1rXfSq" id="4xBopTzrXNU" role="3clFbG">
                  <ref role="37wK5l" node="6infEALAKQz" resolve="tellAssert" />
                  <node concept="10QFUN" id="4xBopTzrXNV" role="37wK5m">
                    <node concept="37vLTw" id="4xBopTzrXNW" role="10QFUP">
                      <ref role="3cqZAo" node="4xBopTzrXNx" resolve="test" />
                    </node>
                    <node concept="3uibUv" id="4xBopTzrXNX" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="4xBopTzrXNY" role="3cqZAp" />
            </node>
          </node>
          <node concept="9aQIb" id="4xBopTzrXNZ" role="9aQIa">
            <node concept="3clFbS" id="4xBopTzrXO0" role="9aQI4">
              <node concept="YS8fn" id="4xBopTzrXO1" role="3cqZAp">
                <node concept="2ShNRf" id="4xBopTzrXO2" role="YScLw">
                  <node concept="1pGfFk" id="4xBopTzrXO3" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="4xBopTzrXO4" role="37wK5m">
                      <property role="Xl_RC" value="invalid arguments" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzrRzV" role="jymVt" />
    <node concept="3Tm1VV" id="6infEALAKBH" role="1B3o_S" />
    <node concept="3uibUv" id="6infEALAKLB" role="EKbjA">
      <ref role="3uigEE" node="6infEALA98Q" resolve="AssertSolver" />
    </node>
    <node concept="3clFb_" id="6infEALAKQz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellAssert" />
      <node concept="37vLTG" id="6infEALAKQ$" role="3clF46">
        <property role="TrG5h" value="val" />
        <node concept="3uibUv" id="6infEALAKQ_" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3cqZAl" id="6infEALAKQA" role="3clF45" />
      <node concept="3Tm1VV" id="6infEALAKQB" role="1B3o_S" />
      <node concept="2AHcQZ" id="6infEALAKQD" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6infEALAKQE" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="6infEALAKQF" role="2B70Vg">
            <ref role="1PxDUh" node="6infEALAfer" resolve="AssertBuiltinConstraint" />
            <ref role="3cqZAo" node="6infEALAgS7" resolve="ASSERT" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6infEALAKQG" role="3clF47">
        <node concept="3clFbJ" id="6infEALBkC$" role="3cqZAp">
          <node concept="3clFbS" id="6infEALBkC_" role="3clFbx">
            <node concept="YS8fn" id="6infEALBkCA" role="3cqZAp">
              <node concept="2ShNRf" id="6infEALBkCB" role="YScLw">
                <node concept="1pGfFk" id="6infEALBkCC" role="2ShVmc">
                  <ref role="37wK5l" to="eifs:~FailureException.&lt;init&gt;(java.lang.String)" resolve="FailureException" />
                  <node concept="Xl_RD" id="6infEALBkCD" role="37wK5m">
                    <property role="Xl_RC" value="cannot assert false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6infEALBkHm" role="3clFbw">
            <node concept="37vLTw" id="6infEALBl5n" role="3fr31v">
              <ref role="3cqZAo" node="6infEALAKQ$" resolve="val" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6infEALATT4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALAU2t" role="jymVt" />
    <node concept="3clFb_" id="6infEALAKQH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellAssert" />
      <node concept="37vLTG" id="6infEALAKQI" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="6infEALAKQJ" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
          <node concept="3uibUv" id="6infEALAKQK" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6infEALAKQL" role="3clF45" />
      <node concept="3Tm1VV" id="6infEALAKQM" role="1B3o_S" />
      <node concept="2AHcQZ" id="6infEALAKQO" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6infEALAKQP" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="6infEALAKQQ" role="2B70Vg">
            <ref role="1PxDUh" node="6infEALAfer" resolve="AssertBuiltinConstraint" />
            <ref role="3cqZAo" node="6infEALAgS7" resolve="ASSERT" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6infEALAKQR" role="3clF47">
        <node concept="3clFbJ" id="6infEALBog8" role="3cqZAp">
          <node concept="3clFbS" id="6infEALBog9" role="3clFbx">
            <node concept="3clFbF" id="6infEALBoga" role="3cqZAp">
              <node concept="2YIFZM" id="6infEALBogb" role="3clFbG">
                <ref role="37wK5l" to="eift:~ConstraintSystemUtil.queue(ConstraintSystem,Runnable)" resolve="queue" />
                <ref role="1Pybhc" to="eift:~ConstraintSystemUtil" resolve="ConstraintSystemUtil" />
                <node concept="37vLTw" id="6infEALBogc" role="37wK5m">
                  <ref role="3cqZAo" node="6infEALAQoF" resolve="constraintSystem" />
                </node>
                <node concept="1bVj0M" id="6infEALBogd" role="37wK5m">
                  <node concept="3clFbS" id="6infEALBoge" role="1bW5cS">
                    <node concept="3clFbF" id="6infEALBogf" role="3cqZAp">
                      <node concept="1rXfSq" id="6infEALBogg" role="3clFbG">
                        <ref role="37wK5l" node="6infEALAKQH" resolve="tellAssert" />
                        <node concept="37vLTw" id="6infEALBooW" role="37wK5m">
                          <ref role="3cqZAo" node="6infEALAKQI" resolve="logical" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6infEALBogi" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="6infEALBogj" role="3clFbw">
            <node concept="37vLTw" id="6infEALBogk" role="2Oq$k0">
              <ref role="3cqZAo" node="6infEALAQoF" resolve="constraintSystem" />
            </node>
            <node concept="liA8E" id="6infEALBogl" role="2OqNvi">
              <ref role="37wK5l" to="eifs:~ConstraintSystem.isQueuing():boolean" resolve="isQueuing" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6infEALBoct" role="3cqZAp" />
        <node concept="3cpWs8" id="6infEALBclm" role="3cqZAp">
          <node concept="3cpWsn" id="6infEALBcln" role="3cpWs9">
            <property role="TrG5h" value="repr" />
            <node concept="3uibUv" id="6infEALBclo" role="1tU5fm">
              <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
              <node concept="3uibUv" id="6infEALBclp" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
            </node>
            <node concept="2OqwBi" id="6infEALBclq" role="33vP2m">
              <node concept="37vLTw" id="6infEALBclr" role="2Oq$k0">
                <ref role="3cqZAo" node="6infEALAKQI" resolve="logical" />
              </node>
              <node concept="liA8E" id="6infEALBcls" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6infEALBcOh" role="3cqZAp">
          <node concept="3clFbS" id="6infEALBcOj" role="3clFbx">
            <node concept="YS8fn" id="6infEALBiaP" role="3cqZAp">
              <node concept="2ShNRf" id="6infEALBiaQ" role="YScLw">
                <node concept="1pGfFk" id="6infEALBiaR" role="2ShVmc">
                  <ref role="37wK5l" to="eifs:~FailureException.&lt;init&gt;(java.lang.String)" resolve="FailureException" />
                  <node concept="Xl_RD" id="6infEALBjz_" role="37wK5m">
                    <property role="Xl_RC" value="cannot assert false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6infEALBeKX" role="3clFbw">
            <node concept="3fqX7Q" id="6infEALBeNq" role="3uHU7w">
              <node concept="2OqwBi" id="6infEALBf3L" role="3fr31v">
                <node concept="37vLTw" id="6infEALBePw" role="2Oq$k0">
                  <ref role="3cqZAo" node="6infEALBcln" resolve="repr" />
                </node>
                <node concept="liA8E" id="6infEALBgCV" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6infEALBd3w" role="3uHU7B">
              <node concept="37vLTw" id="6infEALBcQc" role="2Oq$k0">
                <ref role="3cqZAo" node="6infEALBcln" resolve="repr" />
              </node>
              <node concept="liA8E" id="6infEALBeBH" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6infEALBksI" role="3cqZAp" />
        <node concept="3cpWs8" id="6infEALBscn" role="3cqZAp">
          <node concept="3cpWsn" id="6infEALBsco" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="3uibUv" id="6infEALBsce" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
            <node concept="2OqwBi" id="6infEALBscp" role="33vP2m">
              <node concept="37vLTw" id="6infEALBscq" role="2Oq$k0">
                <ref role="3cqZAo" node="6infEALBcln" resolve="repr" />
              </node>
              <node concept="liA8E" id="6infEALBscr" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6infEALBsxX" role="3cqZAp">
          <node concept="3clFbS" id="6infEALBsxZ" role="3clFbx">
            <node concept="3clFbF" id="6infEALBtCI" role="3cqZAp">
              <node concept="2OqwBi" id="6infEALBtMi" role="3clFbG">
                <node concept="37vLTw" id="6infEALBtCG" role="2Oq$k0">
                  <ref role="3cqZAo" node="6infEALBcln" resolve="repr" />
                </node>
                <node concept="liA8E" id="6infEALBvmp" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmK4yW" resolve="setValue" />
                  <node concept="10M0yZ" id="6infEALBvoZ" role="37wK5m">
                    <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                    <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6infEALBvyD" role="3cqZAp">
              <node concept="2OqwBi" id="6infEALBvHL" role="3clFbG">
                <node concept="37vLTw" id="6infEALBvyB" role="2Oq$k0">
                  <ref role="3cqZAo" node="6infEALBcln" resolve="repr" />
                </node>
                <node concept="liA8E" id="6infEALBxhV" role="2OqNvi">
                  <ref role="37wK5l" to="eifs:~Logical.rehashAllAndDispose():void" resolve="rehashAllAndDispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6infEALBxkx" role="3cqZAp" />
            <node concept="3SKdUt" id="6infEALBxps" role="3cqZAp">
              <node concept="3SKdUq" id="6infEALBxpt" role="3SKWNk">
                <property role="3SKdUp" value="TODO: check the invariants of repr" />
              </node>
            </node>
            <node concept="3clFbF" id="6infEALBxpu" role="3cqZAp">
              <node concept="2OqwBi" id="6infEALBxpv" role="3clFbG">
                <node concept="37vLTw" id="6infEALBxwO" role="2Oq$k0">
                  <ref role="3cqZAo" node="6infEALBcln" resolve="repr" />
                </node>
                <node concept="liA8E" id="6infEALBxpx" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmDhnk" resolve="reactivateAndClearObservers" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6infEALBsL1" role="3clFbw">
            <node concept="10Nm6u" id="6infEALBsO_" role="3uHU7w" />
            <node concept="37vLTw" id="6infEALBsCh" role="3uHU7B">
              <ref role="3cqZAo" node="6infEALBsco" resolve="value" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6infEALAU9q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALAUiN" role="jymVt" />
    <node concept="3clFb_" id="6infEALAKQS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askAssert" />
      <node concept="37vLTG" id="6infEALAKQT" role="3clF46">
        <property role="TrG5h" value="val" />
        <node concept="3uibUv" id="6infEALAKQU" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="10P_77" id="6infEALB3_x" role="3clF45" />
      <node concept="3Tm1VV" id="6infEALAKQW" role="1B3o_S" />
      <node concept="2AHcQZ" id="6infEALAKQY" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6infEALAKQZ" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6infEALAKR0" role="2B70Vg">
            <ref role="1PxDUh" node="6infEALAfer" resolve="AssertBuiltinConstraint" />
            <ref role="3cqZAo" node="6infEALAgS7" resolve="ASSERT" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6infEALAKR1" role="3clF47">
        <node concept="3clFbF" id="6infEALB4$1" role="3cqZAp">
          <node concept="37vLTw" id="6infEALB4$0" role="3clFbG">
            <ref role="3cqZAo" node="6infEALAKQT" resolve="val" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6infEALAUt5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALAUAu" role="jymVt" />
    <node concept="3clFb_" id="6infEALAKR2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askAssert" />
      <node concept="37vLTG" id="6infEALAKR3" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="6infEALAKR4" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
          <node concept="3uibUv" id="6infEALAKR5" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6infEALB3F8" role="3clF45" />
      <node concept="3Tm1VV" id="6infEALAKR7" role="1B3o_S" />
      <node concept="2AHcQZ" id="6infEALAKR9" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6infEALAKRa" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6infEALAKRb" role="2B70Vg">
            <ref role="1PxDUh" node="6infEALAfer" resolve="AssertBuiltinConstraint" />
            <ref role="3cqZAo" node="6infEALAgS7" resolve="ASSERT" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6infEALAKRc" role="3clF47">
        <node concept="3cpWs8" id="6infEALBa$_" role="3cqZAp">
          <node concept="3cpWsn" id="6infEALBa$A" role="3cpWs9">
            <property role="TrG5h" value="repr" />
            <node concept="3uibUv" id="6infEALBa$x" role="1tU5fm">
              <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
              <node concept="3uibUv" id="6infEALBa$$" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
            </node>
            <node concept="2OqwBi" id="6infEALBa$B" role="33vP2m">
              <node concept="37vLTw" id="6infEALBa$C" role="2Oq$k0">
                <ref role="3cqZAo" node="6infEALAKR3" resolve="logical" />
              </node>
              <node concept="liA8E" id="6infEALBa$D" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6infEALAYLT" role="3cqZAp">
          <node concept="3clFbS" id="6infEALAYLV" role="3clFbx">
            <node concept="3cpWs6" id="6infEALB1yd" role="3cqZAp">
              <node concept="3clFbT" id="6infEALB1$I" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6infEALAYNg" role="3clFbw">
            <node concept="2OqwBi" id="6infEALAZ5t" role="3fr31v">
              <node concept="37vLTw" id="6infEALBbmW" role="2Oq$k0">
                <ref role="3cqZAo" node="6infEALBa$A" resolve="repr" />
              </node>
              <node concept="liA8E" id="6infEALB0GT" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6infEALAYKA" role="3cqZAp" />
        <node concept="3clFbF" id="6infEALAVvu" role="3cqZAp">
          <node concept="2OqwBi" id="6infEALAVD2" role="3clFbG">
            <node concept="37vLTw" id="6infEALBbtf" role="2Oq$k0">
              <ref role="3cqZAo" node="6infEALBa$A" resolve="repr" />
            </node>
            <node concept="liA8E" id="6infEALAXgk" role="2OqNvi">
              <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALAT0A" role="jymVt" />
    <node concept="312cEg" id="6infEALAQoF" role="jymVt">
      <property role="TrG5h" value="constraintSystem" />
      <node concept="3Tm6S6" id="6infEALAQoG" role="1B3o_S" />
      <node concept="3uibUv" id="6infEALAQoI" role="1tU5fm">
        <ref role="3uigEE" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2DKqMqOqXrq">
    <property role="TrG5h" value="DataLogical" />
    <node concept="2tJIrI" id="2DKqMqOqXSM" role="jymVt" />
    <node concept="3clFbW" id="2DKqMqOqXT4" role="jymVt">
      <node concept="3cqZAl" id="2DKqMqOqXT6" role="3clF45" />
      <node concept="3Tm1VV" id="2DKqMqOqXT7" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOqXT8" role="3clF47">
        <node concept="XkiVB" id="2DKqMqOqXWt" role="3cqZAp">
          <ref role="37wK5l" node="3HJTsBmBUfM" resolve="AbstractLogical" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2DKqMqOqZjM" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Declare" resolve="JCHR_Declare" />
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOqXSR" role="jymVt" />
    <node concept="3clFbW" id="2DKqMqOqZmG" role="jymVt">
      <node concept="37vLTG" id="2DKqMqOqZnr" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="2DKqMqOqZBx" role="1tU5fm">
          <ref role="16sUi3" node="2DKqMqOqXyP" resolve="T" />
        </node>
      </node>
      <node concept="3cqZAl" id="2DKqMqOqZmI" role="3clF45" />
      <node concept="3Tm1VV" id="2DKqMqOqZmJ" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOqZmK" role="3clF47">
        <node concept="XkiVB" id="2DKqMqOqZus" role="3cqZAp">
          <ref role="37wK5l" node="3HJTsBmBVmo" resolve="AbstractLogical" />
          <node concept="10Nm6u" id="2DKqMqOqZwc" role="37wK5m" />
          <node concept="37vLTw" id="2DKqMqOqZFA" role="37wK5m">
            <ref role="3cqZAo" node="2DKqMqOqZnr" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2DKqMqOqZnj" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Init" resolve="JCHR_Init" />
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOqZG4" role="jymVt" />
    <node concept="3clFbW" id="2DKqMqOqZHK" role="jymVt">
      <node concept="37vLTG" id="2DKqMqOqZIX" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="2DKqMqOqZL1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2DKqMqOqZN8" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="2DKqMqOqZPc" role="1tU5fm">
          <ref role="16sUi3" node="2DKqMqOqXyP" resolve="T" />
        </node>
      </node>
      <node concept="3cqZAl" id="2DKqMqOqZHM" role="3clF45" />
      <node concept="3Tm1VV" id="2DKqMqOqZHN" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOqZHO" role="3clF47">
        <node concept="XkiVB" id="2DKqMqOqZUb" role="3cqZAp">
          <ref role="37wK5l" node="3HJTsBmBVmo" resolve="AbstractLogical" />
          <node concept="37vLTw" id="2DKqMqOr01$" role="37wK5m">
            <ref role="3cqZAo" node="2DKqMqOqZIX" resolve="name" />
          </node>
          <node concept="37vLTw" id="2DKqMqOr0hS" role="37wK5m">
            <ref role="3cqZAo" node="2DKqMqOqZN8" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2DKqMqOqZIP" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Init" resolve="JCHR_Init" />
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOr0il" role="jymVt" />
    <node concept="3clFb_" id="2DKqMqOr0kU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="findRoot" />
      <node concept="3uibUv" id="2DKqMqOr0kV" role="3clF45">
        <ref role="3uigEE" node="2DKqMqOqXrq" resolve="DataLogical" />
        <node concept="16syzq" id="2DKqMqOr0kZ" role="11_B2D">
          <ref role="16sUi3" node="2DKqMqOqXyP" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2DKqMqOr0kX" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOr0l0" role="3clF47">
        <node concept="3clFbF" id="2DKqMqOr1h$" role="3cqZAp">
          <node concept="10QFUN" id="2DKqMqOr1t4" role="3clFbG">
            <node concept="1rXfSq" id="2DKqMqOr1t3" role="10QFUP">
              <ref role="37wK5l" to="eifs:~Logical.find():runtime.Logical" resolve="find" />
            </node>
            <node concept="3uibUv" id="2DKqMqOr1Ad" role="10QFUM">
              <ref role="3uigEE" node="2DKqMqOqXrq" resolve="DataLogical" />
              <node concept="16syzq" id="2DKqMqOr1Hn" role="11_B2D">
                <ref role="16sUi3" node="2DKqMqOqXyP" resolve="T" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7MlQDeOywls" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOr0Iu" role="jymVt" />
    <node concept="3clFb_" id="2DKqMqOr0l3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="asAtom" />
      <node concept="3uibUv" id="2DKqMqOr0l4" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
      <node concept="3Tm1VV" id="2DKqMqOr0l6" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOr0lk" role="3clF47">
        <node concept="3SKdUt" id="7MlQDeOyCNN" role="3cqZAp">
          <node concept="3SKdUq" id="7MlQDeOyCNO" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: implement me" />
          </node>
        </node>
        <node concept="YS8fn" id="2DKqMqOru0t" role="3cqZAp">
          <node concept="2ShNRf" id="2DKqMqOru3p" role="YScLw">
            <node concept="1pGfFk" id="2DKqMqOruja" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7MlQDeOywg4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7MlQDeOywrv" role="jymVt" />
    <node concept="3clFb_" id="7MlQDeOywxv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="asAtom" />
      <node concept="3uibUv" id="7MlQDeOywxw" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
      <node concept="3Tm1VV" id="7MlQDeOywxx" role="1B3o_S" />
      <node concept="37vLTG" id="7MlQDeOywxz" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="3uibUv" id="7MlQDeOywx$" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="7MlQDeOywx_" role="11_B2D">
            <node concept="3uibUv" id="7MlQDeOywxA" role="3qUE_r">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7MlQDeOywxK" role="3clF47">
        <node concept="3SKdUt" id="7MlQDeOyxKX" role="3cqZAp">
          <node concept="3SKdUq" id="7MlQDeOyxL8" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: implement me" />
          </node>
        </node>
        <node concept="YS8fn" id="7MlQDeOyxhL" role="3cqZAp">
          <node concept="2ShNRf" id="7MlQDeOyxk5" role="YScLw">
            <node concept="1pGfFk" id="7MlQDeOyx_D" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="7MlQDeOyxC8" role="37wK5m">
                <property role="Xl_RC" value="not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7MlQDeOyx4B" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Sag3Ksv$IM" role="jymVt" />
    <node concept="3clFb_" id="6Sag3Ksv$tC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isValid" />
      <node concept="37vLTG" id="6Sag3Ksv$tD" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="3uibUv" id="6Sag3Ksv$tE" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="6Sag3Ksv$tF" role="11_B2D">
            <node concept="3uibUv" id="6Sag3Ksv$tG" role="3qUE_r">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6Sag3Ksv$tH" role="3clF45" />
      <node concept="3Tm1VV" id="6Sag3Ksv$tI" role="1B3o_S" />
      <node concept="3clFbS" id="6Sag3Ksv$tT" role="3clF47">
        <node concept="3SKdUt" id="6Sag3Ksv_3Z" role="3cqZAp">
          <node concept="3SKdUq" id="6Sag3Ksv_40" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: implement me" />
          </node>
        </node>
        <node concept="YS8fn" id="6Sag3Ksv_41" role="3cqZAp">
          <node concept="2ShNRf" id="6Sag3Ksv_42" role="YScLw">
            <node concept="1pGfFk" id="6Sag3Ksv_43" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="6Sag3Ksv_44" role="37wK5m">
                <property role="Xl_RC" value="not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6Sag3Ksv$Ue" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOrhfx" role="jymVt" />
    <node concept="3Tm1VV" id="2DKqMqOqXrr" role="1B3o_S" />
    <node concept="16euLQ" id="2DKqMqOqXyP" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
    <node concept="3uibUv" id="2DKqMqOqXEz" role="1zkMxy">
      <ref role="3uigEE" node="3HJTsBmBSJa" resolve="AbstractLogical" />
      <node concept="16syzq" id="2DKqMqOqXSz" role="11_B2D">
        <ref role="16sUi3" node="2DKqMqOqXyP" resolve="T" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2c3nq4GU7kP">
    <property role="TrG5h" value="ListLogical" />
    <node concept="3clFbW" id="2c3nq4GU7qY" role="jymVt">
      <node concept="3cqZAl" id="2c3nq4GU7qZ" role="3clF45" />
      <node concept="3Tm1VV" id="2c3nq4GU7r0" role="1B3o_S" />
      <node concept="3clFbS" id="2c3nq4GU7r1" role="3clF47">
        <node concept="XkiVB" id="2c3nq4GU7r2" role="3cqZAp">
          <ref role="37wK5l" node="2DKqMqOqXT4" resolve="DataLogical" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2c3nq4GU7r3" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Declare" resolve="JCHR_Declare" />
      </node>
    </node>
    <node concept="2tJIrI" id="2c3nq4GU7r4" role="jymVt" />
    <node concept="3clFbW" id="2c3nq4GU7r5" role="jymVt">
      <node concept="37vLTG" id="2c3nq4GU7r6" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="2c3nq4GU7u2" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
        </node>
      </node>
      <node concept="3cqZAl" id="2c3nq4GU7r8" role="3clF45" />
      <node concept="3Tm1VV" id="2c3nq4GU7r9" role="1B3o_S" />
      <node concept="3clFbS" id="2c3nq4GU7ra" role="3clF47">
        <node concept="XkiVB" id="2c3nq4GU7rb" role="3cqZAp">
          <ref role="37wK5l" node="2DKqMqOqZHK" resolve="DataLogical" />
          <node concept="10Nm6u" id="2c3nq4GU7rc" role="37wK5m" />
          <node concept="37vLTw" id="2c3nq4GU7rd" role="37wK5m">
            <ref role="3cqZAo" node="2c3nq4GU7r6" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2c3nq4GU7re" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Init" resolve="JCHR_Init" />
      </node>
    </node>
    <node concept="2tJIrI" id="2c3nq4GU7rf" role="jymVt" />
    <node concept="3clFbW" id="2c3nq4GU7rg" role="jymVt">
      <node concept="37vLTG" id="2c3nq4GU7rh" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="2c3nq4GU7ri" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2c3nq4GU7rj" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="2c3nq4GU7uL" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
        </node>
      </node>
      <node concept="3cqZAl" id="2c3nq4GU7rl" role="3clF45" />
      <node concept="3Tm1VV" id="2c3nq4GU7rm" role="1B3o_S" />
      <node concept="3clFbS" id="2c3nq4GU7rn" role="3clF47">
        <node concept="XkiVB" id="2c3nq4GU7ro" role="3cqZAp">
          <ref role="37wK5l" node="2DKqMqOqZHK" resolve="DataLogical" />
          <node concept="37vLTw" id="2c3nq4GU7rp" role="37wK5m">
            <ref role="3cqZAo" node="2c3nq4GU7rh" resolve="name" />
          </node>
          <node concept="37vLTw" id="2c3nq4GU7rq" role="37wK5m">
            <ref role="3cqZAo" node="2c3nq4GU7rj" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2c3nq4GU7rr" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Init" resolve="JCHR_Init" />
      </node>
    </node>
    <node concept="2tJIrI" id="2c3nq4GU7lm" role="jymVt" />
    <node concept="2tJIrI" id="2c3nq4GU7lo" role="jymVt" />
    <node concept="3clFb_" id="2c3nq4GU7w3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="findRoot" />
      <node concept="3uibUv" id="2c3nq4GU8co" role="3clF45">
        <ref role="3uigEE" node="2c3nq4GU7kP" resolve="ListLogical" />
      </node>
      <node concept="3Tm1VV" id="2c3nq4GU7w6" role="1B3o_S" />
      <node concept="3clFbS" id="2c3nq4GU7we" role="3clF47">
        <node concept="3clFbF" id="2c3nq4GU7wh" role="3cqZAp">
          <node concept="10QFUN" id="2c3nq4GU8hR" role="3clFbG">
            <node concept="3nyPlj" id="2c3nq4GU8hQ" role="10QFUP">
              <ref role="37wK5l" node="2DKqMqOr0kU" resolve="findRoot" />
            </node>
            <node concept="3uibUv" id="2c3nq4GU8lj" role="10QFUM">
              <ref role="3uigEE" node="2c3nq4GU7kP" resolve="ListLogical" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2c3nq4GU7wf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2c3nq4GU7kQ" role="1B3o_S" />
    <node concept="3uibUv" id="2c3nq4GU7l8" role="1zkMxy">
      <ref role="3uigEE" node="2DKqMqOqXrq" resolve="DataLogical" />
      <node concept="3uibUv" id="2c3nq4GU7Ss" role="11_B2D">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
      </node>
    </node>
  </node>
</model>

