<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6ce19131-f058-4060-94c1-dc8711cc02d9(jetbrains.mps.baseLanguageExt.scripts)">
  <persistence version="9" />
  <languages>
    <use id="0eddeefa-c2d6-4437-bc2c-de50fd4ce470" name="jetbrains.mps.lang.script" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.baseLanguageExt.types)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.coderules.structure)" implicit="true" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="x5bw" ref="r:15ea4f4e-2f41-4ce3-b7e4-a4e0737f0171(jetbrains.mps.lang.coderules.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="0eddeefa-c2d6-4437-bc2c-de50fd4ce470" name="jetbrains.mps.lang.script">
      <concept id="1177457067821" name="jetbrains.mps.lang.script.structure.MigrationScript" flags="ig" index="_UgoZ">
        <property id="1177457669450" name="title" index="_Wzho" />
        <child id="1177458178889" name="part" index="_YvDr" />
      </concept>
      <concept id="1177457850499" name="jetbrains.mps.lang.script.structure.MigrationScriptPart_Instance" flags="lg" index="_XfAh">
        <property id="1177457972041" name="description" index="_XH9r" />
        <reference id="1177457957477" name="affectedInstanceConcept" index="_XDHR" />
        <child id="1177457957478" name="affectedInstancePredicate" index="_XDHO" />
        <child id="1177458005323" name="affectedInstanceUpdater" index="_XPhp" />
      </concept>
      <concept id="1177458061340" name="jetbrains.mps.lang.script.structure.MigrationScriptPart_Instance_Predicate" flags="in" index="_Y34e" />
      <concept id="1177458237937" name="jetbrains.mps.lang.script.structure.MigrationScriptPart_node" flags="nn" index="_YI3z" />
      <concept id="1177458491964" name="jetbrains.mps.lang.script.structure.MigrationScriptPart_Instance_Updater" flags="in" index="_ZGcI" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
        <child id="1595412875168045201" name="initValue" index="28ntcv" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="6985522012210254362" name="jetbrains.mps.lang.quotation.structure.NodeBuilderPropertyExpression" flags="nn" index="WxPPo">
        <child id="6985522012210254363" name="expression" index="WxPPp" />
      </concept>
      <concept id="8182547171709738802" name="jetbrains.mps.lang.quotation.structure.NodeBuilderList" flags="nn" index="36be1Y">
        <child id="8182547171709738803" name="nodes" index="36be1Z" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
      <concept id="8182547171709614739" name="jetbrains.mps.lang.quotation.structure.NodeBuilderRef" flags="nn" index="36bGnv">
        <reference id="8182547171709614741" name="target" index="36bGnp" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
        <child id="7256306938026143676" name="child" index="2aWVGa" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="942336824646299470" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetPointerOperation" flags="ng" index="1AR3kn">
        <child id="942336824646299471" name="linkTarget" index="1AR3km" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="3320646261221695165" name="jetbrains.mps.lang.smodel.structure.NodePointerArg_Identity" flags="ng" index="1QN52j">
        <child id="3320646261221695238" name="ref" index="1QN54C" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="_UgoZ" id="5kd4gACkqgQ">
    <property role="TrG5h" value="ConvertsAddContextOptions" />
    <property role="_Wzho" value="ConvertsContext refactorings" />
    <node concept="_XfAh" id="5kd4gACkqgR" role="_YvDr">
      <property role="_XH9r" value="Add ConvertsContext.Options to rules extending 'convertsTo' rules" />
      <ref role="_XDHR" to="wq2x:36tQV5AmIsB" resolve="ConstraintRule" />
      <node concept="_ZGcI" id="5kd4gACkqgS" role="_XPhp">
        <node concept="3clFbS" id="5kd4gACkqgT" role="2VODD2">
          <node concept="3cpWs8" id="5kd4gACkrHd" role="3cqZAp">
            <node concept="3cpWsn" id="5kd4gACkrHg" role="3cpWs9">
              <property role="TrG5h" value="rule" />
              <node concept="3Tqbb2" id="5kd4gACkrHc" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:36tQV5AmIsB" resolve="ConstraintRule" />
              </node>
              <node concept="_YI3z" id="5kd4gACkrHW" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbH" id="5kd4gACkrId" role="3cqZAp" />
          <node concept="3cpWs8" id="5kd4gAC0X4p" role="3cqZAp">
            <node concept="3cpWsn" id="5kd4gAC0X4q" role="3cpWs9">
              <property role="TrG5h" value="varDecl_template" />
              <node concept="3Tqbb2" id="5kd4gAC0X4r" role="1tU5fm">
                <ref role="ehGHo" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
              </node>
              <node concept="2pJPEk" id="5kd4gAC0X4s" role="33vP2m">
                <node concept="2pJPED" id="5kd4gAC0X4t" role="2pJPEn">
                  <ref role="2pJxaS" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
                  <node concept="2pJxcG" id="5kd4gAC0X4u" role="2pJxcM">
                    <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                    <node concept="WxPPo" id="5kd4gAC0X4v" role="28ntcv">
                      <node concept="Xl_RD" id="5kd4gAC0X4w" role="WxPPp">
                        <property role="Xl_RC" value="Options" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5kd4gAC0X4x" role="3cqZAp">
            <node concept="3cpWsn" id="5kd4gAC0X4y" role="3cpWs9">
              <property role="TrG5h" value="paramsCont_template" />
              <node concept="3Tqbb2" id="5kd4gAC0X4z" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:PB1R3Y7Ed7" resolve="RulePartParameterDeclaration" />
              </node>
              <node concept="2pJPEk" id="5kd4gAC0X4$" role="33vP2m">
                <node concept="2pJPED" id="5kd4gAC0X4_" role="2pJPEn">
                  <ref role="2pJxaS" to="wq2x:PB1R3Y7Ed7" resolve="RulePartParameterDeclaration" />
                  <node concept="2pIpSj" id="5kd4gAC0X4A" role="2pJxcM">
                    <ref role="2pIpSl" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
                    <node concept="2pJPED" id="5kd4gAC0X4B" role="28nt2d">
                      <ref role="2pJxaS" to="tpee:g7uibYu" resolve="ClassifierType" />
                      <node concept="2pIpSj" id="5kd4gAC0X4C" role="2pJxcM">
                        <ref role="2pIpSl" to="tpee:g7uigIF" resolve="classifier" />
                        <node concept="36bGnv" id="5kd4gAC0X4D" role="28nt2d">
                          <ref role="36bGnp" to="kqnc:3vTJNooZBhQ" resolve="ConvertsContext.Options" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2pIpSj" id="5kd4gAC0X4E" role="2pJxcM">
                    <ref role="2pIpSl" to="5j4j:2E5lcNn8k3O" resolve="declaration" />
                    <node concept="36be1Y" id="5kd4gAC0X4F" role="28nt2d">
                      <node concept="36biLy" id="5kd4gAC0X4G" role="36be1Z">
                        <node concept="37vLTw" id="5kd4gAC0X4H" role="36biLW">
                          <ref role="3cqZAo" node="5kd4gAC0X4q" resolve="varDecl_template" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5kd4gAC0X4I" role="3cqZAp" />
          <node concept="3SKdUt" id="5kd4gAC0X4J" role="3cqZAp">
            <node concept="1PaTwC" id="5kd4gAC0X4K" role="1aUNEU">
              <node concept="3oM_SD" id="5kd4gAC0X4L" role="1PaTwD">
                <property role="3oM_SC" value="add" />
              </node>
              <node concept="3oM_SD" id="5kd4gAC0X4M" role="1PaTwD">
                <property role="3oM_SC" value="var" />
              </node>
              <node concept="3oM_SD" id="5kd4gAC0X4N" role="1PaTwD">
                <property role="3oM_SC" value="decl" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5kd4gAC0X4O" role="3cqZAp">
            <node concept="3cpWsn" id="5kd4gAC0X4P" role="3cpWs9">
              <property role="TrG5h" value="paramsCont" />
              <node concept="3Tqbb2" id="5kd4gAC0X4Q" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:PB1R3Y7Ed7" resolve="RulePartParameterDeclaration" />
              </node>
              <node concept="2OqwBi" id="5kd4gAC0X4R" role="33vP2m">
                <node concept="37vLTw" id="5kd4gAC0X4S" role="2Oq$k0">
                  <ref role="3cqZAo" node="5kd4gAC0X4y" resolve="paramsCont_template" />
                </node>
                <node concept="1$rogu" id="5kd4gAC0X4T" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5kd4gAC0X4U" role="3cqZAp">
            <node concept="3cpWsn" id="5kd4gAC0X4V" role="3cpWs9">
              <property role="TrG5h" value="varRef" />
              <node concept="3Tqbb2" id="5kd4gAC0X4W" role="1tU5fm">
                <ref role="ehGHo" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
              </node>
              <node concept="2pJPEk" id="5kd4gAC0X4X" role="33vP2m">
                <node concept="2pJPED" id="5kd4gAC0X4Y" role="2pJPEn">
                  <ref role="2pJxaS" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
                  <node concept="2pIpSj" id="5kd4gAC0X4Z" role="2pJxcM">
                    <ref role="2pIpSl" to="5j4j:7E86$tK_PaH" resolve="declaration" />
                    <node concept="36biLy" id="5kd4gAC0X50" role="28nt2d">
                      <node concept="2OqwBi" id="5kd4gAC0X51" role="36biLW">
                        <node concept="2OqwBi" id="5kd4gAC0X52" role="2Oq$k0">
                          <node concept="37vLTw" id="5kd4gAC0X53" role="2Oq$k0">
                            <ref role="3cqZAo" node="5kd4gAC0X4P" resolve="paramsCont" />
                          </node>
                          <node concept="3Tsc0h" id="5kd4gAC0X54" role="2OqNvi">
                            <ref role="3TtcxE" to="5j4j:2E5lcNn8k3O" resolve="declaration" />
                          </node>
                        </node>
                        <node concept="1uHKPH" id="5kd4gAC0X55" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5kd4gAC0X56" role="3cqZAp">
            <node concept="2OqwBi" id="5kd4gAC0X57" role="3clFbG">
              <node concept="2OqwBi" id="5kd4gAC0X58" role="2Oq$k0">
                <node concept="37vLTw" id="5kd4gAC0X59" role="2Oq$k0">
                  <ref role="3cqZAo" node="5kd4gACkrHg" resolve="rule" />
                </node>
                <node concept="3Tsc0h" id="5kd4gAC0X5a" role="2OqNvi">
                  <ref role="3TtcxE" to="wq2x:4beNoh24Wi0" resolve="parameter" />
                </node>
              </node>
              <node concept="2Ke9KJ" id="5kd4gAC0X5b" role="2OqNvi">
                <node concept="37vLTw" id="5kd4gAC0X5c" role="25WWJ7">
                  <ref role="3cqZAo" node="5kd4gAC0X4P" resolve="paramsCont" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5kd4gAC0X5d" role="3cqZAp" />
          <node concept="3SKdUt" id="5kd4gAC0X5e" role="3cqZAp">
            <node concept="1PaTwC" id="5kd4gAC0X5f" role="1aUNEU">
              <node concept="3oM_SD" id="5kd4gAC0X5g" role="1PaTwD">
                <property role="3oM_SC" value="replace" />
              </node>
              <node concept="3oM_SD" id="5kd4gAC0X5h" role="1PaTwD">
                <property role="3oM_SC" value="user" />
              </node>
              <node concept="3oM_SD" id="5kd4gAC0X5i" role="1PaTwD">
                <property role="3oM_SC" value="constraints" />
              </node>
              <node concept="3oM_SD" id="5kd4gAC0X5j" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="5kd4gAC0X5k" role="1PaTwD">
                <property role="3oM_SC" value="new" />
              </node>
              <node concept="3oM_SD" id="5kd4gAC0X5l" role="1PaTwD">
                <property role="3oM_SC" value="one" />
              </node>
              <node concept="3oM_SD" id="5kd4gAC0X5m" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="5kd4gAC0X5n" role="1PaTwD">
                <property role="3oM_SC" value="copied" />
              </node>
              <node concept="3oM_SD" id="5kd4gAC0X5o" role="1PaTwD">
                <property role="3oM_SC" value="var" />
              </node>
              <node concept="3oM_SD" id="5kd4gAC0X5p" role="1PaTwD">
                <property role="3oM_SC" value="ref" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5kd4gAC0X5q" role="3cqZAp">
            <node concept="2OqwBi" id="5kd4gAC0X5r" role="3clFbG">
              <node concept="2OqwBi" id="5kd4gAC0X5s" role="2Oq$k0">
                <node concept="2OqwBi" id="5kd4gAC0X5t" role="2Oq$k0">
                  <node concept="37vLTw" id="5kd4gAC0X5u" role="2Oq$k0">
                    <ref role="3cqZAo" node="5kd4gACkrHg" resolve="rule" />
                  </node>
                  <node concept="2Rf3mk" id="5kd4gAC0X5v" role="2OqNvi">
                    <node concept="1xMEDy" id="5kd4gAC0X5w" role="1xVPHs">
                      <node concept="chp4Y" id="5kd4gAC0X5x" role="ri$Ld">
                        <ref role="cht4Q" to="wq2x:6p0DfM0ang5" resolve="UserConstraint" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="5kd4gAC0X5y" role="2OqNvi">
                  <node concept="1bVj0M" id="5kd4gAC0X5z" role="23t8la">
                    <node concept="3clFbS" id="5kd4gAC0X5$" role="1bW5cS">
                      <node concept="3clFbF" id="5kd4gAC0X5_" role="3cqZAp">
                        <node concept="2OqwBi" id="5kd4gAC0X5A" role="3clFbG">
                          <node concept="liA8E" id="5kd4gAC0X5B" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                            <node concept="2tJFMh" id="5kd4gAC0X5C" role="37wK5m">
                              <node concept="ZC_QK" id="5kd4gAC0X5D" role="2tJFKM">
                                <ref role="2aWVGs" to="kqnc:2i6cuYQZkwQ" resolve="Conversions" />
                                <node concept="ZC_QK" id="5kd4gAC0X5E" role="2aWVGa">
                                  <ref role="2aWVGs" to="kqnc:3Qp4N06bUPu" resolve="defaultConvertsTo" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2JrnkZ" id="5kd4gAC0X5F" role="2Oq$k0">
                            <node concept="2OqwBi" id="5kd4gAC0X5G" role="2JrQYb">
                              <node concept="2OqwBi" id="5kd4gAC0X5H" role="2Oq$k0">
                                <node concept="37vLTw" id="5kd4gAC0X5I" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5kd4gAC0X5L" resolve="it" />
                                </node>
                                <node concept="3TrEf2" id="5kd4gAC0X5J" role="2OqNvi">
                                  <ref role="3Tt5mk" to="wq2x:6p0DfM0aywA" resolve="template" />
                                </node>
                              </node>
                              <node concept="iZEcu" id="5kd4gAC0X5K" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="5kd4gAC0X5L" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5kd4gAC0X5M" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2es0OD" id="5kd4gAC0X5N" role="2OqNvi">
                <node concept="1bVj0M" id="5kd4gAC0X5O" role="23t8la">
                  <node concept="3clFbS" id="5kd4gAC0X5P" role="1bW5cS">
                    <node concept="3clFbF" id="5kd4gAC0X5Q" role="3cqZAp">
                      <node concept="2OqwBi" id="5kd4gAC0X5R" role="3clFbG">
                        <node concept="2OqwBi" id="5kd4gAC0X5S" role="2Oq$k0">
                          <node concept="37vLTw" id="5kd4gAC0X5T" role="2Oq$k0">
                            <ref role="3cqZAo" node="5kd4gAC0X68" resolve="ctr" />
                          </node>
                          <node concept="3TrEf2" id="5kd4gAC0X5U" role="2OqNvi">
                            <ref role="3Tt5mk" to="wq2x:6p0DfM0aywA" resolve="template" />
                          </node>
                        </node>
                        <node concept="1AR3kn" id="5kd4gAC0X5V" role="2OqNvi">
                          <node concept="1QN52j" id="5kd4gAC0X5W" role="1AR3km">
                            <node concept="ZC_QK" id="5kd4gAC0X5X" role="1QN54C">
                              <ref role="2aWVGs" to="kqnc:24Vro6cM_J$" resolve="ConversionMain" />
                              <node concept="ZC_QK" id="5kd4gAC0X5Y" role="2aWVGa">
                                <ref role="2aWVGs" to="kqnc:3vTJNooZDgN" resolve="convertsTo" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5kd4gAC0X5Z" role="3cqZAp">
                      <node concept="2OqwBi" id="5kd4gAC0X60" role="3clFbG">
                        <node concept="2OqwBi" id="5kd4gAC0X61" role="2Oq$k0">
                          <node concept="37vLTw" id="5kd4gAC0X62" role="2Oq$k0">
                            <ref role="3cqZAo" node="5kd4gAC0X68" resolve="ctr" />
                          </node>
                          <node concept="3Tsc0h" id="5kd4gAC0X63" role="2OqNvi">
                            <ref role="3TtcxE" to="wq2x:6p0DfM0et2r" resolve="argument" />
                          </node>
                        </node>
                        <node concept="2Ke9KJ" id="5kd4gAC0X64" role="2OqNvi">
                          <node concept="2OqwBi" id="5kd4gAC0X65" role="25WWJ7">
                            <node concept="37vLTw" id="5kd4gAC0X66" role="2Oq$k0">
                              <ref role="3cqZAo" node="5kd4gAC0X4V" resolve="varRef" />
                            </node>
                            <node concept="1$rogu" id="5kd4gAC0X67" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5kd4gAC0X68" role="1bW2Oz">
                    <property role="TrG5h" value="ctr" />
                    <node concept="2jxLKc" id="5kd4gAC0X69" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5kd4gACkrIj" role="3cqZAp" />
        </node>
      </node>
      <node concept="_Y34e" id="5kd4gACkqh5" role="_XDHO">
        <node concept="3clFbS" id="5kd4gACkqh6" role="2VODD2">
          <node concept="3SKdUt" id="4s_lMmHgrr3" role="3cqZAp">
            <node concept="1PaTwC" id="4s_lMmHgrr4" role="1aUNEU">
              <node concept="3oM_SD" id="4s_lMmHgrXB" role="1PaTwD">
                <property role="3oM_SC" value="avoid" />
              </node>
              <node concept="3oM_SD" id="4s_lMmHgrsQ" role="1PaTwD">
                <property role="3oM_SC" value="original" />
              </node>
              <node concept="3oM_SD" id="4s_lMmHgrXP" role="1PaTwD">
                <property role="3oM_SC" value="defaultConvertsTo" />
              </node>
              <node concept="3oM_SD" id="4s_lMmHgrZ0" role="1PaTwD">
                <property role="3oM_SC" value="root" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4s_lMmHgmXf" role="3cqZAp">
            <node concept="3clFbS" id="4s_lMmHgmXh" role="3clFbx">
              <node concept="3cpWs6" id="4s_lMmHgq28" role="3cqZAp">
                <node concept="3clFbT" id="4s_lMmHgqgc" role="3cqZAk" />
              </node>
            </node>
            <node concept="2OqwBi" id="4s_lMmHgpgr" role="3clFbw">
              <node concept="2JrnkZ" id="4s_lMmHgpgC" role="2Oq$k0">
                <node concept="2OqwBi" id="4s_lMmHgoBe" role="2JrQYb">
                  <node concept="2OqwBi" id="4s_lMmHgnUG" role="2Oq$k0">
                    <node concept="_YI3z" id="4s_lMmHgntE" role="2Oq$k0" />
                    <node concept="2Rxl7S" id="4s_lMmHgohN" role="2OqNvi" />
                  </node>
                  <node concept="iZEcu" id="4s_lMmHgoU1" role="2OqNvi" />
                </node>
              </node>
              <node concept="liA8E" id="4s_lMmHgpNF" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                <node concept="2tJFMh" id="4s_lMmHgpNG" role="37wK5m">
                  <node concept="ZC_QK" id="4s_lMmI579s" role="2tJFKM">
                    <ref role="2aWVGs" to="kqnc:2i6cuYQZkwQ" resolve="Conversions" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4s_lMmHgqGV" role="3cqZAp" />
          <node concept="3cpWs8" id="4s_lMmH5Ziz" role="3cqZAp">
            <node concept="3cpWsn" id="4s_lMmH5ZiA" role="3cpWs9">
              <property role="TrG5h" value="extendsConvertsTo" />
              <node concept="10P_77" id="4s_lMmH5Zix" role="1tU5fm" />
              <node concept="1Wc70l" id="4s_lMmH63aT" role="33vP2m">
                <node concept="3y3z36" id="4s_lMmHg97h" role="3uHU7w">
                  <node concept="10Nm6u" id="4s_lMmHg9ow" role="3uHU7w" />
                  <node concept="2OqwBi" id="4s_lMmHg6Vb" role="3uHU7B">
                    <node concept="2OqwBi" id="4s_lMmHg66o" role="2Oq$k0">
                      <node concept="1PxgMI" id="4s_lMmH64cj" role="2Oq$k0">
                        <node concept="chp4Y" id="4s_lMmH64qp" role="3oSUPX">
                          <ref role="cht4Q" to="wq2x:7eGEHDlgPKk" resolve="RulesList" />
                        </node>
                        <node concept="2OqwBi" id="4s_lMmH63Iz" role="1m5AlR">
                          <node concept="_YI3z" id="4s_lMmH63lg" role="2Oq$k0" />
                          <node concept="2Rxl7S" id="4s_lMmH640m" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="4s_lMmHg6sS" role="2OqNvi">
                        <ref role="37wK5l" to="x5bw:34$A1Mf3_WJ" resolve="handlerClosure" />
                      </node>
                    </node>
                    <node concept="1z4cxt" id="4s_lMmHg7mJ" role="2OqNvi">
                      <node concept="1bVj0M" id="4s_lMmHg7mL" role="23t8la">
                        <node concept="3clFbS" id="4s_lMmHg7mM" role="1bW5cS">
                          <node concept="3clFbF" id="4s_lMmHg9_d" role="3cqZAp">
                            <node concept="2OqwBi" id="4s_lMmHgaBL" role="3clFbG">
                              <node concept="2JrnkZ" id="4s_lMmHgaBU" role="2Oq$k0">
                                <node concept="2OqwBi" id="4s_lMmHg9UP" role="2JrQYb">
                                  <node concept="37vLTw" id="4s_lMmHg9_c" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4s_lMmHg7mN" resolve="it" />
                                  </node>
                                  <node concept="iZEcu" id="4s_lMmHgahh" role="2OqNvi" />
                                </node>
                              </node>
                              <node concept="liA8E" id="4s_lMmH671S" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                                <node concept="2tJFMh" id="4s_lMmH67dg" role="37wK5m">
                                  <node concept="ZC_QK" id="4s_lMmH67ws" role="2tJFKM">
                                    <ref role="2aWVGs" to="kqnc:24Vro6cM_J$" resolve="ConversionMain" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="4s_lMmHg7mN" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4s_lMmHg7mO" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4s_lMmH627R" role="3uHU7B">
                  <node concept="2OqwBi" id="4s_lMmH60ot" role="2Oq$k0">
                    <node concept="_YI3z" id="4s_lMmH6020" role="2Oq$k0" />
                    <node concept="2Rxl7S" id="4s_lMmH60FN" role="2OqNvi" />
                  </node>
                  <node concept="1mIQ4w" id="4s_lMmH62wM" role="2OqNvi">
                    <node concept="chp4Y" id="4s_lMmH62Gd" role="cj9EA">
                      <ref role="cht4Q" to="wq2x:7eGEHDlgPKk" resolve="RulesList" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4s_lMmH67Tc" role="3cqZAp">
            <node concept="3clFbS" id="4s_lMmH67Te" role="3clFbx">
              <node concept="3cpWs6" id="4s_lMmH68GC" role="3cqZAp">
                <node concept="3clFbT" id="4s_lMmH68RM" role="3cqZAk" />
              </node>
            </node>
            <node concept="3fqX7Q" id="4s_lMmH68ms" role="3clFbw">
              <node concept="37vLTw" id="4s_lMmH68xz" role="3fr31v">
                <ref role="3cqZAo" node="4s_lMmH5ZiA" resolve="extendsConvertsTo" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4s_lMmH6930" role="3cqZAp" />
          <node concept="3cpWs8" id="4s_lMmH5WNQ" role="3cqZAp">
            <node concept="3cpWsn" id="4s_lMmH5WNT" role="3cpWs9">
              <property role="TrG5h" value="matchesConvertsTo" />
              <node concept="10P_77" id="4s_lMmH5WNO" role="1tU5fm" />
              <node concept="3y3z36" id="5kd4gAC0X3J" role="33vP2m">
                <node concept="10Nm6u" id="5kd4gAC0X3K" role="3uHU7w" />
                <node concept="2OqwBi" id="5kd4gAC0X3L" role="3uHU7B">
                  <node concept="2OqwBi" id="5kd4gAC0X3M" role="2Oq$k0">
                    <node concept="2OqwBi" id="5kd4gAC0X3N" role="2Oq$k0">
                      <node concept="_YI3z" id="5kd4gACkr6S" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="5kd4gAC0X3P" role="2OqNvi">
                        <ref role="3TtcxE" to="wq2x:36tQV5AmIsU" resolve="head" />
                      </node>
                    </node>
                    <node concept="3goQfb" id="5kd4gAC0X3Q" role="2OqNvi">
                      <node concept="1bVj0M" id="5kd4gAC0X3R" role="23t8la">
                        <node concept="3clFbS" id="5kd4gAC0X3S" role="1bW5cS">
                          <node concept="3clFbF" id="5kd4gAC0X3T" role="3cqZAp">
                            <node concept="2OqwBi" id="5kd4gAC0X3U" role="3clFbG">
                              <node concept="37vLTw" id="5kd4gAC0X3V" role="2Oq$k0">
                                <ref role="3cqZAo" node="5kd4gAC0X40" resolve="it" />
                              </node>
                              <node concept="2Rf3mk" id="5kd4gAC0X3W" role="2OqNvi">
                                <node concept="1xMEDy" id="5kd4gAC0X3X" role="1xVPHs">
                                  <node concept="chp4Y" id="5kd4gAC0X3Y" role="ri$Ld">
                                    <ref role="cht4Q" to="wq2x:6p0DfM0ang5" resolve="UserConstraint" />
                                  </node>
                                </node>
                                <node concept="1xIGOp" id="5kd4gAC0X3Z" role="1xVPHs" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="5kd4gAC0X40" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5kd4gAC0X41" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1z4cxt" id="5kd4gAC0X42" role="2OqNvi">
                    <node concept="1bVj0M" id="5kd4gAC0X43" role="23t8la">
                      <node concept="3clFbS" id="5kd4gAC0X44" role="1bW5cS">
                        <node concept="3clFbF" id="5kd4gAC0X45" role="3cqZAp">
                          <node concept="2OqwBi" id="5kd4gAC0X46" role="3clFbG">
                            <node concept="liA8E" id="5kd4gAC0X47" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                              <node concept="2tJFMh" id="5kd4gAC0X48" role="37wK5m">
                                <node concept="ZC_QK" id="5kd4gAC0X49" role="2tJFKM">
                                  <ref role="2aWVGs" to="kqnc:2i6cuYQZkwQ" resolve="Conversions" />
                                  <node concept="ZC_QK" id="5kd4gAC0X4a" role="2aWVGa">
                                    <ref role="2aWVGs" to="kqnc:3Qp4N06bUPu" resolve="defaultConvertsTo" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2JrnkZ" id="5kd4gAC0X4b" role="2Oq$k0">
                              <node concept="2OqwBi" id="5kd4gAC0X4c" role="2JrQYb">
                                <node concept="2OqwBi" id="5kd4gAC0X4d" role="2Oq$k0">
                                  <node concept="37vLTw" id="5kd4gAC0X4e" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5kd4gAC0X4h" resolve="it" />
                                  </node>
                                  <node concept="3TrEf2" id="5kd4gAC0X4f" role="2OqNvi">
                                    <ref role="3Tt5mk" to="wq2x:6p0DfM0aywA" resolve="template" />
                                  </node>
                                </node>
                                <node concept="iZEcu" id="5kd4gAC0X4g" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5kd4gAC0X4h" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5kd4gAC0X4i" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4s_lMmH69Rp" role="3cqZAp">
            <node concept="37vLTw" id="4s_lMmH6a3O" role="3cqZAk">
              <ref role="3cqZAo" node="4s_lMmH5WNT" resolve="matchesConvertsTo" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

