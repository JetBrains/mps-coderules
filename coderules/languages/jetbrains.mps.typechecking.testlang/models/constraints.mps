<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fcd8a0cb-db23-4096-8c51-848b03e9e544(jetbrains.mps.typechecking.testlang.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="qulx" ref="r:ec0979fb-ae37-4823-9eaa-8550d9f5c6fd(jetbrains.mps.typechecking.testlang.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpfp" ref="r:00000000-0000-4000-0000-011c89590519(jetbrains.mps.baseLanguage.regexp.jetbrains.mps.regexp.accessory)" implicit="true" />
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
      <concept id="1175161264766" name="jetbrains.mps.baseLanguage.regexp.structure.LineStartRegexp" flags="ng" index="2t4tHJ" />
      <concept id="1175161300324" name="jetbrains.mps.baseLanguage.regexp.structure.LineEndRegexp" flags="ng" index="2t4AhP" />
      <concept id="1175169009571" name="jetbrains.mps.baseLanguage.regexp.structure.FindMatchStatement" flags="nn" index="2ty0qM">
        <child id="1175169023932" name="expr" index="2ty3UH" />
        <child id="1175169154112" name="body" index="2tyzPh" />
      </concept>
      <concept id="1174482804200" name="jetbrains.mps.baseLanguage.regexp.structure.PlusRegexp" flags="ng" index="1OClNT" />
      <concept id="1174484562151" name="jetbrains.mps.baseLanguage.regexp.structure.SeqRegexp" flags="ng" index="1OJ37Q" />
      <concept id="1174485167097" name="jetbrains.mps.baseLanguage.regexp.structure.BinaryRegexp" flags="ng" index="1OLmFC">
        <child id="1174485176897" name="left" index="1OLpdg" />
        <child id="1174485181039" name="right" index="1OLqdY" />
      </concept>
      <concept id="1174485235885" name="jetbrains.mps.baseLanguage.regexp.structure.UnaryRegexp" flags="ng" index="1OLBAW">
        <child id="1174485243418" name="regexp" index="1OLDsb" />
      </concept>
      <concept id="1174510540317" name="jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression" flags="nn" index="1Qi9sc">
        <child id="1174510571016" name="regexp" index="1QigWp" />
      </concept>
      <concept id="1174554186090" name="jetbrains.mps.baseLanguage.regexp.structure.SymbolClassRegexp" flags="ng" index="1SSD1V">
        <child id="1174557628217" name="part" index="1T5LoC" />
      </concept>
      <concept id="1174554211468" name="jetbrains.mps.baseLanguage.regexp.structure.PositiveSymbolClassRegexp" flags="ng" index="1SSJmt" />
      <concept id="1174555732504" name="jetbrains.mps.baseLanguage.regexp.structure.PredefinedSymbolClassRegexp" flags="ng" index="1SYyG9">
        <reference id="1174555843709" name="symbolClass" index="1SYXPG" />
      </concept>
      <concept id="1174558792178" name="jetbrains.mps.baseLanguage.regexp.structure.PredefinedSymbolClassSymbolClassPart" flags="ng" index="1Tadzz">
        <reference id="1174558819022" name="declaration" index="1Takfv" />
      </concept>
      <concept id="1174653354106" name="jetbrains.mps.baseLanguage.regexp.structure.RegexpUsingConstruction" flags="ngI" index="1YMW5F">
        <child id="1174653387388" name="regexp" index="1YN4dH" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="7mB3viLbll5">
    <ref role="1M2myG" to="qulx:7mB3viLbaW_" resolve="VarDecl" />
    <node concept="EnEH3" id="7mB3viLbll6" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="7mB3viLbll8" role="QCWH9">
        <node concept="3clFbS" id="7mB3viLbll9" role="2VODD2">
          <node concept="2ty0qM" id="7mB3viLbllu" role="3cqZAp">
            <node concept="1Qi9sc" id="7mB3viLbllv" role="1YN4dH">
              <node concept="1OJ37Q" id="7mB3viLbopj" role="1QigWp">
                <node concept="2t4tHJ" id="7mB3viLbohs" role="1OLpdg" />
                <node concept="1OJ37Q" id="7mB3viLboKM" role="1OLqdY">
                  <node concept="1OClNT" id="7mB3viLboCV" role="1OLpdg">
                    <node concept="1SSJmt" id="7mB3viLbopi" role="1OLDsb">
                      <node concept="1Tadzz" id="7mB3viLbox9" role="1T5LoC">
                        <ref role="1Takfv" to="tpfp:h5SUJUw" resolve="\w" />
                      </node>
                    </node>
                  </node>
                  <node concept="2t4AhP" id="7mB3viLboKL" role="1OLqdY" />
                </node>
              </node>
            </node>
            <node concept="1Wqviy" id="7mB3viLbllP" role="2ty3UH" />
            <node concept="3clFbS" id="7mB3viLblly" role="2tyzPh">
              <node concept="3cpWs6" id="7mB3viLblml" role="3cqZAp">
                <node concept="3clFbT" id="7mB3viLblmx" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7mB3viLblmO" role="3cqZAp">
            <node concept="3clFbT" id="7mB3viLblna" role="3cqZAk">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7mB3viLhgek">
    <ref role="1M2myG" to="qulx:7mB3viLbCL0" resolve="Type" />
    <node concept="EnEH3" id="7mB3viLhgel" role="1MhHOB">
      <ref role="EomxK" to="qulx:7mB3viLbCL1" resolve="name" />
      <node concept="QB0g5" id="7mB3viLhgen" role="QCWH9">
        <node concept="3clFbS" id="7mB3viLhgeo" role="2VODD2">
          <node concept="2ty0qM" id="7mB3viLhglE" role="3cqZAp">
            <node concept="1Qi9sc" id="7mB3viLhglF" role="1YN4dH">
              <node concept="1OJ37Q" id="7mB3viLhhoF" role="1QigWp">
                <node concept="2t4tHJ" id="7mB3viLhh2c" role="1OLpdg" />
                <node concept="1OJ37Q" id="7mB3viLhhBN" role="1OLqdY">
                  <node concept="2t4AhP" id="7mB3viLhhBZ" role="1OLqdY" />
                  <node concept="1OClNT" id="7mB3viLhhwh" role="1OLpdg">
                    <node concept="1SYyG9" id="7mB3viLhhoI" role="1OLDsb">
                      <ref role="1SYXPG" to="tpfp:h5SUJUw" resolve="\w" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wqviy" id="7mB3viLhgtc" role="2ty3UH" />
            <node concept="3clFbS" id="7mB3viLhglI" role="2tyzPh">
              <node concept="3cpWs6" id="7mB3viLhhYe" role="3cqZAp">
                <node concept="3clFbT" id="7mB3viLhi5G" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7mB3viLhikY" role="3cqZAp">
            <node concept="3clFbT" id="7mB3viLhiln" role="3cqZAk">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

