<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.unification)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="yt73" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.unification(jetbrains.mps.logic.reactor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.dataform)" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="7HUwyZbdMWH">
    <property role="TrG5h" value="MetaLogicalDataForm" />
    <node concept="2tJIrI" id="7HUwyZbdN_B" role="jymVt" />
    <node concept="3clFbW" id="7HUwyZbdNAd" role="jymVt">
      <node concept="3cqZAl" id="7HUwyZbdNAf" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZbdNAg" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZbdNAh" role="3clF47">
        <node concept="XkiVB" id="7HUwyZbdOUD" role="3cqZAp">
          <ref role="37wK5l" to="6exd:uNmovXiEVu" resolve="Variable" />
        </node>
        <node concept="3SKdUt" id="4sSe4$pxFOq" role="3cqZAp">
          <node concept="3SKdUq" id="4sSe4$pxFOs" role="3SKWNk">
            <property role="3SKdUp" value="TODO: superfluous field" />
          </node>
        </node>
        <node concept="3clFbF" id="7HUwyZbdNBC" role="3cqZAp">
          <node concept="37vLTI" id="7HUwyZbdNBE" role="3clFbG">
            <node concept="2OqwBi" id="7HUwyZbdNBI" role="37vLTJ">
              <node concept="Xjq3P" id="7HUwyZbdNBL" role="2Oq$k0" />
              <node concept="2OwXpG" id="7HUwyZbdNBH" role="2OqNvi">
                <ref role="2Oxat5" node="7HUwyZbdNB$" resolve="metaLogical" />
              </node>
            </node>
            <node concept="37vLTw" id="7HUwyZbdNBM" role="37vLTx">
              <ref role="3cqZAo" node="7HUwyZbdNBn" resolve="metaLogical" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7HUwyZbdNBn" role="3clF46">
        <property role="TrG5h" value="metaLogical" />
        <node concept="3uibUv" id="7HUwyZbdNBm" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZbdN_E" role="jymVt" />
    <node concept="3clFb_" id="7BhUeN7yvD4" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm1VV" id="7BhUeN7yvD5" role="1B3o_S" />
      <node concept="3uibUv" id="7BhUeN7yvD7" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3clFbS" id="7BhUeN7yvDa" role="3clF47">
        <node concept="3clFbF" id="7BhUeN7yw5v" role="3cqZAp">
          <node concept="37vLTw" id="7BhUeN7yw5s" role="3clFbG">
            <ref role="3cqZAo" node="7HUwyZbdNB$" resolve="metaLogical" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7BhUeN7yvDb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7BhUeN7yw6j" role="jymVt" />
    <node concept="3clFb_" id="514BAS_Xsp_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="metaLogical" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="514BAS_XspC" role="3clF47">
        <node concept="3clFbF" id="514BAS_XsAX" role="3cqZAp">
          <node concept="37vLTw" id="514BAS_XsAW" role="3clFbG">
            <ref role="3cqZAo" node="7HUwyZbdNB$" resolve="metaLogical" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="514BAS_Xsj_" role="1B3o_S" />
      <node concept="3uibUv" id="514BAS_Xswm" role="3clF45">
        <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
      </node>
    </node>
    <node concept="2tJIrI" id="514BAS_XsdE" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZbdP0v" role="jymVt">
      <property role="TrG5h" value="isWildcard" />
      <property role="1EzhhJ" value="false" />
      <node concept="10P_77" id="7HUwyZbdP0w" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZbdP0x" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZbdP0_" role="3clF47">
        <node concept="3clFbF" id="7HUwyZbdP6z" role="3cqZAp">
          <node concept="2OqwBi" id="7HUwyZbdP82" role="3clFbG">
            <node concept="37vLTw" id="7HUwyZbdP6y" role="2Oq$k0">
              <ref role="3cqZAo" node="7HUwyZbdNB$" resolve="metaLogical" />
            </node>
            <node concept="liA8E" id="7HUwyZbdPaE" role="2OqNvi">
              <ref role="37wK5l" to="bj13:~MetaLogical.isWildcard():boolean" resolve="isWildcard" />
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
              <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="7HUwyZbdPnt" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZbdPnu" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZbdPny" role="3clF47">
        <node concept="3clFbF" id="7HUwyZbdW0Q" role="3cqZAp">
          <node concept="2OqwBi" id="6OUp3PsSKto" role="3clFbG">
            <node concept="2OqwBi" id="7HUwyZbdW2l" role="2Oq$k0">
              <node concept="37vLTw" id="7HUwyZbdW0P" role="2Oq$k0">
                <ref role="3cqZAo" node="7HUwyZbdNB$" resolve="metaLogical" />
              </node>
              <node concept="liA8E" id="7HUwyZbdW4K" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~MetaLogical.type():java.lang.Class" resolve="type" />
              </node>
            </node>
            <node concept="liA8E" id="6OUp3PsSKJ7" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="37vLTw" id="6OUp3PsSKQb" role="37wK5m">
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
              <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
              <ref role="Rm8GQ" to="yt73:~Term$Kind.VAR" resolve="VAR" />
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
    <node concept="2tJIrI" id="3gNap3ffGmS" role="jymVt" />
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
      <node concept="2AHcQZ" id="3gNap3ffGir" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3ffG7C" role="jymVt" />
    <node concept="3clFb_" id="4sSe4$psaDX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4sSe4$psaDY" role="1B3o_S" />
      <node concept="17QB3L" id="4sSe4$psaDZ" role="3clF45" />
      <node concept="2AHcQZ" id="4sSe4$psaE7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="4sSe4$psaE8" role="3clF47">
        <node concept="3clFbF" id="4sSe4$pscgI" role="3cqZAp">
          <node concept="2OqwBi" id="4sSe4$pscAv" role="3clFbG">
            <node concept="37vLTw" id="4sSe4$pscgH" role="2Oq$k0">
              <ref role="3cqZAo" node="7HUwyZbdNB$" resolve="metaLogical" />
            </node>
            <node concept="liA8E" id="4sSe4$pscXp" role="2OqNvi">
              <ref role="37wK5l" to="bj13:~MetaLogical.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fNdDZ" role="jymVt" />
    <node concept="3clFb_" id="3gNap3ffK1R" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3gNap3ffK1S" role="1B3o_S" />
      <node concept="10Oyi0" id="3gNap3ffK1T" role="3clF45" />
      <node concept="2AHcQZ" id="3gNap3ffK1U" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3gNap3ffK1V" role="3clF47">
        <node concept="3clFbF" id="3gNap3ffK1W" role="3cqZAp">
          <node concept="3cpWs3" id="3gNap3ffK1X" role="3clFbG">
            <node concept="3cmrfG" id="3gNap3ffK1Y" role="3uHU7w">
              <property role="3cmrfH" value="37" />
            </node>
            <node concept="17qRlL" id="3gNap3ffK1Z" role="3uHU7B">
              <node concept="2OqwBi" id="3gNap3ffK20" role="3uHU7B">
                <node concept="37vLTw" id="3gNap3ffRxc" role="2Oq$k0">
                  <ref role="3cqZAo" node="7HUwyZbdNB$" resolve="metaLogical" />
                </node>
                <node concept="liA8E" id="3gNap3ffK22" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
                </node>
              </node>
              <node concept="3cmrfG" id="3gNap3ffK23" role="3uHU7w">
                <property role="3cmrfH" value="19" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3ffK24" role="jymVt" />
    <node concept="3clFb_" id="3gNap3ffK25" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3gNap3ffK26" role="1B3o_S" />
      <node concept="10P_77" id="3gNap3ffK27" role="3clF45" />
      <node concept="37vLTG" id="3gNap3ffK28" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="3gNap3ffK29" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3gNap3ffK2a" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3gNap3ffK2b" role="3clF47">
        <node concept="3clFbJ" id="3gNap3ffK2c" role="3cqZAp">
          <node concept="3clFbS" id="3gNap3ffK2d" role="3clFbx">
            <node concept="3cpWs6" id="3gNap3ffK2e" role="3cqZAp">
              <node concept="3clFbT" id="3gNap3ffK2f" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="3gNap3ffK2g" role="3clFbw">
            <node concept="2ZW3vV" id="3gNap3ffK2h" role="3fr31v">
              <node concept="3uibUv" id="3gNap3ffKYO" role="2ZW6by">
                <ref role="3uigEE" node="7HUwyZbdMWH" resolve="MetaLogicalDataForm" />
              </node>
              <node concept="37vLTw" id="3gNap3ffK2j" role="2ZW6bz">
                <ref role="3cqZAo" node="3gNap3ffK28" resolve="that" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3gNap3ffK2k" role="3cqZAp">
          <node concept="2OqwBi" id="3gNap3ffK2l" role="3clFbG">
            <node concept="2OqwBi" id="3gNap3ffK2m" role="2Oq$k0">
              <node concept="Xjq3P" id="3gNap3ffK2n" role="2Oq$k0" />
              <node concept="2OwXpG" id="3gNap3ffTyO" role="2OqNvi">
                <ref role="2Oxat5" node="7HUwyZbdNB$" resolve="metaLogical" />
              </node>
            </node>
            <node concept="liA8E" id="3gNap3ffK2p" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="2OqwBi" id="3gNap3ffK2q" role="37wK5m">
                <node concept="1eOMI4" id="3gNap3ffK2r" role="2Oq$k0">
                  <node concept="10QFUN" id="3gNap3ffK2s" role="1eOMHV">
                    <node concept="37vLTw" id="3gNap3ffK2t" role="10QFUP">
                      <ref role="3cqZAo" node="3gNap3ffK28" resolve="that" />
                    </node>
                    <node concept="3uibUv" id="3gNap3ffKYR" role="10QFUM">
                      <ref role="3uigEE" node="7HUwyZbdMWH" resolve="MetaLogicalDataForm" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="3gNap3ffLkV" role="2OqNvi">
                  <ref role="2Oxat5" node="7HUwyZbdNB$" resolve="metaLogical" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$psb5H" role="jymVt" />
    <node concept="3Tm1VV" id="7HUwyZbdMWI" role="1B3o_S" />
    <node concept="3uibUv" id="7HUwyZbdN_j" role="1zkMxy">
      <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
    </node>
    <node concept="312cEg" id="7HUwyZbdNB$" role="jymVt">
      <property role="TrG5h" value="metaLogical" />
      <node concept="3Tm6S6" id="7HUwyZbdNB_" role="1B3o_S" />
      <node concept="3uibUv" id="7HUwyZbdNBB" role="1tU5fm">
        <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4TCblo5MJ1m">
    <property role="TrG5h" value="LogicalDataForm" />
    <node concept="2tJIrI" id="4TCblo5MOJG" role="jymVt" />
    <node concept="312cEg" id="4TCblo5MOOn" role="jymVt">
      <property role="TrG5h" value="logical" />
      <node concept="3Tm6S6" id="4TCblo5MOOo" role="1B3o_S" />
      <node concept="3uibUv" id="4TCblo5MOQr" role="1tU5fm">
        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
        <node concept="16syzq" id="4TCblo5MP6S" role="11_B2D">
          <ref role="16sUi3" node="4TCblo5MNXi" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5MP7N" role="jymVt" />
    <node concept="3clFbW" id="4TCblo5ML4I" role="jymVt">
      <node concept="37vLTG" id="4TCblo5MNMf" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="4TCblo5MNQb" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
          <node concept="16syzq" id="4TCblo5MOdf" role="11_B2D">
            <ref role="16sUi3" node="4TCblo5MNXi" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4TCblo5ML4K" role="3clF45" />
      <node concept="3Tm1VV" id="4TCblo5ML4L" role="1B3o_S" />
      <node concept="3clFbS" id="4TCblo5ML4M" role="3clF47">
        <node concept="XkiVB" id="4TCblo5MOl_" role="3cqZAp">
          <ref role="37wK5l" to="6exd:uNmovXiEVu" resolve="Variable" />
        </node>
        <node concept="3SKdUt" id="4sSe4$pxIbF" role="3cqZAp">
          <node concept="3SKdUq" id="4sSe4$pxIbH" role="3SKWNk">
            <property role="3SKdUp" value="TODO: superfluous field" />
          </node>
        </node>
        <node concept="3clFbF" id="4TCblo5MPbq" role="3cqZAp">
          <node concept="37vLTI" id="4TCblo5MPBG" role="3clFbG">
            <node concept="37vLTw" id="4TCblo5MPGO" role="37vLTx">
              <ref role="3cqZAo" node="4TCblo5MNMf" resolve="logical" />
            </node>
            <node concept="2OqwBi" id="4TCblo5MPev" role="37vLTJ">
              <node concept="Xjq3P" id="4TCblo5MPbo" role="2Oq$k0" />
              <node concept="2OwXpG" id="4TCblo5MPum" role="2OqNvi">
                <ref role="2Oxat5" node="4TCblo5MOOn" resolve="logical" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5MPIA" role="jymVt" />
    <node concept="3clFb_" id="7BhUeN7yuQZ" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm1VV" id="7BhUeN7yuR0" role="1B3o_S" />
      <node concept="3uibUv" id="7BhUeN7yuR2" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3clFbS" id="7BhUeN7yuR5" role="3clF47">
        <node concept="3clFbF" id="7BhUeN7yvv0" role="3cqZAp">
          <node concept="37vLTw" id="7BhUeN7yvuX" role="3clFbG">
            <ref role="3cqZAo" node="4TCblo5MOOn" resolve="logical" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7BhUeN7yuR6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7BhUeN7yvvO" role="jymVt" />
    <node concept="3clFb_" id="4TCblo5MSCA" role="jymVt">
      <property role="TrG5h" value="isWildcard" />
      <property role="1EzhhJ" value="false" />
      <node concept="10P_77" id="4TCblo5MSCB" role="3clF45" />
      <node concept="3Tm1VV" id="4TCblo5MSCC" role="1B3o_S" />
      <node concept="3clFbS" id="4TCblo5MSCG" role="3clF47">
        <node concept="3clFbF" id="4TCblo5MULK" role="3cqZAp">
          <node concept="2OqwBi" id="4TCblo5MUU0" role="3clFbG">
            <node concept="37vLTw" id="4TCblo5MULJ" role="2Oq$k0">
              <ref role="3cqZAo" node="4TCblo5MOOn" resolve="logical" />
            </node>
            <node concept="liA8E" id="4TCblo5MV1e" role="2OqNvi">
              <ref role="37wK5l" to="bj13:~Logical.isWildcard():boolean" resolve="isWildcard" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4TCblo5MSCH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3ffFBE" role="jymVt" />
    <node concept="3clFb_" id="4TCblo5MWaC" role="jymVt">
      <property role="TrG5h" value="canRepresent" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="4TCblo5MWaD" role="3clF46">
        <property role="TrG5h" value="klass" />
        <node concept="3uibUv" id="4TCblo5MWaE" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="4TCblo5MWaF" role="11_B2D">
            <node concept="3uibUv" id="4TCblo5MWaG" role="3qUE_r">
              <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4TCblo5MWaH" role="3clF45" />
      <node concept="3Tm1VV" id="4TCblo5MWaI" role="1B3o_S" />
      <node concept="3clFbS" id="4TCblo5MWaM" role="3clF47">
        <node concept="3clFbJ" id="4TCblo5PbR3" role="3cqZAp">
          <node concept="3y3z36" id="4TCblo5PgbW" role="3clFbw">
            <node concept="10Nm6u" id="4TCblo5Pgg9" role="3uHU7w" />
            <node concept="2OqwBi" id="4TCblo5PfKR" role="3uHU7B">
              <node concept="37vLTw" id="4TCblo5Pf_R" role="2Oq$k0">
                <ref role="3cqZAo" node="4TCblo5MOOn" resolve="logical" />
              </node>
              <node concept="liA8E" id="4TCblo5PfRq" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.metaLogical():jetbrains.mps.logic.reactor.logical.MetaLogical" resolve="metaLogical" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4TCblo5Pf7P" role="3clFbx">
            <node concept="3cpWs6" id="4TCblo5PgQh" role="3cqZAp">
              <node concept="2OqwBi" id="6OUp3PsSGSl" role="3cqZAk">
                <node concept="2OqwBi" id="4TCblo5PiAX" role="2Oq$k0">
                  <node concept="2OqwBi" id="4TCblo5PhFQ" role="2Oq$k0">
                    <node concept="37vLTw" id="4TCblo5Phlx" role="2Oq$k0">
                      <ref role="3cqZAo" node="4TCblo5MOOn" resolve="logical" />
                    </node>
                    <node concept="liA8E" id="4TCblo5Pi8Z" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.metaLogical():jetbrains.mps.logic.reactor.logical.MetaLogical" resolve="metaLogical" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4TCblo5Pj6t" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~MetaLogical.type():java.lang.Class" resolve="type" />
                  </node>
                </node>
                <node concept="liA8E" id="6OUp3PsSHqC" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="37vLTw" id="6OUp3PsSJNn" role="37wK5m">
                    <ref role="3cqZAo" node="4TCblo5MWaD" resolve="klass" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4TCblo5PlEX" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="4TCblo5PmcG" role="3cqZAp">
          <node concept="3clFbT" id="4TCblo5PmcF" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4TCblo5MWaN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5MKxC" role="jymVt" />
    <node concept="3clFb_" id="4TCblo5MPLt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="get" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4TCblo5MPLu" role="1B3o_S" />
      <node concept="3uibUv" id="4TCblo5MPLv" role="3clF45">
        <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
      </node>
      <node concept="2AHcQZ" id="4TCblo5MPLz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="4TCblo5MPL$" role="3clF47">
        <node concept="3clFbJ" id="4TCblo5NcBS" role="3cqZAp">
          <node concept="3clFbS" id="4TCblo5NcBU" role="3clFbx">
            <node concept="3cpWs6" id="4TCblo5NdL6" role="3cqZAp">
              <node concept="2OqwBi" id="4TCblo5NfcM" role="3cqZAk">
                <node concept="2OqwBi" id="4TCblo5Nerz" role="2Oq$k0">
                  <node concept="37vLTw" id="4TCblo5NeaH" role="2Oq$k0">
                    <ref role="3cqZAo" node="4TCblo5MOOn" resolve="logical" />
                  </node>
                  <node concept="liA8E" id="4TCblo5NeWU" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                  </node>
                </node>
                <node concept="liA8E" id="4TCblo5NfQc" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4TCblo5Ngl5" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="4TCblo5NcKq" role="3clFbw">
            <node concept="37vLTw" id="4TCblo5NcFD" role="2Oq$k0">
              <ref role="3cqZAo" node="4TCblo5MOOn" resolve="logical" />
            </node>
            <node concept="liA8E" id="4TCblo5Ndxq" role="2OqNvi">
              <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
            </node>
          </node>
          <node concept="9aQIb" id="4TCblo5Nikj" role="9aQIa">
            <node concept="3clFbS" id="4TCblo5Nikk" role="9aQI4">
              <node concept="3cpWs6" id="4TCblo5NiI7" role="3cqZAp">
                <node concept="Xjq3P" id="4TCblo5NiJZ" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5MQDp" role="jymVt" />
    <node concept="3clFb_" id="4TCblo5MQHg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="is" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4TCblo5MQHh" role="1B3o_S" />
      <node concept="37vLTG" id="4TCblo5MQHi" role="3clF46">
        <property role="TrG5h" value="kind" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4TCblo5MQHj" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Term$Kind" resolve="Term.Kind" />
        </node>
      </node>
      <node concept="10P_77" id="4TCblo5MQHk" role="3clF45" />
      <node concept="3clFbS" id="4TCblo5MQHl" role="3clF47">
        <node concept="3clFbJ" id="4TCblo5MQHm" role="3cqZAp">
          <node concept="3clFbS" id="4TCblo5MQHn" role="3clFbx">
            <node concept="3cpWs6" id="4TCblo5MQHo" role="3cqZAp">
              <node concept="3clFbC" id="4TCblo5MQHp" role="3cqZAk">
                <node concept="37vLTw" id="4TCblo5MQHq" role="3uHU7w">
                  <ref role="3cqZAo" node="4TCblo5MQHi" resolve="kind" />
                </node>
                <node concept="Rm8GO" id="4TCblo5MQHr" role="3uHU7B">
                  <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
                  <ref role="Rm8GQ" to="yt73:~Term$Kind.REF" resolve="REF" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4TCblo5MQHs" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="4TCblo5MRBw" role="3clFbw">
            <node concept="37vLTw" id="4TCblo5MRYu" role="2Oq$k0">
              <ref role="3cqZAo" node="4TCblo5MOOn" resolve="logical" />
            </node>
            <node concept="liA8E" id="4TCblo5MRBz" role="2OqNvi">
              <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
            </node>
          </node>
          <node concept="9aQIb" id="4TCblo5MQHu" role="9aQIa">
            <node concept="3clFbS" id="4TCblo5MQHv" role="9aQI4">
              <node concept="3cpWs6" id="4TCblo5MQHw" role="3cqZAp">
                <node concept="3clFbC" id="4TCblo5MQHx" role="3cqZAk">
                  <node concept="37vLTw" id="4TCblo5MQHy" role="3uHU7w">
                    <ref role="3cqZAo" node="4TCblo5MQHi" resolve="kind" />
                  </node>
                  <node concept="Rm8GO" id="4TCblo5MQHz" role="3uHU7B">
                    <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
                    <ref role="Rm8GQ" to="yt73:~Term$Kind.VAR" resolve="VAR" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4TCblo5MQH$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5MQH_" role="jymVt" />
    <node concept="3clFb_" id="3gNap3ffGqZ" role="jymVt">
      <property role="TrG5h" value="variablesCount" />
      <node concept="10Oyi0" id="3gNap3ffGr0" role="3clF45" />
      <node concept="3Tm1VV" id="3gNap3ffGr1" role="1B3o_S" />
      <node concept="3clFbS" id="3gNap3ffGr7" role="3clF47">
        <node concept="3clFbF" id="3gNap3ffGxZ" role="3cqZAp">
          <node concept="3K4zz7" id="3gNap3ffJX1" role="3clFbG">
            <node concept="3cmrfG" id="3gNap3ffJXT" role="3K4E3e">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="3cmrfG" id="3gNap3ffJYA" role="3K4GZi">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="3gNap3ffHfe" role="3K4Cdx">
              <node concept="37vLTw" id="3gNap3ffGxY" role="2Oq$k0">
                <ref role="3cqZAo" node="4TCblo5MOOn" resolve="logical" />
              </node>
              <node concept="liA8E" id="3gNap3ffJAC" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3gNap3ffGr8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3ffGtS" role="jymVt" />
    <node concept="3clFb_" id="4TCblo5MS1o" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="logical" />
      <node concept="3uibUv" id="4TCblo5MS1p" role="3clF45">
        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
        <node concept="3qTvmN" id="4TCblo5MS1q" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="4TCblo5MS1r" role="1B3o_S" />
      <node concept="3clFbS" id="4TCblo5MS1u" role="3clF47">
        <node concept="3clFbF" id="4TCblo5MS_q" role="3cqZAp">
          <node concept="37vLTw" id="4TCblo5MS_p" role="3clFbG">
            <ref role="3cqZAo" node="4TCblo5MOOn" resolve="logical" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5MW14" role="jymVt" />
    <node concept="3clFb_" id="4TCblo5MYmA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4TCblo5MYmB" role="1B3o_S" />
      <node concept="17QB3L" id="4TCblo5MYmC" role="3clF45" />
      <node concept="2AHcQZ" id="4TCblo5MYmK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="4TCblo5MYmL" role="3clF47">
        <node concept="3clFbF" id="4TCblo5MZsT" role="3cqZAp">
          <node concept="2OqwBi" id="4TCblo5MZxB" role="3clFbG">
            <node concept="37vLTw" id="4TCblo5MZsS" role="2Oq$k0">
              <ref role="3cqZAo" node="4TCblo5MOOn" resolve="logical" />
            </node>
            <node concept="liA8E" id="4TCblo5MZKI" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5N052" role="jymVt" />
    <node concept="3clFb_" id="4TCblo5N0Jx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4TCblo5N0Jy" role="1B3o_S" />
      <node concept="10Oyi0" id="4TCblo5N0Jz" role="3clF45" />
      <node concept="2AHcQZ" id="4TCblo5N0JT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="4TCblo5N0JU" role="3clF47">
        <node concept="3clFbF" id="4TCblo5N3ob" role="3cqZAp">
          <node concept="3cpWs3" id="4TCblo5N5_6" role="3clFbG">
            <node concept="3cmrfG" id="4TCblo5N5AS" role="3uHU7w">
              <property role="3cmrfH" value="31" />
            </node>
            <node concept="17qRlL" id="4TCblo5N53p" role="3uHU7B">
              <node concept="2OqwBi" id="4TCblo5N3yL" role="3uHU7B">
                <node concept="37vLTw" id="4TCblo5N3oa" role="2Oq$k0">
                  <ref role="3cqZAo" node="4TCblo5MOOn" resolve="logical" />
                </node>
                <node concept="liA8E" id="4TCblo5N3Oz" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
                </node>
              </node>
              <node concept="3cmrfG" id="4TCblo5N55b" role="3uHU7w">
                <property role="3cmrfH" value="17" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5N1xg" role="jymVt" />
    <node concept="3clFb_" id="4TCblo5N1LY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4TCblo5N1LZ" role="1B3o_S" />
      <node concept="10P_77" id="4TCblo5N1M0" role="3clF45" />
      <node concept="37vLTG" id="4TCblo5N1M1" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="4TCblo5N1M2" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4TCblo5N1Mn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="4TCblo5N1Mo" role="3clF47">
        <node concept="3clFbJ" id="4TCblo5N6Bx" role="3cqZAp">
          <node concept="3clFbS" id="4TCblo5N6By" role="3clFbx">
            <node concept="3cpWs6" id="4TCblo5N7aT" role="3cqZAp">
              <node concept="3clFbT" id="4TCblo5N7cJ" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4TCblo5N6Ds" role="3clFbw">
            <node concept="2ZW3vV" id="4TCblo5N6QY" role="3fr31v">
              <node concept="3uibUv" id="4TCblo5N6YK" role="2ZW6by">
                <ref role="3uigEE" node="4TCblo5MJ1m" resolve="LogicalDataForm" />
              </node>
              <node concept="37vLTw" id="4TCblo5N6Ff" role="2ZW6bz">
                <ref role="3cqZAo" node="4TCblo5N1M1" resolve="that" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4TCblo5N7R6" role="3cqZAp">
          <node concept="2OqwBi" id="4TCblo5N8Ey" role="3clFbG">
            <node concept="2OqwBi" id="4TCblo5N86A" role="2Oq$k0">
              <node concept="Xjq3P" id="4TCblo5N7R4" role="2Oq$k0" />
              <node concept="liA8E" id="4TCblo5Nd55" role="2OqNvi">
                <ref role="37wK5l" node="4TCblo5MS1o" resolve="logical" />
              </node>
            </node>
            <node concept="liA8E" id="4TCblo5N8WJ" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="2OqwBi" id="4TCblo5Na0e" role="37wK5m">
                <node concept="1eOMI4" id="4TCblo5N9Mc" role="2Oq$k0">
                  <node concept="10QFUN" id="4TCblo5N9Md" role="1eOMHV">
                    <node concept="37vLTw" id="4TCblo5N9Me" role="10QFUP">
                      <ref role="3cqZAo" node="4TCblo5N1M1" resolve="that" />
                    </node>
                    <node concept="3uibUv" id="4TCblo5N9Mf" role="10QFUM">
                      <ref role="3uigEE" node="4TCblo5MJ1m" resolve="LogicalDataForm" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4TCblo5NdjL" role="2OqNvi">
                  <ref role="37wK5l" node="4TCblo5MS1o" resolve="logical" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4TCblo5MJ1n" role="1B3o_S" />
    <node concept="3uibUv" id="4TCblo5MK_c" role="1zkMxy">
      <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
    </node>
    <node concept="3uibUv" id="4TCblo5MKQV" role="EKbjA">
      <ref role="3uigEE" to="bj13:~LogicalOwner" resolve="LogicalOwner" />
    </node>
    <node concept="16euLQ" id="4TCblo5MNXi" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3uibUv" id="4TCblo5NhrF" role="3ztrMU">
        <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3gNap3fN2hw">
    <property role="TrG5h" value="LogicalValue" />
    <node concept="2tJIrI" id="3gNap3fN2hF" role="jymVt" />
    <node concept="312cEg" id="3gNap3fN2iq" role="jymVt">
      <property role="TrG5h" value="logical" />
      <node concept="3Tm6S6" id="3gNap3fN2ir" role="1B3o_S" />
      <node concept="3uibUv" id="3gNap3fN2is" role="1tU5fm">
        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
        <node concept="16syzq" id="3gNap3fNgUX" role="11_B2D">
          <ref role="16sUi3" node="3gNap3fN2hD" resolve="V" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fN2iu" role="jymVt" />
    <node concept="3clFbW" id="3gNap3fN2iv" role="jymVt">
      <node concept="37vLTG" id="3gNap3fN2iw" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="3gNap3fN2ix" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
          <node concept="16syzq" id="3gNap3fNgV0" role="11_B2D">
            <ref role="16sUi3" node="3gNap3fN2hD" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3gNap3fN2iz" role="3clF45" />
      <node concept="3Tm1VV" id="3gNap3fN2i$" role="1B3o_S" />
      <node concept="3clFbS" id="3gNap3fN2i_" role="3clF47">
        <node concept="XkiVB" id="3gNap3fN2iA" role="3cqZAp">
          <ref role="37wK5l" to="6exd:uNmovXiEVu" resolve="Variable" />
        </node>
        <node concept="3SKdUt" id="3gNap3fN2iC" role="3cqZAp">
          <node concept="3SKdUq" id="3gNap3fN2iD" role="3SKWNk">
            <property role="3SKdUp" value="TODO: superfluous field" />
          </node>
        </node>
        <node concept="3clFbF" id="3gNap3fN2iE" role="3cqZAp">
          <node concept="37vLTI" id="3gNap3fN2iF" role="3clFbG">
            <node concept="37vLTw" id="3gNap3fN2iG" role="37vLTx">
              <ref role="3cqZAo" node="3gNap3fN2iw" resolve="logical" />
            </node>
            <node concept="2OqwBi" id="3gNap3fN2iH" role="37vLTJ">
              <node concept="Xjq3P" id="3gNap3fN2iI" role="2Oq$k0" />
              <node concept="2OwXpG" id="3gNap3fN2iJ" role="2OqNvi">
                <ref role="2Oxat5" node="3gNap3fN2iq" resolve="logical" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fN2ik" role="jymVt" />
    <node concept="3clFb_" id="7BhUeN7ywU1" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm1VV" id="7BhUeN7ywU2" role="1B3o_S" />
      <node concept="3uibUv" id="7BhUeN7ywU4" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3clFbS" id="7BhUeN7ywU7" role="3clF47">
        <node concept="3clFbJ" id="7BhUeN7yx2e" role="3cqZAp">
          <node concept="2OqwBi" id="7BhUeN7yxE5" role="3clFbw">
            <node concept="37vLTw" id="7BhUeN7yx4w" role="2Oq$k0">
              <ref role="3cqZAo" node="3gNap3fN2iq" resolve="logical" />
            </node>
            <node concept="liA8E" id="7BhUeN7y$2Z" role="2OqNvi">
              <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
            </node>
          </node>
          <node concept="3clFbS" id="7BhUeN7yx2g" role="3clFbx">
            <node concept="3cpWs6" id="7BhUeN7y$4w" role="3cqZAp">
              <node concept="2OqwBi" id="7BhUeN7yAUO" role="3cqZAk">
                <node concept="2OqwBi" id="7BhUeN7y$lJ" role="2Oq$k0">
                  <node concept="37vLTw" id="7BhUeN7y$aS" role="2Oq$k0">
                    <ref role="3cqZAo" node="3gNap3fN2iq" resolve="logical" />
                  </node>
                  <node concept="liA8E" id="7BhUeN7yAJo" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                  </node>
                </node>
                <node concept="liA8E" id="7BhUeN7yB7W" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7BhUeN7yBfC" role="3cqZAp" />
          </node>
          <node concept="9aQIb" id="7BhUeN7yBaf" role="9aQIa">
            <node concept="3clFbS" id="7BhUeN7yBag" role="9aQI4">
              <node concept="3cpWs6" id="7BhUeN7yBbL" role="3cqZAp">
                <node concept="37vLTw" id="7BhUeN7yBeP" role="3cqZAk">
                  <ref role="3cqZAo" node="3gNap3fN2iq" resolve="logical" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7BhUeN7ywU8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7BhUeN7ywXu" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fN2jR" role="jymVt">
      <property role="TrG5h" value="isWildcard" />
      <property role="1EzhhJ" value="false" />
      <node concept="10P_77" id="3gNap3fN2jS" role="3clF45" />
      <node concept="3Tm1VV" id="3gNap3fN2jT" role="1B3o_S" />
      <node concept="3clFbS" id="3gNap3fN2jU" role="3clF47">
        <node concept="3clFbF" id="3gNap3fN2jV" role="3cqZAp">
          <node concept="2OqwBi" id="3gNap3fN2jW" role="3clFbG">
            <node concept="37vLTw" id="3gNap3fN2jX" role="2Oq$k0">
              <ref role="3cqZAo" node="3gNap3fN2iq" resolve="logical" />
            </node>
            <node concept="liA8E" id="3gNap3fN2jY" role="2OqNvi">
              <ref role="37wK5l" to="bj13:~Logical.isWildcard():boolean" resolve="isWildcard" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3gNap3fN2jZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fN2jq" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fN2m3" role="jymVt">
      <property role="TrG5h" value="canRepresent" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="3gNap3fN2m4" role="3clF46">
        <property role="TrG5h" value="klass" />
        <node concept="3uibUv" id="3gNap3fN2m5" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="3gNap3fN2m6" role="11_B2D">
            <node concept="3uibUv" id="3gNap3fN2m7" role="3qUE_r">
              <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3gNap3fN2m8" role="3clF45" />
      <node concept="3Tm1VV" id="3gNap3fN2m9" role="1B3o_S" />
      <node concept="3clFbS" id="3gNap3fN2ma" role="3clF47">
        <node concept="3cpWs6" id="3gNap3fN2pM" role="3cqZAp">
          <node concept="2OqwBi" id="3gNap3fN2Si" role="3cqZAk">
            <node concept="3VsKOn" id="3gNap3fN2sr" role="2Oq$k0">
              <ref role="3VsUkX" to="6exd:2xQ7eRAD2dj" resolve="Value" />
            </node>
            <node concept="liA8E" id="3gNap3fN3Rf" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="37vLTw" id="3gNap3fN3SA" role="37wK5m">
                <ref role="3cqZAo" node="3gNap3fN2m4" resolve="klass" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3gNap3fN2mu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fN2lr" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fN3XS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="get" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="3gNap3fN3XT" role="1B3o_S" />
      <node concept="3uibUv" id="3gNap3fN3XU" role="3clF45">
        <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
      </node>
      <node concept="2AHcQZ" id="3gNap3fN3XV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3gNap3fN3XW" role="3clF47">
        <node concept="3clFbF" id="3gNap3fN40C" role="3cqZAp">
          <node concept="Xjq3P" id="3gNap3fN40B" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fN3Yd" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fN41F" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="is" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="3gNap3fN41G" role="1B3o_S" />
      <node concept="37vLTG" id="3gNap3fN41H" role="3clF46">
        <property role="TrG5h" value="kind" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3gNap3fN41I" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Term$Kind" resolve="Term.Kind" />
        </node>
      </node>
      <node concept="10P_77" id="3gNap3fN41J" role="3clF45" />
      <node concept="3clFbS" id="3gNap3fN41K" role="3clF47">
        <node concept="3clFbJ" id="7BhUeN7yiJK" role="3cqZAp">
          <node concept="3clFbS" id="7BhUeN7yiJM" role="3clFbx">
            <node concept="3cpWs6" id="7BhUeN7ylNV" role="3cqZAp">
              <node concept="3clFbC" id="7BhUeN7ylNW" role="3cqZAk">
                <node concept="37vLTw" id="7BhUeN7ylNX" role="3uHU7w">
                  <ref role="3cqZAo" node="3gNap3fN41H" resolve="kind" />
                </node>
                <node concept="Rm8GO" id="7BhUeN7ylTM" role="3uHU7B">
                  <ref role="Rm8GQ" to="yt73:~Term$Kind.FUN" resolve="FUN" />
                  <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7BhUeN7yiJL" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="7BhUeN7yjqW" role="3clFbw">
            <node concept="37vLTw" id="7BhUeN7yiND" role="2Oq$k0">
              <ref role="3cqZAo" node="3gNap3fN2iq" resolve="logical" />
            </node>
            <node concept="liA8E" id="7BhUeN7ylN8" role="2OqNvi">
              <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
            </node>
          </node>
          <node concept="9aQIb" id="7BhUeN7ylX0" role="9aQIa">
            <node concept="3clFbS" id="7BhUeN7ylX1" role="9aQI4">
              <node concept="3cpWs6" id="3gNap3fN41X" role="3cqZAp">
                <node concept="3clFbC" id="3gNap3fN41Y" role="3cqZAk">
                  <node concept="37vLTw" id="3gNap3fN41Z" role="3uHU7w">
                    <ref role="3cqZAo" node="3gNap3fN41H" resolve="kind" />
                  </node>
                  <node concept="Rm8GO" id="3gNap3fN420" role="3uHU7B">
                    <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
                    <ref role="Rm8GQ" to="yt73:~Term$Kind.VAR" resolve="VAR" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3gNap3fN421" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fN422" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fN7MZ" role="jymVt">
      <property role="TrG5h" value="variablesCount" />
      <node concept="10Oyi0" id="3gNap3fN7N0" role="3clF45" />
      <node concept="3Tm1VV" id="3gNap3fN7N1" role="1B3o_S" />
      <node concept="3clFbS" id="3gNap3fN7N2" role="3clF47">
        <node concept="3clFbF" id="7BhUeN7ym2E" role="3cqZAp">
          <node concept="3K4zz7" id="7BhUeN7ypMH" role="3clFbG">
            <node concept="3cmrfG" id="7BhUeN7ypOo" role="3K4E3e">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="3cmrfG" id="7BhUeN7ypPS" role="3K4GZi">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="7BhUeN7ymdU" role="3K4Cdx">
              <node concept="37vLTw" id="7BhUeN7ym2C" role="2Oq$k0">
                <ref role="3cqZAo" node="3gNap3fN2iq" resolve="logical" />
              </node>
              <node concept="liA8E" id="7BhUeN7yoA4" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3gNap3fN7Na" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fN7P0" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fN7SD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="logical" />
      <node concept="3uibUv" id="3gNap3fN7SE" role="3clF45">
        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
        <node concept="3qTvmN" id="3gNap3fN7SF" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="3gNap3fN7SG" role="1B3o_S" />
      <node concept="3clFbS" id="3gNap3fN7SH" role="3clF47">
        <node concept="3clFbF" id="3gNap3fN7SI" role="3cqZAp">
          <node concept="37vLTw" id="3gNap3fN7SJ" role="3clFbG">
            <ref role="3cqZAo" node="3gNap3fN2iq" resolve="logical" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fN7SK" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fN7WJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3gNap3fN7WK" role="1B3o_S" />
      <node concept="17QB3L" id="3gNap3fN7WL" role="3clF45" />
      <node concept="2AHcQZ" id="3gNap3fN7WM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3gNap3fN7WN" role="3clF47">
        <node concept="3clFbF" id="3gNap3fN7WO" role="3cqZAp">
          <node concept="2OqwBi" id="3gNap3fN7WP" role="3clFbG">
            <node concept="37vLTw" id="3gNap3fN7WQ" role="2Oq$k0">
              <ref role="3cqZAo" node="3gNap3fN2iq" resolve="logical" />
            </node>
            <node concept="liA8E" id="3gNap3fN7WR" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fN7WS" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fN7WT" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3gNap3fN7WU" role="1B3o_S" />
      <node concept="10Oyi0" id="3gNap3fN7WV" role="3clF45" />
      <node concept="2AHcQZ" id="3gNap3fN7WW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3gNap3fN7WX" role="3clF47">
        <node concept="3clFbF" id="3gNap3fN7WY" role="3cqZAp">
          <node concept="3cpWs3" id="3gNap3fN7WZ" role="3clFbG">
            <node concept="3cmrfG" id="3gNap3fN7X0" role="3uHU7w">
              <property role="3cmrfH" value="41" />
            </node>
            <node concept="17qRlL" id="3gNap3fN7X1" role="3uHU7B">
              <node concept="2OqwBi" id="3gNap3fN7X2" role="3uHU7B">
                <node concept="37vLTw" id="3gNap3fN7X3" role="2Oq$k0">
                  <ref role="3cqZAo" node="3gNap3fN2iq" resolve="logical" />
                </node>
                <node concept="liA8E" id="3gNap3fN7X4" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
                </node>
              </node>
              <node concept="3cmrfG" id="3gNap3fN7X5" role="3uHU7w">
                <property role="3cmrfH" value="23" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fN7X6" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fN7X7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3gNap3fN7X8" role="1B3o_S" />
      <node concept="10P_77" id="3gNap3fN7X9" role="3clF45" />
      <node concept="37vLTG" id="3gNap3fN7Xa" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="3gNap3fN7Xb" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3gNap3fN7Xc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3gNap3fN7Xd" role="3clF47">
        <node concept="3clFbJ" id="3gNap3fN7Xe" role="3cqZAp">
          <node concept="3clFbS" id="3gNap3fN7Xf" role="3clFbx">
            <node concept="3cpWs6" id="3gNap3fN7Xg" role="3cqZAp">
              <node concept="3clFbT" id="3gNap3fN7Xh" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="3gNap3fN7Xi" role="3clFbw">
            <node concept="2ZW3vV" id="3gNap3fN7Xj" role="3fr31v">
              <node concept="3uibUv" id="3gNap3fNblE" role="2ZW6by">
                <ref role="3uigEE" node="3gNap3fN2hw" resolve="LogicalValue" />
              </node>
              <node concept="37vLTw" id="3gNap3fN7Xl" role="2ZW6bz">
                <ref role="3cqZAo" node="3gNap3fN7Xa" resolve="that" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3gNap3fN7Xm" role="3cqZAp">
          <node concept="2OqwBi" id="3gNap3fN7Xn" role="3clFbG">
            <node concept="2OqwBi" id="3gNap3fN7Xo" role="2Oq$k0">
              <node concept="Xjq3P" id="3gNap3fN7Xp" role="2Oq$k0" />
              <node concept="2OwXpG" id="3gNap3fNafY" role="2OqNvi">
                <ref role="2Oxat5" node="3gNap3fN2iq" resolve="logical" />
              </node>
            </node>
            <node concept="liA8E" id="3gNap3fN7Xr" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="2OqwBi" id="3gNap3fN7Xs" role="37wK5m">
                <node concept="1eOMI4" id="3gNap3fN7Xt" role="2Oq$k0">
                  <node concept="10QFUN" id="3gNap3fN7Xu" role="1eOMHV">
                    <node concept="37vLTw" id="3gNap3fN7Xv" role="10QFUP">
                      <ref role="3cqZAo" node="3gNap3fN7Xa" resolve="that" />
                    </node>
                    <node concept="3uibUv" id="3gNap3fNblH" role="10QFUM">
                      <ref role="3uigEE" node="3gNap3fN2hw" resolve="LogicalValue" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="3gNap3fNbE_" role="2OqNvi">
                  <ref role="2Oxat5" node="3gNap3fN2iq" resolve="logical" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fN2hT" role="jymVt" />
    <node concept="3Tm1VV" id="3gNap3fN2hx" role="1B3o_S" />
    <node concept="3uibUv" id="3gNap3fN2hA" role="1zkMxy">
      <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
    </node>
    <node concept="16euLQ" id="3gNap3fN2hD" role="16eVyc">
      <property role="TrG5h" value="V" />
    </node>
  </node>
  <node concept="312cEu" id="3gNap3fNdtK">
    <property role="TrG5h" value="MetaLogicalValue" />
    <node concept="2tJIrI" id="3gNap3fNdyj" role="jymVt" />
    <node concept="3clFbW" id="3gNap3fNdxx" role="jymVt">
      <node concept="3cqZAl" id="3gNap3fNdxy" role="3clF45" />
      <node concept="3Tm1VV" id="3gNap3fNdxz" role="1B3o_S" />
      <node concept="3clFbS" id="3gNap3fNdx$" role="3clF47">
        <node concept="XkiVB" id="3gNap3fNdx_" role="3cqZAp">
          <ref role="37wK5l" to="6exd:uNmovXiEVu" resolve="Variable" />
        </node>
        <node concept="3SKdUt" id="3gNap3fNdxB" role="3cqZAp">
          <node concept="3SKdUq" id="3gNap3fNdxC" role="3SKWNk">
            <property role="3SKdUp" value="TODO: superfluous field" />
          </node>
        </node>
        <node concept="3clFbF" id="3gNap3fNdxD" role="3cqZAp">
          <node concept="37vLTI" id="3gNap3fNdxE" role="3clFbG">
            <node concept="2OqwBi" id="3gNap3fNdxF" role="37vLTJ">
              <node concept="Xjq3P" id="3gNap3fNdxG" role="2Oq$k0" />
              <node concept="2OwXpG" id="3gNap3fNjY7" role="2OqNvi">
                <ref role="2Oxat5" node="3gNap3fNdyC" resolve="metaLogical" />
              </node>
            </node>
            <node concept="37vLTw" id="3gNap3fNdxI" role="37vLTx">
              <ref role="3cqZAo" node="3gNap3fNdxJ" resolve="metaLogical" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3gNap3fNdxJ" role="3clF46">
        <property role="TrG5h" value="metaLogical" />
        <node concept="3uibUv" id="3gNap3fNdxK" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
          <node concept="16syzq" id="3gNap3fNgV9" role="11_B2D">
            <ref role="16sUi3" node="3gNap3fNgV4" resolve="V" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fNdxo" role="jymVt" />
    <node concept="3clFb_" id="7BhUeN7ywbP" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm1VV" id="7BhUeN7ywbQ" role="1B3o_S" />
      <node concept="3uibUv" id="7BhUeN7ywbS" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3clFbS" id="7BhUeN7ywbV" role="3clF47">
        <node concept="3clFbF" id="7BhUeN7ywMb" role="3cqZAp">
          <node concept="37vLTw" id="7BhUeN7ywM8" role="3clFbG">
            <ref role="3cqZAo" node="3gNap3fNdyC" resolve="metaLogical" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7BhUeN7ywbW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7BhUeN7ywf0" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fNd$z" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="metaLogical" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3gNap3fNd$$" role="3clF47">
        <node concept="3clFbF" id="3gNap3fNd$_" role="3cqZAp">
          <node concept="37vLTw" id="3gNap3fNd$A" role="3clFbG">
            <ref role="3cqZAo" node="3gNap3fNdyC" resolve="metaLogical" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3gNap3fNd$B" role="1B3o_S" />
      <node concept="3uibUv" id="3gNap3fNd$C" role="3clF45">
        <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fNd$D" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fNd$E" role="jymVt">
      <property role="TrG5h" value="isWildcard" />
      <property role="1EzhhJ" value="false" />
      <node concept="10P_77" id="3gNap3fNd$F" role="3clF45" />
      <node concept="3Tm1VV" id="3gNap3fNd$G" role="1B3o_S" />
      <node concept="3clFbS" id="3gNap3fNd$H" role="3clF47">
        <node concept="3clFbF" id="3gNap3fNd$I" role="3cqZAp">
          <node concept="2OqwBi" id="3gNap3fNd$J" role="3clFbG">
            <node concept="37vLTw" id="3gNap3fNd$K" role="2Oq$k0">
              <ref role="3cqZAo" node="3gNap3fNdyC" resolve="metaLogical" />
            </node>
            <node concept="liA8E" id="3gNap3fNd$L" role="2OqNvi">
              <ref role="37wK5l" to="bj13:~MetaLogical.isWildcard():boolean" resolve="isWildcard" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3gNap3fNd$M" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fNdz2" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fNd_v" role="jymVt">
      <property role="TrG5h" value="canRepresent" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="3gNap3fNd_w" role="3clF46">
        <property role="TrG5h" value="klass" />
        <node concept="3uibUv" id="3gNap3fNd_x" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="3gNap3fNd_y" role="11_B2D">
            <node concept="3uibUv" id="3gNap3fNd_z" role="3qUE_r">
              <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3gNap3fNd_$" role="3clF45" />
      <node concept="3Tm1VV" id="3gNap3fNd__" role="1B3o_S" />
      <node concept="3clFbS" id="3gNap3fNd_A" role="3clF47">
        <node concept="3cpWs6" id="3gNap3fNdAF" role="3cqZAp">
          <node concept="2OqwBi" id="3gNap3fNdAG" role="3cqZAk">
            <node concept="3VsKOn" id="3gNap3fNdAH" role="2Oq$k0">
              <ref role="3VsUkX" to="6exd:2xQ7eRAD2dj" resolve="Value" />
            </node>
            <node concept="liA8E" id="3gNap3fNdAI" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="37vLTw" id="3gNap3fNdAJ" role="37wK5m">
                <ref role="3cqZAo" node="3gNap3fNd_w" resolve="klass" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3gNap3fNd_I" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fNdCE" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fNdAP" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="get" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="3gNap3fNdAQ" role="1B3o_S" />
      <node concept="3uibUv" id="3gNap3fNdAR" role="3clF45">
        <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
      </node>
      <node concept="3clFbS" id="3gNap3fNdAS" role="3clF47">
        <node concept="3clFbF" id="3gNap3fNdAT" role="3cqZAp">
          <node concept="Xjq3P" id="3gNap3fNdAU" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3gNap3fNdAV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fNdAW" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fNdAX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="is" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="3gNap3fNdAY" role="1B3o_S" />
      <node concept="37vLTG" id="3gNap3fNdAZ" role="3clF46">
        <property role="TrG5h" value="kind" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3gNap3fNdB0" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Term$Kind" resolve="Term.Kind" />
        </node>
      </node>
      <node concept="10P_77" id="3gNap3fNdB1" role="3clF45" />
      <node concept="3clFbS" id="3gNap3fNdB2" role="3clF47">
        <node concept="3clFbF" id="3gNap3fNdB3" role="3cqZAp">
          <node concept="3clFbC" id="3gNap3fNdB4" role="3clFbG">
            <node concept="Rm8GO" id="3gNap3gHBWk" role="3uHU7B">
              <ref role="Rm8GQ" to="yt73:~Term$Kind.FUN" resolve="FUN" />
              <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
            </node>
            <node concept="37vLTw" id="3gNap3fNdB6" role="3uHU7w">
              <ref role="3cqZAo" node="3gNap3fNdAZ" resolve="kind" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3gNap3fNdB7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fNdB8" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fNdB9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="variablesCount" />
      <node concept="10Oyi0" id="3gNap3fNdBa" role="3clF45" />
      <node concept="3Tm1VV" id="3gNap3fNdBb" role="1B3o_S" />
      <node concept="3clFbS" id="3gNap3fNdBc" role="3clF47">
        <node concept="3clFbF" id="3gNap3fNdBd" role="3cqZAp">
          <node concept="3cmrfG" id="3gNap3fNdBe" role="3clFbG">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3gNap3fNdBf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fNdBg" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fNdG7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3gNap3fNdG8" role="1B3o_S" />
      <node concept="17QB3L" id="3gNap3fNdG9" role="3clF45" />
      <node concept="2AHcQZ" id="3gNap3fNdGa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3gNap3fNdGb" role="3clF47">
        <node concept="3clFbF" id="3gNap3fNdGc" role="3cqZAp">
          <node concept="2OqwBi" id="3gNap3fNdGd" role="3clFbG">
            <node concept="37vLTw" id="3gNap3fNeNf" role="2Oq$k0">
              <ref role="3cqZAo" node="3gNap3fNdyC" resolve="metaLogical" />
            </node>
            <node concept="liA8E" id="3gNap3fNdGf" role="2OqNvi">
              <ref role="37wK5l" to="bj13:~MetaLogical.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fNdGg" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fNdGh" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3gNap3fNdGi" role="1B3o_S" />
      <node concept="10Oyi0" id="3gNap3fNdGj" role="3clF45" />
      <node concept="2AHcQZ" id="3gNap3fNdGk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3gNap3fNdGl" role="3clF47">
        <node concept="3clFbF" id="3gNap3fNdGm" role="3cqZAp">
          <node concept="3cpWs3" id="3gNap3fNdGn" role="3clFbG">
            <node concept="3cmrfG" id="3gNap3fNdGo" role="3uHU7w">
              <property role="3cmrfH" value="47" />
            </node>
            <node concept="17qRlL" id="3gNap3fNdGp" role="3uHU7B">
              <node concept="2OqwBi" id="3gNap3fNdGq" role="3uHU7B">
                <node concept="37vLTw" id="3gNap3fNePc" role="2Oq$k0">
                  <ref role="3cqZAo" node="3gNap3fNdyC" resolve="metaLogical" />
                </node>
                <node concept="liA8E" id="3gNap3fNdGs" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
                </node>
              </node>
              <node concept="3cmrfG" id="3gNap3fNdGt" role="3uHU7w">
                <property role="3cmrfH" value="23" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fNdGu" role="jymVt" />
    <node concept="3clFb_" id="3gNap3fNdGv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3gNap3fNdGw" role="1B3o_S" />
      <node concept="10P_77" id="3gNap3fNdGx" role="3clF45" />
      <node concept="37vLTG" id="3gNap3fNdGy" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="3gNap3fNdGz" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3gNap3fNdG$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3gNap3fNdG_" role="3clF47">
        <node concept="3clFbJ" id="3gNap3fNdGA" role="3cqZAp">
          <node concept="3clFbS" id="3gNap3fNdGB" role="3clFbx">
            <node concept="3cpWs6" id="3gNap3fNdGC" role="3cqZAp">
              <node concept="3clFbT" id="3gNap3fNdGD" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="3gNap3fNdGE" role="3clFbw">
            <node concept="2ZW3vV" id="3gNap3fNdGF" role="3fr31v">
              <node concept="3uibUv" id="3gNap3fNfnx" role="2ZW6by">
                <ref role="3uigEE" node="3gNap3fNdtK" resolve="MetaLogicalValue" />
              </node>
              <node concept="37vLTw" id="3gNap3fNdGH" role="2ZW6bz">
                <ref role="3cqZAo" node="3gNap3fNdGy" resolve="that" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3gNap3fNdGI" role="3cqZAp">
          <node concept="2OqwBi" id="3gNap3fNdGJ" role="3clFbG">
            <node concept="2OqwBi" id="3gNap3fNdGK" role="2Oq$k0">
              <node concept="Xjq3P" id="3gNap3fNdGL" role="2Oq$k0" />
              <node concept="2OwXpG" id="3gNap3fNfnu" role="2OqNvi">
                <ref role="2Oxat5" node="3gNap3fNdyC" resolve="metaLogical" />
              </node>
            </node>
            <node concept="liA8E" id="3gNap3fNdGN" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="2OqwBi" id="3gNap3fNdGO" role="37wK5m">
                <node concept="1eOMI4" id="3gNap3fNdGP" role="2Oq$k0">
                  <node concept="10QFUN" id="3gNap3fNdGQ" role="1eOMHV">
                    <node concept="37vLTw" id="3gNap3fNdGR" role="10QFUP">
                      <ref role="3cqZAo" node="3gNap3fNdGy" resolve="that" />
                    </node>
                    <node concept="3uibUv" id="3gNap3fNfn$" role="10QFUM">
                      <ref role="3uigEE" node="3gNap3fNdtK" resolve="MetaLogicalValue" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="3gNap3fNfGe" role="2OqNvi">
                  <ref role="2Oxat5" node="3gNap3fNdyC" resolve="metaLogical" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fNdxq" role="jymVt" />
    <node concept="312cEg" id="3gNap3fNdyC" role="jymVt">
      <property role="TrG5h" value="metaLogical" />
      <node concept="3Tm6S6" id="3gNap3fNdyD" role="1B3o_S" />
      <node concept="3uibUv" id="3gNap3fNdyE" role="1tU5fm">
        <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
        <node concept="16syzq" id="3gNap3fNlAy" role="11_B2D">
          <ref role="16sUi3" node="3gNap3fNgV4" resolve="V" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fNdxt" role="jymVt" />
    <node concept="3Tm1VV" id="3gNap3fNdtL" role="1B3o_S" />
    <node concept="3uibUv" id="3gNap3fNdxm" role="1zkMxy">
      <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
    </node>
    <node concept="16euLQ" id="3gNap3fNgV4" role="16eVyc">
      <property role="TrG5h" value="V" />
    </node>
  </node>
  <node concept="312cEu" id="677NV565N1x">
    <property role="TrG5h" value="LogicalUtil" />
    <node concept="2tJIrI" id="7HUwyZb7alE" role="jymVt" />
    <node concept="2YIFZL" id="7HUwyZb7b7C" role="jymVt">
      <property role="TrG5h" value="asVariableArray" />
      <node concept="37vLTG" id="7HUwyZb7b7D" role="3clF46">
        <property role="TrG5h" value="multiMetaLogical" />
        <node concept="3uibUv" id="7HUwyZb7bf2" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~MultiMetaLogical" resolve="MultiMetaLogical" />
        </node>
      </node>
      <node concept="10Q1$e" id="7HUwyZb7b7G" role="3clF45">
        <node concept="3uibUv" id="kTK1BeAfdG" role="10Q1$1">
          <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7HUwyZb7b7I" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZb7b7J" role="3clF47">
        <node concept="3cpWs8" id="7HUwyZb7b7R" role="3cqZAp">
          <node concept="3cpWsn" id="7HUwyZb7b7S" role="3cpWs9">
            <property role="TrG5h" value="array" />
            <node concept="10Q1$e" id="7HUwyZb7b7T" role="1tU5fm">
              <node concept="3uibUv" id="kTK1BeAf2h" role="10Q1$1">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
            </node>
            <node concept="2ShNRf" id="7HUwyZb7b7V" role="33vP2m">
              <node concept="3$_iS1" id="7HUwyZb7b7W" role="2ShVmc">
                <node concept="3$GHV9" id="7HUwyZb7b7X" role="3$GQph">
                  <node concept="2OqwBi" id="7HUwyZb7b7Y" role="3$I4v7">
                    <node concept="37vLTw" id="7HUwyZb7b7Z" role="2Oq$k0">
                      <ref role="3cqZAo" node="7HUwyZb7b7D" resolve="multiMetaLogical" />
                    </node>
                    <node concept="liA8E" id="7HUwyZbdR3y" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~MultiMetaLogical.cardinality():int" resolve="cardinality" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="kTK1BeAf7Z" role="3$_nBY">
                  <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="7HUwyZb7b83" role="3cqZAp">
          <node concept="3clFbS" id="7HUwyZb7b84" role="2LFqv$">
            <node concept="3clFbF" id="7HUwyZb7b85" role="3cqZAp">
              <node concept="37vLTI" id="7HUwyZb7b86" role="3clFbG">
                <node concept="AH0OO" id="7HUwyZb7b8e" role="37vLTJ">
                  <node concept="37vLTw" id="7HUwyZb7b8f" role="AHEQo">
                    <ref role="3cqZAo" node="7HUwyZb7b8h" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="7HUwyZb7b8g" role="AHHXb">
                    <ref role="3cqZAo" node="7HUwyZb7b7S" resolve="array" />
                  </node>
                </node>
                <node concept="1rXfSq" id="7HUwyZbdRag" role="37vLTx">
                  <ref role="37wK5l" node="7HUwyZb7chj" resolve="asVariable" />
                  <node concept="2OqwBi" id="7HUwyZbdRec" role="37wK5m">
                    <node concept="37vLTw" id="7HUwyZbdRce" role="2Oq$k0">
                      <ref role="3cqZAo" node="7HUwyZb7b7D" resolve="multiMetaLogical" />
                    </node>
                    <node concept="liA8E" id="7HUwyZbdRgZ" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~MultiMetaLogical.logicalAt(int):jetbrains.mps.logic.reactor.logical.MetaLogical" resolve="logicalAt" />
                      <node concept="37vLTw" id="7HUwyZbdRiC" role="37wK5m">
                        <ref role="3cqZAo" node="7HUwyZb7b8h" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7HUwyZb7b8h" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="7HUwyZb7b8i" role="1tU5fm" />
            <node concept="3cmrfG" id="7HUwyZb7b8j" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="7HUwyZb7b8k" role="1Dwp0S">
            <node concept="37vLTw" id="7HUwyZb7b8l" role="3uHU7B">
              <ref role="3cqZAo" node="7HUwyZb7b8h" resolve="i" />
            </node>
            <node concept="2OqwBi" id="7HUwyZb7b8m" role="3uHU7w">
              <node concept="37vLTw" id="7HUwyZb7b8n" role="2Oq$k0">
                <ref role="3cqZAo" node="7HUwyZb7b7D" resolve="multiMetaLogical" />
              </node>
              <node concept="liA8E" id="7HUwyZbdR6B" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~MultiMetaLogical.cardinality():int" resolve="cardinality" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="7HUwyZb7b8p" role="1Dwrff">
            <node concept="37vLTw" id="7HUwyZb7b8q" role="2$L3a6">
              <ref role="3cqZAo" node="7HUwyZb7b8h" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7HUwyZb7b8s" role="3cqZAp">
          <node concept="37vLTw" id="7HUwyZb7b8t" role="3clFbG">
            <ref role="3cqZAo" node="7HUwyZb7b7S" resolve="array" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZb7clq" role="jymVt" />
    <node concept="2YIFZL" id="7HUwyZb7chj" role="jymVt">
      <property role="TrG5h" value="asVariable" />
      <node concept="37vLTG" id="7HUwyZb7chk" role="3clF46">
        <property role="TrG5h" value="metaLogical" />
        <node concept="3uibUv" id="7HUwyZb7chm" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
          <node concept="3qTvmN" id="4TCblo5YIjG" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="kTK1BeAdVX" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm1VV" id="7HUwyZb7chp" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZb7chq" role="3clF47">
        <node concept="3clFbF" id="7HUwyZbdQz9" role="3cqZAp">
          <node concept="2ShNRf" id="7HUwyZbdQz7" role="3clFbG">
            <node concept="1pGfFk" id="7HUwyZbdQMO" role="2ShVmc">
              <ref role="37wK5l" node="7HUwyZbdNAd" resolve="MetaLogicalDataForm" />
              <node concept="37vLTw" id="7HUwyZbdQO9" role="37wK5m">
                <ref role="3cqZAo" node="7HUwyZb7chk" resolve="metaLogical" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5YI1R" role="jymVt" />
    <node concept="2YIFZL" id="4TCblo5YI1H" role="jymVt">
      <property role="TrG5h" value="asVariable" />
      <node concept="37vLTG" id="4TCblo5YI1I" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="4TCblo5YI1J" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
          <node concept="16syzq" id="4TCblo5YIOD" role="11_B2D">
            <ref role="16sUi3" node="4TCblo5YIIG" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="kTK1BeAeTc" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm1VV" id="4TCblo5YI1L" role="1B3o_S" />
      <node concept="3clFbS" id="4TCblo5YI1M" role="3clF47">
        <node concept="3clFbF" id="4TCblo5YITN" role="3cqZAp">
          <node concept="2ShNRf" id="4TCblo5YITJ" role="3clFbG">
            <node concept="1pGfFk" id="4TCblo5YJa3" role="2ShVmc">
              <ref role="37wK5l" node="4TCblo5ML4I" resolve="LogicalDataForm" />
              <node concept="37vLTw" id="4TCblo5YJCY" role="37wK5m">
                <ref role="3cqZAo" node="4TCblo5YI1I" resolve="logical" />
              </node>
              <node concept="16syzq" id="4TCblo5YJyT" role="1pMfVU">
                <ref role="16sUi3" node="4TCblo5YIIG" resolve="T" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="4TCblo5YIIG" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="4TCblo5YJ_1" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3fZcV_" role="jymVt" />
    <node concept="2YIFZL" id="3gNap3gwG50" role="jymVt">
      <property role="TrG5h" value="asValue" />
      <node concept="37vLTG" id="3gNap3gwG51" role="3clF46">
        <property role="TrG5h" value="metaLogical" />
        <node concept="3uibUv" id="3gNap3gwG52" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
          <node concept="16syzq" id="3gNap3gwG53" role="11_B2D">
            <ref role="16sUi3" node="3gNap3gwG5c" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3gNap3gwGeH" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm1VV" id="3gNap3gwG55" role="1B3o_S" />
      <node concept="3clFbS" id="3gNap3gwG56" role="3clF47">
        <node concept="3clFbF" id="3gNap3gwG57" role="3cqZAp">
          <node concept="2ShNRf" id="3gNap3gwG58" role="3clFbG">
            <node concept="1pGfFk" id="3gNap3gwG59" role="2ShVmc">
              <ref role="37wK5l" node="3gNap3fNdxx" resolve="MetaLogicalValue" />
              <node concept="37vLTw" id="3gNap3gwG5a" role="37wK5m">
                <ref role="3cqZAo" node="3gNap3gwG51" resolve="metaLogical" />
              </node>
              <node concept="16syzq" id="3gNap3gwG5b" role="1pMfVU">
                <ref role="16sUi3" node="3gNap3gwG5c" resolve="T" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="3gNap3gwG5c" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="3gNap3gwG5d" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="677NV565VBQ" role="jymVt" />
    <node concept="2YIFZL" id="3gNap3fZcVn" role="jymVt">
      <property role="TrG5h" value="asValue" />
      <node concept="37vLTG" id="3gNap3fZcVo" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="3gNap3fZcVp" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
          <node concept="16syzq" id="3gNap3fZcVq" role="11_B2D">
            <ref role="16sUi3" node="3gNap3fZcVz" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3gNap3gwGf6" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm1VV" id="3gNap3fZcVs" role="1B3o_S" />
      <node concept="3clFbS" id="3gNap3fZcVt" role="3clF47">
        <node concept="3clFbF" id="3gNap3fZcVu" role="3cqZAp">
          <node concept="2ShNRf" id="3gNap3fZcVv" role="3clFbG">
            <node concept="1pGfFk" id="3gNap3fZcVw" role="2ShVmc">
              <ref role="37wK5l" node="3gNap3fN2iv" resolve="LogicalValue" />
              <node concept="37vLTw" id="3gNap3fZcVx" role="37wK5m">
                <ref role="3cqZAo" node="3gNap3fZcVo" resolve="logical" />
              </node>
              <node concept="16syzq" id="3gNap3fZcVy" role="1pMfVU">
                <ref role="16sUi3" node="3gNap3fZcVz" resolve="T" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="3gNap3fZcVz" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="3gNap3fZcV$" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3gwG5e" role="jymVt" />
    <node concept="2YIFZL" id="4TCblo5NqWF" role="jymVt">
      <property role="TrG5h" value="instantiateMetaLogicals" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4TCblo5NkoL" role="3clF47">
        <node concept="3clFbF" id="4TCblo5NkJr" role="3cqZAp">
          <node concept="2OqwBi" id="4TCblo5Nl4W" role="3clFbG">
            <node concept="2YIFZM" id="4TCblo5NkK4" role="2Oq$k0">
              <ref role="37wK5l" to="6exd:5s497VqteR6" resolve="mapper" />
              <ref role="1Pybhc" to="6exd:3OPtF02T8yx" resolve="Mappers" />
              <node concept="2ShNRf" id="4TCblo5NkKU" role="37wK5m">
                <node concept="1pGfFk" id="4TCblo5Nl1t" role="2ShVmc">
                  <ref role="37wK5l" node="4TCblo5MHYk" resolve="LogicalUtil.InstantiateDelegate" />
                  <node concept="37vLTw" id="4TCblo5Nl3R" role="37wK5m">
                    <ref role="3cqZAo" node="4TCblo5NkwR" resolve="logicalContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="4TCblo5Nl7d" role="2OqNvi">
              <ref role="37wK5l" to="6exd:3OPtF02TgQt" resolve="map" />
              <node concept="37vLTw" id="4TCblo5Nl9o" role="37wK5m">
                <ref role="3cqZAo" node="4TCblo5NkAJ" resolve="tf" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4TCblo5NkAJ" role="3clF46">
        <property role="TrG5h" value="tf" />
        <node concept="3uibUv" id="4TCblo5NkFx" role="1tU5fm">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
        </node>
      </node>
      <node concept="37vLTG" id="4TCblo5NkwR" role="3clF46">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3uibUv" id="4TCblo5Nk_K" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="3uibUv" id="4TCblo5Nlai" role="3clF45">
        <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
      </node>
      <node concept="3Tm1VV" id="4TCblo5NkoK" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4TCblo5Nkhd" role="jymVt" />
    <node concept="312cEu" id="4TCblo5MG7R" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="InstantiateDelegate" />
      <node concept="2tJIrI" id="4TCblo5MHSq" role="jymVt" />
      <node concept="3clFbW" id="4TCblo5MHYk" role="jymVt">
        <node concept="3cqZAl" id="4TCblo5MHYm" role="3clF45" />
        <node concept="3Tm6S6" id="4TCblo5MHYn" role="1B3o_S" />
        <node concept="3clFbS" id="4TCblo5MHYo" role="3clF47">
          <node concept="3clFbF" id="4TCblo5MI7v" role="3cqZAp">
            <node concept="37vLTI" id="4TCblo5MI7x" role="3clFbG">
              <node concept="2OqwBi" id="4TCblo5MI7_" role="37vLTJ">
                <node concept="Xjq3P" id="4TCblo5MI7C" role="2Oq$k0" />
                <node concept="2OwXpG" id="4TCblo5MI7$" role="2OqNvi">
                  <ref role="2Oxat5" node="4TCblo5MI7r" resolve="logicalContext" />
                </node>
              </node>
              <node concept="37vLTw" id="4TCblo5MI7D" role="37vLTx">
                <ref role="3cqZAo" node="4TCblo5MI32" resolve="logicalContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4TCblo5MI32" role="3clF46">
          <property role="TrG5h" value="logicalContext" />
          <node concept="3uibUv" id="4TCblo5MI31" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4TCblo5MHTP" role="jymVt" />
      <node concept="3Tm6S6" id="4TCblo5MG2k" role="1B3o_S" />
      <node concept="3uibUv" id="4TCblo5MGIz" role="EKbjA">
        <ref role="3uigEE" to="6exd:3OPtF031GQe" resolve="Mappers.MapDelegate" />
      </node>
      <node concept="3clFb_" id="6HT7BWBPa9I" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="canMap" />
        <node concept="37vLTG" id="6HT7BWBPa9J" role="3clF46">
          <property role="TrG5h" value="tf" />
          <node concept="3uibUv" id="6HT7BWBPa9K" role="1tU5fm">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
        <node concept="10P_77" id="6HT7BWBPa9L" role="3clF45" />
        <node concept="3Tm1VV" id="6HT7BWBPa9M" role="1B3o_S" />
        <node concept="3clFbS" id="6HT7BWBPa9N" role="3clF47">
          <node concept="3clFbF" id="5BGv8yzxlPR" role="3cqZAp">
            <node concept="3eOSWO" id="5BGv8yzxmvm" role="3clFbG">
              <node concept="3cmrfG" id="5BGv8yzxmwO" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="5BGv8yzxm1a" role="3uHU7B">
                <node concept="37vLTw" id="5BGv8yzxlPP" role="2Oq$k0">
                  <ref role="3cqZAo" node="6HT7BWBPa9J" resolve="tf" />
                </node>
                <node concept="liA8E" id="5BGv8yzxmhs" role="2OqNvi">
                  <ref role="37wK5l" to="6exd:5BGv8yzvvIZ" resolve="variablesCount" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4TCblo5MIEy" role="jymVt" />
      <node concept="3clFb_" id="6HT7BWBPa9O" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="map" />
        <node concept="37vLTG" id="6HT7BWBPa9P" role="3clF46">
          <property role="TrG5h" value="tf" />
          <node concept="3uibUv" id="6HT7BWBPa9Q" role="1tU5fm">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
        <node concept="37vLTG" id="6HT7BWBPa9R" role="3clF46">
          <property role="TrG5h" value="fallback" />
          <node concept="3uibUv" id="6HT7BWBPa9S" role="1tU5fm">
            <ref role="3uigEE" to="6exd:3OPtF02TdNT" resolve="DataForm.Mapper" />
          </node>
        </node>
        <node concept="3Tm1VV" id="6HT7BWBPa9T" role="1B3o_S" />
        <node concept="3uibUv" id="6HT7BWBPa9U" role="3clF45">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
        </node>
        <node concept="3clFbS" id="6HT7BWBPa9V" role="3clF47">
          <node concept="3clFbJ" id="5BGv8yzxmXQ" role="3cqZAp">
            <node concept="3eNFk2" id="3gNap3fZbOz" role="3eNLev">
              <node concept="2ZW3vV" id="3gNap3fZcI_" role="3eO9$A">
                <node concept="3uibUv" id="3gNap3fZcIG" role="2ZW6by">
                  <ref role="3uigEE" node="3gNap3fNdtK" resolve="MetaLogicalValue" />
                </node>
                <node concept="37vLTw" id="3gNap3fZbPl" role="2ZW6bz">
                  <ref role="3cqZAo" node="6HT7BWBPa9P" resolve="tf" />
                </node>
              </node>
              <node concept="3clFbS" id="3gNap3fZbO_" role="3eOfB_">
                <node concept="3cpWs6" id="3gNap3fZcV5" role="3cqZAp">
                  <node concept="1rXfSq" id="3gNap3fZcZq" role="3cqZAk">
                    <ref role="37wK5l" node="3gNap3fZcVn" resolve="asValue" />
                    <node concept="2OqwBi" id="3gNap3fZcZt" role="37wK5m">
                      <node concept="37vLTw" id="3gNap3fZcZu" role="2Oq$k0">
                        <ref role="3cqZAo" node="4TCblo5MI7r" resolve="logicalContext" />
                      </node>
                      <node concept="liA8E" id="3gNap3fZcZv" role="2OqNvi">
                        <ref role="37wK5l" to="bj13:~LogicalContext.variable(jetbrains.mps.logic.reactor.logical.MetaLogical):jetbrains.mps.logic.reactor.logical.Logical" resolve="variable" />
                        <node concept="2OqwBi" id="3gNap3fZcZw" role="37wK5m">
                          <node concept="1eOMI4" id="3gNap3fZcZx" role="2Oq$k0">
                            <node concept="10QFUN" id="3gNap3fZcZy" role="1eOMHV">
                              <node concept="37vLTw" id="3gNap3fZcZz" role="10QFUP">
                                <ref role="3cqZAo" node="6HT7BWBPa9P" resolve="tf" />
                              </node>
                              <node concept="3uibUv" id="3gNap3fZcZ$" role="10QFUM">
                                <ref role="3uigEE" node="3gNap3fNdtK" resolve="MetaLogicalValue" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="3gNap3fZcZ_" role="2OqNvi">
                            <ref role="37wK5l" node="3gNap3fNd$z" resolve="metaLogical" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3gNap3fZcIL" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbS" id="5BGv8yzxmXS" role="3clFbx">
              <node concept="3cpWs6" id="3gNap3fZcTi" role="3cqZAp">
                <node concept="1rXfSq" id="3gNap3fZcU4" role="3cqZAk">
                  <ref role="37wK5l" node="4TCblo5YI1H" resolve="asVariable" />
                  <node concept="2OqwBi" id="3gNap3fZcU7" role="37wK5m">
                    <node concept="37vLTw" id="3gNap3fZcU8" role="2Oq$k0">
                      <ref role="3cqZAo" node="4TCblo5MI7r" resolve="logicalContext" />
                    </node>
                    <node concept="liA8E" id="3gNap3fZcU9" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~LogicalContext.variable(jetbrains.mps.logic.reactor.logical.MetaLogical):jetbrains.mps.logic.reactor.logical.Logical" resolve="variable" />
                      <node concept="2OqwBi" id="3gNap3fZcUa" role="37wK5m">
                        <node concept="1eOMI4" id="3gNap3fZcUb" role="2Oq$k0">
                          <node concept="10QFUN" id="3gNap3fZcUc" role="1eOMHV">
                            <node concept="37vLTw" id="3gNap3fZcUd" role="10QFUP">
                              <ref role="3cqZAo" node="6HT7BWBPa9P" resolve="tf" />
                            </node>
                            <node concept="3uibUv" id="3gNap3fZcUe" role="10QFUM">
                              <ref role="3uigEE" node="7HUwyZbdMWH" resolve="MetaLogicalDataForm" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="3gNap3fZcUf" role="2OqNvi">
                          <ref role="37wK5l" node="514BAS_Xsp_" resolve="metaLogical" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5BGv8yzxoz$" role="3cqZAp" />
            </node>
            <node concept="2ZW3vV" id="4TCblo5MCk$" role="3clFbw">
              <node concept="3uibUv" id="4TCblo5MCof" role="2ZW6by">
                <ref role="3uigEE" node="7HUwyZbdMWH" resolve="MetaLogicalDataForm" />
              </node>
              <node concept="37vLTw" id="bUIfhjJCGB" role="2ZW6bz">
                <ref role="3cqZAo" node="6HT7BWBPa9P" resolve="tf" />
              </node>
            </node>
            <node concept="9aQIb" id="5BGv8yzxoqo" role="9aQIa">
              <node concept="3clFbS" id="5BGv8yzxoqp" role="9aQI4">
                <node concept="3cpWs6" id="5BGv8yzxpdJ" role="3cqZAp">
                  <node concept="2OqwBi" id="5BGv8yzxl7m" role="3cqZAk">
                    <node concept="37vLTw" id="5BGv8yzxkWc" role="2Oq$k0">
                      <ref role="3cqZAo" node="6HT7BWBPa9P" resolve="tf" />
                    </node>
                    <node concept="liA8E" id="5BGv8yzxlnb" role="2OqNvi">
                      <ref role="37wK5l" to="6exd:3OPtF02Tjpr" resolve="mapRecursively" />
                      <node concept="37vLTw" id="5BGv8yzxlyp" role="37wK5m">
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
      <node concept="2tJIrI" id="4TCblo5MI$W" role="jymVt" />
      <node concept="312cEg" id="4TCblo5MI7r" role="jymVt">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3Tm6S6" id="4TCblo5MI7s" role="1B3o_S" />
        <node concept="3uibUv" id="4TCblo5MI7u" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5NlYH" role="jymVt" />
    <node concept="3Tm1VV" id="677NV565N1y" role="1B3o_S" />
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
          <node concept="3qTvmN" id="49obaclnSbP" role="11_B2D" />
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
          <node concept="3qTvmN" id="49obaclnSgw" role="11_B2D" />
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
    </node>
    <node concept="2tJIrI" id="7nPD14NOIs7" role="jymVt" />
    <node concept="2YIFZL" id="7nPD14NOHGU" role="jymVt">
      <property role="TrG5h" value="wildcardMetaLogical" />
      <node concept="37vLTG" id="7nPD14NOHGX" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="7nPD14NOHGY" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="49obaclnSlf" role="11_B2D" />
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
    </node>
    <node concept="2tJIrI" id="7nPD14O1iIK" role="jymVt" />
    <node concept="3Tm1VV" id="7nPD14NOCSb" role="1B3o_S" />
  </node>
</model>

