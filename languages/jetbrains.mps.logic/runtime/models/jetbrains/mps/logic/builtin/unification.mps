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
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="45ys" ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)" />
    <import index="qrld" ref="r:2a79c8aa-e372-4c00-8d71-5d7f3db517e4(jetbrains.mps.logic.reactor.constraint)" />
    <import index="95zw" ref="r:f3ff7852-b9dd-4760-b213-a8a031c77d0e(jetbrains.mps.logic.jchr.predicate)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
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
  <node concept="312cEu" id="4U_yxogAknZ">
    <property role="TrG5h" value="AtomLogical" />
    <node concept="2tJIrI" id="4U_yxogB9ZV" role="jymVt" />
    <node concept="3clFbW" id="4U_yxogBkww" role="jymVt">
      <node concept="3cqZAl" id="4U_yxogBkwx" role="3clF45" />
      <node concept="3clFbS" id="4U_yxogBkwz" role="3clF47">
        <node concept="XkiVB" id="4U_yxogBkBp" role="3cqZAp">
          <ref role="37wK5l" to="95zw:3HJTsBmBUfM" resolve="AbstractLogical" />
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
          <ref role="37wK5l" to="95zw:2DKqMqOlOj4" resolve="AbstractLogical" />
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
          <ref role="37wK5l" to="95zw:3HJTsBmBV0W" resolve="AbstractLogical" />
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
          <ref role="37wK5l" to="95zw:7nuzzkr1W8y" resolve="AbstractLogical" />
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
          <ref role="37wK5l" to="95zw:3HJTsBmBVmo" resolve="AbstractLogical" />
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
          <ref role="37wK5l" to="95zw:3HJTsBmBVmo" resolve="AbstractLogical" />
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
        <node concept="3cpWs6" id="1Ns6gpY6Kch" role="3cqZAp">
          <node concept="2ShNRf" id="1Ns6gpY6Kci" role="3cqZAk">
            <node concept="1pGfFk" id="1Ns6gpY6Kcj" role="2ShVmc">
              <ref role="37wK5l" node="3HJTsBmSn3o" resolve="AtomLogical.AtomLogicalVar" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="dfChU1ktNm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZaOjLx" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaOeBH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="pattern" />
      <node concept="3Tm1VV" id="7HUwyZaOeBJ" role="1B3o_S" />
      <node concept="3uibUv" id="7HUwyZaOeBK" role="3clF45">
        <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="LogicalPattern" />
        <node concept="3uibUv" id="49L2l3Fdqf5" role="11_B2D">
          <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
          <node concept="3uibUv" id="49L2l3Fdqv8" role="11_B2D">
            <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7HUwyZaOeBR" role="3clF47">
        <node concept="3SKdUt" id="7HUwyZaOgx5" role="3cqZAp">
          <node concept="3SKdUq" id="7HUwyZaOgx7" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: implement me" />
          </node>
        </node>
        <node concept="YS8fn" id="7HUwyZaOg6C" role="3cqZAp">
          <node concept="2ShNRf" id="7HUwyZaOg8$" role="YScLw">
            <node concept="1pGfFk" id="7HUwyZaOgq0" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="7HUwyZaOgs4" role="37wK5m">
                <property role="Xl_RC" value="not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7HUwyZaOhSh" role="2AJF6D">
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
            <node concept="3uibUv" id="7HUwyZazx80" role="1tU5fm">
              <ref role="3uigEE" to="yg8f:qubcdt1pkm" resolve="LogicalExt" />
              <node concept="3uibUv" id="7HUwyZazx81" role="11_B2D">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
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
                <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
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
                    <ref role="37wK5l" to="45ys:677NV56hh2k" resolve="name" />
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
    <node concept="3clFb_" id="6HT7BWBMwRc" role="jymVt">
      <property role="TrG5h" value="atomValue" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="6HT7BWBNHCx" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
      <node concept="3Tmbuc" id="6HT7BWBMwRg" role="1B3o_S" />
      <node concept="3clFbS" id="6HT7BWBMwRp" role="3clF47">
        <node concept="3cpWs8" id="6HT7BWBNRfv" role="3cqZAp">
          <node concept="3cpWsn" id="6HT7BWBNRfw" role="3cpWs9">
            <property role="TrG5h" value="val" />
            <node concept="3uibUv" id="6HT7BWBNRfu" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
            <node concept="2OqwBi" id="6HT7BWBNRfx" role="33vP2m">
              <node concept="1rXfSq" id="6HT7BWBNRfy" role="2Oq$k0">
                <ref role="37wK5l" node="dfChU1gcsX" resolve="findRoot" />
              </node>
              <node concept="liA8E" id="6HT7BWBNRfz" role="2OqNvi">
                <ref role="37wK5l" to="95zw:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6HT7BWBMzt1" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <property role="TyiWL" value="false" />
          <node concept="3clFbS" id="6HT7BWBMzt2" role="3clFbx">
            <node concept="YS8fn" id="6HT7BWBMzt3" role="3cqZAp">
              <node concept="2ShNRf" id="6HT7BWBMzt4" role="YScLw">
                <node concept="1pGfFk" id="6HT7BWBMzt5" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="6HT7BWBMzt6" role="37wK5m">
                    <property role="Xl_RC" value="prorotype constraint violation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6HT7BWBMzt7" role="3clFbw">
            <node concept="3fqX7Q" id="6HT7BWBMzt8" role="3uHU7w">
              <node concept="2OqwBi" id="6HT7BWBMzt9" role="3fr31v">
                <node concept="37vLTw" id="6HT7BWBMzta" role="2Oq$k0">
                  <ref role="3cqZAo" node="7MlQDeOyfvd" resolve="prototype" />
                </node>
                <node concept="liA8E" id="6HT7BWBMztb" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Class.isAssignableFrom(java.lang.Class):boolean" resolve="isAssignableFrom" />
                  <node concept="2OqwBi" id="6HT7BWBMztc" role="37wK5m">
                    <node concept="37vLTw" id="6HT7BWBNSwT" role="2Oq$k0">
                      <ref role="3cqZAo" node="6HT7BWBNRfw" resolve="val" />
                    </node>
                    <node concept="liA8E" id="6HT7BWBMzte" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6HT7BWBMztf" role="3uHU7B">
              <node concept="37vLTw" id="6HT7BWBMztg" role="3uHU7B">
                <ref role="3cqZAo" node="7MlQDeOyfvd" resolve="prototype" />
              </node>
              <node concept="10Nm6u" id="6HT7BWBMzth" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6HT7BWBNT7e" role="3cqZAp">
          <node concept="37vLTw" id="6HT7BWBNT7c" role="3clFbG">
            <ref role="3cqZAo" node="6HT7BWBNRfw" resolve="val" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6HT7BWBMyhy" role="jymVt" />
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
              <ref role="37wK5l" to="95zw:3HJTsBmCy5P" resolve="name" />
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
                  <ref role="37wK5l" node="6HT7BWBMwRc" resolve="atomValue" />
                </node>
              </node>
              <node concept="3clFbH" id="6HT7BWBPJuI" role="3cqZAp" />
            </node>
            <node concept="1rXfSq" id="2h41EzbxGYR" role="3clFbw">
              <ref role="37wK5l" to="95zw:3HJTsBmC6RD" resolve="isBound" />
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
              <node concept="3clFbH" id="6HT7BWBQgbR" role="3cqZAp" />
            </node>
            <node concept="1rXfSq" id="2h41EzbxNuf" role="3clFbw">
              <ref role="37wK5l" to="95zw:3HJTsBmC6RD" resolve="isBound" />
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
                <ref role="37wK5l" to="95zw:2DKqMqOiEEz" resolve="isWildcard" />
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
                <ref role="37wK5l" to="95zw:3HJTsBmCy5P" resolve="name" />
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
                    <ref role="37wK5l" to="95zw:3HJTsBmCeUf" resolve="hashCode" />
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
                <ref role="37wK5l" to="95zw:3HJTsBmCeTt" resolve="equals" />
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
      <ref role="3uigEE" to="95zw:3HJTsBmBSJa" resolve="AbstractLogical" />
      <node concept="3uibUv" id="4U_yxogB8yy" role="11_B2D">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
    </node>
    <node concept="3uibUv" id="7HUwyZazx8k" role="EKbjA">
      <ref role="3uigEE" to="yg8f:qubcdt1pkm" resolve="LogicalExt" />
      <node concept="3uibUv" id="7HUwyZazx8l" role="11_B2D">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
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
    <property role="TrG5h" value="UnificationPredicate" />
    <node concept="2tJIrI" id="5uFPQ7C29se" role="jymVt" />
    <node concept="3Tm1VV" id="2GO7tyJVmP5" role="1B3o_S" />
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
    <node concept="2tJIrI" id="7ISVfSOYu4" role="jymVt" />
    <node concept="Wx3nA" id="5uFPQ7C29mw" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="UNI_SYM" />
      <node concept="3Tm1VV" id="5uFPQ7C29mq" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7C29mr" role="1tU5fm">
        <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="5uFPQ7C29ms" role="33vP2m">
        <node concept="1pGfFk" id="5uFPQ7C29mt" role="2ShVmc">
          <ref role="37wK5l" to="qrld:5uFPQ7B$$fT" resolve="PredicateSymbol" />
          <node concept="37vLTw" id="5uFPQ7C29mu" role="37wK5m">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
          </node>
          <node concept="3cmrfG" id="5uFPQ7C29mv" role="37wK5m">
            <property role="3cmrfH" value="2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJVqjK" role="jymVt" />
    <node concept="3clFbW" id="4xBopTzmopz" role="jymVt">
      <node concept="37vLTG" id="5uFPQ7C29xx" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="5uFPQ7C29_R" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5uFPQ7C29DX" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="5uFPQ7C29G3" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="4xBopTzmop_" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzmopA" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzmopB" role="3clF47">
        <node concept="XkiVB" id="4xBopTzmoNB" role="3cqZAp">
          <ref role="37wK5l" to="qrld:6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="5uFPQ7C29Rp" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7C29xx" resolve="left" />
          </node>
          <node concept="37vLTw" id="5uFPQ7C29TI" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7C29DX" resolve="right" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzmo93" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSJpsU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="7ISVfSJpsV" role="3clF45">
        <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="7ISVfSJpsW" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSJpsZ" role="3clF47">
        <node concept="3clFbF" id="7ISVfSJpt1" role="3cqZAp">
          <node concept="37vLTw" id="7ISVfSJpym" role="3clFbG">
            <ref role="3cqZAo" node="5uFPQ7C29mw" resolve="UNI_SYM" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="4xBopTzmmAx" role="1zkMxy">
      <ref role="3uigEE" to="qrld:6Kcfpq7B0Wu" resolve="AbstractPredicate" />
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
          <ref role="37wK5l" to="95zw:3HJTsBmBUfM" resolve="AbstractLogical" />
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
          <ref role="37wK5l" to="95zw:2DKqMqOlOj4" resolve="AbstractLogical" />
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
          <ref role="37wK5l" to="95zw:3HJTsBmBVmo" resolve="AbstractLogical" />
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
          <ref role="37wK5l" to="95zw:3HJTsBmBVmo" resolve="AbstractLogical" />
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
        <node concept="3cpWs6" id="7jC45KciLiJ" role="3cqZAp">
          <node concept="2ShNRf" id="7jC45KciM65" role="3cqZAk">
            <node concept="1pGfFk" id="7jC45KciN1y" role="2ShVmc">
              <ref role="37wK5l" node="7jC45Kciqer" resolve="StringLogical.StringLogicalVar" />
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
    <node concept="2tJIrI" id="7HUwyZaOm44" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaOlmP" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="pattern" />
      <node concept="3Tm1VV" id="7HUwyZaOlmQ" role="1B3o_S" />
      <node concept="3uibUv" id="7HUwyZaOlmR" role="3clF45">
        <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="LogicalPattern" />
        <node concept="3uibUv" id="49L2l3FdrEZ" role="11_B2D">
          <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
          <node concept="17QB3L" id="49L2l3Fdt2$" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="7HUwyZaOlmS" role="3clF47">
        <node concept="3SKdUt" id="7HUwyZaOlmT" role="3cqZAp">
          <node concept="3SKdUq" id="7HUwyZaOlmU" role="3SKWNk">
            <property role="3SKdUp" value="TODO: implement me" />
          </node>
        </node>
        <node concept="YS8fn" id="7HUwyZaOlmV" role="3cqZAp">
          <node concept="2ShNRf" id="7HUwyZaOlmW" role="YScLw">
            <node concept="1pGfFk" id="7HUwyZaOlmX" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="7HUwyZaOlmY" role="37wK5m">
                <property role="Xl_RC" value="not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7HUwyZaOlmZ" role="2AJF6D">
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
                    <ref role="37wK5l" to="95zw:3HJTsBmBZ0h" resolve="value" />
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
                <ref role="37wK5l" to="95zw:3HJTsBmBZ0h" resolve="value" />
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
                        <ref role="37wK5l" to="95zw:3HJTsBmCy5P" resolve="name" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="5NuEpF1zcWy" role="3uHU7B">
                      <node concept="1rXfSq" id="5NuEpF1zc_Z" role="3uHU7B">
                        <ref role="37wK5l" to="95zw:3HJTsBmCy5P" resolve="name" />
                      </node>
                      <node concept="Xl_RD" id="5NuEpF1zcXi" role="3uHU7w">
                        <property role="Xl_RC" value=":" />
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="5NuEpF1zcvb" role="3K4E3e">
                    <ref role="37wK5l" to="95zw:3HJTsBmCy5P" resolve="name" />
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
    <node concept="2tJIrI" id="6HT7BWBPABJ" role="jymVt" />
    <node concept="3clFb_" id="6HT7BWBPBnJ" role="jymVt">
      <property role="TrG5h" value="atomValue" />
      <node concept="3uibUv" id="6HT7BWBPRdK" role="3clF45">
        <ref role="3uigEE" to="ie8e:2xQ7eRAD2dj" resolve="Value" />
      </node>
      <node concept="3Tmbuc" id="6HT7BWBPBZC" role="1B3o_S" />
      <node concept="3clFbS" id="6HT7BWBPBnN" role="3clF47">
        <node concept="3clFbF" id="6HT7BWBPT4U" role="3cqZAp">
          <node concept="2YIFZM" id="6HT7BWBPT91" role="3clFbG">
            <ref role="37wK5l" to="ie8e:5JQSuNsxb_I" resolve="create" />
            <ref role="1Pybhc" to="ie8e:2xQ7eRAD2dj" resolve="Value" />
            <node concept="2OqwBi" id="6HT7BWBPFFL" role="37wK5m">
              <node concept="1rXfSq" id="6HT7BWBPEIF" role="2Oq$k0">
                <ref role="37wK5l" node="dfChU1gi$L" resolve="findRoot" />
              </node>
              <node concept="liA8E" id="6HT7BWBPGVx" role="2OqNvi">
                <ref role="37wK5l" to="95zw:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
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
      <node concept="3clFb_" id="6HT7BWBPzSO" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="get" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="6HT7BWBPzSP" role="1B3o_S" />
        <node concept="3uibUv" id="6HT7BWBPzSQ" role="3clF45">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
        <node concept="2AHcQZ" id="6HT7BWBPzSU" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="6HT7BWBPzSV" role="3clF47">
          <node concept="3clFbJ" id="6HT7BWBPIxl" role="3cqZAp">
            <node concept="3clFbS" id="6HT7BWBPIxm" role="3clFbx">
              <node concept="3cpWs6" id="6HT7BWBPJjF" role="3cqZAp">
                <node concept="1rXfSq" id="6HT7BWBPJ4i" role="3cqZAk">
                  <ref role="37wK5l" node="6HT7BWBPBnJ" resolve="atomValue" />
                </node>
              </node>
              <node concept="3clFbH" id="6HT7BWBPL84" role="3cqZAp" />
            </node>
            <node concept="1rXfSq" id="6HT7BWBPIB1" role="3clFbw">
              <ref role="37wK5l" to="95zw:3HJTsBmC6RD" resolve="isBound" />
            </node>
            <node concept="9aQIb" id="6HT7BWBPKuY" role="9aQIa">
              <node concept="3clFbS" id="6HT7BWBPKuZ" role="9aQI4">
                <node concept="3cpWs6" id="6HT7BWBPLOV" role="3cqZAp">
                  <node concept="Xjq3P" id="6HT7BWBPMfM" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6HT7BWBP_oA" role="jymVt" />
      <node concept="3clFb_" id="6HT7BWBR7aw" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="is" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="6HT7BWBR7ax" role="1B3o_S" />
        <node concept="37vLTG" id="6HT7BWBR7ay" role="3clF46">
          <property role="TrG5h" value="kind" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="6HT7BWBR7az" role="1tU5fm">
            <ref role="3uigEE" to="yt73:~Term.Kind" resolve="Term.Kind" />
          </node>
        </node>
        <node concept="10P_77" id="6HT7BWBR7a$" role="3clF45" />
        <node concept="2AHcQZ" id="6HT7BWBR7aE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="6HT7BWBR7aF" role="3clF47">
          <node concept="3clFbJ" id="6HT7BWBR9uO" role="3cqZAp">
            <node concept="3clFbS" id="6HT7BWBR9uP" role="3clFbx">
              <node concept="3cpWs6" id="6HT7BWBR9uQ" role="3cqZAp">
                <node concept="3clFbC" id="6HT7BWBR9uR" role="3cqZAk">
                  <node concept="37vLTw" id="6HT7BWBR9uS" role="3uHU7w">
                    <ref role="3cqZAo" node="6HT7BWBR7ay" resolve="kind" />
                  </node>
                  <node concept="Rm8GO" id="6HT7BWBR9uT" role="3uHU7B">
                    <ref role="1Px2BO" to="yt73:~Term.Kind" resolve="Term.Kind" />
                    <ref role="Rm8GQ" to="yt73:~Term.REF" resolve="REF" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6HT7BWBR9uU" role="3cqZAp" />
            </node>
            <node concept="1rXfSq" id="6HT7BWBR9uV" role="3clFbw">
              <ref role="37wK5l" to="95zw:3HJTsBmC6RD" resolve="isBound" />
            </node>
            <node concept="9aQIb" id="6HT7BWBR9uW" role="9aQIa">
              <node concept="3clFbS" id="6HT7BWBR9uX" role="9aQI4">
                <node concept="3cpWs6" id="6HT7BWBR9uY" role="3cqZAp">
                  <node concept="3clFbC" id="6HT7BWBR9uZ" role="3cqZAk">
                    <node concept="37vLTw" id="6HT7BWBR9v0" role="3uHU7w">
                      <ref role="3cqZAo" node="6HT7BWBR7ay" resolve="kind" />
                    </node>
                    <node concept="Rm8GO" id="6HT7BWBR9v1" role="3uHU7B">
                      <ref role="1Px2BO" to="yt73:~Term.Kind" resolve="Term.Kind" />
                      <ref role="Rm8GQ" to="yt73:~Term.VAR" resolve="VAR" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6HT7BWBR7Tb" role="jymVt" />
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
                <ref role="37wK5l" to="95zw:3HJTsBmCy5P" resolve="name" />
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
                    <ref role="37wK5l" to="95zw:3HJTsBmCeUf" resolve="hashCode" />
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
                <ref role="37wK5l" to="95zw:3HJTsBmCeTt" resolve="equals" />
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
      <ref role="3uigEE" to="95zw:3HJTsBmBSJa" resolve="AbstractLogical" />
      <node concept="17QB3L" id="77AxcO5bvNq" role="11_B2D" />
    </node>
    <node concept="3UR2Jj" id="1H8E3iB8hOe" role="lGtFl">
      <node concept="TZ5HA" id="3HJTsBmCGUa" role="TZ5H$">
        <node concept="1dT_AC" id="3HJTsBmCGUb" role="1dT_Ay">
          <property role="1dT_AB" value="A logical variable representing string value." />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="7HUwyZazJWS" role="EKbjA">
      <ref role="3uigEE" to="yg8f:qubcdt1pkm" resolve="LogicalExt" />
      <node concept="3uibUv" id="7HUwyZazJWT" role="11_B2D">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3HJTsBn4kk_">
    <property role="TrG5h" value="EqualsPredicate" />
    <node concept="2tJIrI" id="7ISVfSJmTL" role="jymVt" />
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
    <node concept="Wx3nA" id="5uFPQ7C23RV" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="EQ_SYM" />
      <node concept="3Tm1VV" id="5uFPQ7C23RP" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7C23RQ" role="1tU5fm">
        <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="5uFPQ7C23RR" role="33vP2m">
        <node concept="1pGfFk" id="5uFPQ7C23RS" role="2ShVmc">
          <ref role="37wK5l" to="qrld:5uFPQ7B$$fT" resolve="PredicateSymbol" />
          <node concept="37vLTw" id="5uFPQ7C23RT" role="37wK5m">
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
          </node>
          <node concept="3cmrfG" id="5uFPQ7C23RU" role="37wK5m">
            <property role="3cmrfH" value="2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4kJ_" role="jymVt" />
    <node concept="3clFbW" id="4xBopTzo_Q1" role="jymVt">
      <node concept="37vLTG" id="5uFPQ7C24iY" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="5uFPQ7C24qL" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5uFPQ7C24vP" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="5uFPQ7C24$_" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="4xBopTzo_Q3" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzo_Q4" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzo_Q5" role="3clF47">
        <node concept="XkiVB" id="4xBopTzoAs2" role="3cqZAp">
          <ref role="37wK5l" to="qrld:6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="5uFPQ7C24EQ" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7C24iY" resolve="left" />
          </node>
          <node concept="37vLTw" id="5uFPQ7C24Gx" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7C24vP" resolve="right" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzo_yK" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7BZaxa" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="5uFPQ7BZaJx" role="3clF45">
        <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7BZaxc" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BZaxh" role="3clF47">
        <node concept="3clFbF" id="7ISVfSJoMD" role="3cqZAp">
          <node concept="37vLTw" id="7ISVfSJoMC" role="3clFbG">
            <ref role="3cqZAo" node="5uFPQ7C23RV" resolve="EQ_SYM" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzop_B" role="jymVt" />
    <node concept="3Tm1VV" id="3HJTsBn4kkA" role="1B3o_S" />
    <node concept="3uibUv" id="4xBopTzozPs" role="1zkMxy">
      <ref role="3uigEE" to="qrld:6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
  </node>
  <node concept="312cEu" id="6infEALAfer">
    <property role="TrG5h" value="AssertPredicate" />
    <node concept="2tJIrI" id="5uFPQ7BZo0w" role="jymVt" />
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
    <node concept="Wx3nA" id="5uFPQ7BZnLB" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ASSERT_SYM" />
      <node concept="3Tm1VV" id="5uFPQ7BZnLx" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7BZnLy" role="1tU5fm">
        <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="5uFPQ7BZnLz" role="33vP2m">
        <node concept="1pGfFk" id="5uFPQ7BZnL$" role="2ShVmc">
          <ref role="37wK5l" to="qrld:5uFPQ7B$$fT" resolve="PredicateSymbol" />
          <node concept="37vLTw" id="5uFPQ7BZnL_" role="37wK5m">
            <ref role="3cqZAo" node="6infEALAgS7" resolve="ASSERT" />
          </node>
          <node concept="3cmrfG" id="5uFPQ7BZnLA" role="37wK5m">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALAgQp" role="jymVt" />
    <node concept="3clFbW" id="4xBopTzrPWl" role="jymVt">
      <node concept="37vLTG" id="5uFPQ7C251x" role="3clF46">
        <property role="TrG5h" value="expression" />
        <node concept="3uibUv" id="5uFPQ7C256l" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="4xBopTzrPWn" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzrPWo" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzrPWp" role="3clF47">
        <node concept="XkiVB" id="4xBopTzrQgb" role="3cqZAp">
          <ref role="37wK5l" to="qrld:6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="5uFPQ7C25fP" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7C251x" resolve="expression" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzrQOJ" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSJpfI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="7ISVfSJpfJ" role="3clF45">
        <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="7ISVfSJpfK" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSJpfN" role="3clF47">
        <node concept="3clFbF" id="7ISVfSJpfP" role="3cqZAp">
          <node concept="37vLTw" id="7ISVfSJpnd" role="3clFbG">
            <ref role="3cqZAo" node="5uFPQ7BZnLB" resolve="ASSERT_SYM" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzs2O5" role="jymVt" />
    <node concept="3Tm1VV" id="6infEALAfes" role="1B3o_S" />
    <node concept="3uibUv" id="4xBopTzrP0O" role="1zkMxy">
      <ref role="3uigEE" to="qrld:6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
  </node>
  <node concept="312cEu" id="7HUwyZbdMWH">
    <property role="TrG5h" value="LogicalPatternAtom" />
    <node concept="2tJIrI" id="7HUwyZbdN_B" role="jymVt" />
    <node concept="3clFbW" id="7HUwyZbdNAd" role="jymVt">
      <node concept="3cqZAl" id="7HUwyZbdNAf" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZbdNAg" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZbdNAh" role="3clF47">
        <node concept="XkiVB" id="7HUwyZbdOUD" role="3cqZAp">
          <ref role="37wK5l" to="ie8e:uNmovXiEVu" resolve="Variable" />
          <node concept="2OqwBi" id="7HUwyZbdOYl" role="37wK5m">
            <node concept="37vLTw" id="7HUwyZbdOWP" role="2Oq$k0">
              <ref role="3cqZAo" node="7HUwyZbdNBn" resolve="logicalPattern" />
            </node>
            <node concept="liA8E" id="7HUwyZbdOZR" role="2OqNvi">
              <ref role="37wK5l" to="45ys:7HUwyZauJkq" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7HUwyZbdNBC" role="3cqZAp">
          <node concept="37vLTI" id="7HUwyZbdNBE" role="3clFbG">
            <node concept="2OqwBi" id="7HUwyZbdNBI" role="37vLTJ">
              <node concept="Xjq3P" id="7HUwyZbdNBL" role="2Oq$k0" />
              <node concept="2OwXpG" id="7HUwyZbdNBH" role="2OqNvi">
                <ref role="2Oxat5" node="7HUwyZbdNB$" resolve="logicalPattern" />
              </node>
            </node>
            <node concept="37vLTw" id="7HUwyZbdNBM" role="37vLTx">
              <ref role="3cqZAo" node="7HUwyZbdNBn" resolve="logicalPattern" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7HUwyZbdNBn" role="3clF46">
        <property role="TrG5h" value="logicalPattern" />
        <node concept="3uibUv" id="7HUwyZbdNBm" role="1tU5fm">
          <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="LogicalPattern" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZbdN_E" role="jymVt" />
    <node concept="3clFb_" id="514BAS_Xsp_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="logical" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="514BAS_XspC" role="3clF47">
        <node concept="3clFbF" id="514BAS_XsAX" role="3cqZAp">
          <node concept="37vLTw" id="514BAS_XsAW" role="3clFbG">
            <ref role="3cqZAo" node="7HUwyZbdNB$" resolve="logicalPattern" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="514BAS_Xsj_" role="1B3o_S" />
      <node concept="3uibUv" id="514BAS_Xswm" role="3clF45">
        <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="LogicalPattern" />
      </node>
    </node>
    <node concept="2tJIrI" id="514BAS_XsdE" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZbdP0v" role="jymVt">
      <property role="TrG5h" value="isWildcard" />
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <node concept="10P_77" id="7HUwyZbdP0w" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZbdP0x" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZbdP0_" role="3clF47">
        <node concept="3clFbF" id="7HUwyZbdP6z" role="3cqZAp">
          <node concept="2OqwBi" id="7HUwyZbdP82" role="3clFbG">
            <node concept="37vLTw" id="7HUwyZbdP6y" role="2Oq$k0">
              <ref role="3cqZAo" node="7HUwyZbdNB$" resolve="logicalPattern" />
            </node>
            <node concept="liA8E" id="7HUwyZbdPaE" role="2OqNvi">
              <ref role="37wK5l" to="45ys:7HUwyZauJox" resolve="isWildcard" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7HUwyZbdP0A" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZbdPbb" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZbdPno" role="jymVt">
      <property role="TrG5h" value="canRepresent" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="7HUwyZbdPnp" role="3clF46">
        <property role="TrG5h" value="klass" />
        <node concept="3uibUv" id="7HUwyZbdPnq" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="7HUwyZbdPnr" role="11_B2D">
            <node concept="3uibUv" id="7HUwyZbdPns" role="3qUE_r">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="7HUwyZbdPnt" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZbdPnu" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZbdPny" role="3clF47">
        <node concept="3clFbF" id="7HUwyZbdW0Q" role="3cqZAp">
          <node concept="2OqwBi" id="7HUwyZbdW7Q" role="3clFbG">
            <node concept="2OqwBi" id="7HUwyZbdW2l" role="2Oq$k0">
              <node concept="37vLTw" id="7HUwyZbdW0P" role="2Oq$k0">
                <ref role="3cqZAo" node="7HUwyZbdNB$" resolve="logicalPattern" />
              </node>
              <node concept="liA8E" id="7HUwyZbdW4K" role="2OqNvi">
                <ref role="37wK5l" to="45ys:7HUwyZaC3Q7" resolve="type" />
              </node>
            </node>
            <node concept="liA8E" id="7HUwyZbdW_w" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Class.isAssignableFrom(java.lang.Class):boolean" resolve="isAssignableFrom" />
              <node concept="37vLTw" id="7HUwyZbdWCq" role="37wK5m">
                <ref role="3cqZAo" node="7HUwyZbdPnp" resolve="klass" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7HUwyZbdPnz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZbdNCL" role="jymVt" />
    <node concept="3Tm1VV" id="7HUwyZbdMWI" role="1B3o_S" />
    <node concept="3uibUv" id="7HUwyZbdN_j" role="1zkMxy">
      <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
    </node>
    <node concept="312cEg" id="7HUwyZbdNB$" role="jymVt">
      <property role="TrG5h" value="logicalPattern" />
      <node concept="3Tm6S6" id="7HUwyZbdNB_" role="1B3o_S" />
      <node concept="3uibUv" id="7HUwyZbdNBB" role="1tU5fm">
        <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="LogicalPattern" />
      </node>
    </node>
  </node>
</model>

