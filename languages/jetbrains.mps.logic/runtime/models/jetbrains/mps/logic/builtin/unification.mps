<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="9sk9" ref="f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#annotations(jetbrains.mps.jchr.runtime/annotations@java_stub)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" />
    <import index="w2rx" ref="f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime(jetbrains.mps.jchr.runtime/runtime@java_stub)" />
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="jfki" ref="f:java_stub#7526e0cf-1ce7-46f8-a555-9eca1e06c23b#jetbrains.mps.unification(jetbrains.mps.unification@java_stub)" />
    <import index="7uia" ref="f:java_stub#a5478664-6b44-4c62-a9f7-434f8aa57eee#runtime(runtime@java_stub)" />
    <import index="4pqn" ref="f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime.hash(jetbrains.mps.jchr.runtime/runtime.hash@java_stub)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
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
      <concept id="2217234381367049075" name="jetbrains.mps.baseLanguage.javadoc.structure.CodeInlineDocTag" flags="ng" index="VVOAv">
        <child id="3106559687488741665" name="line" index="2Xj1qM" />
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
  <node concept="3HP615" id="6njqcfQVO0n">
    <property role="TrG5h" value="UnificationSolver" />
    <node concept="2tJIrI" id="4OsiK2BAn9B" role="jymVt" />
    <node concept="3clFb_" id="4OsiK2BAlI6" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="4OsiK2BAm0x" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4OsiK2BAm4d" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="4OsiK2BAm7X" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4OsiK2BAm87" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="3cqZAl" id="4OsiK2BAlI8" role="3clF45" />
      <node concept="3Tm1VV" id="4OsiK2BAlI9" role="1B3o_S" />
      <node concept="3clFbS" id="4OsiK2BAlIa" role="3clF47" />
      <node concept="2AHcQZ" id="4OsiK2BAnpo" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4OsiK2BAnsG" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Tells.value()" resolve="value" />
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
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogCcGL" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCd0t" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogCcGN" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogCcGO" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogCcGP" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogCcGQ" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4U_yxogCcGR" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Tells.value()" resolve="value" />
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
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogCdjX" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCdjY" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogCdk1" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogCdk2" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogCdk3" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogCdk4" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4U_yxogCdk5" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Tells.value()" resolve="value" />
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
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogCe_X" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCf2Z" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogCe_Z" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogCeA0" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogCeA1" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogCeA2" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4U_yxogCeA3" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Tells.value()" resolve="value" />
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
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="4OsiK2BAohT" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4OsiK2BAohU" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogCa6w" role="3clF45" />
      <node concept="3Tm1VV" id="4OsiK2BAnTS" role="1B3o_S" />
      <node concept="3clFbS" id="4OsiK2BAnTT" role="3clF47" />
      <node concept="2AHcQZ" id="4OsiK2BAoPZ" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4OsiK2BAoUv" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Asks.value()" resolve="value" />
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
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogC9UK" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCabD" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogCc3n" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogC9UN" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogC9UO" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogC9UP" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4U_yxogC9UQ" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Asks.value()" resolve="value" />
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
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogCamY" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCamZ" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogCch8" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogCan3" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogCan4" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogCan5" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4U_yxogCan6" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Asks.value()" resolve="value" />
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
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogCbuG" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCbIA" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogCcuX" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogCbuJ" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogCbuK" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogCbuL" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4U_yxogCbuM" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogCbuN" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6njqcfQVO0o" role="1B3o_S" />
    <node concept="2AHcQZ" id="6njqcfQVOAK" role="2AJF6D">
      <ref role="2AI5Lk" to="9sk9:~JCHR_Constraints" resolve="JCHR_Constraints" />
      <node concept="2B6LJw" id="6njqcfQWtmO" role="2B76xF">
        <ref role="2B6OnR" to="9sk9:~JCHR_Constraints.value()" resolve="value" />
        <node concept="2BsdOp" id="6njqcfQWztx" role="2B70Vg">
          <node concept="2AHcQZ" id="6njqcfQWwcA" role="2BsfMF">
            <ref role="2AI5Lk" to="9sk9:~JCHR_Constraint" resolve="JCHR_Constraint" />
            <node concept="2B6LJw" id="6njqcfQWwea" role="2B76xF">
              <ref role="2B6OnR" to="9sk9:~JCHR_Constraint.identifier()" resolve="identifier" />
              <node concept="10M0yZ" id="4OsiK2BALdr" role="2B70Vg">
                <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
                <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
              </node>
            </node>
            <node concept="2B6LJw" id="6njqcfQWwks" role="2B76xF">
              <ref role="2B6OnR" to="9sk9:~JCHR_Constraint.arity()" resolve="arity" />
              <node concept="3cmrfG" id="6njqcfQWwog" role="2B70Vg">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
            <node concept="2B6LJw" id="35Lj3Tj3LGP" role="2B76xF">
              <ref role="2B6OnR" to="9sk9:~JCHR_Constraint.infix()" resolve="infix" />
              <node concept="10M0yZ" id="5lJXKvHNj" role="2B70Vg">
                <ref role="3cqZAo" node="2GO7tyJVob6" resolve="INFIX_UNI" />
                <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
              </node>
            </node>
            <node concept="2B6LJw" id="6njqcfQWwzK" role="2B76xF">
              <ref role="2B6OnR" to="9sk9:~JCHR_Constraint.idempotent()" resolve="idempotent" />
              <node concept="Rm8GO" id="6GYQG_SpstN" role="2B70Vg">
                <ref role="Rm8GQ" to="9sk9:~JCHR_Constraint$Value.YES" resolve="YES" />
                <ref role="1Px2BO" to="9sk9:~JCHR_Constraint$Value" resolve="JCHR_Constraint.Value" />
              </node>
            </node>
          </node>
        </node>
      </node>
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
          <ref role="37wK5l" node="4U_yxogDEZX" resolve="UnificationSolverImpl" />
          <node concept="2YIFZM" id="4U_yxogDI7o" role="37wK5m">
            <ref role="37wK5l" to="w2rx:~ConstraintSystem.get():runtime.ConstraintSystem" resolve="get" />
            <ref role="1Pybhc" to="w2rx:~ConstraintSystem" resolve="ConstraintSystem" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogDFEu" role="jymVt" />
    <node concept="3clFbW" id="4U_yxogDEZX" role="jymVt">
      <node concept="3cqZAl" id="4U_yxogDEZZ" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogDF00" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogDF01" role="3clF47">
        <node concept="3clFbF" id="4U_yxogDGOI" role="3cqZAp">
          <node concept="37vLTI" id="4U_yxogDGOK" role="3clFbG">
            <node concept="2OqwBi" id="4U_yxogDGOO" role="37vLTJ">
              <node concept="Xjq3P" id="4U_yxogDGOR" role="2Oq$k0" />
              <node concept="2OwXpG" id="4U_yxogDGON" role="2OqNvi">
                <ref role="2Oxat5" node="4U_yxogDGOE" resolve="constraintSystem" />
              </node>
            </node>
            <node concept="37vLTw" id="4U_yxogDGOS" role="37vLTx">
              <ref role="3cqZAo" node="4U_yxogDGlk" resolve="constraintSystem" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogDGlk" role="3clF46">
        <property role="TrG5h" value="constraintSystem" />
        <node concept="3uibUv" id="4U_yxogDGlj" role="1tU5fm">
          <ref role="3uigEE" to="w2rx:~ConstraintSystem" resolve="ConstraintSystem" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogDCRM" role="jymVt" />
    <node concept="3clFb_" id="6GYQG_SpvAG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="6GYQG_SpvAH" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="3uibUv" id="6GYQG_SpvAI" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="6GYQG_SpvAJ" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="3uibUv" id="6GYQG_SpvAK" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="3cqZAl" id="6GYQG_SpvAL" role="3clF45" />
      <node concept="3Tm1VV" id="6GYQG_SpvAM" role="1B3o_S" />
      <node concept="2AHcQZ" id="6GYQG_SpvAO" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6GYQG_SpvAP" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Tells.value()" resolve="value" />
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
                <ref role="37wK5l" to="7uia:~ConstraintSystemUtil.queue(ConstraintSystem,Runnable)" resolve="queue" />
                <ref role="1Pybhc" to="7uia:~ConstraintSystemUtil" resolve="ConstraintSystemUtil" />
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
              <ref role="37wK5l" to="w2rx:~ConstraintSystem.isQueuing():boolean" resolve="isQueuing" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6SkxsMzDjwi" role="3cqZAp" />
        <node concept="3cpWs8" id="6SkxsMzDnLI" role="3cqZAp">
          <node concept="3cpWsn" id="6SkxsMzDnLJ" role="3cpWs9">
            <property role="TrG5h" value="subs" />
            <node concept="3uibUv" id="6SkxsMzDnLG" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution" resolve="Substitution" />
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
                  <ref role="37wK5l" to="w2rx:~FailureException.&lt;init&gt;(java.lang.String)" resolve="FailureException" />
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
                <ref role="37wK5l" to="jfki:~Substitution.isSuccessful()" resolve="isSuccessful" />
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
                <node concept="3uibUv" id="1Ns6gpY7SoU" role="1tU5fm">
                  <ref role="3uigEE" to="jfki:~Var" resolve="Var" />
                </node>
                <node concept="2OqwBi" id="1Ns6gpY7SoY" role="33vP2m">
                  <node concept="37vLTw" id="1Ns6gpY7SoZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                  </node>
                  <node concept="liA8E" id="1Ns6gpY7Sp0" role="2OqNvi">
                    <ref role="37wK5l" to="jfki:~Substitution.Binding.var()" resolve="var" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6SkxsMzDQjP" role="3cqZAp">
              <node concept="3cpWsn" id="6SkxsMzDQjQ" role="3cpWs9">
                <property role="TrG5h" value="bvarLogical" />
                <node concept="3uibUv" id="6SkxsMzDQjK" role="1tU5fm">
                  <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
                </node>
                <node concept="2OqwBi" id="1Ns6gpY7UeN" role="33vP2m">
                  <node concept="1eOMI4" id="1Ns6gpY7Td2" role="2Oq$k0">
                    <node concept="10QFUN" id="1Ns6gpY7TcZ" role="1eOMHV">
                      <node concept="3uibUv" id="1Ns6gpY7Tey" role="10QFUM">
                        <ref role="3uigEE" node="1Ns6gpY6jYh" resolve="TreeLogicalVar" />
                      </node>
                      <node concept="37vLTw" id="1Ns6gpY7TAs" role="10QFUP">
                        <ref role="3cqZAo" node="1Ns6gpY7SoX" resolve="bvar" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1Ns6gpY7UPC" role="2OqNvi">
                    <ref role="37wK5l" node="1Ns6gpY7Ay2" resolve="treeLogical" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6SkxsMzDT2t" role="3cqZAp" />
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
                      <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                    </node>
                    <node concept="2YIFZM" id="6SkxsMzErJ7" role="33vP2m">
                      <ref role="37wK5l" to="ie8e:5JQSuNsxMzt" resolve="create" />
                      <ref role="1Pybhc" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                      <node concept="2OqwBi" id="6SkxsMzErJ8" role="37wK5m">
                        <node concept="1eOMI4" id="6SkxsMzErJ9" role="2Oq$k0">
                          <node concept="10QFUN" id="6SkxsMzErJa" role="1eOMHV">
                            <node concept="3uibUv" id="6SkxsMzErJb" role="10QFUM">
                              <ref role="3uigEE" to="ie8e:1msb0mq9ID4" resolve="Branch" />
                              <node concept="3uibUv" id="6SkxsMzErJc" role="11_B2D">
                                <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6SkxsMzFMD3" role="10QFUP">
                              <node concept="37vLTw" id="6SkxsMzFMD4" role="2Oq$k0">
                                <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                              </node>
                              <node concept="liA8E" id="6SkxsMzFMD5" role="2OqNvi">
                                <ref role="37wK5l" to="jfki:~Substitution.Binding.node()" resolve="node" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6SkxsMzErJe" role="2OqNvi">
                          <ref role="37wK5l" to="ie8e:1bm7a6EYD0x" resolve="copyRecursively" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6SkxsMzEti1" role="3cqZAp">
                  <node concept="1rXfSq" id="6SkxsMzEti0" role="3clFbG">
                    <ref role="37wK5l" node="4U_yxogBZLB" resolve="tellUni" />
                    <node concept="37vLTw" id="6SkxsMzEtHu" role="37wK5m">
                      <ref role="3cqZAo" node="6SkxsMzDQjQ" resolve="bvarLogical" />
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
                    <ref role="37wK5l" to="jfki:~Substitution.Binding.node()" resolve="node" />
                  </node>
                </node>
                <node concept="liA8E" id="6SkxsMzEqaD" role="2OqNvi">
                  <ref role="37wK5l" to="jfki:~Node.isTerm()" resolve="isTerm" />
                </node>
              </node>
              <node concept="3eNFk2" id="6SkxsMzEv3z" role="3eNLev">
                <node concept="2OqwBi" id="6SkxsMzEv9Q" role="3eO9$A">
                  <node concept="2OqwBi" id="6SkxsMzFMD6" role="2Oq$k0">
                    <node concept="37vLTw" id="6SkxsMzFMD7" role="2Oq$k0">
                      <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                    </node>
                    <node concept="liA8E" id="6SkxsMzFMD8" role="2OqNvi">
                      <ref role="37wK5l" to="jfki:~Substitution.Binding.node()" resolve="node" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6SkxsMzEvgy" role="2OqNvi">
                    <ref role="37wK5l" to="jfki:~Node.isVar()" resolve="isVar" />
                  </node>
                </node>
                <node concept="3clFbS" id="6SkxsMzEv3_" role="3eOfB_">
                  <node concept="3cpWs8" id="1Ns6gpY7VW1" role="3cqZAp">
                    <node concept="3cpWsn" id="1Ns6gpY7VW2" role="3cpWs9">
                      <property role="TrG5h" value="nvar" />
                      <node concept="3uibUv" id="1Ns6gpY7VW0" role="1tU5fm">
                        <ref role="3uigEE" to="jfki:~Var" resolve="Var" />
                      </node>
                      <node concept="2OqwBi" id="1Ns6gpY7VW3" role="33vP2m">
                        <node concept="2OqwBi" id="1Ns6gpY7VW4" role="2Oq$k0">
                          <node concept="37vLTw" id="1Ns6gpY7VW5" role="2Oq$k0">
                            <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                          </node>
                          <node concept="liA8E" id="1Ns6gpY7VW6" role="2OqNvi">
                            <ref role="37wK5l" to="jfki:~Substitution.Binding.node()" resolve="node" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1Ns6gpY7VW7" role="2OqNvi">
                          <ref role="37wK5l" to="jfki:~Node.asVar()" resolve="asVar" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="6SkxsMzEXSV" role="3cqZAp">
                    <node concept="3cpWsn" id="6SkxsMzEXSW" role="3cpWs9">
                      <property role="TrG5h" value="nodeLogical" />
                      <node concept="3uibUv" id="6SkxsMzEXSX" role="1tU5fm">
                        <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
                      </node>
                      <node concept="2OqwBi" id="1Ns6gpY7Z4h" role="33vP2m">
                        <node concept="1eOMI4" id="1Ns6gpY7Y34" role="2Oq$k0">
                          <node concept="10QFUN" id="1Ns6gpY7Y31" role="1eOMHV">
                            <node concept="3uibUv" id="1Ns6gpY7Y42" role="10QFUM">
                              <ref role="3uigEE" node="1Ns6gpY6jYh" resolve="TreeLogicalVar" />
                            </node>
                            <node concept="37vLTw" id="1Ns6gpY7Yti" role="10QFUP">
                              <ref role="3cqZAo" node="1Ns6gpY7VW2" resolve="nvar" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="1Ns6gpY7ZGe" role="2OqNvi">
                          <ref role="37wK5l" node="1Ns6gpY7Ay2" resolve="treeLogical" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6SkxsMzF0u3" role="3cqZAp">
                    <node concept="1rXfSq" id="6SkxsMzF0u2" role="3clFbG">
                      <ref role="37wK5l" node="4U_yxogC05I" resolve="tellUni" />
                      <node concept="37vLTw" id="6SkxsMzF0Vs" role="37wK5m">
                        <ref role="3cqZAo" node="6SkxsMzDQjQ" resolve="bvarLogical" />
                      </node>
                      <node concept="37vLTw" id="6SkxsMzF1ft" role="37wK5m">
                        <ref role="3cqZAo" node="6SkxsMzEXSW" resolve="nodeLogical" />
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
              <ref role="3uigEE" to="jfki:~Substitution.Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="6SkxsMzDp2d" role="1DdaDG">
            <node concept="37vLTw" id="6SkxsMzDp2e" role="2Oq$k0">
              <ref role="3cqZAo" node="6SkxsMzDnLJ" resolve="subs" />
            </node>
            <node concept="liA8E" id="6SkxsMzDp2f" role="2OqNvi">
              <ref role="37wK5l" to="jfki:~Substitution.bindings()" resolve="bindings" />
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogBZ9l" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogBZsK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="4U_yxogBZsL" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="3uibUv" id="4U_yxogBZsM" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogBZsN" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogBZCz" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogBZsP" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogBZsQ" role="1B3o_S" />
      <node concept="2AHcQZ" id="4U_yxogBZsR" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4U_yxogBZsS" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Tells.value()" resolve="value" />
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogBZsJ" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogBZLB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="4U_yxogBZLE" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogBZLF" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogBZLC" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="3uibUv" id="4U_yxogBZLD" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogBZLG" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogBZLH" role="1B3o_S" />
      <node concept="2AHcQZ" id="4U_yxogBZLI" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4U_yxogBZLJ" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Tells.value()" resolve="value" />
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
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$qfYf" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$qfYg" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogBZLE" resolve="left" />
              </node>
              <node concept="liA8E" id="7d$oK1$qfYh" role="2OqNvi">
                <ref role="37wK5l" node="4U_yxogCtqr" resolve="findTree" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1bm7a6EV0yc" role="3cqZAp" />
        <node concept="3clFbJ" id="1bm7a6EV0XB" role="3cqZAp">
          <node concept="3clFbS" id="1bm7a6EV0XC" role="3clFbx">
            <node concept="3clFbF" id="1bm7a6EV0XD" role="3cqZAp">
              <node concept="2YIFZM" id="1bm7a6FeHva" role="3clFbG">
                <ref role="37wK5l" to="7uia:~ConstraintSystemUtil.queue(ConstraintSystem,Runnable)" resolve="queue" />
                <ref role="1Pybhc" to="7uia:~ConstraintSystemUtil" resolve="ConstraintSystemUtil" />
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
              <ref role="37wK5l" to="w2rx:~ConstraintSystem.isQueuing():boolean" resolve="isQueuing" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1bm7a6EV0zi" role="3cqZAp" />
        <node concept="3cpWs8" id="1bm7a6EUZWd" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6EUZWe" role="3cpWs9">
            <property role="TrG5h" value="leftVal" />
            <node concept="3uibUv" id="1bm7a6EUZW9" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2OqwBi" id="1bm7a6EUZWf" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$qgWW" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$qfYd" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6EUZWh" role="2OqNvi">
                <ref role="37wK5l" node="4U_yxogCK9D" resolve="value" />
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
                  <ref role="37wK5l" node="1bm7a6ETW$4" resolve="setValue" />
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
                  <ref role="37wK5l" to="w2rx:~Logical.rehashAllAndDispose():void" resolve="rehashAllAndDispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7d$oK1$raE$" role="3cqZAp" />
            <node concept="3SKdUt" id="7d$oK1$r7D0" role="3cqZAp">
              <node concept="3SKdUq" id="7d$oK1$r7Gh" role="3SKWNk">
                <property role="3SKdUp" value="TODO: check the invariants of leftRepr" />
              </node>
            </node>
            <node concept="3clFbF" id="1bm7a6EV64T" role="3cqZAp">
              <node concept="1rXfSq" id="1bm7a6EV64U" role="3clFbG">
                <ref role="37wK5l" node="1bm7a6EUbso" resolve="reactivateAndClearObservers" />
                <node concept="37vLTw" id="7d$oK1$qic8" role="37wK5m">
                  <ref role="3cqZAo" node="7d$oK1$qfYd" resolve="leftRepr" />
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogBZLA" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogC05I" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="4U_yxogC05J" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogC05K" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogC0jU" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogC0jV" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogC05N" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogC05O" role="1B3o_S" />
      <node concept="2AHcQZ" id="4U_yxogC05P" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4U_yxogC05Q" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Tells.value()" resolve="value" />
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
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$rAnG" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rAnH" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogC05J" resolve="left" />
              </node>
              <node concept="liA8E" id="7d$oK1$rAnI" role="2OqNvi">
                <ref role="37wK5l" node="4U_yxogCtqr" resolve="findTree" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7d$oK1$rAnJ" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$rAnK" role="3cpWs9">
            <property role="TrG5h" value="rightRepr" />
            <node concept="3uibUv" id="7d$oK1$rAnL" role="1tU5fm">
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$rAnM" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rAnN" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogC0jU" resolve="right" />
              </node>
              <node concept="liA8E" id="7d$oK1$rAnO" role="2OqNvi">
                <ref role="37wK5l" node="4U_yxogCtqr" resolve="findTree" />
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
                <ref role="37wK5l" to="7uia:~ConstraintSystemUtil.queue(ConstraintSystem,Runnable)" resolve="queue" />
                <ref role="1Pybhc" to="7uia:~ConstraintSystemUtil" resolve="ConstraintSystemUtil" />
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
              <ref role="37wK5l" to="w2rx:~ConstraintSystem.isQueuing():boolean" resolve="isQueuing" />
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
                <ref role="37wK5l" node="1bm7a6ETjYA" resolve="rank" />
              </node>
            </node>
            <node concept="2OqwBi" id="1bm7a6ETDv8" role="3uHU7B">
              <node concept="37vLTw" id="7d$oK1$rCn4" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6ETDQM" role="2OqNvi">
                <ref role="37wK5l" node="1bm7a6ETjYA" resolve="rank" />
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
                  <ref role="37wK5l" node="1bm7a6ETngL" resolve="incRank" />
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
                <ref role="37wK5l" node="1bm7a6ETjYA" resolve="rank" />
              </node>
            </node>
            <node concept="2OqwBi" id="1bm7a6ETIAy" role="3uHU7B">
              <node concept="37vLTw" id="7d$oK1$rDE4" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6ETJ2Q" role="2OqNvi">
                <ref role="37wK5l" node="1bm7a6ETjYA" resolve="rank" />
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
              <ref role="37wK5l" node="1bm7a6ETxRD" resolve="setParent" />
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
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2OqwBi" id="1bm7a6ESoe2" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rESp" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6ESoe4" role="2OqNvi">
                <ref role="37wK5l" node="4U_yxogCK9D" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bm7a6ESoe5" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6ESoe6" role="3cpWs9">
            <property role="TrG5h" value="rightVal" />
            <node concept="3uibUv" id="1bm7a6ESoe7" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2OqwBi" id="1bm7a6ESoe8" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rKcs" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6ESoea" role="2OqNvi">
                <ref role="37wK5l" node="4U_yxogCK9D" resolve="value" />
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
                  <ref role="37wK5l" node="1bm7a6ETW$4" resolve="setValue" />
                  <node concept="2OqwBi" id="1bm7a6EU1P$" role="37wK5m">
                    <node concept="37vLTw" id="7d$oK1$rKDe" role="2Oq$k0">
                      <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                    </node>
                    <node concept="liA8E" id="1bm7a6EU2wg" role="2OqNvi">
                      <ref role="37wK5l" node="4U_yxogCK9D" resolve="value" />
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
                  <ref role="37wK5l" to="w2rx:~Logical.rehashAllAndDispose():void" resolve="rehashAllAndDispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1bm7a6EU3$B" role="3cqZAp" />
            <node concept="3clFbF" id="1bm7a6EUnRb" role="3cqZAp">
              <node concept="1rXfSq" id="1bm7a6EUnRa" role="3clFbG">
                <ref role="37wK5l" node="1bm7a6EUbso" resolve="reactivateAndClearObservers" />
                <node concept="37vLTw" id="7d$oK1$rGM7" role="37wK5m">
                  <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
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
                    <ref role="37wK5l" node="1bm7a6ETW$4" resolve="setValue" />
                    <node concept="2OqwBi" id="1bm7a6EUzCc" role="37wK5m">
                      <node concept="37vLTw" id="7d$oK1$rHET" role="2Oq$k0">
                        <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                      </node>
                      <node concept="liA8E" id="1bm7a6EUzCe" role="2OqNvi">
                        <ref role="37wK5l" node="4U_yxogCK9D" resolve="value" />
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
                    <ref role="37wK5l" to="w2rx:~Logical.rehashAllAndDispose():void" resolve="rehashAllAndDispose" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1bm7a6EUzC3" role="3cqZAp" />
              <node concept="3clFbF" id="1bm7a6EUzC0" role="3cqZAp">
                <node concept="1rXfSq" id="1bm7a6EUzC1" role="3clFbG">
                  <ref role="37wK5l" node="1bm7a6EUbso" resolve="reactivateAndClearObservers" />
                  <node concept="37vLTw" id="7d$oK1$rLRu" role="37wK5m">
                    <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogC05H" role="jymVt" />
    <node concept="3clFb_" id="6GYQG_SpvAS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="6GYQG_SpvAT" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="3uibUv" id="6GYQG_SpvAU" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="6GYQG_SpvAV" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="3uibUv" id="6GYQG_SpvAW" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogC8WW" role="3clF45" />
      <node concept="3Tm1VV" id="6GYQG_SpvAY" role="1B3o_S" />
      <node concept="2AHcQZ" id="6GYQG_SpvB0" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6GYQG_SpvB1" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6GYQG_SpvB2" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6GYQG_SpvB3" role="3clF47">
        <node concept="3clFbH" id="6SkxsM$2jBf" role="3cqZAp" />
        <node concept="3SKdUt" id="6SkxsMzGv6t" role="3cqZAp">
          <node concept="3SKdUq" id="6SkxsMzGv6u" role="3SKWNk">
            <property role="3SKdUp" value="TODO: avoid duplicate code" />
          </node>
        </node>
        <node concept="3cpWs8" id="6SkxsMzGv6v" role="3cqZAp">
          <node concept="3cpWsn" id="6SkxsMzGv6w" role="3cpWs9">
            <property role="TrG5h" value="subs" />
            <node concept="3uibUv" id="6SkxsMzGv6x" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution" resolve="Substitution" />
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
        <node concept="3clFbJ" id="6SkxsMzGv6B" role="3cqZAp">
          <node concept="3clFbS" id="6SkxsMzGv6C" role="3clFbx">
            <node concept="3cpWs6" id="6SkxsMzGv6D" role="3cqZAp">
              <node concept="3clFbT" id="6SkxsMzGv6E" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6SkxsMzGv6F" role="3clFbw">
            <node concept="2OqwBi" id="6SkxsMzGv6G" role="3fr31v">
              <node concept="37vLTw" id="6SkxsMzGv6H" role="2Oq$k0">
                <ref role="3cqZAo" node="6SkxsMzGv6w" resolve="subs" />
              </node>
              <node concept="liA8E" id="6SkxsMzGv6I" role="2OqNvi">
                <ref role="37wK5l" to="jfki:~Substitution.isSuccessful()" resolve="isSuccessful" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6SkxsMzGv6J" role="3cqZAp" />
        <node concept="1DcWWT" id="6SkxsMzGv6K" role="3cqZAp">
          <node concept="3clFbS" id="6SkxsMzGv6L" role="2LFqv$">
            <node concept="3cpWs8" id="1Ns6gpY89de" role="3cqZAp">
              <node concept="3cpWsn" id="1Ns6gpY89df" role="3cpWs9">
                <property role="TrG5h" value="bvar" />
                <node concept="3uibUv" id="1Ns6gpY89db" role="1tU5fm">
                  <ref role="3uigEE" to="jfki:~Var" resolve="Var" />
                </node>
                <node concept="2OqwBi" id="1Ns6gpY89dg" role="33vP2m">
                  <node concept="37vLTw" id="1Ns6gpY89dh" role="2Oq$k0">
                    <ref role="3cqZAo" node="6SkxsMzGv7V" resolve="bnd" />
                  </node>
                  <node concept="liA8E" id="1Ns6gpY89di" role="2OqNvi">
                    <ref role="37wK5l" to="jfki:~Substitution.Binding.var()" resolve="var" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6SkxsMzGv6M" role="3cqZAp">
              <node concept="3cpWsn" id="6SkxsMzGv6N" role="3cpWs9">
                <property role="TrG5h" value="leftSubVar" />
                <node concept="3uibUv" id="6SkxsMzGv6O" role="1tU5fm">
                  <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
                </node>
                <node concept="2OqwBi" id="1Ns6gpY8cwu" role="33vP2m">
                  <node concept="1eOMI4" id="1Ns6gpY8br5" role="2Oq$k0">
                    <node concept="10QFUN" id="1Ns6gpY8br2" role="1eOMHV">
                      <node concept="3uibUv" id="1Ns6gpY8buh" role="10QFUM">
                        <ref role="3uigEE" node="1Ns6gpY6jYh" resolve="TreeLogicalVar" />
                      </node>
                      <node concept="37vLTw" id="1Ns6gpY8bSX" role="10QFUP">
                        <ref role="3cqZAo" node="1Ns6gpY89df" resolve="bvar" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1Ns6gpY8d9H" role="2OqNvi">
                    <ref role="37wK5l" node="1Ns6gpY7Ay2" resolve="treeLogical" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6SkxsMzGv6V" role="3cqZAp" />
            <node concept="3clFbJ" id="6SkxsMzGv6W" role="3cqZAp">
              <node concept="2OqwBi" id="6SkxsMzGv7s" role="3clFbw">
                <node concept="2OqwBi" id="6SkxsMzGv7t" role="2Oq$k0">
                  <node concept="37vLTw" id="6SkxsMzGv7u" role="2Oq$k0">
                    <ref role="3cqZAo" node="6SkxsMzGv7V" resolve="bnd" />
                  </node>
                  <node concept="liA8E" id="6SkxsMzGv7v" role="2OqNvi">
                    <ref role="37wK5l" to="jfki:~Substitution.Binding.node()" resolve="node" />
                  </node>
                </node>
                <node concept="liA8E" id="6SkxsMzGv7w" role="2OqNvi">
                  <ref role="37wK5l" to="jfki:~Node.isTerm()" resolve="isTerm" />
                </node>
              </node>
              <node concept="3clFbS" id="6SkxsMzGv7x" role="3clFbx">
                <node concept="3SKdUt" id="6SkxsMzGv7y" role="3cqZAp">
                  <node concept="3SKdUq" id="6SkxsMzGv7z" role="3SKWNk">
                    <property role="3SKdUp" value="TODO: unchecked cast smells" />
                  </node>
                </node>
                <node concept="3cpWs8" id="6SkxsMzGv7$" role="3cqZAp">
                  <node concept="3cpWsn" id="6SkxsMzGv7_" role="3cpWs9">
                    <property role="TrG5h" value="subValue" />
                    <node concept="3uibUv" id="6SkxsMzGv7A" role="1tU5fm">
                      <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                    </node>
                    <node concept="2YIFZM" id="6SkxsMzGv7B" role="33vP2m">
                      <ref role="37wK5l" to="ie8e:5JQSuNsxMzt" resolve="create" />
                      <ref role="1Pybhc" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                      <node concept="2OqwBi" id="6SkxsMzGv7C" role="37wK5m">
                        <node concept="1eOMI4" id="6SkxsMzGv7D" role="2Oq$k0">
                          <node concept="10QFUN" id="6SkxsMzGv7E" role="1eOMHV">
                            <node concept="3uibUv" id="6SkxsMzGv7F" role="10QFUM">
                              <ref role="3uigEE" to="ie8e:1msb0mq9ID4" resolve="Branch" />
                              <node concept="3uibUv" id="6SkxsMzGv7G" role="11_B2D">
                                <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6SkxsMzGv7H" role="10QFUP">
                              <node concept="37vLTw" id="6SkxsMzGv7I" role="2Oq$k0">
                                <ref role="3cqZAo" node="6SkxsMzGv7V" resolve="bnd" />
                              </node>
                              <node concept="liA8E" id="6SkxsMzGv7J" role="2OqNvi">
                                <ref role="37wK5l" to="jfki:~Substitution.Binding.node()" resolve="node" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6SkxsMzGv7K" role="2OqNvi">
                          <ref role="37wK5l" to="ie8e:1bm7a6EYD0x" resolve="copyRecursively" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6SkxsMzGv7L" role="3cqZAp" />
                <node concept="3clFbJ" id="6SkxsMzGv7M" role="3cqZAp">
                  <node concept="3clFbS" id="6SkxsMzGv7N" role="3clFbx">
                    <node concept="3cpWs6" id="6SkxsMzGv7O" role="3cqZAp">
                      <node concept="3clFbT" id="6SkxsMzGv7P" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="6SkxsMzGv7Q" role="3clFbw">
                    <node concept="1rXfSq" id="6SkxsMzGv7R" role="3fr31v">
                      <ref role="37wK5l" node="4U_yxogC1Eh" resolve="askUni" />
                      <node concept="37vLTw" id="6SkxsMzGv7S" role="37wK5m">
                        <ref role="3cqZAo" node="6SkxsMzGv6N" resolve="leftSubVar" />
                      </node>
                      <node concept="37vLTw" id="6SkxsMzGv7T" role="37wK5m">
                        <ref role="3cqZAo" node="6SkxsMzGv7_" resolve="subValue" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6SkxsMzGv7V" role="1Duv9x">
            <property role="TrG5h" value="bnd" />
            <node concept="3uibUv" id="6SkxsMzGv7W" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution.Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="6SkxsMzGv7X" role="1DdaDG">
            <node concept="37vLTw" id="6SkxsMzGv7Y" role="2Oq$k0">
              <ref role="3cqZAo" node="6SkxsMzGv6w" resolve="subs" />
            </node>
            <node concept="liA8E" id="6SkxsMzGv7Z" role="2OqNvi">
              <ref role="37wK5l" to="jfki:~Substitution.bindings()" resolve="bindings" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6SkxsMzGv80" role="3cqZAp">
          <node concept="3clFbT" id="6SkxsMzGv81" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4U_yxogCi8v" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogC15$" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogC1eF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="4U_yxogC1eG" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="3uibUv" id="4U_yxogC1eH" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogC1eI" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogC1uU" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogC8Kd" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogC1eL" role="1B3o_S" />
      <node concept="2AHcQZ" id="4U_yxogC1eM" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4U_yxogC1eN" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Asks.value()" resolve="value" />
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogC1eE" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogC1Eh" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="4U_yxogC1Ek" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogC1El" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogC1Ei" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="3uibUv" id="4U_yxogC1Ej" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogC8y$" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogC1En" role="1B3o_S" />
      <node concept="2AHcQZ" id="4U_yxogC1Eo" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4U_yxogC1Ep" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Asks.value()" resolve="value" />
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
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="2OqwBi" id="4U_yxogDnOl" role="33vP2m">
              <node concept="37vLTw" id="4U_yxogDock" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogC1Ek" resolve="left" />
              </node>
              <node concept="liA8E" id="4U_yxogDnOn" role="2OqNvi">
                <ref role="37wK5l" node="4U_yxogCtqr" resolve="findTree" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4U_yxogDnOo" role="3cqZAp" />
        <node concept="3clFbJ" id="4U_yxogDnOp" role="3cqZAp">
          <node concept="3clFbS" id="4U_yxogDnOq" role="3clFbx">
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
                <ref role="37wK5l" node="4U_yxogCK9D" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6SkxsMzGbYZ" role="3cqZAp" />
        <node concept="3SKdUt" id="6SkxsMzGnLf" role="3cqZAp">
          <node concept="3SKdUq" id="6SkxsMzGoAw" role="3SKWNk">
            <property role="3SKdUp" value="TODO: avoid duplicate code" />
          </node>
        </node>
        <node concept="3cpWs8" id="6SkxsMzGc5v" role="3cqZAp">
          <node concept="3cpWsn" id="6SkxsMzGc5w" role="3cpWs9">
            <property role="TrG5h" value="subs" />
            <node concept="3uibUv" id="6SkxsMzGc5x" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution" resolve="Substitution" />
            </node>
            <node concept="1rXfSq" id="6SkxsMzGc5y" role="33vP2m">
              <ref role="37wK5l" node="4U_yxogCRUf" resolve="unify" />
              <node concept="2OqwBi" id="6SkxsMzGc5z" role="37wK5m">
                <node concept="37vLTw" id="6SkxsMzGc5$" role="2Oq$k0">
                  <ref role="3cqZAo" node="4U_yxogC1Ek" resolve="left" />
                </node>
                <node concept="liA8E" id="6SkxsMzGc5_" role="2OqNvi">
                  <ref role="37wK5l" node="4U_yxogCK9D" resolve="value" />
                </node>
              </node>
              <node concept="37vLTw" id="6SkxsMzGc5B" role="37wK5m">
                <ref role="3cqZAo" node="4U_yxogC1Ei" resolve="rightVal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6SkxsMzGc5D" role="3cqZAp">
          <node concept="3clFbS" id="6SkxsMzGc5E" role="3clFbx">
            <node concept="3cpWs6" id="6SkxsMzGc5F" role="3cqZAp">
              <node concept="3clFbT" id="6SkxsMzGc5G" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6SkxsMzGc5H" role="3clFbw">
            <node concept="2OqwBi" id="6SkxsMzGc5I" role="3fr31v">
              <node concept="37vLTw" id="6SkxsMzGc5J" role="2Oq$k0">
                <ref role="3cqZAo" node="6SkxsMzGc5w" resolve="subs" />
              </node>
              <node concept="liA8E" id="6SkxsMzGc5K" role="2OqNvi">
                <ref role="37wK5l" to="jfki:~Substitution.isSuccessful()" resolve="isSuccessful" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6SkxsMzGc5L" role="3cqZAp" />
        <node concept="1DcWWT" id="6SkxsMzGc5M" role="3cqZAp">
          <node concept="3clFbS" id="6SkxsMzGc5N" role="2LFqv$">
            <node concept="3cpWs8" id="1Ns6gpY8dJC" role="3cqZAp">
              <node concept="3cpWsn" id="1Ns6gpY8dJD" role="3cpWs9">
                <property role="TrG5h" value="bvar" />
                <node concept="3uibUv" id="1Ns6gpY8dJ$" role="1tU5fm">
                  <ref role="3uigEE" to="jfki:~Var" resolve="Var" />
                </node>
                <node concept="2OqwBi" id="1Ns6gpY8dJE" role="33vP2m">
                  <node concept="37vLTw" id="1Ns6gpY8dJF" role="2Oq$k0">
                    <ref role="3cqZAo" node="6SkxsMzGc6X" resolve="bnd" />
                  </node>
                  <node concept="liA8E" id="1Ns6gpY8dJG" role="2OqNvi">
                    <ref role="37wK5l" to="jfki:~Substitution.Binding.var()" resolve="var" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6SkxsMzGc5O" role="3cqZAp">
              <node concept="3cpWsn" id="6SkxsMzGc5P" role="3cpWs9">
                <property role="TrG5h" value="leftSubVar" />
                <node concept="3uibUv" id="6SkxsMzGc5Q" role="1tU5fm">
                  <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
                </node>
                <node concept="2OqwBi" id="1Ns6gpY8ibq" role="33vP2m">
                  <node concept="1eOMI4" id="1Ns6gpY8h2Z" role="2Oq$k0">
                    <node concept="10QFUN" id="1Ns6gpY8h2W" role="1eOMHV">
                      <node concept="3uibUv" id="1Ns6gpY8h6f" role="10QFUM">
                        <ref role="3uigEE" node="1Ns6gpY6jYh" resolve="TreeLogicalVar" />
                      </node>
                      <node concept="37vLTw" id="1Ns6gpY8hvn" role="10QFUP">
                        <ref role="3cqZAo" node="1Ns6gpY8dJD" resolve="bvar" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1Ns6gpY8iNR" role="2OqNvi">
                    <ref role="37wK5l" node="1Ns6gpY7Ay2" resolve="treeLogical" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6SkxsMzGc5X" role="3cqZAp" />
            <node concept="3clFbJ" id="6SkxsMzGc5Y" role="3cqZAp">
              <node concept="2OqwBi" id="6SkxsMzGc6u" role="3clFbw">
                <node concept="2OqwBi" id="6SkxsMzGc6v" role="2Oq$k0">
                  <node concept="37vLTw" id="6SkxsMzGc6w" role="2Oq$k0">
                    <ref role="3cqZAo" node="6SkxsMzGc6X" resolve="bnd" />
                  </node>
                  <node concept="liA8E" id="6SkxsMzGc6x" role="2OqNvi">
                    <ref role="37wK5l" to="jfki:~Substitution.Binding.node()" resolve="node" />
                  </node>
                </node>
                <node concept="liA8E" id="6SkxsMzGc6y" role="2OqNvi">
                  <ref role="37wK5l" to="jfki:~Node.isTerm()" resolve="isTerm" />
                </node>
              </node>
              <node concept="3clFbS" id="6SkxsMzGc6z" role="3clFbx">
                <node concept="3SKdUt" id="6SkxsMzGc6$" role="3cqZAp">
                  <node concept="3SKdUq" id="6SkxsMzGc6_" role="3SKWNk">
                    <property role="3SKdUp" value="TODO: unchecked cast smells" />
                  </node>
                </node>
                <node concept="3cpWs8" id="6SkxsMzGc6A" role="3cqZAp">
                  <node concept="3cpWsn" id="6SkxsMzGc6B" role="3cpWs9">
                    <property role="TrG5h" value="subValue" />
                    <node concept="3uibUv" id="6SkxsMzGc6C" role="1tU5fm">
                      <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                    </node>
                    <node concept="2YIFZM" id="6SkxsMzGc6D" role="33vP2m">
                      <ref role="37wK5l" to="ie8e:5JQSuNsxMzt" resolve="create" />
                      <ref role="1Pybhc" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                      <node concept="2OqwBi" id="6SkxsMzGc6E" role="37wK5m">
                        <node concept="1eOMI4" id="6SkxsMzGc6F" role="2Oq$k0">
                          <node concept="10QFUN" id="6SkxsMzGc6G" role="1eOMHV">
                            <node concept="3uibUv" id="6SkxsMzGc6H" role="10QFUM">
                              <ref role="3uigEE" to="ie8e:1msb0mq9ID4" resolve="Branch" />
                              <node concept="3uibUv" id="6SkxsMzGc6I" role="11_B2D">
                                <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6SkxsMzGc6J" role="10QFUP">
                              <node concept="37vLTw" id="6SkxsMzGc6K" role="2Oq$k0">
                                <ref role="3cqZAo" node="6SkxsMzGc6X" resolve="bnd" />
                              </node>
                              <node concept="liA8E" id="6SkxsMzGc6L" role="2OqNvi">
                                <ref role="37wK5l" to="jfki:~Substitution.Binding.node()" resolve="node" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6SkxsMzGc6M" role="2OqNvi">
                          <ref role="37wK5l" to="ie8e:1bm7a6EYD0x" resolve="copyRecursively" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6SkxsMzGc6N" role="3cqZAp" />
                <node concept="3clFbJ" id="6SkxsMzGc6O" role="3cqZAp">
                  <node concept="3clFbS" id="6SkxsMzGc6P" role="3clFbx">
                    <node concept="3cpWs6" id="6SkxsMzGc6Q" role="3cqZAp">
                      <node concept="3clFbT" id="6SkxsMzGc6R" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="6SkxsMzGc6S" role="3clFbw">
                    <node concept="1rXfSq" id="6SkxsMzGc6T" role="3fr31v">
                      <ref role="37wK5l" node="4U_yxogC1Eh" resolve="askUni" />
                      <node concept="37vLTw" id="6SkxsMzGc6U" role="37wK5m">
                        <ref role="3cqZAo" node="6SkxsMzGc5P" resolve="leftSubVar" />
                      </node>
                      <node concept="37vLTw" id="6SkxsMzGc6V" role="37wK5m">
                        <ref role="3cqZAo" node="6SkxsMzGc6B" resolve="subValue" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6SkxsMzGc6X" role="1Duv9x">
            <property role="TrG5h" value="bnd" />
            <node concept="3uibUv" id="6SkxsMzGc6Y" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution.Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="6SkxsMzGc6Z" role="1DdaDG">
            <node concept="37vLTw" id="6SkxsMzGc70" role="2Oq$k0">
              <ref role="3cqZAo" node="6SkxsMzGc5w" resolve="subs" />
            </node>
            <node concept="liA8E" id="6SkxsMzGc71" role="2OqNvi">
              <ref role="37wK5l" to="jfki:~Substitution.bindings()" resolve="bindings" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6SkxsMzGc72" role="3cqZAp">
          <node concept="3clFbT" id="6SkxsMzGc73" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4U_yxogCj6N" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogC1Eg" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogC2zx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="4U_yxogC2zy" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogC2zz" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogC2z$" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogC2QL" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogC8eN" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogC2zB" role="1B3o_S" />
      <node concept="2AHcQZ" id="4U_yxogC2zC" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4U_yxogC2zD" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogC2zE" role="2B70Vg">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4U_yxogC2zF" role="3clF47">
        <node concept="3clFbJ" id="4U_yxogC7xg" role="3cqZAp">
          <node concept="3clFbS" id="4U_yxogC7xh" role="3clFbx">
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
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$nL7H" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$nL7I" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogC2zy" resolve="left" />
              </node>
              <node concept="liA8E" id="7d$oK1$nL7J" role="2OqNvi">
                <ref role="37wK5l" node="4U_yxogCtqr" resolve="findTree" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7d$oK1$nLDM" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$nLDN" role="3cpWs9">
            <property role="TrG5h" value="rightRepr" />
            <node concept="3uibUv" id="7d$oK1$nLDO" role="1tU5fm">
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$nLDP" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$nLDQ" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogC2z$" resolve="right" />
              </node>
              <node concept="liA8E" id="7d$oK1$nLDR" role="2OqNvi">
                <ref role="37wK5l" node="4U_yxogCtqr" resolve="findTree" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4U_yxogCzG9" role="3cqZAp" />
        <node concept="3clFbJ" id="4U_yxogCA7q" role="3cqZAp">
          <node concept="3clFbS" id="4U_yxogCA7t" role="3clFbx">
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
        <node concept="3clFbH" id="4U_yxogCPKx" role="3cqZAp" />
        <node concept="3clFbJ" id="5oZZzbrizbG" role="3cqZAp">
          <node concept="3clFbS" id="5oZZzbrizbH" role="3clFbx">
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
                  <ref role="37wK5l" node="4U_yxogCK9D" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="5oZZzbrizbQ" role="3uHU7B">
              <node concept="2OqwBi" id="5oZZzbrizbR" role="3uHU7B">
                <node concept="37vLTw" id="7d$oK1$oiZM" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="5oZZzbrizbT" role="2OqNvi">
                  <ref role="37wK5l" node="4U_yxogCK9D" resolve="value" />
                </node>
              </node>
              <node concept="10Nm6u" id="5oZZzbrizbU" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4U_yxogDeXH" role="3cqZAp" />
        <node concept="3SKdUt" id="6SkxsMzGqin" role="3cqZAp">
          <node concept="3SKdUq" id="6SkxsMzGr9_" role="3SKWNk">
            <property role="3SKdUp" value="TODO: avoid duplicate code" />
          </node>
        </node>
        <node concept="3cpWs8" id="1bm7a6EWb4q" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6EWb4r" role="3cpWs9">
            <property role="TrG5h" value="subs" />
            <node concept="3uibUv" id="1bm7a6EWb4m" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution" resolve="Substitution" />
            </node>
            <node concept="1rXfSq" id="1bm7a6EWb4s" role="33vP2m">
              <ref role="37wK5l" node="4U_yxogCRUf" resolve="unify" />
              <node concept="2OqwBi" id="1bm7a6EWb4t" role="37wK5m">
                <node concept="37vLTw" id="7d$oK1$okp6" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="1bm7a6EWb4v" role="2OqNvi">
                  <ref role="37wK5l" node="4U_yxogCK9D" resolve="value" />
                </node>
              </node>
              <node concept="2OqwBi" id="1bm7a6EWb4w" role="37wK5m">
                <node concept="37vLTw" id="7d$oK1$okSZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
                </node>
                <node concept="liA8E" id="1bm7a6EWb4y" role="2OqNvi">
                  <ref role="37wK5l" node="4U_yxogCK9D" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1bm7a6EWcGo" role="3cqZAp">
          <node concept="3clFbS" id="1bm7a6EWcGr" role="3clFbx">
            <node concept="3cpWs6" id="1bm7a6EWgqZ" role="3cqZAp">
              <node concept="3clFbT" id="1bm7a6EWgHI" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="1bm7a6EWgdw" role="3clFbw">
            <node concept="2OqwBi" id="1bm7a6EWgjb" role="3fr31v">
              <node concept="37vLTw" id="1bm7a6EWghI" role="2Oq$k0">
                <ref role="3cqZAo" node="1bm7a6EWb4r" resolve="subs" />
              </node>
              <node concept="liA8E" id="1bm7a6EWgpE" role="2OqNvi">
                <ref role="37wK5l" to="jfki:~Substitution.isSuccessful()" resolve="isSuccessful" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1bm7a6EWhXT" role="3cqZAp" />
        <node concept="1DcWWT" id="1bm7a6EWkgA" role="3cqZAp">
          <node concept="3clFbS" id="1bm7a6EWkgB" role="2LFqv$">
            <node concept="3cpWs8" id="1Ns6gpY80iP" role="3cqZAp">
              <node concept="3cpWsn" id="1Ns6gpY80iQ" role="3cpWs9">
                <property role="TrG5h" value="bvar" />
                <node concept="3uibUv" id="1Ns6gpY80iL" role="1tU5fm">
                  <ref role="3uigEE" to="jfki:~Var" resolve="Var" />
                </node>
                <node concept="2OqwBi" id="1Ns6gpY80iR" role="33vP2m">
                  <node concept="37vLTw" id="1Ns6gpY80iS" role="2Oq$k0">
                    <ref role="3cqZAo" node="1bm7a6EWkgE" resolve="bnd" />
                  </node>
                  <node concept="liA8E" id="1Ns6gpY80iT" role="2OqNvi">
                    <ref role="37wK5l" to="jfki:~Substitution.Binding.var()" resolve="var" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1bm7a6EWyIB" role="3cqZAp">
              <node concept="3cpWsn" id="1bm7a6EWyIC" role="3cpWs9">
                <property role="TrG5h" value="leftSubVar" />
                <node concept="3uibUv" id="1bm7a6EWyIx" role="1tU5fm">
                  <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
                </node>
                <node concept="2OqwBi" id="1Ns6gpY83_o" role="33vP2m">
                  <node concept="1eOMI4" id="1Ns6gpY82xf" role="2Oq$k0">
                    <node concept="10QFUN" id="1Ns6gpY82xc" role="1eOMHV">
                      <node concept="3uibUv" id="1Ns6gpY82$B" role="10QFUM">
                        <ref role="3uigEE" node="1Ns6gpY6jYh" resolve="TreeLogicalVar" />
                      </node>
                      <node concept="37vLTw" id="1Ns6gpY82WP" role="10QFUP">
                        <ref role="3cqZAo" node="1Ns6gpY80iQ" resolve="bvar" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1Ns6gpY84dX" role="2OqNvi">
                    <ref role="37wK5l" node="1Ns6gpY7Ay2" resolve="treeLogical" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6SkxsMzFVoA" role="3cqZAp" />
            <node concept="3clFbJ" id="1bm7a6EWwb$" role="3cqZAp">
              <node concept="2OqwBi" id="6SkxsMzF_FY" role="3clFbw">
                <node concept="2OqwBi" id="6SkxsMzF_z3" role="2Oq$k0">
                  <node concept="37vLTw" id="6SkxsMzF_y4" role="2Oq$k0">
                    <ref role="3cqZAo" node="1bm7a6EWkgE" resolve="bnd" />
                  </node>
                  <node concept="liA8E" id="6SkxsMzF_E7" role="2OqNvi">
                    <ref role="37wK5l" to="jfki:~Substitution.Binding.node()" resolve="node" />
                  </node>
                </node>
                <node concept="liA8E" id="6SkxsMzF_PD" role="2OqNvi">
                  <ref role="37wK5l" to="jfki:~Node.isTerm()" resolve="isTerm" />
                </node>
              </node>
              <node concept="3clFbS" id="6SkxsMzF$lU" role="3clFbx">
                <node concept="3SKdUt" id="6SkxsMzFNgD" role="3cqZAp">
                  <node concept="3SKdUq" id="6SkxsMzFNgE" role="3SKWNk">
                    <property role="3SKdUp" value="TODO: unchecked cast smells" />
                  </node>
                </node>
                <node concept="3cpWs8" id="6SkxsMzFNgF" role="3cqZAp">
                  <node concept="3cpWsn" id="6SkxsMzFNgG" role="3cpWs9">
                    <property role="TrG5h" value="subValue" />
                    <node concept="3uibUv" id="6SkxsMzFNgH" role="1tU5fm">
                      <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                    </node>
                    <node concept="2YIFZM" id="6SkxsMzFNgI" role="33vP2m">
                      <ref role="1Pybhc" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                      <ref role="37wK5l" to="ie8e:5JQSuNsxMzt" resolve="create" />
                      <node concept="2OqwBi" id="6SkxsMzFNgJ" role="37wK5m">
                        <node concept="1eOMI4" id="6SkxsMzFNgK" role="2Oq$k0">
                          <node concept="10QFUN" id="6SkxsMzFNgL" role="1eOMHV">
                            <node concept="3uibUv" id="6SkxsMzFNgM" role="10QFUM">
                              <ref role="3uigEE" to="ie8e:1msb0mq9ID4" resolve="Branch" />
                              <node concept="3uibUv" id="6SkxsMzFNgN" role="11_B2D">
                                <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6SkxsMzFNgO" role="10QFUP">
                              <node concept="37vLTw" id="6SkxsMzFNgP" role="2Oq$k0">
                                <ref role="3cqZAo" node="1bm7a6EWkgE" resolve="bnd" />
                              </node>
                              <node concept="liA8E" id="6SkxsMzFNgQ" role="2OqNvi">
                                <ref role="37wK5l" to="jfki:~Substitution.Binding.node()" resolve="node" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6SkxsMzFNgR" role="2OqNvi">
                          <ref role="37wK5l" to="ie8e:1bm7a6EYD0x" resolve="copyRecursively" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6SkxsMzFLUu" role="3cqZAp" />
                <node concept="3clFbJ" id="6SkxsMzFPGe" role="3cqZAp">
                  <node concept="3clFbS" id="6SkxsMzFPGh" role="3clFbx">
                    <node concept="3cpWs6" id="6SkxsMzFRkM" role="3cqZAp">
                      <node concept="3clFbT" id="6SkxsMzFSyV" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="6SkxsMzFPKU" role="3clFbw">
                    <node concept="1rXfSq" id="6SkxsMzFPNH" role="3fr31v">
                      <ref role="37wK5l" node="4U_yxogC1Eh" resolve="askUni" />
                      <node concept="37vLTw" id="6SkxsMzFQcY" role="37wK5m">
                        <ref role="3cqZAo" node="1bm7a6EWyIC" resolve="leftSubVar" />
                      </node>
                      <node concept="37vLTw" id="6SkxsMzFQz0" role="37wK5m">
                        <ref role="3cqZAo" node="6SkxsMzFNgG" resolve="subValue" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1bm7a6EWkgE" role="1Duv9x">
            <property role="TrG5h" value="bnd" />
            <node concept="3uibUv" id="1bm7a6EWkgI" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution.Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="1bm7a6EWkgJ" role="1DdaDG">
            <node concept="37vLTw" id="1bm7a6EWkgK" role="2Oq$k0">
              <ref role="3cqZAo" node="1bm7a6EWb4r" resolve="subs" />
            </node>
            <node concept="liA8E" id="1bm7a6EWkgL" role="2OqNvi">
              <ref role="37wK5l" to="jfki:~Substitution.bindings()" resolve="bindings" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1bm7a6EWoWR" role="3cqZAp">
          <node concept="3clFbT" id="1bm7a6EWpkz" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogC2zw" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogCRUf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="unify" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="4U_yxogD4ia" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogD4QV" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogD5pj" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogD5Xk" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="3clFbS" id="4U_yxogCRUi" role="3clF47">
        <node concept="3clFbF" id="4U_yxogD8__" role="3cqZAp">
          <node concept="2YIFZM" id="1R$Cm9qAcFk" role="3clFbG">
            <ref role="1Pybhc" to="jfki:~Unification" resolve="Unification" />
            <ref role="37wK5l" to="jfki:~Unification.unify(Node,Node)" resolve="unify" />
            <node concept="2OqwBi" id="1R$Cm9qAcFl" role="37wK5m">
              <node concept="37vLTw" id="4U_yxogDbAT" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogD4ia" resolve="left" />
              </node>
              <node concept="liA8E" id="1R$Cm9qAcFn" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
              </node>
            </node>
            <node concept="2OqwBi" id="1R$Cm9qAcFo" role="37wK5m">
              <node concept="37vLTw" id="4U_yxogDd13" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogD5pj" resolve="right" />
              </node>
              <node concept="liA8E" id="1R$Cm9qAcFq" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4U_yxogCQZy" role="1B3o_S" />
      <node concept="3uibUv" id="4U_yxogD3zx" role="3clF45">
        <ref role="3uigEE" to="jfki:~Substitution" resolve="Substitution" />
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
              <ref role="3uigEE" to="4pqn:~RehashableKeySet" resolve="RehashableKeySet" />
            </node>
            <node concept="2OqwBi" id="1bm7a6ESL5K" role="33vP2m">
              <node concept="37vLTw" id="1bm7a6ESL5L" role="2Oq$k0">
                <ref role="3cqZAo" node="1bm7a6ESq2C" resolve="mergeFrom" />
              </node>
              <node concept="liA8E" id="1bm7a6ESL5M" role="2OqNvi">
                <ref role="37wK5l" node="1bm7a6ESugA" resolve="hashObservers" />
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
                  <ref role="37wK5l" node="1bm7a6ESDes" resolve="clearHashObservers" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1bm7a6ESy6$" role="3cqZAp">
              <node concept="2OqwBi" id="1bm7a6ESybn" role="3clFbG">
                <node concept="37vLTw" id="1bm7a6ESy6z" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bm7a6ESqut" resolve="mergeInto" />
                </node>
                <node concept="liA8E" id="1bm7a6ESyv3" role="2OqNvi">
                  <ref role="37wK5l" to="w2rx:~Logical.mergeHashObservers(runtime.hash.RehashableKeySet):void" resolve="mergeHashObservers" />
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
              <ref role="3uigEE" to="w2rx:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
              <node concept="3uibUv" id="1bm7a6ESLi7" role="11_B2D">
                <ref role="3uigEE" to="w2rx:~Constraint" resolve="Constraint" />
              </node>
            </node>
            <node concept="2OqwBi" id="1bm7a6ESLig" role="33vP2m">
              <node concept="37vLTw" id="1bm7a6ESLih" role="2Oq$k0">
                <ref role="3cqZAo" node="1bm7a6ESq2C" resolve="mergeFrom" />
              </node>
              <node concept="liA8E" id="1bm7a6ESLii" role="2OqNvi">
                <ref role="37wK5l" node="1bm7a6ESv$e" resolve="variableObservers" />
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
                  <ref role="37wK5l" node="1bm7a6ESMnp" resolve="clearVariableObservers" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1bm7a6ESUiH" role="3cqZAp">
              <node concept="3cpWsn" id="1bm7a6ESUiI" role="3cpWs9">
                <property role="TrG5h" value="intoVObs" />
                <node concept="3uibUv" id="1bm7a6ESUhw" role="1tU5fm">
                  <ref role="3uigEE" to="w2rx:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
                  <node concept="3uibUv" id="1bm7a6ESUhz" role="11_B2D">
                    <ref role="3uigEE" to="w2rx:~Constraint" resolve="Constraint" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1bm7a6ESUiJ" role="33vP2m">
                  <node concept="37vLTw" id="1bm7a6ESV46" role="2Oq$k0">
                    <ref role="3cqZAo" node="1bm7a6ESqut" resolve="mergeInto" />
                  </node>
                  <node concept="liA8E" id="1bm7a6ESUiL" role="2OqNvi">
                    <ref role="37wK5l" node="1bm7a6ESv$e" resolve="variableObservers" />
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
                      <ref role="3uigEE" to="k7g3:~Iterator" resolve="Iterator" />
                      <node concept="3uibUv" id="1bm7a6ESWxE" role="11_B2D">
                        <ref role="3uigEE" to="w2rx:~Constraint" resolve="Constraint" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1bm7a6ESWxU" role="33vP2m">
                      <node concept="37vLTw" id="1bm7a6ESWxV" role="2Oq$k0">
                        <ref role="3cqZAo" node="1bm7a6ESUiI" resolve="intoVObs" />
                      </node>
                      <node concept="liA8E" id="1bm7a6ESWxW" role="2OqNvi">
                        <ref role="37wK5l" to="w2rx:~DoublyLinkedConstraintList.iterator():java.util.Iterator" resolve="iterator" />
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
                      <ref role="37wK5l" to="w2rx:~DoublyLinkedConstraintList.mergeWith(runtime.DoublyLinkedConstraintList):void" resolve="mergeWith" />
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
                            <ref role="37wK5l" to="k7g3:~Iterator.next():java.lang.Object" resolve="next" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1bm7a6ET29t" role="2OqNvi">
                          <ref role="37wK5l" to="w2rx:~Constraint.reactivate():void" resolve="reactivate" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1bm7a6ET0Ff" role="2$JKZa">
                    <node concept="37vLTw" id="1bm7a6ET0D5" role="2Oq$k0">
                      <ref role="3cqZAo" node="1bm7a6ESWxT" resolve="intoIt" />
                    </node>
                    <node concept="liA8E" id="1bm7a6ET12Q" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~Iterator.hasNext():boolean" resolve="hasNext" />
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
                        <ref role="37wK5l" node="1bm7a6ET3Qn" resolve="setVariableObservers" />
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
        <node concept="3uibUv" id="1bm7a6ESq2B" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="1bm7a6ESqut" role="3clF46">
        <property role="TrG5h" value="mergeInto" />
        <node concept="3uibUv" id="1bm7a6ESqRp" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6EU93j" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6EUbso" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="reactivateAndClearObservers" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1bm7a6EUbsr" role="3clF47">
        <node concept="3cpWs8" id="1bm7a6EUeCG" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6EUeCH" role="3cpWs9">
            <property role="TrG5h" value="vobs" />
            <node concept="3uibUv" id="1bm7a6EUeCy" role="1tU5fm">
              <ref role="3uigEE" to="w2rx:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
              <node concept="3uibUv" id="1bm7a6EUeC_" role="11_B2D">
                <ref role="3uigEE" to="w2rx:~Constraint" resolve="Constraint" />
              </node>
            </node>
            <node concept="2OqwBi" id="1bm7a6EUeCI" role="33vP2m">
              <node concept="37vLTw" id="1bm7a6EUeCJ" role="2Oq$k0">
                <ref role="3cqZAo" node="1bm7a6EUcAA" resolve="logical" />
              </node>
              <node concept="liA8E" id="1bm7a6EUeCK" role="2OqNvi">
                <ref role="37wK5l" node="1bm7a6ESv$e" resolve="variableObservers" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1bm7a6EUeNu" role="3cqZAp">
          <node concept="3clFbS" id="1bm7a6EUeNx" role="3clFbx">
            <node concept="3clFbF" id="1bm7a6EUj0N" role="3cqZAp">
              <node concept="2OqwBi" id="1bm7a6EUjau" role="3clFbG">
                <node concept="37vLTw" id="1bm7a6EUj0M" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bm7a6EUcAA" resolve="logical" />
                </node>
                <node concept="liA8E" id="1bm7a6EUjMU" role="2OqNvi">
                  <ref role="37wK5l" node="1bm7a6ESMnp" resolve="clearVariableObservers" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1bm7a6EUgjH" role="3cqZAp">
              <node concept="3cpWsn" id="1bm7a6EUgjI" role="3cpWs9">
                <property role="TrG5h" value="vobsIt" />
                <node concept="3uibUv" id="1bm7a6EUgj$" role="1tU5fm">
                  <ref role="3uigEE" to="k7g3:~Iterator" resolve="Iterator" />
                  <node concept="3uibUv" id="1bm7a6EUgjB" role="11_B2D">
                    <ref role="3uigEE" to="w2rx:~Constraint" resolve="Constraint" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1bm7a6EUgjJ" role="33vP2m">
                  <node concept="37vLTw" id="1bm7a6EUgjK" role="2Oq$k0">
                    <ref role="3cqZAo" node="1bm7a6EUeCH" resolve="vobs" />
                  </node>
                  <node concept="liA8E" id="1bm7a6EUgjL" role="2OqNvi">
                    <ref role="37wK5l" to="w2rx:~DoublyLinkedConstraintList.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="1bm7a6EUgFn" role="3cqZAp">
              <node concept="3clFbS" id="1bm7a6EUgFp" role="2LFqv$">
                <node concept="3clFbF" id="1bm7a6EUhpd" role="3cqZAp">
                  <node concept="2OqwBi" id="1bm7a6EUhQj" role="3clFbG">
                    <node concept="2OqwBi" id="1bm7a6EUhqB" role="2Oq$k0">
                      <node concept="37vLTw" id="1bm7a6EUhpc" role="2Oq$k0">
                        <ref role="3cqZAo" node="1bm7a6EUgjI" resolve="vobsIt" />
                      </node>
                      <node concept="liA8E" id="1bm7a6EUhLC" role="2OqNvi">
                        <ref role="37wK5l" to="k7g3:~Iterator.next():java.lang.Object" resolve="next" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1bm7a6EUiB6" role="2OqNvi">
                      <ref role="37wK5l" to="w2rx:~Constraint.reactivate():void" resolve="reactivate" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1bm7a6EUgMQ" role="2$JKZa">
                <node concept="37vLTw" id="1bm7a6EUgJM" role="2Oq$k0">
                  <ref role="3cqZAo" node="1bm7a6EUgjI" resolve="vobsIt" />
                </node>
                <node concept="liA8E" id="1bm7a6EUhas" role="2OqNvi">
                  <ref role="37wK5l" to="k7g3:~Iterator.hasNext():boolean" resolve="hasNext" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1bm7a6EUf5G" role="3clFbw">
            <node concept="10Nm6u" id="1bm7a6EUf7e" role="3uHU7w" />
            <node concept="37vLTw" id="1bm7a6EUePA" role="3uHU7B">
              <ref role="3cqZAo" node="1bm7a6EUeCH" resolve="vobs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="7d$oK1$qvIA" role="1B3o_S" />
      <node concept="3cqZAl" id="1bm7a6EUaVe" role="3clF45" />
      <node concept="37vLTG" id="1bm7a6EUcAA" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="1bm7a6EUcA_" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7d$oK1$qXWh" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6EU9jc" role="jymVt" />
    <node concept="312cEg" id="4U_yxogDGOE" role="jymVt">
      <property role="TrG5h" value="constraintSystem" />
      <node concept="3Tm6S6" id="4U_yxogDGOF" role="1B3o_S" />
      <node concept="3uibUv" id="4U_yxogDGOH" role="1tU5fm">
        <ref role="3uigEE" to="w2rx:~ConstraintSystem" resolve="ConstraintSystem" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4U_yxogAknZ">
    <property role="TrG5h" value="TreeLogical" />
    <node concept="2tJIrI" id="4U_yxogB9ZV" role="jymVt" />
    <node concept="3clFbW" id="4U_yxogBkww" role="jymVt">
      <node concept="3cqZAl" id="4U_yxogBkwx" role="3clF45" />
      <node concept="3clFbS" id="4U_yxogBkwz" role="3clF47">
        <node concept="XkiVB" id="4U_yxogBkBp" role="3cqZAp">
          <ref role="37wK5l" to="w2rx:~Logical.&lt;init&gt;()" resolve="Logical" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6SkxsM$bMnC" role="1B3o_S" />
      <node concept="2AHcQZ" id="6SkxsM$bLTa" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Declare" resolve="JCHR_Declare" />
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
          <ref role="37wK5l" to="w2rx:~Logical.&lt;init&gt;(java.lang.String)" resolve="Logical" />
          <node concept="37vLTw" id="6SkxsM$96Z8" role="37wK5m">
            <ref role="3cqZAo" node="6SkxsM$96Z3" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6SkxsM$bMwH" role="1B3o_S" />
      <node concept="2AHcQZ" id="6SkxsM$bM5w" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Declare" resolve="JCHR_Declare" />
      </node>
    </node>
    <node concept="2tJIrI" id="6SkxsM$96Z1" role="jymVt" />
    <node concept="3clFbW" id="6SkxsM$2Uu7" role="jymVt">
      <node concept="3cqZAl" id="6SkxsM$2Uua" role="3clF45" />
      <node concept="3clFbS" id="6SkxsM$2Uub" role="3clF47">
        <node concept="XkiVB" id="6SkxsM$301q" role="3cqZAp">
          <ref role="37wK5l" to="w2rx:~Logical.&lt;init&gt;(java.lang.Object)" resolve="Logical" />
          <node concept="37vLTw" id="6SkxsM$302O" role="37wK5m">
            <ref role="3cqZAo" node="6SkxsM$2XXX" resolve="tree" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6SkxsM$bMBA" role="1B3o_S" />
      <node concept="37vLTG" id="6SkxsM$2XXX" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="6SkxsM$2XXW" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6SkxsM$bMc$" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Init" resolve="JCHR_Init" />
      </node>
    </node>
    <node concept="2tJIrI" id="1GDBwhEEL81" role="jymVt" />
    <node concept="3clFbW" id="1GDBwhEEL82" role="jymVt">
      <node concept="3cqZAl" id="1GDBwhEEL83" role="3clF45" />
      <node concept="3clFbS" id="1GDBwhEEL84" role="3clF47">
        <node concept="XkiVB" id="1GDBwhEEL85" role="3cqZAp">
          <ref role="37wK5l" to="w2rx:~Logical.&lt;init&gt;(java.lang.String,java.lang.Object)" resolve="Logical" />
          <node concept="37vLTw" id="1GDBwhEEM8m" role="37wK5m">
            <ref role="3cqZAo" node="1GDBwhEEM36" resolve="name" />
          </node>
          <node concept="37vLTw" id="1GDBwhEEL86" role="37wK5m">
            <ref role="3cqZAo" node="1GDBwhEEL88" resolve="tree" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1GDBwhEEL87" role="1B3o_S" />
      <node concept="37vLTG" id="1GDBwhEEM36" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1GDBwhEEM3$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1GDBwhEEL88" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="1GDBwhEEL89" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1GDBwhEEL8a" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Init" resolve="JCHR_Init" />
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogCsEV" role="jymVt" />
    <node concept="3clFb_" id="dfChU1gcsX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="findRoot" />
      <node concept="3uibUv" id="dfChU1ks09" role="3clF45">
        <ref role="3uigEE" to="yg8f:dfChU1jXdE" resolve="ITreeLogical" />
      </node>
      <node concept="3Tm1VV" id="dfChU1gct0" role="1B3o_S" />
      <node concept="3clFbS" id="dfChU1gct6" role="3clF47">
        <node concept="3clFbF" id="dfChU1ggsh" role="3cqZAp">
          <node concept="1rXfSq" id="dfChU1ggsg" role="3clFbG">
            <ref role="37wK5l" node="4U_yxogCtqr" resolve="findTree" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="dfChU1gf8K" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="dfChU1gdQ7" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogCtqr" role="jymVt">
      <property role="TrG5h" value="findTree" />
      <node concept="3uibUv" id="4U_yxogCtVF" role="3clF45">
        <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
      </node>
      <node concept="3Tm1VV" id="4U_yxogCtqu" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogCtqv" role="3clF47">
        <node concept="3SKdUt" id="7d$oK1$nYjW" role="3cqZAp">
          <node concept="3SKdUq" id="7d$oK1$nYoP" role="3SKWNk">
            <property role="3SKdUp" value="TODO: rename to findTreeLogical()???" />
          </node>
        </node>
        <node concept="3clFbF" id="4U_yxogCuTs" role="3cqZAp">
          <node concept="10QFUN" id="4U_yxogCuTp" role="3clFbG">
            <node concept="3uibUv" id="4U_yxogCuYa" role="10QFUM">
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="1rXfSq" id="4U_yxogCvf2" role="10QFUP">
              <ref role="37wK5l" to="w2rx:~Logical.find():runtime.Logical" resolve="find" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Ns6gpY6S29" role="jymVt" />
    <node concept="3clFb_" id="1Ns6gpY6DeD" role="jymVt">
      <property role="TrG5h" value="asTreePart" />
      <node concept="3uibUv" id="1Ns6gpY6FOz" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
        <node concept="3qUE_q" id="1Ns6gpY6GI4" role="11_B2D">
          <node concept="3uibUv" id="1Ns6gpY6GIg" role="3qUE_r">
            <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Ns6gpY6DeG" role="1B3o_S" />
      <node concept="3clFbS" id="1Ns6gpY6DeH" role="3clF47">
        <node concept="3cpWs8" id="1Ns6gpY6Mhc" role="3cqZAp">
          <node concept="3cpWsn" id="1Ns6gpY6Mhd" role="3cpWs9">
            <property role="TrG5h" value="treeLogical" />
            <node concept="3uibUv" id="1Ns6gpY6Mhb" role="1tU5fm">
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="1rXfSq" id="1Ns6gpY6Mhe" role="33vP2m">
              <ref role="37wK5l" node="4U_yxogCtqr" resolve="findTree" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1Ns6gpY6Kc7" role="3cqZAp">
          <node concept="3cpWsn" id="1Ns6gpY6Kc8" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="3uibUv" id="1Ns6gpY6Kc9" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2OqwBi" id="1Ns6gpY6Kca" role="33vP2m">
              <node concept="37vLTw" id="1Ns6gpY6Kcb" role="2Oq$k0">
                <ref role="3cqZAo" node="1Ns6gpY6Mhd" resolve="treeLogical" />
              </node>
              <node concept="liA8E" id="1Ns6gpY6Kcc" role="2OqNvi">
                <ref role="37wK5l" node="4U_yxogCK9D" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1Ns6gpY6Kcd" role="3cqZAp">
          <node concept="3clFbS" id="1Ns6gpY6Kce" role="3clFbx">
            <node concept="3SKdUt" id="1Ns6gpY6Kcf" role="3cqZAp">
              <node concept="3SKdUq" id="1Ns6gpY6Kcg" role="3SKWNk">
                <property role="3SKdUp" value="construct a new tree variable" />
              </node>
            </node>
            <node concept="3cpWs6" id="1Ns6gpY6Kch" role="3cqZAp">
              <node concept="2ShNRf" id="1Ns6gpY6Kci" role="3cqZAk">
                <node concept="1pGfFk" id="1Ns6gpY6Kcj" role="2ShVmc">
                  <ref role="37wK5l" node="1Ns6gpY6nQ_" resolve="TreeLogicalVar" />
                  <node concept="37vLTw" id="1Ns6gpY6Kck" role="37wK5m">
                    <ref role="3cqZAo" node="1Ns6gpY6Mhd" resolve="treeLogical" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1Ns6gpY6Kcl" role="3clFbw">
            <node concept="10Nm6u" id="1Ns6gpY6Kcm" role="3uHU7w" />
            <node concept="37vLTw" id="1Ns6gpY6Kcn" role="3uHU7B">
              <ref role="3cqZAo" node="1Ns6gpY6Kc8" resolve="value" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Ns6gpY6Kco" role="3cqZAp">
          <node concept="2OqwBi" id="1Ns6gpY6Kcp" role="3clFbG">
            <node concept="37vLTw" id="1Ns6gpY6Kcq" role="2Oq$k0">
              <ref role="3cqZAo" node="1Ns6gpY6Kc8" resolve="value" />
            </node>
            <node concept="liA8E" id="1Ns6gpY6Kcr" role="2OqNvi">
              <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="dfChU1ktNm" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7d$oK1$sHHt" role="jymVt" />
    <node concept="3clFb_" id="7d$oK1$sGde" role="jymVt">
      <property role="TrG5h" value="toTree" />
      <node concept="3uibUv" id="7d$oK1$taMQ" role="3clF45">
        <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
      </node>
      <node concept="3Tm1VV" id="7d$oK1$sGdi" role="1B3o_S" />
      <node concept="3clFbS" id="7d$oK1$sGdj" role="3clF47">
        <node concept="3cpWs8" id="7d$oK1$sGdk" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$sGdl" role="3cpWs9">
            <property role="TrG5h" value="treeLogical" />
            <node concept="3uibUv" id="7d$oK1$sGdm" role="1tU5fm">
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="1rXfSq" id="7d$oK1$sGdn" role="33vP2m">
              <ref role="37wK5l" node="4U_yxogCtqr" resolve="findTree" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7d$oK1$sGdo" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$sGdp" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="3uibUv" id="7d$oK1$sGdq" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$sGdr" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$sGds" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$sGdl" resolve="treeLogical" />
              </node>
              <node concept="liA8E" id="7d$oK1$sGdt" role="2OqNvi">
                <ref role="37wK5l" node="4U_yxogCK9D" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7d$oK1$sGdu" role="3cqZAp">
          <node concept="3clFbS" id="7d$oK1$sGdv" role="3clFbx">
            <node concept="3SKdUt" id="7d$oK1$sGdw" role="3cqZAp">
              <node concept="3SKdUq" id="7d$oK1$sGdx" role="3SKWNk">
                <property role="3SKdUp" value="construct a new tree variable" />
              </node>
            </node>
            <node concept="3cpWs6" id="7d$oK1$sGdy" role="3cqZAp">
              <node concept="2YIFZM" id="7d$oK1$t82i" role="3cqZAk">
                <ref role="37wK5l" to="ie8e:5JQSuNsxMzt" resolve="create" />
                <ref role="1Pybhc" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                <node concept="2ShNRf" id="7d$oK1$sGdz" role="37wK5m">
                  <node concept="1pGfFk" id="7d$oK1$sGd$" role="2ShVmc">
                    <ref role="37wK5l" node="1Ns6gpY6nQ_" resolve="TreeLogicalVar" />
                    <node concept="37vLTw" id="7d$oK1$sGd_" role="37wK5m">
                      <ref role="3cqZAo" node="7d$oK1$sGdl" resolve="treeLogical" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7d$oK1$sGdA" role="3clFbw">
            <node concept="10Nm6u" id="7d$oK1$sGdB" role="3uHU7w" />
            <node concept="37vLTw" id="7d$oK1$sGdC" role="3uHU7B">
              <ref role="3cqZAo" node="7d$oK1$sGdp" resolve="value" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7d$oK1$sGdD" role="3cqZAp">
          <node concept="37vLTw" id="7d$oK1$sGdF" role="3clFbG">
            <ref role="3cqZAo" node="7d$oK1$sGdp" resolve="value" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6ETpMJ" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogCK9D" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="value" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="4U_yxogCK9G" role="3clF47">
        <node concept="3SKdUt" id="7d$oK1$nJwD" role="3cqZAp">
          <node concept="3SKdUq" id="7d$oK1$nJxi" role="3SKWNk">
            <property role="3SKdUp" value="TODO: rename to getTreeValue() ???" />
          </node>
        </node>
        <node concept="3clFbF" id="4U_yxogCLaO" role="3cqZAp">
          <node concept="37vLTw" id="4U_yxogCLaN" role="3clFbG">
            <ref role="3cqZAo" to="w2rx:~Logical.value" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7d$oK1$npFH" role="1B3o_S" />
      <node concept="3uibUv" id="4U_yxogCKH9" role="3clF45">
        <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
      </node>
      <node concept="2AHcQZ" id="1mP5b6jR6Yr" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1Ns6gpY6Ey_" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6ETW$4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1bm7a6ETW$7" role="3clF47">
        <node concept="3SKdUt" id="7d$oK1$p1gR" role="3cqZAp">
          <node concept="3SKdUq" id="7d$oK1$p1iU" role="3SKWNk">
            <property role="3SKdUp" value="TODO: rename to setTreeValue ???" />
          </node>
        </node>
        <node concept="3clFbF" id="1bm7a6ETYRC" role="3cqZAp">
          <node concept="37vLTI" id="1bm7a6ETZTc" role="3clFbG">
            <node concept="37vLTw" id="1bm7a6ETZVJ" role="37vLTx">
              <ref role="3cqZAo" node="1bm7a6ETXT1" resolve="value" />
            </node>
            <node concept="2OqwBi" id="1bm7a6ETYVE" role="37vLTJ">
              <node concept="Xjq3P" id="1bm7a6ETYRB" role="2Oq$k0" />
              <node concept="2OwXpG" id="1bm7a6ETZzu" role="2OqNvi">
                <ref role="2Oxat5" to="w2rx:~Logical.value" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7d$oK1$qy2$" role="1B3o_S" />
      <node concept="3cqZAl" id="1bm7a6ETWym" role="3clF45" />
      <node concept="37vLTG" id="1bm7a6ETXT1" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="1bm7a6ETXT0" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7d$oK1$CzQe" role="jymVt" />
    <node concept="3clFb_" id="1mP5b6jR8dI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isBound" />
      <node concept="10P_77" id="1mP5b6jR8dJ" role="3clF45" />
      <node concept="3Tm1VV" id="1mP5b6jR8dK" role="1B3o_S" />
      <node concept="3clFbS" id="1mP5b6jR8dP" role="3clF47">
        <node concept="3clFbF" id="1mP5b6jRce3" role="3cqZAp">
          <node concept="1rXfSq" id="1mP5b6jRce2" role="3clFbG">
            <ref role="37wK5l" to="w2rx:~Logical.isNonVar():boolean" resolve="isNonVar" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1mP5b6jRaWb" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1mP5b6jR9_e" role="jymVt" />
    <node concept="3clFb_" id="7d$oK1$qKLo" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="reactivateAndClearObservers" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="7d$oK1$qKLp" role="3clF47">
        <node concept="3cpWs8" id="7d$oK1$qKLq" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$qKLr" role="3cpWs9">
            <property role="TrG5h" value="vobs" />
            <node concept="3uibUv" id="7d$oK1$qKLs" role="1tU5fm">
              <ref role="3uigEE" to="w2rx:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
              <node concept="3uibUv" id="7d$oK1$qKLt" role="11_B2D">
                <ref role="3uigEE" to="w2rx:~Constraint" resolve="Constraint" />
              </node>
            </node>
            <node concept="1rXfSq" id="7d$oK1$qQvX" role="33vP2m">
              <ref role="37wK5l" node="1bm7a6ESv$e" resolve="variableObservers" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7d$oK1$qKLx" role="3cqZAp">
          <node concept="3clFbS" id="7d$oK1$qKLy" role="3clFbx">
            <node concept="3clFbF" id="7d$oK1$qKLz" role="3cqZAp">
              <node concept="1rXfSq" id="7d$oK1$qQDx" role="3clFbG">
                <ref role="37wK5l" node="1bm7a6ESMnp" resolve="clearVariableObservers" />
              </node>
            </node>
            <node concept="3cpWs8" id="7d$oK1$qKLB" role="3cqZAp">
              <node concept="3cpWsn" id="7d$oK1$qKLC" role="3cpWs9">
                <property role="TrG5h" value="vobsIt" />
                <node concept="3uibUv" id="7d$oK1$qKLD" role="1tU5fm">
                  <ref role="3uigEE" to="k7g3:~Iterator" resolve="Iterator" />
                  <node concept="3uibUv" id="7d$oK1$qKLE" role="11_B2D">
                    <ref role="3uigEE" to="w2rx:~Constraint" resolve="Constraint" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7d$oK1$qKLF" role="33vP2m">
                  <node concept="37vLTw" id="7d$oK1$qKLG" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d$oK1$qKLr" resolve="vobs" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$qKLH" role="2OqNvi">
                    <ref role="37wK5l" to="w2rx:~DoublyLinkedConstraintList.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="7d$oK1$qKLI" role="3cqZAp">
              <node concept="3clFbS" id="7d$oK1$qKLJ" role="2LFqv$">
                <node concept="3clFbF" id="7d$oK1$qKLK" role="3cqZAp">
                  <node concept="2OqwBi" id="7d$oK1$qKLL" role="3clFbG">
                    <node concept="2OqwBi" id="7d$oK1$qKLM" role="2Oq$k0">
                      <node concept="37vLTw" id="7d$oK1$qKLN" role="2Oq$k0">
                        <ref role="3cqZAo" node="7d$oK1$qKLC" resolve="vobsIt" />
                      </node>
                      <node concept="liA8E" id="7d$oK1$qKLO" role="2OqNvi">
                        <ref role="37wK5l" to="k7g3:~Iterator.next():java.lang.Object" resolve="next" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7d$oK1$qKLP" role="2OqNvi">
                      <ref role="37wK5l" to="w2rx:~Constraint.reactivate():void" resolve="reactivate" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7d$oK1$qKLQ" role="2$JKZa">
                <node concept="37vLTw" id="7d$oK1$qKLR" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$qKLC" resolve="vobsIt" />
                </node>
                <node concept="liA8E" id="7d$oK1$qKLS" role="2OqNvi">
                  <ref role="37wK5l" to="k7g3:~Iterator.hasNext():boolean" resolve="hasNext" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7d$oK1$qKLT" role="3clFbw">
            <node concept="10Nm6u" id="7d$oK1$qKLU" role="3uHU7w" />
            <node concept="37vLTw" id="7d$oK1$qKLV" role="3uHU7B">
              <ref role="3cqZAo" node="7d$oK1$qKLr" resolve="vobs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7d$oK1$qMSB" role="1B3o_S" />
      <node concept="3cqZAl" id="7d$oK1$qKLX" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3v$7B1Kb1a_" role="jymVt" />
    <node concept="3clFb_" id="3v$7B1Kb3eu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="3v$7B1Kb3ev" role="1B3o_S" />
      <node concept="10P_77" id="3v$7B1Kb3ex" role="3clF45" />
      <node concept="37vLTG" id="3v$7B1Kb3ey" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="3v$7B1Kb3ez" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="3v$7B1Kb3eB" role="3clF47">
        <node concept="3clFbJ" id="3v$7B1Kbog1" role="3cqZAp">
          <node concept="3clFbS" id="3v$7B1Kbog3" role="3clFbx">
            <node concept="3cpWs8" id="3v$7B1KbI_B" role="3cqZAp">
              <node concept="3cpWsn" id="3v$7B1KbI_C" role="3cpWs9">
                <property role="TrG5h" value="thisRepr" />
                <node concept="3uibUv" id="3v$7B1KbI_A" role="1tU5fm">
                  <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
                </node>
                <node concept="1rXfSq" id="3v$7B1KbI_D" role="33vP2m">
                  <ref role="37wK5l" node="4U_yxogCtqr" resolve="findTree" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3v$7B1Kc4an" role="3cqZAp">
              <node concept="3cpWsn" id="3v$7B1Kc4ao" role="3cpWs9">
                <property role="TrG5h" value="thatRepr" />
                <node concept="3uibUv" id="3v$7B1Kc4aj" role="1tU5fm">
                  <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
                </node>
                <node concept="2OqwBi" id="3v$7B1Kc4ap" role="33vP2m">
                  <node concept="1eOMI4" id="3v$7B1Kc4aq" role="2Oq$k0">
                    <node concept="10QFUN" id="3v$7B1Kc4ar" role="1eOMHV">
                      <node concept="37vLTw" id="3v$7B1Kc4as" role="10QFUP">
                        <ref role="3cqZAo" node="3v$7B1Kb3ey" resolve="that" />
                      </node>
                      <node concept="3uibUv" id="3v$7B1Kc4at" role="10QFUM">
                        <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3v$7B1Kc4au" role="2OqNvi">
                    <ref role="37wK5l" node="4U_yxogCtqr" resolve="findTree" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3v$7B1Kc7bn" role="3cqZAp">
              <node concept="3clFbC" id="3v$7B1Kcbtx" role="3cqZAk">
                <node concept="37vLTw" id="3v$7B1KccUa" role="3uHU7w">
                  <ref role="3cqZAo" node="3v$7B1Kc4ao" resolve="thatRepr" />
                </node>
                <node concept="37vLTw" id="3v$7B1Kc9Wh" role="3uHU7B">
                  <ref role="3cqZAo" node="3v$7B1KbI_C" resolve="thisRepr" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="3v$7B1KboHw" role="3clFbw">
            <node concept="3uibUv" id="3v$7B1KboMl" role="2ZW6by">
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="37vLTw" id="3v$7B1KbohX" role="2ZW6bz">
              <ref role="3cqZAo" node="3v$7B1Kb3ey" resolve="that" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3v$7B1Kch9x" role="3cqZAp">
          <node concept="3nyPlj" id="3v$7B1Kch9v" role="3clFbG">
            <ref role="37wK5l" to="e2lb:~Object.equals(java.lang.Object):boolean" resolve="equals" />
            <node concept="37vLTw" id="3v$7B1KciAn" role="37wK5m">
              <ref role="3cqZAo" node="3v$7B1Kb3ey" resolve="that" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3v$7B1Kb3eC" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5NuEpF1xRgd" role="jymVt" />
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
            <node concept="3uibUv" id="5NuEpF1xSwx" role="1tU5fm">
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="1rXfSq" id="5NuEpF1xSw$" role="33vP2m">
              <ref role="37wK5l" node="4U_yxogCtqr" resolve="findTree" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3v$7B1Kczo0" role="3cqZAp">
          <node concept="3cpWsn" id="3v$7B1Kczo1" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="3uibUv" id="3v$7B1KcznY" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2OqwBi" id="3v$7B1Kczo2" role="33vP2m">
              <node concept="37vLTw" id="3v$7B1Kczo3" role="2Oq$k0">
                <ref role="3cqZAo" node="5NuEpF1xSwz" resolve="repr" />
              </node>
              <node concept="liA8E" id="3v$7B1Kczo4" role="2OqNvi">
                <ref role="37wK5l" node="4U_yxogCK9D" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2QE4RCGhZVd" role="3cqZAp">
          <node concept="3cpWsn" id="2QE4RCGhZVe" role="3cpWs9">
            <property role="TrG5h" value="fullName" />
            <node concept="3uibUv" id="2QE4RCGhZV8" role="1tU5fm">
              <ref role="3uigEE" to="e2lb:~String" resolve="String" />
            </node>
            <node concept="3K4zz7" id="2QE4RCGhZVf" role="33vP2m">
              <node concept="1rXfSq" id="2QE4RCGhZVg" role="3K4E3e">
                <ref role="37wK5l" to="w2rx:~Logical.getName():java.lang.String" resolve="getName" />
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
                    <ref role="37wK5l" to="w2rx:~Logical.getName():java.lang.String" resolve="getName" />
                  </node>
                </node>
                <node concept="3cpWs3" id="2QE4RCGhZVo" role="3uHU7B">
                  <node concept="1rXfSq" id="2QE4RCGhZVp" role="3uHU7B">
                    <ref role="37wK5l" to="w2rx:~Logical.getName():java.lang.String" resolve="getName" />
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
                  <ref role="37wK5l" to="ie8e:5JQSuNs_vzS" resolve="toString" />
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
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7d$oK1$qK6S" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6ETg9f" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="parent" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1bm7a6ETg9i" role="3clF47">
        <node concept="3clFbF" id="1bm7a6EThan" role="3cqZAp">
          <node concept="10QFUN" id="1bm7a6EThmN" role="3clFbG">
            <node concept="37vLTw" id="1bm7a6EThmM" role="10QFUP">
              <ref role="3cqZAo" to="w2rx:~Logical.parent" resolve="parent" />
            </node>
            <node concept="3uibUv" id="1bm7a6EThpT" role="10QFUM">
              <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1bm7a6ETcZG" role="1B3o_S" />
      <node concept="3uibUv" id="1bm7a6ETfRH" role="3clF45">
        <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6ETr5E" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6ETxRD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setParent" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1bm7a6ETxRG" role="3clF47">
        <node concept="3clFbF" id="1bm7a6ETzV$" role="3cqZAp">
          <node concept="37vLTI" id="1bm7a6ET_2r" role="3clFbG">
            <node concept="37vLTw" id="1bm7a6ET_9s" role="37vLTx">
              <ref role="3cqZAo" node="1bm7a6ETz3v" resolve="parent" />
            </node>
            <node concept="2OqwBi" id="1bm7a6ETzZD" role="37vLTJ">
              <node concept="Xjq3P" id="1bm7a6ETzVz" role="2Oq$k0" />
              <node concept="2OwXpG" id="1bm7a6ET$D9" role="2OqNvi">
                <ref role="2Oxat5" to="w2rx:~Logical.parent" resolve="parent" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1bm7a6ETwIx" role="1B3o_S" />
      <node concept="3cqZAl" id="1bm7a6ETxPV" role="3clF45" />
      <node concept="37vLTG" id="1bm7a6ETz3v" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="1bm7a6ETz3u" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6ETc2F" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6ETjYA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="rank" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1bm7a6ETjYD" role="3clF47">
        <node concept="3clFbF" id="1bm7a6ETl3a" role="3cqZAp">
          <node concept="37vLTw" id="1bm7a6ETl39" role="3clFbG">
            <ref role="3cqZAo" to="w2rx:~Logical.rank" resolve="rank" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1bm7a6ETiZa" role="1B3o_S" />
      <node concept="10Oyi0" id="1bm7a6ETjXI" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1bm7a6ETl7t" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6ETngL" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="incRank" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1bm7a6ETngO" role="3clF47">
        <node concept="3clFbF" id="1bm7a6ETonm" role="3cqZAp">
          <node concept="3uNrnE" id="1bm7a6ETpFi" role="3clFbG">
            <node concept="2OqwBi" id="1bm7a6ETpFk" role="2$L3a6">
              <node concept="Xjq3P" id="1bm7a6ETpFl" role="2Oq$k0" />
              <node concept="2OwXpG" id="1bm7a6ETpFm" role="2OqNvi">
                <ref role="2Oxat5" to="w2rx:~Logical.rank" resolve="rank" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1bm7a6ETmd8" role="1B3o_S" />
      <node concept="3cqZAl" id="1bm7a6ETnf3" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1bm7a6ETTiP" role="jymVt" />
    <node concept="2tJIrI" id="1bm7a6EStr9" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6ESugA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashObservers" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1bm7a6ESugD" role="3clF47">
        <node concept="3clFbF" id="1bm7a6ESuxs" role="3cqZAp">
          <node concept="37vLTw" id="1bm7a6ESuxr" role="3clFbG">
            <ref role="3cqZAo" to="w2rx:~Logical.hashObservers" resolve="hashObservers" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1bm7a6ESt_v" role="1B3o_S" />
      <node concept="3uibUv" id="1bm7a6ESu3X" role="3clF45">
        <ref role="3uigEE" to="4pqn:~RehashableKeySet" resolve="RehashableKeySet" />
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6ES$qv" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6ESDes" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="clearHashObservers" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1bm7a6ESDev" role="3clF47">
        <node concept="3clFbF" id="1bm7a6ESDXp" role="3cqZAp">
          <node concept="37vLTI" id="1bm7a6ESEZn" role="3clFbG">
            <node concept="10Nm6u" id="1bm7a6ESF0Y" role="37vLTx" />
            <node concept="2OqwBi" id="1bm7a6ESE1u" role="37vLTJ">
              <node concept="Xjq3P" id="1bm7a6ESDXo" role="2Oq$k0" />
              <node concept="2OwXpG" id="1bm7a6ESEDi" role="2OqNvi">
                <ref role="2Oxat5" to="w2rx:~Logical.hashObservers" resolve="hashObservers" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1bm7a6ESCvT" role="1B3o_S" />
      <node concept="3cqZAl" id="1bm7a6ESDb2" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1bm7a6ESuGp" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6ESv$e" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="variableObservers" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1bm7a6ESv$h" role="3clF47">
        <node concept="3clFbF" id="1bm7a6ESvR2" role="3cqZAp">
          <node concept="37vLTw" id="1bm7a6ESvR1" role="3clFbG">
            <ref role="3cqZAo" to="w2rx:~Logical.variableObservers" resolve="variableObservers" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1bm7a6ESuRB" role="1B3o_S" />
      <node concept="3uibUv" id="1bm7a6ESviJ" role="3clF45">
        <ref role="3uigEE" to="w2rx:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
        <node concept="3uibUv" id="1bm7a6ESvn7" role="11_B2D">
          <ref role="3uigEE" to="w2rx:~Constraint" resolve="Constraint" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6ET4PD" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6ET3Qn" role="jymVt">
      <property role="TrG5h" value="setVariableObservers" />
      <node concept="37vLTG" id="1bm7a6ET6Hj" role="3clF46">
        <property role="TrG5h" value="vobs" />
        <node concept="3uibUv" id="1bm7a6ET6ZT" role="1tU5fm">
          <ref role="3uigEE" to="w2rx:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
          <node concept="3uibUv" id="1bm7a6ET6ZU" role="11_B2D">
            <ref role="3uigEE" to="w2rx:~Constraint" resolve="Constraint" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1bm7a6ET3Qo" role="3clF45" />
      <node concept="3Tmbuc" id="1bm7a6ET3Qp" role="1B3o_S" />
      <node concept="3clFbS" id="1bm7a6ET3Qq" role="3clF47">
        <node concept="3clFbF" id="1bm7a6ET3Qr" role="3cqZAp">
          <node concept="37vLTI" id="1bm7a6ET3Qs" role="3clFbG">
            <node concept="37vLTw" id="1bm7a6ET7yC" role="37vLTx">
              <ref role="3cqZAo" node="1bm7a6ET6Hj" resolve="vobs" />
            </node>
            <node concept="2OqwBi" id="1bm7a6ET3Qu" role="37vLTJ">
              <node concept="Xjq3P" id="1bm7a6ET3Qv" role="2Oq$k0" />
              <node concept="2OwXpG" id="1bm7a6ET3Qw" role="2OqNvi">
                <ref role="2Oxat5" to="w2rx:~Logical.variableObservers" resolve="variableObservers" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6ESLBw" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6ESMnp" role="jymVt">
      <property role="TrG5h" value="clearVariableObservers" />
      <node concept="3cqZAl" id="1bm7a6ESMnr" role="3clF45" />
      <node concept="3Tmbuc" id="1bm7a6ESN9_" role="1B3o_S" />
      <node concept="3clFbS" id="1bm7a6ESMnt" role="3clF47">
        <node concept="3clFbF" id="1bm7a6ESPNK" role="3cqZAp">
          <node concept="37vLTI" id="1bm7a6ESQYH" role="3clFbG">
            <node concept="10Nm6u" id="1bm7a6ESR1A" role="37vLTx" />
            <node concept="2OqwBi" id="1bm7a6ESPRM" role="37vLTJ">
              <node concept="Xjq3P" id="1bm7a6ESPNJ" role="2Oq$k0" />
              <node concept="2OwXpG" id="1bm7a6ESQvA" role="2OqNvi">
                <ref role="2Oxat5" to="w2rx:~Logical.variableObservers" resolve="variableObservers" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogB9BK" role="jymVt" />
    <node concept="3Tm1VV" id="4U_yxogAko0" role="1B3o_S" />
    <node concept="3uibUv" id="4U_yxogB8or" role="1zkMxy">
      <ref role="3uigEE" to="w2rx:~Logical" resolve="Logical" />
      <node concept="3uibUv" id="4U_yxogB8yy" role="11_B2D">
        <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
      </node>
    </node>
    <node concept="3uibUv" id="dfChU1k2Og" role="EKbjA">
      <ref role="3uigEE" to="yg8f:dfChU1jXdE" resolve="ITreeLogical" />
    </node>
  </node>
  <node concept="312cEu" id="1Ns6gpY6jYh">
    <property role="TrG5h" value="TreeLogicalVar" />
    <node concept="2tJIrI" id="104EUzFL36g" role="jymVt" />
    <node concept="3Tm1VV" id="1Ns6gpY6jYi" role="1B3o_S" />
    <node concept="3clFbW" id="1Ns6gpY6nQ_" role="jymVt">
      <node concept="3cqZAl" id="1Ns6gpY6nQA" role="3clF45" />
      <node concept="3Tm1VV" id="1Ns6gpY6nQB" role="1B3o_S" />
      <node concept="3clFbS" id="1Ns6gpY6nQC" role="3clF47">
        <node concept="XkiVB" id="104EUzFKVc_" role="3cqZAp">
          <ref role="37wK5l" to="ie8e:uNmovXiEVu" resolve="Variable" />
          <node concept="2OqwBi" id="104EUzFKVHG" role="37wK5m">
            <node concept="37vLTw" id="104EUzFKVAf" role="2Oq$k0">
              <ref role="3cqZAo" node="1Ns6gpY6nQJ" resolve="treeLogical" />
            </node>
            <node concept="liA8E" id="104EUzFKWty" role="2OqNvi">
              <ref role="37wK5l" to="w2rx:~Logical.getName():java.lang.String" resolve="getName" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7d$oK1$tv7_" role="3cqZAp">
          <node concept="3SKdUq" id="7d$oK1$tvcE" role="3SKWNk">
            <property role="3SKdUp" value="TODO make it an inner class of TreeLogical for it has no other use" />
          </node>
        </node>
        <node concept="3clFbF" id="1Ns6gpY6nQD" role="3cqZAp">
          <node concept="37vLTI" id="1Ns6gpY6nQE" role="3clFbG">
            <node concept="2OqwBi" id="1Ns6gpY6nQF" role="37vLTJ">
              <node concept="Xjq3P" id="1Ns6gpY6nQG" role="2Oq$k0" />
              <node concept="2OwXpG" id="1Ns6gpY6nQH" role="2OqNvi">
                <ref role="2Oxat5" node="1Ns6gpY6nSX" resolve="treeLogical" />
              </node>
            </node>
            <node concept="37vLTw" id="1Ns6gpY6nQI" role="37vLTx">
              <ref role="3cqZAo" node="1Ns6gpY6nQJ" resolve="treeLogical" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1Ns6gpY6nQJ" role="3clF46">
        <property role="TrG5h" value="treeLogical" />
        <node concept="3uibUv" id="1Ns6gpY6nQK" role="1tU5fm">
          <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Ns6gpY6nQR" role="jymVt" />
    <node concept="3clFb_" id="1Ns6gpY7Ay2" role="jymVt">
      <property role="TrG5h" value="treeLogical" />
      <node concept="3uibUv" id="1Ns6gpY7BCX" role="3clF45">
        <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
      </node>
      <node concept="3Tm1VV" id="1Ns6gpY7Ay5" role="1B3o_S" />
      <node concept="3clFbS" id="1Ns6gpY7Ay6" role="3clF47">
        <node concept="3clFbF" id="1Ns6gpY7DFA" role="3cqZAp">
          <node concept="37vLTw" id="1Ns6gpY7DF_" role="3clFbG">
            <ref role="3cqZAo" node="1Ns6gpY6nSX" resolve="treeLogical" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Ns6gpY6nSh" role="jymVt" />
    <node concept="3clFb_" id="1Ns6gpY6nSi" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="1Ns6gpY6nSj" role="1B3o_S" />
      <node concept="10Oyi0" id="1Ns6gpY6nSk" role="3clF45" />
      <node concept="3clFbS" id="1Ns6gpY6nSl" role="3clF47">
        <node concept="3clFbF" id="1Ns6gpY6nSm" role="3cqZAp">
          <node concept="3cpWs3" id="1Ns6gpY6nSn" role="3clFbG">
            <node concept="3cmrfG" id="1Ns6gpY6nSo" role="3uHU7w">
              <property role="3cmrfH" value="31" />
            </node>
            <node concept="17qRlL" id="1Ns6gpY6nSp" role="3uHU7B">
              <node concept="2OqwBi" id="1Ns6gpY6nSq" role="3uHU7B">
                <node concept="37vLTw" id="1Ns6gpY6nSr" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Ns6gpY6nSX" resolve="treeLogical" />
                </node>
                <node concept="liA8E" id="1Ns6gpY6nSs" role="2OqNvi">
                  <ref role="37wK5l" to="w2rx:~Logical.hashCode():int" resolve="hashCode" />
                </node>
              </node>
              <node concept="3cmrfG" id="1Ns6gpY6nSt" role="3uHU7w">
                <property role="3cmrfH" value="17" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1Ns6gpY6nSu" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1Ns6gpY6nSv" role="jymVt" />
    <node concept="3clFb_" id="1Ns6gpY6nSw" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="1Ns6gpY6nSx" role="1B3o_S" />
      <node concept="10P_77" id="1Ns6gpY6nSy" role="3clF45" />
      <node concept="37vLTG" id="1Ns6gpY6nSz" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="1Ns6gpY6nS$" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="1Ns6gpY6nS_" role="3clF47">
        <node concept="3clFbJ" id="1Ns6gpY6nSA" role="3cqZAp">
          <node concept="3clFbS" id="1Ns6gpY6nSB" role="3clFbx">
            <node concept="3cpWs6" id="1Ns6gpY6nSC" role="3cqZAp">
              <node concept="3clFbT" id="1Ns6gpY6nSD" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="1Ns6gpY6nSE" role="3clFbw">
            <node concept="2ZW3vV" id="1Ns6gpY6nSF" role="3fr31v">
              <node concept="3uibUv" id="1Ns6gpY6w_t" role="2ZW6by">
                <ref role="3uigEE" node="1Ns6gpY6jYh" resolve="TreeLogicalVar" />
              </node>
              <node concept="37vLTw" id="1Ns6gpY6nSH" role="2ZW6bz">
                <ref role="3cqZAo" node="1Ns6gpY6nSz" resolve="that" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1Ns6gpY6nSI" role="3cqZAp">
          <node concept="2OqwBi" id="1Ns6gpY6nSJ" role="3cqZAk">
            <node concept="2OqwBi" id="1Ns6gpY6nSK" role="2Oq$k0">
              <node concept="Xjq3P" id="1Ns6gpY6nSL" role="2Oq$k0" />
              <node concept="2OwXpG" id="1Ns6gpY6nSM" role="2OqNvi">
                <ref role="2Oxat5" node="1Ns6gpY6nSX" resolve="treeLogical" />
              </node>
            </node>
            <node concept="liA8E" id="1Ns6gpY6nSN" role="2OqNvi">
              <ref role="37wK5l" node="3v$7B1Kb3eu" resolve="equals" />
              <node concept="2OqwBi" id="1Ns6gpY6nSO" role="37wK5m">
                <node concept="1eOMI4" id="1Ns6gpY6nSP" role="2Oq$k0">
                  <node concept="10QFUN" id="1Ns6gpY6nSQ" role="1eOMHV">
                    <node concept="3uibUv" id="1Ns6gpY6vun" role="10QFUM">
                      <ref role="3uigEE" node="1Ns6gpY6jYh" resolve="TreeLogicalVar" />
                    </node>
                    <node concept="37vLTw" id="1Ns6gpY6nSS" role="10QFUP">
                      <ref role="3cqZAo" node="1Ns6gpY6nSz" resolve="that" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="1Ns6gpY6nST" role="2OqNvi">
                  <ref role="2Oxat5" node="1Ns6gpY6nSX" resolve="treeLogical" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1Ns6gpY6nSU" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1Ns6gpY6nSW" role="jymVt" />
    <node concept="3clFb_" id="7d$oK1$Cq5a" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="7d$oK1$Cq5b" role="1B3o_S" />
      <node concept="17QB3L" id="2pvEdqukxHZ" role="3clF45" />
      <node concept="3clFbS" id="7d$oK1$Cq5i" role="3clF47">
        <node concept="3clFbF" id="7d$oK1$CsLS" role="3cqZAp">
          <node concept="2OqwBi" id="2QE4RCGhSOw" role="3clFbG">
            <node concept="37vLTw" id="2QE4RCGhSCy" role="2Oq$k0">
              <ref role="3cqZAo" node="1Ns6gpY6nSX" resolve="treeLogical" />
            </node>
            <node concept="liA8E" id="2QE4RCGhTIr" role="2OqNvi">
              <ref role="37wK5l" to="w2rx:~Logical.getName():java.lang.String" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7d$oK1$Cq5j" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7d$oK1$CoZ$" role="jymVt" />
    <node concept="312cEg" id="1Ns6gpY6nSX" role="jymVt">
      <property role="TrG5h" value="treeLogical" />
      <node concept="3Tm6S6" id="1Ns6gpY6nSY" role="1B3o_S" />
      <node concept="3uibUv" id="1Ns6gpY6nSZ" role="1tU5fm">
        <ref role="3uigEE" node="4U_yxogAknZ" resolve="TreeLogical" />
      </node>
    </node>
    <node concept="2tJIrI" id="1Ns6gpY6nJ3" role="jymVt" />
    <node concept="3uibUv" id="104EUzFKMWP" role="1zkMxy">
      <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
    </node>
  </node>
  <node concept="312cEu" id="2GO7tyJVmP4">
    <property role="TrG5h" value="UnificationBuiltinConstraint" />
    <node concept="3Tm1VV" id="2GO7tyJVmP5" role="1B3o_S" />
    <node concept="3uibUv" id="2GO7tyJVn23" role="EKbjA">
      <ref role="3uigEE" to="yg8f:2GO7tyJLLNE" resolve="SolverProxy" />
      <node concept="3uibUv" id="2GO7tyJVn60" role="11_B2D">
        <ref role="3uigEE" node="6njqcfQVO0n" resolve="UnificationSolver" />
      </node>
      <node concept="3uibUv" id="60B5zVF1TOq" role="11_B2D">
        <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
      </node>
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
        <node concept="HV5vD" id="2GO7tyJY9$x" role="2ShVmc">
          <ref role="HV5vE" node="2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJY8Fs" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJVnuM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="17QB3L" id="2GO7tyJVnuN" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJVnuO" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJVnuT" role="3clF47">
        <node concept="3clFbF" id="2GO7tyJVri5" role="3cqZAp">
          <node concept="37vLTw" id="2GO7tyJVrpK" role="3clFbG">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJVqJI" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJVnuU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createSolver" />
      <node concept="37vLTG" id="2GO7tyJVnuV" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="2GO7tyJVnuW" role="1tU5fm">
          <ref role="3uigEE" to="yg8f:2GO7tyJS2HQ" resolve="SolverFarm" />
        </node>
      </node>
      <node concept="3uibUv" id="2GO7tyJVnv3" role="3clF45">
        <ref role="3uigEE" node="6njqcfQVO0n" resolve="UnificationSolver" />
      </node>
      <node concept="3Tm1VV" id="2GO7tyJVnuY" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJVnv4" role="3clF47">
        <node concept="3clFbF" id="2GO7tyJVrVi" role="3cqZAp">
          <node concept="2ShNRf" id="2GO7tyJVrVe" role="3clFbG">
            <node concept="1pGfFk" id="2GO7tyJVs8d" role="2ShVmc">
              <ref role="37wK5l" node="4U_yxogDDy9" resolve="UnificationSolverImpl" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJVqUx" role="jymVt" />
    <node concept="3clFb_" id="2pvEdquwpCL" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="solverInterface" />
      <node concept="3uibUv" id="2pvEdquwpCM" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Class" resolve="Class" />
        <node concept="3uibUv" id="2pvEdquwpCT" role="11_B2D">
          <ref role="3uigEE" node="6njqcfQVO0n" resolve="UnificationSolver" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2pvEdquwpCO" role="1B3o_S" />
      <node concept="3clFbS" id="2pvEdquwpCU" role="3clF47">
        <node concept="3clFbF" id="2pvEdquwqj6" role="3cqZAp">
          <node concept="3VsKOn" id="2pvEdquwqjp" role="3clFbG">
            <ref role="3VsUkX" node="6njqcfQVO0n" resolve="UnificationSolver" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2pvEdquwquz" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJVnv5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="2GO7tyJVnv6" role="3clF46">
        <property role="TrG5h" value="solver" />
        <node concept="3uibUv" id="2GO7tyJVnvr" role="1tU5fm">
          <ref role="3uigEE" node="6njqcfQVO0n" resolve="UnificationSolver" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJVnv8" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="8X2XB" id="2GO7tyJVnv9" role="1tU5fm">
          <node concept="3uibUv" id="2GO7tyJVnva" role="8Xvag">
            <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2GO7tyJVnvb" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJVnvc" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJVnvs" role="3clF47">
        <node concept="3clFbJ" id="2GO7tyJZ8Yj" role="3cqZAp">
          <node concept="3clFbS" id="2GO7tyJZ8Ym" role="3clFbx">
            <node concept="YS8fn" id="2GO7tyJZ9EF" role="3cqZAp">
              <node concept="2ShNRf" id="2GO7tyJZ9Hi" role="YScLw">
                <node concept="1pGfFk" id="2GO7tyJZ9So" role="2ShVmc">
                  <ref role="37wK5l" to="e2lb:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="Xl_RD" id="2GO7tyJZ9UP" role="37wK5m">
                    <property role="Xl_RC" value="invalid arguments count" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2GO7tyJZ9vl" role="3clFbw">
            <node concept="3cmrfG" id="2GO7tyJZ9Cd" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="2GO7tyJZ91n" role="3uHU7B">
              <node concept="37vLTw" id="2GO7tyJZ8ZJ" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyJVnv8" resolve="arg" />
              </node>
              <node concept="1Rwk04" id="2GO7tyJZ95T" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2GO7tyJZaCd" role="3cqZAp">
          <node concept="2OqwBi" id="2GO7tyJZaDe" role="3clFbG">
            <node concept="37vLTw" id="2GO7tyJZaCb" role="2Oq$k0">
              <ref role="3cqZAo" node="2GO7tyJVnv6" resolve="solver" />
            </node>
            <node concept="liA8E" id="2GO7tyJZaOr" role="2OqNvi">
              <ref role="37wK5l" node="4OsiK2BAnTP" resolve="askUni" />
              <node concept="AH0OO" id="2GO7tyJZaTC" role="37wK5m">
                <node concept="3cmrfG" id="2GO7tyJZb76" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="2GO7tyJZaQ5" role="AHHXb">
                  <ref role="3cqZAo" node="2GO7tyJVnv8" resolve="arg" />
                </node>
              </node>
              <node concept="AH0OO" id="2GO7tyJZbll" role="37wK5m">
                <node concept="3cmrfG" id="2GO7tyJZblC" role="AHEQo">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="2GO7tyJZbce" role="AHHXb">
                  <ref role="3cqZAo" node="2GO7tyJVnv8" resolve="arg" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJVr5k" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJVnvv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tell" />
      <node concept="3cqZAl" id="2GO7tyJVnvw" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJVnvx" role="1B3o_S" />
      <node concept="37vLTG" id="2GO7tyJVnvz" role="3clF46">
        <property role="TrG5h" value="solver" />
        <node concept="3uibUv" id="2GO7tyJVnvP" role="1tU5fm">
          <ref role="3uigEE" node="6njqcfQVO0n" resolve="UnificationSolver" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJVnv_" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="8X2XB" id="2GO7tyJVnvA" role="1tU5fm">
          <node concept="3uibUv" id="2GO7tyJVnvB" role="8Xvag">
            <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2GO7tyJVnvQ" role="3clF47">
        <node concept="3clFbJ" id="2GO7tyKciE_" role="3cqZAp">
          <node concept="3clFbS" id="2GO7tyKciEA" role="3clFbx">
            <node concept="YS8fn" id="2GO7tyKciEB" role="3cqZAp">
              <node concept="2ShNRf" id="2GO7tyKciEC" role="YScLw">
                <node concept="1pGfFk" id="2GO7tyKciED" role="2ShVmc">
                  <ref role="37wK5l" to="e2lb:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="Xl_RD" id="2GO7tyKciEE" role="37wK5m">
                    <property role="Xl_RC" value="invalid arguments count" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2GO7tyKciEF" role="3clFbw">
            <node concept="3cmrfG" id="2GO7tyKciEG" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="2GO7tyKciEH" role="3uHU7B">
              <node concept="37vLTw" id="2GO7tyKciEI" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyJVnv_" resolve="arg" />
              </node>
              <node concept="1Rwk04" id="2GO7tyKciEJ" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2GO7tyKciEK" role="3cqZAp">
          <node concept="2OqwBi" id="2GO7tyKciEL" role="3clFbG">
            <node concept="37vLTw" id="2GO7tyKciEM" role="2Oq$k0">
              <ref role="3cqZAo" node="2GO7tyJVnvz" resolve="solver" />
            </node>
            <node concept="liA8E" id="2GO7tyKciEN" role="2OqNvi">
              <ref role="37wK5l" node="4OsiK2BAlI6" resolve="tellUni" />
              <node concept="AH0OO" id="2GO7tyKciEO" role="37wK5m">
                <node concept="3cmrfG" id="2GO7tyKciEP" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="2GO7tyKciEQ" role="AHHXb">
                  <ref role="3cqZAo" node="2GO7tyJVnv_" resolve="arg" />
                </node>
              </node>
              <node concept="AH0OO" id="2GO7tyKciER" role="37wK5m">
                <node concept="3cmrfG" id="2GO7tyKciES" role="AHEQo">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="2GO7tyKciET" role="AHHXb">
                  <ref role="3cqZAo" node="2GO7tyJVnv_" resolve="arg" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
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
          <ref role="37wK5l" to="w2rx:~Logical.&lt;init&gt;()" resolve="Logical" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1H8E3iB88tB" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Declare" resolve="JCHR_Declare" />
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
          <ref role="37wK5l" to="w2rx:~Logical.&lt;init&gt;(java.lang.String,java.lang.Object)" resolve="Logical" />
          <node concept="10Nm6u" id="1GDBwhEE__e" role="37wK5m" />
          <node concept="37vLTw" id="1GDBwhEE__f" role="37wK5m">
            <ref role="3cqZAo" node="1GDBwhEE__8" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1GDBwhEE__g" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Init" resolve="JCHR_Init" />
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
          <ref role="37wK5l" to="w2rx:~Logical.&lt;init&gt;(java.lang.String,java.lang.Object)" resolve="Logical" />
          <node concept="37vLTw" id="1GDBwhEEB7I" role="37wK5m">
            <ref role="3cqZAo" node="1GDBwhEEAcf" resolve="name" />
          </node>
          <node concept="37vLTw" id="1H8E3iB8e6E" role="37wK5m">
            <ref role="3cqZAo" node="1H8E3iB8aSH" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1H8E3iB8alF" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Init" resolve="JCHR_Init" />
      </node>
    </node>
    <node concept="2tJIrI" id="1H8E3iBdJUE" role="jymVt" />
    <node concept="3clFb_" id="dfChU1gi$L" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="findRoot" />
      <node concept="3uibUv" id="dfChU1gi$M" role="3clF45">
        <ref role="3uigEE" to="yg8f:1mP5b6jQP$C" resolve="ILogical" />
        <node concept="17QB3L" id="dfChU1gi$T" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="dfChU1gi$O" role="1B3o_S" />
      <node concept="3clFbS" id="dfChU1gi$U" role="3clF47">
        <node concept="3clFbF" id="dfChU1gkqG" role="3cqZAp">
          <node concept="10QFUN" id="dfChU1gl7$" role="3clFbG">
            <node concept="1rXfSq" id="dfChU1gl7z" role="10QFUP">
              <ref role="37wK5l" to="w2rx:~Logical.find():runtime.Logical" resolve="find" />
            </node>
            <node concept="3uibUv" id="dfChU1glDa" role="10QFUM">
              <ref role="3uigEE" node="1H8E3iB85PX" resolve="StringLogical" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="dfChU1gjOV" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="dfChU1gjdF" role="jymVt" />
    <node concept="3clFb_" id="1mP5b6jQWhb" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="value" />
      <node concept="3Tm1VV" id="1mP5b6jQWhd" role="1B3o_S" />
      <node concept="17QB3L" id="1mP5b6jQWhi" role="3clF45" />
      <node concept="3clFbS" id="1mP5b6jQWhj" role="3clF47">
        <node concept="3clFbF" id="1mP5b6jQXtl" role="3cqZAp">
          <node concept="1rXfSq" id="1mP5b6jQXtj" role="3clFbG">
            <ref role="37wK5l" to="w2rx:~Logical.getValue():java.lang.Object" resolve="getValue" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1mP5b6jQZi$" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1mP5b6jQX$l" role="jymVt" />
    <node concept="3clFb_" id="1mP5b6jQWhk" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isBound" />
      <node concept="10P_77" id="1mP5b6jQWhl" role="3clF45" />
      <node concept="3Tm1VV" id="1mP5b6jQWhm" role="1B3o_S" />
      <node concept="3clFbS" id="1mP5b6jQWhr" role="3clF47">
        <node concept="3clFbF" id="1mP5b6jQYKc" role="3cqZAp">
          <node concept="1rXfSq" id="1mP5b6jQYKb" role="3clFbG">
            <ref role="37wK5l" to="w2rx:~Logical.isNonVar():boolean" resolve="isNonVar" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1mP5b6jQZOV" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1mP5b6jQY9f" role="jymVt" />
    <node concept="3clFb_" id="1H8E3iBdJX9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="1H8E3iBdJXa" role="1B3o_S" />
      <node concept="10P_77" id="1H8E3iBdJXc" role="3clF45" />
      <node concept="37vLTG" id="1H8E3iBdJXd" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="1H8E3iBdJXe" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="1H8E3iBdJXi" role="3clF47">
        <node concept="3clFbJ" id="1H8E3iBdSJo" role="3cqZAp">
          <node concept="3clFbS" id="1H8E3iBdSJp" role="3clFbx">
            <node concept="3cpWs6" id="1H8E3iBdVn1" role="3cqZAp">
              <node concept="3clFbT" id="1H8E3iBdVoH" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="1H8E3iBdVga" role="3clFbw">
            <node concept="2ZW3vV" id="1H8E3iBdVgb" role="3fr31v">
              <node concept="3uibUv" id="1H8E3iBdVgc" role="2ZW6by">
                <ref role="3uigEE" node="1H8E3iB85PX" resolve="StringLogical" />
              </node>
              <node concept="37vLTw" id="1H8E3iBdVgd" role="2ZW6bz">
                <ref role="3cqZAo" node="1H8E3iBdJXd" resolve="that" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1H8E3iBdYjq" role="3cqZAp">
          <node concept="3clFbS" id="1H8E3iBdYjt" role="3clFbx">
            <node concept="3SKdUt" id="1H8E3iBdYyA" role="3cqZAp">
              <node concept="3SKdUq" id="1H8E3iBdYyE" role="3SKWNk">
                <property role="3SKdUp" value="root" />
              </node>
            </node>
            <node concept="3cpWs6" id="1H8E3iBdYCj" role="3cqZAp">
              <node concept="3K4zz7" id="1H8E3iBdZI_" role="3cqZAk">
                <node concept="2OqwBi" id="1H8E3iBe256" role="3K4GZi">
                  <node concept="37vLTw" id="1H8E3iBe1aM" role="2Oq$k0">
                    <ref role="3cqZAo" to="w2rx:~Logical.value" resolve="value" />
                  </node>
                  <node concept="liA8E" id="1H8E3iBe2XH" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="2OqwBi" id="1H8E3iBe3M4" role="37wK5m">
                      <node concept="1eOMI4" id="1H8E3iBe366" role="2Oq$k0">
                        <node concept="10QFUN" id="1H8E3iBe363" role="1eOMHV">
                          <node concept="37vLTw" id="1H8E3iBe3vm" role="10QFUP">
                            <ref role="3cqZAo" node="1H8E3iBdJXd" resolve="that" />
                          </node>
                          <node concept="3uibUv" id="1H8E3iBe3gx" role="10QFUM">
                            <ref role="3uigEE" node="1H8E3iB85PX" resolve="StringLogical" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OwXpG" id="1H8E3iBe4fx" role="2OqNvi">
                        <ref role="2Oxat5" to="w2rx:~Logical.value" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1H8E3iBe10Z" role="3K4E3e">
                  <node concept="10Nm6u" id="1H8E3iBe188" role="3uHU7w" />
                  <node concept="2OqwBi" id="1H8E3iBe078" role="3uHU7B">
                    <node concept="1eOMI4" id="1H8E3iBdZRp" role="2Oq$k0">
                      <node concept="10QFUN" id="1H8E3iBdZRm" role="1eOMHV">
                        <node concept="3uibUv" id="1H8E3iBdZXP" role="10QFUM">
                          <ref role="3uigEE" node="1H8E3iB85PX" resolve="StringLogical" />
                        </node>
                        <node concept="37vLTw" id="1H8E3iBe01s" role="10QFUP">
                          <ref role="3cqZAo" node="1H8E3iBdJXd" resolve="that" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OwXpG" id="1H8E3iBe0zY" role="2OqNvi">
                      <ref role="2Oxat5" to="w2rx:~Logical.value" resolve="value" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1H8E3iBdYU0" role="3K4Cdx">
                  <node concept="10Nm6u" id="1H8E3iBdZ0a" role="3uHU7w" />
                  <node concept="37vLTw" id="1H8E3iBdYIn" role="3uHU7B">
                    <ref role="3cqZAo" to="w2rx:~Logical.value" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1H8E3iBdYui" role="3clFbw">
            <node concept="10Nm6u" id="1H8E3iBdYwO" role="3uHU7w" />
            <node concept="37vLTw" id="1H8E3iBdYoa" role="3uHU7B">
              <ref role="3cqZAo" to="w2rx:~Logical.parent" resolve="parent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1H8E3iBe4Xv" role="3cqZAp">
          <node concept="2OqwBi" id="1H8E3iBe5kp" role="3cqZAk">
            <node concept="1rXfSq" id="1H8E3iBe5aQ" role="2Oq$k0">
              <ref role="37wK5l" to="w2rx:~Logical.find():runtime.Logical" resolve="find" />
            </node>
            <node concept="liA8E" id="1H8E3iBe6yV" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~Object.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="37vLTw" id="1H8E3iBe6Gc" role="37wK5m">
                <ref role="3cqZAo" node="1H8E3iBdJXd" resolve="that" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1H8E3iBdJXj" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1H8E3iBdR5l" role="jymVt" />
    <node concept="3clFb_" id="1H8E3iBdR9E" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="1H8E3iBdR9F" role="1B3o_S" />
      <node concept="10Oyi0" id="1H8E3iBdR9H" role="3clF45" />
      <node concept="3clFbS" id="1H8E3iBdR9I" role="3clF47">
        <node concept="3clFbF" id="1H8E3iBdR9L" role="3cqZAp">
          <node concept="3nyPlj" id="1H8E3iBdR9K" role="3clFbG">
            <ref role="37wK5l" to="w2rx:~Logical.hashCode():int" resolve="hashCode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1H8E3iBdR9J" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1H8E3iB88q_" role="jymVt" />
    <node concept="3clFb_" id="5NuEpF1z6iY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="5NuEpF1z6iZ" role="1B3o_S" />
      <node concept="17QB3L" id="77AxcO5bvNp" role="3clF45" />
      <node concept="3clFbS" id="5NuEpF1z6j2" role="3clF47">
        <node concept="3cpWs8" id="5NuEpF1z8oh" role="3cqZAp">
          <node concept="3cpWsn" id="5NuEpF1z8oi" role="3cpWs9">
            <property role="TrG5h" value="repr" />
            <node concept="3uibUv" id="5NuEpF1z8od" role="1tU5fm">
              <ref role="3uigEE" to="w2rx:~Logical" resolve="Logical" />
              <node concept="17QB3L" id="77AxcO5bvNo" role="11_B2D" />
            </node>
            <node concept="1rXfSq" id="5NuEpF1z8oj" role="33vP2m">
              <ref role="37wK5l" to="w2rx:~Logical.find():runtime.Logical" resolve="find" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5NuEpF1z96x" role="3cqZAp">
          <node concept="3K4zz7" id="5NuEpF1zaJO" role="3clFbG">
            <node concept="1eOMI4" id="5NuEpF1zc0q" role="3K4GZi">
              <node concept="3K4zz7" id="5NuEpF1zcqV" role="1eOMHV">
                <node concept="3cpWs3" id="5NuEpF1zdm2" role="3K4GZi">
                  <node concept="2OqwBi" id="5NuEpF1zdKL" role="3uHU7w">
                    <node concept="37vLTw" id="5NuEpF1zdz5" role="2Oq$k0">
                      <ref role="3cqZAo" node="5NuEpF1z8oi" resolve="repr" />
                    </node>
                    <node concept="liA8E" id="5NuEpF1zeJV" role="2OqNvi">
                      <ref role="37wK5l" to="w2rx:~Logical.getName():java.lang.String" resolve="getName" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="5NuEpF1zcWy" role="3uHU7B">
                    <node concept="1rXfSq" id="5NuEpF1zc_Z" role="3uHU7B">
                      <ref role="37wK5l" to="w2rx:~Logical.getName():java.lang.String" resolve="getName" />
                    </node>
                    <node concept="Xl_RD" id="5NuEpF1zcXi" role="3uHU7w">
                      <property role="Xl_RC" value=":" />
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="5NuEpF1zcvb" role="3K4E3e">
                  <ref role="37wK5l" to="w2rx:~Logical.getName():java.lang.String" resolve="getName" />
                </node>
                <node concept="3clFbC" id="5NuEpF1zciC" role="3K4Cdx">
                  <node concept="37vLTw" id="5NuEpF1zckA" role="3uHU7w">
                    <ref role="3cqZAo" node="5NuEpF1z8oi" resolve="repr" />
                  </node>
                  <node concept="Xjq3P" id="5NuEpF1zc4d" role="3uHU7B" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5NuEpF1zb3a" role="3K4E3e">
              <node concept="1rXfSq" id="5NuEpF1zaU6" role="2Oq$k0">
                <ref role="37wK5l" to="w2rx:~Logical.getValue():java.lang.Object" resolve="getValue" />
              </node>
              <node concept="liA8E" id="5NuEpF1zbX_" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.toString():java.lang.String" resolve="toString" />
              </node>
            </node>
            <node concept="3y3z36" id="5NuEpF1zajH" role="3K4Cdx">
              <node concept="10Nm6u" id="5NuEpF1zaB7" role="3uHU7w" />
              <node concept="2OqwBi" id="5NuEpF1z9jq" role="3uHU7B">
                <node concept="37vLTw" id="5NuEpF1z96v" role="2Oq$k0">
                  <ref role="3cqZAo" node="5NuEpF1z8oi" resolve="repr" />
                </node>
                <node concept="liA8E" id="5NuEpF1zae5" role="2OqNvi">
                  <ref role="37wK5l" to="w2rx:~Logical.getValue():java.lang.Object" resolve="getValue" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5NuEpF1z6j3" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1H8E3iB85PY" role="1B3o_S" />
    <node concept="3uibUv" id="1H8E3iB89ci" role="1zkMxy">
      <ref role="3uigEE" to="w2rx:~Logical" resolve="Logical" />
      <node concept="17QB3L" id="77AxcO5bvNq" role="11_B2D" />
    </node>
    <node concept="3UR2Jj" id="1H8E3iB8hOe" role="lGtFl">
      <node concept="TZ5HA" id="1H8E3iB8hOf" role="TZ5H$">
        <node concept="1dT_AC" id="1H8E3iB8hOg" role="1dT_Ay">
          <property role="1dT_AB" value="A simple wrapper for " />
        </node>
        <node concept="1dT_AA" id="1H8E3iB8hXi" role="1dT_Ay">
          <node concept="VVOAv" id="1H8E3iB8hXo" role="qph3F">
            <node concept="TZ5HA" id="1H8E3iB8hXq" role="2Xj1qM">
              <node concept="1dT_AC" id="1H8E3iB8i0Q" role="1dT_Ay">
                <property role="1dT_AB" value="Logical(String)" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1dT_AC" id="1H8E3iB8hXh" role="1dT_Ay">
          <property role="1dT_AB" value=" to avoid problems with overloaded constructors." />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="1mP5b6jQTY7" role="EKbjA">
      <ref role="3uigEE" to="yg8f:1mP5b6jQP$C" resolve="ILogical" />
      <node concept="17QB3L" id="1mP5b6jQUWt" role="11_B2D" />
    </node>
  </node>
</model>

