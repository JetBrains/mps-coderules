<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cca2ab69-9222-4f50-95ac-2249d9193ff6(jetbrains.mps.baseLanguage.collectionsExt.types)">
  <persistence version="9" />
  <languages>
    <use id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" version="0" />
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules" version="21" />
    <engage id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.baseLanguageExt.types)" />
    <import index="yh6q" ref="r:14dbdd37-ab02-4407-8e3c-3308d6f4fbba(jetbrains.mps.baseLanguage.sequence.types)" />
    <import index="tp2q" ref="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" />
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
      <concept id="1068431790189" name="jetbrains.mps.baseLanguage.structure.Type" flags="in" index="33vP2l" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ng" index="2c44t0">
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785112" name="jetbrains.mps.lang.quotation.structure.Antiquotation" flags="ng" index="2c44te" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
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
      <concept id="4780620083400582599" name="jetbrains.mps.logic.structure.LogicalItemExpression" flags="ng" index="1nq8_$">
        <child id="4780620083400582654" name="logical" index="1nq8_t" />
      </concept>
      <concept id="8713947027062024097" name="jetbrains.mps.logic.structure.LogicalItemValueExpression" flags="ng" index="1Ft4W6">
        <child id="8713947027062064784" name="logical" index="1FtiSR" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules">
      <concept id="1618328391714763069" name="jetbrains.mps.lang.coderules.structure.MacroTable" flags="ng" index="0oKg$">
        <reference id="6097203247219331496" name="extends" index="3tg4Y$" />
        <child id="1618328391714763070" name="macro" index="0oKgB" />
      </concept>
      <concept id="861509610434242029" name="jetbrains.mps.lang.coderules.structure.TermConstructor" flags="ng" index="ns1u0">
        <reference id="861509610434243078" name="decl" index="ns1xF" />
        <child id="861509610434243076" name="override" index="ns1xD" />
      </concept>
      <concept id="861509610434435669" name="jetbrains.mps.lang.coderules.structure.TermFeatureOverride" flags="ng" index="nsMwS">
        <reference id="861509610434435672" name="feature" index="nsMwP" />
        <child id="861509610434435670" name="getter" index="nsMwV" />
      </concept>
      <concept id="8335224865066015764" name="jetbrains.mps.lang.coderules.structure.RulesList" flags="ng" index="AVZre">
        <reference id="3541122455446356437" name="extends" index="2YbDB9" />
        <child id="3575255234175157601" name="template" index="1nK1Vg" />
      </concept>
      <concept id="6856711987714624232" name="jetbrains.mps.lang.coderules.structure.LateExpressionItem" flags="ng" index="HKQnh">
        <child id="6856711987714624233" name="code" index="HKQng" />
      </concept>
      <concept id="2381360340662937504" name="jetbrains.mps.lang.coderules.structure.TermType" flags="ig" index="32pEOW" />
      <concept id="6097203247139556923" name="jetbrains.mps.lang.coderules.structure.CallMacroTemplate" flags="ng" index="3hwh0R">
        <child id="6097203247147235901" name="logical" index="3h32gL" />
        <child id="6097203247141261094" name="code" index="3hEL4E" />
        <child id="6097203247141280536" name="variable" index="3hEOkk" />
        <child id="6097203247142518497" name="parameter" index="3hP23H" />
      </concept>
      <concept id="6097203247142995359" name="jetbrains.mps.lang.coderules.structure.CallMacroParameterReference" flags="ng" index="3hN9Ij">
        <reference id="6097203247143507437" name="declaration" index="3hLkJx" />
      </concept>
      <concept id="6097203247142432582" name="jetbrains.mps.lang.coderules.structure.CallMacroParameterDeclaration" flags="ng" index="3hPv5a">
        <child id="6097203247142468229" name="type" index="3hPmi9" />
      </concept>
      <concept id="6097203247156088058" name="jetbrains.mps.lang.coderules.structure.ExpandMacroInputSpecification" flags="ng" index="3ixlbQ">
        <reference id="6097203247156276310" name="applicableConcept" index="3ixz9q" />
        <child id="6097203247156107501" name="input" index="3ix8rx" />
      </concept>
      <concept id="6097203247156229793" name="jetbrains.mps.lang.coderules.structure.ExpandMacroInputDeclaration" flags="ng" index="3ixQyH" />
      <concept id="6097203247155932548" name="jetbrains.mps.lang.coderules.structure.ExpandMacroTemplate" flags="ng" index="3iyZe8">
        <reference id="6097203247158702389" name="prototype" index="3iRiWT" />
        <child id="6097203247156392058" name="inputSpec" index="3iweTQ" />
        <child id="6097203247156492735" name="code" index="3iwQuN" />
        <child id="6097203247216428965" name="logical" index="3tb1AD" />
      </concept>
      <concept id="6097203247183580433" name="jetbrains.mps.lang.coderules.structure.ExpandMacroInputReference" flags="ng" index="3j8tct">
        <reference id="6097203247183580434" name="declaration" index="3j8tcu" />
      </concept>
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
        <child id="3575255234174969628" name="code" index="1nLNMH" />
      </concept>
      <concept id="3575255234174969664" name="jetbrains.mps.lang.coderules.structure.ConstraintRuleStatement" flags="ng" index="1nLNNL">
        <child id="3575255234174969665" name="rule" index="1nLNNK" />
      </concept>
      <concept id="8908809128801951597" name="jetbrains.mps.lang.coderules.structure.MacroBodyLogicalDeclaration" flags="ng" index="3uniRu" />
      <concept id="7674753015762572646" name="jetbrains.mps.lang.coderules.structure.BodyBlock" flags="ng" index="3xSepi">
        <child id="7674753015762572647" name="body" index="3xSepj" />
      </concept>
      <concept id="7368070394770780974" name="jetbrains.mps.lang.coderules.structure.UnifiesConstraint" flags="ng" index="3A8Hvi">
        <child id="7368070394770793930" name="value" index="3A8w4Q" />
        <child id="7368070394770793388" name="assignee" index="3A8wtg" />
      </concept>
      <concept id="7368070394766963750" name="jetbrains.mps.lang.coderules.structure.Head" flags="ng" index="3Aq93q" />
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
      <concept id="965748826975413063" name="jetbrains.mps.lang.coderules.structure.RulePartParameterDeclaration" flags="ng" index="3NuqgR" />
    </language>
  </registry>
  <node concept="0oKg$" id="4NtT$ZxGIgs">
    <property role="TrG5h" value="CollectionTypes" />
    <ref role="3tg4Y$" to="kqnc:E1U1n2RerB" resolve="Types" />
    <node concept="3iyZe8" id="4NtT$ZxGIre" role="0oKgB">
      <ref role="3iRiWT" to="kqnc:5itBwMau8m1" resolve="lift" />
      <node concept="3clFbS" id="4NtT$ZxGIrf" role="3iwQuN">
        <node concept="3Aqczg" id="4NtT$ZxGJaY" role="3cqZAp">
          <node concept="3jm4v3" id="4NtT$ZxGJaW" role="3Aqpz8">
            <ref role="3jm46O" node="7WFMSEuKm9_" resolve="sequenceType" />
            <node concept="2OqwBi" id="4NtT$ZxGJl1" role="3jicU7">
              <node concept="3j8tct" id="4NtT$ZxGJbc" role="2Oq$k0">
                <ref role="3j8tcu" node="4NtT$ZxGIrk" resolve="sequenceType" />
              </node>
              <node concept="3TrEf2" id="4NtT$ZxGJxr" role="2OqNvi">
                <ref role="3Tt5mk" to="tp2q:gKA3Ige" resolve="elementType" />
              </node>
            </node>
            <node concept="a7P8L" id="4NtT$ZxGJb3" role="3jm6SO">
              <ref role="a7OzE" node="4NtT$ZxGIri" resolve="Type" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uniRu" id="4NtT$ZxGIrg" role="3tb1AD">
        <node concept="32pEOW" id="4NtT$ZxGIrh" role="3vLBG7" />
        <node concept="aZer4" id="4NtT$ZxGIri" role="3XD1gS">
          <property role="TrG5h" value="Type" />
        </node>
      </node>
      <node concept="3ixlbQ" id="4NtT$ZxGIrj" role="3iweTQ">
        <ref role="3ixz9q" to="tp2q:gKA3Dh4" resolve="SequenceType" />
        <node concept="3ixQyH" id="4NtT$ZxGIrk" role="3ix8rx">
          <property role="TrG5h" value="sequenceType" />
        </node>
      </node>
    </node>
    <node concept="3hwh0R" id="7WFMSEuKm9_" role="0oKgB">
      <property role="TrG5h" value="sequenceType" />
      <node concept="3hPv5a" id="4NtT$ZxGINu" role="3hP23H">
        <property role="TrG5h" value="componentType" />
        <node concept="3Tqbb2" id="4NtT$ZxGINy" role="3hPmi9" />
      </node>
      <node concept="3clFbS" id="7WFMSEuKm9B" role="3hEL4E">
        <node concept="3clFbJ" id="4NtT$ZxGIOa" role="3cqZAp">
          <node concept="3clFbS" id="4NtT$ZxGIOc" role="3clFbx">
            <node concept="3Aqczg" id="4NtT$ZxGIN7" role="3cqZAp">
              <node concept="3jbYBd" id="4NtT$ZxGIN4" role="3Aqpz8">
                <ref role="3jbY9l" to="kqnc:5itBwMau8m1" resolve="lift" />
                <node concept="3hN9Ij" id="4NtT$ZxGIN_" role="3jbY8P">
                  <ref role="3hLkJx" node="4NtT$ZxGINu" resolve="componentType" />
                </node>
                <node concept="a7P8L" id="4NtT$ZxGINn" role="3jbY8V">
                  <ref role="a7OzE" node="4NtT$ZxGIMr" resolve="Elem" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4NtT$ZxGIWJ" role="3clFbw">
            <node concept="3hN9Ij" id="4NtT$ZxGIOC" role="2Oq$k0">
              <ref role="3hLkJx" node="4NtT$ZxGINu" resolve="componentType" />
            </node>
            <node concept="3x8VRR" id="4NtT$ZxGJ2k" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="4NtT$ZxGJ6q" role="9aQIa">
            <node concept="3clFbS" id="4NtT$ZxGJ6r" role="9aQI4">
              <node concept="3SKdUt" id="4NtT$ZxGJaG" role="3cqZAp">
                <node concept="1PaTwC" id="4NtT$ZxGJaH" role="1aUNEU">
                  <node concept="3oM_SD" id="4NtT$ZxGJaJ" role="1PaTwD">
                    <property role="3oM_SC" value="todo:" />
                  </node>
                  <node concept="3oM_SD" id="4NtT$ZxGJaT" role="1PaTwD">
                    <property role="3oM_SC" value="ensure" />
                  </node>
                </node>
              </node>
              <node concept="3Aqczg" id="4NtT$ZxGJao" role="3cqZAp">
                <node concept="3A8Hvi" id="4NtT$ZxGJal" role="3Aqpz8">
                  <node concept="a7P8L" id="4NtT$ZxGJat" role="3A8wtg">
                    <ref role="a7OzE" node="4NtT$ZxGIMr" resolve="Elem" />
                  </node>
                  <node concept="ns1u0" id="4NtT$ZxGJa$" role="3A8w4Q">
                    <ref role="ns1xF" to="kqnc:JOGAOsVt3c" resolve="_null_" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Aqczg" id="2HYHa0WV2Rc" role="3cqZAp">
          <node concept="3A8Hvi" id="2HYHa0WV2R9" role="3Aqpz8">
            <node concept="37jhX" id="5HLeEcf2UrF" role="3A8wtg">
              <node concept="1nq8_$" id="5itBwMau8_1" role="37jj2">
                <node concept="37jhX" id="7WFMSEuKmf0" role="1nq8_t">
                  <node concept="1nq8_$" id="7WFMSEuKmeZ" role="37jj2">
                    <node concept="a7P8L" id="7WFMSEuKmeY" role="1nq8_t">
                      <ref role="a7OzE" node="7WFMSEuKmcW" resolve="Type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="ns1u0" id="4NtT$ZxGIMj" role="3A8w4Q">
              <ref role="ns1xF" to="yh6q:3MFPGC50Ab3" resolve="sequence" />
              <node concept="nsMwS" id="4NtT$ZxGIMl" role="ns1xD">
                <ref role="nsMwP" to="yh6q:3MFPGC50Aiu" resolve="elem" />
                <node concept="1nq8_$" id="4NtT$ZxGINF" role="nsMwV">
                  <node concept="a7P8L" id="4NtT$ZxGINE" role="1nq8_t">
                    <ref role="a7OzE" node="4NtT$ZxGIMr" resolve="Elem" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uniRu" id="7WFMSEuKmcV" role="3h32gL">
        <node concept="aZer4" id="7WFMSEuKmcW" role="3XD1gS">
          <property role="TrG5h" value="Type" />
        </node>
        <node concept="32pEOW" id="7WFMSEuKmd8" role="3vLBG7" />
      </node>
      <node concept="3uniRu" id="4NtT$ZxGIMq" role="3hEOkk">
        <node concept="aZer4" id="4NtT$ZxGIMr" role="3XD1gS">
          <property role="TrG5h" value="Elem" />
        </node>
        <node concept="32pEOW" id="4NtT$ZxGIMB" role="3vLBG7" />
      </node>
    </node>
  </node>
  <node concept="AVZre" id="4NtT$ZxGJ$4">
    <property role="TrG5h" value="RecoverCollections" />
    <property role="3GE5qa" value="rule" />
    <ref role="2YbDB9" to="kqnc:6Qzc0KyJGzD" resolve="Recover" />
    <node concept="1nLNMY" id="2WQBycG$nvU" role="1nK1Vg">
      <property role="TrG5h" value="recover_sequenceType" />
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
                    <node concept="1HFMs5" id="1mdVbTSaq2o" role="3AunhB">
                      <node concept="ns1u0" id="JOGAOsVt9$" role="1uarlW">
                        <ref role="ns1xF" to="yh6q:3MFPGC50Ab3" resolve="sequence" />
                        <node concept="nsMwS" id="2WQBycG$n_7" role="ns1xD">
                          <ref role="nsMwP" to="yh6q:3MFPGC50Aiu" resolve="elem" />
                          <node concept="1nq8_$" id="2WQBycG$nAg" role="nsMwV">
                            <node concept="37jhX" id="4NtT$ZxGJNd" role="1nq8_t">
                              <node concept="1nq8_$" id="4NtT$ZxGJP4" role="37jj2">
                                <node concept="a7P8L" id="4NtT$ZxGJP3" role="1nq8_t">
                                  <ref role="a7OzE" node="5upUcEtdUWI" resolve="CompType" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="4NtT$ZxGJLm" role="1uarlU">
                        <ref role="a7OzE" node="5upUcEtdY0_" resolve="Type" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="5upUcEtdUWB" role="0Rg$4">
              <node concept="aZer4" id="5upUcEtdUWC" role="3XD1gS">
                <property role="TrG5h" value="Node" />
              </node>
              <node concept="aZer4" id="4NtT$ZxGJHu" role="3XD1gS">
                <property role="TrG5h" value="CompNode" />
              </node>
              <node concept="3Tqbb2" id="5f6wxQ30Ugg" role="3vLBG7" />
            </node>
            <node concept="3NuqgR" id="5f6wxQ30Unu" role="0Rg$4">
              <node concept="aZer4" id="5upUcEtdY0_" role="3XD1gS">
                <property role="TrG5h" value="Type" />
              </node>
              <node concept="aZer4" id="5upUcEtdUWI" role="3XD1gS">
                <property role="TrG5h" value="CompType" />
              </node>
              <node concept="32pEOW" id="24ciDNzxNEU" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="6E2cNicdikf" role="3xSepv">
              <node concept="3Aq9E8" id="5upUcEtdY2q" role="3xSepj">
                <node concept="3I6sU6" id="5upUcEtdY2r" role="3Ip0Jz">
                  <node concept="3I6s7M" id="4NtT$ZxGJSc" role="3I6sU7">
                    <node concept="3Aqt3T" id="4NtT$ZxGJSa" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:6Qzc0KyJGJT" resolve="recover" />
                      <node concept="a7P8L" id="4NtT$ZxGJSt" role="3AunhB">
                        <ref role="a7OzE" node="4NtT$ZxGJHu" resolve="CompNode" />
                      </node>
                      <node concept="a7P8L" id="4NtT$ZxGJUe" role="3AunhB">
                        <ref role="a7OzE" node="5upUcEtdUWI" resolve="CompType" />
                      </node>
                    </node>
                  </node>
                  <node concept="3I6s7M" id="2WQBycG$oZJ" role="3I6sU7">
                    <node concept="3A8Hvi" id="2WQBycG$oZP" role="3I6s78">
                      <node concept="HKQnh" id="2WQBycG$p0$" role="3A8w4Q">
                        <node concept="2c44tf" id="4NtT$ZxGJWf" role="HKQng">
                          <node concept="A3Dl8" id="4NtT$ZxGJWz" role="2c44tc">
                            <node concept="33vP2l" id="4NtT$ZxGJW$" role="A3Ik2">
                              <node concept="2c44te" id="4NtT$ZxGJWP" role="lGtFl">
                                <node concept="1Ft4W6" id="4NtT$ZxGJX0" role="2c44t1">
                                  <node concept="a7P8L" id="4NtT$ZxGJWZ" role="1FtiSR">
                                    <ref role="a7OzE" node="4NtT$ZxGJHu" resolve="CompNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="2WQBycG$oZp" role="3A8wtg">
                        <ref role="a7OzE" node="5upUcEtdUWC" resolve="Node" />
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

