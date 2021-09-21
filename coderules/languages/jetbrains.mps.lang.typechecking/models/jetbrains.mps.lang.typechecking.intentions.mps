<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8de5be67-6245-4092-8e75-6ac2abbea9d3(jetbrains.mps.lang.typechecking.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="1" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="zfi7" ref="r:39840d4e-f61c-4452-88c5-75b1eb10e892(jetbrains.mps.lang.typechecking.structure)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="bbgb" ref="r:3189948c-a57a-415e-beba-405572f2d13c(jetbrains.mps.ide.findusages.model.scopes)" />
    <import index="mk8z" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.progress(MPS.Core/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.coderules.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795771125" name="jetbrains.mps.lang.intentions.structure.IsApplicableBlock" flags="in" index="2SaL7w" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093995" name="isApplicableFunction" index="2ZfVeh" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2S6QgY" id="4qGA5WCHkjP">
    <property role="3GE5qa" value="typeTerm" />
    <property role="TrG5h" value="ConvertToTypeTerm" />
    <ref role="2ZfgGC" to="wq2x:JOGAOsxaC9" resolve="TermDeclaration" />
    <node concept="2S6ZIM" id="4qGA5WCHkjQ" role="2ZfVej">
      <node concept="3clFbS" id="4qGA5WCHkjR" role="2VODD2">
        <node concept="3clFbF" id="4qGA5WCHl4S" role="3cqZAp">
          <node concept="Xl_RD" id="4qGA5WCHl4R" role="3clFbG">
            <property role="Xl_RC" value="Convert to Type Term Declaration" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4qGA5WCHkjS" role="2ZfgGD">
      <node concept="3clFbS" id="4qGA5WCHkjT" role="2VODD2">
        <node concept="3cpWs8" id="4qGA5WCHsVW" role="3cqZAp">
          <node concept="3cpWsn" id="4qGA5WCHsVX" role="3cpWs9">
            <property role="TrG5h" value="ttd" />
            <node concept="3Tqbb2" id="4qGA5WCHsQ0" role="1tU5fm">
              <ref role="ehGHo" to="zfi7:6wBZuQUFd0b" resolve="TypeTermDeclaration" />
            </node>
            <node concept="2ShNRf" id="4qGA5WCHsVY" role="33vP2m">
              <node concept="3zrR0B" id="4qGA5WCHsVZ" role="2ShVmc">
                <node concept="3Tqbb2" id="4qGA5WCHsW0" role="3zrR0E">
                  <ref role="ehGHo" to="zfi7:6wBZuQUFd0b" resolve="TypeTermDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qGA5WCH_AE" role="3cqZAp">
          <node concept="37vLTI" id="4qGA5WCHArZ" role="3clFbG">
            <node concept="2OqwBi" id="4qGA5WCHAAu" role="37vLTx">
              <node concept="2Sf5sV" id="4qGA5WCHAtE" role="2Oq$k0" />
              <node concept="3TrcHB" id="4qGA5WCHANV" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2OqwBi" id="4qGA5WCH_Nb" role="37vLTJ">
              <node concept="37vLTw" id="4qGA5WCH_AC" role="2Oq$k0">
                <ref role="3cqZAo" node="4qGA5WCHsVX" resolve="ttd" />
              </node>
              <node concept="3TrcHB" id="4qGA5WCHA21" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qGA5WCHqEX" role="3cqZAp">
          <node concept="37vLTI" id="4qGA5WCHtQ_" role="3clFbG">
            <node concept="2OqwBi" id="4qGA5WCHuu9" role="37vLTx">
              <node concept="2OqwBi" id="4qGA5WCHu38" role="2Oq$k0">
                <node concept="2Sf5sV" id="4qGA5WCHtSo" role="2Oq$k0" />
                <node concept="3TrEf2" id="4qGA5WCHuoX" role="2OqNvi">
                  <ref role="3Tt5mk" to="wq2x:JOGAOsxaCc" resolve="template" />
                </node>
              </node>
              <node concept="3YRAZt" id="4qGA5WCHuLI" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="4qGA5WCHtmx" role="37vLTJ">
              <node concept="37vLTw" id="4qGA5WCHsW1" role="2Oq$k0">
                <ref role="3cqZAo" node="4qGA5WCHsVX" resolve="ttd" />
              </node>
              <node concept="3TrEf2" id="4qGA5WCHtE6" role="2OqNvi">
                <ref role="3Tt5mk" to="wq2x:JOGAOsxaCc" resolve="template" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qGA5WCHuUa" role="3cqZAp">
          <node concept="2OqwBi" id="4qGA5WCHv_x" role="3clFbG">
            <node concept="2OqwBi" id="4qGA5WCHv4R" role="2Oq$k0">
              <node concept="37vLTw" id="4qGA5WCHuU8" role="2Oq$k0">
                <ref role="3cqZAo" node="4qGA5WCHsVX" resolve="ttd" />
              </node>
              <node concept="3TrEf2" id="4qGA5WCHvrW" role="2OqNvi">
                <ref role="3Tt5mk" to="wq2x:JOGAOsxaCh" resolve="prototype" />
              </node>
            </node>
            <node concept="2oxUTD" id="4qGA5WCHwdV" role="2OqNvi">
              <node concept="2OqwBi" id="4qGA5WCHwlV" role="2oxUTC">
                <node concept="2Sf5sV" id="4qGA5WCHwke" role="2Oq$k0" />
                <node concept="3TrEf2" id="4qGA5WCHwCK" role="2OqNvi">
                  <ref role="3Tt5mk" to="wq2x:JOGAOsxaCh" resolve="prototype" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4qGA5WCHptX" role="3cqZAp">
          <node concept="3clFbS" id="4qGA5WCHptZ" role="3clFbx">
            <node concept="3clFbF" id="4qGA5WCHqcQ" role="3cqZAp">
              <node concept="2OqwBi" id="4qGA5WCHzan" role="3clFbG">
                <node concept="2OqwBi" id="4qGA5WCHqf0" role="2Oq$k0">
                  <node concept="37vLTw" id="4qGA5WCHyKV" role="2Oq$k0">
                    <ref role="3cqZAo" node="4qGA5WCHsVX" resolve="ttd" />
                  </node>
                  <node concept="3TrEf2" id="4qGA5WCHyZo" role="2OqNvi">
                    <ref role="3Tt5mk" to="zfi7:6wBZuQUG3fi" resolve="builder" />
                  </node>
                </node>
                <node concept="2oxUTD" id="4qGA5WCHDsG" role="2OqNvi">
                  <node concept="2pJPEk" id="4qGA5WCHDFP" role="2oxUTC">
                    <node concept="2pJPED" id="4qGA5WCHDFR" role="2pJPEn">
                      <ref role="2pJxaS" to="zfi7:6wBZuQUG1yn" resolve="TypeNodeBuilder" />
                      <node concept="2pIpSj" id="4qGA5WCHF0g" role="2pJxcM">
                        <ref role="2pIpSl" to="zfi7:6wBZuQUG57q" resolve="body" />
                        <node concept="36biLy" id="4qGA5WCIHBJ" role="28nt2d">
                          <node concept="10Nm6u" id="4qGA5WCIHBH" role="36biLW" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4qGA5WCHq0s" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="4qGA5WCHq8v" role="3clFbw">
            <node concept="2OqwBi" id="4qGA5WCHq8x" role="3fr31v">
              <node concept="2Sf5sV" id="4qGA5WCHq8y" role="2Oq$k0" />
              <node concept="3TrcHB" id="4qGA5WCHq8z" role="2OqNvi">
                <ref role="3TsBF5" to="wq2x:4vr5SApqc6O" resolve="open" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4qGA5WCHwZR" role="9aQIa">
            <node concept="3clFbS" id="4qGA5WCHwZS" role="9aQI4">
              <node concept="3clFbF" id="4qGA5WCHx3x" role="3cqZAp">
                <node concept="37vLTI" id="4qGA5WCHxL8" role="3clFbG">
                  <node concept="3clFbT" id="4qGA5WCHxMM" role="37vLTx">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="2OqwBi" id="4qGA5WCHxdP" role="37vLTJ">
                    <node concept="37vLTw" id="4qGA5WCHx3w" role="2Oq$k0">
                      <ref role="3cqZAo" node="4qGA5WCHsVX" resolve="ttd" />
                    </node>
                    <node concept="3TrcHB" id="4qGA5WCHxpB" role="2OqNvi">
                      <ref role="3TsBF5" to="wq2x:4vr5SApqc6O" resolve="open" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qGA5WCI$12" role="3cqZAp">
          <node concept="2OqwBi" id="4qGA5WCI_OP" role="3clFbG">
            <node concept="liA8E" id="4qGA5WCICmw" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~SNode.setId(org.jetbrains.mps.openapi.model.SNodeId)" resolve="setId" />
              <node concept="2OqwBi" id="4qGA5WCIDH5" role="37wK5m">
                <node concept="2JrnkZ" id="4qGA5WCIDtP" role="2Oq$k0">
                  <node concept="2Sf5sV" id="4qGA5WCID1Z" role="2JrQYb" />
                </node>
                <node concept="liA8E" id="4qGA5WCIDQf" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="4qGA5WCIBOp" role="2Oq$k0">
              <node concept="10QFUN" id="4qGA5WCIBOm" role="1eOMHV">
                <node concept="3uibUv" id="4qGA5WCIC6a" role="10QFUM">
                  <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
                </node>
                <node concept="2JrnkZ" id="4qGA5WCIBOr" role="10QFUP">
                  <node concept="37vLTw" id="4qGA5WCIBOs" role="2JrQYb">
                    <ref role="3cqZAo" node="4qGA5WCHsVX" resolve="ttd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qGA5WCHnMX" role="3cqZAp">
          <node concept="2OqwBi" id="4qGA5WCHnWh" role="3clFbG">
            <node concept="2Sf5sV" id="4qGA5WCHnMW" role="2Oq$k0" />
            <node concept="1P9Npp" id="4qGA5WCHyhq" role="2OqNvi">
              <node concept="37vLTw" id="4qGA5WCHynu" role="1P9ThW">
                <ref role="3cqZAo" node="4qGA5WCHsVX" resolve="ttd" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="4qGA5WCHlK3" role="2ZfVeh">
      <node concept="3clFbS" id="4qGA5WCHlK4" role="2VODD2">
        <node concept="3clFbF" id="4qGA5WCHlPK" role="3cqZAp">
          <node concept="2OqwBi" id="4qGA5WCHmPz" role="3clFbG">
            <node concept="2OqwBi" id="4qGA5WCHm4X" role="2Oq$k0">
              <node concept="2Sf5sV" id="4qGA5WCHlPJ" role="2Oq$k0" />
              <node concept="2yIwOk" id="4qGA5WCHmsM" role="2OqNvi" />
            </node>
            <node concept="3O6GUB" id="4qGA5WCHngn" role="2OqNvi">
              <node concept="chp4Y" id="4qGA5WCHnxj" role="3QVz_e">
                <ref role="cht4Q" to="wq2x:JOGAOsxaC9" resolve="TermDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

