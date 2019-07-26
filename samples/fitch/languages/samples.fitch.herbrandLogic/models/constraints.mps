<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3df2afd9-204b-4bdf-91b7-9ed29c61dfb1(samples.fitch.herbrandLogic.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="tpfp" ref="r:00000000-0000-4000-0000-011c89590519(jetbrains.mps.baseLanguage.regexp.jetbrains.mps.regexp.accessory)" />
    <import index="bw37" ref="r:faa478da-573c-4c9e-99e4-b87297289505(samples.fitch.herbrandLogic.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="jfgh" ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(samples.fitch.structure)" implicit="true" />
    <import index="qd7f" ref="r:6e0181fc-40ea-4aea-a8b0-3ba2d104ddef(samples.fitch.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807351367" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild" flags="in" index="9S07l" />
      <concept id="1202989658459" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode" flags="nn" index="nLn13" />
      <concept id="4303308395523096213" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childConcept" flags="ng" index="2DD5aU" />
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807737306" name="canBeChild" index="9Vyp8" />
        <child id="1213098023997" name="property" index="1MhHOB" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
    <language id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp">
      <concept id="1174482804200" name="jetbrains.mps.baseLanguage.regexp.structure.PlusRegexp" flags="ng" index="1OClNT" />
      <concept id="1174485235885" name="jetbrains.mps.baseLanguage.regexp.structure.UnaryRegexp" flags="ng" index="1OLBAW">
        <child id="1174485243418" name="regexp" index="1OLDsb" />
      </concept>
      <concept id="1174510540317" name="jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression" flags="nn" index="1Qi9sc">
        <child id="1174510571016" name="regexp" index="1QigWp" />
      </concept>
      <concept id="1174512414484" name="jetbrains.mps.baseLanguage.regexp.structure.MatchRegexpStatement" flags="nn" index="1QpiS5">
        <child id="1174512427594" name="body" index="1Qpmdr" />
        <child id="1174512569438" name="expr" index="1QpSPf" />
      </concept>
      <concept id="1174555732504" name="jetbrains.mps.baseLanguage.regexp.structure.PredefinedSymbolClassRegexp" flags="ng" index="1SYyG9">
        <reference id="1174555843709" name="symbolClass" index="1SYXPG" />
      </concept>
      <concept id="1174653354106" name="jetbrains.mps.baseLanguage.regexp.structure.RegexpUsingConstruction" flags="ng" index="1YMW5F">
        <child id="1174653387388" name="regexp" index="1YN4dH" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="2DPo4JTT5FI">
    <property role="3GE5qa" value="sentence" />
    <ref role="1M2myG" to="bw37:2DPo4JTRwsI" resolve="Object" />
    <node concept="EnEH3" id="3JXBM6C7aaW" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="3JXBM6C7aaY" role="QCWH9">
        <node concept="3clFbS" id="3JXBM6C7aaZ" role="2VODD2">
          <node concept="1QpiS5" id="3JXBM6C7ai7" role="3cqZAp">
            <node concept="1Qi9sc" id="3JXBM6C7ai8" role="1YN4dH">
              <node concept="1OClNT" id="2DPo4JTTYjY" role="1QigWp">
                <node concept="1SYyG9" id="2DPo4JTTXqU" role="1OLDsb">
                  <ref role="1SYXPG" to="tpfp:h5SUPxr" resolve="\p{Lower}" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3JXBM6C7aia" role="1Qpmdr">
              <node concept="3cpWs6" id="3JXBM6C7aBY" role="3cqZAp">
                <node concept="3clFbT" id="3JXBM6C7aJi" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="1Wqviy" id="3JXBM6C7apv" role="1QpSPf" />
          </node>
          <node concept="3cpWs6" id="3JXBM6C7aYb" role="3cqZAp">
            <node concept="3clFbT" id="3JXBM6C7bdg" role="3cqZAk">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="2DPo4JTTXyU">
    <property role="3GE5qa" value="sentence" />
    <ref role="1M2myG" to="bw37:2DPo4JTRwsM" resolve="Variable" />
    <node concept="EnEH3" id="2DPo4JTTXyV" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="2DPo4JTTXyW" role="QCWH9">
        <node concept="3clFbS" id="2DPo4JTTXyX" role="2VODD2">
          <node concept="1QpiS5" id="2DPo4JTTXyY" role="3cqZAp">
            <node concept="1Qi9sc" id="2DPo4JTTXyZ" role="1YN4dH">
              <node concept="1OClNT" id="2DPo4JTTY8G" role="1QigWp">
                <node concept="1SYyG9" id="2DPo4JTTXER" role="1OLDsb">
                  <ref role="1SYXPG" to="tpfp:h5SUTG3" resolve="\p{Upper}" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2DPo4JTTXz1" role="1Qpmdr">
              <node concept="3cpWs6" id="2DPo4JTTXz2" role="3cqZAp">
                <node concept="3clFbT" id="2DPo4JTTXz3" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="1Wqviy" id="2DPo4JTTXz4" role="1QpSPf" />
          </node>
          <node concept="3cpWs6" id="2DPo4JTTXz5" role="3cqZAp">
            <node concept="3clFbT" id="2DPo4JTTXz6" role="3cqZAk">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3w0n0hzjECi">
    <property role="3GE5qa" value="proof.rule" />
    <ref role="1M2myG" to="bw37:3w0n0hziLce" resolve="QuantifierRule" />
    <node concept="9S07l" id="3w0n0hzjECG" role="9Vyp8">
      <node concept="3clFbS" id="3w0n0hzjECH" role="2VODD2">
        <node concept="3clFbF" id="3w0n0hzjEJQ" role="3cqZAp">
          <node concept="2OqwBi" id="3w0n0hzjFH7" role="3clFbG">
            <node concept="2OqwBi" id="3w0n0hzjEZ0" role="2Oq$k0">
              <node concept="nLn13" id="3w0n0hzjEJP" role="2Oq$k0" />
              <node concept="2Xjw5R" id="3w0n0hzjFfL" role="2OqNvi">
                <node concept="1xMEDy" id="3w0n0hzjSnx" role="1xVPHs">
                  <node concept="chp4Y" id="3w0n0hzjS$2" role="ri$Ld">
                    <ref role="cht4Q" to="jfgh:3JXBM6C5urr" resolve="Root" />
                  </node>
                </node>
                <node concept="1xIGOp" id="3w0n0hzjSWs" role="1xVPHs" />
              </node>
            </node>
            <node concept="2qgKlT" id="3w0n0hzjTgg" role="2OqNvi">
              <ref role="37wK5l" to="qd7f:3w0n0hzjKLG" resolve="isRuleSupported" />
              <node concept="2DD5aU" id="3w0n0hzjTDM" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="4h0MmDW5DCZ">
    <property role="3GE5qa" value="sentence" />
    <ref role="1M2myG" to="bw37:2DPo4JTRwtx" resolve="Relation" />
    <node concept="EnEH3" id="4h0MmDW5DD0" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="4h0MmDW5DD5" role="QCWH9">
        <node concept="3clFbS" id="4h0MmDW5DD6" role="2VODD2">
          <node concept="1QpiS5" id="4h0MmDW5FQ1" role="3cqZAp">
            <node concept="1Qi9sc" id="4h0MmDW5FQ2" role="1YN4dH">
              <node concept="1OClNT" id="4h0MmDW5R0Q" role="1QigWp">
                <node concept="1SYyG9" id="4h0MmDW5FQk" role="1OLDsb">
                  <ref role="1SYXPG" to="tpfp:h5SUPxr" resolve="\p{Lower}" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4h0MmDW5FQ4" role="1Qpmdr">
              <node concept="3cpWs6" id="4h0MmDW5FQq" role="3cqZAp">
                <node concept="3clFbT" id="4h0MmDW5FQA" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="1Wqviy" id="4h0MmDW5FQe" role="1QpSPf" />
          </node>
          <node concept="3cpWs6" id="4h0MmDW5FQR" role="3cqZAp">
            <node concept="3clFbT" id="4h0MmDW5FRb" role="3cqZAk" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

