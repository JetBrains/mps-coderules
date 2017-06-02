<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="yt73" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.unification(jetbrains.mps.logic.reactor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.treeform)" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
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
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="7HUwyZbdMWH">
    <property role="TrG5h" value="MetaLogicalTreeForm" />
    <node concept="2tJIrI" id="7HUwyZbdN_B" role="jymVt" />
    <node concept="3clFbW" id="7HUwyZbdNAd" role="jymVt">
      <node concept="3cqZAl" id="7HUwyZbdNAf" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZbdNAg" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZbdNAh" role="3clF47">
        <node concept="XkiVB" id="7HUwyZbdOUD" role="3cqZAp">
          <ref role="37wK5l" to="6exd:uNmovXiEVu" resolve="Variable" />
          <node concept="37vLTw" id="7HUwyZbdOWP" role="37wK5m">
            <ref role="3cqZAo" node="7HUwyZbdNBn" resolve="metaLogical" />
          </node>
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
      <property role="IEkAT" value="false" />
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
              <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
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
    <node concept="3clFb_" id="4sSe4$psaDX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
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
    <property role="TrG5h" value="LogicalTreeForm" />
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
          <node concept="37vLTw" id="4TCblo5MOwN" role="37wK5m">
            <ref role="3cqZAo" node="4TCblo5MNMf" resolve="logical" />
          </node>
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
    <node concept="2tJIrI" id="4TCblo5MQDY" role="jymVt" />
    <node concept="3clFb_" id="4TCblo5MSCA" role="jymVt">
      <property role="TrG5h" value="isWildcard" />
      <property role="IEkAT" value="false" />
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
    <node concept="2tJIrI" id="4TCblo5MW14" role="jymVt" />
    <node concept="3clFb_" id="4TCblo5MWaC" role="jymVt">
      <property role="TrG5h" value="canRepresent" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="4TCblo5MWaD" role="3clF46">
        <property role="TrG5h" value="klass" />
        <node concept="3uibUv" id="4TCblo5MWaE" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="4TCblo5MWaF" role="11_B2D">
            <node concept="3uibUv" id="4TCblo5MWaG" role="3qUE_r">
              <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
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
    <node concept="3clFb_" id="4TCblo5MYmA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
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
      <property role="IEkAT" value="false" />
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
      <property role="IEkAT" value="false" />
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
                <ref role="3uigEE" node="4TCblo5MJ1m" resolve="LogicalTreeForm" />
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
                      <ref role="3uigEE" node="4TCblo5MJ1m" resolve="LogicalTreeForm" />
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
  <node concept="312cEu" id="4xTpErjR15$">
    <property role="TrG5h" value="DefaultLogicalUnification" />
    <node concept="2tJIrI" id="4xTpErjR1ns" role="jymVt" />
    <node concept="3clFb_" id="3FIATxbQg$x" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="asRoot" />
      <node concept="37vLTG" id="3FIATxbQg$y" role="3clF46">
        <property role="TrG5h" value="term" />
        <node concept="16syzq" id="3FIATxbQg$z" role="1tU5fm">
          <ref role="16sUi3" node="3FIATxbQg$A" resolve="TERM" />
        </node>
      </node>
      <node concept="16syzq" id="3FIATxbQg$$" role="3clF45">
        <ref role="16sUi3" node="3FIATxbQg$A" resolve="TERM" />
      </node>
      <node concept="3Tm1VV" id="3FIATxbQg$_" role="1B3o_S" />
      <node concept="16euLQ" id="3FIATxbQg$A" role="16eVyc">
        <property role="TrG5h" value="TERM" />
        <node concept="3uibUv" id="3FIATxbQg$B" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="3clFbS" id="3FIATxbQg$C" role="3clF47">
        <node concept="3clFbF" id="3FIATxbQg$D" role="3cqZAp">
          <node concept="10QFUN" id="3FIATxbQg$E" role="3clFbG">
            <node concept="2OqwBi" id="3FIATxbQg$F" role="10QFUP">
              <node concept="1eOMI4" id="3FIATxbQg$G" role="2Oq$k0">
                <node concept="10QFUN" id="3FIATxbQg$H" role="1eOMHV">
                  <node concept="37vLTw" id="3FIATxbQg$I" role="10QFUP">
                    <ref role="3cqZAo" node="3FIATxbQg$y" resolve="term" />
                  </node>
                  <node concept="3uibUv" id="3FIATxbQg$J" role="10QFUM">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3FIATxbQg$K" role="2OqNvi">
                <ref role="37wK5l" to="6exd:2QE4RCGndD7" resolve="asRoot" />
              </node>
            </node>
            <node concept="16syzq" id="3FIATxbQg$L" role="10QFUM">
              <ref role="16sUi3" node="3FIATxbQg$A" resolve="TERM" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3FIATxbQg$M" role="jymVt" />
    <node concept="3clFb_" id="3FIATxbQg$N" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="logical" />
      <node concept="37vLTG" id="3FIATxbQg$O" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="16syzq" id="3FIATxbQg$P" role="1tU5fm">
          <ref role="16sUi3" node="3FIATxbQg$T" resolve="TERM" />
        </node>
      </node>
      <node concept="3uibUv" id="3FIATxbQg$Q" role="3clF45">
        <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
        <node concept="16syzq" id="3FIATxbQg$R" role="11_B2D">
          <ref role="16sUi3" node="3FIATxbQg$T" resolve="TERM" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3FIATxbQg$S" role="1B3o_S" />
      <node concept="16euLQ" id="3FIATxbQg$T" role="16eVyc">
        <property role="TrG5h" value="TERM" />
        <node concept="3uibUv" id="3FIATxbQg$U" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="3clFbS" id="3FIATxbQg$V" role="3clF47">
        <node concept="3clFbF" id="3FIATxbQg$W" role="3cqZAp">
          <node concept="10QFUN" id="3FIATxbQg$X" role="3clFbG">
            <node concept="2OqwBi" id="3FIATxbQg$Y" role="10QFUP">
              <node concept="1eOMI4" id="3FIATxbQg$Z" role="2Oq$k0">
                <node concept="10QFUN" id="3FIATxbQg_0" role="1eOMHV">
                  <node concept="37vLTw" id="3FIATxbQg_1" role="10QFUP">
                    <ref role="3cqZAo" node="3FIATxbQg$O" resolve="var" />
                  </node>
                  <node concept="3uibUv" id="3FIATxbQg_2" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~LogicalOwner" resolve="LogicalOwner" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3FIATxbQg_3" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~LogicalOwner.logical():jetbrains.mps.logic.reactor.logical.Logical" resolve="logical" />
              </node>
            </node>
            <node concept="3uibUv" id="3FIATxbQg_4" role="10QFUM">
              <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              <node concept="16syzq" id="3FIATxbQg_5" role="11_B2D">
                <ref role="16sUi3" node="3FIATxbQg$T" resolve="TERM" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3FIATxbQg_6" role="jymVt" />
    <node concept="3clFb_" id="3FIATxbQg_7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isLogical" />
      <node concept="37vLTG" id="3FIATxbQg_8" role="3clF46">
        <property role="TrG5h" value="term" />
        <node concept="3uibUv" id="3FIATxbQg_9" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="10P_77" id="3FIATxbQg_a" role="3clF45" />
      <node concept="3Tm1VV" id="3FIATxbQg_b" role="1B3o_S" />
      <node concept="3clFbS" id="3FIATxbQg_c" role="3clF47">
        <node concept="3clFbF" id="3FIATxbQg_d" role="3cqZAp">
          <node concept="2ZW3vV" id="3FIATxbQg_e" role="3clFbG">
            <node concept="3uibUv" id="3FIATxbQg_f" role="2ZW6by">
              <ref role="3uigEE" to="bj13:~LogicalOwner" resolve="LogicalOwner" />
            </node>
            <node concept="37vLTw" id="3FIATxbQg_g" role="2ZW6bz">
              <ref role="3cqZAo" node="3FIATxbQg_8" resolve="term" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xTpErjR1aJ" role="jymVt" />
    <node concept="3Tm1VV" id="4xTpErjR15_" role="1B3o_S" />
  </node>
</model>

