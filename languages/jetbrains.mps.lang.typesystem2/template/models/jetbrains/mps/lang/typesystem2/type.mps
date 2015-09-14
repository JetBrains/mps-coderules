<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.typesystem2.type)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="2" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="2526372162255441536" name="jetbrains.mps.baseLanguage.collections.structure.AsUnmodifiableOperation" flags="nn" index="26Dbio" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="1pPth$m7FL5">
    <property role="TrG5h" value="Type" />
    <node concept="2tJIrI" id="1pPth$m7FLb" role="jymVt" />
    <node concept="2YIFZL" id="1pPth$m7K1m" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="37vLTG" id="1pPth$m7K5F" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1pPth$m7K5Y" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1pPth$m7K1U" role="3clF46">
        <property role="TrG5h" value="features" />
        <node concept="8X2XB" id="1pPth$m7K2Z" role="1tU5fm">
          <node concept="3uibUv" id="1pPth$m7K2r" role="8Xvag">
            <ref role="3uigEE" node="1pPth$m7FLs" resolve="TypeFeature" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1pPth$m7K1L" role="3clF45">
        <ref role="3uigEE" node="1pPth$m7FL5" resolve="Type" />
      </node>
      <node concept="3Tm1VV" id="1pPth$m7K1p" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$m7K1q" role="3clF47">
        <node concept="3clFbF" id="1pPth$m7L8E" role="3cqZAp">
          <node concept="2ShNRf" id="1pPth$m7L8C" role="3clFbG">
            <node concept="1pGfFk" id="1pPth$m7Lex" role="2ShVmc">
              <ref role="37wK5l" node="1pPth$m7K4v" resolve="Type" />
              <node concept="37vLTw" id="1pPth$m7LeU" role="37wK5m">
                <ref role="3cqZAo" node="1pPth$m7K5F" resolve="name" />
              </node>
              <node concept="2YIFZM" id="1pPth$m7Lni" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                <node concept="37vLTw" id="1pPth$m7Lp3" role="37wK5m">
                  <ref role="3cqZAo" node="1pPth$m7K1U" resolve="features" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$m7K13" role="jymVt" />
    <node concept="3clFbW" id="1pPth$m7K4v" role="jymVt">
      <node concept="37vLTG" id="1pPth$m7K55" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1pPth$m7K6i" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1pPth$m7K6n" role="3clF46">
        <property role="TrG5h" value="features" />
        <node concept="_YKpA" id="1pPth$m7K6x" role="1tU5fm">
          <node concept="3uibUv" id="1pPth$m7K6G" role="_ZDj9">
            <ref role="3uigEE" node="1pPth$m7FLs" resolve="TypeFeature" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1pPth$m7K4x" role="3clF45" />
      <node concept="3Tm6S6" id="1pPth$m7K52" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$m7K4z" role="3clF47">
        <node concept="3clFbF" id="1pPth$m7K75" role="3cqZAp">
          <node concept="37vLTI" id="1pPth$m7K77" role="3clFbG">
            <node concept="2OqwBi" id="1pPth$m7K7b" role="37vLTJ">
              <node concept="Xjq3P" id="1pPth$m7K7e" role="2Oq$k0" />
              <node concept="2OwXpG" id="1pPth$m7K7a" role="2OqNvi">
                <ref role="2Oxat5" node="1pPth$m7K71" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="1pPth$m7K7f" role="37vLTx">
              <ref role="3cqZAo" node="1pPth$m7K55" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1pPth$m7K8D" role="3cqZAp">
          <node concept="37vLTI" id="1pPth$m7K8F" role="3clFbG">
            <node concept="2OqwBi" id="1pPth$m7K8J" role="37vLTJ">
              <node concept="Xjq3P" id="1pPth$m7K8M" role="2Oq$k0" />
              <node concept="2OwXpG" id="1pPth$m7K8I" role="2OqNvi">
                <ref role="2Oxat5" node="1pPth$m7K8$" resolve="features" />
              </node>
            </node>
            <node concept="2OqwBi" id="1pPth$m7KqU" role="37vLTx">
              <node concept="37vLTw" id="1pPth$m7K8N" role="2Oq$k0">
                <ref role="3cqZAo" node="1pPth$m7K6n" resolve="features" />
              </node>
              <node concept="26Dbio" id="1pPth$m7KX_" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$m7K42" role="jymVt" />
    <node concept="3clFb_" id="1pPth$m7WwU" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="1pPth$m7WBW" role="3clF45" />
      <node concept="3Tm1VV" id="1pPth$m7WwX" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$m7WwY" role="3clF47">
        <node concept="3clFbF" id="1pPth$m7WTj" role="3cqZAp">
          <node concept="37vLTw" id="1pPth$m7WTi" role="3clFbG">
            <ref role="3cqZAo" node="1pPth$m7K71" resolve="name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$m7WpQ" role="jymVt" />
    <node concept="3clFb_" id="1pPth$m7IRq" role="jymVt">
      <property role="TrG5h" value="features" />
      <node concept="_YKpA" id="1pPth$m7IS7" role="3clF45">
        <node concept="3uibUv" id="1pPth$m7IS9" role="_ZDj9">
          <ref role="3uigEE" node="1pPth$m7FLs" resolve="TypeFeature" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1pPth$m7IRt" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$m7IRu" role="3clF47">
        <node concept="3clFbF" id="1pPth$m7L6i" role="3cqZAp">
          <node concept="37vLTw" id="1pPth$m7L6h" role="3clFbG">
            <ref role="3cqZAo" node="1pPth$m7K8$" resolve="features" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$m7JZJ" role="jymVt" />
    <node concept="3Tm1VV" id="1pPth$m7FL6" role="1B3o_S" />
    <node concept="312cEg" id="1pPth$m7K71" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="1pPth$m7K72" role="1B3o_S" />
      <node concept="17QB3L" id="1pPth$m7K74" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1pPth$m7Ly8" role="jymVt" />
    <node concept="312cEg" id="1pPth$m7K8$" role="jymVt">
      <property role="TrG5h" value="features" />
      <node concept="3Tm6S6" id="1pPth$m7K8_" role="1B3o_S" />
      <node concept="_YKpA" id="1pPth$m7K8B" role="1tU5fm">
        <node concept="3uibUv" id="1pPth$m7K8C" role="_ZDj9">
          <ref role="3uigEE" node="1pPth$m7FLs" resolve="TypeFeature" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$m7LCZ" role="jymVt" />
  </node>
  <node concept="312cEu" id="1pPth$m7FLs">
    <property role="TrG5h" value="TypeFeature" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="1pPth$m7FLL" role="jymVt" />
    <node concept="2YIFZL" id="1pPth$m7GkL" role="jymVt">
      <property role="TrG5h" value="string" />
      <node concept="37vLTG" id="1pPth$m7Gma" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1pPth$m7Gmi" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1pPth$m7Gm1" role="3clF45">
        <ref role="3uigEE" node="1pPth$m7FLs" resolve="TypeFeature" />
      </node>
      <node concept="3Tm1VV" id="1pPth$m7GkO" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$m7GkP" role="3clF47">
        <node concept="3clFbF" id="1pPth$m7IrW" role="3cqZAp">
          <node concept="2ShNRf" id="1pPth$m7IrU" role="3clFbG">
            <node concept="1pGfFk" id="1pPth$m7Iul" role="2ShVmc">
              <ref role="37wK5l" node="1pPth$m7IaJ" resolve="TypeFeature.Str" />
              <node concept="37vLTw" id="1pPth$m7Iva" role="37wK5m">
                <ref role="3cqZAo" node="1pPth$m7Gma" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2N2MQGCMQEh" role="jymVt" />
    <node concept="2YIFZL" id="2N2MQGCMQsb" role="jymVt">
      <property role="TrG5h" value="string" />
      <node concept="37vLTG" id="2N2MQGCMQsc" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="2N2MQGCMQsd" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2N2MQGCMQSc" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="2N2MQGCMQUl" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2N2MQGCMQse" role="3clF45">
        <ref role="3uigEE" node="1pPth$m7FLs" resolve="TypeFeature" />
      </node>
      <node concept="3Tm1VV" id="2N2MQGCMQsf" role="1B3o_S" />
      <node concept="3clFbS" id="2N2MQGCMQsg" role="3clF47">
        <node concept="3clFbF" id="2N2MQGCMQsh" role="3cqZAp">
          <node concept="2ShNRf" id="2N2MQGCMQsi" role="3clFbG">
            <node concept="1pGfFk" id="2N2MQGCMQsj" role="2ShVmc">
              <ref role="37wK5l" node="2N2MQGCMQWp" resolve="TypeFeature.Str" />
              <node concept="37vLTw" id="2N2MQGCMQsk" role="37wK5m">
                <ref role="3cqZAo" node="2N2MQGCMQsc" resolve="name" />
              </node>
              <node concept="37vLTw" id="2N2MQGCMQW2" role="37wK5m">
                <ref role="3cqZAo" node="2N2MQGCMQSc" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$m7Gqp" role="jymVt" />
    <node concept="2YIFZL" id="1pPth$m7GoR" role="jymVt">
      <property role="TrG5h" value="reference" />
      <node concept="37vLTG" id="1pPth$m7GoS" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1pPth$m7GoT" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1pPth$m7GoU" role="3clF45">
        <ref role="3uigEE" node="1pPth$m7FLs" resolve="TypeFeature" />
      </node>
      <node concept="3Tm1VV" id="1pPth$m7GoV" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$m7GoW" role="3clF47">
        <node concept="3clFbF" id="1pPth$m7IBC" role="3cqZAp">
          <node concept="2ShNRf" id="1pPth$m7IBA" role="3clFbG">
            <node concept="1pGfFk" id="1pPth$m7IGh" role="2ShVmc">
              <ref role="37wK5l" node="1pPth$m7Ieo" resolve="TypeFeature.Ref" />
              <node concept="37vLTw" id="1pPth$m7IH6" role="37wK5m">
                <ref role="3cqZAo" node="1pPth$m7GoS" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$m7GuE" role="jymVt" />
    <node concept="2YIFZL" id="1pPth$m7GsZ" role="jymVt">
      <property role="TrG5h" value="child" />
      <node concept="37vLTG" id="1pPth$m7Gt0" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1pPth$m7Gt1" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1pPth$m7Gt2" role="3clF45">
        <ref role="3uigEE" node="1pPth$m7FLs" resolve="TypeFeature" />
      </node>
      <node concept="3Tm1VV" id="1pPth$m7Gt3" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$m7Gt4" role="3clF47">
        <node concept="3clFbF" id="1pPth$m7IHK" role="3cqZAp">
          <node concept="2ShNRf" id="1pPth$m7IHI" role="3clFbG">
            <node concept="1pGfFk" id="1pPth$m7IMp" role="2ShVmc">
              <ref role="37wK5l" node="1pPth$m7Ii1" resolve="TypeFeature.Chd" />
              <node concept="37vLTw" id="1pPth$m7INe" role="37wK5m">
                <ref role="3cqZAo" node="1pPth$m7Gt0" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$m7Gir" role="jymVt" />
    <node concept="2YIFZL" id="1pPth$m7Gwi" role="jymVt">
      <property role="TrG5h" value="list" />
      <node concept="37vLTG" id="1pPth$m7Gwj" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1pPth$m7Gwk" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1pPth$m7Gwl" role="3clF45">
        <ref role="3uigEE" node="1pPth$m7FLs" resolve="TypeFeature" />
      </node>
      <node concept="3Tm1VV" id="1pPth$m7Gwm" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$m7Gwn" role="3clF47">
        <node concept="3clFbF" id="1pPth$m7INS" role="3cqZAp">
          <node concept="2ShNRf" id="1pPth$m7INQ" role="3clFbG">
            <node concept="1pGfFk" id="1pPth$m7IQh" role="2ShVmc">
              <ref role="37wK5l" node="1pPth$m7IlE" resolve="TypeFeature.Lst" />
              <node concept="37vLTw" id="1pPth$m7IR6" role="37wK5m">
                <ref role="3cqZAo" node="1pPth$m7Gwj" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$m7Gwh" role="jymVt" />
    <node concept="3clFbW" id="1pPth$m7HJ3" role="jymVt">
      <node concept="3cqZAl" id="1pPth$m7HJ5" role="3clF45" />
      <node concept="3Tmbuc" id="1pPth$m7HMB" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$m7HJ7" role="3clF47">
        <node concept="3clFbF" id="1pPth$m7HPn" role="3cqZAp">
          <node concept="37vLTI" id="1pPth$m7HPp" role="3clFbG">
            <node concept="2OqwBi" id="1pPth$m7HPt" role="37vLTJ">
              <node concept="Xjq3P" id="1pPth$m7HPw" role="2Oq$k0" />
              <node concept="2OwXpG" id="1pPth$m7HPs" role="2OqNvi">
                <ref role="2Oxat5" node="1pPth$m7G85" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="1pPth$m7HPx" role="37vLTx">
              <ref role="3cqZAo" node="1pPth$m7HNF" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1pPth$m7HNF" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1pPth$m7HNE" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$m7HFt" role="jymVt" />
    <node concept="3clFb_" id="1pPth$m7G2m" role="jymVt">
      <property role="TrG5h" value="featureKind" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="1pPth$m7G2A" role="3clF45">
        <ref role="3uigEE" node="1pPth$m7FMw" resolve="TypeFeatureKind" />
      </node>
      <node concept="3Tm1VV" id="1pPth$m7G2p" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$m7G2q" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1pPth$m7G4_" role="jymVt" />
    <node concept="3clFb_" id="1pPth$m7G5s" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="1pPth$m7G6d" role="3clF45" />
      <node concept="3Tm1VV" id="1pPth$m7G5v" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$m7G5w" role="3clF47">
        <node concept="3clFbF" id="1pPth$m7G9r" role="3cqZAp">
          <node concept="37vLTw" id="1pPth$m7G9q" role="3clFbG">
            <ref role="3cqZAo" node="1pPth$m7G85" resolve="name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$m7G_Y" role="jymVt" />
    <node concept="312cEu" id="1pPth$m7GFx" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Str" />
      <node concept="3clFbW" id="1pPth$m7IaJ" role="jymVt">
        <node concept="3cqZAl" id="1pPth$m7IaK" role="3clF45" />
        <node concept="3Tmbuc" id="1pPth$m7IaL" role="1B3o_S" />
        <node concept="37vLTG" id="1pPth$m7IaT" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="1pPth$m7IaU" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="1pPth$m7IaV" role="3clF47">
          <node concept="XkiVB" id="1pPth$m7IaX" role="3cqZAp">
            <ref role="37wK5l" node="1pPth$m7HJ3" resolve="TypeFeature" />
            <node concept="37vLTw" id="1pPth$m7IaW" role="37wK5m">
              <ref role="3cqZAo" node="1pPth$m7IaT" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbW" id="2N2MQGCMQWp" role="jymVt">
        <node concept="3cqZAl" id="2N2MQGCMQWq" role="3clF45" />
        <node concept="3Tmbuc" id="2N2MQGCMQWr" role="1B3o_S" />
        <node concept="37vLTG" id="2N2MQGCMQWs" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="2N2MQGCMQWt" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2N2MQGCMQYR" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="17QB3L" id="2N2MQGCMR2s" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="2N2MQGCMQWu" role="3clF47">
          <node concept="XkiVB" id="2N2MQGCMQWv" role="3cqZAp">
            <ref role="37wK5l" node="1pPth$m7HJ3" resolve="TypeFeature" />
            <node concept="37vLTw" id="2N2MQGCMQWw" role="37wK5m">
              <ref role="3cqZAo" node="2N2MQGCMQWs" resolve="name" />
            </node>
          </node>
          <node concept="3clFbF" id="2N2MQGCMR4a" role="3cqZAp">
            <node concept="37vLTI" id="2N2MQGCMR4c" role="3clFbG">
              <node concept="2OqwBi" id="2N2MQGCMR4g" role="37vLTJ">
                <node concept="Xjq3P" id="2N2MQGCMR4j" role="2Oq$k0" />
                <node concept="2OwXpG" id="2N2MQGCMR4f" role="2OqNvi">
                  <ref role="2Oxat5" node="2N2MQGCMR46" resolve="value" />
                </node>
              </node>
              <node concept="37vLTw" id="2N2MQGCMR4k" role="37vLTx">
                <ref role="3cqZAo" node="2N2MQGCMQYR" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2N2MQGCMRcP" role="jymVt">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="2N2MQGCMRg$" role="3clF45" />
        <node concept="3Tm1VV" id="2N2MQGCMRcS" role="1B3o_S" />
        <node concept="3clFbS" id="2N2MQGCMRcT" role="3clF47">
          <node concept="3clFbF" id="2N2MQGCMRpZ" role="3cqZAp">
            <node concept="37vLTw" id="2N2MQGCMRpY" role="3clFbG">
              <ref role="3cqZAo" node="2N2MQGCMR46" resolve="value" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1pPth$m7GNX" role="jymVt">
        <property role="TrG5h" value="featureKind" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="1pPth$m7GNY" role="3clF45">
          <ref role="3uigEE" node="1pPth$m7FMw" resolve="TypeFeatureKind" />
        </node>
        <node concept="3Tm1VV" id="1pPth$m7GNZ" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$m7GO1" role="3clF47">
          <node concept="3clFbF" id="1pPth$m7GQd" role="3cqZAp">
            <node concept="Rm8GO" id="1pPth$m7GRb" role="3clFbG">
              <ref role="Rm8GQ" node="1pPth$m7FMM" resolve="STRING" />
              <ref role="1Px2BO" node="1pPth$m7FMw" resolve="TypeFeatureKind" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1pPth$m7GFy" role="1B3o_S" />
      <node concept="3uibUv" id="1pPth$m7GHA" role="1zkMxy">
        <ref role="3uigEE" node="1pPth$m7FLs" resolve="TypeFeature" />
      </node>
      <node concept="312cEg" id="2N2MQGCMR46" role="jymVt">
        <property role="TrG5h" value="value" />
        <node concept="3Tm6S6" id="2N2MQGCMR47" role="1B3o_S" />
        <node concept="17QB3L" id="2N2MQGCMR49" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$m7GYt" role="jymVt" />
    <node concept="312cEu" id="1pPth$m7GVi" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Ref" />
      <node concept="3clFbW" id="1pPth$m7Ieo" role="jymVt">
        <node concept="3cqZAl" id="1pPth$m7Iep" role="3clF45" />
        <node concept="3Tmbuc" id="1pPth$m7Ieq" role="1B3o_S" />
        <node concept="37vLTG" id="1pPth$m7Iey" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="1pPth$m7Iez" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="1pPth$m7Ie$" role="3clF47">
          <node concept="XkiVB" id="1pPth$m7IeA" role="3cqZAp">
            <ref role="37wK5l" node="1pPth$m7HJ3" resolve="TypeFeature" />
            <node concept="37vLTw" id="1pPth$m7Ie_" role="37wK5m">
              <ref role="3cqZAo" node="1pPth$m7Iey" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1pPth$m7GVj" role="jymVt">
        <property role="TrG5h" value="featureKind" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="1pPth$m7GVk" role="3clF45">
          <ref role="3uigEE" node="1pPth$m7FMw" resolve="TypeFeatureKind" />
        </node>
        <node concept="3Tm1VV" id="1pPth$m7GVl" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$m7GVm" role="3clF47">
          <node concept="3clFbF" id="1pPth$m7GVn" role="3cqZAp">
            <node concept="Rm8GO" id="1pPth$m7Haq" role="3clFbG">
              <ref role="Rm8GQ" node="1pPth$m7FP5" resolve="REFERENCE" />
              <ref role="1Px2BO" node="1pPth$m7FMw" resolve="TypeFeatureKind" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1pPth$m7GVp" role="1B3o_S" />
      <node concept="3uibUv" id="1pPth$m7GVq" role="1zkMxy">
        <ref role="3uigEE" node="1pPth$m7FLs" resolve="TypeFeature" />
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$m7GSB" role="jymVt" />
    <node concept="312cEu" id="1pPth$m7HbP" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Chd" />
      <node concept="3clFbW" id="1pPth$m7Ii1" role="jymVt">
        <node concept="3cqZAl" id="1pPth$m7Ii2" role="3clF45" />
        <node concept="3Tmbuc" id="1pPth$m7Ii3" role="1B3o_S" />
        <node concept="37vLTG" id="1pPth$m7Iib" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="1pPth$m7Iic" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="1pPth$m7Iid" role="3clF47">
          <node concept="XkiVB" id="1pPth$m7Iif" role="3cqZAp">
            <ref role="37wK5l" node="1pPth$m7HJ3" resolve="TypeFeature" />
            <node concept="37vLTw" id="1pPth$m7Iie" role="37wK5m">
              <ref role="3cqZAo" node="1pPth$m7Iib" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1pPth$m7HbQ" role="jymVt">
        <property role="TrG5h" value="featureKind" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="1pPth$m7HbR" role="3clF45">
          <ref role="3uigEE" node="1pPth$m7FMw" resolve="TypeFeatureKind" />
        </node>
        <node concept="3Tm1VV" id="1pPth$m7HbS" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$m7HbT" role="3clF47">
          <node concept="3clFbF" id="1pPth$m7HbU" role="3cqZAp">
            <node concept="Rm8GO" id="1pPth$m7Hjk" role="3clFbG">
              <ref role="Rm8GQ" node="1pPth$m7G05" resolve="CHILD" />
              <ref role="1Px2BO" node="1pPth$m7FMw" resolve="TypeFeatureKind" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1pPth$m7HbW" role="1B3o_S" />
      <node concept="3uibUv" id="1pPth$m7HbX" role="1zkMxy">
        <ref role="3uigEE" node="1pPth$m7FLs" resolve="TypeFeature" />
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$m7HbO" role="jymVt" />
    <node concept="312cEu" id="1pPth$m7Hl6" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Lst" />
      <node concept="3clFbW" id="1pPth$m7IlE" role="jymVt">
        <node concept="3cqZAl" id="1pPth$m7IlF" role="3clF45" />
        <node concept="3Tmbuc" id="1pPth$m7IlG" role="1B3o_S" />
        <node concept="37vLTG" id="1pPth$m7IlO" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="1pPth$m7IlP" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="1pPth$m7IlQ" role="3clF47">
          <node concept="XkiVB" id="1pPth$m7IlS" role="3cqZAp">
            <ref role="37wK5l" node="1pPth$m7HJ3" resolve="TypeFeature" />
            <node concept="37vLTw" id="1pPth$m7IlR" role="37wK5m">
              <ref role="3cqZAo" node="1pPth$m7IlO" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1pPth$m7Hl7" role="jymVt">
        <property role="TrG5h" value="featureKind" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="1pPth$m7Hl8" role="3clF45">
          <ref role="3uigEE" node="1pPth$m7FMw" resolve="TypeFeatureKind" />
        </node>
        <node concept="3Tm1VV" id="1pPth$m7Hl9" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$m7Hla" role="3clF47">
          <node concept="3clFbF" id="1pPth$m7Hlb" role="3cqZAp">
            <node concept="Rm8GO" id="1pPth$m7H$m" role="3clFbG">
              <ref role="Rm8GQ" node="1pPth$m7FXC" resolve="LIST" />
              <ref role="1Px2BO" node="1pPth$m7FMw" resolve="TypeFeatureKind" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1pPth$m7Hld" role="1B3o_S" />
      <node concept="3uibUv" id="1pPth$m7Hle" role="1zkMxy">
        <ref role="3uigEE" node="1pPth$m7FLs" resolve="TypeFeature" />
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$m7JQ5" role="jymVt" />
    <node concept="312cEg" id="1pPth$m7G85" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="1pPth$m7G86" role="1B3o_S" />
      <node concept="17QB3L" id="1pPth$m7G8V" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1pPth$m7G2X" role="jymVt" />
    <node concept="3Tm1VV" id="1pPth$m7FLt" role="1B3o_S" />
  </node>
  <node concept="Qs71p" id="1pPth$m7FMw">
    <property role="TrG5h" value="TypeFeatureKind" />
    <node concept="2tJIrI" id="1pPth$m80h9" role="jymVt" />
    <node concept="3clFbW" id="1pPth$m7FRn" role="jymVt">
      <node concept="3cqZAl" id="1pPth$m7FRp" role="3clF45" />
      <node concept="3Tm1VV" id="1pPth$m7FRq" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$m7FRr" role="3clF47">
        <node concept="3clFbF" id="1pPth$m7FSg" role="3cqZAp">
          <node concept="37vLTI" id="1pPth$m7FSi" role="3clFbG">
            <node concept="2OqwBi" id="1pPth$m7FSm" role="37vLTJ">
              <node concept="Xjq3P" id="1pPth$m7FSp" role="2Oq$k0" />
              <node concept="2OwXpG" id="1pPth$m7FSl" role="2OqNvi">
                <ref role="2Oxat5" node="1pPth$m7FSc" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="1pPth$m7FSq" role="37vLTx">
              <ref role="3cqZAo" node="1pPth$m7FS4" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1pPth$m7FS4" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1pPth$m7FS3" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$m8082" role="jymVt" />
    <node concept="3clFb_" id="1pPth$m809p" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="1pPth$m809q" role="1B3o_S" />
      <node concept="3uibUv" id="1pPth$m809s" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="1pPth$m809t" role="3clF47">
        <node concept="3clFbF" id="1pPth$m80f2" role="3cqZAp">
          <node concept="1rXfSq" id="1pPth$m80f1" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Enum.name():java.lang.String" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1pPth$m809u" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$m80fu" role="jymVt" />
    <node concept="QsSxf" id="1pPth$m7FMM" role="Qtgdg">
      <property role="TrG5h" value="STRING" />
      <ref role="37wK5l" node="1pPth$m7FRn" resolve="TypeFeatureKind" />
      <node concept="Xl_RD" id="1pPth$m7FWp" role="37wK5m">
        <property role="Xl_RC" value="string" />
      </node>
    </node>
    <node concept="QsSxf" id="1pPth$m7FP5" role="Qtgdg">
      <property role="TrG5h" value="REFERENCE" />
      <ref role="37wK5l" node="1pPth$m7FRn" resolve="TypeFeatureKind" />
      <node concept="Xl_RD" id="1pPth$m7FXh" role="37wK5m">
        <property role="Xl_RC" value="reference" />
      </node>
    </node>
    <node concept="QsSxf" id="1pPth$m7G05" role="Qtgdg">
      <property role="TrG5h" value="CHILD" />
      <ref role="37wK5l" node="1pPth$m7FRn" resolve="TypeFeatureKind" />
      <node concept="Xl_RD" id="1pPth$m7G29" role="37wK5m">
        <property role="Xl_RC" value="child" />
      </node>
    </node>
    <node concept="QsSxf" id="1pPth$m7FXC" role="Qtgdg">
      <property role="TrG5h" value="LIST" />
      <ref role="37wK5l" node="1pPth$m7FRn" resolve="TypeFeatureKind" />
      <node concept="Xl_RD" id="1pPth$m7FZU" role="37wK5m">
        <property role="Xl_RC" value="list" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1pPth$m7FMx" role="1B3o_S" />
    <node concept="312cEg" id="1pPth$m7FSc" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="1pPth$m7FSd" role="1B3o_S" />
      <node concept="17QB3L" id="1pPth$m7FSf" role="1tU5fm" />
    </node>
  </node>
  <node concept="312cEu" id="1pPth$m7IVF">
    <property role="TrG5h" value="AbstractTypeTable" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="1pPth$m7J1B" role="jymVt" />
    <node concept="3clFb_" id="1pPth$m7ZRy" role="jymVt">
      <property role="TrG5h" value="name" />
      <property role="1EzhhJ" value="true" />
      <node concept="17QB3L" id="1pPth$m7ZX$" role="3clF45" />
      <node concept="3Tm1VV" id="1pPth$m7ZR_" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$m7ZRA" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1pPth$m7ZLE" role="jymVt" />
    <node concept="3clFb_" id="2N2MQGCMVRT" role="jymVt">
      <property role="TrG5h" value="collectTypes" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="2N2MQGCMVRU" role="3clF46">
        <property role="TrG5h" value="typeCollector" />
        <node concept="3uibUv" id="2N2MQGCMVRV" role="1tU5fm">
          <ref role="3uigEE" node="2N2MQGCMOyq" resolve="TypeCollector" />
        </node>
      </node>
      <node concept="3cqZAl" id="2N2MQGCMVRW" role="3clF45" />
      <node concept="3Tm1VV" id="2N2MQGCMVRX" role="1B3o_S" />
      <node concept="3clFbS" id="2N2MQGCMVRY" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2N2MQGCMVRL" role="jymVt" />
    <node concept="3Tm1VV" id="1pPth$m7IVG" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="2N2MQGCMOyq">
    <property role="TrG5h" value="TypeCollector" />
    <node concept="2tJIrI" id="2N2MQGCMOyw" role="jymVt" />
    <node concept="3clFb_" id="2N2MQGCMOyB" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="addType" />
      <node concept="37vLTG" id="2N2MQGCMOyS" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="2N2MQGCMOz4" role="1tU5fm">
          <ref role="3uigEE" node="1pPth$m7FL5" resolve="Type" />
        </node>
      </node>
      <node concept="3cqZAl" id="2N2MQGCMOyD" role="3clF45" />
      <node concept="3Tm1VV" id="2N2MQGCMOyE" role="1B3o_S" />
      <node concept="3clFbS" id="2N2MQGCMOyF" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2N2MQGCMOzp" role="jymVt" />
    <node concept="3Tm1VV" id="2N2MQGCMOyr" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2N2MQGCMVqD">
    <property role="TrG5h" value="AbstractTypeManifest" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="2N2MQGCMVqZ" role="jymVt" />
    <node concept="3clFb_" id="1pPth$m7IW6" role="jymVt">
      <property role="TrG5h" value="collectTypes" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="2N2MQGCMO$N" role="3clF46">
        <property role="TrG5h" value="typeCollector" />
        <node concept="3uibUv" id="2N2MQGCMO_1" role="1tU5fm">
          <ref role="3uigEE" node="2N2MQGCMOyq" resolve="TypeCollector" />
        </node>
      </node>
      <node concept="3cqZAl" id="2N2MQGCMO$B" role="3clF45" />
      <node concept="3Tm1VV" id="1pPth$m7IW9" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$m7IWa" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2N2MQGCMNOd" role="jymVt" />
    <node concept="2tJIrI" id="2N2MQGCMVr2" role="jymVt" />
    <node concept="3Tm1VV" id="2N2MQGCMVqE" role="1B3o_S" />
  </node>
</model>

