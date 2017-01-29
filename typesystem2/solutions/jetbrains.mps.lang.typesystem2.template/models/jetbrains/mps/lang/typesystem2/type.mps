<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.typesystem2.type)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="4" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="0" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="nz6g" ref="r:ac00f724-30be-446e-805c-2345efc460d7(jetbrains.mps.lang.typesystem2.program)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.typesystem2.template)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.treeform)" />
    <import index="fqlx" ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.typesystem2.aspect)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="1564179198502666296" name="jetbrains.mps.logic.structure.LogicalType" flags="ig" index="26uTi9" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
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
    <node concept="2tJIrI" id="1hX44vMVmKk" role="jymVt" />
    <node concept="2YIFZL" id="1hX44vMVmwK" role="jymVt">
      <property role="TrG5h" value="string" />
      <node concept="37vLTG" id="1hX44vMVmwL" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1hX44vMVmwM" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1hX44vMVmwN" role="3clF46">
        <property role="TrG5h" value="valueExtractor" />
        <node concept="3uibUv" id="1hX44vMVmZu" role="1tU5fm">
          <ref role="3uigEE" node="1hX44vMVmqt" resolve="Getter" />
          <node concept="17QB3L" id="1hX44vMVn94" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="1hX44vMVmwP" role="3clF45">
        <ref role="3uigEE" node="1pPth$m7FLs" resolve="TypeFeature" />
      </node>
      <node concept="3Tm1VV" id="1hX44vMVmwQ" role="1B3o_S" />
      <node concept="3clFbS" id="1hX44vMVmwR" role="3clF47">
        <node concept="3clFbF" id="1hX44vMVmwS" role="3cqZAp">
          <node concept="2ShNRf" id="1hX44vMVmwT" role="3clFbG">
            <node concept="1pGfFk" id="1hX44vMVmwU" role="2ShVmc">
              <ref role="37wK5l" node="1hX44vMVnjX" resolve="TypeFeature.Str" />
              <node concept="37vLTw" id="1hX44vMVmwV" role="37wK5m">
                <ref role="3cqZAo" node="1hX44vMVmwL" resolve="name" />
              </node>
              <node concept="37vLTw" id="1hX44vMVmwW" role="37wK5m">
                <ref role="3cqZAo" node="1hX44vMVmwN" resolve="valueExtractor" />
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
    <node concept="2tJIrI" id="1hX44vNdVFc" role="jymVt" />
    <node concept="2YIFZL" id="1hX44vNdUS_" role="jymVt">
      <property role="TrG5h" value="reference" />
      <node concept="37vLTG" id="1hX44vNdUSA" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1hX44vNdUSB" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1hX44vNdWo3" role="3clF46">
        <property role="TrG5h" value="getter" />
        <node concept="3uibUv" id="1hX44vNdWzr" role="1tU5fm">
          <ref role="3uigEE" node="1hX44vMVmqt" resolve="Getter" />
          <node concept="17QB3L" id="1hX44vNdWSK" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="1hX44vNdUSC" role="3clF45">
        <ref role="3uigEE" node="1pPth$m7FLs" resolve="TypeFeature" />
      </node>
      <node concept="3Tm1VV" id="1hX44vNdUSD" role="1B3o_S" />
      <node concept="3clFbS" id="1hX44vNdUSE" role="3clF47">
        <node concept="3clFbF" id="1hX44vNdUSF" role="3cqZAp">
          <node concept="2ShNRf" id="1hX44vNdUSG" role="3clFbG">
            <node concept="1pGfFk" id="1hX44vNdUSH" role="2ShVmc">
              <ref role="37wK5l" node="1hX44vNdTFc" resolve="TypeFeature.Ref" />
              <node concept="37vLTw" id="1hX44vNdUSI" role="37wK5m">
                <ref role="3cqZAo" node="1hX44vNdUSA" resolve="name" />
              </node>
              <node concept="37vLTw" id="1hX44vNdX3d" role="37wK5m">
                <ref role="3cqZAo" node="1hX44vNdWo3" resolve="getter" />
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
      <node concept="3clFbW" id="1hX44vMVnjX" role="jymVt">
        <node concept="3cqZAl" id="1hX44vMVnjY" role="3clF45" />
        <node concept="3Tmbuc" id="1hX44vMVnjZ" role="1B3o_S" />
        <node concept="37vLTG" id="1hX44vMVnk0" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="1hX44vMVnk1" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="1hX44vMVnk2" role="3clF46">
          <property role="TrG5h" value="getter" />
          <node concept="3uibUv" id="1hX44vMVnX5" role="1tU5fm">
            <ref role="3uigEE" node="1hX44vMVmqt" resolve="Getter" />
            <node concept="17QB3L" id="1hX44vMVopD" role="11_B2D" />
          </node>
        </node>
        <node concept="3clFbS" id="1hX44vMVnk4" role="3clF47">
          <node concept="XkiVB" id="1hX44vMVnk5" role="3cqZAp">
            <ref role="37wK5l" node="1pPth$m7HJ3" resolve="TypeFeature" />
            <node concept="37vLTw" id="1hX44vMVnk6" role="37wK5m">
              <ref role="3cqZAo" node="1hX44vMVnk0" resolve="name" />
            </node>
          </node>
          <node concept="3clFbF" id="1hX44vMVnk7" role="3cqZAp">
            <node concept="37vLTI" id="1hX44vMVnk8" role="3clFbG">
              <node concept="2OqwBi" id="1hX44vMVnk9" role="37vLTJ">
                <node concept="Xjq3P" id="1hX44vMVnka" role="2Oq$k0" />
                <node concept="2OwXpG" id="1hX44vMVoNy" role="2OqNvi">
                  <ref role="2Oxat5" node="1hX44vMVnFt" resolve="getter" />
                </node>
              </node>
              <node concept="37vLTw" id="1hX44vMVnkc" role="37vLTx">
                <ref role="3cqZAo" node="1hX44vMVnk2" resolve="getter" />
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
          <node concept="3clFbJ" id="1hX44vMVrKP" role="3cqZAp">
            <node concept="3clFbS" id="1hX44vMVrKR" role="3clFbx">
              <node concept="3cpWs6" id="1hX44vMVrPP" role="3cqZAp">
                <node concept="37vLTw" id="1hX44vMVs1U" role="3cqZAk">
                  <ref role="3cqZAo" node="2N2MQGCMR46" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1hX44vMVru2" role="3clFbw">
              <node concept="10Nm6u" id="1hX44vMVr$Y" role="3uHU7w" />
              <node concept="37vLTw" id="2N2MQGCMRpY" role="3uHU7B">
                <ref role="3cqZAo" node="2N2MQGCMR46" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1hX44vMVsnd" role="3cqZAp">
            <node concept="3clFbS" id="1hX44vMVsnf" role="3clFbx">
              <node concept="3cpWs6" id="1hX44vMVsNl" role="3cqZAp">
                <node concept="2OqwBi" id="1hX44vMVthx" role="3cqZAk">
                  <node concept="37vLTw" id="1hX44vMVsZc" role="2Oq$k0">
                    <ref role="3cqZAo" node="1hX44vMVnFt" resolve="getter" />
                  </node>
                  <node concept="liA8E" id="1hX44vMVtAB" role="2OqNvi">
                    <ref role="37wK5l" node="1hX44vMVmr4" resolve="get" />
                    <node concept="37vLTw" id="1hX44vMVtNL" role="37wK5m">
                      <ref role="3cqZAo" node="1hX44vMVr8B" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1hX44vMVsHi" role="3clFbw">
              <node concept="10Nm6u" id="1hX44vMVsKQ" role="3uHU7w" />
              <node concept="37vLTw" id="1hX44vMVszm" role="3uHU7B">
                <ref role="3cqZAo" node="1hX44vMVnFt" resolve="getter" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="1hX44vMVuL2" role="3cqZAp">
            <node concept="10Nm6u" id="1hX44vMVv8J" role="3cqZAk" />
          </node>
        </node>
        <node concept="37vLTG" id="1hX44vMVr8B" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="1hX44vMVr8A" role="1tU5fm" />
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
      <node concept="312cEg" id="1hX44vMVnFt" role="jymVt">
        <property role="TrG5h" value="getter" />
        <node concept="3Tm6S6" id="1hX44vMVnFu" role="1B3o_S" />
        <node concept="3uibUv" id="1hX44vMVnQV" role="1tU5fm">
          <ref role="3uigEE" node="1hX44vMVmqt" resolve="Getter" />
          <node concept="17QB3L" id="1hX44vMVnUd" role="11_B2D" />
        </node>
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
      <node concept="3clFbW" id="1hX44vNdTFc" role="jymVt">
        <node concept="3cqZAl" id="1hX44vNdTFd" role="3clF45" />
        <node concept="3Tmbuc" id="1hX44vNdTFe" role="1B3o_S" />
        <node concept="37vLTG" id="1hX44vNdTFf" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="1hX44vNdTFg" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="1hX44vNdTQk" role="3clF46">
          <property role="TrG5h" value="getter" />
          <node concept="3uibUv" id="1hX44vNdTTq" role="1tU5fm">
            <ref role="3uigEE" node="1hX44vMVmqt" resolve="Getter" />
            <node concept="17QB3L" id="1hX44vNdTWG" role="11_B2D" />
          </node>
        </node>
        <node concept="3clFbS" id="1hX44vNdTFh" role="3clF47">
          <node concept="XkiVB" id="1hX44vNdTFi" role="3cqZAp">
            <ref role="37wK5l" node="1pPth$m7HJ3" resolve="TypeFeature" />
            <node concept="37vLTw" id="1hX44vNdTFj" role="37wK5m">
              <ref role="3cqZAo" node="1hX44vNdTFf" resolve="name" />
            </node>
          </node>
          <node concept="3clFbF" id="1hX44vNdU5Z" role="3cqZAp">
            <node concept="37vLTI" id="1hX44vNdU61" role="3clFbG">
              <node concept="2OqwBi" id="1hX44vNdU65" role="37vLTJ">
                <node concept="Xjq3P" id="1hX44vNdU68" role="2Oq$k0" />
                <node concept="2OwXpG" id="1hX44vNdU64" role="2OqNvi">
                  <ref role="2Oxat5" node="1hX44vNdU5U" resolve="getter" />
                </node>
              </node>
              <node concept="37vLTw" id="1hX44vNdU69" role="37vLTx">
                <ref role="3cqZAo" node="1hX44vNdTQk" resolve="getter" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1hX44vNdUiT" role="jymVt">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="1hX44vNdUiU" role="3clF45" />
        <node concept="3Tm1VV" id="1hX44vNdUiV" role="1B3o_S" />
        <node concept="3clFbS" id="1hX44vNdUiW" role="3clF47">
          <node concept="3clFbJ" id="1hX44vNdUj4" role="3cqZAp">
            <node concept="3clFbS" id="1hX44vNdUj5" role="3clFbx">
              <node concept="3cpWs6" id="1hX44vNdUj6" role="3cqZAp">
                <node concept="2OqwBi" id="1hX44vNdUj7" role="3cqZAk">
                  <node concept="37vLTw" id="1hX44vNdUj8" role="2Oq$k0">
                    <ref role="3cqZAo" node="1hX44vNdU5U" resolve="getter" />
                  </node>
                  <node concept="liA8E" id="1hX44vNdUj9" role="2OqNvi">
                    <ref role="37wK5l" node="1hX44vMVmr4" resolve="get" />
                    <node concept="37vLTw" id="1hX44vNdUja" role="37wK5m">
                      <ref role="3cqZAo" node="1hX44vNdUjg" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1hX44vNdUjb" role="3clFbw">
              <node concept="10Nm6u" id="1hX44vNdUjc" role="3uHU7w" />
              <node concept="37vLTw" id="1hX44vNdUjd" role="3uHU7B">
                <ref role="3cqZAo" node="1hX44vNdU5U" resolve="getter" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="1hX44vNdUje" role="3cqZAp">
            <node concept="10Nm6u" id="1hX44vNdUjf" role="3cqZAk" />
          </node>
        </node>
        <node concept="37vLTG" id="1hX44vNdUjg" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="1hX44vNdUjh" role="1tU5fm" />
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
      <node concept="312cEg" id="1hX44vNdU5U" role="jymVt">
        <property role="TrG5h" value="getter" />
        <node concept="3Tm6S6" id="1hX44vNdU5V" role="1B3o_S" />
        <node concept="3uibUv" id="1hX44vNdU5X" role="1tU5fm">
          <ref role="3uigEE" node="1hX44vMVmqt" resolve="Getter" />
          <node concept="17QB3L" id="1hX44vNdU5Y" role="11_B2D" />
        </node>
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
    <node concept="2tJIrI" id="4nxCIBqhYxW" role="jymVt" />
    <node concept="3clFb_" id="1pPth$m7ZRy" role="jymVt">
      <property role="TrG5h" value="name" />
      <property role="1EzhhJ" value="true" />
      <node concept="17QB3L" id="1pPth$m7ZX$" role="3clF45" />
      <node concept="3Tm1VV" id="1pPth$m7ZR_" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$m7ZRA" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="18kNIl1vCHT" role="jymVt" />
    <node concept="3Tm1VV" id="1pPth$m7IVG" role="1B3o_S" />
    <node concept="3clFb_" id="4KRwoelAtxl" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="typeTemplate" />
      <node concept="3uibUv" id="4KRwoelAyo8" role="3clF45">
        <ref role="3uigEE" node="1hX44vNnjJ$" resolve="TypeTemplate" />
        <node concept="16syzq" id="4KRwoelDRZs" role="11_B2D">
          <ref role="16sUi3" node="4KRwoelDRX0" resolve="Cfg" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4KRwoelAtxp" role="1B3o_S" />
      <node concept="3clFbS" id="4KRwoelAtxq" role="3clF47" />
      <node concept="37vLTG" id="4KRwoelAyUd" role="3clF46">
        <property role="TrG5h" value="typeConcept" />
        <node concept="3bZ5Sz" id="4KRwoelAyUc" role="1tU5fm" />
      </node>
      <node concept="16euLQ" id="4KRwoelDRX0" role="16eVyc">
        <property role="TrG5h" value="Cfg" />
        <node concept="3uibUv" id="1eKXYsjxDj6" role="3ztrMU">
          <ref role="3uigEE" node="1eKXYsjvsOy" resolve="TypeTemplate.Config" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MEOIDEgpw7" role="jymVt" />
    <node concept="3clFb_" id="4MEOIDEgpuf" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="typeTemplate" />
      <node concept="3uibUv" id="4MEOIDEgpug" role="3clF45">
        <ref role="3uigEE" node="1hX44vNnjJ$" resolve="TypeTemplate" />
        <node concept="16syzq" id="4MEOIDEgpuh" role="11_B2D">
          <ref role="16sUi3" node="4MEOIDEgpum" resolve="Cfg" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4MEOIDEgpui" role="1B3o_S" />
      <node concept="3clFbS" id="4MEOIDEgpuj" role="3clF47" />
      <node concept="16euLQ" id="4MEOIDEgpum" role="16eVyc">
        <property role="TrG5h" value="Cfg" />
        <node concept="3uibUv" id="4MEOIDEgpun" role="3ztrMU">
          <ref role="3uigEE" node="1eKXYsjvsOy" resolve="TypeTemplate.Config" />
        </node>
      </node>
      <node concept="37vLTG" id="4MEOIDEhHGm" role="3clF46">
        <property role="TrG5h" value="typeTplId" />
        <node concept="3uibUv" id="4MEOIDEhHGl" role="1tU5fm">
          <ref role="3uigEE" node="4MEOIDEhyPY" resolve="TypeTemplate.ID" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MEOIDEWLmE" role="jymVt" />
    <node concept="3clFb_" id="4MEOIDEWLkY" role="jymVt">
      <property role="TrG5h" value="allTypeTemplateIds" />
      <property role="1EzhhJ" value="true" />
      <node concept="3vKaQO" id="4MEOIDEWLkZ" role="3clF45">
        <node concept="3uibUv" id="4MEOIDEWSWB" role="3O5elw">
          <ref role="3uigEE" node="4MEOIDEhyPY" resolve="TypeTemplate.ID" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4MEOIDEWLl1" role="1B3o_S" />
      <node concept="3clFbS" id="4MEOIDEWLl2" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4KRwoelAvaR" role="jymVt" />
  </node>
  <node concept="312cEu" id="2N2MQGCMVqD">
    <property role="TrG5h" value="AbstractTypeManifest" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="2N2MQGCMVqZ" role="jymVt" />
    <node concept="3clFb_" id="1pPth$m7IW6" role="jymVt">
      <property role="TrG5h" value="collectTypeTables" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="2N2MQGCMO$N" role="3clF46">
        <property role="TrG5h" value="typeCollector" />
        <node concept="3uibUv" id="2N2MQGCMO_1" role="1tU5fm">
          <ref role="3uigEE" to="fqlx:2N2MQGCMOyq" resolve="TypeTableCollector" />
        </node>
      </node>
      <node concept="3cqZAl" id="2N2MQGCMO$B" role="3clF45" />
      <node concept="3Tm1VV" id="1pPth$m7IW9" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$m7IWa" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2N2MQGCMNOd" role="jymVt" />
    <node concept="3Tm1VV" id="2N2MQGCMVqE" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="1hX44vMVmqt">
    <property role="TrG5h" value="Getter" />
    <node concept="2tJIrI" id="1hX44vMVmqR" role="jymVt" />
    <node concept="3clFb_" id="1hX44vMVmr4" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="get" />
      <node concept="37vLTG" id="1hX44vMVmsA" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1hX44vMVmsW" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="1hX44vMVmva" role="3clF45">
        <ref role="16sUi3" node="1hX44vMVmuy" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="1hX44vMVmr7" role="1B3o_S" />
      <node concept="3clFbS" id="1hX44vMVmr8" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1hX44vMVmqW" role="jymVt" />
    <node concept="3Tm1VV" id="1hX44vMVmqu" role="1B3o_S" />
    <node concept="16euLQ" id="1hX44vMVmuy" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="312cEu" id="1hX44vNlvEV">
    <property role="TrG5h" value="AbstractTypeTemplate" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="1hX44vNlvFZ" role="jymVt" />
    <node concept="3HP615" id="1eKXYsjvSZy" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="TypeTemplateAction" />
      <node concept="3clFb_" id="1eKXYsjvTXf" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="doAction" />
        <node concept="37vLTG" id="1eKXYsjvTZZ" role="3clF46">
          <property role="TrG5h" value="typeTemplate" />
          <node concept="3uibUv" id="1eKXYsjvU1s" role="1tU5fm">
            <ref role="3uigEE" node="1hX44vNnjJ$" resolve="TypeTemplate" />
            <node concept="16syzq" id="1eKXYsjvU6M" role="11_B2D">
              <ref role="16sUi3" node="1eKXYsjvTOg" resolve="Cfg" />
            </node>
          </node>
        </node>
        <node concept="16syzq" id="1eKXYsjwskj" role="3clF45">
          <ref role="16sUi3" node="1eKXYsjws1d" resolve="R" />
        </node>
        <node concept="3Tm1VV" id="1eKXYsjvTXi" role="1B3o_S" />
        <node concept="3clFbS" id="1eKXYsjvTXj" role="3clF47" />
        <node concept="16euLQ" id="1eKXYsjvTOg" role="16eVyc">
          <property role="TrG5h" value="Cfg" />
          <node concept="3uibUv" id="1eKXYsjvTPL" role="3ztrMU">
            <ref role="3uigEE" node="1eKXYsjvsOy" resolve="TypeTemplate.Config" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1eKXYsjxjKN" role="1B3o_S" />
      <node concept="16euLQ" id="1eKXYsjws1d" role="16eVyc">
        <property role="TrG5h" value="R" />
      </node>
    </node>
    <node concept="2tJIrI" id="60NbDCXFVbR" role="jymVt" />
    <node concept="3clFb_" id="1eKXYsjvsWg" role="jymVt">
      <property role="TrG5h" value="withNode" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="1eKXYsjvsWh" role="3clF46">
        <property role="TrG5h" value="typeNode" />
        <node concept="3Tqbb2" id="1eKXYsjvsWi" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="1eKXYsjvtcb" role="3clF45">
        <ref role="16sUi3" node="1hX44vNlw2n" resolve="Cfg" />
      </node>
      <node concept="3Tmbuc" id="60NbDCXHdjy" role="1B3o_S" />
      <node concept="3clFbS" id="1eKXYsjvsWl" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4MEOIDG7xoH" role="jymVt" />
    <node concept="3Tm1VV" id="1hX44vNlvEW" role="1B3o_S" />
    <node concept="16euLQ" id="1hX44vNlw2n" role="16eVyc">
      <property role="TrG5h" value="Cfg" />
      <node concept="3uibUv" id="1eKXYsjvytI" role="3ztrMU">
        <ref role="3uigEE" node="1eKXYsjvsOy" resolve="TypeTemplate.Config" />
      </node>
    </node>
    <node concept="3uibUv" id="1hX44vNnjSd" role="EKbjA">
      <ref role="3uigEE" node="1hX44vNnjJ$" resolve="TypeTemplate" />
      <node concept="16syzq" id="1eKXYsjvyP6" role="11_B2D">
        <ref role="16sUi3" node="1hX44vNlw2n" resolve="Cfg" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="1hX44vNnjJ$">
    <property role="TrG5h" value="TypeTemplate" />
    <node concept="2tJIrI" id="1hX44vNnkEr" role="jymVt" />
    <node concept="3HP615" id="1eKXYsjvsOy" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Config" />
      <node concept="3Tm1VV" id="1eKXYsjvsOz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4MEOIDEhyKf" role="jymVt" />
    <node concept="312cEu" id="4MEOIDEhyPY" role="jymVt">
      <property role="TrG5h" value="ID" />
      <node concept="2tJIrI" id="4MEOIDEhz0j" role="jymVt" />
      <node concept="2YIFZL" id="4MEOIDEhz4d" role="jymVt">
        <property role="TrG5h" value="forReference" />
        <node concept="37vLTG" id="4MEOIDEhznZ" role="3clF46">
          <property role="TrG5h" value="ref" />
          <node concept="3uibUv" id="4MEOIDEipRS" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
        <node concept="3uibUv" id="4MEOIDEhzcj" role="3clF45">
          <ref role="3uigEE" node="4MEOIDEhyPY" resolve="TypeTemplate.ID" />
        </node>
        <node concept="3Tm1VV" id="4MEOIDEhz4g" role="1B3o_S" />
        <node concept="3clFbS" id="4MEOIDEhz4h" role="3clF47">
          <node concept="3clFbF" id="4MEOIDEhACe" role="3cqZAp">
            <node concept="2ShNRf" id="4MEOIDEhACa" role="3clFbG">
              <node concept="1pGfFk" id="4MEOIDEhARU" role="2ShVmc">
                <ref role="37wK5l" node="4MEOIDEh_LW" resolve="TypeTemplate.ID" />
                <node concept="2OqwBi" id="4MEOIDEhAWq" role="37wK5m">
                  <node concept="37vLTw" id="4MEOIDEhAYV" role="2Oq$k0">
                    <ref role="3cqZAo" node="4MEOIDEhznZ" resolve="ref" />
                  </node>
                  <node concept="liA8E" id="4MEOIDEhAWs" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNodeReference.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4MEOIDEh$RD" role="jymVt" />
      <node concept="2YIFZL" id="4MEOIDEip_0" role="jymVt">
        <property role="TrG5h" value="forNode" />
        <node concept="37vLTG" id="4MEOIDEip_1" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="4MEOIDEip_2" role="1tU5fm" />
        </node>
        <node concept="3uibUv" id="4MEOIDEip_3" role="3clF45">
          <ref role="3uigEE" node="4MEOIDEhyPY" resolve="TypeTemplate.ID" />
        </node>
        <node concept="3Tm1VV" id="4MEOIDEip_4" role="1B3o_S" />
        <node concept="3clFbS" id="4MEOIDEip_5" role="3clF47">
          <node concept="3clFbF" id="4MEOIDEip_6" role="3cqZAp">
            <node concept="2ShNRf" id="4MEOIDEip_7" role="3clFbG">
              <node concept="1pGfFk" id="4MEOIDEip_8" role="2ShVmc">
                <ref role="37wK5l" node="4MEOIDEh_LW" resolve="TypeTemplate.ID" />
                <node concept="2OqwBi" id="4MEOIDEip_9" role="37wK5m">
                  <node concept="2JrnkZ" id="4MEOIDEip_b" role="2Oq$k0">
                    <node concept="37vLTw" id="4MEOIDEip_c" role="2JrQYb">
                      <ref role="3cqZAo" node="4MEOIDEip_1" resolve="node" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4MEOIDEip_e" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4MEOIDEip$Z" role="jymVt" />
      <node concept="3clFb_" id="4MEOIDEi5VO" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="toString" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="4MEOIDEi5VP" role="1B3o_S" />
        <node concept="3uibUv" id="4MEOIDEi5VR" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="4MEOIDEi5VS" role="3clF47">
          <node concept="3clFbF" id="4MEOIDEi6jx" role="3cqZAp">
            <node concept="2OqwBi" id="4MEOIDEi6qK" role="3clFbG">
              <node concept="37vLTw" id="4MEOIDEi6jw" role="2Oq$k0">
                <ref role="3cqZAo" node="4MEOIDEh_rV" resolve="nodeId" />
              </node>
              <node concept="liA8E" id="4MEOIDEi6Bi" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4MEOIDEi5VT" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4MEOIDEi65J" role="jymVt" />
      <node concept="3clFbW" id="4MEOIDEh_LW" role="jymVt">
        <node concept="37vLTG" id="4MEOIDEh_Rv" role="3clF46">
          <property role="TrG5h" value="nodeId" />
          <node concept="3uibUv" id="4MEOIDEh_Tz" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
        </node>
        <node concept="3cqZAl" id="4MEOIDEh_LY" role="3clF45" />
        <node concept="3Tm6S6" id="4MEOIDEh_Rg" role="1B3o_S" />
        <node concept="3clFbS" id="4MEOIDEh_M0" role="3clF47">
          <node concept="3clFbF" id="4MEOIDEhA70" role="3cqZAp">
            <node concept="37vLTI" id="4MEOIDEhAvZ" role="3clFbG">
              <node concept="37vLTw" id="4MEOIDEhA$B" role="37vLTx">
                <ref role="3cqZAo" node="4MEOIDEh_Rv" resolve="nodeId" />
              </node>
              <node concept="2OqwBi" id="4MEOIDEhAba" role="37vLTJ">
                <node concept="Xjq3P" id="4MEOIDEhA6Z" role="2Oq$k0" />
                <node concept="2OwXpG" id="4MEOIDEhAlD" role="2OqNvi">
                  <ref role="2Oxat5" node="4MEOIDEh_rV" resolve="nodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4MEOIDEh_GM" role="jymVt" />
      <node concept="312cEg" id="4MEOIDEh_rV" role="jymVt">
        <property role="TrG5h" value="nodeId" />
        <node concept="3Tm6S6" id="4MEOIDEh_rW" role="1B3o_S" />
        <node concept="3uibUv" id="4MEOIDEh_AW" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="2tJIrI" id="4MEOIDEhA0P" role="jymVt" />
      <node concept="3Tm1VV" id="4MEOIDEhyPZ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1eKXYsjvsN9" role="jymVt" />
    <node concept="3clFb_" id="1eKXYsjvsWn" role="jymVt">
      <property role="TrG5h" value="withArgs" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="1eKXYsjvsWo" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="1eKXYsjvsWp" role="1tU5fm">
          <node concept="3uibUv" id="1eKXYsjvsWq" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="1eKXYsjvtmV" role="3clF45">
        <ref role="16sUi3" node="1eKXYsjvsL$" resolve="Cfg" />
      </node>
      <node concept="3Tm1VV" id="1eKXYsjvsWs" role="1B3o_S" />
      <node concept="3clFbS" id="1eKXYsjvsWt" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="60NbDCXGYuS" role="jymVt" />
    <node concept="3clFb_" id="60NbDCXGYgv" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="typeTerm" />
      <node concept="3uibUv" id="60NbDCXGYgw" role="3clF45">
        <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
      </node>
      <node concept="3Tm1VV" id="60NbDCXGYgx" role="1B3o_S" />
      <node concept="3clFbS" id="60NbDCXGYgy" role="3clF47" />
      <node concept="37vLTG" id="60NbDCXGYgz" role="3clF46">
        <property role="TrG5h" value="typeNode" />
        <node concept="3Tqbb2" id="60NbDCXGYV4" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1eKXYsjICvB" role="jymVt" />
    <node concept="3clFb_" id="1eKXYsjIChF" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="patternTypeTerm" />
      <node concept="3uibUv" id="1eKXYsjIChG" role="3clF45">
        <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
      </node>
      <node concept="3Tm1VV" id="1eKXYsjIChH" role="1B3o_S" />
      <node concept="3clFbS" id="1eKXYsjIChI" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4MEOIDG7Abc" role="jymVt" />
    <node concept="3clFb_" id="1eKXYsjvsWF" role="jymVt">
      <property role="TrG5h" value="bindType" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="1eKXYsjvsWG" role="3clF45">
        <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="1eKXYsjvsWH" role="1B3o_S" />
      <node concept="3clFbS" id="1eKXYsjvsWI" role="3clF47" />
      <node concept="37vLTG" id="1eKXYsjvsWJ" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="16syzq" id="1eKXYsjvtUf" role="1tU5fm">
          <ref role="16sUi3" node="1eKXYsjvsL$" resolve="Cfg" />
        </node>
      </node>
      <node concept="37vLTG" id="1eKXYsjvsWL" role="3clF46">
        <property role="TrG5h" value="typeLogical" />
        <node concept="26uTi9" id="1eKXYsjvsWM" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1eKXYsjvsWN" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="1eKXYsjvsWO" role="1tU5fm">
          <ref role="3uigEE" to="nz6g:18kNIl1vDPZ" resolve="ApplicationSession" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="60NbDCXG_2v" role="jymVt" />
    <node concept="3clFb_" id="60NbDCXG$nh" role="jymVt">
      <property role="TrG5h" value="bindType" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="60NbDCXG$ni" role="3clF45">
        <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="60NbDCXG$nj" role="1B3o_S" />
      <node concept="3clFbS" id="60NbDCXG$nk" role="3clF47" />
      <node concept="37vLTG" id="60NbDCXG$nl" role="3clF46">
        <property role="TrG5h" value="typeNode" />
        <node concept="3Tqbb2" id="60NbDCXGA53" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="60NbDCXG$nn" role="3clF46">
        <property role="TrG5h" value="typeLogical" />
        <node concept="26uTi9" id="60NbDCXG$no" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="60NbDCXG$np" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="60NbDCXG$nq" role="1tU5fm">
          <ref role="3uigEE" to="nz6g:18kNIl1vDPZ" resolve="ApplicationSession" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Ya9Z$kGXv_" role="jymVt" />
    <node concept="3clFb_" id="Ya9Z$kGXxs" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="recover" />
      <node concept="37vLTG" id="Ya9Z$kGXxt" role="3clF46">
        <property role="TrG5h" value="typeTerm" />
        <node concept="3uibUv" id="Ya9Z$kGXxu" role="1tU5fm">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="37vLTG" id="Ya9Z$kRg$R" role="3clF46">
        <property role="TrG5h" value="recoverySession" />
        <node concept="3uibUv" id="Ya9Z$kRgBk" role="1tU5fm">
          <ref role="3uigEE" to="nz6g:Ya9Z$kMIRb" resolve="RecoverySession" />
        </node>
      </node>
      <node concept="3Tqbb2" id="Ya9Z$kGXxv" role="3clF45" />
      <node concept="3Tm1VV" id="Ya9Z$kGXxw" role="1B3o_S" />
      <node concept="3clFbS" id="Ya9Z$kGXxx" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="Ya9Z$kGXww" role="jymVt" />
    <node concept="3Tm1VV" id="1hX44vNnjJ_" role="1B3o_S" />
    <node concept="16euLQ" id="1eKXYsjvsL$" role="16eVyc">
      <property role="TrG5h" value="Cfg" />
      <node concept="3uibUv" id="1eKXYsjvsTm" role="3ztrMU">
        <ref role="3uigEE" node="1eKXYsjvsOy" resolve="TypeTemplate.Config" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="7IysFeAhp4q">
    <property role="TrG5h" value="Init" />
    <node concept="2tJIrI" id="7IysFeAhp9G" role="jymVt" />
    <node concept="3clFb_" id="7IysFeAhp5H" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="get" />
      <node concept="16syzq" id="7IysFeAhp7b" role="3clF45">
        <ref role="16sUi3" node="7IysFeAhp5y" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="7IysFeAhp5K" role="1B3o_S" />
      <node concept="3clFbS" id="7IysFeAhp5L" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7IysFeAhp93" role="jymVt" />
    <node concept="3Tm1VV" id="7IysFeAhp4r" role="1B3o_S" />
    <node concept="16euLQ" id="7IysFeAhp5y" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="3HP615" id="4nxCIBqhYFx">
    <property role="TrG5h" value="NodeRecovery" />
    <node concept="2tJIrI" id="4nxCIBqhYFN" role="jymVt" />
    <node concept="3clFb_" id="4nxCIBqhZxR" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="recover" />
      <node concept="37vLTG" id="4nxCIBqhZz$" role="3clF46">
        <property role="TrG5h" value="typeTerm" />
        <node concept="3uibUv" id="4nxCIBqhZzX" role="1tU5fm">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="3Tqbb2" id="4nxCIBqhZzi" role="3clF45" />
      <node concept="3Tm1VV" id="4nxCIBqhZxU" role="1B3o_S" />
      <node concept="3clFbS" id="4nxCIBqhZxV" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4nxCIBqhZxH" role="jymVt" />
    <node concept="3Tm1VV" id="4nxCIBqhYFy" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4MEOIDFA48I">
    <property role="TrG5h" value="AbstractTermDeclaration" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="4MEOIDFA4bd" role="jymVt" />
    <node concept="3clFb_" id="4MEOIDFA4bP" role="jymVt">
      <property role="TrG5h" value="typeTerm" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="4MEOIDFA4e5" role="3clF45">
        <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
      </node>
      <node concept="3Tm1VV" id="4MEOIDFA4bS" role="1B3o_S" />
      <node concept="3clFbS" id="4MEOIDFA4bT" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4MEOIDFA4bf" role="jymVt" />
    <node concept="3Tm1VV" id="4MEOIDFA48J" role="1B3o_S" />
  </node>
</model>

