<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:09e53496-6477-45e7-abd5-eaf3fac3b360(jetbrains.mps.logic.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.dataform)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="5944356402132808754" name="jetbrains.mps.lang.smodel.structure.SubconceptCase" flags="ng" index="1_3QMl">
        <child id="1163670677455" name="concept" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="7E86$tKAuhI">
    <property role="3GE5qa" value="logical.variable" />
    <ref role="13h7C2" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
    <node concept="13i0hz" id="6YKq674fNYS" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="availableLogicalVariable" />
      <node concept="3Tm1VV" id="6YKq674fNYT" role="1B3o_S" />
      <node concept="A3Dl8" id="6YKq674fNYU" role="3clF45">
        <node concept="3Tqbb2" id="6YKq674fNYV" role="A3Ik2">
          <ref role="ehGHo" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="6YKq674fNYW" role="3clF47">
        <node concept="3clFbF" id="6YKq674fNYX" role="3cqZAp">
          <node concept="10Nm6u" id="6YKq674fNYY" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="7E86$tKAuhJ" role="13h7CW">
      <node concept="3clFbS" id="7E86$tKAuhK" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7MlQDeOyT3P">
    <property role="3GE5qa" value="dataform.attribute" />
    <ref role="13h7C2" to="5j4j:dfChU1zo4B" resolve="Splice" />
    <node concept="13i0hz" id="7MlQDeOyT3S" role="13h7CS">
      <property role="TrG5h" value="prototype" />
      <node concept="3Tm1VV" id="7MlQDeOyT3T" role="1B3o_S" />
      <node concept="3clFbS" id="7MlQDeOyT3U" role="3clF47">
        <node concept="3SKdUt" id="7MlQDeOyVaw" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYwyP" role="1aUNEU">
            <node concept="3oM_SD" id="589APehYwyQ" role="1PaTwD">
              <property role="3oM_SC" value="TODO:" />
            </node>
            <node concept="3oM_SD" id="589APehYwyR" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="589APehYwyS" role="1PaTwD">
              <property role="3oM_SC" value="double" />
            </node>
            <node concept="3oM_SD" id="589APehYwyT" role="1PaTwD">
              <property role="3oM_SC" value="dispatch" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7MlQDeOyTig" role="3cqZAp">
          <node concept="3cpWsn" id="7MlQDeOyTih" role="3cpWs9">
            <property role="TrG5h" value="tfNode" />
            <node concept="3Tqbb2" id="7MlQDeOyTie" role="1tU5fm">
              <ref role="ehGHo" to="5j4j:5yqFHXo6Ubn" resolve="DataForm" />
            </node>
            <node concept="1PxgMI" id="7MlQDeOyTuD" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="2OqwBi" id="7MlQDeOyTii" role="1m5AlR">
                <node concept="13iPFW" id="7MlQDeOyTij" role="2Oq$k0" />
                <node concept="1mfA1w" id="7MlQDeOyTik" role="2OqNvi" />
              </node>
              <node concept="chp4Y" id="5yqFHXofCBa" role="3oSUPX">
                <ref role="cht4Q" to="5j4j:5yqFHXo6Ubn" resolve="DataForm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1_3QMa" id="6Sag3Ksyion" role="3cqZAp">
          <node concept="2OqwBi" id="3U_KxQf9l_b" role="1_3QMn">
            <node concept="37vLTw" id="3U_KxQf9l_c" role="2Oq$k0">
              <ref role="3cqZAo" node="7MlQDeOyTih" resolve="tfNode" />
            </node>
            <node concept="2yIwOk" id="3U_KxQf9l_d" role="2OqNvi" />
          </node>
          <node concept="1_3QMl" id="6Sag3KsyiIv" role="1_3QMm">
            <node concept="3gn64h" id="6Sag3KsyiIN" role="3Kbmr1">
              <ref role="3gnhBz" to="5j4j:1OShD0HAY6y" resolve="ListNode" />
            </node>
            <node concept="3clFbS" id="6Sag3KsyiIx" role="3Kbo56">
              <node concept="3cpWs6" id="6Sag3KsyiJ4" role="3cqZAp">
                <node concept="2OqwBi" id="4cvvxaYheve" role="3cqZAk">
                  <node concept="2c44tf" id="4cvvxaYhe6r" role="2Oq$k0">
                    <node concept="3uibUv" id="4cvvxaYhegq" role="2c44tc">
                      <ref role="3uigEE" to="6exd:3OPtF03lco4" resolve="ListNode" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="4cvvxaYheXY" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1_3QMl" id="6Sag3KsyjtM" role="1_3QMm">
            <node concept="3gn64h" id="6Sag3KsyjNn" role="3Kbmr1">
              <ref role="3gnhBz" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
            </node>
            <node concept="3clFbS" id="6Sag3KsyjtO" role="3Kbo56">
              <node concept="3cpWs6" id="6Sag3KsyjNN" role="3cqZAp">
                <node concept="2OqwBi" id="4cvvxaYhfL9" role="3cqZAk">
                  <node concept="2c44tf" id="4cvvxaYhfdx" role="2Oq$k0">
                    <node concept="3uibUv" id="4cvvxaYhfwe" role="2c44tc">
                      <ref role="3uigEE" to="6exd:2xQ7eRAD2dj" resolve="Value" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="4cvvxaYhgi0" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Sag3KsyjWy" role="3cqZAp">
          <node concept="2OqwBi" id="4cvvxaYhgKJ" role="3clFbG">
            <node concept="2c44tf" id="4cvvxaYhgp3" role="2Oq$k0">
              <node concept="3uibUv" id="4cvvxaYhgzP" role="2c44tc">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
            </node>
            <node concept="3TrEf2" id="4cvvxaYhhd_" role="2OqNvi">
              <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7MlQDeOyT40" role="3clF45">
        <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
      </node>
    </node>
    <node concept="13hLZK" id="7MlQDeOyT3Q" role="13h7CW">
      <node concept="3clFbS" id="7MlQDeOyT3R" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="75vUFrSLzLP">
    <property role="3GE5qa" value="logical.variable" />
    <ref role="13h7C2" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
    <node concept="13i0hz" id="75vUFrSLzQL" role="13h7CS">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="75vUFrSLzQM" role="1B3o_S" />
      <node concept="3clFbS" id="75vUFrSLzQN" role="3clF47">
        <node concept="3clFbF" id="75vUFrSLzVQ" role="3cqZAp">
          <node concept="1PxgMI" id="75vUFrSL$eI" role="3clFbG">
            <property role="1BlNFB" value="true" />
            <node concept="2OqwBi" id="75vUFrSLzXF" role="1m5AlR">
              <node concept="13iPFW" id="75vUFrSLzVP" role="2Oq$k0" />
              <node concept="1mfA1w" id="75vUFrSL$5c" role="2OqNvi" />
            </node>
            <node concept="chp4Y" id="6fXjIfxgndM" role="3oSUPX">
              <ref role="cht4Q" to="5j4j:75vUFrS_9Sg" resolve="LogicalVariableDeclarationContainer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="75vUFrSLzQT" role="3clF45">
        <ref role="ehGHo" to="5j4j:75vUFrS_9Sg" resolve="LogicalVariableDeclarationContainer" />
      </node>
    </node>
    <node concept="13i0hz" id="4U$Q3dJRAQ9" role="13h7CS">
      <property role="TrG5h" value="isArray" />
      <node concept="3Tm1VV" id="4U$Q3dJRAQa" role="1B3o_S" />
      <node concept="10P_77" id="4U$Q3dJRAQW" role="3clF45" />
      <node concept="3clFbS" id="4U$Q3dJRAQc" role="3clF47">
        <node concept="3clFbF" id="4U$Q3dJRARo" role="3cqZAp">
          <node concept="2OqwBi" id="4U$Q3dJRBk$" role="3clFbG">
            <node concept="2OqwBi" id="4U$Q3dJRB14" role="2Oq$k0">
              <node concept="13iPFW" id="4U$Q3dJRARn" role="2Oq$k0" />
              <node concept="3TrEf2" id="4U$Q3dJRB9n" role="2OqNvi">
                <ref role="3Tt5mk" to="5j4j:5f6wxQ3ychO" resolve="cardinalityExpr" />
              </node>
            </node>
            <node concept="3x8VRR" id="4U$Q3dJRBtw" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="75vUFrSLzLQ" role="13h7CW">
      <node concept="3clFbS" id="75vUFrSLzLR" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7FFmDVAL6Y2">
    <property role="3GE5qa" value="dataform" />
    <ref role="13h7C2" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
    <node concept="13hLZK" id="7FFmDVAL6Y3" role="13h7CW">
      <node concept="3clFbS" id="7FFmDVAL6Y4" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7FFmDVAL6Y5" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="runtimeType" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="7FFmDVAL6VY" resolve="runtimeType" />
      <node concept="3Tm1VV" id="7FFmDVAL6Y6" role="1B3o_S" />
      <node concept="3clFbS" id="7FFmDVAL6Yd" role="3clF47">
        <node concept="3clFbF" id="4cvvxaYhc6j" role="3cqZAp">
          <node concept="2OqwBi" id="4cvvxaYhcn$" role="3clFbG">
            <node concept="2c44tf" id="4cvvxaYhc6f" role="2Oq$k0">
              <node concept="3uibUv" id="4cvvxaYhcaI" role="2c44tc">
                <ref role="3uigEE" to="6exd:2xQ7eRAD2dj" resolve="Value" />
              </node>
            </node>
            <node concept="3TrEf2" id="4cvvxaYhcOo" role="2OqNvi">
              <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7FFmDVALaqA" role="3clF45">
        <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7FFmDVAL750">
    <property role="3GE5qa" value="dataform" />
    <ref role="13h7C2" to="5j4j:6$jH9oLmYC_" resolve="TermNode" />
    <node concept="13hLZK" id="7FFmDVAL751" role="13h7CW">
      <node concept="3clFbS" id="7FFmDVAL752" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7FFmDVAL753" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="runtimeType" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="7FFmDVAL6VY" resolve="runtimeType" />
      <node concept="3Tm1VV" id="7FFmDVAL754" role="1B3o_S" />
      <node concept="3clFbS" id="7FFmDVAL75b" role="3clF47">
        <node concept="3clFbF" id="4cvvxaYhcUm" role="3cqZAp">
          <node concept="2OqwBi" id="4cvvxaYhdbA" role="3clFbG">
            <node concept="2c44tf" id="4cvvxaYhcUi" role="2Oq$k0">
              <node concept="3uibUv" id="4cvvxaYhcYL" role="2c44tc">
                <ref role="3uigEE" to="6exd:5JQSuNswOXL" resolve="TermNode" />
              </node>
            </node>
            <node concept="3TrEf2" id="4cvvxaYhdYJ" role="2OqNvi">
              <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7FFmDVALaH6" role="3clF45">
        <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7FFmDVAL79i">
    <property role="3GE5qa" value="dataform" />
    <ref role="13h7C2" to="5j4j:1OShD0HAY6y" resolve="ListNode" />
    <node concept="13hLZK" id="7FFmDVAL79j" role="13h7CW">
      <node concept="3clFbS" id="7FFmDVAL79k" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7FFmDVAL79l" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="runtimeType" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="7FFmDVAL6VY" resolve="runtimeType" />
      <node concept="3Tm1VV" id="7FFmDVAL79m" role="1B3o_S" />
      <node concept="3clFbS" id="7FFmDVAL79t" role="3clF47">
        <node concept="3clFbF" id="4cvvxaYhhl2" role="3cqZAp">
          <node concept="2c44tf" id="4cvvxaYhhkY" role="3clFbG">
            <node concept="3uibUv" id="4cvvxaYhhpt" role="2c44tc">
              <ref role="3uigEE" to="6exd:3OPtF03lco4" resolve="ListNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7FFmDVALaAb" role="3clF45">
        <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5yqFHXofCx9">
    <property role="3GE5qa" value="dataform" />
    <ref role="13h7C2" to="5j4j:5yqFHXo6Ubn" resolve="DataForm" />
    <node concept="13hLZK" id="5yqFHXofCxa" role="13h7CW">
      <node concept="3clFbS" id="5yqFHXofCxb" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7FFmDVAL6VY" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="runtimeType" />
      <node concept="3Tm1VV" id="7FFmDVAL6VZ" role="1B3o_S" />
      <node concept="3clFbS" id="7FFmDVAL6W0" role="3clF47">
        <node concept="3clFbF" id="4cvvxaYhhvP" role="3cqZAp">
          <node concept="2OqwBi" id="4cvvxaYhhL5" role="3clFbG">
            <node concept="2c44tf" id="4cvvxaYhhvL" role="2Oq$k0">
              <node concept="3uibUv" id="4cvvxaYhh$g" role="2c44tc">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
            </node>
            <node concept="3TrEf2" id="4cvvxaYhidS" role="2OqNvi">
              <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7FFmDVALaMW" role="3clF45">
        <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7zIaasjACz8">
    <property role="3GE5qa" value="logical.item.expression" />
    <ref role="13h7C2" to="5j4j:7zIaasjACyh" resolve="EvaluationSubject" />
    <node concept="13i0hz" id="1HWyn8iLEDG" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="logicalItems" />
      <node concept="3Tm1VV" id="1HWyn8iLEDH" role="1B3o_S" />
      <node concept="2I9FWS" id="1HWyn8iLEG5" role="3clF45">
        <ref role="2I9WkF" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
      </node>
      <node concept="3clFbS" id="1HWyn8iLEDJ" role="3clF47" />
    </node>
    <node concept="13hLZK" id="7zIaasjACz9" role="13h7CW">
      <node concept="3clFbS" id="7zIaasjACza" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="3MfP0fxd5Oo">
    <property role="3GE5qa" value="logical.variable" />
    <ref role="13h7C2" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
    <node concept="13i0hz" id="3MfP0fxd5Oz" role="13h7CS">
      <property role="TrG5h" value="isArray" />
      <node concept="3Tm1VV" id="3MfP0fxd5O$" role="1B3o_S" />
      <node concept="10P_77" id="3MfP0fxd5ON" role="3clF45" />
      <node concept="3clFbS" id="3MfP0fxd5OA" role="3clF47">
        <node concept="3clFbF" id="4U$Q3dJRAdT" role="3cqZAp">
          <node concept="1Wc70l" id="4U$Q3dJWCLr" role="3clFbG">
            <node concept="2OqwBi" id="4U$Q3dJWDis" role="3uHU7w">
              <node concept="2OqwBi" id="4U$Q3dJWCWk" role="2Oq$k0">
                <node concept="13iPFW" id="4U$Q3dJWCMk" role="2Oq$k0" />
                <node concept="3TrEf2" id="4U$Q3dJWD8B" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:5f6wxQ3pnWr" resolve="indexExpr" />
                </node>
              </node>
              <node concept="3w_OXm" id="4U$Q3dJWDvo" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="4U$Q3dJRAEo" role="3uHU7B">
              <node concept="2OqwBi" id="4U$Q3dJRAn_" role="2Oq$k0">
                <node concept="13iPFW" id="4U$Q3dJRAdS" role="2Oq$k0" />
                <node concept="3TrEf2" id="4U$Q3dJRAwb" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:7E86$tK_PaH" resolve="declaration" />
                </node>
              </node>
              <node concept="2qgKlT" id="4U$Q3dJRBJx" role="2OqNvi">
                <ref role="37wK5l" node="4U$Q3dJRAQ9" resolve="isArray" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="3MfP0fxd5Op" role="13h7CW">
      <node concept="3clFbS" id="3MfP0fxd5Oq" role="2VODD2" />
    </node>
  </node>
</model>

