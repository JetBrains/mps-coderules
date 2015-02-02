<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6a6b9246-6407-4ef2-8408-df149f70bcd9(jetbrains.mps.lang.typesystem2.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="nc4n" ref="r:2a1eb048-898c-47a3-863b-36b04c4b9f7c(jetbrains.mps.lang.typesystem2.runtime.rule)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
    </language>
    <language id="d4615e3b-d671-4ba9-af01-2b78369b0ba7" name="jetbrains.mps.lang.pattern">
      <concept id="1136720037777" name="jetbrains.mps.lang.pattern.structure.PatternExpression" flags="in" index="2DMOqp">
        <child id="1136720037778" name="patternNode" index="2DMOqq" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ng" index="2c44t0">
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785117" name="jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation" flags="ng" index="2c44tb" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1175147569072" name="jetbrains.mps.lang.typesystem.structure.AbstractSubtypingRule" flags="ig" index="2sgdUx">
        <property id="1175607673137" name="isWeak" index="2RFo0w" />
        <child id="1175147624276" name="body" index="2sgrp5" />
      </concept>
      <concept id="1175147670730" name="jetbrains.mps.lang.typesystem.structure.SubtypingRule" flags="ig" index="2sgARr" />
      <concept id="1201607707634" name="jetbrains.mps.lang.typesystem.structure.InequationReplacementRule" flags="ig" index="35pCF_">
        <child id="1201607798918" name="supertypeNode" index="35pZ6h" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174642900584" name="jetbrains.mps.lang.typesystem.structure.PatternCondition" flags="ig" index="1Yb3XT">
        <child id="1174642936809" name="pattern" index="1YbcFS" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="linkRole" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1YbPZF" id="6p0DfM0iLb2">
    <property role="TrG5h" value="typeof_RuleInputDeclaration" />
    <property role="3GE5qa" value="rule.input" />
    <node concept="3clFbS" id="6p0DfM0iLgy" role="18ibNy">
      <node concept="1Z5TYs" id="6p0DfM0iLqJ" role="3cqZAp">
        <node concept="mw_s8" id="6p0DfM0iLqM" role="1ZfhK$">
          <node concept="1Z2H0r" id="6p0DfM0iLlM" role="mwGJk">
            <node concept="1YBJjd" id="6p0DfM0iLnf" role="1Z2MuG">
              <ref role="1YBMHb" node="6p0DfM0iLg$" resolve="rid" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6p0DfM0iQ0R" role="1ZfhKB">
          <node concept="2c44tf" id="6p0DfM0iQ0N" role="mwGJk">
            <node concept="3Tqbb2" id="6p0DfM0iQ7i" role="2c44tc">
              <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
              <node concept="2c44tb" id="6p0DfM0iSc$" role="lGtFl">
                <property role="2qtEX8" value="concept" />
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                <node concept="2OqwBi" id="6p0DfM0iSj4" role="2c44t1">
                  <node concept="1PxgMI" id="6p0DfM0iSj5" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <ref role="1PxNhF" to="wq2x:5NuEpF1if3e" resolve="RuleInputSpecification" />
                    <node concept="2OqwBi" id="6p0DfM0iSj6" role="1PxMeX">
                      <node concept="1YBJjd" id="6p0DfM0iSj7" role="2Oq$k0">
                        <ref role="1YBMHb" node="6p0DfM0iLg$" resolve="rid" />
                      </node>
                      <node concept="1mfA1w" id="6p0DfM0iSj8" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="5NuEpF1k2lS" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:5NuEpF1iiA0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6p0DfM0iLg$" role="1YuTPh">
      <property role="TrG5h" value="rid" />
      <ref role="1YaFvo" to="wq2x:6p0DfM0ia8T" resolve="RuleInputDeclaration" />
    </node>
  </node>
  <node concept="1YbPZF" id="6p0DfM0iSNs">
    <property role="TrG5h" value="typeof_RuleInputReference" />
    <property role="3GE5qa" value="rule.input" />
    <node concept="3clFbS" id="6p0DfM0iSNt" role="18ibNy">
      <node concept="1Z5TYs" id="6p0DfM0iSWv" role="3cqZAp">
        <node concept="mw_s8" id="6p0DfM0iSXG" role="1ZfhKB">
          <node concept="1Z2H0r" id="6p0DfM0iSXC" role="mwGJk">
            <node concept="2OqwBi" id="6p0DfM0iT1d" role="1Z2MuG">
              <node concept="1YBJjd" id="6p0DfM0iSYZ" role="2Oq$k0">
                <ref role="1YBMHb" node="6p0DfM0iSNv" resolve="rir" />
              </node>
              <node concept="3TrEf2" id="6p0DfM0iTbE" role="2OqNvi">
                <ref role="3Tt5mk" to="wq2x:6p0DfM0iCzc" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6p0DfM0iSWy" role="1ZfhK$">
          <node concept="1Z2H0r" id="6p0DfM0iSSK" role="mwGJk">
            <node concept="1YBJjd" id="6p0DfM0iSUd" role="1Z2MuG">
              <ref role="1YBMHb" node="6p0DfM0iSNv" resolve="rir" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6p0DfM0iSNv" role="1YuTPh">
      <property role="TrG5h" value="rir" />
      <ref role="1YaFvo" to="wq2x:6p0DfM0im$2" resolve="RuleInputReference" />
    </node>
  </node>
  <node concept="2sgARr" id="6ntBQ9KL7Lw">
    <property role="2RFo0w" value="true" />
    <property role="TrG5h" value="supertypesOf_LogicVariableType" />
    <node concept="3clFbS" id="6ntBQ9KL7Lx" role="2sgrp5">
      <node concept="3clFbF" id="6ntBQ9KL84d" role="3cqZAp">
        <node concept="2c44tf" id="6ntBQ9KL84b" role="3clFbG">
          <node concept="3uibUv" id="6ntBQ9KLgHx" role="2c44tc">
            <ref role="3uigEE" to="nc4n:5k_shARN7H1" resolve="LogicVariable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6ntBQ9KL7Lz" role="1YuTPh">
      <property role="TrG5h" value="lvt" />
      <ref role="1YaFvo" to="wq2x:6Ng87FPV$_x" resolve="LogicVariableType" />
    </node>
  </node>
  <node concept="35pCF_" id="6ntBQ9KLsxG">
    <property role="TrG5h" value="LogicVariableType_supertypeOf_classifier_LogicVariable" />
    <node concept="3clFbS" id="6ntBQ9KLsxI" role="2sgrp5">
      <node concept="3SKdUt" id="6ntBQ9KLtdA" role="3cqZAp">
        <node concept="3SKdUq" id="6ntBQ9KLtdC" role="3SKWNk">
          <property role="3SKdUp" value="'nuff said" />
        </node>
      </node>
    </node>
    <node concept="1Yb3XT" id="6ntBQ9KLBEv" role="1YuTPh">
      <property role="TrG5h" value="lv" />
      <node concept="2DMOqp" id="6ntBQ9KLBEx" role="1YbcFS">
        <node concept="3uibUv" id="6ntBQ9KLBG_" role="2DMOqq">
          <ref role="3uigEE" to="nc4n:5k_shARN7H1" resolve="LogicVariable" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6ntBQ9KLBMa" role="35pZ6h">
      <property role="TrG5h" value="lvt" />
      <ref role="1YaFvo" to="wq2x:6Ng87FPV$_x" resolve="LogicVariableType" />
    </node>
  </node>
  <node concept="1YbPZF" id="5MHpiylKVB4">
    <property role="TrG5h" value="typeof_RuleParameterReference" />
    <property role="3GE5qa" value="rule.parameter" />
    <node concept="3clFbS" id="5MHpiylKVB5" role="18ibNy">
      <node concept="1Z5TYs" id="5MHpiylKW2e" role="3cqZAp">
        <node concept="mw_s8" id="5MHpiylKW57" role="1ZfhKB">
          <node concept="1Z2H0r" id="5MHpiylKW53" role="mwGJk">
            <node concept="2OqwBi" id="5MHpiylKW8v" role="1Z2MuG">
              <node concept="1YBJjd" id="5MHpiylKW5$" role="2Oq$k0">
                <ref role="1YBMHb" node="5MHpiylKVB7" resolve="rpr" />
              </node>
              <node concept="3TrEf2" id="5MHpiylKWrZ" role="2OqNvi">
                <ref role="3Tt5mk" to="wq2x:5MHpiylKVev" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="5MHpiylKW2h" role="1ZfhK$">
          <node concept="1Z2H0r" id="5MHpiylKVXz" role="mwGJk">
            <node concept="1YBJjd" id="5MHpiylKVZQ" role="1Z2MuG">
              <ref role="1YBMHb" node="5MHpiylKVB7" resolve="rpr" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5MHpiylKVB7" role="1YuTPh">
      <property role="TrG5h" value="rpr" />
      <ref role="1YaFvo" to="wq2x:5MHpiylKSq8" resolve="RuleParameterReference" />
    </node>
  </node>
  <node concept="1YbPZF" id="5MHpiylSAgS">
    <property role="TrG5h" value="typeof_RuleParameterDeclaration" />
    <property role="3GE5qa" value="rule.parameter" />
    <node concept="3clFbS" id="5MHpiylSAgT" role="18ibNy">
      <node concept="1Z5TYs" id="5MHpiylSAxR" role="3cqZAp">
        <node concept="mw_s8" id="5MHpiylSAzS" role="1ZfhKB">
          <node concept="2OqwBi" id="5MHpiylSAAI" role="mwGJk">
            <node concept="1YBJjd" id="5MHpiylSAzQ" role="2Oq$k0">
              <ref role="1YBMHb" node="5MHpiylSAgV" resolve="rpd" />
            </node>
            <node concept="3TrEf2" id="5MHpiylSAQj" role="2OqNvi">
              <ref role="3Tt5mk" to="wq2x:5MHpiylFYj$" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="5MHpiylSAxU" role="1ZfhK$">
          <node concept="1Z2H0r" id="5MHpiylSAj$" role="mwGJk">
            <node concept="1YBJjd" id="5MHpiylSAuz" role="1Z2MuG">
              <ref role="1YBMHb" node="5MHpiylSAgV" resolve="rpd" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5MHpiylSAgV" role="1YuTPh">
      <property role="TrG5h" value="rpd" />
      <ref role="1YaFvo" to="wq2x:5MHpiylEsuT" resolve="RuleParameterDeclaration" />
    </node>
  </node>
</model>

