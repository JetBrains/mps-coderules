<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ffe541d0-0912-42c1-800b-d2f22dd8a4c8(jetbrains.mps.baseLanguage.closuresExt.types)">
  <persistence version="9" />
  <languages>
    <use id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" version="0" />
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules" version="21" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="12" />
    <engage id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.baseLanguageExt.types)" />
    <import index="tp2c" ref="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="8169506320648805904" name="jetbrains.mps.logic.structure.LogicalVariableDeclarationContainer" flags="ng" index="29MRiA">
        <child id="6399471711045617306" name="dataType" index="3vLBG7" />
        <child id="3063948360254832884" name="declaration" index="3XD1gS" />
      </concept>
      <concept id="8829335963593820278" name="jetbrains.mps.logic.structure.LogicalVariable" flags="ng" index="a7P8L">
        <reference id="8829335963593822893" name="declaration" index="a7OzE" />
      </concept>
      <concept id="8829335963591572611" name="jetbrains.mps.logic.structure.LogicalVariableDeclaration" flags="ng" index="aZer4" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules">
      <concept id="1618328391714763069" name="jetbrains.mps.lang.coderules.structure.MacroTable" flags="ng" index="0oKg$">
        <reference id="6097203247219331496" name="extends" index="3tg4Y$" />
      </concept>
      <concept id="861509610434243104" name="jetbrains.mps.lang.coderules.structure.TermTable" flags="ng" index="ns1xd">
        <child id="861509610434243105" name="contents" index="ns1xc" />
      </concept>
      <concept id="861509610434243081" name="jetbrains.mps.lang.coderules.structure.TermDeclaration" flags="ng" index="ns1x$">
        <property id="5177758076344254900" name="open" index="3uGXoX" />
        <child id="861509610434243084" name="template" index="ns1xx" />
      </concept>
      <concept id="861509610434276450" name="jetbrains.mps.lang.coderules.structure.TermTemplate" flags="ng" index="nspSf" />
      <concept id="8335224865066015764" name="jetbrains.mps.lang.coderules.structure.RulesList" flags="ng" index="AVZre">
        <reference id="3541122455446356437" name="extends" index="2YbDB9" />
        <child id="3575255234175157601" name="template" index="1nK1Vg" />
      </concept>
      <concept id="2381360340662937504" name="jetbrains.mps.lang.coderules.structure.TermType" flags="ig" index="32pEOW" />
      <concept id="3575255234174969639" name="jetbrains.mps.lang.coderules.structure.ConstraintRule" flags="ng" index="1nLNMm">
        <child id="4814011019633607808" name="parameter" index="0Rg$4" />
        <child id="3575255234174969658" name="head" index="1nLNMb" />
      </concept>
      <concept id="3575255234174969615" name="jetbrains.mps.lang.coderules.structure.RuleTemplate" flags="ng" index="1nLNMY">
        <child id="3575255234174969628" name="code" index="1nLNMH" />
      </concept>
      <concept id="3575255234174969664" name="jetbrains.mps.lang.coderules.structure.ConstraintRuleStatement" flags="ng" index="1nLNNL">
        <child id="3575255234174969665" name="rule" index="1nLNNK" />
      </concept>
      <concept id="7368070394766963750" name="jetbrains.mps.lang.coderules.structure.Head" flags="ng" index="3Aq93q" />
      <concept id="7368070394766963523" name="jetbrains.mps.lang.coderules.structure.RuleComponent" flags="ng" index="3Aq9uZ">
        <child id="2316688792939037645" name="logic" index="3Ip0Jz" />
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
      <concept id="965748826975413063" name="jetbrains.mps.lang.coderules.structure.RulePartParameterDeclaration" flags="ng" index="3NuqgR" />
    </language>
  </registry>
  <node concept="0oKg$" id="4E290qPYhpn">
    <property role="TrG5h" value="ClosureTypes" />
    <ref role="3tg4Y$" to="kqnc:E1U1n2RerB" resolve="Types" />
  </node>
  <node concept="AVZre" id="2WQBycG$hsu">
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="RecoverClosure" />
    <ref role="2YbDB9" to="kqnc:6Qzc0KyJGzD" resolve="Recover" />
    <node concept="1nLNMY" id="2WQBycG$nvU" role="1nK1Vg">
      <property role="TrG5h" value="recover_FunctionType" />
      <node concept="3clFbS" id="2WQBycG$nvV" role="1nLNMH">
        <node concept="1nLNNL" id="12QmIo_7sfB" role="3cqZAp">
          <node concept="1nLNMm" id="12QmIo_7sfC" role="1nLNNK">
            <node concept="3Aq93q" id="5upUcEtdUWy" role="1nLNMb">
              <node concept="3I6sU6" id="5upUcEtdUWz" role="3Ip0Jz">
                <node concept="3I6s7M" id="5upUcEtdXZM" role="3I6sU7">
                  <node concept="3Aqt3T" id="5upUcEtdXZL" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:6Qzc0KyJGJT" resolve="recover" />
                    <node concept="a7P8L" id="5upUcEtdXZR" role="3AunhB">
                      <ref role="a7OzE" node="5upUcEtdUWC" resolve="Node" />
                    </node>
                    <node concept="a7P8L" id="5upUcEtdXZZ" role="3AunhB">
                      <ref role="a7OzE" node="5upUcEtdUWI" resolve="Type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="5upUcEtdUWB" role="0Rg$4">
              <node concept="aZer4" id="5upUcEtdUWC" role="3XD1gS">
                <property role="TrG5h" value="Node" />
              </node>
              <node concept="3Tqbb2" id="5f6wxQ30Ugg" role="3vLBG7" />
            </node>
            <node concept="3NuqgR" id="2WQBycG$nBx" role="0Rg$4">
              <node concept="aZer4" id="2WQBycG$nBy" role="3XD1gS">
                <property role="TrG5h" value="Components" />
              </node>
              <node concept="2I9FWS" id="2WQBycG$nBP" role="3vLBG7" />
            </node>
            <node concept="3NuqgR" id="5f6wxQ30Unu" role="0Rg$4">
              <node concept="aZer4" id="5upUcEtdY0_" role="3XD1gS">
                <property role="TrG5h" value="CompTypes" />
              </node>
              <node concept="aZer4" id="5upUcEtdUWI" role="3XD1gS">
                <property role="TrG5h" value="Type" />
              </node>
              <node concept="32pEOW" id="24ciDNzxNEU" role="3vLBG7" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="ns1xd" id="4E290qPYB4i">
    <property role="TrG5h" value="ClosureTerms" />
    <node concept="ns1x$" id="4lCLOtwq2MF" role="ns1xc">
      <property role="TrG5h" value="type" />
      <property role="3uGXoX" value="true" />
      <node concept="nspSf" id="4lCLOtwq2MG" role="ns1xx" />
    </node>
  </node>
</model>

