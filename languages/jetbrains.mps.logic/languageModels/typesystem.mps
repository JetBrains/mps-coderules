<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:63d079fa-4fab-4468-a2ee-4cf39ac1306b(jetbrains.mps.logic.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="-1" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="xq5w" ref="r:729bada4-05fa-458f-8bf8-28b9cb978726(jetbrains.mps.logic.builtin.var)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="vgt0" ref="r:f36c95e5-e428-4945-91ae-1005e20c7971(jetbrains.mps.jchr.structure)" />
    <import index="j44f" ref="r:0908786d-1897-49e0-bece-5a5d4968324f(jetbrains.mps.jchr.typesystem)" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068431790189" name="jetbrains.mps.baseLanguage.structure.Type" flags="in" index="33vP2l" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
      <concept id="1196350785112" name="jetbrains.mps.lang.quotation.structure.Antiquotation" flags="ng" index="2c44te" />
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
      <concept id="1185805035213" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteStatement" flags="nn" index="nvevp">
        <child id="1185805047793" name="body" index="nvhr_" />
        <child id="1185805056450" name="argument" index="nvjzm" />
        <child id="1205761991995" name="argumentRepresentator" index="2X0Ygz" />
      </concept>
      <concept id="1175147569072" name="jetbrains.mps.lang.typesystem.structure.AbstractSubtypingRule" flags="ig" index="2sgdUx">
        <child id="1175147624276" name="body" index="2sgrp5" />
      </concept>
      <concept id="1175147670730" name="jetbrains.mps.lang.typesystem.structure.SubtypingRule" flags="ig" index="2sgARr" />
      <concept id="1205762105978" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteVariableDeclaration" flags="ng" index="2X1qdy" />
      <concept id="1205762656241" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteVariableReference" flags="nn" index="2X3wrD">
        <reference id="1205762683928" name="whenConcreteVar" index="2X3Bk0" />
      </concept>
      <concept id="1201607707634" name="jetbrains.mps.lang.typesystem.structure.InequationReplacementRule" flags="ig" index="35pCF_">
        <child id="1201607798918" name="supertypeNode" index="35pZ6h" />
        <child id="3592071576955708909" name="isApplicableClause" index="1xSnZW" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="3592071576955708904" name="jetbrains.mps.lang.typesystem.structure.IsReplacementRuleApplicable_ConceptFunction" flags="in" index="1xSnZT" />
      <concept id="1176543928247" name="jetbrains.mps.lang.typesystem.structure.IsSubtypeExpression" flags="nn" index="3JuTUA">
        <child id="1176543945045" name="subtypeExpression" index="3JuY14" />
        <child id="1176543950311" name="supertypeExpression" index="3JuZjQ" />
      </concept>
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
        <property id="1206359757216" name="checkOnly" index="3wDh2S" />
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
      <concept id="1174665551739" name="jetbrains.mps.lang.typesystem.structure.TypeVarDeclaration" flags="ng" index="1ZxtTE" />
      <concept id="1174666260556" name="jetbrains.mps.lang.typesystem.structure.TypeVarReference" flags="nn" index="1Z$b5t">
        <reference id="1174666276259" name="typeVarDeclaration" index="1Z$eMM" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="1564179198502666296" name="jetbrains.mps.logic.structure.LogicalType" flags="ig" index="26uTi9">
        <child id="6399471711045454762" name="dataType" index="3vMvoR" />
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
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1YbPZF" id="1pt0VTMFfZC">
    <property role="TrG5h" value="typeof_AtomExpression" />
    <node concept="3clFbS" id="1pt0VTMFg58" role="18ibNy">
      <node concept="1Z5TYs" id="1pt0VTMFg9O" role="3cqZAp">
        <node concept="mw_s8" id="1pt0VTMFgab" role="1ZfhKB">
          <node concept="2c44tf" id="1pt0VTMFga7" role="mwGJk">
            <node concept="3uibUv" id="6r6omRlboX3" role="2c44tc">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
      <ref role="1YaFvo" to="5j4j:6$jH9oLmUCq" resolve="AtomExpression" />
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
                  <ref role="cht4Q" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
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
            <ref role="28GBKb" to="5j4j:dfChU1zo4B" resolve="Splice" />
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
  <node concept="1YbPZF" id="2c3nq4GQw_E">
    <property role="TrG5h" value="typeof_LogicalVariableReference" />
    <property role="3GE5qa" value="logical" />
    <node concept="3clFbS" id="2c3nq4GQw_F" role="18ibNy">
      <node concept="3clFbJ" id="7dgRGU4B5dx" role="3cqZAp">
        <node concept="3clFbS" id="7dgRGU4B5dz" role="3clFbx">
          <node concept="1Z5TYs" id="2c3nq4GQwBU" role="3cqZAp">
            <node concept="mw_s8" id="2c3nq4GQwBX" role="1ZfhK$">
              <node concept="1Z2H0r" id="2c3nq4GQw_L" role="mwGJk">
                <node concept="1YBJjd" id="2c3nq4GQwAU" role="1Z2MuG">
                  <ref role="1YBMHb" node="2c3nq4GQw_H" resolve="lvr" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="2c3nq4GQKvg" role="1ZfhKB">
              <node concept="1Z2H0r" id="2c3nq4GQKvc" role="mwGJk">
                <node concept="2OqwBi" id="2c3nq4GQKxV" role="1Z2MuG">
                  <node concept="1YBJjd" id="2c3nq4GQKvx" role="2Oq$k0">
                    <ref role="1YBMHb" node="2c3nq4GQw_H" resolve="lvr" />
                  </node>
                  <node concept="3TrEf2" id="2c3nq4GQKRj" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:7E86$tK_PaH" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="7dgRGU4B5$v" role="3clFbw">
          <node concept="2OqwBi" id="7dgRGU4B5g2" role="2Oq$k0">
            <node concept="1YBJjd" id="7dgRGU4B5dT" role="2Oq$k0">
              <ref role="1YBMHb" node="2c3nq4GQw_H" resolve="lvr" />
            </node>
            <node concept="3TrEf2" id="7dgRGU4B5pQ" role="2OqNvi">
              <ref role="3Tt5mk" to="5j4j:7E86$tKsJfa" />
            </node>
          </node>
          <node concept="3w_OXm" id="7dgRGU4B5O8" role="2OqNvi" />
        </node>
        <node concept="9aQIb" id="7dgRGU4B5Rr" role="9aQIa">
          <node concept="3clFbS" id="7dgRGU4B5Rs" role="9aQI4">
            <node concept="1ZxtTE" id="7dgRGU4B6qV" role="3cqZAp">
              <property role="TrG5h" value="T" />
            </node>
            <node concept="1Z5TYs" id="7dgRGU4B6kd" role="3cqZAp">
              <node concept="mw_s8" id="7dgRGU4B6ke" role="1ZfhK$">
                <node concept="1Z2H0r" id="7dgRGU4B6kf" role="mwGJk">
                  <node concept="2OqwBi" id="7dgRGU4B6xL" role="1Z2MuG">
                    <node concept="1YBJjd" id="7dgRGU4B6kg" role="2Oq$k0">
                      <ref role="1YBMHb" node="2c3nq4GQw_H" resolve="lvr" />
                    </node>
                    <node concept="3TrEf2" id="7dgRGU4B6GF" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:7E86$tK_PaH" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="7dgRGU4B6o8" role="1ZfhKB">
                <node concept="2c44tf" id="7dgRGU4B6nW" role="mwGJk">
                  <node concept="10Q1$e" id="7dgRGU4B6pZ" role="2c44tc">
                    <node concept="26uTi9" id="7dgRGU4B6pq" role="10Q1$1">
                      <node concept="33vP2l" id="7dgRGU4B6pH" role="3vMvoR">
                        <node concept="2c44te" id="7dgRGU4B6qn" role="lGtFl">
                          <node concept="1Z$b5t" id="7dgRGU4B6rr" role="2c44t1">
                            <ref role="1Z$eMM" node="7dgRGU4B6qV" resolve="T" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Z5TYs" id="7dgRGU4B6l5" role="3cqZAp">
              <node concept="mw_s8" id="7dgRGU4B6l6" role="1ZfhK$">
                <node concept="1Z2H0r" id="7dgRGU4B6l7" role="mwGJk">
                  <node concept="1YBJjd" id="7dgRGU4B6l8" role="1Z2MuG">
                    <ref role="1YBMHb" node="2c3nq4GQw_H" resolve="lvr" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="7dgRGU4B6J6" role="1ZfhKB">
                <node concept="2c44tf" id="7dgRGU4B6J7" role="mwGJk">
                  <node concept="26uTi9" id="7dgRGU4B6J9" role="2c44tc">
                    <node concept="33vP2l" id="7dgRGU4B6Ja" role="3vMvoR">
                      <node concept="2c44te" id="7dgRGU4B6Jb" role="lGtFl">
                        <node concept="1Z$b5t" id="7dgRGU4B6Jc" role="2c44t1">
                          <ref role="1Z$eMM" node="7dgRGU4B6qV" resolve="T" />
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
    <node concept="1YaCAy" id="2c3nq4GQw_H" role="1YuTPh">
      <property role="TrG5h" value="lvr" />
      <ref role="1YaFvo" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariableReference" />
    </node>
  </node>
  <node concept="1YbPZF" id="2c3nq4GQKid">
    <property role="TrG5h" value="typeof_LogicalVariableDeclaration" />
    <property role="3GE5qa" value="logical" />
    <node concept="3clFbS" id="2c3nq4GQKie" role="18ibNy">
      <node concept="3clFbJ" id="7dgRGU4AfaF" role="3cqZAp">
        <node concept="3clFbS" id="7dgRGU4AfaH" role="3clFbx">
          <node concept="1Z5TYs" id="2c3nq4GQKmD" role="3cqZAp">
            <node concept="mw_s8" id="2c3nq4GQKmE" role="1ZfhK$">
              <node concept="1Z2H0r" id="2c3nq4GQKmF" role="mwGJk">
                <node concept="1YBJjd" id="2c3nq4GQKq$" role="1Z2MuG">
                  <ref role="1YBMHb" node="2c3nq4GQKig" resolve="lvd" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="2c3nq4GQKmH" role="1ZfhKB">
              <node concept="2c44tf" id="2c3nq4GQKmI" role="mwGJk">
                <node concept="26uTi9" id="2c3nq4GQKmJ" role="2c44tc">
                  <node concept="33vP2l" id="2c3nq4GQKmK" role="3vMvoR">
                    <node concept="2c44te" id="2c3nq4GQKmL" role="lGtFl">
                      <node concept="2OqwBi" id="2c3nq4GQKmM" role="2c44t1">
                        <node concept="1PxgMI" id="2c3nq4GQKmN" role="2Oq$k0">
                          <property role="1BlNFB" value="true" />
                          <ref role="1PxNhF" to="5j4j:75vUFrS_9Sg" resolve="LogicalVariableDeclarationContainer" />
                          <node concept="2OqwBi" id="2c3nq4GQKmO" role="1PxMeX">
                            <node concept="1YBJjd" id="2c3nq4GQKsq" role="2Oq$k0">
                              <ref role="1YBMHb" node="2c3nq4GQKig" resolve="lvd" />
                            </node>
                            <node concept="1mfA1w" id="2c3nq4GQKmS" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2c3nq4GQKmT" role="2OqNvi">
                          <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="7dgRGU4Ag2P" role="3clFbw">
          <node concept="2OqwBi" id="7dgRGU4AfcX" role="2Oq$k0">
            <node concept="1YBJjd" id="7dgRGU4Afb9" role="2Oq$k0">
              <ref role="1YBMHb" node="2c3nq4GQKig" resolve="lvd" />
            </node>
            <node concept="3TrEf2" id="7dgRGU4AfTp" role="2OqNvi">
              <ref role="3Tt5mk" to="5j4j:7E86$tKtioV" />
            </node>
          </node>
          <node concept="3w_OXm" id="7dgRGU4Agit" role="2OqNvi" />
        </node>
        <node concept="9aQIb" id="7dgRGU4AgmI" role="9aQIa">
          <node concept="3clFbS" id="7dgRGU4AgmJ" role="9aQI4">
            <node concept="1Z5TYs" id="7dgRGU4AgnO" role="3cqZAp">
              <node concept="mw_s8" id="7dgRGU4AgnP" role="1ZfhK$">
                <node concept="1Z2H0r" id="7dgRGU4AgnQ" role="mwGJk">
                  <node concept="1YBJjd" id="7dgRGU4AgnR" role="1Z2MuG">
                    <ref role="1YBMHb" node="2c3nq4GQKig" resolve="lvd" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="7dgRGU4AgnS" role="1ZfhKB">
                <node concept="2c44tf" id="7dgRGU4AgnT" role="mwGJk">
                  <node concept="10Q1$e" id="7dgRGU4Agsv" role="2c44tc">
                    <node concept="26uTi9" id="7dgRGU4AgnU" role="10Q1$1">
                      <node concept="33vP2l" id="7dgRGU4AgsQ" role="3vMvoR">
                        <node concept="2c44te" id="7dgRGU4Agt9" role="lGtFl">
                          <node concept="2OqwBi" id="7dgRGU4Agtn" role="2c44t1">
                            <node concept="1PxgMI" id="7dgRGU4Agto" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <ref role="1PxNhF" to="5j4j:75vUFrS_9Sg" resolve="LogicalVariableDeclarationContainer" />
                              <node concept="2OqwBi" id="7dgRGU4Agtp" role="1PxMeX">
                                <node concept="1YBJjd" id="7dgRGU4Agtq" role="2Oq$k0">
                                  <ref role="1YBMHb" node="2c3nq4GQKig" resolve="lvd" />
                                </node>
                                <node concept="1mfA1w" id="7dgRGU4Agtr" role="2OqNvi" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="7dgRGU4Agts" role="2OqNvi">
                              <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" />
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
    <node concept="1YaCAy" id="2c3nq4GQKig" role="1YuTPh">
      <property role="TrG5h" value="lvd" />
      <ref role="1YaFvo" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
    </node>
  </node>
  <node concept="1YbPZF" id="7dgRGU4$_5X">
    <property role="TrG5h" value="typeof_Splice" />
    <property role="3GE5qa" value="atom" />
    <node concept="3clFbS" id="7dgRGU4$_5Y" role="18ibNy">
      <node concept="3clFbJ" id="7dgRGU4$_64" role="3cqZAp">
        <node concept="3clFbS" id="7dgRGU4$_65" role="3clFbx">
          <node concept="nvevp" id="7dgRGU4_YFt" role="3cqZAp">
            <node concept="3clFbS" id="7dgRGU4_YFv" role="nvhr_">
              <node concept="3clFbJ" id="7dgRGU4_ZCy" role="3cqZAp">
                <node concept="3clFbS" id="7dgRGU4_ZC$" role="3clFbx">
                  <node concept="1Z5TYs" id="7dgRGU4$_z6" role="3cqZAp">
                    <property role="3wDh2S" value="true" />
                    <node concept="mw_s8" id="7dgRGU4$_Hl" role="1ZfhKB">
                      <node concept="2c44tf" id="7dgRGU4$_Hh" role="mwGJk">
                        <node concept="17QB3L" id="7dgRGU4$_HC" role="2c44tc" />
                      </node>
                    </node>
                    <node concept="mw_s8" id="7dgRGU4A0xz" role="1ZfhK$">
                      <node concept="1Z2H0r" id="7dgRGU4A0xx" role="mwGJk">
                        <node concept="2OqwBi" id="7dgRGU4A0zN" role="1Z2MuG">
                          <node concept="1YBJjd" id="7dgRGU4A0xO" role="2Oq$k0">
                            <ref role="1YBMHb" node="7dgRGU4$_60" resolve="splice" />
                          </node>
                          <node concept="3TrEf2" id="7dgRGU4A0KD" role="2OqNvi">
                            <ref role="3Tt5mk" to="5j4j:dfChU1zo4I" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="7dgRGU4_ZYG" role="3clFbw">
                  <node concept="1Wc70l" id="7dgRGU4_ZLM" role="3uHU7B">
                    <node concept="1Wc70l" id="7dgRGU4Aq9e" role="3uHU7B">
                      <node concept="3fqX7Q" id="7dgRGU4Aqr4" role="3uHU7B">
                        <node concept="2OqwBi" id="7dgRGU4Aqr6" role="3fr31v">
                          <node concept="2X3wrD" id="7dgRGU4Aqr7" role="2Oq$k0">
                            <ref role="2X3Bk0" node="7dgRGU4_YFz" resolve="exprType" />
                          </node>
                          <node concept="1mIQ4w" id="7dgRGU4Aqr8" role="2OqNvi">
                            <node concept="chp4Y" id="7dgRGU4Aqr9" role="cj9EA">
                              <ref role="cht4Q" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="7dgRGU4_ZEb" role="3uHU7w">
                        <node concept="3JuTUA" id="7dgRGU4_ZEd" role="3fr31v">
                          <node concept="2X3wrD" id="7dgRGU4_ZEe" role="3JuY14">
                            <ref role="2X3Bk0" node="7dgRGU4_YFz" resolve="exprType" />
                          </node>
                          <node concept="2c44tf" id="7dgRGU4_ZEf" role="3JuZjQ">
                            <node concept="17QB3L" id="7dgRGU4_ZEg" role="2c44tc" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="7dgRGU4_ZML" role="3uHU7w">
                      <node concept="3JuTUA" id="7dgRGU4_Zyq" role="3fr31v">
                        <node concept="2X3wrD" id="7dgRGU4_Z_1" role="3JuY14">
                          <ref role="2X3Bk0" node="7dgRGU4_YFz" resolve="exprType" />
                        </node>
                        <node concept="2c44tf" id="7dgRGU4_ZB$" role="3JuZjQ">
                          <node concept="10Oyi0" id="7dgRGU4_ZPs" role="2c44tc" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="7dgRGU4A00y" role="3uHU7w">
                    <node concept="3JuTUA" id="7dgRGU4A00z" role="3fr31v">
                      <node concept="2X3wrD" id="7dgRGU4A00$" role="3JuY14">
                        <ref role="2X3Bk0" node="7dgRGU4_YFz" resolve="exprType" />
                      </node>
                      <node concept="2c44tf" id="7dgRGU4A00_" role="3JuZjQ">
                        <node concept="3uibUv" id="7dgRGU4A02j" role="2c44tc">
                          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Z2H0r" id="7dgRGU4_YGs" role="nvjzm">
              <node concept="2OqwBi" id="7dgRGU4_YJ3" role="1Z2MuG">
                <node concept="1YBJjd" id="7dgRGU4_YGS" role="2Oq$k0">
                  <ref role="1YBMHb" node="7dgRGU4$_60" resolve="splice" />
                </node>
                <node concept="3TrEf2" id="7dgRGU4_YUb" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:dfChU1zo4I" />
                </node>
              </node>
            </node>
            <node concept="2X1qdy" id="7dgRGU4_YFz" role="2X0Ygz">
              <property role="TrG5h" value="exprType" />
              <node concept="10Q1$e" id="7dgRGU4_YWZ" role="1tU5fm">
                <node concept="10Q1$e" id="7dgRGU4_YWJ" role="10Q1$1">
                  <node concept="10Q1$e" id="7dgRGU4_YW_" role="10Q1$1">
                    <node concept="2jxLKc" id="7dgRGU4_YF$" role="10Q1$1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="7dgRGU4$_ru" role="3clFbw">
          <node concept="2OqwBi" id="7dgRGU4$_8v" role="2Oq$k0">
            <node concept="1YBJjd" id="7dgRGU4$_6g" role="2Oq$k0">
              <ref role="1YBMHb" node="7dgRGU4$_60" resolve="splice" />
            </node>
            <node concept="1mfA1w" id="7dgRGU4$_hC" role="2OqNvi" />
          </node>
          <node concept="1mIQ4w" id="7dgRGU4$_wj" role="2OqNvi">
            <node concept="chp4Y" id="7dgRGU4$_wO" role="cj9EA">
              <ref role="cht4Q" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7dgRGU4$_60" role="1YuTPh">
      <property role="TrG5h" value="splice" />
      <ref role="1YaFvo" to="5j4j:dfChU1zo4B" resolve="Splice" />
    </node>
  </node>
  <node concept="1YbPZF" id="1_iD3HAeW0h">
    <property role="TrG5h" value="typeof_LogicalValue" />
    <property role="3GE5qa" value="logical" />
    <node concept="3clFbS" id="1_iD3HAeW0i" role="18ibNy">
      <node concept="1Z5TYs" id="1_iD3HAeW51" role="3cqZAp">
        <node concept="mw_s8" id="1_iD3HAeW5l" role="1ZfhKB">
          <node concept="2c44tf" id="1_iD3HAeW5h" role="mwGJk">
            <node concept="26uTi9" id="1_iD3HAeW5C" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="1_iD3HAeW54" role="1ZfhK$">
          <node concept="1Z2H0r" id="1_iD3HAeW0_" role="mwGJk">
            <node concept="1YBJjd" id="1_iD3HAeW11" role="1Z2MuG">
              <ref role="1YBMHb" node="1_iD3HAeW0k" resolve="logicalValue" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1_iD3HAeW0k" role="1YuTPh">
      <property role="TrG5h" value="logicalValue" />
      <ref role="1YaFvo" to="5j4j:7E86$tKskWj" resolve="LogicalValue" />
    </node>
  </node>
</model>

