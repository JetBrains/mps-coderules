<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9468b2da-d680-4618-8620-b6908c569525(jetbrains.mps.lang.behaviorExt.types)">
  <persistence version="9" />
  <languages>
    <use id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" version="0" />
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules" version="23" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="13" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="18" />
    <engage id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.baseLanguageExt.types)" />
    <import index="jxwi" ref="r:6ecd2c91-8e0b-4c6a-878e-d699a7336100(jetbrains.mps.lang.smodelExt.types)" />
    <import index="csvn" ref="r:a91e42c5-728b-4866-86c4-d97454f4aee4(jetbrains.mps.lang.behavior.behavior)" />
    <import index="1i04" ref="r:3270011d-8b2d-4938-8dff-d256a759e017(jetbrains.mps.lang.behavior.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="8456919074574710634" name="jetbrains.mps.logic.structure.ExpressionItem" flags="ng" index="37jhX">
        <child id="8456919074574710741" name="code" index="37jj2" />
      </concept>
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules">
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
      <concept id="7368070394766978092" name="jetbrains.mps.lang.coderules.structure.EmitConstraintStatement" flags="ng" index="3Aqczg">
        <child id="7368070394767031348" name="constraint" index="3Aqpz8" />
      </concept>
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
      <concept id="2316688792939428589" name="jetbrains.mps.lang.coderules.structure.TemplateLogicalClause" flags="ng" index="3IrJb3">
        <child id="2316688792939428590" name="code" index="3IrJb0" />
      </concept>
    </language>
  </registry>
  <node concept="AVZre" id="2q9s7foHkq4">
    <property role="TrG5h" value="Check" />
    <ref role="2YbDB9" to="kqnc:34$A1Mf51rY" resolve="TypeOf" />
    <node concept="1nLNMY" id="2q9s7foHlhy" role="1nK1Vg">
      <property role="TrG5h" value="superConceptExpression" />
      <node concept="3clFbS" id="2q9s7foHlhz" role="1nLNMH">
        <node concept="1nLNNL" id="2q9s7foHlsh" role="3cqZAp">
          <node concept="1nLNMm" id="2q9s7foHlsj" role="1nLNNK">
            <node concept="3Aq93q" id="2q9s7foHlsw" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2q9s7foHlsx" role="3Ip0Jz">
                <node concept="3I6s7M" id="2q9s7foHlsC" role="3I6sU7">
                  <node concept="3Aqt3T" id="2q9s7foHlsB" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="2q9s7foHlsI" role="3xSepv">
              <node concept="3Aq9E8" id="2q9s7foHlsJ" role="3xSepj">
                <node concept="3I6sU6" id="2q9s7foHlsK" role="3Ip0Jz">
                  <node concept="3I6s7M" id="2q9s7foHlsS" role="3I6sU7">
                    <node concept="3Aqt3T" id="2q9s7foHlsR" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="2q9s7foHlte" role="3AunhB">
                        <node concept="3A2sRY" id="2q9s7foHltc" role="37jj2">
                          <ref role="3A2yKK" node="2q9s7foHlh_" resolve="sce" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="2q9s7foHltv" role="3AunhB">
                        <ref role="ns1xF" to="jxwi:3bgqfmmKxBI" resolve="concept" />
                        <node concept="nsMwS" id="2q9s7foHltE" role="ns1xD">
                          <ref role="nsMwP" to="jxwi:3lXUvG03UmI" resolve="concept" />
                          <node concept="37jhX" id="ZNYugu2LuL" role="iSaTp">
                            <node concept="2OqwBi" id="2q9s7foHlut" role="37jj2">
                              <node concept="3A2sRY" id="2q9s7foHltT" role="2Oq$k0">
                                <ref role="3A2yKK" node="2q9s7foHlh_" resolve="sce" />
                              </node>
                              <node concept="2qgKlT" id="2q9s7foHmFU" role="2OqNvi">
                                <ref role="37wK5l" to="csvn:2k7p7sTvKkn" resolve="getSuperConcept" />
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
      <node concept="2t___k" id="2q9s7foHlh$" role="1nLNMg">
        <ref role="2t_S0q" to="1i04:6ADPXMKlUuB" resolve="SuperConceptExpression" />
        <node concept="3A20r5" id="2q9s7foHlh_" role="2t_VXX">
          <property role="TrG5h" value="sce" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="2q9s7foHmQx" role="1nK1Vg">
      <property role="TrG5h" value="superNodeExpression" />
      <node concept="3clFbS" id="2q9s7foHmQy" role="1nLNMH">
        <node concept="1nLNNL" id="2q9s7foHo5y" role="3cqZAp">
          <node concept="1nLNMm" id="2q9s7foHo5$" role="1nLNNK">
            <node concept="3Aq93q" id="2q9s7foHo5K" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2q9s7foHo5L" role="3Ip0Jz">
                <node concept="3I6s7M" id="2q9s7foHo5S" role="3I6sU7">
                  <node concept="3Aqt3T" id="2q9s7foHo5R" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="2q9s7foHo5Y" role="3xSepv">
              <node concept="3Aq9E8" id="2q9s7foHo5Z" role="3xSepj">
                <node concept="3I6sU6" id="2q9s7foHo60" role="3Ip0Jz">
                  <node concept="3IrJb3" id="2q9s7foHo67" role="3I6sU7">
                    <node concept="3clFbS" id="2q9s7foHo68" role="3IrJb0">
                      <node concept="3clFbJ" id="2q9s7foHmR4" role="3cqZAp">
                        <node concept="2OqwBi" id="2q9s7foHmRI" role="3clFbw">
                          <node concept="3A2sRY" id="2q9s7foHmRe" role="2Oq$k0">
                            <ref role="3A2yKK" node="2q9s7foHmQ$" resolve="sne" />
                          </node>
                          <node concept="2qgKlT" id="2q9s7foHo5b" role="2OqNvi">
                            <ref role="37wK5l" to="csvn:4xnLoJyFYX5" resolve="isEnclosingMethodStatic" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2q9s7foHmR6" role="3clFbx">
                          <node concept="3Aqczg" id="2q9s7foHo7j" role="3cqZAp">
                            <node concept="3Aqt3T" id="2q9s7foHo7i" role="3Aqpz8">
                              <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                              <node concept="37jhX" id="2q9s7foHo7x" role="3AunhB">
                                <node concept="3A2sRY" id="2q9s7foHo7v" role="37jj2">
                                  <ref role="3A2yKK" node="2q9s7foHmQ$" resolve="sne" />
                                </node>
                              </node>
                              <node concept="ns1u0" id="2q9s7foHo7P" role="3AunhB">
                                <ref role="ns1xF" to="jxwi:3bgqfmmKNsS" resolve="conceptNode" />
                                <node concept="nsMwS" id="2q9s7foHo80" role="ns1xD">
                                  <ref role="nsMwP" to="jxwi:3lXUvG03UmI" resolve="concept" />
                                  <node concept="37jhX" id="ZNYugu2LuM" role="iSaTp">
                                    <node concept="2OqwBi" id="2q9s7foHo8x" role="37jj2">
                                      <node concept="3A2sRY" id="2q9s7foHo8f" role="2Oq$k0">
                                        <ref role="3A2yKK" node="2q9s7foHmQ$" resolve="sne" />
                                      </node>
                                      <node concept="2qgKlT" id="2q9s7foHpW0" role="2OqNvi">
                                        <ref role="37wK5l" to="csvn:2k7p7sTvKkn" resolve="getSuperConcept" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="2q9s7foHpXC" role="3cqZAp" />
                        </node>
                        <node concept="9aQIb" id="2q9s7foHpWl" role="9aQIa">
                          <node concept="3clFbS" id="2q9s7foHpWm" role="9aQI4">
                            <node concept="3Aqczg" id="2q9s7foHpWv" role="3cqZAp">
                              <node concept="3Aqt3T" id="2q9s7foHpWw" role="3Aqpz8">
                                <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                                <node concept="37jhX" id="2q9s7foHpWx" role="3AunhB">
                                  <node concept="3A2sRY" id="2q9s7foHpWy" role="37jj2">
                                    <ref role="3A2yKK" node="2q9s7foHmQ$" resolve="sne" />
                                  </node>
                                </node>
                                <node concept="ns1u0" id="2q9s7foHpWz" role="3AunhB">
                                  <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                                  <node concept="nsMwS" id="2q9s7foHpW$" role="ns1xD">
                                    <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                                    <node concept="37jhX" id="ZNYugu2LuN" role="iSaTp">
                                      <node concept="2OqwBi" id="2q9s7foHpW_" role="37jj2">
                                        <node concept="3A2sRY" id="2q9s7foHpWA" role="2Oq$k0">
                                          <ref role="3A2yKK" node="2q9s7foHmQ$" resolve="sne" />
                                        </node>
                                        <node concept="2qgKlT" id="2q9s7foHpWB" role="2OqNvi">
                                          <ref role="37wK5l" to="csvn:2k7p7sTvKkn" resolve="getSuperConcept" />
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
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2q9s7foHmQz" role="1nLNMg">
        <ref role="2t_S0q" to="1i04:hP3iAlo" resolve="SuperNodeExpression" />
        <node concept="3A20r5" id="2q9s7foHmQ$" role="2t_VXX">
          <property role="TrG5h" value="sne" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="2q9s7foHqhH" role="1nK1Vg">
      <property role="TrG5h" value="thisConceptExpression" />
      <node concept="3clFbS" id="2q9s7foHqhI" role="1nLNMH">
        <node concept="3cpWs8" id="1u_ffTorZyb" role="3cqZAp">
          <node concept="3cpWsn" id="1u_ffTorZyc" role="3cpWs9">
            <property role="TrG5h" value="behaviour" />
            <node concept="3Tqbb2" id="1u_ffTorZyd" role="1tU5fm">
              <ref role="ehGHo" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
            </node>
            <node concept="2OqwBi" id="1u_ffTorZye" role="33vP2m">
              <node concept="2Xjw5R" id="1u_ffTorZyg" role="2OqNvi">
                <node concept="1xMEDy" id="1u_ffTorZyh" role="1xVPHs">
                  <node concept="chp4Y" id="1u_ffTorZyi" role="ri$Ld">
                    <ref role="cht4Q" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
                  </node>
                </node>
                <node concept="1xIGOp" id="1u_ffTorZyj" role="1xVPHs" />
              </node>
              <node concept="3A2sRY" id="2q9s7foHqju" role="2Oq$k0">
                <ref role="3A2yKK" node="2q9s7foHqhK" resolve="tce" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1nLNNL" id="2q9s7foHqjR" role="3cqZAp">
          <node concept="1nLNMm" id="2q9s7foHqjT" role="1nLNNK">
            <node concept="3Aq93q" id="2q9s7foHqk9" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2q9s7foHqka" role="3Ip0Jz">
                <node concept="3I6s7M" id="2q9s7foHqkh" role="3I6sU7">
                  <node concept="3Aqt3T" id="2q9s7foHqkg" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="2q9s7foHqkn" role="3xSepv">
              <node concept="3Aq9E8" id="2q9s7foHqko" role="3xSepj">
                <node concept="3I6sU6" id="2q9s7foHqkp" role="3Ip0Jz">
                  <node concept="3I6s7M" id="2q9s7foHqkx" role="3I6sU7">
                    <node concept="3Aqt3T" id="2q9s7foHqkw" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="2q9s7foHqkV" role="3AunhB">
                        <node concept="3A2sRY" id="2q9s7foHqkT" role="37jj2">
                          <ref role="3A2yKK" node="2q9s7foHqhK" resolve="tce" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="2q9s7foHqlf" role="3AunhB">
                        <ref role="ns1xF" to="jxwi:3bgqfmmKxBI" resolve="concept" />
                        <node concept="nsMwS" id="2q9s7foHqlq" role="ns1xD">
                          <ref role="nsMwP" to="jxwi:3lXUvG03UmI" resolve="concept" />
                          <node concept="37jhX" id="ZNYugu2LuO" role="iSaTp">
                            <node concept="2OqwBi" id="2q9s7foHqmh" role="37jj2">
                              <node concept="37vLTw" id="2q9s7foHqlD" role="2Oq$k0">
                                <ref role="3cqZAo" node="1u_ffTorZyc" resolve="behaviour" />
                              </node>
                              <node concept="3TrEf2" id="2q9s7foHr$1" role="2OqNvi">
                                <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
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
      <node concept="2t___k" id="2q9s7foHqhJ" role="1nLNMg">
        <ref role="2t_S0q" to="1i04:1u_ffTorqp2" resolve="ThisConceptExpression" />
        <node concept="3A20r5" id="2q9s7foHqhK" role="2t_VXX">
          <property role="TrG5h" value="tce" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="2q9s7foHrJM" role="1nK1Vg">
      <property role="TrG5h" value="thisNodeExpression" />
      <node concept="3clFbS" id="2q9s7foHrJN" role="1nLNMH">
        <node concept="3cpWs8" id="hP3pWY0" role="3cqZAp">
          <node concept="3cpWsn" id="hP3pWY1" role="3cpWs9">
            <property role="TrG5h" value="behaviour" />
            <node concept="3Tqbb2" id="hP3pWY2" role="1tU5fm">
              <ref role="ehGHo" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
            </node>
            <node concept="2OqwBi" id="hP3pWY3" role="33vP2m">
              <node concept="2Xjw5R" id="hP3pWY5" role="2OqNvi">
                <node concept="1xMEDy" id="hP3pWY6" role="1xVPHs">
                  <node concept="chp4Y" id="hP3pWY7" role="ri$Ld">
                    <ref role="cht4Q" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
                  </node>
                </node>
                <node concept="1xIGOp" id="hP3pWY8" role="1xVPHs" />
              </node>
              <node concept="3A2sRY" id="2q9s7foHrMD" role="2Oq$k0">
                <ref role="3A2yKK" node="2q9s7foHrJP" resolve="tne" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6kiT6agSec" role="3cqZAp">
          <node concept="3cpWsn" id="6kiT6agSef" role="3cpWs9">
            <property role="TrG5h" value="method" />
            <node concept="2OqwBi" id="6kiT6agSoW" role="33vP2m">
              <node concept="2Xjw5R" id="6kiT6agU35" role="2OqNvi">
                <node concept="1xMEDy" id="6kiT6agU37" role="1xVPHs">
                  <node concept="chp4Y" id="6kiT6agU3i" role="ri$Ld">
                    <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                  </node>
                </node>
              </node>
              <node concept="3A2sRY" id="2q9s7foHrMY" role="2Oq$k0">
                <ref role="3A2yKK" node="2q9s7foHrJP" resolve="tne" />
              </node>
            </node>
            <node concept="3Tqbb2" id="6kiT6agSea" role="1tU5fm">
              <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
            </node>
          </node>
        </node>
        <node concept="1nLNNL" id="2q9s7foHt6n" role="3cqZAp">
          <node concept="1nLNMm" id="2q9s7foHt6p" role="1nLNNK">
            <node concept="3Aq93q" id="2q9s7foHt6R" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2q9s7foHt6S" role="3Ip0Jz">
                <node concept="3I6s7M" id="2q9s7foHt6Z" role="3I6sU7">
                  <node concept="3Aqt3T" id="2q9s7foHt6Y" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="2q9s7foHt75" role="3xSepv">
              <node concept="3Aq9E8" id="2q9s7foHt76" role="3xSepj">
                <node concept="3I6sU6" id="2q9s7foHt77" role="3Ip0Jz">
                  <node concept="3IrJb3" id="2q9s7foHt7e" role="3I6sU7">
                    <node concept="3clFbS" id="2q9s7foHt7f" role="3IrJb0">
                      <node concept="3clFbJ" id="2q9s7foHrNw" role="3cqZAp">
                        <node concept="3clFbS" id="2q9s7foHrNy" role="3clFbx">
                          <node concept="3Aqczg" id="2q9s7foHt8_" role="3cqZAp">
                            <node concept="3Aqt3T" id="2q9s7foHt8z" role="3Aqpz8">
                              <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                              <node concept="37jhX" id="2q9s7foHt8N" role="3AunhB">
                                <node concept="3A2sRY" id="2q9s7foHt8L" role="37jj2">
                                  <ref role="3A2yKK" node="2q9s7foHrJP" resolve="tne" />
                                </node>
                              </node>
                              <node concept="ns1u0" id="2q9s7foHt97" role="3AunhB">
                                <ref role="ns1xF" to="jxwi:3bgqfmmKNsS" resolve="conceptNode" />
                                <node concept="nsMwS" id="2q9s7foHt9_" role="ns1xD">
                                  <ref role="nsMwP" to="jxwi:3lXUvG03UmI" resolve="concept" />
                                  <node concept="37jhX" id="ZNYugu2LuP" role="iSaTp">
                                    <node concept="2OqwBi" id="2q9s7foHtac" role="37jj2">
                                      <node concept="37vLTw" id="2q9s7foHt9O" role="2Oq$k0">
                                        <ref role="3cqZAo" node="hP3pWY1" resolve="behaviour" />
                                      </node>
                                      <node concept="3TrEf2" id="2q9s7foHunt" role="2OqNvi">
                                        <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="2q9s7foHunC" role="3cqZAp" />
                        </node>
                        <node concept="2OqwBi" id="2q9s7foHrOy" role="3clFbw">
                          <node concept="37vLTw" id="2q9s7foHrNY" role="2Oq$k0">
                            <ref role="3cqZAo" node="6kiT6agSef" resolve="method" />
                          </node>
                          <node concept="3TrcHB" id="2q9s7foHt5K" role="2OqNvi">
                            <ref role="3TsBF5" to="1i04:55xfRZxar9d" resolve="isStatic" />
                          </node>
                        </node>
                        <node concept="9aQIb" id="2q9s7foHt8g" role="9aQIa">
                          <node concept="3clFbS" id="2q9s7foHt8h" role="9aQI4">
                            <node concept="3Aqczg" id="2q9s7foHuo4" role="3cqZAp">
                              <node concept="3Aqt3T" id="2q9s7foHuo5" role="3Aqpz8">
                                <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                                <node concept="37jhX" id="2q9s7foHuo6" role="3AunhB">
                                  <node concept="3A2sRY" id="2q9s7foHuo7" role="37jj2">
                                    <ref role="3A2yKK" node="2q9s7foHrJP" resolve="tne" />
                                  </node>
                                </node>
                                <node concept="ns1u0" id="2q9s7foHuo8" role="3AunhB">
                                  <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                                  <node concept="nsMwS" id="2q9s7foHuo9" role="ns1xD">
                                    <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                                    <node concept="37jhX" id="ZNYugu2LuQ" role="iSaTp">
                                      <node concept="2OqwBi" id="2q9s7foHuoa" role="37jj2">
                                        <node concept="37vLTw" id="2q9s7foHuob" role="2Oq$k0">
                                          <ref role="3cqZAo" node="hP3pWY1" resolve="behaviour" />
                                        </node>
                                        <node concept="3TrEf2" id="2q9s7foHuoc" role="2OqNvi">
                                          <ref role="3Tt5mk" to="1i04:hP3h7Gv" resolve="concept" />
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
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2q9s7foHrJO" role="1nLNMg">
        <ref role="2t_S0q" to="1i04:hP3iPJx" resolve="ThisNodeExpression" />
        <node concept="3A20r5" id="2q9s7foHrJP" role="2t_VXX">
          <property role="TrG5h" value="tne" />
        </node>
      </node>
    </node>
  </node>
</model>

