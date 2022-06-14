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
    <import index="kz9k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.navigation(MPS.Editor/)" />
    <import index="tp3r" ref="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.coderules.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1194033889146" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1XNTG" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
      <concept id="8182547171709614739" name="jetbrains.mps.lang.quotation.structure.NodeBuilderRef" flags="nn" index="36bGnv">
        <reference id="8182547171709614741" name="target" index="36bGnp" />
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
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
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
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
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
  <node concept="2S6QgY" id="6TxWhgA$oXO">
    <property role="3GE5qa" value="typeTerm" />
    <property role="TrG5h" value="ConvertToTypeTermTable" />
    <ref role="2ZfgGC" to="wq2x:JOGAOsxaCw" resolve="TermTable" />
    <node concept="2S6ZIM" id="6TxWhgA$oXP" role="2ZfVej">
      <node concept="3clFbS" id="6TxWhgA$oXQ" role="2VODD2">
        <node concept="3clFbF" id="6TxWhgA$pFF" role="3cqZAp">
          <node concept="Xl_RD" id="6TxWhgA$pFE" role="3clFbG">
            <property role="Xl_RC" value="Convert to Type Term Table" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6TxWhgA$oXR" role="2ZfgGD">
      <node concept="3clFbS" id="6TxWhgA$oXS" role="2VODD2">
        <node concept="1DcWWT" id="6TxWhgA$x9y" role="3cqZAp">
          <node concept="3clFbS" id="6TxWhgA$x9_" role="2LFqv$">
            <node concept="3cpWs8" id="6TxWhgA$zYh" role="3cqZAp">
              <node concept="3cpWsn" id="6TxWhgA$zYi" role="3cpWs9">
                <property role="TrG5h" value="ttd" />
                <node concept="3Tqbb2" id="6TxWhgA$zYj" role="1tU5fm">
                  <ref role="ehGHo" to="zfi7:6wBZuQUFd0b" resolve="TypeTermDeclaration" />
                </node>
                <node concept="2ShNRf" id="6TxWhgA$zYk" role="33vP2m">
                  <node concept="3zrR0B" id="6TxWhgA$zYl" role="2ShVmc">
                    <node concept="3Tqbb2" id="6TxWhgA$zYm" role="3zrR0E">
                      <ref role="ehGHo" to="zfi7:6wBZuQUFd0b" resolve="TypeTermDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6TxWhgA$zYn" role="3cqZAp">
              <node concept="37vLTI" id="6TxWhgA$zYo" role="3clFbG">
                <node concept="2OqwBi" id="6TxWhgA$zYp" role="37vLTx">
                  <node concept="37vLTw" id="6TxWhgAAXCY" role="2Oq$k0">
                    <ref role="3cqZAo" node="6TxWhgA$x9A" resolve="n" />
                  </node>
                  <node concept="3TrcHB" id="6TxWhgA$zYr" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6TxWhgA$zYs" role="37vLTJ">
                  <node concept="37vLTw" id="6TxWhgA$zYt" role="2Oq$k0">
                    <ref role="3cqZAo" node="6TxWhgA$zYi" resolve="ttd" />
                  </node>
                  <node concept="3TrcHB" id="6TxWhgA$zYu" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6TxWhgA$zYv" role="3cqZAp">
              <node concept="37vLTI" id="6TxWhgA$zYw" role="3clFbG">
                <node concept="2OqwBi" id="6TxWhgA$zYx" role="37vLTx">
                  <node concept="2OqwBi" id="6TxWhgA$zYy" role="2Oq$k0">
                    <node concept="37vLTw" id="6TxWhgA$_E2" role="2Oq$k0">
                      <ref role="3cqZAo" node="6TxWhgA$x9A" resolve="n" />
                    </node>
                    <node concept="3TrEf2" id="6TxWhgA$zY$" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:JOGAOsxaCc" resolve="template" />
                    </node>
                  </node>
                  <node concept="3YRAZt" id="6TxWhgA$zY_" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="6TxWhgA$zYA" role="37vLTJ">
                  <node concept="37vLTw" id="6TxWhgA$zYB" role="2Oq$k0">
                    <ref role="3cqZAo" node="6TxWhgA$zYi" resolve="ttd" />
                  </node>
                  <node concept="3TrEf2" id="6TxWhgA$zYC" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:JOGAOsxaCc" resolve="template" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6TxWhgA$zYD" role="3cqZAp">
              <node concept="2OqwBi" id="6TxWhgA$zYE" role="3clFbG">
                <node concept="2OqwBi" id="6TxWhgA$zYF" role="2Oq$k0">
                  <node concept="37vLTw" id="6TxWhgA$zYG" role="2Oq$k0">
                    <ref role="3cqZAo" node="6TxWhgA$zYi" resolve="ttd" />
                  </node>
                  <node concept="3TrEf2" id="6TxWhgA$zYH" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:JOGAOsxaCh" resolve="prototype" />
                  </node>
                </node>
                <node concept="2oxUTD" id="6TxWhgA$zYI" role="2OqNvi">
                  <node concept="2OqwBi" id="6TxWhgA$zYJ" role="2oxUTC">
                    <node concept="3TrEf2" id="6TxWhgA$zYL" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:JOGAOsxaCh" resolve="prototype" />
                    </node>
                    <node concept="37vLTw" id="6TxWhgA$D2V" role="2Oq$k0">
                      <ref role="3cqZAo" node="6TxWhgA$x9A" resolve="n" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6TxWhgA$DhZ" role="3cqZAp">
              <node concept="3clFbS" id="6TxWhgA$Di0" role="3clFbx">
                <node concept="3clFbF" id="6TxWhgA$Di1" role="3cqZAp">
                  <node concept="2OqwBi" id="6TxWhgA$Di2" role="3clFbG">
                    <node concept="2OqwBi" id="6TxWhgA$Di3" role="2Oq$k0">
                      <node concept="37vLTw" id="6TxWhgA$Di4" role="2Oq$k0">
                        <ref role="3cqZAo" node="6TxWhgA$zYi" resolve="ttd" />
                      </node>
                      <node concept="3TrEf2" id="6TxWhgA$Di5" role="2OqNvi">
                        <ref role="3Tt5mk" to="zfi7:6wBZuQUG3fi" resolve="builder" />
                      </node>
                    </node>
                    <node concept="2oxUTD" id="6TxWhgA$Di6" role="2OqNvi">
                      <node concept="2pJPEk" id="6TxWhgA$Di7" role="2oxUTC">
                        <node concept="2pJPED" id="6TxWhgA$Di8" role="2pJPEn">
                          <ref role="2pJxaS" to="zfi7:6wBZuQUG1yn" resolve="TypeNodeBuilder" />
                          <node concept="2pIpSj" id="6TxWhgA$Di9" role="2pJxcM">
                            <ref role="2pIpSl" to="zfi7:6wBZuQUG57q" resolve="body" />
                            <node concept="2pJPED" id="6TxWhgAAPBb" role="28nt2d">
                              <ref role="2pJxaS" to="tp3r:4IP40Bi2$Et" resolve="NodeBuilder" />
                              <node concept="2pIpSj" id="6TxWhgAAPEm" role="2pJxcM">
                                <ref role="2pIpSl" to="tp3r:4IP40Bi2$Eu" resolve="quotedNode" />
                                <node concept="2pJPED" id="6TxWhgAAPGu" role="28nt2d">
                                  <ref role="2pJxaS" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                                  <node concept="2pIpSj" id="6TxWhgAAPGN" role="2pJxcM">
                                    <ref role="2pIpSl" to="tp3r:4IP40Bi2KaL" resolve="concept" />
                                    <node concept="36bGnv" id="6TxWhgAAPSm" role="28nt2d">
                                      <ref role="36bGnp" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6TxWhgA$Dic" role="3cqZAp" />
              </node>
              <node concept="3fqX7Q" id="6TxWhgA$Did" role="3clFbw">
                <node concept="2OqwBi" id="6TxWhgA$Die" role="3fr31v">
                  <node concept="3TrcHB" id="6TxWhgA$Dig" role="2OqNvi">
                    <ref role="3TsBF5" to="wq2x:4vr5SApqc6O" resolve="open" />
                  </node>
                  <node concept="37vLTw" id="6TxWhgA$Dsc" role="2Oq$k0">
                    <ref role="3cqZAo" node="6TxWhgA$x9A" resolve="n" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="6TxWhgA$Dih" role="9aQIa">
                <node concept="3clFbS" id="6TxWhgA$Dii" role="9aQI4">
                  <node concept="3clFbF" id="6TxWhgA$Dij" role="3cqZAp">
                    <node concept="37vLTI" id="6TxWhgA$Dik" role="3clFbG">
                      <node concept="3clFbT" id="6TxWhgA$Dil" role="37vLTx">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="2OqwBi" id="6TxWhgA$Dim" role="37vLTJ">
                        <node concept="37vLTw" id="6TxWhgA$Din" role="2Oq$k0">
                          <ref role="3cqZAo" node="6TxWhgA$zYi" resolve="ttd" />
                        </node>
                        <node concept="3TrcHB" id="6TxWhgA$Dio" role="2OqNvi">
                          <ref role="3TsBF5" to="wq2x:4vr5SApqc6O" resolve="open" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6TxWhgA$DJz" role="3cqZAp">
              <node concept="2OqwBi" id="6TxWhgA$DJ$" role="3clFbG">
                <node concept="liA8E" id="6TxWhgA$DJ_" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SNode.setId(org.jetbrains.mps.openapi.model.SNodeId)" resolve="setId" />
                  <node concept="2OqwBi" id="6TxWhgA$DJA" role="37wK5m">
                    <node concept="2JrnkZ" id="6TxWhgA$DJB" role="2Oq$k0">
                      <node concept="37vLTw" id="6TxWhgA_1Xh" role="2JrQYb">
                        <ref role="3cqZAo" node="6TxWhgA$x9A" resolve="n" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6TxWhgA$DJD" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="6TxWhgA$DJE" role="2Oq$k0">
                  <node concept="10QFUN" id="6TxWhgA$DJF" role="1eOMHV">
                    <node concept="3uibUv" id="6TxWhgA$DJG" role="10QFUM">
                      <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2JrnkZ" id="6TxWhgA$DJH" role="10QFUP">
                      <node concept="37vLTw" id="6TxWhgA$DJI" role="2JrQYb">
                        <ref role="3cqZAo" node="6TxWhgA$zYi" resolve="ttd" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5ij6i2UBq6z" role="3cqZAp">
              <node concept="2OqwBi" id="5ij6i2UBqg0" role="3clFbG">
                <node concept="37vLTw" id="5ij6i2UBq6x" role="2Oq$k0">
                  <ref role="3cqZAo" node="6TxWhgA$x9A" resolve="n" />
                </node>
                <node concept="1P9Npp" id="5ij6i2UBqxv" role="2OqNvi">
                  <node concept="37vLTw" id="5ij6i2UBqy6" role="1P9ThW">
                    <ref role="3cqZAo" node="6TxWhgA$zYi" resolve="ttd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6TxWhgA$x9A" role="1Duv9x">
            <property role="TrG5h" value="n" />
            <node concept="3Tqbb2" id="6TxWhgA$_XN" role="1tU5fm">
              <ref role="ehGHo" to="wq2x:JOGAOsxaC9" resolve="TermDeclaration" />
            </node>
          </node>
          <node concept="2ShNRf" id="6TxWhgA$NwG" role="1DdaDG">
            <node concept="Tc6Ow" id="6TxWhgA$OuP" role="2ShVmc">
              <node concept="3Tqbb2" id="6TxWhgA$PnI" role="HW$YZ">
                <ref role="ehGHo" to="wq2x:JOGAOsxaC9" resolve="TermDeclaration" />
              </node>
              <node concept="2OqwBi" id="6TxWhgA$TrN" role="I$8f6">
                <node concept="2Sf5sV" id="6TxWhgA$Sgs" role="2Oq$k0" />
                <node concept="3Tsc0h" id="6TxWhgA$V0v" role="2OqNvi">
                  <ref role="3TtcxE" to="wq2x:JOGAOsxaCx" resolve="contents" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5ij6i2UDxMJ" role="3cqZAp" />
        <node concept="3cpWs8" id="6TxWhgA$t5o" role="3cqZAp">
          <node concept="3cpWsn" id="6TxWhgA$t5p" role="3cpWs9">
            <property role="TrG5h" value="ttt" />
            <node concept="3Tqbb2" id="6TxWhgA$t58" role="1tU5fm">
              <ref role="ehGHo" to="zfi7:6wBZuQUF2vT" resolve="TypeTermTable" />
            </node>
            <node concept="2ShNRf" id="6TxWhgA$t5q" role="33vP2m">
              <node concept="3zrR0B" id="6TxWhgA$t5r" role="2ShVmc">
                <node concept="3Tqbb2" id="6TxWhgA$t5s" role="3zrR0E">
                  <ref role="ehGHo" to="zfi7:6wBZuQUF2vT" resolve="TypeTermTable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6TxWhgA$rz$" role="3cqZAp">
          <node concept="37vLTI" id="6TxWhgA$tQC" role="3clFbG">
            <node concept="2OqwBi" id="6TxWhgA$tZT" role="37vLTx">
              <node concept="2Sf5sV" id="6TxWhgA$tR5" role="2Oq$k0" />
              <node concept="3TrcHB" id="6TxWhgA$ubM" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2OqwBi" id="6TxWhgA$tfG" role="37vLTJ">
              <node concept="37vLTw" id="6TxWhgA$t5t" role="2Oq$k0">
                <ref role="3cqZAo" node="6TxWhgA$t5p" resolve="ttt" />
              </node>
              <node concept="3TrcHB" id="6TxWhgA$tt7" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6TxWhgA_0H_" role="3cqZAp">
          <node concept="2OqwBi" id="6TxWhgA_0HA" role="3clFbG">
            <node concept="liA8E" id="6TxWhgA_0HB" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~SNode.setId(org.jetbrains.mps.openapi.model.SNodeId)" resolve="setId" />
              <node concept="2OqwBi" id="6TxWhgA_0HC" role="37wK5m">
                <node concept="2JrnkZ" id="6TxWhgA_0HD" role="2Oq$k0">
                  <node concept="2Sf5sV" id="6TxWhgA_0HE" role="2JrQYb" />
                </node>
                <node concept="liA8E" id="6TxWhgA_0HF" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="6TxWhgA_0HG" role="2Oq$k0">
              <node concept="10QFUN" id="6TxWhgA_0HH" role="1eOMHV">
                <node concept="3uibUv" id="6TxWhgA_0HI" role="10QFUM">
                  <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
                </node>
                <node concept="2JrnkZ" id="6TxWhgA_0HJ" role="10QFUP">
                  <node concept="37vLTw" id="6TxWhgA_0HK" role="2JrQYb">
                    <ref role="3cqZAo" node="6TxWhgA$t5p" resolve="ttt" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5ij6i2UBQkN" role="3cqZAp">
          <node concept="3clFbS" id="5ij6i2UBQkQ" role="2LFqv$">
            <node concept="3clFbF" id="5ij6i2UBTTb" role="3cqZAp">
              <node concept="2OqwBi" id="5ij6i2UBWxW" role="3clFbG">
                <node concept="2OqwBi" id="5ij6i2UBU2w" role="2Oq$k0">
                  <node concept="37vLTw" id="5ij6i2UBTTa" role="2Oq$k0">
                    <ref role="3cqZAo" node="6TxWhgA$t5p" resolve="ttt" />
                  </node>
                  <node concept="3Tsc0h" id="5ij6i2UBUtI" role="2OqNvi">
                    <ref role="3TtcxE" to="zfi7:6wBZuQUF99Q" resolve="contents" />
                  </node>
                </node>
                <node concept="TSZUe" id="5ij6i2UBZAG" role="2OqNvi">
                  <node concept="10QFUN" id="5ij6i2UC0NB" role="25WWJ7">
                    <node concept="2OqwBi" id="5ij6i2UC0N$" role="10QFUP">
                      <node concept="37vLTw" id="5ij6i2UC0N_" role="2Oq$k0">
                        <ref role="3cqZAo" node="5ij6i2UBQkR" resolve="n" />
                      </node>
                      <node concept="3YRAZt" id="5ij6i2UC0NA" role="2OqNvi" />
                    </node>
                    <node concept="3Tqbb2" id="5ij6i2UC1ar" role="10QFUM">
                      <ref role="ehGHo" to="zfi7:6wBZuQUFd0b" resolve="TypeTermDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5ij6i2UBQkR" role="1Duv9x">
            <property role="TrG5h" value="n" />
            <node concept="3Tqbb2" id="5ij6i2UBQkV" role="1tU5fm">
              <ref role="ehGHo" to="wq2x:JOGAOsxaC9" resolve="TermDeclaration" />
            </node>
          </node>
          <node concept="2ShNRf" id="5ij6i2UBQkW" role="1DdaDG">
            <node concept="Tc6Ow" id="5ij6i2UBQkX" role="2ShVmc">
              <node concept="3Tqbb2" id="5ij6i2UBQkY" role="HW$YZ">
                <ref role="ehGHo" to="wq2x:JOGAOsxaC9" resolve="TermDeclaration" />
              </node>
              <node concept="2OqwBi" id="5ij6i2UBQkZ" role="I$8f6">
                <node concept="2Sf5sV" id="5ij6i2UBQl0" role="2Oq$k0" />
                <node concept="3Tsc0h" id="5ij6i2UBQl1" role="2OqNvi">
                  <ref role="3TtcxE" to="wq2x:JOGAOsxaCx" resolve="contents" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5ij6i2UDi_K" role="3cqZAp">
          <node concept="3cpWsn" id="5ij6i2UDi_L" role="3cpWs9">
            <property role="TrG5h" value="replaceWith" />
            <node concept="3Tqbb2" id="5ij6i2UDfXT" role="1tU5fm">
              <ref role="ehGHo" to="zfi7:6wBZuQUF2vT" resolve="TypeTermTable" />
            </node>
            <node concept="2OqwBi" id="5ij6i2UDi_M" role="33vP2m">
              <node concept="2Sf5sV" id="5ij6i2UDi_N" role="2Oq$k0" />
              <node concept="1P9Npp" id="5ij6i2UDi_O" role="2OqNvi">
                <node concept="37vLTw" id="5ij6i2UDi_P" role="1P9ThW">
                  <ref role="3cqZAo" node="6TxWhgA$t5p" resolve="ttt" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5ij6i2UDzZ9" role="3cqZAp" />
        <node concept="3cpWs8" id="5ij6i2UCXNG" role="3cqZAp">
          <node concept="3cpWsn" id="5ij6i2UCXNH" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5ij6i2UCX87" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="5ij6i2UCXNI" role="33vP2m">
              <node concept="2OqwBi" id="5ij6i2UCXNJ" role="2Oq$k0">
                <node concept="1XNTG" id="5ij6i2UCXNK" role="2Oq$k0" />
                <node concept="liA8E" id="5ij6i2UCXNL" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext()" resolve="getOperationContext" />
                </node>
              </node>
              <node concept="liA8E" id="5ij6i2UCXNM" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~IOperationContext.getProject()" resolve="getProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6TxWhgA_RDt" role="3cqZAp">
          <node concept="3cpWsn" id="6TxWhgA_RDu" role="3cpWs9">
            <property role="TrG5h" value="editor" />
            <node concept="3uibUv" id="6TxWhgA_NjD" role="1tU5fm">
              <ref role="3uigEE" to="cj4x:~Editor" resolve="Editor" />
            </node>
            <node concept="2OqwBi" id="6TxWhgA_RDv" role="33vP2m">
              <node concept="2YIFZM" id="6TxWhgA_RDw" role="2Oq$k0">
                <ref role="37wK5l" to="kz9k:~NavigationSupport.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="kz9k:~NavigationSupport" resolve="NavigationSupport" />
              </node>
              <node concept="liA8E" id="6TxWhgA_RDx" role="2OqNvi">
                <ref role="37wK5l" to="kz9k:~NavigationSupport.openNode(jetbrains.mps.project.Project,org.jetbrains.mps.openapi.model.SNode,boolean,boolean)" resolve="openNode" />
                <node concept="37vLTw" id="5ij6i2UCXNN" role="37wK5m">
                  <ref role="3cqZAo" node="5ij6i2UCXNH" resolve="project" />
                </node>
                <node concept="37vLTw" id="6TxWhgA_RDB" role="37wK5m">
                  <ref role="3cqZAo" node="5ij6i2UDi_L" resolve="replaceWith" />
                </node>
                <node concept="3clFbT" id="6TxWhgA_RDC" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="3clFbT" id="6TxWhgA_RDD" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6TxWhgA_mcf" role="3cqZAp">
          <node concept="2OqwBi" id="6TxWhgA_TGe" role="3clFbG">
            <node concept="2OqwBi" id="6TxWhgA_TjY" role="2Oq$k0">
              <node concept="37vLTw" id="6TxWhgA_RDE" role="2Oq$k0">
                <ref role="3cqZAo" node="6TxWhgA_RDu" resolve="editor" />
              </node>
              <node concept="liA8E" id="6TxWhgA_T_V" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~Editor.getEditorContext()" resolve="getEditorContext" />
              </node>
            </node>
            <node concept="liA8E" id="6TxWhgA_TTp" role="2OqNvi">
              <ref role="37wK5l" to="cj4x:~EditorContext.selectWRTFocusPolicy(org.jetbrains.mps.openapi.model.SNode)" resolve="selectWRTFocusPolicy" />
              <node concept="37vLTw" id="6TxWhgA_TVm" role="37wK5m">
                <ref role="3cqZAo" node="5ij6i2UDi_L" resolve="replaceWith" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="6TxWhgA$pNs" role="2ZfVeh">
      <node concept="3clFbS" id="6TxWhgA$pNt" role="2VODD2">
        <node concept="3clFbF" id="6TxWhgA$pRx" role="3cqZAp">
          <node concept="1Wc70l" id="6TxWhgAA7eZ" role="3clFbG">
            <node concept="3clFbC" id="6TxWhgAA83G" role="3uHU7B">
              <node concept="10Nm6u" id="6TxWhgAA83S" role="3uHU7w" />
              <node concept="2OqwBi" id="6TxWhgAA7vh" role="3uHU7B">
                <node concept="2Sf5sV" id="6TxWhgAA7gu" role="2Oq$k0" />
                <node concept="1mfA1w" id="6TxWhgAA7Ur" role="2OqNvi" />
              </node>
            </node>
            <node concept="2OqwBi" id="6TxWhgA$qLo" role="3uHU7w">
              <node concept="2OqwBi" id="6TxWhgA$q5W" role="2Oq$k0">
                <node concept="2Sf5sV" id="6TxWhgA$pRw" role="2Oq$k0" />
                <node concept="2yIwOk" id="6TxWhgA$qtB" role="2OqNvi" />
              </node>
              <node concept="3O6GUB" id="6TxWhgA$raf" role="2OqNvi">
                <node concept="chp4Y" id="6TxWhgA$riC" role="3QVz_e">
                  <ref role="cht4Q" to="wq2x:JOGAOsxaCw" resolve="TermTable" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

