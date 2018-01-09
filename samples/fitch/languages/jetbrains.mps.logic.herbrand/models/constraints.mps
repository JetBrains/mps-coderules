<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3df2afd9-204b-4bdf-91b7-9ed29c61dfb1(jetbrains.mps.logic.herbrand.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="tpfp" ref="r:00000000-0000-4000-0000-011c89590519(jetbrains.mps.baseLanguage.regexp.jetbrains.mps.regexp.accessory)" />
    <import index="bw37" ref="r:faa478da-573c-4c9e-99e4-b87297289505(jetbrains.mps.logic.herbrand.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
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
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
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
</model>

