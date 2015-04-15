<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:63d079fa-4fab-4468-a2ee-4cf39ac1306b(jetbrains.mps.logic.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" />
    <import index="xq5w" ref="r:729bada4-05fa-458f-8bf8-28b9cb978726(jetbrains.mps.logic.builtin.variable)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="vgt0" ref="r:f36c95e5-e428-4945-91ae-1005e20c7971(jetbrains.mps.jchr.structure)" />
    <import index="j44f" ref="r:0908786d-1897-49e0-bece-5a5d4968324f(jetbrains.mps.jchr.typesystem)" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
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
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
      </concept>
      <concept id="5455284157993911097" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitPart" flags="ng" index="2pJxcK">
        <child id="5455284157993911094" name="expression" index="2pJxcZ" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709614739" name="jetbrains.mps.lang.quotation.structure.NodeBuilderRef" flags="nn" index="36bGnv">
        <reference id="8182547171709614741" name="target" index="36bGnp" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1175147569072" name="jetbrains.mps.lang.typesystem.structure.AbstractSubtypingRule" flags="ig" index="2sgdUx">
        <child id="1175147624276" name="body" index="2sgrp5" />
      </concept>
      <concept id="1175147670730" name="jetbrains.mps.lang.typesystem.structure.SubtypingRule" flags="ig" index="2sgARr" />
      <concept id="1201607707634" name="jetbrains.mps.lang.typesystem.structure.InequationReplacementRule" flags="ig" index="35pCF_">
        <child id="1201607798918" name="supertypeNode" index="35pZ6h" />
        <child id="3592071576955708909" name="isApplicableClause" index="1xSnZW" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="3592071576955708904" name="jetbrains.mps.lang.typesystem.structure.IsReplacementRuleApplicable_ConceptFunction" flags="in" index="1xSnZT" />
      <concept id="1178870617262" name="jetbrains.mps.lang.typesystem.structure.CoerceExpression" flags="nn" index="1UaxmW">
        <child id="1178870894644" name="pattern" index="1Ub_4A" />
        <child id="1178870894645" name="nodeToCoerce" index="1Ub_4B" />
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
      <concept id="5820409030208923287" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingLinkOperation" flags="nn" index="25OxAV" />
      <concept id="1226359078165" name="jetbrains.mps.lang.smodel.structure.LinkRefExpression" flags="nn" index="28GBK8">
        <reference id="1226359078166" name="conceptDeclaration" index="28GBKb" />
        <reference id="1226359192215" name="linkDeclaration" index="28H3Ia" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1YbPZF" id="1pt0VTMFfZC">
    <property role="TrG5h" value="typeof_Ast" />
    <node concept="3clFbS" id="1pt0VTMFg58" role="18ibNy">
      <node concept="1Z5TYs" id="1pt0VTMFg9O" role="3cqZAp">
        <node concept="mw_s8" id="1pt0VTMFgab" role="1ZfhKB">
          <node concept="2c44tf" id="1pt0VTMFga7" role="mwGJk">
            <node concept="3uibUv" id="1pt0VTMFH8a" role="2c44tc">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1pt0VTMFg9R" role="1ZfhK$">
          <node concept="1Z2H0r" id="1pt0VTMFg6c" role="mwGJk">
            <node concept="1YBJjd" id="1pt0VTMFg6_" role="1Z2MuG">
              <ref role="1YBMHb" node="1pt0VTMFg5X" resolve="ast" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1pt0VTMFg5X" role="1YuTPh">
      <property role="TrG5h" value="ast" />
      <ref role="1YaFvo" to="5j4j:6$jH9oLmUCq" resolve="Ast" />
    </node>
  </node>
  <node concept="2sgARr" id="1mP5b6jNJDj">
    <property role="3GE5qa" value="logical" />
    <property role="TrG5h" value="supertypesOf_LogicalType" />
    <node concept="3clFbS" id="1mP5b6jNJDk" role="2sgrp5">
      <node concept="3clFbF" id="1mP5b6jNOOr" role="3cqZAp">
        <node concept="2pJPEk" id="1mP5b6jNOOp" role="3clFbG">
          <node concept="2pJPED" id="1mP5b6jOrlD" role="2pJPEn">
            <ref role="2pJxaS" to="tpee:g7uibYu" resolve="ClassifierType" />
            <node concept="2pIpSj" id="1mP5b6jOrp7" role="2pJxcM">
              <ref role="2pIpSl" to="tpee:g7uigIF" />
              <node concept="36bGnv" id="2S_ORi38S4f" role="2pJxcZ">
                <ref role="36bGnp" to="yg8f:1mP5b6jQP$C" resolve="ILogical" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1mP5b6jNJDm" role="1YuTPh">
      <property role="TrG5h" value="lt" />
      <ref role="1YaFvo" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
    </node>
  </node>
  <node concept="35pCF_" id="dfChU1jsd3">
    <property role="3GE5qa" value="logical" />
    <property role="TrG5h" value="ILogical_subtypeOf_logical" />
    <node concept="3clFbS" id="dfChU1jsd4" role="2sgrp5">
      <node concept="3SKdUt" id="dfChU1jzdK" role="3cqZAp">
        <node concept="3SKdUq" id="dfChU1jzqi" role="3SKWNk">
          <property role="3SKdUp" value="yes" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="dfChU1jtEQ" role="35pZ6h">
      <property role="TrG5h" value="logicalType" />
      <ref role="1YaFvo" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
    </node>
    <node concept="1YaCAy" id="dfChU1jtEr" role="1YuTPh">
      <property role="TrG5h" value="ct" />
      <ref role="1YaFvo" to="tpee:g7uibYu" resolve="ClassifierType" />
    </node>
    <node concept="1xSnZT" id="dfChU1jtFt" role="1xSnZW">
      <node concept="3clFbS" id="dfChU1jtFu" role="2VODD2">
        <node concept="3clFbF" id="dfChU1jx6v" role="3cqZAp">
          <node concept="2OqwBi" id="dfChU1jylg" role="3clFbG">
            <node concept="1UaxmW" id="dfChU1jx6s" role="2Oq$k0">
              <node concept="1YBJjd" id="dfChU1jxh4" role="1Ub_4B">
                <ref role="1YBMHb" node="dfChU1jtEr" resolve="ct" />
              </node>
              <node concept="1Yb3XT" id="2S_ORi36mSg" role="1Ub_4A">
                <property role="TrG5h" value="il" />
                <node concept="2DMOqp" id="2S_ORi36mSh" role="1YbcFS">
                  <node concept="3uibUv" id="2S_ORi36mSi" role="2DMOqq">
                    <ref role="3uigEE" to="yg8f:1mP5b6jQP$C" resolve="ILogical" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="dfChU1jz0$" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="4OKkcnfz3TL">
    <property role="TrG5h" value="typeof_LogicVariable" />
    <node concept="3clFbS" id="4OKkcnfz3TM" role="18ibNy">
      <node concept="3clFbJ" id="4OKkcnfz4IQ" role="3cqZAp">
        <node concept="3clFbS" id="4OKkcnfz4IR" role="3clFbx">
          <node concept="3clFbJ" id="7mm1a3r6W$h" role="3cqZAp">
            <node concept="3clFbS" id="7mm1a3r6W$j" role="3clFbx">
              <node concept="1Z5TYs" id="7mm1a3r6$FV" role="3cqZAp">
                <node concept="mw_s8" id="7mm1a3r6$Gh" role="1ZfhKB">
                  <node concept="2c44tf" id="7mm1a3r6$Gd" role="mwGJk">
                    <node concept="3uibUv" id="4OKkcneSPDj" role="2c44tc">
                      <ref role="3uigEE" to="oy3s:1H8E3iB85PX" resolve="StringLogical" />
                    </node>
                  </node>
                </node>
                <node concept="mw_s8" id="7mm1a3r6$FY" role="1ZfhK$">
                  <node concept="1Z2H0r" id="7mm1a3r6$DD" role="mwGJk">
                    <node concept="1YBJjd" id="7mm1a3r6$E5" role="1Z2MuG">
                      <ref role="1YBMHb" node="4OKkcnfz3Um" resolve="lv" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7mm1a3r6WFO" role="3clFbw">
              <node concept="2OqwBi" id="7mm1a3r6W_1" role="2Oq$k0">
                <node concept="2OqwBi" id="7mm1a3r6W_2" role="2Oq$k0">
                  <node concept="1YBJjd" id="7mm1a3r6W_3" role="2Oq$k0">
                    <ref role="1YBMHb" node="4OKkcnfz3Um" resolve="lv" />
                  </node>
                  <node concept="1mfA1w" id="7mm1a3r6W_4" role="2OqNvi" />
                </node>
                <node concept="1mfA1w" id="7mm1a3r6W_5" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="7mm1a3r6X5y" role="2OqNvi">
                <node concept="chp4Y" id="7mm1a3r6X5P" role="cj9EA">
                  <ref role="cht4Q" to="5j4j:6$jH9oLmYJ_" resolve="ValueHolder" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbC" id="7mm1a3r6xrc" role="3clFbw">
          <node concept="2OqwBi" id="7mm1a3r6xuV" role="3uHU7w">
            <node concept="1YBJjd" id="7mm1a3r6xru" role="2Oq$k0">
              <ref role="1YBMHb" node="4OKkcnfz3Um" resolve="lv" />
            </node>
            <node concept="25OxAV" id="7mm1a3r6y7z" role="2OqNvi" />
          </node>
          <node concept="28GBK8" id="7mm1a3r6wqs" role="3uHU7B">
            <ref role="28GBKb" to="5j4j:dfChU1zo4B" resolve="LogicalSubstitution" />
            <ref role="28H3Ia" to="5j4j:dfChU1zo4I" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4OKkcnfz3Um" role="1YuTPh">
      <property role="TrG5h" value="lv" />
      <ref role="1YaFvo" to="vgt0:pmDhvH6BD8" resolve="LogicVariable" />
    </node>
  </node>
</model>

