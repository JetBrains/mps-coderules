<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:63d079fa-4fab-4468-a2ee-4cf39ac1306b(jetbrains.mps.logic.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="vgt0" ref="r:f36c95e5-e428-4945-91ae-1005e20c7971(jetbrains.mps.jchr.structure)" />
    <import index="j44f" ref="r:0908786d-1897-49e0-bece-5a5d4968324f(jetbrains.mps.jchr.typesystem)" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="45ys" ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
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
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
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
      <concept id="1196350785112" name="jetbrains.mps.lang.quotation.structure.Antiquotation" flags="ng" index="2c44te" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
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
      <concept id="1174663118805" name="jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement" flags="nn" index="1ZobV4" />
      <concept id="1174665551739" name="jetbrains.mps.lang.typesystem.structure.TypeVarDeclaration" flags="ng" index="1ZxtTE" />
      <concept id="1174666260556" name="jetbrains.mps.lang.typesystem.structure.TypeVarReference" flags="nn" index="1Z$b5t">
        <reference id="1174666276259" name="typeVarDeclaration" index="1Z$eMM" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="1564179198502666296" name="jetbrains.mps.logic.structure.LogicalType" flags="ig" index="26uTi9">
        <child id="6399471711045454762" name="dataType" index="3vMvoR" />
      </concept>
      <concept id="8897567155605135217" name="jetbrains.mps.logic.structure.MultiLogicalType" flags="ig" index="2Kv5Pu" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
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
      <node concept="3clFbF" id="7HUwyZb13M4" role="3cqZAp">
        <node concept="2c44tf" id="7HUwyZb13M2" role="3clFbG">
          <node concept="3uibUv" id="7HUwyZb13MN" role="2c44tc">
            <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="MetaLogical" />
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
    <property role="TrG5h" value="LogicalPattern_subtypeOf_logical" />
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
                  <node concept="3uibUv" id="7HUwyZb3e5O" role="2DMOqq">
                    <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="MetaLogical" />
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
          <node concept="3clFbH" id="7HUwyZb82c7" role="3cqZAp" />
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
                  <node concept="2Kv5Pu" id="7HUwyZb82d1" role="2c44tc">
                    <node concept="33vP2l" id="7HUwyZb82dr" role="3vMvoR">
                      <node concept="2c44te" id="7HUwyZb82dK" role="lGtFl">
                        <node concept="1Z$b5t" id="7HUwyZb82eQ" role="2c44t1">
                          <ref role="1Z$eMM" node="7dgRGU4B6qV" resolve="T" />
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
                  <node concept="2Kv5Pu" id="7HUwyZb7PcF" role="2c44tc">
                    <node concept="33vP2l" id="7HUwyZb80q_" role="3vMvoR">
                      <node concept="2c44te" id="7HUwyZb80uy" role="lGtFl">
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
              <node concept="3clFbJ" id="5Ii$nZP2G7S" role="3cqZAp">
                <node concept="3clFbS" id="5Ii$nZP2G7U" role="3clFbx">
                  <node concept="3SKdUt" id="5Ii$nZP2Gyx" role="3cqZAp">
                    <node concept="3SKdUq" id="5Ii$nZP2Gy$" role="3SKWNk">
                      <property role="3SKdUp" value="TODO: ensure the correct variable type" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="5Ii$nZP2GZj" role="3cqZAp" />
                </node>
                <node concept="3JuTUA" id="5Ii$nZP2Gwi" role="3clFbw">
                  <node concept="2X3wrD" id="5Ii$nZP2GwB" role="3JuY14">
                    <ref role="2X3Bk0" node="7dgRGU4_YFz" resolve="exprType" />
                  </node>
                  <node concept="2c44tf" id="5Ii$nZP2GwS" role="3JuZjQ">
                    <node concept="3uibUv" id="5Ii$nZP2GxX" role="2c44tc">
                      <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="5Ii$nZP2GFL" role="3eNLev">
                  <node concept="3clFbS" id="5Ii$nZP2GFM" role="3eOfB_">
                    <node concept="3SKdUt" id="5Ii$nZP2H0i" role="3cqZAp">
                      <node concept="3SKdUq" id="5Ii$nZP2H0l" role="3SKWNk">
                        <property role="3SKdUp" value="OK" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="5Ii$nZP2H0n" role="3cqZAp" />
                  </node>
                  <node concept="3JuTUA" id="5Ii$nZP2GFN" role="3eO9$A">
                    <node concept="2X3wrD" id="5Ii$nZP2GFO" role="3JuY14">
                      <ref role="2X3Bk0" node="7dgRGU4_YFz" resolve="exprType" />
                    </node>
                    <node concept="2c44tf" id="5Ii$nZP52Ws" role="3JuZjQ">
                      <node concept="3uibUv" id="6MYr6Jy880T" role="2c44tc">
                        <ref role="3uigEE" to="ie8e:2xQ7eRAD2dj" resolve="Value" />
                        <node concept="3uibUv" id="6MYr6Jy8824" role="11_B2D">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="6MYr6Jy87VU" role="3eNLev">
                  <node concept="3clFbS" id="6MYr6Jy87VV" role="3eOfB_">
                    <node concept="3SKdUt" id="6MYr6Jy87VW" role="3cqZAp">
                      <node concept="3SKdUq" id="6MYr6Jy87VX" role="3SKWNk">
                        <property role="3SKdUp" value="OK" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="6MYr6Jy87VY" role="3cqZAp" />
                  </node>
                  <node concept="3JuTUA" id="6MYr6Jy87VZ" role="3eO9$A">
                    <node concept="2X3wrD" id="6MYr6Jy87W0" role="3JuY14">
                      <ref role="2X3Bk0" node="7dgRGU4_YFz" resolve="exprType" />
                    </node>
                    <node concept="2c44tf" id="6MYr6Jy87W1" role="3JuZjQ">
                      <node concept="3uibUv" id="6MYr6Jy87W2" role="2c44tc">
                        <ref role="3uigEE" to="yg8f:qubcdt1pkm" resolve="LogicalExt" />
                        <node concept="3uibUv" id="6MYr6Jy87W3" role="11_B2D">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="5Ii$nZP52UN" role="3eNLev">
                  <node concept="3clFbS" id="5Ii$nZP52UO" role="3eOfB_">
                    <node concept="3SKdUt" id="5Ii$nZP52UP" role="3cqZAp">
                      <node concept="3SKdUq" id="5Ii$nZP52UQ" role="3SKWNk">
                        <property role="3SKdUp" value="OK" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="5Ii$nZP52UR" role="3cqZAp" />
                  </node>
                  <node concept="3JuTUA" id="5Ii$nZP52US" role="3eO9$A">
                    <node concept="2X3wrD" id="5Ii$nZP52UT" role="3JuY14">
                      <ref role="2X3Bk0" node="7dgRGU4_YFz" resolve="exprType" />
                    </node>
                    <node concept="2c44tf" id="5Ii$nZP52UU" role="3JuZjQ">
                      <node concept="10Oyi0" id="5Ii$nZP52UV" role="2c44tc" />
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="5Ii$nZP2GHw" role="3eNLev">
                  <node concept="3clFbS" id="5Ii$nZP2GHx" role="3eOfB_">
                    <node concept="3SKdUt" id="5Ii$nZP2H0r" role="3cqZAp">
                      <node concept="3SKdUq" id="5Ii$nZP2H0t" role="3SKWNk">
                        <property role="3SKdUp" value="OK" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="5Ii$nZP2H0v" role="3cqZAp" />
                  </node>
                  <node concept="3JuTUA" id="5Ii$nZP2GHy" role="3eO9$A">
                    <node concept="2X3wrD" id="5Ii$nZP2GHz" role="3JuY14">
                      <ref role="2X3Bk0" node="7dgRGU4_YFz" resolve="exprType" />
                    </node>
                    <node concept="2c44tf" id="5Ii$nZP2GIO" role="3JuZjQ">
                      <node concept="3uibUv" id="5Ii$nZP2GIP" role="2c44tc">
                        <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="5Ii$nZP2GLF" role="3eNLev">
                  <node concept="3clFbS" id="5Ii$nZP2GLG" role="3eOfB_">
                    <node concept="3SKdUt" id="5Ii$nZP2H0_" role="3cqZAp">
                      <node concept="3SKdUq" id="5Ii$nZP2H0C" role="3SKWNk">
                        <property role="3SKdUp" value="TODO: ensure the correct logical type" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="5Ii$nZP2H0E" role="3cqZAp" />
                  </node>
                  <node concept="2OqwBi" id="5Ii$nZP2GN3" role="3eO9$A">
                    <node concept="2X3wrD" id="5Ii$nZP2GN4" role="2Oq$k0">
                      <ref role="2X3Bk0" node="7dgRGU4_YFz" resolve="exprType" />
                    </node>
                    <node concept="1mIQ4w" id="5Ii$nZP2GN5" role="2OqNvi">
                      <node concept="chp4Y" id="5Ii$nZP2GN6" role="cj9EA">
                        <ref role="cht4Q" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="5Ii$nZP2GOe" role="9aQIa">
                  <node concept="3clFbS" id="5Ii$nZP2GOf" role="9aQI4">
                    <node concept="3SKdUt" id="5Ii$nZP2GZ5" role="3cqZAp">
                      <node concept="3SKdUq" id="5Ii$nZP2GZh" role="3SKWNk">
                        <property role="3SKdUp" value="string by default" />
                      </node>
                    </node>
                    <node concept="1ZobV4" id="2zBk6uIp8Po" role="3cqZAp">
                      <property role="3wDh2S" value="true" />
                      <node concept="mw_s8" id="2zBk6uIp8Pt" role="1ZfhK$">
                        <node concept="1Z2H0r" id="2zBk6uIp8Pu" role="mwGJk">
                          <node concept="2OqwBi" id="2zBk6uIp8Pv" role="1Z2MuG">
                            <node concept="1YBJjd" id="2zBk6uIp8Pw" role="2Oq$k0">
                              <ref role="1YBMHb" node="7dgRGU4$_60" resolve="splice" />
                            </node>
                            <node concept="3TrEf2" id="2zBk6uIp8Px" role="2OqNvi">
                              <ref role="3Tt5mk" to="5j4j:dfChU1zo4I" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="mw_s8" id="2zBk6uIp8Pq" role="1ZfhKB">
                        <node concept="2c44tf" id="2zBk6uIp8Pr" role="mwGJk">
                          <node concept="17QB3L" id="2zBk6uIp8Ps" role="2c44tc" />
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
  <node concept="2sgARr" id="7HUwyZb1IYy">
    <property role="3GE5qa" value="logical" />
    <property role="TrG5h" value="supertypesOf_MultiLogicalType" />
    <node concept="3clFbS" id="7HUwyZb1IYz" role="2sgrp5">
      <node concept="3clFbF" id="7HUwyZb1IYI" role="3cqZAp">
        <node concept="2c44tf" id="7HUwyZb1IYG" role="3clFbG">
          <node concept="3uibUv" id="7HUwyZb1IZt" role="2c44tc">
            <ref role="3uigEE" to="45ys:7HUwyZaNIC5" resolve="MultiMetaLogical" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7HUwyZb1IY_" role="1YuTPh">
      <property role="TrG5h" value="mlt" />
      <ref role="1YaFvo" to="5j4j:7HUwyZb1HXL" resolve="MultiLogicalType" />
    </node>
  </node>
</model>

