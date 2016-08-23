<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6a6b9246-6407-4ef2-8408-df149f70bcd9(jetbrains.mps.lang.typesystem2.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.typesystem2.template)" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="hy7p" ref="r:01ee26d6-df00-4ffb-931c-1ddec5984886(jetbrains.mps.lang.typesystem2.util)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="nz6g" ref="r:ac00f724-30be-446e-805c-2345efc460d7(jetbrains.mps.lang.typesystem2.program)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="x5bw" ref="r:15ea4f4e-2f41-4ce3-b7e4-a4e0737f0171(jetbrains.mps.lang.typesystem2.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
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
        <child id="1175147624276" name="body" index="2sgrp5" />
      </concept>
      <concept id="1175147670730" name="jetbrains.mps.lang.typesystem.structure.SubtypingRule" flags="ig" index="2sgARr" />
      <concept id="1175517400280" name="jetbrains.mps.lang.typesystem.structure.AssertStatement" flags="nn" index="2Mj0R9">
        <child id="1175517761460" name="condition" index="2MkoU_" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
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
      <concept id="1174663118805" name="jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement" flags="nn" index="1ZobV4" />
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="1564179198502666296" name="jetbrains.mps.logic.structure.LogicalType" flags="ig" index="26uTi9" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1803469493727536395" name="jetbrains.mps.lang.smodel.structure.OperationParm_StopConceptList" flags="ng" index="hTh3S">
        <child id="1803469493727536396" name="concept" index="hTh3Z" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <reference id="6733348108486823428" name="concept" index="1m5ApE" />
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaraton" index="3bZ5Sy" />
      </concept>
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1219352745532" name="jetbrains.mps.lang.smodel.structure.NodeRefExpression" flags="nn" index="3B5_sB">
        <reference id="1219352800908" name="referentNode" index="3B5MYn" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
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
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="1172424058054" name="jetbrains.mps.lang.smodel.structure.ConceptRefExpression" flags="nn" index="3TUQnm">
        <reference id="1172424100906" name="conceptDeclaration" index="3TV0OU" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
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
                    <ref role="1m5ApE" to="wq2x:5NuEpF1if3e" resolve="RuleInputSpecification" />
                    <node concept="2OqwBi" id="6p0DfM0iSj6" role="1m5AlR">
                      <node concept="1YBJjd" id="6p0DfM0iSj7" role="2Oq$k0">
                        <ref role="1YBMHb" node="6p0DfM0iLg$" resolve="rid" />
                      </node>
                      <node concept="1mfA1w" id="6p0DfM0iSj8" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="5NuEpF1k2lS" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:5NuEpF1iiA0" resolve="applicableConcept" />
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
                <ref role="3Tt5mk" to="wq2x:6p0DfM0iCzc" resolve="declaration" />
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
  <node concept="1YbPZF" id="5MHpiylKVB4">
    <property role="TrG5h" value="typeof_RuleParameterReference" />
    <property role="3GE5qa" value="rule.code.parameter" />
    <node concept="3clFbS" id="5MHpiylKVB5" role="18ibNy">
      <node concept="1Z5TYs" id="5MHpiylKW2e" role="3cqZAp">
        <node concept="mw_s8" id="5MHpiylKW57" role="1ZfhKB">
          <node concept="1Z2H0r" id="5MHpiylKW53" role="mwGJk">
            <node concept="2OqwBi" id="5MHpiylKW8v" role="1Z2MuG">
              <node concept="1YBJjd" id="5MHpiylKW5$" role="2Oq$k0">
                <ref role="1YBMHb" node="5MHpiylKVB7" resolve="rpr" />
              </node>
              <node concept="3TrEf2" id="5MHpiylKWrZ" role="2OqNvi">
                <ref role="3Tt5mk" to="wq2x:5MHpiylKVev" resolve="declaration" />
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
    <property role="3GE5qa" value="rule.code.parameter" />
    <node concept="3clFbS" id="5MHpiylSAgT" role="18ibNy">
      <node concept="1Z5TYs" id="5MHpiylSAxR" role="3cqZAp">
        <node concept="mw_s8" id="5MHpiylSAzS" role="1ZfhKB">
          <node concept="2OqwBi" id="5MHpiylSAAI" role="mwGJk">
            <node concept="1YBJjd" id="5MHpiylSAzQ" role="2Oq$k0">
              <ref role="1YBMHb" node="5MHpiylSAgV" resolve="rpd" />
            </node>
            <node concept="3TrEf2" id="5MHpiylSAQj" role="2OqNvi">
              <ref role="3Tt5mk" to="wq2x:5MHpiylFYj$" resolve="type" />
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
  <node concept="18kY7G" id="1zN1RIlrgwT">
    <property role="TrG5h" value="check_RuleTempleMethod_call" />
    <node concept="3clFbS" id="1zN1RIlrgwU" role="18ibNy">
      <node concept="3cpWs8" id="1zN1RIlro2M" role="3cqZAp">
        <node concept="3cpWsn" id="1zN1RIlro2N" role="3cpWs9">
          <property role="TrG5h" value="annInst" />
          <node concept="3Tqbb2" id="1zN1RIlro2A" role="1tU5fm">
            <ref role="ehGHo" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
          </node>
          <node concept="2OqwBi" id="1zN1RIlro2O" role="33vP2m">
            <node concept="2OqwBi" id="1zN1RIlro2P" role="2Oq$k0">
              <node concept="2OqwBi" id="1zN1RIlro2Q" role="2Oq$k0">
                <node concept="1YBJjd" id="1zN1RIlro2R" role="2Oq$k0">
                  <ref role="1YBMHb" node="1zN1RIlrgxK" resolve="baseMethodCall" />
                </node>
                <node concept="3TrEf2" id="1zN1RIlsNTU" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fz7wK6H" resolve="baseMethodDeclaration" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1zN1RIlro2T" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
              </node>
            </node>
            <node concept="1z4cxt" id="1zN1RIlro2U" role="2OqNvi">
              <node concept="1bVj0M" id="1zN1RIlro2V" role="23t8la">
                <node concept="3clFbS" id="1zN1RIlro2W" role="1bW5cS">
                  <node concept="3clFbF" id="1zN1RIlro2X" role="3cqZAp">
                    <node concept="3clFbC" id="1zN1RIlro2Y" role="3clFbG">
                      <node concept="3B5_sB" id="1zN1RIlro2Z" role="3uHU7w">
                        <ref role="3B5MYn" to="i348:4OKkcnfu_Am" resolve="RuleTemplateMethod" />
                      </node>
                      <node concept="2OqwBi" id="1zN1RIlro30" role="3uHU7B">
                        <node concept="37vLTw" id="1zN1RIlro31" role="2Oq$k0">
                          <ref role="3cqZAo" node="1zN1RIlro33" resolve="annInst" />
                        </node>
                        <node concept="3TrEf2" id="1zN1RIlro32" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:hiAI5P0" resolve="annotation" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1zN1RIlro33" role="1bW2Oz">
                  <property role="TrG5h" value="annInst" />
                  <node concept="2jxLKc" id="1zN1RIlro34" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="1zN1RIlseLZ" role="3cqZAp" />
      <node concept="3clFbJ" id="1zN1RIlro4v" role="3cqZAp">
        <node concept="3clFbS" id="1zN1RIlro4x" role="3clFbx">
          <node concept="3cpWs8" id="1zN1RIls0zw" role="3cqZAp">
            <node concept="3cpWsn" id="1zN1RIls0zx" role="3cpWs9">
              <property role="TrG5h" value="methKind" />
              <node concept="3Tqbb2" id="1zN1RIls0zs" role="1tU5fm">
                <ref role="ehGHo" to="tpee:fKQsSyN" resolve="EnumConstantDeclaration" />
              </node>
              <node concept="2OqwBi" id="1zN1RIls0zy" role="33vP2m">
                <node concept="1PxgMI" id="1zN1RIls0zz" role="2Oq$k0">
                  <ref role="1m5ApE" to="tpee:fKRm8J8" resolve="EnumConstantReference" />
                  <node concept="2OqwBi" id="1zN1RIls0z$" role="1m5AlR">
                    <node concept="2OqwBi" id="1zN1RIls0z_" role="2Oq$k0">
                      <node concept="2OqwBi" id="1zN1RIls0zA" role="2Oq$k0">
                        <node concept="37vLTw" id="1zN1RIls0zB" role="2Oq$k0">
                          <ref role="3cqZAo" node="1zN1RIlro2N" resolve="annInst" />
                        </node>
                        <node concept="3Tsc0h" id="1zN1RIls0zC" role="2OqNvi">
                          <ref role="3TtcxE" to="tpee:hiB76_Z" resolve="value" />
                        </node>
                      </node>
                      <node concept="1z4cxt" id="1zN1RIls0zD" role="2OqNvi">
                        <node concept="1bVj0M" id="1zN1RIls0zE" role="23t8la">
                          <node concept="3clFbS" id="1zN1RIls0zF" role="1bW5cS">
                            <node concept="3clFbF" id="1zN1RIls0zG" role="3cqZAp">
                              <node concept="2OqwBi" id="1zN1RIls0zH" role="3clFbG">
                                <node concept="2OqwBi" id="1zN1RIls0zI" role="2Oq$k0">
                                  <node concept="37vLTw" id="1zN1RIls0zJ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1zN1RIls0zN" resolve="val" />
                                  </node>
                                  <node concept="3TrEf2" id="1zN1RIls0zK" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpee:hiB70Z4" resolve="value" />
                                  </node>
                                </node>
                                <node concept="1mIQ4w" id="1zN1RIls0zL" role="2OqNvi">
                                  <node concept="chp4Y" id="1zN1RIls0zM" role="cj9EA">
                                    <ref role="cht4Q" to="tpee:fKRm8J8" resolve="EnumConstantReference" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="1zN1RIls0zN" role="1bW2Oz">
                            <property role="TrG5h" value="val" />
                            <node concept="2jxLKc" id="1zN1RIls0zO" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3TrEf2" id="1zN1RIls0zP" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:hiB70Z4" resolve="value" />
                    </node>
                  </node>
                </node>
                <node concept="3TrEf2" id="1zN1RIls0zQ" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fKRm8Ja" resolve="enumConstantDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1zN1RIls30X" role="3cqZAp">
            <node concept="3cpWsn" id="1zN1RIls30Y" role="3cpWs9">
              <property role="TrG5h" value="context" />
              <node concept="3Tqbb2" id="1zN1RIls30W" role="1tU5fm" />
              <node concept="2OqwBi" id="1zN1RIls30Z" role="33vP2m">
                <node concept="1YBJjd" id="1zN1RIls310" role="2Oq$k0">
                  <ref role="1YBMHb" node="1zN1RIlrgxK" resolve="baseMethodCall" />
                </node>
                <node concept="2Xjw5R" id="1zN1RIls311" role="2OqNvi">
                  <node concept="3gmYPX" id="1zN1RIls3uE" role="1xVPHs">
                    <node concept="3gn64h" id="1zN1RIls3uK" role="3gmYPZ">
                      <ref role="3gnhBz" to="wq2x:6p0DfM0a3d3" resolve="RuleComponent" />
                    </node>
                    <node concept="3gn64h" id="3yhgKRI6pQ8" role="3gmYPZ">
                      <ref role="3gnhBz" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1zN1RIls3X0" role="3cqZAp" />
          <node concept="3clFbJ" id="1zN1RIls3_s" role="3cqZAp">
            <node concept="3clFbS" id="1zN1RIls3_u" role="3clFbx">
              <node concept="3cpWs8" id="1zN1RIlsblM" role="3cqZAp">
                <node concept="3cpWsn" id="1zN1RIlsblN" role="3cpWs9">
                  <property role="TrG5h" value="thatAnnInst" />
                  <node concept="3Tqbb2" id="1zN1RIlsblH" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
                  </node>
                  <node concept="2OqwBi" id="1zN1RIlsblO" role="33vP2m">
                    <node concept="2OqwBi" id="1zN1RIlsblP" role="2Oq$k0">
                      <node concept="1PxgMI" id="1zN1RIlsblQ" role="2Oq$k0">
                        <ref role="1m5ApE" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
                        <node concept="37vLTw" id="1zN1RIlsblR" role="1m5AlR">
                          <ref role="3cqZAo" node="1zN1RIls30Y" resolve="context" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="1zN1RIlsblS" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
                      </node>
                    </node>
                    <node concept="1z4cxt" id="1zN1RIlsblT" role="2OqNvi">
                      <node concept="1bVj0M" id="1zN1RIlsblU" role="23t8la">
                        <node concept="3clFbS" id="1zN1RIlsblV" role="1bW5cS">
                          <node concept="3clFbF" id="1zN1RIlsblW" role="3cqZAp">
                            <node concept="3clFbC" id="1zN1RIlsblX" role="3clFbG">
                              <node concept="2OqwBi" id="1zN1RIlsblY" role="3uHU7B">
                                <node concept="37vLTw" id="1zN1RIlsblZ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1zN1RIlsbm2" resolve="ai" />
                                </node>
                                <node concept="3TrEf2" id="1zN1RIlsbm0" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpee:hiAI5P0" resolve="annotation" />
                                </node>
                              </node>
                              <node concept="3B5_sB" id="1zN1RIlsbm1" role="3uHU7w">
                                <ref role="3B5MYn" to="i348:4OKkcnfu_Am" resolve="RuleTemplateMethod" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="1zN1RIlsbm2" role="1bW2Oz">
                          <property role="TrG5h" value="ai" />
                          <node concept="2jxLKc" id="1zN1RIlsbm3" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1zN1RIlsbIr" role="3cqZAp">
                <node concept="3cpWsn" id="1zN1RIlsbIs" role="3cpWs9">
                  <property role="TrG5h" value="thatMethKind" />
                  <node concept="3Tqbb2" id="1zN1RIlsbHW" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:fKQsSyN" resolve="EnumConstantDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="1zN1RIlsbIt" role="33vP2m">
                    <node concept="1PxgMI" id="1zN1RIlsbIu" role="2Oq$k0">
                      <ref role="1m5ApE" to="tpee:fKRm8J8" resolve="EnumConstantReference" />
                      <node concept="2OqwBi" id="1zN1RIlsbIv" role="1m5AlR">
                        <node concept="2OqwBi" id="1zN1RIlsbIw" role="2Oq$k0">
                          <node concept="2OqwBi" id="1zN1RIlsbIx" role="2Oq$k0">
                            <node concept="37vLTw" id="1zN1RIlsbIy" role="2Oq$k0">
                              <ref role="3cqZAo" node="1zN1RIlsblN" resolve="thatAnnInst" />
                            </node>
                            <node concept="3Tsc0h" id="1zN1RIlsbIz" role="2OqNvi">
                              <ref role="3TtcxE" to="tpee:hiB76_Z" resolve="value" />
                            </node>
                          </node>
                          <node concept="1z4cxt" id="1zN1RIlsbI$" role="2OqNvi">
                            <node concept="1bVj0M" id="1zN1RIlsbI_" role="23t8la">
                              <node concept="3clFbS" id="1zN1RIlsbIA" role="1bW5cS">
                                <node concept="3clFbF" id="1zN1RIlsbIB" role="3cqZAp">
                                  <node concept="2OqwBi" id="1zN1RIlsbIC" role="3clFbG">
                                    <node concept="2OqwBi" id="1zN1RIlsbID" role="2Oq$k0">
                                      <node concept="37vLTw" id="1zN1RIlsbIE" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1zN1RIlsbII" resolve="val" />
                                      </node>
                                      <node concept="3TrEf2" id="1zN1RIlsbIF" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpee:hiB70Z4" resolve="value" />
                                      </node>
                                    </node>
                                    <node concept="1mIQ4w" id="1zN1RIlsbIG" role="2OqNvi">
                                      <node concept="chp4Y" id="1zN1RIlsbIH" role="cj9EA">
                                        <ref role="cht4Q" to="tpee:fKRm8J8" resolve="EnumConstantReference" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="1zN1RIlsbII" role="1bW2Oz">
                                <property role="TrG5h" value="val" />
                                <node concept="2jxLKc" id="1zN1RIlsbIJ" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="1zN1RIlsbIK" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:hiB70Z4" resolve="value" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrEf2" id="1zN1RIlsbIL" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fKRm8Ja" resolve="enumConstantDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1zN1RIlsbR9" role="3cqZAp">
                <node concept="3clFbS" id="1zN1RIlsbRb" role="3clFbx">
                  <node concept="2MkqsV" id="1zN1RIlsbZ0" role="3cqZAp">
                    <node concept="Xl_RD" id="1zN1RIlsbZ9" role="2MkJ7o">
                      <property role="Xl_RC" value="incompatible called method kind" />
                    </node>
                    <node concept="1YBJjd" id="1zN1RIlsbZb" role="2OEOjV">
                      <ref role="1YBMHb" node="1zN1RIlrgxK" resolve="baseMethodCall" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="1zN1RIlsbYQ" role="3clFbw">
                  <node concept="37vLTw" id="1zN1RIlsbYX" role="3uHU7w">
                    <ref role="3cqZAo" node="1zN1RIlsbIs" resolve="thatMethKind" />
                  </node>
                  <node concept="37vLTw" id="1zN1RIlsbRX" role="3uHU7B">
                    <ref role="3cqZAo" node="1zN1RIls0zx" resolve="methKind" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1zN1RIls3Jd" role="3clFbw">
              <node concept="37vLTw" id="1zN1RIls3A$" role="2Oq$k0">
                <ref role="3cqZAo" node="1zN1RIls30Y" resolve="context" />
              </node>
              <node concept="1mIQ4w" id="1zN1RIls3Ux" role="2OqNvi">
                <node concept="chp4Y" id="3yhgKRI6qLo" role="cj9EA">
                  <ref role="cht4Q" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="1zN1RIlsc2q" role="9aQIa">
              <node concept="3clFbS" id="1zN1RIlsc2r" role="9aQI4">
                <node concept="3cpWs8" id="1zN1RIlsc5M" role="3cqZAp">
                  <node concept="3cpWsn" id="1zN1RIlsc5P" role="3cpWs9">
                    <property role="TrG5h" value="ok" />
                    <node concept="10P_77" id="1zN1RIlsc5K" role="1tU5fm" />
                    <node concept="3clFbT" id="1zN1RIlsc6q" role="33vP2m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1zN1RIlsklN" role="3cqZAp">
                  <node concept="3clFbS" id="1zN1RIlsklP" role="3clFbx">
                    <node concept="3clFbF" id="1zN1RIlsdDw" role="3cqZAp">
                      <node concept="37vLTI" id="1zN1RIlsdDx" role="3clFbG">
                        <node concept="1Wc70l" id="1zN1RIlsdDy" role="37vLTx">
                          <node concept="2OqwBi" id="1zN1RIlsdDz" role="3uHU7w">
                            <node concept="1PxgMI" id="1zN1RIlsdD$" role="2Oq$k0">
                              <ref role="1m5ApE" to="wq2x:6p0DfM0a3gA" resolve="Head" />
                              <node concept="37vLTw" id="1zN1RIlsdD_" role="1m5AlR">
                                <ref role="3cqZAo" node="1zN1RIls30Y" resolve="context" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="1zN1RIlsdDA" role="2OqNvi">
                              <ref role="3TsBF5" to="wq2x:6p0DfM0bSv$" resolve="keep" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1zN1RIlsdDB" role="3uHU7B">
                            <node concept="37vLTw" id="1zN1RIlsdDC" role="2Oq$k0">
                              <ref role="3cqZAo" node="1zN1RIls30Y" resolve="context" />
                            </node>
                            <node concept="1mIQ4w" id="1zN1RIlsdDD" role="2OqNvi">
                              <node concept="chp4Y" id="1zN1RIlsdDE" role="cj9EA">
                                <ref role="cht4Q" to="wq2x:6p0DfM0a3gA" resolve="Head" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="1zN1RIlsdDF" role="37vLTJ">
                          <ref role="3cqZAo" node="1zN1RIlsc5P" resolve="ok" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="1zN1RIlsklO" role="3cqZAp" />
                  </node>
                  <node concept="2OqwBi" id="1zN1RIlskwm" role="3clFbw">
                    <node concept="2OqwBi" id="1zN1RIlskpr" role="2Oq$k0">
                      <node concept="Rm8GO" id="1zN1RIlskps" role="2Oq$k0">
                        <ref role="Rm8GQ" to="i348:4OKkcnfu_Ah" resolve="HEAD_KEPT" />
                        <ref role="1Px2BO" to="i348:4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
                      </node>
                      <node concept="liA8E" id="1zN1RIlskpt" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Enum.name():java.lang.String" resolve="name" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1zN1RIlsm1c" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                      <node concept="2OqwBi" id="1zN1RIlsmbm" role="37wK5m">
                        <node concept="37vLTw" id="1zN1RIlsm31" role="2Oq$k0">
                          <ref role="3cqZAo" node="1zN1RIls0zx" resolve="methKind" />
                        </node>
                        <node concept="3TrcHB" id="1zN1RIlsn86" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="1zN1RIlsnf$" role="3eNLev">
                    <node concept="3clFbS" id="1zN1RIlsnfA" role="3eOfB_">
                      <node concept="3clFbF" id="1zN1RIlse3x" role="3cqZAp">
                        <node concept="37vLTI" id="1zN1RIlse3y" role="3clFbG">
                          <node concept="1Wc70l" id="1zN1RIlse3z" role="37vLTx">
                            <node concept="3fqX7Q" id="1zN1RIlse3$" role="3uHU7w">
                              <node concept="2OqwBi" id="1zN1RIlse3_" role="3fr31v">
                                <node concept="1PxgMI" id="1zN1RIlse3A" role="2Oq$k0">
                                  <ref role="1m5ApE" to="wq2x:6p0DfM0a3gA" resolve="Head" />
                                  <node concept="37vLTw" id="1zN1RIlse3B" role="1m5AlR">
                                    <ref role="3cqZAo" node="1zN1RIls30Y" resolve="context" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="1zN1RIlse3C" role="2OqNvi">
                                  <ref role="3TsBF5" to="wq2x:6p0DfM0bSv$" resolve="keep" />
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="1zN1RIlse3D" role="3uHU7B">
                              <node concept="37vLTw" id="1zN1RIlse3E" role="2Oq$k0">
                                <ref role="3cqZAo" node="1zN1RIls30Y" resolve="context" />
                              </node>
                              <node concept="1mIQ4w" id="1zN1RIlse3F" role="2OqNvi">
                                <node concept="chp4Y" id="1zN1RIlse3G" role="cj9EA">
                                  <ref role="cht4Q" to="wq2x:6p0DfM0a3gA" resolve="Head" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="1zN1RIlse3H" role="37vLTJ">
                            <ref role="3cqZAo" node="1zN1RIlsc5P" resolve="ok" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1zN1RIlsoQ_" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="1zN1RIlsnks" role="3eO9$A">
                      <node concept="2OqwBi" id="1zN1RIlsnkt" role="2Oq$k0">
                        <node concept="Rm8GO" id="1zN1RIlsnoS" role="2Oq$k0">
                          <ref role="Rm8GQ" to="i348:4OKkcnfu_Ai" resolve="HEAD_REPLACED" />
                          <ref role="1Px2BO" to="i348:4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
                        </node>
                        <node concept="liA8E" id="1zN1RIlsnkv" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Enum.name():java.lang.String" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1zN1RIlsnkw" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                        <node concept="2OqwBi" id="1zN1RIlsnkx" role="37wK5m">
                          <node concept="37vLTw" id="1zN1RIlsnky" role="2Oq$k0">
                            <ref role="3cqZAo" node="1zN1RIls0zx" resolve="methKind" />
                          </node>
                          <node concept="3TrcHB" id="1zN1RIlsnkz" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="1zN1RIlsntC" role="3eNLev">
                    <node concept="3clFbS" id="1zN1RIlsntD" role="3eOfB_">
                      <node concept="3clFbF" id="1zN1RIlsecQ" role="3cqZAp">
                        <node concept="37vLTI" id="1zN1RIlsecR" role="3clFbG">
                          <node concept="2OqwBi" id="1zN1RIlsecS" role="37vLTx">
                            <node concept="37vLTw" id="1zN1RIlsecT" role="2Oq$k0">
                              <ref role="3cqZAo" node="1zN1RIls30Y" resolve="context" />
                            </node>
                            <node concept="1mIQ4w" id="1zN1RIlsecU" role="2OqNvi">
                              <node concept="chp4Y" id="1zN1RIlsecV" role="cj9EA">
                                <ref role="cht4Q" to="wq2x:6p0DfM0a3Qe" resolve="Guard" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="1zN1RIlsecW" role="37vLTJ">
                            <ref role="3cqZAo" node="1zN1RIlsc5P" resolve="ok" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1zN1RIlspcb" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="1zN1RIlsntE" role="3eO9$A">
                      <node concept="2OqwBi" id="1zN1RIlsntF" role="2Oq$k0">
                        <node concept="Rm8GO" id="1zN1RIlsn$x" role="2Oq$k0">
                          <ref role="Rm8GQ" to="i348:4OKkcnfu_Aj" resolve="GUARD" />
                          <ref role="1Px2BO" to="i348:4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
                        </node>
                        <node concept="liA8E" id="1zN1RIlsntH" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Enum.name():java.lang.String" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1zN1RIlsntI" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                        <node concept="2OqwBi" id="1zN1RIlsntJ" role="37wK5m">
                          <node concept="37vLTw" id="1zN1RIlsntK" role="2Oq$k0">
                            <ref role="3cqZAo" node="1zN1RIls0zx" resolve="methKind" />
                          </node>
                          <node concept="3TrcHB" id="1zN1RIlsntL" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="1zN1RIlsnBe" role="3eNLev">
                    <node concept="3clFbS" id="1zN1RIlsnBf" role="3eOfB_">
                      <node concept="3clFbF" id="1zN1RIlsc6t" role="3cqZAp">
                        <node concept="37vLTI" id="1zN1RIlsc$O" role="3clFbG">
                          <node concept="2OqwBi" id="1zN1RIlscCt" role="37vLTx">
                            <node concept="37vLTw" id="1zN1RIlscBp" role="2Oq$k0">
                              <ref role="3cqZAo" node="1zN1RIls30Y" resolve="context" />
                            </node>
                            <node concept="1mIQ4w" id="1zN1RIlscNN" role="2OqNvi">
                              <node concept="chp4Y" id="1zN1RIlsehu" role="cj9EA">
                                <ref role="cht4Q" to="wq2x:6p0DfM0a3TO" resolve="Body" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="1zN1RIlsc6s" role="37vLTJ">
                            <ref role="3cqZAo" node="1zN1RIlsc5P" resolve="ok" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1zN1RIlsptK" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="1zN1RIlsnBg" role="3eO9$A">
                      <node concept="2OqwBi" id="1zN1RIlsnBh" role="2Oq$k0">
                        <node concept="Rm8GO" id="1zN1RIlsnJ2" role="2Oq$k0">
                          <ref role="Rm8GQ" to="i348:4OKkcnfu_Ak" resolve="BODY" />
                          <ref role="1Px2BO" to="i348:4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
                        </node>
                        <node concept="liA8E" id="1zN1RIlsnBj" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Enum.name():java.lang.String" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1zN1RIlsnBk" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                        <node concept="2OqwBi" id="1zN1RIlsnBl" role="37wK5m">
                          <node concept="37vLTw" id="1zN1RIlsnBm" role="2Oq$k0">
                            <ref role="3cqZAo" node="1zN1RIls0zx" resolve="methKind" />
                          </node>
                          <node concept="3TrcHB" id="1zN1RIlsnBn" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="1zN1RIlspuf" role="9aQIa">
                    <node concept="3clFbS" id="1zN1RIlspug" role="9aQI4">
                      <node concept="2MkqsV" id="1zN1RIls2j1" role="3cqZAp">
                        <node concept="Xl_RD" id="1zN1RIls2ja" role="2MkJ7o">
                          <property role="Xl_RC" value="unexpected enum value" />
                        </node>
                        <node concept="1YBJjd" id="1zN1RIls2jc" role="2OEOjV">
                          <ref role="1YBMHb" node="1zN1RIlrgxK" resolve="baseMethodCall" />
                        </node>
                      </node>
                      <node concept="3clFbH" id="1zN1RIlsqvV" role="3cqZAp" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1zN1RIlsepM" role="3cqZAp">
                  <node concept="3clFbS" id="1zN1RIlsepO" role="3clFbx">
                    <node concept="2MkqsV" id="1zN1RIlserd" role="3cqZAp">
                      <node concept="Xl_RD" id="1zN1RIlsere" role="2MkJ7o">
                        <property role="Xl_RC" value="incompatible method kind" />
                      </node>
                      <node concept="1YBJjd" id="1zN1RIlserf" role="2OEOjV">
                        <ref role="1YBMHb" node="1zN1RIlrgxK" resolve="baseMethodCall" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="1zN1RIlser6" role="3clFbw">
                    <node concept="37vLTw" id="1zN1RIlsera" role="3fr31v">
                      <ref role="3cqZAo" node="1zN1RIlsc5P" resolve="ok" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="1zN1RIlro8P" role="3clFbw">
          <node concept="37vLTw" id="1zN1RIlro4X" role="2Oq$k0">
            <ref role="3cqZAo" node="1zN1RIlro2N" resolve="annInst" />
          </node>
          <node concept="3x8VRR" id="1zN1RIlrotH" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1zN1RIlrgxK" role="1YuTPh">
      <property role="TrG5h" value="baseMethodCall" />
      <ref role="1YaFvo" to="tpee:fz7wK6G" resolve="BaseMethodCall" />
    </node>
  </node>
  <node concept="18kY7G" id="5bC6UNlu6we">
    <property role="TrG5h" value="check_ConstraintDeclaration" />
    <property role="3GE5qa" value="constraint.template" />
    <node concept="3clFbS" id="5bC6UNlu6wf" role="18ibNy">
      <node concept="2Mj0R9" id="5bC6UNlu6MS" role="3cqZAp">
        <node concept="Xl_RD" id="5bC6UNlu9V9" role="2MkJ7o">
          <property role="Xl_RC" value="Arity must correspond with number of parameters" />
        </node>
        <node concept="1YBJjd" id="5bC6UNlu9T$" role="2OEOjV">
          <ref role="1YBMHb" node="5bC6UNlu6wh" resolve="constraintDeclaration" />
        </node>
        <node concept="22lmx$" id="5bC6UNlB$Eu" role="2MkoU_">
          <node concept="3clFbC" id="5bC6UNlu7iA" role="3uHU7B">
            <node concept="2OqwBi" id="5bC6UNlu6yu" role="3uHU7B">
              <node concept="1YBJjd" id="5bC6UNlu6wl" role="2Oq$k0">
                <ref role="1YBMHb" node="5bC6UNlu6wh" resolve="constraintDeclaration" />
              </node>
              <node concept="3TrcHB" id="5bC6UNlu6H5" role="2OqNvi">
                <ref role="3TsBF5" to="wq2x:6p0DfM0azKj" resolve="arity" />
              </node>
            </node>
            <node concept="2OqwBi" id="5bC6UNlu8x_" role="3uHU7w">
              <node concept="2OqwBi" id="5bC6UNlu7rx" role="2Oq$k0">
                <node concept="1YBJjd" id="5bC6UNlu7jL" role="2Oq$k0">
                  <ref role="1YBMHb" node="5bC6UNlu6wh" resolve="constraintDeclaration" />
                </node>
                <node concept="3Tsc0h" id="5bC6UNlu7AW" role="2OqNvi">
                  <ref role="3TtcxE" to="wq2x:1CgWc1TyPxy" resolve="parameters" />
                </node>
              </node>
              <node concept="34oBXx" id="5bC6UNlu9QL" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbC" id="5bC6UNlB$JQ" role="3uHU7w">
            <node concept="2OqwBi" id="5bC6UNl$Gs2" role="3uHU7B">
              <node concept="2OqwBi" id="5bC6UNl$Gs3" role="2Oq$k0">
                <node concept="1YBJjd" id="5bC6UNl$Gs4" role="2Oq$k0">
                  <ref role="1YBMHb" node="5bC6UNlu6wh" resolve="constraintDeclaration" />
                </node>
                <node concept="3Tsc0h" id="5bC6UNl$Gs5" role="2OqNvi">
                  <ref role="3TtcxE" to="wq2x:1CgWc1TyPxy" resolve="parameters" />
                </node>
              </node>
              <node concept="34oBXx" id="5bC6UNl$Gs6" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="5bC6UNl$I8d" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5bC6UNlu6wh" role="1YuTPh">
      <property role="TrG5h" value="constraintDeclaration" />
      <ref role="1YaFvo" to="wq2x:6p0DfM0asBO" resolve="ConstraintDeclaration" />
    </node>
  </node>
  <node concept="18kY7G" id="5bC6UNlv2MQ">
    <property role="TrG5h" value="check_UserConstraint" />
    <property role="3GE5qa" value="constraint" />
    <node concept="3clFbS" id="5bC6UNlv2MR" role="18ibNy">
      <node concept="2Mj0R9" id="5bC6UNlv2MZ" role="3cqZAp">
        <node concept="3clFbC" id="5bC6UNlv6Qp" role="2MkoU_">
          <node concept="2OqwBi" id="5bC6UNlv7mD" role="3uHU7w">
            <node concept="2OqwBi" id="5bC6UNlv6YQ" role="2Oq$k0">
              <node concept="1YBJjd" id="5bC6UNlv6RG" role="2Oq$k0">
                <ref role="1YBMHb" node="5bC6UNlv2MT" resolve="userConstraint" />
              </node>
              <node concept="3TrEf2" id="5bC6UNlv77h" role="2OqNvi">
                <ref role="3Tt5mk" to="wq2x:6p0DfM0aywA" resolve="template" />
              </node>
            </node>
            <node concept="2qgKlT" id="5bC6UNlv7yy" role="2OqNvi">
              <ref role="37wK5l" to="x5bw:1CgWc1TyEM4" resolve="getArity" />
            </node>
          </node>
          <node concept="2OqwBi" id="5bC6UNlv3z0" role="3uHU7B">
            <node concept="2OqwBi" id="5bC6UNlv2Ph" role="2Oq$k0">
              <node concept="1YBJjd" id="5bC6UNlv2Nn" role="2Oq$k0">
                <ref role="1YBMHb" node="5bC6UNlv2MT" resolve="userConstraint" />
              </node>
              <node concept="3Tsc0h" id="5bC6UNlv2WY" role="2OqNvi">
                <ref role="3TtcxE" to="wq2x:6p0DfM0et2r" resolve="argument" />
              </node>
            </node>
            <node concept="34oBXx" id="5bC6UNlv4us" role="2OqNvi" />
          </node>
        </node>
        <node concept="Xl_RD" id="5bC6UNlvaoP" role="2MkJ7o">
          <property role="Xl_RC" value="Number of parameters mismatch" />
        </node>
        <node concept="1YBJjd" id="5bC6UNlvaxI" role="2OEOjV">
          <ref role="1YBMHb" node="5bC6UNlv2MT" resolve="userConstraint" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5bC6UNlv2MT" role="1YuTPh">
      <property role="TrG5h" value="userConstraint" />
      <ref role="1YaFvo" to="wq2x:6p0DfM0ang5" resolve="UserConstraint" />
    </node>
  </node>
  <node concept="1YbPZF" id="7dgRGU4_Y57">
    <property role="TrG5h" value="typeof_LogicalExpression" />
    <node concept="3clFbS" id="7dgRGU4_Y58" role="18ibNy">
      <node concept="1Z5TYs" id="7dgRGU4_Y6_" role="3cqZAp">
        <node concept="mw_s8" id="7dgRGU4_Y6C" role="1ZfhK$">
          <node concept="1Z2H0r" id="7dgRGU4_Y5e" role="mwGJk">
            <node concept="1YBJjd" id="7dgRGU4_Y5E" role="1Z2MuG">
              <ref role="1YBMHb" node="7dgRGU4_Y5a" resolve="logicalExpression" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="7dgRGU4Aknk" role="1ZfhKB">
          <node concept="1Z2H0r" id="7dgRGU4Akng" role="mwGJk">
            <node concept="2OqwBi" id="7dgRGU4Akpe" role="1Z2MuG">
              <node concept="1YBJjd" id="7dgRGU4Akn_" role="2Oq$k0">
                <ref role="1YBMHb" node="7dgRGU4_Y5a" resolve="logicalExpression" />
              </node>
              <node concept="3TrEf2" id="7dgRGU4AkE3" role="2OqNvi">
                <ref role="3Tt5mk" to="wq2x:6p0DfM0pQge" resolve="clause" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7dgRGU4_Y5a" role="1YuTPh">
      <property role="TrG5h" value="logicalExpression" />
      <ref role="1YaFvo" to="wq2x:6p0DfM0pKSO" resolve="LogicalExpression" />
    </node>
  </node>
  <node concept="18kY7G" id="67SsWaEdTGN">
    <property role="TrG5h" value="check_TypeTerm" />
    <property role="3GE5qa" value="type.term" />
    <node concept="3clFbS" id="67SsWaEdTGO" role="18ibNy">
      <node concept="3clFbJ" id="67SsWaEeEwV" role="3cqZAp">
        <node concept="3clFbS" id="67SsWaEeEwX" role="3clFbx">
          <node concept="2MkqsV" id="67SsWaEeFu9" role="3cqZAp">
            <node concept="3cpWs3" id="67SsWaEeGfN" role="2MkJ7o">
              <node concept="Xl_RD" id="67SsWaEeGjb" role="3uHU7w">
                <property role="Xl_RC" value=" is expected" />
              </node>
              <node concept="3cpWs3" id="67SsWaEeFEP" role="3uHU7B">
                <node concept="Xl_RD" id="67SsWaEeFuo" role="3uHU7B">
                  <property role="Xl_RC" value="an instance of " />
                </node>
                <node concept="2OqwBi" id="67SsWaEeFOv" role="3uHU7w">
                  <node concept="3TUQnm" id="67SsWaEeFF7" role="2Oq$k0">
                    <ref role="3TV0OU" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
                  </node>
                  <node concept="3TrcHB" id="67SsWaEeIeC" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1YBJjd" id="67SsWaEeGy4" role="2OEOjV">
              <ref role="1YBMHb" node="67SsWaEdTGQ" resolve="typeTerm" />
            </node>
          </node>
          <node concept="3clFbH" id="67SsWaEeGIS" role="3cqZAp" />
        </node>
        <node concept="3fqX7Q" id="67SsWaEeFqc" role="3clFbw">
          <node concept="2OqwBi" id="67SsWaEeFqe" role="3fr31v">
            <node concept="2OqwBi" id="67SsWaEeFqf" role="2Oq$k0">
              <node concept="1YBJjd" id="67SsWaEeFqg" role="2Oq$k0">
                <ref role="1YBMHb" node="67SsWaEdTGQ" resolve="typeTerm" />
              </node>
              <node concept="3TrEf2" id="67SsWaEeFqh" role="2OqNvi">
                <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" resolve="root" />
              </node>
            </node>
            <node concept="1mIQ4w" id="67SsWaEeFqi" role="2OqNvi">
              <node concept="chp4Y" id="67SsWaEeFqj" role="cj9EA">
                <ref role="cht4Q" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3eNFk2" id="67SsWaEeG_m" role="3eNLev">
          <node concept="3clFbS" id="67SsWaEeG_o" role="3eOfB_">
            <node concept="3cpWs8" id="67SsWaEfmC5" role="3cqZAp">
              <node concept="3cpWsn" id="67SsWaEfmC6" role="3cpWs9">
                <property role="TrG5h" value="msg" />
                <node concept="17QB3L" id="67SsWaEfmC4" role="1tU5fm" />
                <node concept="2YIFZM" id="67SsWaEfmC7" role="33vP2m">
                  <ref role="37wK5l" to="hy7p:67SsWaEdYHz" resolve="validateWithTemplate" />
                  <ref role="1Pybhc" to="hy7p:2N2MQGCJu8I" resolve="TypeTermUtil" />
                  <node concept="1PxgMI" id="67SsWaEfmC8" role="37wK5m">
                    <ref role="1m5ApE" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
                    <node concept="2OqwBi" id="67SsWaEfmC9" role="1m5AlR">
                      <node concept="1YBJjd" id="67SsWaEfmCa" role="2Oq$k0">
                        <ref role="1YBMHb" node="67SsWaEdTGQ" resolve="typeTerm" />
                      </node>
                      <node concept="3TrEf2" id="67SsWaEfmCb" role="2OqNvi">
                        <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" resolve="root" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="67SsWaEfmCc" role="37wK5m">
                    <node concept="2OqwBi" id="67SsWaEfmCd" role="2Oq$k0">
                      <node concept="1YBJjd" id="67SsWaEfmCe" role="2Oq$k0">
                        <ref role="1YBMHb" node="67SsWaEdTGQ" resolve="typeTerm" />
                      </node>
                      <node concept="3TrEf2" id="67SsWaEfmCf" role="2OqNvi">
                        <ref role="3Tt5mk" to="wq2x:2CEQDIDTdBu" resolve="template" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="67SsWaEfmCg" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:1pPth$m5BbA" resolve="term" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="67SsWaEeD_k" role="3cqZAp">
              <node concept="3clFbS" id="67SsWaEeD_m" role="3clFbx">
                <node concept="2MkqsV" id="67SsWaEeIhW" role="3cqZAp">
                  <node concept="37vLTw" id="67SsWaEfncz" role="2MkJ7o">
                    <ref role="3cqZAo" node="67SsWaEfmC6" resolve="msg" />
                  </node>
                  <node concept="1YBJjd" id="67SsWaEeIyz" role="2OEOjV">
                    <ref role="1YBMHb" node="67SsWaEdTGQ" resolve="typeTerm" />
                  </node>
                </node>
                <node concept="3clFbH" id="67SsWaEeIzu" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="67SsWaEfn77" role="3clFbw">
                <node concept="10Nm6u" id="67SsWaEfn7e" role="3uHU7w" />
                <node concept="37vLTw" id="67SsWaEfmYo" role="3uHU7B">
                  <ref role="3cqZAo" node="67SsWaEfmC6" resolve="msg" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="67SsWaEeBK6" role="3eO9$A">
            <node concept="2OqwBi" id="67SsWaEeBog" role="2Oq$k0">
              <node concept="1YBJjd" id="67SsWaEeBlA" role="2Oq$k0">
                <ref role="1YBMHb" node="67SsWaEdTGQ" resolve="typeTerm" />
              </node>
              <node concept="3TrEf2" id="67SsWaEeByV" role="2OqNvi">
                <ref role="3Tt5mk" to="wq2x:2CEQDIDTdBu" resolve="template" />
              </node>
            </node>
            <node concept="3x8VRR" id="67SsWaEeC2w" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="67SsWaEdTGQ" role="1YuTPh">
      <property role="TrG5h" value="typeTerm" />
      <ref role="1YaFvo" to="wq2x:2CEQDIDRX6M" resolve="TypeTermExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="7feMCq_1rI_">
    <property role="TrG5h" value="typeof_CodeBlock" />
    <property role="3GE5qa" value="" />
    <node concept="3clFbS" id="7feMCq_1rIA" role="18ibNy">
      <node concept="3cpWs8" id="7feMCq_2cHx" role="3cqZAp">
        <node concept="3cpWsn" id="7feMCq_2cHy" role="3cpWs9">
          <property role="TrG5h" value="lastStatement" />
          <node concept="3Tqbb2" id="7feMCq_2cHv" role="1tU5fm">
            <ref role="ehGHo" to="tpee:fzclF8l" resolve="Statement" />
          </node>
          <node concept="2OqwBi" id="7feMCq_2cHz" role="33vP2m">
            <node concept="1YBJjd" id="7feMCq_2cH$" role="2Oq$k0">
              <ref role="1YBMHb" node="7feMCq_1rIC" resolve="codeBlock" />
            </node>
            <node concept="2qgKlT" id="7feMCq_2cH_" role="2OqNvi">
              <ref role="37wK5l" to="tpek:i2fhS7A" resolve="getLastStatement" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="7feMCq_2cME" role="3cqZAp">
        <node concept="3clFbS" id="7feMCq_2cMG" role="3clFbx">
          <node concept="1ZobV4" id="7feMCq_1s5Y" role="3cqZAp">
            <node concept="mw_s8" id="7feMCq_1s8h" role="1ZfhKB">
              <node concept="2OqwBi" id="7feMCq_1sbC" role="mwGJk">
                <node concept="1YBJjd" id="7feMCq_1s8f" role="2Oq$k0">
                  <ref role="1YBMHb" node="7feMCq_1rIC" resolve="codeBlock" />
                </node>
                <node concept="2qgKlT" id="7feMCq_1sjh" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:i2fhBNC" resolve="getExpectedRetType" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="7feMCq_1s61" role="1ZfhK$">
              <node concept="1Z2H0r" id="7feMCq_1rII" role="mwGJk">
                <node concept="2OqwBi" id="7feMCq_2dkE" role="1Z2MuG">
                  <node concept="1PxgMI" id="7feMCq_2dfm" role="2Oq$k0">
                    <ref role="1m5ApE" to="tpee:fzclF8j" resolve="ExpressionStatement" />
                    <node concept="37vLTw" id="7feMCq_2cHA" role="1m5AlR">
                      <ref role="3cqZAo" node="7feMCq_2cHy" resolve="lastStatement" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="7feMCq_2d$e" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzclF8k" resolve="expression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1hX44vMN_yD" role="3cqZAp" />
        </node>
        <node concept="2OqwBi" id="7feMCq_2cSa" role="3clFbw">
          <node concept="37vLTw" id="7feMCq_2cPl" role="2Oq$k0">
            <ref role="3cqZAo" node="7feMCq_2cHy" resolve="lastStatement" />
          </node>
          <node concept="1mIQ4w" id="7feMCq_2d36" role="2OqNvi">
            <node concept="chp4Y" id="7feMCq_2d3p" role="cj9EA">
              <ref role="cht4Q" to="tpee:fzclF8j" resolve="ExpressionStatement" />
            </node>
          </node>
        </node>
        <node concept="3eNFk2" id="1hX44vMNIoL" role="3eNLev">
          <node concept="3clFbS" id="1hX44vMNIoM" role="3eOfB_">
            <node concept="2MkqsV" id="1hX44vMNIoP" role="3cqZAp">
              <node concept="Xl_RD" id="1hX44vMNIoQ" role="2MkJ7o">
                <property role="Xl_RC" value="value expected" />
              </node>
              <node concept="1YBJjd" id="1hX44vMNIoR" role="2OEOjV">
                <ref role="1YBMHb" node="7feMCq_1rIC" resolve="codeBlock" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="1hX44vMNM6t" role="3eO9$A">
            <node concept="2OqwBi" id="1hX44vMNM6v" role="3fr31v">
              <node concept="2OqwBi" id="1hX44vMNM6w" role="2Oq$k0">
                <node concept="1YBJjd" id="1hX44vMNM6x" role="2Oq$k0">
                  <ref role="1YBMHb" node="7feMCq_1rIC" resolve="codeBlock" />
                </node>
                <node concept="2qgKlT" id="1hX44vMNM6y" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:i2fhBNC" resolve="getExpectedRetType" />
                </node>
              </node>
              <node concept="1mIQ4w" id="1hX44vMNM6z" role="2OqNvi">
                <node concept="chp4Y" id="1hX44vMNM6$" role="cj9EA">
                  <ref role="cht4Q" to="tpee:fzcqZ_H" resolve="VoidType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7feMCq_1rIC" role="1YuTPh">
      <property role="TrG5h" value="codeBlock" />
      <ref role="1YaFvo" to="wq2x:1hX44vMFoce" resolve="CodeBlock" />
    </node>
  </node>
  <node concept="18kY7G" id="2_NfR5wjCgJ">
    <property role="TrG5h" value="check_Fragment" />
    <property role="3GE5qa" value="rule" />
    <node concept="3clFbS" id="2_NfR5wjCgK" role="18ibNy">
      <node concept="2Mj0R9" id="2_NfR5wjCgQ" role="3cqZAp">
        <node concept="2dkUwp" id="2_NfR5wjG0v" role="2MkoU_">
          <node concept="3cmrfG" id="2_NfR5wjG2w" role="3uHU7w">
            <property role="3cmrfH" value="1" />
          </node>
          <node concept="2OqwBi" id="2_NfR5wjD5u" role="3uHU7B">
            <node concept="2OqwBi" id="2_NfR5wjCkx" role="2Oq$k0">
              <node concept="1YBJjd" id="2_NfR5wjCha" role="2Oq$k0">
                <ref role="1YBMHb" node="2_NfR5wjCgM" resolve="fragment" />
              </node>
              <node concept="3Tsc0h" id="2_NfR5wjCrh" role="2OqNvi">
                <ref role="3TtcxE" to="wq2x:1ffsG7bIxDv" resolve="body" />
              </node>
            </node>
            <node concept="34oBXx" id="2_NfR5wjEXY" role="2OqNvi" />
          </node>
        </node>
        <node concept="Xl_RD" id="2_NfR5wjG4R" role="2MkJ7o">
          <property role="Xl_RC" value="alternation is not supported for fragment" />
        </node>
        <node concept="1YBJjd" id="2_NfR5wjG9K" role="2OEOjV">
          <ref role="1YBMHb" node="2_NfR5wjCgM" resolve="fragment" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2_NfR5wjCgM" role="1YuTPh">
      <property role="TrG5h" value="fragment" />
      <ref role="1YaFvo" to="wq2x:6wQEDbCHt15" resolve="Fragment" />
    </node>
  </node>
  <node concept="18kY7G" id="2_NfR5wnk6G">
    <property role="TrG5h" value="check_Rule" />
    <property role="3GE5qa" value="rule" />
    <node concept="3clFbS" id="2_NfR5wnk6H" role="18ibNy">
      <node concept="2Mj0R9" id="2_NfR5wnk$d" role="3cqZAp">
        <node concept="22lmx$" id="2_NfR5wnp$G" role="2MkoU_">
          <node concept="2dkUwp" id="2_NfR5wnk$e" role="3uHU7w">
            <node concept="3cmrfG" id="2_NfR5wnk$f" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="2_NfR5wnk$g" role="3uHU7B">
              <node concept="2OqwBi" id="2_NfR5wnk$h" role="2Oq$k0">
                <node concept="1YBJjd" id="2_NfR5wnkCZ" role="2Oq$k0">
                  <ref role="1YBMHb" node="2_NfR5wnk6J" resolve="rule" />
                </node>
                <node concept="3Tsc0h" id="2_NfR5wnk$j" role="2OqNvi">
                  <ref role="3TtcxE" to="wq2x:1ffsG7bIxDv" resolve="body" />
                </node>
              </node>
              <node concept="34oBXx" id="2_NfR5wnk$k" role="2OqNvi" />
            </node>
          </node>
          <node concept="2OqwBi" id="2_NfR5wnpD5" role="3uHU7B">
            <node concept="2OqwBi" id="2_NfR5wnpD6" role="2Oq$k0">
              <node concept="1YBJjd" id="2_NfR5wnpD7" role="2Oq$k0">
                <ref role="1YBMHb" node="2_NfR5wnk6J" resolve="rule" />
              </node>
              <node concept="3TrEf2" id="2_NfR5wnpD8" role="2OqNvi">
                <ref role="3Tt5mk" to="wq2x:6wQEDbCCPyR" resolve="input" />
              </node>
            </node>
            <node concept="3x8VRR" id="2_NfR5wnpJD" role="2OqNvi" />
          </node>
        </node>
        <node concept="Xl_RD" id="2_NfR5wnk$l" role="2MkJ7o">
          <property role="Xl_RC" value="alternation is not supported for rule with no input" />
        </node>
        <node concept="1YBJjd" id="2_NfR5wnkGc" role="2OEOjV">
          <ref role="1YBMHb" node="2_NfR5wnk6J" resolve="rule" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2_NfR5wnk6J" role="1YuTPh">
      <property role="TrG5h" value="rule" />
      <ref role="1YaFvo" to="wq2x:7eGEHDlgPU4" resolve="Rule" />
    </node>
  </node>
  <node concept="1YbPZF" id="1hX44vMIYLv">
    <property role="TrG5h" value="typeof_TypeNodeExpression" />
    <property role="3GE5qa" value="type.code" />
    <node concept="3clFbS" id="1hX44vMIYLw" role="18ibNy">
      <node concept="1Z5TYs" id="1hX44vMIYXY" role="3cqZAp">
        <node concept="mw_s8" id="1hX44vMIYYi" role="1ZfhKB">
          <node concept="2c44tf" id="1hX44vMIYYe" role="mwGJk">
            <node concept="3Tqbb2" id="1hX44vMIYZh" role="2c44tc">
              <node concept="2c44tb" id="1hX44vMIZ3v" role="lGtFl">
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                <property role="2qtEX8" value="concept" />
                <node concept="2OqwBi" id="1hX44vMIZTI" role="2c44t1">
                  <node concept="2OqwBi" id="1hX44vMIZbP" role="2Oq$k0">
                    <node concept="1YBJjd" id="1hX44vMIZ4T" role="2Oq$k0">
                      <ref role="1YBMHb" node="1hX44vMIYLy" resolve="tne" />
                    </node>
                    <node concept="3TrEf2" id="1hX44vMIZDh" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:1hX44vMIQ6F" resolve="declaration" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="1hX44vMJ07f" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:5MFgGQnlLNJ" resolve="conceptDeclaraton" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1hX44vMIYY1" role="1ZfhK$">
          <node concept="1Z2H0r" id="1hX44vMIYLG" role="mwGJk">
            <node concept="1YBJjd" id="1hX44vMIYNs" role="1Z2MuG">
              <ref role="1YBMHb" node="1hX44vMIYLy" resolve="tne" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1hX44vMIYLy" role="1YuTPh">
      <property role="TrG5h" value="tne" />
      <ref role="1YaFvo" to="wq2x:1hX44vMEjQr" resolve="TypeNodeExpression" />
    </node>
  </node>
  <node concept="18kY7G" id="1hX44vMMkUy">
    <property role="TrG5h" value="check_CodeBlock" />
    <node concept="3clFbS" id="1hX44vMMkUz" role="18ibNy">
      <node concept="3clFbF" id="1hX44vMMHZB" role="3cqZAp">
        <node concept="2OqwBi" id="1hX44vMMK5d" role="3clFbG">
          <node concept="2OqwBi" id="1hX44vMMHZD" role="2Oq$k0">
            <node concept="1YBJjd" id="1hX44vMMHZE" role="2Oq$k0">
              <ref role="1YBMHb" node="1hX44vMMkU_" resolve="codeBlock" />
            </node>
            <node concept="2Rf3mk" id="1hX44vMMHZF" role="2OqNvi">
              <node concept="1xMEDy" id="1hX44vMMHZG" role="1xVPHs">
                <node concept="chp4Y" id="1hX44vMMHZH" role="ri$Ld">
                  <ref role="cht4Q" to="tpee:fzcpWvY" resolve="ReturnStatement" />
                </node>
              </node>
              <node concept="hTh3S" id="1hX44vMMHZI" role="1xVPHs">
                <node concept="3gn64h" id="1hX44vMMHZJ" role="hTh3Z">
                  <ref role="3gnhBz" to="tpee:htgVS9_" resolve="IStatementListContainer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2es0OD" id="1hX44vMMOZZ" role="2OqNvi">
            <node concept="1bVj0M" id="1hX44vMMP01" role="23t8la">
              <node concept="3clFbS" id="1hX44vMMP02" role="1bW5cS">
                <node concept="2MkqsV" id="1hX44vMMP4S" role="3cqZAp">
                  <node concept="37vLTw" id="1hX44vMMPad" role="2OEOjV">
                    <ref role="3cqZAo" node="1hX44vMMP03" resolve="it" />
                  </node>
                  <node concept="Xl_RD" id="1hX44vMMP7z" role="2MkJ7o">
                    <property role="Xl_RC" value="return statement is not allowed here" />
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="1hX44vMMP03" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="1hX44vMMP04" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1hX44vMMkU_" role="1YuTPh">
      <property role="TrG5h" value="codeBlock" />
      <ref role="1YaFvo" to="wq2x:1hX44vMFoce" resolve="CodeBlock" />
    </node>
  </node>
  <node concept="1YbPZF" id="18kNIl0FAIT">
    <property role="TrG5h" value="typeof_LogicalSubstitutionCreator" />
    <property role="3GE5qa" value="constraint.typespecific" />
    <node concept="3clFbS" id="18kNIl0FAIU" role="18ibNy">
      <node concept="1Z5TYs" id="18kNIl0FBY5" role="3cqZAp">
        <node concept="mw_s8" id="18kNIl0FBYp" role="1ZfhKB">
          <node concept="2ShNRf" id="18kNIl0FBYl" role="mwGJk">
            <node concept="3zrR0B" id="18kNIl0FC5O" role="2ShVmc">
              <node concept="3Tqbb2" id="18kNIl0FC5Q" role="3zrR0E">
                <ref role="ehGHo" to="wq2x:18kNIl0F2$k" resolve="LogicalSubstitutionType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="18kNIl0FBY8" role="1ZfhK$">
          <node concept="1Z2H0r" id="18kNIl0FAJ6" role="mwGJk">
            <node concept="1YBJjd" id="18kNIl0FAKQ" role="1Z2MuG">
              <ref role="1YBMHb" node="18kNIl0FAIW" resolve="lsc" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="18kNIl0FAIW" role="1YuTPh">
      <property role="TrG5h" value="lsc" />
      <ref role="1YaFvo" to="wq2x:18kNIl0F1t4" resolve="LogicalSubstitutionCreator" />
    </node>
  </node>
  <node concept="2sgARr" id="18kNIl0HEHx">
    <property role="3GE5qa" value="constraint.typespecific" />
    <property role="TrG5h" value="substitution_subtypeOf_runtimeClass" />
    <node concept="3clFbS" id="18kNIl0HEHy" role="2sgrp5">
      <node concept="3clFbF" id="18kNIl0HEOh" role="3cqZAp">
        <node concept="2c44tf" id="18kNIl0HEOf" role="3clFbG">
          <node concept="3uibUv" id="18kNIl0HEPg" role="2c44tc">
            <ref role="3uigEE" to="nz6g:18kNIl0r2ay" resolve="LogicalSubstitution" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="18kNIl0HEH$" role="1YuTPh">
      <property role="TrG5h" value="lst" />
      <ref role="1YaFvo" to="wq2x:18kNIl0F2$k" resolve="LogicalSubstitutionType" />
    </node>
  </node>
  <node concept="1YbPZF" id="7IysFeA3vjt">
    <property role="TrG5h" value="typeof_TypeDeclarationParameterReference" />
    <property role="3GE5qa" value="type.decl" />
    <node concept="3clFbS" id="7IysFeA3vju" role="18ibNy">
      <node concept="1Z5TYs" id="7IysFeA3vv7" role="3cqZAp">
        <node concept="mw_s8" id="7IysFeA3vv_" role="1ZfhKB">
          <node concept="2OqwBi" id="7IysFeA3w5A" role="mwGJk">
            <node concept="2OqwBi" id="7IysFeA3vAO" role="2Oq$k0">
              <node concept="1YBJjd" id="7IysFeA3vvz" role="2Oq$k0">
                <ref role="1YBMHb" node="7IysFeA3vjw" resolve="tdpr" />
              </node>
              <node concept="3TrEf2" id="7IysFeA3vL8" role="2OqNvi">
                <ref role="3Tt5mk" to="wq2x:7IysFeA1uTj" resolve="parameter" />
              </node>
            </node>
            <node concept="3TrEf2" id="7IysFeA3wlo" role="2OqNvi">
              <ref role="3Tt5mk" to="wq2x:7IysFeA0ybI" resolve="type" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="7IysFeA3vva" role="1ZfhK$">
          <node concept="1Z2H0r" id="7IysFeA3vj$" role="mwGJk">
            <node concept="1YBJjd" id="7IysFeA3vot" role="1Z2MuG">
              <ref role="1YBMHb" node="7IysFeA3vjw" resolve="tdpr" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7IysFeA3vjw" role="1YuTPh">
      <property role="TrG5h" value="tdpr" />
      <ref role="1YaFvo" to="wq2x:7IysFeA1uPa" resolve="TypeDeclarationParameterReference" />
    </node>
  </node>
  <node concept="1YbPZF" id="7IysFeA7WUT">
    <property role="TrG5h" value="typeof_TypeConceptExpression" />
    <property role="3GE5qa" value="type.code" />
    <node concept="3clFbS" id="7IysFeA7WUU" role="18ibNy">
      <node concept="3cpWs8" id="7IysFeA7YtX" role="3cqZAp">
        <node concept="3cpWsn" id="7IysFeA7YtY" role="3cpWs9">
          <property role="TrG5h" value="tcd" />
          <node concept="3Tqbb2" id="7IysFeA7YtT" role="1tU5fm">
            <ref role="ehGHo" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
          </node>
          <node concept="2OqwBi" id="7IysFeA7YtZ" role="33vP2m">
            <node concept="1YBJjd" id="7IysFeA7Yu0" role="2Oq$k0">
              <ref role="1YBMHb" node="7IysFeA7WUW" resolve="tce" />
            </node>
            <node concept="2Xjw5R" id="7IysFeA7Yu1" role="2OqNvi">
              <node concept="1xMEDy" id="7IysFeA7Yu2" role="1xVPHs">
                <node concept="chp4Y" id="7IysFeA7Yu3" role="ri$Ld">
                  <ref role="cht4Q" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
                </node>
              </node>
              <node concept="1xIGOp" id="7IysFeA7Yu4" role="1xVPHs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2Mj0R9" id="7IysFeA7Zcb" role="3cqZAp">
        <node concept="2OqwBi" id="7IysFeA7ZkQ" role="2MkoU_">
          <node concept="37vLTw" id="7IysFeA7Zcv" role="2Oq$k0">
            <ref role="3cqZAo" node="7IysFeA7YtY" resolve="tcd" />
          </node>
          <node concept="3x8VRR" id="7IysFeA7Z_I" role="2OqNvi" />
        </node>
        <node concept="Xl_RD" id="7IysFeA7ZBX" role="2MkJ7o">
          <property role="Xl_RC" value="not applicable here" />
        </node>
        <node concept="1YBJjd" id="7IysFeA7ZEJ" role="2OEOjV">
          <ref role="1YBMHb" node="7IysFeA7WUW" resolve="tce" />
        </node>
      </node>
      <node concept="3clFbJ" id="7IysFeA7YwW" role="3cqZAp">
        <node concept="3clFbS" id="7IysFeA7YwY" role="3clFbx">
          <node concept="1Z5TYs" id="7IysFeA7X6C" role="3cqZAp">
            <node concept="mw_s8" id="7IysFeA7X6F" role="1ZfhK$">
              <node concept="1Z2H0r" id="7IysFeA7WV6" role="mwGJk">
                <node concept="1YBJjd" id="7IysFeA7WWQ" role="1Z2MuG">
                  <ref role="1YBMHb" node="7IysFeA7WUW" resolve="tce" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="7IysFeA7XSJ" role="1ZfhKB">
              <node concept="2c44tf" id="7IysFeA7XSF" role="mwGJk">
                <node concept="3bZ5Sz" id="7IysFeA7XT5" role="2c44tc">
                  <ref role="3bZ5Sy" to="tpck:gw2VY9q" resolve="BaseConcept" />
                  <node concept="2c44tb" id="7IysFeA7XUV" role="lGtFl">
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/6677504323281689838/6677504323281689839" />
                    <property role="2qtEX8" value="conceptDeclaraton" />
                    <node concept="2OqwBi" id="7IysFeA80Fx" role="2c44t1">
                      <node concept="37vLTw" id="7IysFeA80zR" role="2Oq$k0">
                        <ref role="3cqZAo" node="7IysFeA7YtY" resolve="tcd" />
                      </node>
                      <node concept="3TrEf2" id="7IysFeA80Rk" role="2OqNvi">
                        <ref role="3Tt5mk" to="wq2x:5MFgGQnlLNJ" resolve="conceptDeclaraton" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="7IysFeA7YME" role="3clFbw">
          <node concept="37vLTw" id="7IysFeA7Yxt" role="2Oq$k0">
            <ref role="3cqZAo" node="7IysFeA7YtY" resolve="tcd" />
          </node>
          <node concept="3x8VRR" id="7IysFeA7Z3s" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7IysFeA7WUW" role="1YuTPh">
      <property role="TrG5h" value="tce" />
      <ref role="1YaFvo" to="wq2x:7IysFeA7WUr" resolve="TypeConceptExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="7IysFeA9bof">
    <property role="TrG5h" value="typeof_TypeLogicalExpression" />
    <property role="3GE5qa" value="type.code" />
    <node concept="3clFbS" id="7IysFeA9bog" role="18ibNy">
      <node concept="1Z5TYs" id="7IysFeA9bwM" role="3cqZAp">
        <node concept="mw_s8" id="7IysFeA9bxi" role="1ZfhKB">
          <node concept="2c44tf" id="7IysFeA9bxe" role="mwGJk">
            <node concept="26uTi9" id="7IysFeA9bxC" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="7IysFeA9bwP" role="1ZfhK$">
          <node concept="1Z2H0r" id="7IysFeA9bop" role="mwGJk">
            <node concept="1YBJjd" id="7IysFeA9bq9" role="1Z2MuG">
              <ref role="1YBMHb" node="7IysFeA9boi" resolve="tle" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7IysFeA9boi" role="1YuTPh">
      <property role="TrG5h" value="tle" />
      <ref role="1YaFvo" to="wq2x:7IysFeA99oR" resolve="TypeLogicalExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="3TnYLtqfmDB">
    <property role="TrG5h" value="typeof_ContextParameterReference" />
    <property role="3GE5qa" value="type.code.with" />
    <node concept="3clFbS" id="3TnYLtqfmDC" role="18ibNy">
      <node concept="1Z5TYs" id="3TnYLtqfmXq" role="3cqZAp">
        <node concept="mw_s8" id="3TnYLtqfmXG" role="1ZfhKB">
          <node concept="2OqwBi" id="3TnYLtqfnDq" role="mwGJk">
            <node concept="2OqwBi" id="3TnYLtqfn4i" role="2Oq$k0">
              <node concept="1YBJjd" id="3TnYLtqfmXE" role="2Oq$k0">
                <ref role="1YBMHb" node="3TnYLtqfmDE" resolve="cpr" />
              </node>
              <node concept="3TrEf2" id="3TnYLtqfnls" role="2OqNvi">
                <ref role="3Tt5mk" to="wq2x:3TnYLtqfh$T" resolve="parameter" />
              </node>
            </node>
            <node concept="3TrEf2" id="3TnYLtqfnUS" role="2OqNvi">
              <ref role="3Tt5mk" to="wq2x:3TnYLtqfhzO" resolve="type" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="3TnYLtqfmXt" role="1ZfhK$">
          <node concept="1Z2H0r" id="3TnYLtqfmIW" role="mwGJk">
            <node concept="1YBJjd" id="3TnYLtqfmNI" role="1Z2MuG">
              <ref role="1YBMHb" node="3TnYLtqfmDE" resolve="cpr" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3TnYLtqfmDE" role="1YuTPh">
      <property role="TrG5h" value="cpr" />
      <ref role="1YaFvo" to="wq2x:3TnYLtqfh$J" resolve="ContextParameterReference" />
    </node>
  </node>
</model>

