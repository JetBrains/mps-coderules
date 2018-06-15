<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6a71ba3e-550e-4491-a65a-abcddca431cd(jetbrains.mps.baseLanguageExt.controlflow)">
  <persistence version="9" />
  <languages>
    <use id="2e120f68-abfb-4980-bb1c-bc70159b1f95" name="jetbrains.mps.lang.controlflow" version="0" />
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules" version="14" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="fjx4" ref="r:5cb7c45c-18d8-4304-8c38-29c80242b908(jetbrains.mps.controlflow.service)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules">
      <concept id="7871500063866331595" name="jetbrains.mps.lang.coderules.structure.Query" flags="ng" index="92CTh">
        <child id="7871500063866331596" name="queryStage" index="92CTm" />
        <child id="3026409000513569515" name="queryKind" index="2_lZgo" />
      </concept>
      <concept id="9035818301008609703" name="jetbrains.mps.lang.coderules.structure.QueryTemplate" flags="ng" index="2bWyPT">
        <child id="7871500063838282362" name="code" index="fHCRw" />
      </concept>
      <concept id="6958395097955138" name="jetbrains.mps.lang.coderules.structure.SNodeReportOperation" flags="ng" index="2s7oft">
        <property id="6958395097963305" name="kind" index="2s7ueQ" />
        <child id="6958395097963208" name="text" index="2s7u9n" />
      </concept>
      <concept id="6691972578451976398" name="jetbrains.mps.lang.coderules.structure.RuleInputSpecification" flags="ng" index="2t___k">
        <reference id="6691972578451990912" name="applicableConcept" index="2t_S0q" />
        <child id="6691972578451986151" name="input" index="2t_VXX" />
      </concept>
      <concept id="8335224865066015764" name="jetbrains.mps.lang.coderules.structure.Handler" flags="ng" index="AVZre">
        <child id="1980609059185345194" name="constraint" index="8PkJo" />
        <child id="3575255234175157601" name="template" index="1nK1Vg" />
      </concept>
      <concept id="3575255234174969639" name="jetbrains.mps.lang.coderules.structure.ConstraintRule" flags="ng" index="1nLNMm">
        <child id="3575255234174969658" name="head" index="1nLNMb" />
        <child id="3575255234174969660" name="body" index="1nLNMd" />
      </concept>
      <concept id="3575255234174969615" name="jetbrains.mps.lang.coderules.structure.RuleTemplate" flags="ng" index="1nLNMY">
        <child id="3575255234174969633" name="input" index="1nLNMg" />
        <child id="3575255234174969628" name="code" index="1nLNMH" />
      </concept>
      <concept id="3575255234174969664" name="jetbrains.mps.lang.coderules.structure.ConstraintRuleStatement" flags="ng" index="1nLNNL">
        <child id="3575255234174969665" name="rule" index="1nLNNK" />
      </concept>
      <concept id="5372587443968979218" name="jetbrains.mps.lang.coderules.structure.ExpressionConstraint" flags="ng" index="3wWvb2">
        <child id="5372587443968983820" name="expression" index="3wWo3s" />
      </concept>
      <concept id="1878265754077060950" name="jetbrains.mps.lang.coderules.structure.ConstraintParameterDeclaration" flags="ng" index="1zAUYm" />
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
      <concept id="7368070394767067636" name="jetbrains.mps.lang.coderules.structure.ConstraintDeclaration" flags="ng" index="3AqmO8">
        <child id="1878265754077059170" name="parameters" index="1zAUyy" />
      </concept>
      <concept id="7368070394767045637" name="jetbrains.mps.lang.coderules.structure.UserConstraint" flags="ng" index="3Aqt3T">
        <reference id="7368070394767091750" name="template" index="3AqCNq" />
      </concept>
      <concept id="2316688792938826204" name="jetbrains.mps.lang.coderules.structure.ConstraintLogicalClause" flags="ng" index="3I6s7M">
        <child id="2316688792938826214" name="constraint" index="3I6s78" />
      </concept>
      <concept id="2316688792938825384" name="jetbrains.mps.lang.coderules.structure.LogicalClauseList" flags="ng" index="3I6sU6">
        <child id="2316688792938825385" name="clauses" index="3I6sU7" />
      </concept>
    </language>
  </registry>
  <node concept="92CTh" id="78H58oerFvo">
    <property role="TrG5h" value="CheckControlflow" />
    <node concept="2bWyPT" id="78H58oerI06" role="92CTm">
      <property role="TrG5h" value="check" />
      <node concept="3clFbS" id="78H58oerI07" role="fHCRw">
        <node concept="1nLNNL" id="78H58oerI2s" role="3cqZAp">
          <node concept="1nLNMm" id="78H58oerI2t" role="1nLNNK">
            <node concept="3Aq9E8" id="78H58oeAoeW" role="1nLNMd">
              <node concept="3I6sU6" id="78H58oeAoeX" role="3Ip0Jz">
                <node concept="3I6s7M" id="78H58oeAof1" role="3I6sU7">
                  <node concept="3Aqt3T" id="78H58oeAofi" role="3I6s78">
                    <ref role="3AqCNq" node="78H58oeAof4" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="10M0yZ" id="78H58oerHZ5" role="2_lZgo">
      <ref role="3cqZAo" to="fjx4:4t7Xo7inNvw" resolve="CHECK" />
      <ref role="1PxDUh" to="fjx4:4t7Xo7inNgi" resolve="ControlflowQueryKind" />
    </node>
  </node>
  <node concept="AVZre" id="78H58oerI5G">
    <property role="TrG5h" value="Check" />
    <node concept="1nLNMY" id="78H58oerI5L" role="1nK1Vg">
      <property role="TrG5h" value="checkClass" />
      <node concept="3clFbS" id="78H58oerI5M" role="1nLNMH">
        <node concept="1nLNNL" id="78H58oerI6e" role="3cqZAp">
          <node concept="1nLNMm" id="78H58oerI6f" role="1nLNNK">
            <node concept="3Aq93q" id="78H58oerI6i" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="78H58oerI6j" role="3Ip0Jz">
                <node concept="3I6s7M" id="78H58oeAofc" role="3I6sU7">
                  <node concept="3Aqt3T" id="78H58oeAofb" role="3I6s78">
                    <ref role="3AqCNq" node="78H58oeAof4" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="78H58oerI6H" role="1nLNMd">
              <node concept="3I6sU6" id="78H58oerI6I" role="3Ip0Jz">
                <node concept="3I6s7M" id="78H58oerI6M" role="3I6sU7">
                  <node concept="3wWvb2" id="78H58oerI6L" role="3I6s78">
                    <node concept="2OqwBi" id="78H58oeRK9q" role="3wWo3s">
                      <node concept="3A2sRY" id="78H58oeRJQa" role="2Oq$k0">
                        <ref role="3A2yKK" node="78H58oerI5Q" resolve="cc" />
                      </node>
                      <node concept="2s7oft" id="78H58oeRKGs" role="2OqNvi">
                        <property role="2s7ueQ" value="error" />
                        <node concept="Xl_RD" id="78H58oeRKHg" role="2s7u9n">
                          <property role="Xl_RC" value="HAHAHA!!!" />
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
      <node concept="2t___k" id="78H58oerI5P" role="1nLNMg">
        <ref role="2t_S0q" to="tpee:fz12cDA" resolve="ClassConcept" />
        <node concept="3A20r5" id="78H58oerI5Q" role="2t_VXX">
          <property role="TrG5h" value="cc" />
        </node>
      </node>
    </node>
    <node concept="3AqmO8" id="78H58oeAof4" role="8PkJo">
      <property role="TrG5h" value="checkAll" />
    </node>
    <node concept="3AqmO8" id="78H58oerI5H" role="8PkJo">
      <property role="TrG5h" value="check" />
      <node concept="1zAUYm" id="78H58oerI5J" role="1zAUyy">
        <property role="TrG5h" value="node" />
      </node>
    </node>
  </node>
</model>

