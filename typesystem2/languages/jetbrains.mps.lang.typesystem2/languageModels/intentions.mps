<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0b4fa908-1136-4415-a93b-4106c8eb77b5(jetbrains.mps.lang.typesystem2.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="0" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="3" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="3" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="hy7p" ref="r:01ee26d6-df00-4ffb-931c-1ddec5984886(jetbrains.mps.lang.typesystem2.util)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
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
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
  <node concept="2S6QgY" id="1CgWc1TyAgc">
    <property role="TrG5h" value="AddComment" />
    <property role="3GE5qa" value="comment" />
    <ref role="2ZfgGC" to="wq2x:1CgWc1Tyjkz" resolve="ICanBeCommented" />
    <node concept="2S6ZIM" id="1CgWc1TyAgd" role="2ZfVej">
      <node concept="3clFbS" id="1CgWc1TyAge" role="2VODD2">
        <node concept="3clFbF" id="1CgWc1TyBK7" role="3cqZAp">
          <node concept="Xl_RD" id="1CgWc1TyBK6" role="3clFbG">
            <property role="Xl_RC" value="Add Comment" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="1CgWc1TyAgf" role="2ZfgGD">
      <node concept="3clFbS" id="1CgWc1TyAgg" role="2VODD2">
        <node concept="3clFbF" id="1CgWc1TyCcx" role="3cqZAp">
          <node concept="37vLTI" id="1CgWc1TyCPf" role="3clFbG">
            <node concept="2OqwBi" id="1CgWc1TyCdB" role="37vLTJ">
              <node concept="2Sf5sV" id="1CgWc1TyCcw" role="2Oq$k0" />
              <node concept="3CFZ6_" id="1CgWc1TyCjs" role="2OqNvi">
                <node concept="3CFYIy" id="1CgWc1TyCkq" role="3CFYIz">
                  <ref role="3CFYIx" to="wq2x:1CgWc1Tyjkw" resolve="Comment" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="17H9dI4GPaP" role="37vLTx">
              <node concept="2fJWfE" id="17H9dI4GQc3" role="2ShVmc">
                <node concept="3Tqbb2" id="17H9dI4GQc5" role="3zrR0E">
                  <ref role="ehGHo" to="wq2x:1CgWc1Tyjkw" resolve="Comment" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="1j288BfpBGP" role="2ZfVeh">
      <node concept="3clFbS" id="1j288BfpBGQ" role="2VODD2">
        <node concept="3clFbF" id="1j288BfpBVz" role="3cqZAp">
          <node concept="2OqwBi" id="1j288BfpCqk" role="3clFbG">
            <node concept="2OqwBi" id="1j288BfpBZr" role="2Oq$k0">
              <node concept="2Sf5sV" id="1j288BfpBVy" role="2Oq$k0" />
              <node concept="3CFZ6_" id="1j288BfpCfk" role="2OqNvi">
                <node concept="3CFYIy" id="1j288BfpClq" role="3CFYIz">
                  <ref role="3CFYIx" to="wq2x:1CgWc1Tyjkw" resolve="Comment" />
                </node>
              </node>
            </node>
            <node concept="3w_OXm" id="1j288BfpCLU" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="4sSe4$p4oTF">
    <property role="3GE5qa" value="logical" />
    <property role="TrG5h" value="LogicalVariable_specifyValue" />
    <ref role="2ZfgGC" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariableReference" />
    <node concept="2S6ZIM" id="4sSe4$p4oTG" role="2ZfVej">
      <node concept="3clFbS" id="4sSe4$p4oTH" role="2VODD2">
        <node concept="3clFbF" id="4sSe4$p4p2B" role="3cqZAp">
          <node concept="Xl_RD" id="4sSe4$p4p2A" role="3clFbG">
            <property role="Xl_RC" value="Specify Value" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4sSe4$p4oTI" role="2ZfgGD">
      <node concept="3clFbS" id="4sSe4$p4oTJ" role="2VODD2">
        <node concept="3cpWs8" id="4sSe4$p4w5F" role="3cqZAp">
          <node concept="3cpWsn" id="4sSe4$p4w5G" role="3cpWs9">
            <property role="TrG5h" value="alv" />
            <node concept="3Tqbb2" id="4sSe4$p4w5D" role="1tU5fm">
              <ref role="ehGHo" to="5j4j:4sSe4$p4oOM" resolve="AssignedLogicalVariable" />
            </node>
            <node concept="2ShNRf" id="4sSe4$p4w5H" role="33vP2m">
              <node concept="3zrR0B" id="4sSe4$p4w5I" role="2ShVmc">
                <node concept="3Tqbb2" id="4sSe4$p4w5J" role="3zrR0E">
                  <ref role="ehGHo" to="5j4j:4sSe4$p4oOM" resolve="AssignedLogicalVariable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4sSe4$p4FXc" role="3cqZAp">
          <node concept="2OqwBi" id="4sSe4$p4G3j" role="3clFbG">
            <node concept="2Sf5sV" id="4sSe4$p4FXa" role="2Oq$k0" />
            <node concept="1P9Npp" id="4sSe4$p4Ggq" role="2OqNvi">
              <node concept="37vLTw" id="4sSe4$p4Gl8" role="1P9ThW">
                <ref role="3cqZAo" node="4sSe4$p4w5G" resolve="alv" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4sSe4$p4vIY" role="3cqZAp">
          <node concept="37vLTI" id="4sSe4$p4wuf" role="3clFbG">
            <node concept="2OqwBi" id="4sSe4$p4wBZ" role="37vLTx">
              <node concept="2Sf5sV" id="4sSe4$p4wyl" role="2Oq$k0" />
              <node concept="3YRAZt" id="4sSe4$p4wJS" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="4sSe4$p4we2" role="37vLTJ">
              <node concept="37vLTw" id="4sSe4$p4w5K" role="2Oq$k0">
                <ref role="3cqZAo" node="4sSe4$p4w5G" resolve="alv" />
              </node>
              <node concept="3TrEf2" id="4sSe4$p4wkM" role="2OqNvi">
                <ref role="3Tt5mk" to="5j4j:4sSe4$p4oON" resolve="variable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4sSe4$p4wSN" role="3cqZAp">
          <node concept="37vLTI" id="4sSe4$p4xi2" role="3clFbG">
            <node concept="2ShNRf" id="4sSe4$p4xmN" role="37vLTx">
              <node concept="3zrR0B" id="4sSe4$p4xmL" role="2ShVmc">
                <node concept="3Tqbb2" id="4sSe4$p4xmM" role="3zrR0E">
                  <ref role="ehGHo" to="5j4j:7E86$tKskWj" resolve="LogicalValue" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4sSe4$p4wYQ" role="37vLTJ">
              <node concept="37vLTw" id="4sSe4$p4wSL" role="2Oq$k0">
                <ref role="3cqZAo" node="4sSe4$p4w5G" resolve="alv" />
              </node>
              <node concept="3TrEf2" id="4sSe4$p4x9l" role="2OqNvi">
                <ref role="3Tt5mk" to="5j4j:4sSe4$p4oOP" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="4sSe4$p4paM" role="2ZfVeh">
      <node concept="3clFbS" id="4sSe4$p4paN" role="2VODD2">
        <node concept="3SKdUt" id="4sSe4$p4t4D" role="3cqZAp">
          <node concept="3SKdUq" id="4sSe4$p4t4F" role="3SKWNk">
            <property role="3SKdUp" value="applicable to logical variables in user constraints within rule's head block" />
          </node>
        </node>
        <node concept="3clFbF" id="4sSe4$p4rMM" role="3cqZAp">
          <node concept="1Wc70l" id="4sSe4$p4s9Q" role="3clFbG">
            <node concept="2OqwBi" id="4sSe4$p4sDs" role="3uHU7w">
              <node concept="2OqwBi" id="4sSe4$p4sje" role="2Oq$k0">
                <node concept="2Sf5sV" id="4sSe4$p4sd_" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4sSe4$p4sv3" role="2OqNvi">
                  <node concept="1xMEDy" id="4sSe4$p4sv5" role="1xVPHs">
                    <node concept="chp4Y" id="4sSe4$p4szo" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:6p0DfM0a3gA" resolve="Head" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="4sSe4$p4sQk" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="euG2bFdjgp" role="3uHU7B">
              <node concept="2OqwBi" id="euG2bFdiKy" role="2Oq$k0">
                <node concept="2Sf5sV" id="euG2bFdiy_" role="2Oq$k0" />
                <node concept="1mfA1w" id="euG2bFdiWG" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="euG2bFdjAR" role="2OqNvi">
                <node concept="chp4Y" id="euG2bFdjPP" role="cj9EA">
                  <ref role="cht4Q" to="wq2x:6p0DfM0ang5" resolve="UserConstraint" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

