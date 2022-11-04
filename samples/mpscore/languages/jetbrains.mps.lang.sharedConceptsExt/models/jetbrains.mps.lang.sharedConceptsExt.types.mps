<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:55478efd-43ab-4b38-861c-b557634308da(jetbrains.mps.lang.sharedConceptsExt.types)">
  <persistence version="9" />
  <languages>
    <use id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" version="1" />
    <devkit ref="888618cf-7697-4adc-80cd-8c6ea3486ef7(jetbrains.mps.devkit.aspect.types)" />
  </languages>
  <imports>
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.baseLanguageExt.types)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpcw" ref="r:00000000-0000-4000-0000-011c895902bc(jetbrains.mps.lang.sharedConcepts.structure)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="8456919074574710634" name="jetbrains.mps.logic.structure.ExpressionItem" flags="ng" index="37jhX">
        <child id="8456919074574710741" name="code" index="37jj2" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking">
      <concept id="7505246501517142009" name="jetbrains.mps.lang.typechecking.structure.TypeTermTable" flags="ng" index="3iyXCk" />
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules">
      <concept id="1149537088067116625" name="jetbrains.mps.lang.coderules.structure.NodeRefItem" flags="ng" index="h$QuP">
        <reference id="1149537088067125001" name="ref" index="h$OrH" />
      </concept>
      <concept id="861509610434242029" name="jetbrains.mps.lang.coderules.structure.TermConstructor" flags="ng" index="ns1u0">
        <reference id="861509610434243078" name="decl" index="ns1xF" />
        <child id="861509610434243076" name="override" index="ns1xD" />
      </concept>
      <concept id="861509610434243104" name="jetbrains.mps.lang.coderules.structure.TermTable" flags="ng" index="ns1xd">
        <reference id="8966267790978924106" name="extended" index="2efqH6" />
      </concept>
      <concept id="861509610434435669" name="jetbrains.mps.lang.coderules.structure.TermFeatureOverride" flags="ng" index="nsMwS">
        <reference id="861509610434435672" name="feature" index="nsMwP" />
        <child id="1149537088045275069" name="item" index="iSaTp" />
      </concept>
      <concept id="6691972578451976398" name="jetbrains.mps.lang.coderules.structure.RuleInputSpecification" flags="ng" index="2t___k">
        <reference id="6691972578451990912" name="applicableConcept" index="2t_S0q" />
        <child id="6691972578451986151" name="input" index="2t_VXX" />
      </concept>
      <concept id="8335224865066015764" name="jetbrains.mps.lang.coderules.structure.RulesList" flags="ng" index="AVZre">
        <reference id="3541122455446356437" name="extends" index="2YbDB9" />
        <child id="3575255234175157601" name="template" index="1nK1Vg" />
      </concept>
      <concept id="3575255234174969639" name="jetbrains.mps.lang.coderules.structure.ConstraintRule" flags="ng" index="1nLNMm">
        <child id="7674753015762572651" name="body" index="3xSepv" />
      </concept>
      <concept id="3575255234174969615" name="jetbrains.mps.lang.coderules.structure.RuleTemplate" flags="ng" index="1nLNMY">
        <child id="3575255234174969633" name="input" index="1nLNMg" />
        <child id="3575255234174969628" name="code" index="1nLNMH" />
      </concept>
      <concept id="3575255234174969664" name="jetbrains.mps.lang.coderules.structure.ConstraintRuleStatement" flags="ng" index="1nLNNL">
        <child id="3575255234174969665" name="rule" index="1nLNNK" />
      </concept>
      <concept id="7674753015762572646" name="jetbrains.mps.lang.coderules.structure.BodyBlock" flags="ng" index="3xSepi">
        <child id="7674753015762572647" name="body" index="3xSepj" />
      </concept>
      <concept id="7368070394769089081" name="jetbrains.mps.lang.coderules.structure.RuleInputDeclaration" flags="ng" index="3A20r5" />
      <concept id="7368070394769139970" name="jetbrains.mps.lang.coderules.structure.RuleInputReference" flags="ng" index="3A2sRY">
        <reference id="7368070394769213644" name="declaration" index="3A2yKK" />
      </concept>
      <concept id="7368070394766963523" name="jetbrains.mps.lang.coderules.structure.RuleComponent" flags="ng" index="3Aq9uZ">
        <child id="2316688792939037645" name="logic" index="3Ip0Jz" />
      </concept>
      <concept id="7368070394766966388" name="jetbrains.mps.lang.coderules.structure.Body" flags="ng" index="3Aq9E8" />
      <concept id="7368070394767045637" name="jetbrains.mps.lang.coderules.structure.UserConstraint" flags="ng" index="3Aqt3T">
        <reference id="7368070394767091750" name="template" index="3AqCNq" />
        <child id="7368070394768117915" name="argument" index="3AunhB" />
      </concept>
      <concept id="2316688792938826204" name="jetbrains.mps.lang.coderules.structure.ConstraintLogicalClause" flags="ng" index="3I6s7M">
        <child id="2316688792938826214" name="constraint" index="3I6s78" />
      </concept>
      <concept id="2316688792938825384" name="jetbrains.mps.lang.coderules.structure.LogicalClauseList" flags="ng" index="3I6sU6">
        <child id="2316688792938825385" name="clauses" index="3I6sU7" />
      </concept>
    </language>
  </registry>
  <node concept="AVZre" id="6ZRhjsGH7j2">
    <property role="TrG5h" value="Check" />
    <ref role="2YbDB9" to="kqnc:34$A1Mf51rY" resolve="TypeOf" />
    <node concept="1nLNMY" id="6ZRhjsGH7$M" role="1nK1Vg">
      <property role="TrG5h" value="conceptFunctionParameter_scope" />
      <node concept="3clFbS" id="6ZRhjsGH7$N" role="1nLNMH">
        <node concept="1nLNNL" id="6ZRhjsGH7$Z" role="3cqZAp">
          <node concept="1nLNMm" id="6ZRhjsGH7_0" role="1nLNNK">
            <node concept="3xSepi" id="6ZRhjsGH7_7" role="3xSepv">
              <node concept="3Aq9E8" id="6ZRhjsGH7_8" role="3xSepj">
                <node concept="3I6sU6" id="6ZRhjsGH7_9" role="3Ip0Jz">
                  <node concept="3I6s7M" id="6ZRhjsGH7_q" role="3I6sU7">
                    <node concept="3Aqt3T" id="6ZRhjsGH7_p" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="6ZRhjsGH7_x" role="3AunhB">
                        <node concept="3A2sRY" id="6ZRhjsGH7_v" role="37jj2">
                          <ref role="3A2yKK" node="6ZRhjsGH7$P" resolve="cfp" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="6ZRhjsGH7NT" role="3AunhB">
                        <ref role="ns1xF" to="kqnc:JOGAOsVt2a" resolve="classifier" />
                        <node concept="nsMwS" id="6ZRhjsGH7NY" role="ns1xD">
                          <ref role="nsMwP" to="kqnc:JOGAOsVt2c" resolve="classifier" />
                          <node concept="h$QuP" id="6ZRhjsGHar3" role="iSaTp">
                            <ref role="h$OrH" to="lui2:~SearchScope" resolve="SearchScope" />
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
      <node concept="2t___k" id="6ZRhjsGH7$O" role="1nLNMg">
        <ref role="2t_S0q" to="tpcw:gTQ7B__" resolve="ConceptFunctionParameter_scope" />
        <node concept="3A20r5" id="6ZRhjsGH7$P" role="2t_VXX">
          <property role="TrG5h" value="cfp" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6ZRhjsGHat9" role="1nK1Vg">
      <property role="TrG5h" value="conceptFunctionParameter_progressMonitor" />
      <node concept="3clFbS" id="6ZRhjsGHata" role="1nLNMH">
        <node concept="1nLNNL" id="6ZRhjsGHarN" role="3cqZAp">
          <node concept="1nLNMm" id="6ZRhjsGHarO" role="1nLNNK">
            <node concept="3xSepi" id="6ZRhjsGHarR" role="3xSepv">
              <node concept="3Aq9E8" id="6ZRhjsGHarS" role="3xSepj">
                <node concept="3I6sU6" id="6ZRhjsGHarT" role="3Ip0Jz">
                  <node concept="3I6s7M" id="6ZRhjsGHasa" role="3I6sU7">
                    <node concept="3Aqt3T" id="6ZRhjsGHas9" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="6ZRhjsGHash" role="3AunhB">
                        <node concept="3A2sRY" id="6ZRhjsGHasf" role="37jj2">
                          <ref role="3A2yKK" node="6ZRhjsGHatc" resolve="cfpm" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="6ZRhjsGHasr" role="3AunhB">
                        <ref role="ns1xF" to="kqnc:JOGAOsVt2a" resolve="classifier" />
                        <node concept="nsMwS" id="6ZRhjsGHasw" role="ns1xD">
                          <ref role="nsMwP" to="kqnc:JOGAOsVt2c" resolve="classifier" />
                          <node concept="h$QuP" id="6ZRhjsGHasz" role="iSaTp">
                            <ref role="h$OrH" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
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
      <node concept="2t___k" id="6ZRhjsGHatb" role="1nLNMg">
        <ref role="2t_S0q" to="tpcw:uYrIA378mk" resolve="ConceptFunctionParameter_progressMonitor" />
        <node concept="3A20r5" id="6ZRhjsGHatc" role="2t_VXX">
          <property role="TrG5h" value="cfpm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3iyXCk" id="6ZRhjsGH7_X">
    <property role="TrG5h" value="Terms" />
    <ref role="2efqH6" to="kqnc:JOGAOsVt29" resolve="Terms" />
  </node>
</model>

