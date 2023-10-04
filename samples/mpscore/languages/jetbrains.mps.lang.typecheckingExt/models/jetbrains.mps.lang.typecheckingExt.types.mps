<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3533c1ca-26b7-4edd-97c9-a926892f0cf5(jetbrains.mps.lang.typecheckingExt.types)">
  <persistence version="9" />
  <languages>
    <use id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" version="1" />
    <devkit ref="888618cf-7697-4adc-80cd-8c6ea3486ef7(jetbrains.mps.devkit.aspect.types)" />
  </languages>
  <imports>
    <import index="y4ek" ref="r:9071f0f9-8ac0-4a08-8867-06e41ca1c7d9(jetbrains.mps.lang.coderulesExt.types)" />
    <import index="zfi7" ref="r:39840d4e-f61c-4452-88c5-75b1eb10e892(jetbrains.mps.lang.typechecking.structure)" />
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.baseLanguageExt.types)" />
    <import index="h103" ref="r:9c80bc3e-1982-4e7d-8fe4-1b25a1c02635(jetbrains.mps.lang.typechecking.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="8456919074574710634" name="jetbrains.mps.logic.structure.ExpressionItem" flags="ng" index="37jhX">
        <child id="8456919074574710741" name="code" index="37jj2" />
      </concept>
      <concept id="8169506320648805904" name="jetbrains.mps.logic.structure.LogicalVariableDeclarationContainer" flags="ngI" index="29MRiA">
        <child id="6399471711045617306" name="dataType" index="3vLBG7" />
        <child id="3063948360254832884" name="declaration" index="3XD1gS" />
      </concept>
      <concept id="8829335963593820278" name="jetbrains.mps.logic.structure.LogicalVariable" flags="ng" index="a7P8L">
        <reference id="8829335963593822893" name="declaration" index="a7OzE" />
      </concept>
      <concept id="8829335963591572611" name="jetbrains.mps.logic.structure.LogicalVariableDeclaration" flags="ng" index="aZer4" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules">
      <concept id="6691972578451976398" name="jetbrains.mps.lang.coderules.structure.RuleInputSpecification" flags="ng" index="2t___k">
        <reference id="6691972578451990912" name="applicableConcept" index="2t_S0q" />
        <child id="6691972578451986151" name="input" index="2t_VXX" />
      </concept>
      <concept id="8335224865066015764" name="jetbrains.mps.lang.coderules.structure.RulesList" flags="ng" index="AVZre">
        <reference id="3541122455446356437" name="extends" index="2YbDB9" />
        <child id="3575255234175157601" name="template" index="1nK1Vg" />
      </concept>
      <concept id="2381360340662937504" name="jetbrains.mps.lang.coderules.structure.TermType" flags="ig" index="32pEOW" />
      <concept id="6097203247184206287" name="jetbrains.mps.lang.coderules.structure.CallMacroConstraint" flags="ng" index="3jm4v3">
        <reference id="6097203247184207800" name="template" index="3jm46O" />
        <child id="6097203247185219723" name="argument" index="3jicU7" />
        <child id="6097203247184212024" name="logical" index="3jm6SO" />
      </concept>
      <concept id="3575255234174969639" name="jetbrains.mps.lang.coderules.structure.ConstraintRule" flags="ng" index="1nLNMm">
        <child id="4814011019633607808" name="parameter" index="0Rg$4" />
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
      <concept id="965748826975413063" name="jetbrains.mps.lang.coderules.structure.RulePartParameterDeclaration" flags="ng" index="3NuqgR" />
    </language>
  </registry>
  <node concept="AVZre" id="3vih5250J_X">
    <property role="TrG5h" value="Check" />
    <ref role="2YbDB9" to="y4ek:7LI_gNMWq1K" resolve="CheckCoderules" />
    <node concept="1nLNMY" id="3vih5250MoW" role="1nK1Vg">
      <property role="TrG5h" value="typecheckingQueryParameter" />
      <node concept="3clFbS" id="3vih5250MoX" role="1nLNMH">
        <node concept="1nLNNL" id="7LI_gNMXkRG" role="3cqZAp">
          <node concept="1nLNMm" id="7LI_gNMXkRH" role="1nLNNK">
            <node concept="3Aq93q" id="7LI_gNMXkRK" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="7LI_gNMXkRL" role="3Ip0Jz">
                <node concept="3I6s7M" id="7LI_gNMXkRP" role="3I6sU7">
                  <node concept="3Aqt3T" id="7LI_gNMXkRO" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="7LI_gNMXkRS" role="3xSepv">
              <node concept="3Aq9E8" id="7LI_gNMXkRT" role="3xSepj">
                <node concept="3I6sU6" id="7LI_gNMXkRU" role="3Ip0Jz">
                  <node concept="3I6s7M" id="kHzC1TY7Ub" role="3I6sU7">
                    <node concept="3jm4v3" id="kHzC1TY7U9" role="3I6s78">
                      <ref role="3jm46O" to="kqnc:3qUnz9vk$1o" resolve="classifierTypeNonGeneric" />
                      <node concept="2OqwBi" id="3vih5250XRK" role="3jicU7">
                        <node concept="2OqwBi" id="7LI_gNMXl0Q" role="2Oq$k0">
                          <node concept="3A2sRY" id="7LI_gNMXkT0" role="2Oq$k0">
                            <ref role="3A2yKK" node="3vih5250MoZ" resolve="tqp" />
                          </node>
                          <node concept="2qgKlT" id="3vih5250XG3" role="2OqNvi">
                            <ref role="37wK5l" to="h103:7lmP5gAYgVD" resolve="getTypecheckingQueryTemplate" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="3vih5250Y3t" role="2OqNvi">
                          <ref role="37wK5l" to="h103:3vih52511I4" resolve="getQueryClassfier" />
                        </node>
                      </node>
                      <node concept="a7P8L" id="kHzC1TY7UJ" role="3jm6SO">
                        <ref role="a7OzE" node="kHzC1TY7B9" resolve="Cls" />
                      </node>
                    </node>
                  </node>
                  <node concept="3I6s7M" id="7LI_gNMXkRZ" role="3I6sU7">
                    <node concept="3Aqt3T" id="7LI_gNMXkRY" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="7LI_gNMXkS6" role="3AunhB">
                        <node concept="3A2sRY" id="7LI_gNMXkS4" role="37jj2">
                          <ref role="3A2yKK" node="3vih5250MoZ" resolve="tqp" />
                        </node>
                      </node>
                      <node concept="a7P8L" id="kHzC1TY7Vz" role="3AunhB">
                        <ref role="a7OzE" node="kHzC1TY7B9" resolve="Cls" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="kHzC1TY7B8" role="0Rg$4">
              <node concept="aZer4" id="kHzC1TY7B9" role="3XD1gS">
                <property role="TrG5h" value="Cls" />
              </node>
              <node concept="32pEOW" id="kHzC1TY7Kw" role="3vLBG7" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="3vih5250MoY" role="1nLNMg">
        <ref role="2t_S0q" to="zfi7:7lmP5gAYc5S" resolve="TypecheckingQueryParameter" />
        <node concept="3A20r5" id="3vih5250MoZ" role="2t_VXX">
          <property role="TrG5h" value="tqp" />
        </node>
      </node>
    </node>
  </node>
</model>

