<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4756f1c3-ee0d-4da9-817d-c7dad8ea74b8(jetbrains.mps.logicExt.types)">
  <persistence version="9" />
  <languages>
    <use id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" version="0" />
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules" version="21" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="13" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi" version="0" />
    <engage id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.baseLanguageExt.types)" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.dataform)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.unification)" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="8456919074574710634" name="jetbrains.mps.logic.structure.ExpressionItem" flags="ng" index="37jhX">
        <child id="8456919074574710741" name="code" index="37jj2" />
      </concept>
      <concept id="8169506320648805904" name="jetbrains.mps.logic.structure.LogicalVariableDeclarationContainer" flags="ng" index="29MRiA">
        <child id="6399471711045617306" name="dataType" index="3vLBG7" />
        <child id="3063948360254832884" name="declaration" index="3XD1gS" />
      </concept>
      <concept id="8829335963593820278" name="jetbrains.mps.logic.structure.LogicalVariable" flags="ng" index="a7P8L">
        <reference id="8829335963593822893" name="declaration" index="a7OzE" />
      </concept>
      <concept id="8829335963591572611" name="jetbrains.mps.logic.structure.LogicalVariableDeclaration" flags="ng" index="aZer4" />
      <concept id="2105510410850132386" name="jetbrains.mps.logic.structure.ListNode" flags="ng" index="KCUsM">
        <child id="2105510410850136264" name="contents" index="KCVpo" />
      </concept>
      <concept id="4780620083400582599" name="jetbrains.mps.logic.structure.LogicalItemExpression" flags="ng" index="1nq8_$">
        <child id="4780620083400582654" name="logical" index="1nq8_t" />
      </concept>
      <concept id="7571593955706120730" name="jetbrains.mps.logic.structure.DataNodeExpression" flags="ng" index="1oi1Uc">
        <child id="7571593955706125526" name="root" index="1oi0x0" />
      </concept>
      <concept id="960803923479540328" name="jetbrains.mps.logic.structure.LogicalVariableDataForm" flags="ng" index="3wAshV">
        <child id="960803923479549586" name="variable" index="3wAq21" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules">
      <concept id="861509610434242029" name="jetbrains.mps.lang.coderules.structure.TermConstructor" flags="ng" index="ns1u0">
        <reference id="861509610434243078" name="decl" index="ns1xF" />
        <child id="861509610434243076" name="override" index="ns1xD" />
      </concept>
      <concept id="861509610434243104" name="jetbrains.mps.lang.coderules.structure.TermTable" flags="ng" index="ns1xd">
        <reference id="8966267790978924106" name="extended" index="2efqH6" />
        <child id="861509610434243105" name="contents" index="ns1xc" />
      </concept>
      <concept id="861509610434243081" name="jetbrains.mps.lang.coderules.structure.TermDeclaration" flags="ng" index="ns1x$">
        <reference id="861509610434243089" name="prototype" index="ns1xW" />
        <child id="861509610434243084" name="template" index="ns1xx" />
      </concept>
      <concept id="861509610434276450" name="jetbrains.mps.lang.coderules.structure.TermTemplate" flags="ng" index="nspSf">
        <child id="861509610434276451" name="feature" index="nspSe" />
      </concept>
      <concept id="861509610434289827" name="jetbrains.mps.lang.coderules.structure.ChildFeature" flags="ng" index="nstbe" />
      <concept id="861509610434435669" name="jetbrains.mps.lang.coderules.structure.TermFeatureOverride" flags="ng" index="nsMwS">
        <reference id="861509610434435672" name="feature" index="nsMwP" />
        <child id="861509610434435670" name="getter" index="nsMwV" />
      </concept>
      <concept id="6691972578451976398" name="jetbrains.mps.lang.coderules.structure.RuleInputSpecification" flags="ng" index="2t___k">
        <reference id="6691972578451990912" name="applicableConcept" index="2t_S0q" />
        <child id="6691972578451986151" name="input" index="2t_VXX" />
      </concept>
      <concept id="8335224865066015764" name="jetbrains.mps.lang.coderules.structure.RulesList" flags="ng" index="AVZre">
        <reference id="3541122455446356437" name="extends" index="2YbDB9" />
        <child id="3575255234175157601" name="template" index="1nK1Vg" />
      </concept>
      <concept id="2381360340662937504" name="jetbrains.mps.lang.coderules.structure.TermType" flags="ig" index="32pEOW" />
      <concept id="6097203247182936001" name="jetbrains.mps.lang.coderules.structure.ExpandMacroConstraint" flags="ng" index="3jbYBd">
        <reference id="6097203247182937177" name="template" index="3jbY9l" />
        <child id="6097203247182937145" name="input" index="3jbY8P" />
        <child id="6097203247182937143" name="logical" index="3jbY8V" />
      </concept>
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
      <concept id="7368070394766978092" name="jetbrains.mps.lang.coderules.structure.EmitConstraintStatement" flags="ng" index="3Aqczg">
        <child id="7368070394767031348" name="constraint" index="3Aqpz8" />
      </concept>
      <concept id="7368070394767045637" name="jetbrains.mps.lang.coderules.structure.UserConstraint" flags="ng" index="3Aqt3T">
        <reference id="7368070394767091750" name="template" index="3AqCNq" />
        <child id="7368070394768117915" name="argument" index="3AunhB" />
      </concept>
      <concept id="1553157749316176827" name="jetbrains.mps.lang.coderules.structure.PatternLogicalVariable" flags="ng" index="1HFMs5">
        <child id="5131913661993028915" name="variable" index="1uarlU" />
        <child id="5131913661993028917" name="value" index="1uarlW" />
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
      <concept id="965748826975413063" name="jetbrains.mps.lang.coderules.structure.RulePartParameterDeclaration" flags="ng" index="3NuqgR" />
    </language>
  </registry>
  <node concept="AVZre" id="7LI_gNMjLUJ">
    <property role="TrG5h" value="Check" />
    <ref role="2YbDB9" to="kqnc:34$A1Mf51rY" resolve="TypeOf" />
    <node concept="1nLNMY" id="7LI_gNMjO$E" role="1nK1Vg">
      <property role="TrG5h" value="logicalItemExpression" />
      <node concept="3clFbS" id="7LI_gNMjO$F" role="1nLNMH">
        <node concept="1nLNNL" id="7LI_gNMkJS9" role="3cqZAp">
          <node concept="1nLNMm" id="7LI_gNMkJSa" role="1nLNNK">
            <node concept="3Aq93q" id="7LI_gNMkJSd" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="7LI_gNMkJSe" role="3Ip0Jz">
                <node concept="3I6s7M" id="7LI_gNMkJSi" role="3I6sU7">
                  <node concept="3Aqt3T" id="7LI_gNMkJSh" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="7LI_gNMkJSS" role="3AunhB">
                      <node concept="2OqwBi" id="7LI_gNMkK1a" role="37jj2">
                        <node concept="3A2sRY" id="7LI_gNMkJSQ" role="2Oq$k0">
                          <ref role="3A2yKK" node="7LI_gNMkJRX" resolve="lie" />
                        </node>
                        <node concept="3TrEf2" id="7LI_gNMkK9n" role="2OqNvi">
                          <ref role="3Tt5mk" to="5j4j:49obaclcanY" resolve="logical" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="7LI_gNMkJT8" role="3AunhB">
                      <ref role="a7OzE" node="7LI_gNMkJSn" resolve="Type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="7LI_gNMkJSm" role="0Rg$4">
              <node concept="aZer4" id="7LI_gNMkJSn" role="3XD1gS">
                <property role="TrG5h" value="Type" />
              </node>
              <node concept="32pEOW" id="7LI_gNMkJSz" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="7LI_gNMkKbv" role="3xSepv">
              <node concept="3Aq9E8" id="7LI_gNMkKbw" role="3xSepj">
                <node concept="3I6sU6" id="7LI_gNMkKbx" role="3Ip0Jz">
                  <node concept="3I6s7M" id="7LI_gNMkKbA" role="3I6sU7">
                    <node concept="3Aqt3T" id="7LI_gNMkKb_" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="7LI_gNMkKbH" role="3AunhB">
                        <node concept="3A2sRY" id="7LI_gNMkKbF" role="37jj2">
                          <ref role="3A2yKK" node="7LI_gNMkJRX" resolve="lie" />
                        </node>
                      </node>
                      <node concept="a7P8L" id="7LI_gNMkKbX" role="3AunhB">
                        <ref role="a7OzE" node="7LI_gNMkJSn" resolve="Type" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="7LI_gNMkJRW" role="1nLNMg">
        <ref role="2t_S0q" to="5j4j:49obaclcan7" resolve="LogicalItemExpression" />
        <node concept="3A20r5" id="7LI_gNMkJRX" role="2t_VXX">
          <property role="TrG5h" value="lie" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="7LI_gNMkKc6" role="1nK1Vg">
      <property role="TrG5h" value="logicalVariableRefExpression" />
      <node concept="3clFbS" id="7LI_gNMkKc7" role="1nLNMH">
        <node concept="1nLNNL" id="7LI_gNMkKpI" role="3cqZAp">
          <node concept="1nLNMm" id="7LI_gNMkKpJ" role="1nLNNK">
            <node concept="3Aq93q" id="7LI_gNMkKqh" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="7LI_gNMkKqi" role="3Ip0Jz">
                <node concept="3I6s7M" id="7LI_gNMkKqm" role="3I6sU7">
                  <node concept="3Aqt3T" id="7LI_gNMkKql" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="7LI_gNMkKqt" role="3AunhB">
                      <node concept="2OqwBi" id="7LI_gNMkKyw" role="37jj2">
                        <node concept="3A2sRY" id="7LI_gNMkKqr" role="2Oq$k0">
                          <ref role="3A2yKK" node="7LI_gNMkKpy" resolve="lvre" />
                        </node>
                        <node concept="3TrEf2" id="7LI_gNMkKEH" role="2OqNvi">
                          <ref role="3Tt5mk" to="5j4j:hYA4REb_WC" resolve="logical" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="7LI_gNMkKGV" role="3AunhB">
                      <ref role="a7OzE" node="7LI_gNMkKpO" resolve="Type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="7LI_gNMkKpN" role="0Rg$4">
              <node concept="aZer4" id="7LI_gNMkKpO" role="3XD1gS">
                <property role="TrG5h" value="Type" />
              </node>
              <node concept="32pEOW" id="7LI_gNMkKq0" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="7LI_gNMkKH$" role="3xSepv">
              <node concept="3Aq9E8" id="7LI_gNMkKH_" role="3xSepj">
                <node concept="3I6sU6" id="7LI_gNMkKHA" role="3Ip0Jz">
                  <node concept="3I6s7M" id="7LI_gNMkKHF" role="3I6sU7">
                    <node concept="3Aqt3T" id="7LI_gNMkKHE" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="7LI_gNMkKHM" role="3AunhB">
                        <node concept="3A2sRY" id="7LI_gNMkKHK" role="37jj2">
                          <ref role="3A2yKK" node="7LI_gNMkKpy" resolve="lvre" />
                        </node>
                      </node>
                      <node concept="a7P8L" id="7LI_gNMkKI2" role="3AunhB">
                        <ref role="a7OzE" node="7LI_gNMkKpO" resolve="Type" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="7LI_gNMkKpx" role="1nLNMg">
        <ref role="2t_S0q" to="5j4j:hYA4REbm1C" resolve="LogicalVariableRefExpression" />
        <node concept="3A20r5" id="7LI_gNMkKpy" role="2t_VXX">
          <property role="TrG5h" value="lvre" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="7LI_gNMkLWt" role="1nK1Vg">
      <property role="TrG5h" value="logicalVariableDeclaration" />
      <node concept="3clFbS" id="7LI_gNMkLWu" role="1nLNMH">
        <node concept="1nLNNL" id="7LI_gNMkLXy" role="3cqZAp">
          <node concept="1nLNMm" id="7LI_gNMkLXz" role="1nLNNK">
            <node concept="3Aq93q" id="7LI_gNMkLY5" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="7LI_gNMkLY6" role="3Ip0Jz">
                <node concept="3I6s7M" id="7LI_gNMkLYa" role="3I6sU7">
                  <node concept="3Aqt3T" id="7LI_gNMkLY9" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="7LI_gNMkLYh" role="3AunhB">
                      <node concept="3A2sRY" id="7LI_gNMkLYf" role="37jj2">
                        <ref role="3A2yKK" node="7LI_gNMkLXm" resolve="lvdecl" />
                      </node>
                    </node>
                    <node concept="a7P8L" id="7LI_gNMkM6j" role="3AunhB">
                      <ref role="a7OzE" node="7LI_gNMkLXC" resolve="Type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="7LI_gNMkLXB" role="0Rg$4">
              <node concept="aZer4" id="7LI_gNMkLXC" role="3XD1gS">
                <property role="TrG5h" value="Type" />
              </node>
              <node concept="aZer4" id="7LI_gNMpTN1" role="3XD1gS">
                <property role="TrG5h" value="DataType" />
              </node>
              <node concept="32pEOW" id="7LI_gNMkLXO" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="7LI_gNMkM6s" role="3xSepv">
              <node concept="3Aq9E8" id="7LI_gNMkM6t" role="3xSepj">
                <node concept="3I6sU6" id="7LI_gNMkM6u" role="3Ip0Jz">
                  <node concept="3IrJb3" id="7LI_gNMkM6y" role="3I6sU7">
                    <node concept="3clFbS" id="7LI_gNMkM6z" role="3IrJb0">
                      <node concept="3Aqczg" id="7LI_gNMpTMH" role="3cqZAp">
                        <node concept="3jbYBd" id="7LI_gNMpTME" role="3Aqpz8">
                          <ref role="3jbY9l" to="kqnc:5itBwMau8m1" resolve="lift" />
                          <node concept="2OqwBi" id="7LI_gNMpUym" role="3jbY8P">
                            <node concept="1PxgMI" id="7LI_gNMpUpF" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="7LI_gNMpUqO" role="3oSUPX">
                                <ref role="cht4Q" to="5j4j:75vUFrS_9Sg" resolve="LogicalVariableDeclarationContainer" />
                              </node>
                              <node concept="2OqwBi" id="7LI_gNMpTVN" role="1m5AlR">
                                <node concept="3A2sRY" id="7LI_gNMpTNX" role="2Oq$k0">
                                  <ref role="3A2yKK" node="7LI_gNMkLXm" resolve="lvdecl" />
                                </node>
                                <node concept="1mfA1w" id="7LI_gNMpU9L" role="2OqNvi" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7LI_gNMpUGg" role="2OqNvi">
                              <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
                            </node>
                          </node>
                          <node concept="a7P8L" id="7LI_gNMpTNE" role="3jbY8V">
                            <ref role="a7OzE" node="7LI_gNMpTN1" resolve="DataType" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="7LI_gNMkM6A" role="3cqZAp">
                        <node concept="2OqwBi" id="7LI_gNMkMuv" role="3clFbw">
                          <node concept="2OqwBi" id="7LI_gNMkMa_" role="2Oq$k0">
                            <node concept="3A2sRY" id="7LI_gNMkM6M" role="2Oq$k0">
                              <ref role="3A2yKK" node="7LI_gNMkLXm" resolve="lvdecl" />
                            </node>
                            <node concept="3TrEf2" id="7LI_gNMkMjk" role="2OqNvi">
                              <ref role="3Tt5mk" to="5j4j:5f6wxQ3ychO" resolve="cardinalityExpr" />
                            </node>
                          </node>
                          <node concept="3w_OXm" id="7LI_gNMkMBw" role="2OqNvi" />
                        </node>
                        <node concept="3clFbS" id="7LI_gNMkM6C" role="3clFbx">
                          <node concept="3Aqczg" id="7LI_gNMkMFb" role="3cqZAp">
                            <node concept="3Aqt3T" id="7LI_gNMkMF9" role="3Aqpz8">
                              <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                              <node concept="37jhX" id="7LI_gNMkMFm" role="3AunhB">
                                <node concept="3A2sRY" id="7LI_gNMkMFk" role="37jj2">
                                  <ref role="3A2yKK" node="7LI_gNMkLXm" resolve="lvdecl" />
                                </node>
                              </node>
                              <node concept="ns1u0" id="7LI_gNMpPwL" role="3AunhB">
                                <ref role="ns1xF" node="7LI_gNMkMFB" resolve="logical" />
                                <node concept="nsMwS" id="7LI_gNMpTMt" role="ns1xD">
                                  <ref role="nsMwP" node="7LI_gNMpTBn" resolve="dataType" />
                                  <node concept="1nq8_$" id="7LI_gNMpUI$" role="nsMwV">
                                    <node concept="a7P8L" id="7LI_gNMpUIz" role="1nq8_t">
                                      <ref role="a7OzE" node="7LI_gNMpTN1" resolve="DataType" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="7LI_gNMpUIg" role="3cqZAp" />
                        </node>
                        <node concept="9aQIb" id="7LI_gNMpURS" role="9aQIa">
                          <node concept="3clFbS" id="7LI_gNMpURT" role="9aQI4">
                            <node concept="3Aqczg" id="7LI_gNMpUSg" role="3cqZAp">
                              <node concept="3Aqt3T" id="7LI_gNMpUSh" role="3Aqpz8">
                                <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                                <node concept="37jhX" id="7LI_gNMpUSi" role="3AunhB">
                                  <node concept="3A2sRY" id="7LI_gNMpUSj" role="37jj2">
                                    <ref role="3A2yKK" node="7LI_gNMkLXm" resolve="lvdecl" />
                                  </node>
                                </node>
                                <node concept="ns1u0" id="7LI_gNMpUSk" role="3AunhB">
                                  <ref role="ns1xF" node="7LI_gNMpUS4" resolve="multiLogical" />
                                  <node concept="nsMwS" id="7LI_gNMpUSl" role="ns1xD">
                                    <ref role="nsMwP" node="7LI_gNMpUS6" resolve="dataType" />
                                    <node concept="1nq8_$" id="7LI_gNMpUSm" role="nsMwV">
                                      <node concept="a7P8L" id="7LI_gNMpUSn" role="1nq8_t">
                                        <ref role="a7OzE" node="7LI_gNMpTN1" resolve="DataType" />
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
      <node concept="2t___k" id="7LI_gNMkLXl" role="1nLNMg">
        <ref role="2t_S0q" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
        <node concept="3A20r5" id="7LI_gNMkLXm" role="2t_VXX">
          <property role="TrG5h" value="lvdecl" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="7LI_gNMpTgK" role="1nK1Vg">
      <property role="TrG5h" value="expressionItem" />
      <node concept="3clFbS" id="7LI_gNMpTgL" role="1nLNMH">
        <node concept="1nLNNL" id="7LI_gNMpTip" role="3cqZAp">
          <node concept="1nLNMm" id="7LI_gNMpTiq" role="1nLNNK">
            <node concept="3Aq93q" id="7LI_gNMpTj3" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="7LI_gNMpTj4" role="3Ip0Jz">
                <node concept="3I6s7M" id="7LI_gNMpTj8" role="3I6sU7">
                  <node concept="3Aqt3T" id="7LI_gNMpTj7" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="7LI_gNMpTjf" role="3AunhB">
                      <node concept="2OqwBi" id="7LI_gNMpTrp" role="37jj2">
                        <node concept="3A2sRY" id="7LI_gNMpTjd" role="2Oq$k0">
                          <ref role="3A2yKK" node="7LI_gNMpTia" resolve="ei" />
                        </node>
                        <node concept="3TrEf2" id="7LI_gNMpTzA" role="2OqNvi">
                          <ref role="3Tt5mk" to="5j4j:7lt0LtQg3vl" resolve="code" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="7LI_gNMpTjv" role="3AunhB">
                      <ref role="a7OzE" node="7LI_gNMpTiv" resolve="CType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="7LI_gNMpTiu" role="0Rg$4">
              <node concept="aZer4" id="7LI_gNMpTiv" role="3XD1gS">
                <property role="TrG5h" value="CType" />
              </node>
              <node concept="32pEOW" id="7LI_gNMpTiF" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="7LI_gNMpTAc" role="3xSepv">
              <node concept="3Aq9E8" id="7LI_gNMpTAd" role="3xSepj">
                <node concept="3I6sU6" id="7LI_gNMpTAe" role="3Ip0Jz">
                  <node concept="3I6s7M" id="7LI_gNMpTAj" role="3I6sU7">
                    <node concept="3Aqt3T" id="7LI_gNMpTAi" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="7LI_gNMpTAt" role="3AunhB">
                        <node concept="3A2sRY" id="7LI_gNMpTAr" role="37jj2">
                          <ref role="3A2yKK" node="7LI_gNMpTia" resolve="ei" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="7LI_gNMpTAE" role="3AunhB">
                        <ref role="ns1xF" node="7LI_gNMkMFB" resolve="logical" />
                        <node concept="nsMwS" id="7LI_gNMpTAI" role="ns1xD">
                          <ref role="nsMwP" node="7LI_gNMpTBn" resolve="dataType" />
                          <node concept="1nq8_$" id="7LI_gNMpUTR" role="nsMwV">
                            <node concept="a7P8L" id="7LI_gNMpUTQ" role="1nq8_t">
                              <ref role="a7OzE" node="7LI_gNMpTiv" resolve="CType" />
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
      <node concept="2t___k" id="7LI_gNMpTi9" role="1nLNMg">
        <ref role="2t_S0q" to="5j4j:7lt0LtQg3tE" resolve="ExpressionItem" />
        <node concept="3A20r5" id="7LI_gNMpTia" role="2t_VXX">
          <property role="TrG5h" value="ei" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="7LI_gNMpWAS" role="1nK1Vg">
      <property role="TrG5h" value="logicalItemValueExpression" />
      <node concept="3clFbS" id="7LI_gNMpWAT" role="1nLNMH">
        <node concept="1nLNNL" id="7LI_gNMpWDm" role="3cqZAp">
          <node concept="1nLNMm" id="7LI_gNMpWDo" role="1nLNNK">
            <node concept="3Aq93q" id="7LI_gNMpWDV" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="7LI_gNMpWDW" role="3Ip0Jz">
                <node concept="3I6s7M" id="7LI_gNMpWE0" role="3I6sU7">
                  <node concept="3Aqt3T" id="7LI_gNMpWDZ" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="7LI_gNMpWE7" role="3AunhB">
                      <node concept="2OqwBi" id="7LI_gNMpWM4" role="37jj2">
                        <node concept="3A2sRY" id="7LI_gNMpWE5" role="2Oq$k0">
                          <ref role="3A2yKK" node="7LI_gNMpWD8" resolve="live" />
                        </node>
                        <node concept="3TrEf2" id="7LI_gNMpWUh" role="2OqNvi">
                          <ref role="3Tt5mk" to="5j4j:7zIaasjAKqg" resolve="logical" />
                        </node>
                      </node>
                    </node>
                    <node concept="1HFMs5" id="7LI_gNMpWWF" role="3AunhB">
                      <node concept="a7P8L" id="7LI_gNMpWWv" role="1uarlU">
                        <ref role="a7OzE" node="7LI_gNMpWDu" resolve="Type" />
                      </node>
                      <node concept="ns1u0" id="7LI_gNMpX8P" role="1uarlW">
                        <ref role="ns1xF" node="7LI_gNMkMFB" resolve="logical" />
                        <node concept="nsMwS" id="7LI_gNMpX8R" role="ns1xD">
                          <ref role="nsMwP" node="7LI_gNMpTBn" resolve="dataType" />
                          <node concept="1nq8_$" id="7LI_gNMpX9I" role="nsMwV">
                            <node concept="a7P8L" id="7LI_gNMpX9H" role="1nq8_t">
                              <ref role="a7OzE" node="7LI_gNMpX8V" resolve="DataType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="7LI_gNMpWDt" role="0Rg$4">
              <node concept="aZer4" id="7LI_gNMpWDu" role="3XD1gS">
                <property role="TrG5h" value="Type" />
              </node>
              <node concept="aZer4" id="7LI_gNMpX8V" role="3XD1gS">
                <property role="TrG5h" value="DataType" />
              </node>
              <node concept="32pEOW" id="7LI_gNMpWDE" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="7LI_gNMpX9V" role="3xSepv">
              <node concept="3Aq9E8" id="7LI_gNMpX9W" role="3xSepj">
                <node concept="3I6sU6" id="7LI_gNMpX9X" role="3Ip0Jz">
                  <node concept="3I6s7M" id="7LI_gNMpXa2" role="3I6sU7">
                    <node concept="3Aqt3T" id="7LI_gNMpXa1" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="7LI_gNMpXa9" role="3AunhB">
                        <node concept="3A2sRY" id="7LI_gNMpXa7" role="37jj2">
                          <ref role="3A2yKK" node="7LI_gNMpWD8" resolve="live" />
                        </node>
                      </node>
                      <node concept="a7P8L" id="7LI_gNMpXap" role="3AunhB">
                        <ref role="a7OzE" node="7LI_gNMpX8V" resolve="DataType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="7LI_gNMpWD7" role="1nLNMg">
        <ref role="2t_S0q" to="5j4j:7zIaasjAAux" resolve="LogicalItemValueExpression" />
        <node concept="3A20r5" id="7LI_gNMpWD8" role="2t_VXX">
          <property role="TrG5h" value="live" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="7LI_gNMB3n7" role="1nK1Vg">
      <property role="TrG5h" value="dataNodeExpression" />
      <node concept="3clFbS" id="7LI_gNMB3n8" role="1nLNMH">
        <node concept="1nLNNL" id="7LI_gNMB3q2" role="3cqZAp">
          <node concept="1nLNMm" id="7LI_gNMB3q4" role="1nLNNK">
            <node concept="3Aq93q" id="7LI_gNMB3qq" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="7LI_gNMB3qr" role="3Ip0Jz">
                <node concept="3I6s7M" id="7LI_gNMB3qv" role="3I6sU7">
                  <node concept="3Aqt3T" id="7LI_gNMB3qu" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="7LI_gNMB3qy" role="3xSepv">
              <node concept="3Aq9E8" id="7LI_gNMB3qz" role="3xSepj">
                <node concept="3I6sU6" id="7LI_gNMB3q$" role="3Ip0Jz">
                  <node concept="3IrJb3" id="7LI_gNMB3qC" role="3I6sU7">
                    <node concept="3clFbS" id="7LI_gNMB3qD" role="3IrJb0">
                      <node concept="3clFbJ" id="7LI_gNMB3qG" role="3cqZAp">
                        <node concept="2OqwBi" id="7LI_gNMB3Sj" role="3clFbw">
                          <node concept="2OqwBi" id="7LI_gNMB3$z" role="2Oq$k0">
                            <node concept="3A2sRY" id="7LI_gNMB3qS" role="2Oq$k0">
                              <ref role="3A2yKK" node="7LI_gNMB3pR" resolve="dne" />
                            </node>
                            <node concept="3TrEf2" id="7LI_gNMB3H9" role="2OqNvi">
                              <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" resolve="root" />
                            </node>
                          </node>
                          <node concept="1mIQ4w" id="7LI_gNMB4e0" role="2OqNvi">
                            <node concept="chp4Y" id="7LI_gNMB4g4" role="cj9EA">
                              <ref role="cht4Q" to="5j4j:6$jH9oLmYC_" resolve="TermNode" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="7LI_gNMB3qI" role="3clFbx" />
                        <node concept="3eNFk2" id="7LI_gNMB4n0" role="3eNLev">
                          <node concept="3clFbS" id="7LI_gNMB4n2" role="3eOfB_" />
                          <node concept="2OqwBi" id="7LI_gNMB4nC" role="3eO9$A">
                            <node concept="2OqwBi" id="7LI_gNMB4nD" role="2Oq$k0">
                              <node concept="3A2sRY" id="7LI_gNMB4nE" role="2Oq$k0">
                                <ref role="3A2yKK" node="7LI_gNMB3pR" resolve="dne" />
                              </node>
                              <node concept="3TrEf2" id="7LI_gNMB4nF" role="2OqNvi">
                                <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" resolve="root" />
                              </node>
                            </node>
                            <node concept="1mIQ4w" id="7LI_gNMB4nG" role="2OqNvi">
                              <node concept="chp4Y" id="7LI_gNMB4sM" role="cj9EA">
                                <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3eNFk2" id="7LI_gNMB4xD" role="3eNLev">
                          <node concept="3clFbS" id="7LI_gNMB4xE" role="3eOfB_">
                            <node concept="3clFbJ" id="7LI_gNMB6kJ" role="3cqZAp">
                              <node concept="2OqwBi" id="7LI_gNMBa8y" role="3clFbw">
                                <node concept="1y4W85" id="7LI_gNMB9yZ" role="2Oq$k0">
                                  <node concept="3cmrfG" id="7LI_gNMBa0W" role="1y58nS">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                  <node concept="2OqwBi" id="7LI_gNMB7sU" role="1y566C">
                                    <node concept="1PxgMI" id="7LI_gNMB7aQ" role="2Oq$k0">
                                      <property role="1BlNFB" value="true" />
                                      <node concept="chp4Y" id="7LI_gNMB7hq" role="3oSUPX">
                                        <ref role="cht4Q" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                                      </node>
                                      <node concept="2OqwBi" id="7LI_gNMB6uA" role="1m5AlR">
                                        <node concept="3A2sRY" id="7LI_gNMB6kV" role="2Oq$k0">
                                          <ref role="3A2yKK" node="7LI_gNMB3pR" resolve="dne" />
                                        </node>
                                        <node concept="3TrEf2" id="7LI_gNMB71x" role="2OqNvi">
                                          <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" resolve="root" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3Tsc0h" id="7LI_gNMB7GN" role="2OqNvi">
                                      <ref role="3TtcxE" to="5j4j:6$jH9oLmYFB" resolve="contents" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="1mIQ4w" id="7LI_gNMBaCX" role="2OqNvi">
                                  <node concept="chp4Y" id="7LI_gNMBaDi" role="cj9EA">
                                    <ref role="cht4Q" to="5j4j:1OShD0HAY6y" resolve="ListNode" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="7LI_gNMB6kL" role="3clFbx">
                                <node concept="3Aqczg" id="kHzC1TY8Hd" role="3cqZAp">
                                  <node concept="3jm4v3" id="kHzC1TY8Hb" role="3Aqpz8">
                                    <ref role="3jm46O" to="kqnc:3qUnz9vk$1o" resolve="classifierTypeNonGeneric" />
                                    <node concept="2tJFMh" id="kHzC1TY8Hy" role="3jicU7">
                                      <node concept="ZC_QK" id="kHzC1TY8Hz" role="2tJFKM">
                                        <ref role="2aWVGs" to="6exd:6YPNC4OECgm" resolve="ListRole" />
                                      </node>
                                    </node>
                                    <node concept="a7P8L" id="kHzC1TY8Hr" role="3jm6SO">
                                      <ref role="a7OzE" node="kHzC1TY8Gz" resolve="Cls" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="7LI_gNMBaFR" role="3cqZAp" />
                              </node>
                              <node concept="9aQIb" id="7LI_gNMBaG3" role="9aQIa">
                                <node concept="3clFbS" id="7LI_gNMBaG4" role="9aQI4">
                                  <node concept="3Aqczg" id="kHzC1TYa92" role="3cqZAp">
                                    <node concept="3jm4v3" id="kHzC1TYa93" role="3Aqpz8">
                                      <ref role="3jm46O" to="kqnc:3qUnz9vk$1o" resolve="classifierTypeNonGeneric" />
                                      <node concept="2tJFMh" id="kHzC1TYa94" role="3jicU7">
                                        <node concept="ZC_QK" id="kHzC1TYa$8" role="2tJFKM">
                                          <ref role="2aWVGs" to="6exd:6YPNC4NYnau" resolve="ChildRole" />
                                        </node>
                                      </node>
                                      <node concept="a7P8L" id="kHzC1TYa96" role="3jm6SO">
                                        <ref role="a7OzE" node="kHzC1TY8Gz" resolve="Cls" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="7LI_gNMBbai" role="3cqZAp" />
                          </node>
                          <node concept="2OqwBi" id="7LI_gNMB4xF" role="3eO9$A">
                            <node concept="2OqwBi" id="7LI_gNMB4xG" role="2Oq$k0">
                              <node concept="3A2sRY" id="7LI_gNMB4xH" role="2Oq$k0">
                                <ref role="3A2yKK" node="7LI_gNMB3pR" resolve="dne" />
                              </node>
                              <node concept="3TrEf2" id="7LI_gNMB4xI" role="2OqNvi">
                                <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" resolve="root" />
                              </node>
                            </node>
                            <node concept="1mIQ4w" id="7LI_gNMB4xJ" role="2OqNvi">
                              <node concept="chp4Y" id="7LI_gNMB4zi" role="cj9EA">
                                <ref role="cht4Q" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3eNFk2" id="7LI_gNMB4FJ" role="3eNLev">
                          <node concept="3clFbS" id="7LI_gNMB4FK" role="3eOfB_">
                            <node concept="3Aqczg" id="kHzC1TYayM" role="3cqZAp">
                              <node concept="3jm4v3" id="kHzC1TYayN" role="3Aqpz8">
                                <ref role="3jm46O" to="kqnc:3qUnz9vk$1o" resolve="classifierTypeNonGeneric" />
                                <node concept="2tJFMh" id="7LI_gNMB5SI" role="3jicU7">
                                  <node concept="ZC_QK" id="7LI_gNMB6kv" role="2tJFKM">
                                    <ref role="2aWVGs" to="kqnc:3Qp4N06bUDh" resolve="Value" />
                                  </node>
                                </node>
                                <node concept="a7P8L" id="kHzC1TYayQ" role="3jm6SO">
                                  <ref role="a7OzE" node="kHzC1TY8Gz" resolve="Cls" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="7LI_gNMB6k_" role="3cqZAp" />
                          </node>
                          <node concept="2OqwBi" id="7LI_gNMB4FL" role="3eO9$A">
                            <node concept="2OqwBi" id="7LI_gNMB4FM" role="2Oq$k0">
                              <node concept="3A2sRY" id="7LI_gNMB4FN" role="2Oq$k0">
                                <ref role="3A2yKK" node="7LI_gNMB3pR" resolve="dne" />
                              </node>
                              <node concept="3TrEf2" id="7LI_gNMB4FO" role="2OqNvi">
                                <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" resolve="root" />
                              </node>
                            </node>
                            <node concept="1mIQ4w" id="7LI_gNMB4FP" role="2OqNvi">
                              <node concept="chp4Y" id="7LI_gNMB4Qy" role="cj9EA">
                                <ref role="cht4Q" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3eNFk2" id="7LI_gNMB4Um" role="3eNLev">
                          <node concept="3clFbS" id="7LI_gNMB4Un" role="3eOfB_">
                            <node concept="3Aqczg" id="kHzC1TYazd" role="3cqZAp">
                              <node concept="3jm4v3" id="kHzC1TYaze" role="3Aqpz8">
                                <ref role="3jm46O" to="kqnc:3qUnz9vk$1o" resolve="classifierTypeNonGeneric" />
                                <node concept="2tJFMh" id="7LI_gNMB5sN" role="3jicU7">
                                  <node concept="ZC_QK" id="7LI_gNMB5Sy" role="2tJFKM">
                                    <ref role="2aWVGs" to="6exd:3OPtF03lco4" resolve="ListNode" />
                                  </node>
                                </node>
                                <node concept="a7P8L" id="kHzC1TYazh" role="3jm6SO">
                                  <ref role="a7OzE" node="kHzC1TY8Gz" resolve="Cls" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="7LI_gNMB5So" role="3cqZAp" />
                          </node>
                          <node concept="2OqwBi" id="7LI_gNMB4Uo" role="3eO9$A">
                            <node concept="2OqwBi" id="7LI_gNMB4Up" role="2Oq$k0">
                              <node concept="3A2sRY" id="7LI_gNMB4Uq" role="2Oq$k0">
                                <ref role="3A2yKK" node="7LI_gNMB3pR" resolve="dne" />
                              </node>
                              <node concept="3TrEf2" id="7LI_gNMB4Ur" role="2OqNvi">
                                <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" resolve="root" />
                              </node>
                            </node>
                            <node concept="1mIQ4w" id="7LI_gNMB4Us" role="2OqNvi">
                              <node concept="chp4Y" id="7LI_gNMB4X1" role="cj9EA">
                                <ref role="cht4Q" to="5j4j:1OShD0HAY6y" resolve="ListNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="7LI_gNMB51D" role="9aQIa">
                          <node concept="3clFbS" id="7LI_gNMB51E" role="9aQI4">
                            <node concept="3Aqczg" id="kHzC1TYazC" role="3cqZAp">
                              <node concept="3jm4v3" id="kHzC1TYazD" role="3Aqpz8">
                                <ref role="3jm46O" to="kqnc:3qUnz9vk$1o" resolve="classifierTypeNonGeneric" />
                                <node concept="2tJFMh" id="7LI_gNMB5sv" role="3jicU7">
                                  <node concept="ZC_QK" id="7LI_gNMB5sB" role="2tJFKM">
                                    <ref role="2aWVGs" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                                  </node>
                                </node>
                                <node concept="a7P8L" id="kHzC1TYazG" role="3jm6SO">
                                  <ref role="a7OzE" node="kHzC1TY8Gz" resolve="Cls" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Aqczg" id="kHzC1TY9Kx" role="3cqZAp">
                        <node concept="3Aqt3T" id="kHzC1TY9Kv" role="3Aqpz8">
                          <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                          <node concept="37jhX" id="kHzC1TY9Mj" role="3AunhB">
                            <node concept="3A2sRY" id="kHzC1TY9Mh" role="37jj2">
                              <ref role="3A2yKK" node="7LI_gNMB3pR" resolve="dne" />
                            </node>
                          </node>
                          <node concept="a7P8L" id="kHzC1TY9Mz" role="3AunhB">
                            <ref role="a7OzE" node="kHzC1TY8Gz" resolve="Cls" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="kHzC1TY8Gy" role="0Rg$4">
              <node concept="aZer4" id="kHzC1TY8Gz" role="3XD1gS">
                <property role="TrG5h" value="Cls" />
              </node>
              <node concept="32pEOW" id="kHzC1TY8GJ" role="3vLBG7" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="7LI_gNMB3pQ" role="1nLNMg">
        <ref role="2t_S0q" to="5j4j:6$jH9oLmUCq" resolve="DataNodeExpression" />
        <node concept="3A20r5" id="7LI_gNMB3pR" role="2t_VXX">
          <property role="TrG5h" value="dne" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="7LI_gNMBbpU" role="1nK1Vg">
      <property role="TrG5h" value="splice" />
      <node concept="3clFbS" id="7LI_gNMBbpV" role="1nLNMH">
        <node concept="1nLNNL" id="7LI_gNMBbAR" role="3cqZAp">
          <node concept="1nLNMm" id="7LI_gNMBbAS" role="1nLNNK">
            <node concept="3Aq93q" id="7LI_gNMBbAV" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="7LI_gNMBbAW" role="3Ip0Jz">
                <node concept="3I6s7M" id="7LI_gNMBbBL" role="3I6sU7">
                  <node concept="3Aqt3T" id="7LI_gNMBbBI" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="7LI_gNMBbBS" role="3AunhB">
                      <node concept="2OqwBi" id="7LI_gNMBbKv" role="37jj2">
                        <node concept="3A2sRY" id="7LI_gNMBbBQ" role="2Oq$k0">
                          <ref role="3A2yKK" node="7LI_gNMBbAC" resolve="spl" />
                        </node>
                        <node concept="3TrEf2" id="7LI_gNMBc4s" role="2OqNvi">
                          <ref role="3Tt5mk" to="5j4j:dfChU1zo4I" resolve="expression" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="7LI_gNMBc6M" role="3AunhB">
                      <ref role="a7OzE" node="7LI_gNMBbBf" resolve="Type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="7LI_gNMBbB3" role="3xSepv">
              <node concept="3Aq9E8" id="7LI_gNMBbB4" role="3xSepj">
                <node concept="3I6sU6" id="7LI_gNMBbB5" role="3Ip0Jz">
                  <node concept="3I6s7M" id="kHzC1TYbLu" role="3I6sU7">
                    <node concept="3jm4v3" id="kHzC1TYbLs" role="3I6s78">
                      <ref role="3jm46O" to="kqnc:3qUnz9vk$1o" resolve="classifierTypeNonGeneric" />
                      <node concept="2tJFMh" id="7LI_gNMBfhq" role="3jicU7">
                        <node concept="ZC_QK" id="7LI_gNMBfGI" role="2tJFKM">
                          <ref role="2aWVGs" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                        </node>
                      </node>
                      <node concept="a7P8L" id="kHzC1TYbLH" role="3jm6SO">
                        <ref role="a7OzE" node="kHzC1TYbGM" resolve="DF" />
                      </node>
                    </node>
                  </node>
                  <node concept="3I6s7M" id="7LI_gNMBfh3" role="3I6sU7">
                    <node concept="3Aqt3T" id="7LI_gNMBfh2" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="convertsTo" />
                      <node concept="a7P8L" id="7LI_gNMBfhb" role="3AunhB">
                        <ref role="a7OzE" node="7LI_gNMBbBf" resolve="Type" />
                      </node>
                      <node concept="a7P8L" id="kHzC1TYbM6" role="3AunhB">
                        <ref role="a7OzE" node="kHzC1TYbGM" resolve="DF" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="7LI_gNMBbBe" role="0Rg$4">
              <node concept="aZer4" id="7LI_gNMBbBf" role="3XD1gS">
                <property role="TrG5h" value="Type" />
              </node>
              <node concept="aZer4" id="kHzC1TYbGM" role="3XD1gS">
                <property role="TrG5h" value="DF" />
              </node>
              <node concept="32pEOW" id="7LI_gNMBbBr" role="3vLBG7" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7LI_gNMBf$c" role="3cqZAp" />
      </node>
      <node concept="2t___k" id="7LI_gNMBbAB" role="1nLNMg">
        <ref role="2t_S0q" to="5j4j:dfChU1zo4B" resolve="Splice" />
        <node concept="3A20r5" id="7LI_gNMBbAC" role="2t_VXX">
          <property role="TrG5h" value="spl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="AVZre" id="7LI_gNMpXGA">
    <property role="TrG5h" value="Converts" />
    <ref role="2YbDB9" to="kqnc:24Vro6cM_J$" resolve="ConversionMain" />
    <node concept="1nLNMY" id="7LI_gNMpXVh" role="1nK1Vg">
      <property role="TrG5h" value="convertsClassifier2Logical" />
      <node concept="3clFbS" id="7LI_gNMpXVi" role="1nLNMH">
        <node concept="1nLNNL" id="7LI_gNMpXVl" role="3cqZAp">
          <node concept="1nLNMm" id="7LI_gNMpXVm" role="1nLNNK">
            <node concept="3Aq93q" id="7LI_gNMpXVB" role="1nLNMb">
              <node concept="3I6sU6" id="7LI_gNMpXVC" role="3Ip0Jz">
                <node concept="3I6s7M" id="7LI_gNMpXVG" role="3I6sU7">
                  <node concept="3Aqt3T" id="7LI_gNMpXVF" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:3vTJNooZDgN" resolve="convertsToAlt" />
                    <node concept="1HFMs5" id="7LI_gNMpYpE" role="3AunhB">
                      <node concept="a7P8L" id="7LI_gNMpYpC" role="1uarlU">
                        <ref role="a7OzE" node="7LI_gNMpXVr" resolve="Type" />
                      </node>
                      <node concept="ns1u0" id="7LI_gNMpYxd" role="1uarlW">
                        <ref role="ns1xF" to="kqnc:JOGAOsVt2a" resolve="classifier" />
                      </node>
                    </node>
                    <node concept="ns1u0" id="7LI_gNMpYoS" role="3AunhB">
                      <ref role="ns1xF" node="7LI_gNMkMFB" resolve="logical" />
                      <node concept="nsMwS" id="kHzC1TYbPH" role="ns1xD">
                        <ref role="nsMwP" node="7LI_gNMpTBn" resolve="dataType" />
                        <node concept="1nq8_$" id="kHzC1TYbRw" role="nsMwV">
                          <node concept="a7P8L" id="kHzC1TYbRv" role="1nq8_t">
                            <ref role="a7OzE" node="kHzC1TYbOF" resolve="DataType" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="4s_lMmH6CtM" role="3AunhB">
                      <ref role="a7OzE" node="4s_lMmH6CtK" resolve="Options" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="7LI_gNMpXVq" role="0Rg$4">
              <node concept="aZer4" id="7LI_gNMpXVr" role="3XD1gS">
                <property role="TrG5h" value="Type" />
              </node>
              <node concept="aZer4" id="kHzC1TYbOF" role="3XD1gS">
                <property role="TrG5h" value="DataType" />
              </node>
              <node concept="32pEOW" id="7LI_gNMpYpd" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="7LI_gNMpYoX" role="3xSepv">
              <node concept="3Aq9E8" id="7LI_gNMpYoY" role="3xSepj">
                <node concept="3I6sU6" id="7LI_gNMpYoZ" role="3Ip0Jz">
                  <node concept="3I6s7M" id="7LI_gNMpYp8" role="3I6sU7">
                    <node concept="3Aqt3T" id="7LI_gNMpYp7" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:3vTJNooZDgN" resolve="convertsToAlt" />
                      <node concept="a7P8L" id="7LI_gNMpYwI" role="3AunhB">
                        <ref role="a7OzE" node="7LI_gNMpXVr" resolve="Type" />
                      </node>
                      <node concept="ns1u0" id="7LI_gNMpYwQ" role="3AunhB">
                        <ref role="ns1xF" to="kqnc:JOGAOsVt2a" resolve="classifier" />
                        <node concept="nsMwS" id="7LI_gNMpYwT" role="ns1xD">
                          <ref role="nsMwP" to="kqnc:JOGAOsVt2c" resolve="classifier" />
                          <node concept="2tJFMh" id="7LI_gNMpYwX" role="nsMwV">
                            <node concept="ZC_QK" id="7LI_gNMpYx5" role="2tJFKM">
                              <ref role="2aWVGs" to="bj13:~MetaLogical" resolve="MetaLogical" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="kHzC1TYbQX" role="ns1xD">
                          <ref role="nsMwP" to="kqnc:ZJPHcupkiC" resolve="typeParams" />
                          <node concept="1oi1Uc" id="kHzC1TYbR4" role="nsMwV">
                            <node concept="KCUsM" id="kHzC1TYbR9" role="1oi0x0">
                              <node concept="3wAshV" id="kHzC1TYbRk" role="KCVpo">
                                <node concept="a7P8L" id="kHzC1TYbRj" role="3wAq21">
                                  <ref role="a7OzE" node="kHzC1TYbOF" resolve="DataType" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="4s_lMmH6CtN" role="3AunhB">
                        <ref role="a7OzE" node="4s_lMmH6CtK" resolve="Options" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="4s_lMmH6CtI" role="0Rg$4">
              <node concept="3uibUv" id="4s_lMmH6CtJ" role="3vLBG7">
                <ref role="3uigEE" to="kqnc:3vTJNooZBhQ" resolve="ConvertsContext.Options" />
              </node>
              <node concept="aZer4" id="4s_lMmH6CtK" role="3XD1gS">
                <property role="TrG5h" value="Options" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="7LI_gNMpYxf" role="1nK1Vg">
      <property role="TrG5h" value="convertsMultiLogical2Classifier" />
      <node concept="3clFbS" id="7LI_gNMpYxg" role="1nLNMH">
        <node concept="1nLNNL" id="7LI_gNMpYxG" role="3cqZAp">
          <node concept="1nLNMm" id="7LI_gNMpYxH" role="1nLNNK">
            <node concept="3Aq93q" id="7LI_gNMpYxK" role="1nLNMb">
              <node concept="3I6sU6" id="7LI_gNMpYxL" role="3Ip0Jz">
                <node concept="3I6s7M" id="7LI_gNMpYxP" role="3I6sU7">
                  <node concept="3Aqt3T" id="7LI_gNMpYxO" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:3vTJNooZDgN" resolve="convertsToAlt" />
                    <node concept="ns1u0" id="7LI_gNMpYxU" role="3AunhB">
                      <ref role="ns1xF" node="7LI_gNMpUS4" resolve="multiLogical" />
                    </node>
                    <node concept="ns1u0" id="7LI_gNMpYxZ" role="3AunhB">
                      <ref role="ns1xF" to="kqnc:JOGAOsVt2a" resolve="classifier" />
                      <node concept="nsMwS" id="7LI_gNMpYy2" role="ns1xD">
                        <ref role="nsMwP" to="kqnc:JOGAOsVt2c" resolve="classifier" />
                        <node concept="2tJFMh" id="7LI_gNMpYy6" role="nsMwV">
                          <node concept="ZC_QK" id="7LI_gNMpYye" role="2tJFKM">
                            <ref role="2aWVGs" to="oy3s:1fvYCPC9rB6" resolve="MetaLogicalArray" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="4s_lMmH6CtV" role="3AunhB">
                      <ref role="a7OzE" node="4s_lMmH6CtT" resolve="Options" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="4s_lMmH6CtR" role="0Rg$4">
              <node concept="3uibUv" id="4s_lMmH6CtS" role="3vLBG7">
                <ref role="3uigEE" to="kqnc:3vTJNooZBhQ" resolve="ConvertsContext.Options" />
              </node>
              <node concept="aZer4" id="4s_lMmH6CtT" role="3XD1gS">
                <property role="TrG5h" value="Options" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="ns1xd" id="7LI_gNMkMFA">
    <property role="TrG5h" value="Terms" />
    <ref role="2efqH6" to="kqnc:JOGAOsVt29" resolve="Terms" />
    <node concept="ns1x$" id="7LI_gNMkMFB" role="ns1xc">
      <property role="TrG5h" value="logical" />
      <ref role="ns1xW" to="kqnc:4lCLOtwq2MF" resolve="type" />
      <node concept="nspSf" id="7LI_gNMkMFC" role="ns1xx">
        <node concept="nstbe" id="7LI_gNMpTBn" role="nspSe">
          <property role="TrG5h" value="dataType" />
        </node>
      </node>
    </node>
    <node concept="ns1x$" id="7LI_gNMpUS4" role="ns1xc">
      <property role="TrG5h" value="multiLogical" />
      <ref role="ns1xW" to="kqnc:4lCLOtwq2MF" resolve="type" />
      <node concept="nspSf" id="7LI_gNMpUS5" role="ns1xx">
        <node concept="nstbe" id="7LI_gNMpUS6" role="nspSe">
          <property role="TrG5h" value="dataType" />
        </node>
      </node>
    </node>
  </node>
</model>

