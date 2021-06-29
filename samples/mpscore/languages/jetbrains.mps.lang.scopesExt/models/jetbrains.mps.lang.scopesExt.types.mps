<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3f9f6b29-3085-40bc-bf26-6acc4f56d405(jetbrains.mps.lang.scopesExt.types)">
  <persistence version="9" />
  <languages>
    <use id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" version="1" />
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules" version="23" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
    <devkit ref="888618cf-7697-4adc-80cd-8c6ea3486ef7(jetbrains.mps.devkit.aspect.types)" />
  </languages>
  <imports>
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.baseLanguageExt.types)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="genb" ref="r:142fc2e9-fc09-4c4f-92d7-6ce0e3f66b61(jetbrains.mps.lang.scopes.structure)" implicit="true" />
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
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules">
      <concept id="1149537088067116625" name="jetbrains.mps.lang.coderules.structure.NodeRefItem" flags="ng" index="h$QuP">
        <reference id="1149537088067125001" name="ref" index="h$OrH" />
      </concept>
      <concept id="861509610434242029" name="jetbrains.mps.lang.coderules.structure.TermConstructor" flags="ng" index="ns1u0">
        <reference id="861509610434243078" name="decl" index="ns1xF" />
        <child id="861509610434243076" name="override" index="ns1xD" />
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
        <child id="3575255234174969658" name="head" index="1nLNMb" />
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
      <concept id="7368070394766963750" name="jetbrains.mps.lang.coderules.structure.Head" flags="ng" index="3Aq93q">
        <property id="7368070394767443940" name="keep" index="3ArMco" />
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
  <node concept="AVZre" id="127bLwWSGoY">
    <property role="TrG5h" value="CheckScopes" />
    <ref role="2YbDB9" to="kqnc:6qJjpCjlmVR" resolve="CheckAll" />
    <node concept="1nLNMY" id="127bLwWSGxr" role="1nK1Vg">
      <property role="TrG5h" value="check_ComeFromExspression" />
      <node concept="3clFbS" id="127bLwWSGxs" role="1nLNMH">
        <node concept="1nLNNL" id="127bLwWSGxG" role="3cqZAp">
          <node concept="1nLNMm" id="127bLwWSGxI" role="1nLNNK">
            <node concept="3Aq93q" id="127bLwWSGxM" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="127bLwWSGxN" role="3Ip0Jz">
                <node concept="3I6s7M" id="127bLwWSGDY" role="3I6sU7">
                  <node concept="3Aqt3T" id="127bLwWSGDX" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="127bLwWSGE1" role="3xSepv">
              <node concept="3Aq9E8" id="127bLwWSGE2" role="3xSepj">
                <node concept="3I6sU6" id="127bLwWSGE3" role="3Ip0Jz">
                  <node concept="3I6s7M" id="127bLwWSGEd" role="3I6sU7">
                    <node concept="3Aqt3T" id="127bLwWSGEc" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="127bLwWSGEl" role="3AunhB">
                        <node concept="3A2sRY" id="127bLwWSGEj" role="37jj2">
                          <ref role="3A2yKK" node="127bLwWSGx_" resolve="cfe" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="127bLwWSGEE" role="3AunhB">
                        <ref role="ns1xF" to="kqnc:JOGAOsVt36" resolve="_boolean_" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="127bLwWSGx$" role="1nLNMg">
        <ref role="2t_S0q" to="genb:70qA1hy$CJv" resolve="ComeFromExpression" />
        <node concept="3A20r5" id="127bLwWSGx_" role="2t_VXX">
          <property role="TrG5h" value="cfe" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="127bLwWSGFH" role="1nK1Vg">
      <property role="TrG5h" value="check_CompositeWithParentScopeExpression" />
      <node concept="2t___k" id="127bLwWSGG1" role="1nLNMg">
        <ref role="2t_S0q" to="genb:70qA1hy$hAX" resolve="CompositeWithParentScopeExpression" />
        <node concept="3A20r5" id="127bLwWSGG2" role="2t_VXX">
          <property role="TrG5h" value="cwpse" />
        </node>
      </node>
      <node concept="3clFbS" id="127bLwWSGGc" role="1nLNMH">
        <node concept="1nLNNL" id="127bLwWSGGa" role="3cqZAp">
          <node concept="1nLNMm" id="127bLwWSGGb" role="1nLNNK">
            <node concept="3Aq93q" id="127bLwWSGGg" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="127bLwWSGGh" role="3Ip0Jz">
                <node concept="3I6s7M" id="127bLwWSGGl" role="3I6sU7">
                  <node concept="3Aqt3T" id="127bLwWSGGk" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="127bLwWSGGo" role="3xSepv">
              <node concept="3Aq9E8" id="127bLwWSGGp" role="3xSepj">
                <node concept="3I6sU6" id="127bLwWSGGq" role="3Ip0Jz">
                  <node concept="3I6s7M" id="127bLwWSGGv" role="3I6sU7">
                    <node concept="3Aqt3T" id="127bLwWSGGu" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="127bLwWSGGB" role="3AunhB">
                        <node concept="3A2sRY" id="127bLwWSGG_" role="37jj2">
                          <ref role="3A2yKK" node="127bLwWSGG2" resolve="cwpse" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="127bLwWSGGM" role="3AunhB">
                        <ref role="ns1xF" to="kqnc:JOGAOsVt2a" resolve="classifier" />
                        <node concept="nsMwS" id="127bLwWSHIP" role="ns1xD">
                          <ref role="nsMwP" to="kqnc:JOGAOsVt2c" resolve="classifier" />
                          <node concept="h$QuP" id="127bLwWSHQh" role="iSaTp">
                            <ref role="h$OrH" to="o8zo:3fifI_xCtN$" resolve="Scope" />
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
    </node>
    <node concept="1nLNMY" id="127bLwWSHQk" role="1nK1Vg">
      <property role="TrG5h" value="check_ParentScope" />
      <node concept="2t___k" id="127bLwWSHQl" role="1nLNMg">
        <ref role="2t_S0q" to="genb:70qA1hy$wwM" resolve="ParentScope" />
        <node concept="3A20r5" id="127bLwWSHQm" role="2t_VXX">
          <property role="TrG5h" value="ps" />
        </node>
      </node>
      <node concept="3clFbS" id="127bLwWSHQn" role="1nLNMH">
        <node concept="1nLNNL" id="127bLwWSHQo" role="3cqZAp">
          <node concept="1nLNMm" id="127bLwWSHQp" role="1nLNNK">
            <node concept="3Aq93q" id="127bLwWSHQq" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="127bLwWSHQr" role="3Ip0Jz">
                <node concept="3I6s7M" id="127bLwWSHQs" role="3I6sU7">
                  <node concept="3Aqt3T" id="127bLwWSHQt" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="127bLwWSHQu" role="3xSepv">
              <node concept="3Aq9E8" id="127bLwWSHQv" role="3xSepj">
                <node concept="3I6sU6" id="127bLwWSHQw" role="3Ip0Jz">
                  <node concept="3I6s7M" id="127bLwWSHQx" role="3I6sU7">
                    <node concept="3Aqt3T" id="127bLwWSHQy" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="127bLwWSHQz" role="3AunhB">
                        <node concept="3A2sRY" id="127bLwWSHQ$" role="37jj2">
                          <ref role="3A2yKK" node="127bLwWSHQm" resolve="ps" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="127bLwWSHQ_" role="3AunhB">
                        <ref role="ns1xF" to="kqnc:JOGAOsVt2a" resolve="classifier" />
                        <node concept="nsMwS" id="127bLwWSHQA" role="ns1xD">
                          <ref role="nsMwP" to="kqnc:JOGAOsVt2c" resolve="classifier" />
                          <node concept="h$QuP" id="127bLwWSHQB" role="iSaTp">
                            <ref role="h$OrH" to="o8zo:3fifI_xCtN$" resolve="Scope" />
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
    </node>
  </node>
</model>

