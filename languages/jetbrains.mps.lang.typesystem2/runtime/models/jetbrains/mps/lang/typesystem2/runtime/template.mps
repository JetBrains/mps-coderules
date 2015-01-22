<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7e0616dc-e55e-4c35-beca-da14b0c8f8bd(jetbrains.mps.lang.typesystem2.runtime.template)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="nc4n" ref="r:2a1eb048-898c-47a3-863b-36b04c4b9f7c(jetbrains.mps.lang.typesystem2.runtime.rule)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="msyo" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(MPS.Core/jetbrains.mps.util@java_stub)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="ec5l" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1461424660015405635" name="jetbrains.mps.baseLanguage.structure.EscapeOperation" flags="nn" index="EvHYZ" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1172420572800" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3THzug" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="312cEu" id="5k_shARMpxh">
    <property role="TrG5h" value="AbstractRuleTemplate" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="5k_shARMp_4" role="jymVt" />
    <node concept="3clFbW" id="12yN8DyKFdd" role="jymVt">
      <node concept="3cqZAl" id="12yN8DyKFdf" role="3clF45" />
      <node concept="3Tm1VV" id="12yN8DyKFdg" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8DyKFdh" role="3clF47">
        <node concept="3clFbF" id="12yN8DyKFsq" role="3cqZAp">
          <node concept="37vLTI" id="12yN8DyKFss" role="3clFbG">
            <node concept="2OqwBi" id="12yN8DyKFsw" role="37vLTJ">
              <node concept="Xjq3P" id="12yN8DyKFsz" role="2Oq$k0" />
              <node concept="2OwXpG" id="12yN8DyKFsv" role="2OqNvi">
                <ref role="2Oxat5" node="12yN8DyKFsm" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="12yN8DyKFs$" role="37vLTx">
              <ref role="3cqZAo" node="12yN8DyKFdZ" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="12yN8DyKFdZ" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="12yN8DyKFdY" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DyKFcw" role="jymVt" />
    <node concept="3clFb_" id="5k_shARMCYi" role="jymVt">
      <property role="TrG5h" value="applicableConcept" />
      <property role="1EzhhJ" value="true" />
      <node concept="3THzug" id="5k_shARMDke" role="3clF45" />
      <node concept="3Tm1VV" id="5k_shARMCYm" role="1B3o_S" />
      <node concept="3clFbS" id="5k_shARMCYn" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5k_shARMCUt" role="jymVt" />
    <node concept="3clFb_" id="5k_shARM_y2" role="jymVt">
      <property role="TrG5h" value="isApplicable" />
      <node concept="37vLTG" id="5k_shARM_CB" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="5k_shARMBoF" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="5k_shARMBsJ" role="3clF45" />
      <node concept="3Tm1VV" id="5k_shARM_y5" role="1B3o_S" />
      <node concept="3clFbS" id="5k_shARM_y6" role="3clF47">
        <node concept="3cpWs6" id="6fdr4UgepYo" role="3cqZAp">
          <node concept="3clFbT" id="6fdr4UgepYp" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DyCjhK" role="jymVt" />
    <node concept="3clFb_" id="12yN8DyCjfX" role="jymVt">
      <property role="TrG5h" value="isExactMatch" />
      <node concept="10P_77" id="12yN8DyCjg0" role="3clF45" />
      <node concept="3Tm1VV" id="12yN8DyCjg1" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8DyCjg2" role="3clF47">
        <node concept="3cpWs6" id="12yN8DyCjg3" role="3cqZAp">
          <node concept="3clFbT" id="12yN8DyCjg4" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5k_shARM_vc" role="jymVt" />
    <node concept="3clFb_" id="5k_shARMugD" role="jymVt">
      <property role="TrG5h" value="apply" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="5k_shARM_lS" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="5k_shARM_oi" role="1tU5fm" />
      </node>
      <node concept="A3Dl8" id="5MHpiylA_Go" role="3clF45">
        <node concept="3uibUv" id="5MHpiylA_Y$" role="A3Ik2">
          <ref role="3uigEE" to="nc4n:7eGEHDlc$ap" resolve="RuleBuilder" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5k_shARMugG" role="1B3o_S" />
      <node concept="3clFbS" id="5k_shARMugH" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7Oc59RSJZ5M" role="jymVt" />
    <node concept="2tJIrI" id="7Oc59RSJZ6z" role="jymVt" />
    <node concept="3clFb_" id="7Oc59RSK5Py" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="7Oc59RSK5Pz" role="1B3o_S" />
      <node concept="17QB3L" id="2pvEdqukxHX" role="3clF45" />
      <node concept="3clFbS" id="7Oc59RSK5PA" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSK69R" role="3cqZAp">
          <node concept="3cpWs3" id="7Oc59RSK8B8" role="3clFbG">
            <node concept="Xl_RD" id="7Oc59RSK8Bk" role="3uHU7w">
              <property role="Xl_RC" value="]" />
            </node>
            <node concept="3cpWs3" id="7Oc59RSK7Hi" role="3uHU7B">
              <node concept="3cpWs3" id="7Oc59RSK8cv" role="3uHU7B">
                <node concept="Xl_RD" id="7Oc59RSK8gP" role="3uHU7w">
                  <property role="Xl_RC" value=" [" />
                </node>
                <node concept="37vLTw" id="7Oc59RSK7MP" role="3uHU7B">
                  <ref role="3cqZAo" node="12yN8DyKFsm" resolve="name" />
                </node>
              </node>
              <node concept="2YIFZM" id="7Oc59RSKf0c" role="3uHU7w">
                <ref role="37wK5l" to="msyo:~NameUtil.compactNamespace(java.lang.String):java.lang.String" resolve="compactNamespace" />
                <ref role="1Pybhc" to="msyo:~NameUtil" resolve="NameUtil" />
                <node concept="2OqwBi" id="7Oc59RSK7eu" role="37wK5m">
                  <node concept="2OqwBi" id="7Oc59RSK6sp" role="2Oq$k0">
                    <node concept="1rXfSq" id="7Oc59RSK69Q" role="2Oq$k0">
                      <ref role="37wK5l" to="e2lb:~Object.getClass():java.lang.Class" resolve="getClass" />
                    </node>
                    <node concept="liA8E" id="7Oc59RSK74t" role="2OqNvi">
                      <ref role="37wK5l" to="e2lb:~Class.getPackage():java.lang.Package" resolve="getPackage" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7Oc59RSK7Eq" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~Package.getName():java.lang.String" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7Oc59RSK5PB" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5k_shARMtbi" role="jymVt" />
    <node concept="3Tm1VV" id="5k_shARMpxi" role="1B3o_S" />
    <node concept="312cEg" id="12yN8DyKFsm" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="12yN8DyKFsn" role="1B3o_S" />
      <node concept="17QB3L" id="12yN8DyKFsp" role="1tU5fm" />
    </node>
  </node>
  <node concept="312cEu" id="6ntBQ9KIZRc">
    <property role="TrG5h" value="AnchorUtil" />
    <node concept="2tJIrI" id="6ntBQ9KJ1cF" role="jymVt" />
    <node concept="2YIFZL" id="6ntBQ9KJ1a_" role="jymVt">
      <property role="TrG5h" value="asAnchor" />
      <node concept="37vLTG" id="6ntBQ9KJ1aA" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6ntBQ9KJ1gj" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="6ntBQ9KJ1aC" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="6ntBQ9KJ1aD" role="1B3o_S" />
      <node concept="3clFbS" id="6ntBQ9KJ1aE" role="3clF47">
        <node concept="3cpWs8" id="aFQeb4bEdq" role="3cqZAp">
          <node concept="3cpWsn" id="aFQeb4bEdr" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="aFQeb4bEdm" role="1tU5fm" />
            <node concept="3K4zz7" id="aFQeb4bFMU" role="33vP2m">
              <node concept="2OqwBi" id="aFQeb4bG08" role="3K4E3e">
                <node concept="1PxgMI" id="aFQeb4bFTX" role="2Oq$k0">
                  <ref role="1PxNhF" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  <node concept="37vLTw" id="aFQeb4bFQd" role="1PxMeX">
                    <ref role="3cqZAo" node="6ntBQ9KJ1aA" resolve="node" />
                  </node>
                </node>
                <node concept="3TrcHB" id="aFQeb4bGcA" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="2OqwBi" id="aFQeb4c16d" role="3K4GZi">
                <node concept="2YIFZM" id="aFQeb4bGkf" role="2Oq$k0">
                  <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                  <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                  <node concept="37vLTw" id="aFQeb4bGy6" role="37wK5m">
                    <ref role="3cqZAo" node="6ntBQ9KJ1aA" resolve="node" />
                  </node>
                </node>
                <node concept="EvHYZ" id="aFQeb4c2jj" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="aFQeb4bFkT" role="3K4Cdx">
                <node concept="37vLTw" id="aFQeb4bFjv" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ntBQ9KJ1aA" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="aFQeb4bFt1" role="2OqNvi">
                  <node concept="chp4Y" id="aFQeb4bF$a" role="cj9EA">
                    <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="aFQeb4bESo" role="3cqZAp" />
        <node concept="3clFbF" id="6ntBQ9KJc$L" role="3cqZAp">
          <node concept="3K4zz7" id="6ntBQ9KJcFm" role="3clFbG">
            <node concept="10Nm6u" id="aFQeb4bZh3" role="3K4GZi" />
            <node concept="3y3z36" id="6ntBQ9KJcAU" role="3K4Cdx">
              <node concept="10Nm6u" id="6ntBQ9KJcDR" role="3uHU7w" />
              <node concept="37vLTw" id="6ntBQ9KJc$J" role="3uHU7B">
                <ref role="3cqZAo" node="6ntBQ9KJ1aA" resolve="node" />
              </node>
            </node>
            <node concept="3cpWs3" id="5dz6b543unR" role="3K4E3e">
              <node concept="Xl_RD" id="5dz6b543uy9" role="3uHU7w">
                <property role="Xl_RC" value=")" />
              </node>
              <node concept="3cpWs3" id="5dz6b543uS_" role="3uHU7B">
                <node concept="37vLTw" id="aFQeb4bEdx" role="3uHU7w">
                  <ref role="3cqZAo" node="aFQeb4bEdr" resolve="text" />
                </node>
                <node concept="3cpWs3" id="5dz6b543tY4" role="3uHU7B">
                  <node concept="2YIFZM" id="6ntBQ9KJcWt" role="3uHU7B">
                    <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                    <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                    <node concept="2OqwBi" id="6ntBQ9KJcWu" role="37wK5m">
                      <node concept="2JrnkZ" id="6ntBQ9KJcWv" role="2Oq$k0">
                        <node concept="37vLTw" id="6ntBQ9KJcWw" role="2JrQYb">
                          <ref role="3cqZAo" node="6ntBQ9KJ1aA" resolve="node" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6ntBQ9KJcWx" role="2OqNvi">
                        <ref role="37wK5l" to="ec5l:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="5dz6b543u1F" role="3uHU7w">
                    <property role="Xl_RC" value="(" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6ntBQ9KIZRd" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6ntBQ9KKtmQ">
    <property role="TrG5h" value="CustomConstraints" />
    <node concept="2tJIrI" id="6ntBQ9KKt_t" role="jymVt" />
    <node concept="2YIFZL" id="6ntBQ9KKtAv" role="jymVt">
      <property role="TrG5h" value="typeAnchor" />
      <node concept="37vLTG" id="4vbeH84IcF2" role="3clF46">
        <property role="TrG5h" value="typevar" />
        <node concept="3uibUv" id="4vbeH84IdFv" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6ntBQ9KKtCx" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="6ntBQ9KKtEp" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6ntBQ9KKtFE" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="3uibUv" id="6ntBQ9KKtGI" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6ntBQ9KKtHT" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="6ntBQ9KKtPw" role="1tU5fm">
          <node concept="3uibUv" id="6ntBQ9KKtPd" role="8Xvag">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6ntBQ9KKNlZ" role="3clF45">
        <ref role="3uigEE" to="nc4n:7eGEHDlc$f7" resolve="UserConstraint" />
      </node>
      <node concept="3Tm1VV" id="6ntBQ9KKtAy" role="1B3o_S" />
      <node concept="3clFbS" id="6ntBQ9KKtAz" role="3clF47">
        <node concept="3clFbJ" id="aFQeb4bPsF" role="3cqZAp">
          <node concept="3clFbS" id="aFQeb4bPsI" role="3clFbx">
            <node concept="3cpWs6" id="aFQeb4bQic" role="3cqZAp">
              <node concept="1rXfSq" id="aFQeb4bPYM" role="3cqZAk">
                <ref role="37wK5l" node="4vbeH84Olp7" resolve="type" />
                <node concept="37vLTw" id="aFQeb4bPZZ" role="37wK5m">
                  <ref role="3cqZAo" node="4vbeH84IcF2" resolve="typevar" />
                </node>
                <node concept="37vLTw" id="aFQeb4bQ1x" role="37wK5m">
                  <ref role="3cqZAo" node="6ntBQ9KKtCx" resolve="concept" />
                </node>
                <node concept="37vLTw" id="aFQeb4bQ2I" role="37wK5m">
                  <ref role="3cqZAo" node="6ntBQ9KKtHT" resolve="args" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="aFQeb4bPNe" role="3clFbw">
            <node concept="10Nm6u" id="aFQeb4bPYc" role="3uHU7w" />
            <node concept="37vLTw" id="aFQeb4bPC3" role="3uHU7B">
              <ref role="3cqZAo" node="6ntBQ9KKtFE" resolve="anchor" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="aFQeb4bQxW" role="3cqZAp" />
        <node concept="3clFbF" id="6ntBQ9KKBO1" role="3cqZAp">
          <node concept="2YIFZM" id="6ntBQ9KKBQJ" role="3clFbG">
            <ref role="37wK5l" to="nc4n:5k_shAROPJX" resolve="nary" />
            <ref role="1Pybhc" to="nc4n:7eGEHDlc$f7" resolve="UserConstraint" />
            <node concept="3cpWs3" id="5dz6b544cLA" role="37wK5m">
              <node concept="2OqwBi" id="aFQeb4j9Z0" role="3uHU7w">
                <node concept="37vLTw" id="aFQeb4j9Z1" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ntBQ9KKtHT" resolve="args" />
                </node>
                <node concept="1Rwk04" id="aFQeb4j9Z2" role="2OqNvi" />
              </node>
              <node concept="Xl_RD" id="6ntBQ9KKBSp" role="3uHU7B">
                <property role="Xl_RC" value="type3_" />
              </node>
            </node>
            <node concept="1rXfSq" id="6ntBQ9KKC0G" role="37wK5m">
              <ref role="37wK5l" node="6ntBQ9KK_YA" resolve="prepend3" />
              <node concept="37vLTw" id="5dz6b544aI6" role="37wK5m">
                <ref role="3cqZAo" node="4vbeH84IcF2" resolve="typevar" />
              </node>
              <node concept="37vLTw" id="6ntBQ9KKC8$" role="37wK5m">
                <ref role="3cqZAo" node="6ntBQ9KKtCx" resolve="concept" />
              </node>
              <node concept="37vLTw" id="6ntBQ9KKCmL" role="37wK5m">
                <ref role="3cqZAo" node="6ntBQ9KKtFE" resolve="anchor" />
              </node>
              <node concept="37vLTw" id="6ntBQ9KKCxs" role="37wK5m">
                <ref role="3cqZAo" node="6ntBQ9KKtHT" resolve="args" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4vbeH84Om84" role="jymVt" />
    <node concept="2YIFZL" id="4vbeH84Olp7" role="jymVt">
      <property role="TrG5h" value="type" />
      <node concept="37vLTG" id="4vbeH84Olpc" role="3clF46">
        <property role="TrG5h" value="typevar" />
        <node concept="3uibUv" id="4vbeH84Olpd" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4vbeH84Olp8" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="4vbeH84Olp9" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4vbeH84Olpe" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="4vbeH84Olpf" role="1tU5fm">
          <node concept="3uibUv" id="4vbeH84Olpg" role="8Xvag">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4vbeH84Olph" role="3clF45">
        <ref role="3uigEE" to="nc4n:7eGEHDlc$f7" resolve="UserConstraint" />
      </node>
      <node concept="3Tm1VV" id="4vbeH84Olpi" role="1B3o_S" />
      <node concept="3clFbS" id="4vbeH84Olpj" role="3clF47">
        <node concept="3clFbF" id="4vbeH84Olpk" role="3cqZAp">
          <node concept="2YIFZM" id="4vbeH84Olpl" role="3clFbG">
            <ref role="37wK5l" to="nc4n:5k_shAROPJX" resolve="nary" />
            <ref role="1Pybhc" to="nc4n:7eGEHDlc$f7" resolve="UserConstraint" />
            <node concept="3cpWs3" id="5dz6b544fJv" role="37wK5m">
              <node concept="2OqwBi" id="aFQeb4j9O1" role="3uHU7w">
                <node concept="37vLTw" id="aFQeb4j9O2" role="2Oq$k0">
                  <ref role="3cqZAo" node="4vbeH84Olpe" resolve="args" />
                </node>
                <node concept="1Rwk04" id="aFQeb4j9O3" role="2OqNvi" />
              </node>
              <node concept="Xl_RD" id="4vbeH84Olpm" role="3uHU7B">
                <property role="Xl_RC" value="type2_" />
              </node>
            </node>
            <node concept="1rXfSq" id="4vbeH84Olpn" role="37wK5m">
              <ref role="37wK5l" node="6ntBQ9KK$LG" resolve="prepend2" />
              <node concept="37vLTw" id="5dz6b544bcy" role="37wK5m">
                <ref role="3cqZAo" node="4vbeH84Olpc" resolve="typevar" />
              </node>
              <node concept="37vLTw" id="4vbeH84Olpo" role="37wK5m">
                <ref role="3cqZAo" node="4vbeH84Olp8" resolve="concept" />
              </node>
              <node concept="37vLTw" id="4vbeH84Olpq" role="37wK5m">
                <ref role="3cqZAo" node="4vbeH84Olpe" resolve="args" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4vbeH84M3Xq" role="jymVt" />
    <node concept="2YIFZL" id="4vbeH84M3ch" role="jymVt">
      <property role="TrG5h" value="typeOf" />
      <node concept="37vLTG" id="4vbeH84M3cm" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="4vbeH84M3cn" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4vbeH84M3ci" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="3uibUv" id="4vbeH84M3cj" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="4vbeH84M3cr" role="3clF45">
        <ref role="3uigEE" to="nc4n:7eGEHDlc$f7" resolve="UserConstraint" />
      </node>
      <node concept="3Tm1VV" id="4vbeH84M3cs" role="1B3o_S" />
      <node concept="3clFbS" id="4vbeH84M3ct" role="3clF47">
        <node concept="3clFbF" id="4vbeH84M3cu" role="3cqZAp">
          <node concept="2YIFZM" id="4vbeH84MIEp" role="3clFbG">
            <ref role="37wK5l" to="nc4n:7eGEHDlc$fn" resolve="binary" />
            <ref role="1Pybhc" to="nc4n:7eGEHDlc$f7" resolve="UserConstraint" />
            <node concept="Xl_RD" id="4vbeH84MIEq" role="37wK5m">
              <property role="Xl_RC" value="typeOf" />
            </node>
            <node concept="37vLTw" id="4vbeH84MIEs" role="37wK5m">
              <ref role="3cqZAo" node="4vbeH84M3cm" resolve="type" />
            </node>
            <node concept="37vLTw" id="4vbeH84MIEr" role="37wK5m">
              <ref role="3cqZAo" node="4vbeH84M3ci" resolve="anchor" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ntBQ9KKwpX" role="jymVt" />
    <node concept="2YIFZL" id="6ntBQ9KKwNP" role="jymVt">
      <property role="TrG5h" value="prepend1" />
      <node concept="37vLTG" id="6ntBQ9KKwWO" role="3clF46">
        <property role="TrG5h" value="head" />
        <node concept="3uibUv" id="6ntBQ9KKwX0" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6ntBQ9KKx05" role="3clF46">
        <property role="TrG5h" value="tail" />
        <node concept="8X2XB" id="6ntBQ9KKx2o" role="1tU5fm">
          <node concept="3uibUv" id="6ntBQ9KKx19" role="8Xvag">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="6ntBQ9KKwSP" role="3clF45">
        <node concept="3uibUv" id="6ntBQ9KKwSM" role="10Q1$1">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6ntBQ9KKBuj" role="1B3o_S" />
      <node concept="3clFbS" id="6ntBQ9KKwNT" role="3clF47">
        <node concept="3cpWs8" id="6ntBQ9KKyC0" role="3cqZAp">
          <node concept="3cpWsn" id="6ntBQ9KKyC1" role="3cpWs9">
            <property role="TrG5h" value="array" />
            <node concept="10Q1$e" id="6ntBQ9KKyBK" role="1tU5fm">
              <node concept="3uibUv" id="6ntBQ9KKyBN" role="10Q1$1">
                <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2ShNRf" id="6ntBQ9KKyC2" role="33vP2m">
              <node concept="3$_iS1" id="6ntBQ9KKyC3" role="2ShVmc">
                <node concept="3$GHV9" id="6ntBQ9KKyC4" role="3$GQph">
                  <node concept="3cpWs3" id="6ntBQ9KKyC5" role="3$I4v7">
                    <node concept="3cmrfG" id="6ntBQ9KKyC6" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="6ntBQ9KKyC7" role="3uHU7B">
                      <node concept="37vLTw" id="6ntBQ9KKyC8" role="2Oq$k0">
                        <ref role="3cqZAo" node="6ntBQ9KKx05" resolve="tail" />
                      </node>
                      <node concept="1Rwk04" id="6ntBQ9KKyC9" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="6ntBQ9KKyCa" role="3$_nBY">
                  <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ntBQ9KKxcT" role="3cqZAp">
          <node concept="37vLTI" id="6ntBQ9KKyY8" role="3clFbG">
            <node concept="37vLTw" id="6ntBQ9KKyZ0" role="37vLTx">
              <ref role="3cqZAo" node="6ntBQ9KKwWO" resolve="head" />
            </node>
            <node concept="AH0OO" id="6ntBQ9KKyTI" role="37vLTJ">
              <node concept="3cmrfG" id="6ntBQ9KKyVO" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="6ntBQ9KKyCb" role="AHHXb">
                <ref role="3cqZAo" node="6ntBQ9KKyC1" resolve="array" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ntBQ9KKz2Q" role="3cqZAp">
          <node concept="2YIFZM" id="6ntBQ9KKzmg" role="3clFbG">
            <ref role="37wK5l" to="e2lb:~System.arraycopy(java.lang.Object,int,java.lang.Object,int,int):void" resolve="arraycopy" />
            <ref role="1Pybhc" to="e2lb:~System" resolve="System" />
            <node concept="37vLTw" id="6ntBQ9KKzHP" role="37wK5m">
              <ref role="3cqZAo" node="6ntBQ9KKx05" resolve="tail" />
            </node>
            <node concept="3cmrfG" id="6ntBQ9KKzMC" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="6ntBQ9KKzRL" role="37wK5m">
              <ref role="3cqZAo" node="6ntBQ9KKyC1" resolve="array" />
            </node>
            <node concept="3cmrfG" id="6ntBQ9KKzXf" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="6ntBQ9KK$80" role="37wK5m">
              <node concept="37vLTw" id="6ntBQ9KK$3V" role="2Oq$k0">
                <ref role="3cqZAo" node="6ntBQ9KKx05" resolve="tail" />
              </node>
              <node concept="1Rwk04" id="6ntBQ9KK$mr" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ntBQ9KK$uZ" role="3cqZAp">
          <node concept="37vLTw" id="6ntBQ9KK$uX" role="3clFbG">
            <ref role="3cqZAo" node="6ntBQ9KKyC1" resolve="array" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ntBQ9KK_8w" role="jymVt" />
    <node concept="2YIFZL" id="6ntBQ9KK$LG" role="jymVt">
      <property role="TrG5h" value="prepend2" />
      <node concept="37vLTG" id="6ntBQ9KK$LH" role="3clF46">
        <property role="TrG5h" value="head1" />
        <node concept="3uibUv" id="6ntBQ9KK$LI" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6ntBQ9KK_dI" role="3clF46">
        <property role="TrG5h" value="head2" />
        <node concept="3uibUv" id="6ntBQ9KK_hI" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6ntBQ9KK$LJ" role="3clF46">
        <property role="TrG5h" value="tail" />
        <node concept="8X2XB" id="6ntBQ9KK$LK" role="1tU5fm">
          <node concept="3uibUv" id="6ntBQ9KK$LL" role="8Xvag">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="6ntBQ9KK$LM" role="3clF45">
        <node concept="3uibUv" id="6ntBQ9KK$LN" role="10Q1$1">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6ntBQ9KKBzG" role="1B3o_S" />
      <node concept="3clFbS" id="6ntBQ9KK$LP" role="3clF47">
        <node concept="3cpWs8" id="6ntBQ9KK$LQ" role="3cqZAp">
          <node concept="3cpWsn" id="6ntBQ9KK$LR" role="3cpWs9">
            <property role="TrG5h" value="array" />
            <node concept="10Q1$e" id="6ntBQ9KK$LS" role="1tU5fm">
              <node concept="3uibUv" id="6ntBQ9KK$LT" role="10Q1$1">
                <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2ShNRf" id="6ntBQ9KK$LU" role="33vP2m">
              <node concept="3$_iS1" id="6ntBQ9KK$LV" role="2ShVmc">
                <node concept="3$GHV9" id="6ntBQ9KK$LW" role="3$GQph">
                  <node concept="3cpWs3" id="6ntBQ9KK$LX" role="3$I4v7">
                    <node concept="3cmrfG" id="6ntBQ9KK$LY" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="2OqwBi" id="6ntBQ9KK$LZ" role="3uHU7B">
                      <node concept="37vLTw" id="6ntBQ9KK$M0" role="2Oq$k0">
                        <ref role="3cqZAo" node="6ntBQ9KK$LJ" resolve="tail" />
                      </node>
                      <node concept="1Rwk04" id="6ntBQ9KK$M1" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="6ntBQ9KK$M2" role="3$_nBY">
                  <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ntBQ9KK$M3" role="3cqZAp">
          <node concept="37vLTI" id="6ntBQ9KK$M4" role="3clFbG">
            <node concept="37vLTw" id="6ntBQ9KK$M5" role="37vLTx">
              <ref role="3cqZAo" node="6ntBQ9KK$LH" resolve="head1" />
            </node>
            <node concept="AH0OO" id="6ntBQ9KK$M6" role="37vLTJ">
              <node concept="3cmrfG" id="6ntBQ9KK$M7" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="6ntBQ9KK$M8" role="AHHXb">
                <ref role="3cqZAo" node="6ntBQ9KK$LR" resolve="array" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ntBQ9KK_AZ" role="3cqZAp">
          <node concept="37vLTI" id="6ntBQ9KK_B0" role="3clFbG">
            <node concept="37vLTw" id="6ntBQ9KK_Km" role="37vLTx">
              <ref role="3cqZAo" node="6ntBQ9KK_dI" resolve="head2" />
            </node>
            <node concept="AH0OO" id="6ntBQ9KK_B2" role="37vLTJ">
              <node concept="3cmrfG" id="6ntBQ9KK_B3" role="AHEQo">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="6ntBQ9KK_B4" role="AHHXb">
                <ref role="3cqZAo" node="6ntBQ9KK$LR" resolve="array" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ntBQ9KK$M9" role="3cqZAp">
          <node concept="2YIFZM" id="6ntBQ9KK$Ma" role="3clFbG">
            <ref role="37wK5l" to="e2lb:~System.arraycopy(java.lang.Object,int,java.lang.Object,int,int):void" resolve="arraycopy" />
            <ref role="1Pybhc" to="e2lb:~System" resolve="System" />
            <node concept="37vLTw" id="6ntBQ9KK$Mb" role="37wK5m">
              <ref role="3cqZAo" node="6ntBQ9KK$LJ" resolve="tail" />
            </node>
            <node concept="3cmrfG" id="6ntBQ9KK$Mc" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="6ntBQ9KK$Md" role="37wK5m">
              <ref role="3cqZAo" node="6ntBQ9KK$LR" resolve="array" />
            </node>
            <node concept="3cmrfG" id="6ntBQ9KK$Me" role="37wK5m">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="6ntBQ9KK$Mf" role="37wK5m">
              <node concept="37vLTw" id="6ntBQ9KK$Mg" role="2Oq$k0">
                <ref role="3cqZAo" node="6ntBQ9KK$LJ" resolve="tail" />
              </node>
              <node concept="1Rwk04" id="6ntBQ9KK$Mh" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ntBQ9KK$Mi" role="3cqZAp">
          <node concept="37vLTw" id="6ntBQ9KK$Mj" role="3clFbG">
            <ref role="3cqZAo" node="6ntBQ9KK$LR" resolve="array" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ntBQ9KKAoY" role="jymVt" />
    <node concept="2YIFZL" id="6ntBQ9KK_YA" role="jymVt">
      <property role="TrG5h" value="prepend3" />
      <node concept="37vLTG" id="6ntBQ9KK_YB" role="3clF46">
        <property role="TrG5h" value="head1" />
        <node concept="3uibUv" id="6ntBQ9KK_YC" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6ntBQ9KK_YD" role="3clF46">
        <property role="TrG5h" value="head2" />
        <node concept="3uibUv" id="6ntBQ9KK_YE" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6ntBQ9KKAO2" role="3clF46">
        <property role="TrG5h" value="head3" />
        <node concept="3uibUv" id="6ntBQ9KKAO3" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6ntBQ9KK_YF" role="3clF46">
        <property role="TrG5h" value="tail" />
        <node concept="8X2XB" id="6ntBQ9KK_YG" role="1tU5fm">
          <node concept="3uibUv" id="6ntBQ9KK_YH" role="8Xvag">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="6ntBQ9KK_YI" role="3clF45">
        <node concept="3uibUv" id="6ntBQ9KK_YJ" role="10Q1$1">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6ntBQ9KKBCo" role="1B3o_S" />
      <node concept="3clFbS" id="6ntBQ9KK_YL" role="3clF47">
        <node concept="3cpWs8" id="6ntBQ9KK_YM" role="3cqZAp">
          <node concept="3cpWsn" id="6ntBQ9KK_YN" role="3cpWs9">
            <property role="TrG5h" value="array" />
            <node concept="10Q1$e" id="6ntBQ9KK_YO" role="1tU5fm">
              <node concept="3uibUv" id="6ntBQ9KK_YP" role="10Q1$1">
                <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2ShNRf" id="6ntBQ9KK_YQ" role="33vP2m">
              <node concept="3$_iS1" id="6ntBQ9KK_YR" role="2ShVmc">
                <node concept="3$GHV9" id="6ntBQ9KK_YS" role="3$GQph">
                  <node concept="3cpWs3" id="6ntBQ9KK_YT" role="3$I4v7">
                    <node concept="3cmrfG" id="6ntBQ9KK_YU" role="3uHU7w">
                      <property role="3cmrfH" value="3" />
                    </node>
                    <node concept="2OqwBi" id="6ntBQ9KK_YV" role="3uHU7B">
                      <node concept="37vLTw" id="6ntBQ9KK_YW" role="2Oq$k0">
                        <ref role="3cqZAo" node="6ntBQ9KK_YF" resolve="tail" />
                      </node>
                      <node concept="1Rwk04" id="6ntBQ9KK_YX" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="6ntBQ9KK_YY" role="3$_nBY">
                  <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ntBQ9KK_YZ" role="3cqZAp">
          <node concept="37vLTI" id="6ntBQ9KK_Z0" role="3clFbG">
            <node concept="37vLTw" id="6ntBQ9KK_Z1" role="37vLTx">
              <ref role="3cqZAo" node="6ntBQ9KK_YB" resolve="head1" />
            </node>
            <node concept="AH0OO" id="6ntBQ9KK_Z2" role="37vLTJ">
              <node concept="3cmrfG" id="6ntBQ9KK_Z3" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="6ntBQ9KK_Z4" role="AHHXb">
                <ref role="3cqZAo" node="6ntBQ9KK_YN" resolve="array" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ntBQ9KK_Z5" role="3cqZAp">
          <node concept="37vLTI" id="6ntBQ9KK_Z6" role="3clFbG">
            <node concept="37vLTw" id="6ntBQ9KK_Z7" role="37vLTx">
              <ref role="3cqZAo" node="6ntBQ9KK_YD" resolve="head2" />
            </node>
            <node concept="AH0OO" id="6ntBQ9KK_Z8" role="37vLTJ">
              <node concept="3cmrfG" id="6ntBQ9KK_Z9" role="AHEQo">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="6ntBQ9KK_Za" role="AHHXb">
                <ref role="3cqZAo" node="6ntBQ9KK_YN" resolve="array" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ntBQ9KKB95" role="3cqZAp">
          <node concept="37vLTI" id="6ntBQ9KKB96" role="3clFbG">
            <node concept="37vLTw" id="6ntBQ9KKBfw" role="37vLTx">
              <ref role="3cqZAo" node="6ntBQ9KKAO2" resolve="head3" />
            </node>
            <node concept="AH0OO" id="6ntBQ9KKB98" role="37vLTJ">
              <node concept="3cmrfG" id="6ntBQ9KKB99" role="AHEQo">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="37vLTw" id="6ntBQ9KKB9a" role="AHHXb">
                <ref role="3cqZAo" node="6ntBQ9KK_YN" resolve="array" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ntBQ9KK_Zb" role="3cqZAp">
          <node concept="2YIFZM" id="6ntBQ9KK_Zc" role="3clFbG">
            <ref role="37wK5l" to="e2lb:~System.arraycopy(java.lang.Object,int,java.lang.Object,int,int):void" resolve="arraycopy" />
            <ref role="1Pybhc" to="e2lb:~System" resolve="System" />
            <node concept="37vLTw" id="6ntBQ9KK_Zd" role="37wK5m">
              <ref role="3cqZAo" node="6ntBQ9KK_YF" resolve="tail" />
            </node>
            <node concept="3cmrfG" id="6ntBQ9KK_Ze" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="6ntBQ9KK_Zf" role="37wK5m">
              <ref role="3cqZAo" node="6ntBQ9KK_YN" resolve="array" />
            </node>
            <node concept="3cmrfG" id="6ntBQ9KK_Zg" role="37wK5m">
              <property role="3cmrfH" value="3" />
            </node>
            <node concept="2OqwBi" id="6ntBQ9KK_Zh" role="37wK5m">
              <node concept="37vLTw" id="6ntBQ9KK_Zi" role="2Oq$k0">
                <ref role="3cqZAo" node="6ntBQ9KK_YF" resolve="tail" />
              </node>
              <node concept="1Rwk04" id="6ntBQ9KK_Zj" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ntBQ9KK_Zk" role="3cqZAp">
          <node concept="37vLTw" id="6ntBQ9KK_Zl" role="3clFbG">
            <ref role="3cqZAo" node="6ntBQ9KK_YN" resolve="array" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6ntBQ9KKtmR" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6w6CYIRh9BG">
    <property role="TrG5h" value="AbstractRuleTemplateManifest" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="6w6CYIRh9FU" role="jymVt" />
    <node concept="3clFb_" id="6w6CYIRhc3I" role="jymVt">
      <property role="TrG5h" value="collectTemplates" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="6w6CYIRhcfo" role="3clF46">
        <property role="TrG5h" value="templateCollector" />
        <node concept="3uibUv" id="6w6CYIRhc$B" role="1tU5fm">
          <ref role="3uigEE" node="6w6CYIRhcpa" resolve="RuleTemplateCollector" />
        </node>
      </node>
      <node concept="3cqZAl" id="6w6CYIRhc3K" role="3clF45" />
      <node concept="3Tm1VV" id="6w6CYIRhc3L" role="1B3o_S" />
      <node concept="3clFbS" id="6w6CYIRhc3M" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6w6CYIRh9G6" role="jymVt" />
    <node concept="3Tm1VV" id="6w6CYIRh9BH" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="6w6CYIRhcpa">
    <property role="TrG5h" value="RuleTemplateCollector" />
    <node concept="2tJIrI" id="6w6CYIRhcpi" role="jymVt" />
    <node concept="3clFb_" id="6w6CYIRhcqi" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="addTemplate" />
      <node concept="37vLTG" id="6w6CYIRhcqC" role="3clF46">
        <property role="TrG5h" value="ruleTemplate" />
        <node concept="3uibUv" id="6w6CYIRhcqW" role="1tU5fm">
          <ref role="3uigEE" node="5k_shARMpxh" resolve="AbstractRuleTemplate" />
        </node>
      </node>
      <node concept="3cqZAl" id="6w6CYIRhcqk" role="3clF45" />
      <node concept="3Tm1VV" id="6w6CYIRhcql" role="1B3o_S" />
      <node concept="3clFbS" id="6w6CYIRhcqm" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6w6CYIRhcvP" role="jymVt" />
    <node concept="3Tm1VV" id="6w6CYIRhcpb" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5MHpiyl$3OG">
    <property role="TrG5h" value="AbstractParameterRuleTemplate" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="5MHpiyl$cC7" role="jymVt" />
    <node concept="3clFbW" id="5MHpiyl$cGF" role="jymVt">
      <node concept="37vLTG" id="5MHpiyl$cHI" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5MHpiyl$cIA" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="5MHpiyl$cGH" role="3clF45" />
      <node concept="3Tm1VV" id="5MHpiyl$cGI" role="1B3o_S" />
      <node concept="3clFbS" id="5MHpiyl$cGJ" role="3clF47">
        <node concept="XkiVB" id="5MHpiyl$d0l" role="3cqZAp">
          <ref role="37wK5l" node="12yN8DyKFdd" resolve="AbstractRuleTemplate" />
          <node concept="37vLTw" id="5MHpiyl$d26" role="37wK5m">
            <ref role="3cqZAo" node="5MHpiyl$cHI" resolve="name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5MHpiyl_$MI" role="jymVt" />
    <node concept="3clFb_" id="5MHpiyl_$Us" role="jymVt">
      <property role="TrG5h" value="apply" />
      <property role="1EzhhJ" value="false" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="5MHpiyl_$Ut" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="5MHpiyl_$Uu" role="1tU5fm" />
      </node>
      <node concept="A3Dl8" id="5MHpiylAAmK" role="3clF45">
        <node concept="3uibUv" id="5MHpiylAAmM" role="A3Ik2">
          <ref role="3uigEE" to="nc4n:7eGEHDlc$ap" resolve="RuleBuilder" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5MHpiyl_$Uy" role="1B3o_S" />
      <node concept="3clFbS" id="5MHpiyl_$U$" role="3clF47">
        <node concept="3cpWs8" id="5MHpiylClzi" role="3cqZAp">
          <node concept="3cpWsn" id="5MHpiylClzl" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="A3Dl8" id="5MHpiylClzf" role="1tU5fm">
              <node concept="3uibUv" id="5MHpiylClCK" role="A3Ik2">
                <ref role="3uigEE" to="nc4n:7eGEHDlc$ap" resolve="RuleBuilder" />
              </node>
            </node>
            <node concept="10Nm6u" id="5MHpiylClJZ" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="5MHpiylCpiC" role="3cqZAp" />
        <node concept="1DcWWT" id="5MHpiylCl3V" role="3cqZAp">
          <node concept="3clFbS" id="5MHpiylCl3W" role="2LFqv$">
            <node concept="3clFbF" id="5MHpiylClMd" role="3cqZAp">
              <node concept="37vLTI" id="5MHpiylClV8" role="3clFbG">
                <node concept="2OqwBi" id="5MHpiylCmb0" role="37vLTx">
                  <node concept="37vLTw" id="5MHpiylCm2D" role="2Oq$k0">
                    <ref role="3cqZAo" node="5MHpiylClzl" resolve="result" />
                  </node>
                  <node concept="3QWeyG" id="5MHpiylCnfD" role="2OqNvi">
                    <node concept="1rXfSq" id="5MHpiylCnqR" role="576Qk">
                      <ref role="37wK5l" node="5MHpiyl$g76" resolve="apply" />
                      <node concept="37vLTw" id="5MHpiylCnCl" role="37wK5m">
                        <ref role="3cqZAo" node="5MHpiyl_$Ut" resolve="input" />
                      </node>
                      <node concept="37vLTw" id="5MHpiylCnU1" role="37wK5m">
                        <ref role="3cqZAo" node="5MHpiylCl3Z" resolve="p" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5MHpiylClMc" role="37vLTJ">
                  <ref role="3cqZAo" node="5MHpiylClzl" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5MHpiylCl3Z" role="1Duv9x">
            <property role="TrG5h" value="p" />
            <node concept="16syzq" id="5MHpiylCl43" role="1tU5fm">
              <ref role="16sUi3" node="5MHpiyl_8Id" resolve="T" />
            </node>
          </node>
          <node concept="1rXfSq" id="5MHpiylCl44" role="1DdaDG">
            <ref role="37wK5l" node="5MHpiyl$jD$" resolve="parameters" />
            <node concept="37vLTw" id="5MHpiylCl45" role="37wK5m">
              <ref role="3cqZAo" node="5MHpiyl_$Ut" resolve="input" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5MHpiylCt4p" role="3cqZAp" />
        <node concept="3clFbF" id="5MHpiylCoba" role="3cqZAp">
          <node concept="37vLTw" id="5MHpiylCob8" role="3clFbG">
            <ref role="3cqZAo" node="5MHpiylClzl" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5MHpiyl_$Sy" role="jymVt" />
    <node concept="3clFb_" id="5MHpiyl$jD$" role="jymVt">
      <property role="TrG5h" value="parameters" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="5MHpiyl$ljO" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="5MHpiyl$lAd" role="1tU5fm" />
      </node>
      <node concept="A3Dl8" id="5MHpiyl$jZ2" role="3clF45">
        <node concept="16syzq" id="5MHpiyl$kgC" role="A3Ik2">
          <ref role="16sUi3" node="5MHpiyl_8Id" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5MHpiyl$jDB" role="1B3o_S" />
      <node concept="3clFbS" id="5MHpiyl$jDC" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5MHpiyl$jkY" role="jymVt" />
    <node concept="3clFb_" id="5MHpiyl$g76" role="jymVt">
      <property role="TrG5h" value="apply" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="5MHpiyl_8SB" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="5MHpiyl_8Xk" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5MHpiyl$hH7" role="3clF46">
        <property role="TrG5h" value="param" />
        <node concept="16syzq" id="5MHpiyl$hZo" role="1tU5fm">
          <ref role="16sUi3" node="5MHpiyl_8Id" resolve="T" />
        </node>
      </node>
      <node concept="A3Dl8" id="5MHpiylABtG" role="3clF45">
        <node concept="3uibUv" id="5MHpiylABx$" role="A3Ik2">
          <ref role="3uigEE" to="nc4n:7eGEHDlc$ap" resolve="RuleBuilder" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5MHpiyl$g79" role="1B3o_S" />
      <node concept="3clFbS" id="5MHpiyl$g7a" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5MHpiyl$d2t" role="jymVt" />
    <node concept="3Tm1VV" id="5MHpiyl$3OH" role="1B3o_S" />
    <node concept="3uibUv" id="5MHpiyl$co8" role="1zkMxy">
      <ref role="3uigEE" node="5k_shARMpxh" resolve="AbstractRuleTemplate" />
    </node>
    <node concept="16euLQ" id="5MHpiyl_8Id" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
</model>

