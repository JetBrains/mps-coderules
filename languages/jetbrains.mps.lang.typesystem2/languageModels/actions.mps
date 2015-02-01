<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:04847532-40d8-4c13-804f-12fbbdc25fa9(jetbrains.mps.lang.typesystem2.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="-1" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
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
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
      <concept id="1196433923911" name="jetbrains.mps.lang.actions.structure.SideTransform_SimpleString" flags="nn" index="2h1dTh">
        <property id="1196433942569" name="text" index="2h1i$Z" />
      </concept>
      <concept id="1196434649611" name="jetbrains.mps.lang.actions.structure.Substitute_SimpleString" flags="ng" index="2h3Zct">
        <property id="1196434851095" name="text" index="2h4Kg1" />
      </concept>
      <concept id="1177323996388" name="jetbrains.mps.lang.actions.structure.AddMenuPart" flags="ng" index="tYCnQ" />
      <concept id="1177327570013" name="jetbrains.mps.lang.actions.structure.QueryFunction_Substitute_Handler" flags="in" index="ucgPf" />
      <concept id="1177327666243" name="jetbrains.mps.lang.actions.structure.SimpleItemSubstitutePart" flags="ng" index="ucClh">
        <child id="1177327709106" name="handler" index="ucMEw" />
        <child id="1177336013307" name="matchingText" index="uGu3D" />
      </concept>
      <concept id="1177333529597" name="jetbrains.mps.lang.actions.structure.ConceptPart" flags="ng" index="uyZFJ">
        <reference id="1177333551023" name="concept" index="uz4UX" />
        <child id="1177333559040" name="part" index="uz6Si" />
      </concept>
      <concept id="1177497140107" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_sourceNode" flags="nn" index="Cj7Ep" />
      <concept id="1177498013932" name="jetbrains.mps.lang.actions.structure.SimpleSideTransformMenuPart" flags="ng" index="Cmt7Y">
        <child id="1177498166690" name="matchingText" index="Cn2iK" />
        <child id="1177498207384" name="handler" index="Cncma" />
      </concept>
      <concept id="1177498227294" name="jetbrains.mps.lang.actions.structure.QueryFunction_SideTransform_Handler" flags="in" index="Cnhdc" />
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
      <concept id="1158700664498" name="jetbrains.mps.lang.actions.structure.NodeFactories" flags="ng" index="37WguZ">
        <child id="1158700779049" name="nodeFactory" index="37WGs$" />
      </concept>
      <concept id="1158700725281" name="jetbrains.mps.lang.actions.structure.NodeFactory" flags="ig" index="37WvkG">
        <reference id="1158700943156" name="applicableConcept" index="37XkoT" />
        <child id="1158701448518" name="setupFunction" index="37ZfLb" />
      </concept>
      <concept id="1158701162220" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction" flags="in" index="37Y9Zx" />
      <concept id="1154465102724" name="jetbrains.mps.lang.actions.structure.NodeSubstitutePreconditionFunction" flags="in" index="3buRE8" />
      <concept id="1154465273778" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_parentNode" flags="nn" index="3bvxqY" />
      <concept id="1154622616118" name="jetbrains.mps.lang.actions.structure.SideTransformHintSubstitutePreconditionFunction" flags="in" index="3kRJcU" />
      <concept id="5584396657084912703" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_NewNode" flags="nn" index="1r4Lsj" />
      <concept id="1112056943463" name="jetbrains.mps.lang.actions.structure.NodeSubstituteActions" flags="ng" index="3FK_9_">
        <child id="1112058057696" name="actionsBuilder" index="3FOPby" />
      </concept>
      <concept id="1112058030570" name="jetbrains.mps.lang.actions.structure.NodeSubstituteActionsBuilder" flags="ig" index="3FOIzC">
        <reference id="1112058088712" name="applicableConcept" index="3FOWKa" />
        <child id="1177324142645" name="part" index="tZc4B" />
        <child id="1154465386371" name="precondition" index="3bvWUf" />
      </concept>
      <concept id="1138079221458" name="jetbrains.mps.lang.actions.structure.SideTransformHintSubstituteActionsBuilder" flags="ig" index="3UNGvq">
        <property id="1140829165817" name="transformTag" index="2uHTBK" />
        <reference id="1138079221462" name="applicableConcept" index="3UNGvu" />
        <child id="1177442283389" name="part" index="_1QTJ" />
        <child id="1154622757656" name="precondition" index="3kShCk" />
      </concept>
      <concept id="1138079416598" name="jetbrains.mps.lang.actions.structure.SideTransformHintSubstituteActions" flags="ng" index="3UOs0u">
        <child id="1138079416599" name="actionsBuilder" index="3UOs0v" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
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
  <node concept="3UOs0u" id="6p0DfM0n_rV">
    <property role="TrG5h" value="LogicVariable_add_index" />
    <node concept="3UNGvq" id="6p0DfM0n_xO" role="3UOs0v">
      <ref role="3UNGvu" to="wq2x:6p0DfM0ew6_" resolve="LogicVariable" />
      <node concept="3kRJcU" id="6p0DfM0n_AU" role="3kShCk">
        <node concept="3clFbS" id="6p0DfM0n_AV" role="2VODD2">
          <node concept="3clFbF" id="6p0DfM0n_Ot" role="3cqZAp">
            <node concept="2OqwBi" id="6p0DfM0nAQ2" role="3clFbG">
              <node concept="2OqwBi" id="6p0DfM0n_WA" role="2Oq$k0">
                <node concept="Cj7Ep" id="6p0DfM0n_Os" role="2Oq$k0" />
                <node concept="3TrEf2" id="6p0DfM0nAsJ" role="2OqNvi">
                  <ref role="3Tt5mk" to="wq2x:6p0DfM0nev_" />
                </node>
              </node>
              <node concept="3w_OXm" id="6p0DfM0nB4j" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="tYCnQ" id="6p0DfM0nBk$" role="_1QTJ">
        <ref role="uz4UX" to="wq2x:6p0DfM0ew6_" resolve="LogicVariable" />
        <node concept="Cmt7Y" id="6p0DfM0nB_$" role="uz6Si">
          <node concept="Cnhdc" id="6p0DfM0nB_A" role="Cncma">
            <node concept="3clFbS" id="6p0DfM0nB_C" role="2VODD2">
              <node concept="3clFbF" id="6p0DfM0nBHs" role="3cqZAp">
                <node concept="2OqwBi" id="6p0DfM0nCNz" role="3clFbG">
                  <node concept="2OqwBi" id="6p0DfM0nBKr" role="2Oq$k0">
                    <node concept="Cj7Ep" id="6p0DfM0nBHr" role="2Oq$k0" />
                    <node concept="3TrEf2" id="6p0DfM0nCzH" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:6p0DfM0nev_" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="6p0DfM0nD8l" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="6p0DfM0nDiy" role="3cqZAp">
                <node concept="Cj7Ep" id="6p0DfM0nDiw" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="2h1dTh" id="6p0DfM0nBCB" role="Cn2iK">
            <property role="2h1i$Z" value="_" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3FK_9_" id="6p0DfM0ptZb">
    <property role="TrG5h" value="EmitConstraintStatement" />
    <node concept="3FOIzC" id="6p0DfM0pu2x" role="3FOPby">
      <ref role="3FOWKa" to="tpee:fzclF8l" resolve="Statement" />
      <node concept="tYCnQ" id="6p0DfM0pu5V" role="tZc4B">
        <ref role="uz4UX" to="wq2x:6p0DfM0a6KG" resolve="EmitConstraintStatement" />
        <node concept="ucClh" id="6p0DfM0pudz" role="uz6Si">
          <node concept="ucgPf" id="6p0DfM0pud$" role="ucMEw">
            <node concept="3clFbS" id="6p0DfM0pud_" role="2VODD2">
              <node concept="3clFbF" id="6p0DfM0puol" role="3cqZAp">
                <node concept="2ShNRf" id="6p0DfM0puoj" role="3clFbG">
                  <node concept="2fJWfE" id="6p0DfM0puyn" role="2ShVmc">
                    <node concept="3Tqbb2" id="6p0DfM0puyp" role="3zrR0E">
                      <ref role="ehGHo" to="wq2x:6p0DfM0a6KG" resolve="EmitConstraintStatement" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2h3Zct" id="6p0DfM0pui7" role="uGu3D">
            <property role="2h4Kg1" value="%%" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3UOs0u" id="2E5lcNmYGyi">
    <property role="TrG5h" value="LogicVariableDeclaration_add_cardinality" />
    <node concept="3UNGvq" id="2E5lcNmYGCd" role="3UOs0v">
      <ref role="3UNGvu" to="wq2x:2E5lcNn2Y0P" resolve="LogicVariableDeclaration" />
      <node concept="tYCnQ" id="2E5lcNmYJ60" role="_1QTJ">
        <ref role="uz4UX" to="wq2x:2E5lcNn2Y0P" resolve="LogicVariableDeclaration" />
        <node concept="Cmt7Y" id="2E5lcNmYJlo" role="uz6Si">
          <node concept="Cnhdc" id="2E5lcNmYJlp" role="Cncma">
            <node concept="3clFbS" id="2E5lcNmYJlq" role="2VODD2">
              <node concept="3clFbF" id="2E5lcNndToo" role="3cqZAp">
                <node concept="2OqwBi" id="2E5lcNndTNB" role="3clFbG">
                  <node concept="2OqwBi" id="2E5lcNndTrH" role="2Oq$k0">
                    <node concept="Cj7Ep" id="2E5lcNndTon" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2E5lcNndTAn" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:2E5lcNndMkF" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="2E5lcNndU9S" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="2E5lcNndUiA" role="3cqZAp">
                <node concept="Cj7Ep" id="2E5lcNndUi$" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="2h1dTh" id="2E5lcNmYJny" role="Cn2iK">
            <property role="2h1i$Z" value=":" />
          </node>
        </node>
      </node>
      <node concept="3kRJcU" id="2E5lcNmYGEL" role="3kShCk">
        <node concept="3clFbS" id="2E5lcNmYGEM" role="2VODD2">
          <node concept="3clFbF" id="2E5lcNndRO3" role="3cqZAp">
            <node concept="2OqwBi" id="2E5lcNndSCj" role="3clFbG">
              <node concept="2OqwBi" id="2E5lcNndRVI" role="2Oq$k0">
                <node concept="Cj7Ep" id="2E5lcNndRO2" role="2Oq$k0" />
                <node concept="3TrEf2" id="2E5lcNndSh_" role="2OqNvi">
                  <ref role="3Tt5mk" to="wq2x:2E5lcNndMkF" />
                </node>
              </node>
              <node concept="3w_OXm" id="2E5lcNndSXs" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3FK_9_" id="2E5lcNmZaq$">
    <property role="TrG5h" value="LogicExpressionWrapper" />
    <node concept="3FOIzC" id="2E5lcNmZayb" role="3FOPby">
      <ref role="3FOWKa" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="3buRE8" id="2E5lcNmZa$J" role="3bvWUf">
        <node concept="3clFbS" id="2E5lcNmZa$K" role="2VODD2">
          <node concept="3clFbF" id="2E5lcNmZaJK" role="3cqZAp">
            <node concept="2OqwBi" id="2E5lcNmZbIm" role="3clFbG">
              <node concept="2OqwBi" id="2E5lcNmZaVy" role="2Oq$k0">
                <node concept="3bvxqY" id="2E5lcNmZaJJ" role="2Oq$k0" />
                <node concept="2Xjw5R" id="2E5lcNmZbiR" role="2OqNvi">
                  <node concept="1xMEDy" id="2E5lcNmZbiT" role="1xVPHs">
                    <node concept="chp4Y" id="2E5lcNmZbvr" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:6p0DfM0a6KG" resolve="EmitConstraintStatement" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="2E5lcNmZc8z" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="tYCnQ" id="2E5lcNmZdbU" role="tZc4B">
        <ref role="uz4UX" to="wq2x:6p0DfM0pKSO" resolve="LogicExpressionWrapper" />
        <node concept="ucClh" id="2E5lcNmZdue" role="uz6Si">
          <node concept="ucgPf" id="2E5lcNmZdug" role="ucMEw">
            <node concept="3clFbS" id="2E5lcNmZdui" role="2VODD2">
              <node concept="3clFbF" id="2E5lcNmZdQT" role="3cqZAp">
                <node concept="2ShNRf" id="2E5lcNmZdQR" role="3clFbG">
                  <node concept="2fJWfE" id="2E5lcNmZi$N" role="2ShVmc">
                    <node concept="3Tqbb2" id="2E5lcNmZi$P" role="3zrR0E">
                      <ref role="ehGHo" to="wq2x:6p0DfM0pKSO" resolve="LogicExpressionWrapper" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2h3Zct" id="2E5lcNmZdKL" role="uGu3D">
            <property role="2h4Kg1" value="%%" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3UOs0u" id="2E5lcNn1a8i">
    <property role="TrG5h" value="Head_replace" />
    <node concept="3UNGvq" id="2E5lcNn1af0" role="3UOs0v">
      <property role="2uHTBK" value="ext_1_RTransform" />
      <ref role="3UNGvu" to="wq2x:6p0DfM0a3gA" resolve="Head" />
      <node concept="3kRJcU" id="2E5lcNn1aAJ" role="3kShCk">
        <node concept="3clFbS" id="2E5lcNn1aAK" role="2VODD2">
          <node concept="3clFbF" id="2E5lcNn1aNs" role="3cqZAp">
            <node concept="2OqwBi" id="2E5lcNn1aVX" role="3clFbG">
              <node concept="Cj7Ep" id="2E5lcNn1aNr" role="2Oq$k0" />
              <node concept="3TrcHB" id="2E5lcNn1bgY" role="2OqNvi">
                <ref role="3TsBF5" to="wq2x:6p0DfM0bSv$" resolve="keep" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="tYCnQ" id="2E5lcNn1buB" role="_1QTJ">
        <ref role="uz4UX" to="wq2x:6p0DfM0a3gA" resolve="Head" />
        <node concept="Cmt7Y" id="2E5lcNn1bHF" role="uz6Si">
          <node concept="Cnhdc" id="2E5lcNn1bHG" role="Cncma">
            <node concept="3clFbS" id="2E5lcNn1bHH" role="2VODD2">
              <node concept="3clFbF" id="2E5lcNn1bRc" role="3cqZAp">
                <node concept="37vLTI" id="2E5lcNn1cut" role="3clFbG">
                  <node concept="3clFbT" id="2E5lcNn1cxI" role="37vLTx">
                    <property role="3clFbU" value="false" />
                  </node>
                  <node concept="2OqwBi" id="2E5lcNn1bUT" role="37vLTJ">
                    <node concept="Cj7Ep" id="2E5lcNn1bRb" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2E5lcNn1c5z" role="2OqNvi">
                      <ref role="3TsBF5" to="wq2x:6p0DfM0bSv$" resolve="keep" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2E5lcNn1cQO" role="3cqZAp">
                <node concept="Cj7Ep" id="2E5lcNn1cQM" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="2h1dTh" id="2E5lcNn1bNd" role="Cn2iK">
            <property role="2h1i$Z" value="and discard" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="37WguZ" id="2E5lcNn1UqB">
    <property role="3GE5qa" value="rule.part" />
    <property role="TrG5h" value="Head_createNew" />
    <node concept="37WvkG" id="2E5lcNn1UqC" role="37WGs$">
      <ref role="37XkoT" to="wq2x:6p0DfM0a3gA" resolve="Head" />
      <node concept="37Y9Zx" id="2E5lcNn1Uu1" role="37ZfLb">
        <node concept="3clFbS" id="2E5lcNn1Uu2" role="2VODD2">
          <node concept="3clFbF" id="2E5lcNn1U$0" role="3cqZAp">
            <node concept="37vLTI" id="2E5lcNn1Zvn" role="3clFbG">
              <node concept="3clFbT" id="2E5lcNn1ZDh" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="2E5lcNn1UAr" role="37vLTJ">
                <node concept="1r4Lsj" id="2E5lcNn1UzZ" role="2Oq$k0" />
                <node concept="3TrcHB" id="2E5lcNn1Z5M" role="2OqNvi">
                  <ref role="3TsBF5" to="wq2x:6p0DfM0bSv$" resolve="keep" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3UOs0u" id="3elRT3bEgyo">
    <property role="3GE5qa" value="constraint.typespecific" />
    <property role="TrG5h" value="NewTypeConstraint_anchor" />
    <node concept="3UNGvq" id="3elRT3bEgyp" role="3UOs0v">
      <property role="2uHTBK" value="ext_1_RTransform" />
      <ref role="3UNGvu" to="wq2x:7eGEHDlgPU1" resolve="NewTypeConstraint" />
      <node concept="3kRJcU" id="3elRT3bEgXe" role="3kShCk">
        <node concept="3clFbS" id="3elRT3bEgXf" role="2VODD2">
          <node concept="3clFbF" id="3elRT3bEhvX" role="3cqZAp">
            <node concept="2OqwBi" id="3elRT3bEirO" role="3clFbG">
              <node concept="2OqwBi" id="3elRT3bEhJ3" role="2Oq$k0">
                <node concept="Cj7Ep" id="3elRT3bEhvW" role="2Oq$k0" />
                <node concept="3TrEf2" id="3elRT3bEib8" role="2OqNvi">
                  <ref role="3Tt5mk" to="wq2x:6p0DfM0gvH4" />
                </node>
              </node>
              <node concept="3w_OXm" id="3elRT3bEiTL" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="tYCnQ" id="3elRT3bEjas" role="_1QTJ">
        <ref role="uz4UX" to="wq2x:7eGEHDlgPU1" resolve="NewTypeConstraint" />
        <node concept="Cmt7Y" id="3elRT3bEjqQ" role="uz6Si">
          <node concept="Cnhdc" id="3elRT3bEjqS" role="Cncma">
            <node concept="3clFbS" id="3elRT3bEjqU" role="2VODD2">
              <node concept="3clFbF" id="3elRT3bEjwc" role="3cqZAp">
                <node concept="2OqwBi" id="3elRT3bEk3J" role="3clFbG">
                  <node concept="2OqwBi" id="3elRT3bEjzL" role="2Oq$k0">
                    <node concept="Cj7Ep" id="3elRT3bEjwb" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3elRT3bEjRN" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:6p0DfM0gvH4" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="3elRT3bEko$" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="3elRT3bEkxn" role="3cqZAp">
                <node concept="Cj7Ep" id="3elRT3bEkxl" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="2h1dTh" id="3elRT3bEjt3" role="Cn2iK">
            <property role="2h1i$Z" value="@" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3UOs0u" id="2q_78a9fmDm">
    <property role="3GE5qa" value="constraint.expression" />
    <property role="TrG5h" value="WildcardLogicVariable_setCardinality" />
    <node concept="3UNGvq" id="2q_78a9fmDn" role="3UOs0v">
      <property role="2uHTBK" value="ext_1_RTransform" />
      <ref role="3UNGvu" to="wq2x:2q_78a9fklE" resolve="WildcardLogicVariable" />
      <node concept="tYCnQ" id="2q_78a9fp4J" role="_1QTJ">
        <ref role="uz4UX" to="wq2x:2q_78a9fklE" resolve="WildcardLogicVariable" />
        <node concept="Cmt7Y" id="2q_78a9fpl0" role="uz6Si">
          <node concept="Cnhdc" id="2q_78a9fpl2" role="Cncma">
            <node concept="3clFbS" id="2q_78a9fpl4" role="2VODD2">
              <node concept="3clFbF" id="2q_78a9fpqm" role="3cqZAp">
                <node concept="2OqwBi" id="2q_78a9fqg3" role="3clFbG">
                  <node concept="2OqwBi" id="2q_78a9fpti" role="2Oq$k0">
                    <node concept="Cj7Ep" id="2q_78a9fpql" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2q_78a9fq3$" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:2q_78a9c7Ce" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="2q_78a9fqM1" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="2q_78a9fr15" role="3cqZAp">
                <node concept="Cj7Ep" id="2q_78a9fr13" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="2h1dTh" id="2q_78a9fpnd" role="Cn2iK">
            <property role="2h1i$Z" value=":" />
          </node>
        </node>
      </node>
      <node concept="3kRJcU" id="2q_78a9fmOI" role="3kShCk">
        <node concept="3clFbS" id="2q_78a9fmOJ" role="2VODD2">
          <node concept="3clFbF" id="2q_78a9fmZR" role="3cqZAp">
            <node concept="2OqwBi" id="2q_78a9fodc" role="3clFbG">
              <node concept="2OqwBi" id="2q_78a9fnvl" role="2Oq$k0">
                <node concept="Cj7Ep" id="2q_78a9fmZQ" role="2Oq$k0" />
                <node concept="3TrEf2" id="2q_78a9fnWJ" role="2OqNvi">
                  <ref role="3Tt5mk" to="wq2x:2q_78a9c7Ce" />
                </node>
              </node>
              <node concept="3w_OXm" id="2q_78a9foE4" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

