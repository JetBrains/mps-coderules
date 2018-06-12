<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:65f97255-4bb1-4783-acd6-a4ed5a1088e2(jetbrains.mps.typechecking.testlang.types)">
  <persistence version="9" />
  <languages>
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.typesystem2" version="14" />
    <use id="cba985fe-1e96-4f16-9f8d-b07434405d4f" name="jetbrains.mps.lang.smodel.types" version="0" />
    <use id="942985d5-7bcf-46ee-8b79-7b662eaebb4e" name="jetbrains.mps.dataform" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="1g4i" ref="r:102178da-67ba-49f6-ba73-eb29fa352fe7(jetbrains.mps.typechecking)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="qulx" ref="r:ec0979fb-ae37-4823-9eaa-8550d9f5c6fd(jetbrains.mps.typechecking.testlang.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="942985d5-7bcf-46ee-8b79-7b662eaebb4e" name="jetbrains.mps.dataform">
      <concept id="861509610434242029" name="jetbrains.mps.dataform.structure.DataForm" flags="ng" index="ns1u0">
        <reference id="861509610434243078" name="decl" index="ns1xF" />
        <child id="861509610434243076" name="override" index="ns1xD" />
      </concept>
      <concept id="861509610434243104" name="jetbrains.mps.dataform.structure.DataFormTable" flags="ng" index="ns1xd">
        <child id="861509610434243105" name="contents" index="ns1xc" />
      </concept>
      <concept id="861509610434243081" name="jetbrains.mps.dataform.structure.DataFormDeclaration" flags="ng" index="ns1x$">
        <child id="861509610434243084" name="template" index="ns1xx" />
      </concept>
      <concept id="861509610434276453" name="jetbrains.mps.dataform.structure.DataFormFeature" flags="ng" index="nspS8">
        <property id="861509610434276456" name="final" index="nspS5" />
      </concept>
      <concept id="861509610434276450" name="jetbrains.mps.dataform.structure.DataFormTemplate" flags="ng" index="nspSf">
        <child id="861509610434276451" name="feature" index="nspSe" />
      </concept>
      <concept id="861509610434294982" name="jetbrains.mps.dataform.structure.ValueFeature" flags="ng" index="nssqF" />
      <concept id="861509610434435669" name="jetbrains.mps.dataform.structure.DataFormFeatureOverride" flags="ng" index="nsMwS">
        <reference id="861509610434435672" name="feature" index="nsMwP" />
        <child id="861509610434435670" name="getter" index="nsMwV" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="8169506320648805904" name="jetbrains.mps.logic.structure.LogicalVariableDeclarationContainer" flags="ng" index="29MRiA">
        <child id="3063948360254832884" name="declaration" index="3XD1gS" />
      </concept>
      <concept id="8829335963593820278" name="jetbrains.mps.logic.structure.LogicalVariable" flags="ng" index="a7P8L">
        <reference id="8829335963593822893" name="declaration" index="a7OzE" />
      </concept>
      <concept id="8829335963591572611" name="jetbrains.mps.logic.structure.LogicalVariableDeclaration" flags="ng" index="aZer4" />
      <concept id="6856711987710888499" name="jetbrains.mps.logic.structure.TreeFormLiteral" flags="ng" index="Hz6ka">
        <child id="6856711987710888500" name="root" index="Hz6kd" />
      </concept>
      <concept id="7571593955706137573" name="jetbrains.mps.logic.structure.Value" flags="ng" index="1oi5XN">
        <property id="7571593955706137638" name="value" index="1oi5yK" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="cba985fe-1e96-4f16-9f8d-b07434405d4f" name="jetbrains.mps.lang.smodel.types">
      <concept id="7345257067587627589" name="jetbrains.mps.lang.smodel.types.structure.SNodeTypeOperation" flags="ng" index="2W$R8B" />
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.typesystem2">
      <concept id="8456919074560454386" name="jetbrains.mps.lang.typesystem2.structure.ParameterContainer" flags="ng" index="0eUR_">
        <child id="8456919074560454898" name="parameter" index="0eVf_" />
      </concept>
      <concept id="7871500063866331595" name="jetbrains.mps.lang.typesystem2.structure.Query" flags="ng" index="92CTh">
        <child id="7871500063866331596" name="queryStage" index="92CTm" />
        <child id="3026409000513569515" name="queryKind" index="2_lZgo" />
      </concept>
      <concept id="9035818301008609703" name="jetbrains.mps.lang.typesystem2.structure.QueryTemplate" flags="ng" index="2bWyPT">
        <child id="7871500063838282362" name="code" index="fHCRw" />
      </concept>
      <concept id="4992889260816483106" name="jetbrains.mps.lang.typesystem2.structure.Condition" flags="ng" index="cBwPQ" />
      <concept id="6958395084019752" name="jetbrains.mps.lang.typesystem2.structure.SNodeSetTypeOperation" flags="ng" index="2ra22R">
        <child id="6958395084020241" name="typeExpr" index="2ra2ae" />
      </concept>
      <concept id="6958395097955138" name="jetbrains.mps.lang.typesystem2.structure.SNodeReportOperation" flags="ng" index="2s7oft">
        <property id="6958395097963305" name="kind" index="2s7ueQ" />
        <child id="6958395097963208" name="text" index="2s7u9n" />
      </concept>
      <concept id="6691972578451976398" name="jetbrains.mps.lang.typesystem2.structure.RuleInputSpecification" flags="ng" index="2t___k">
        <reference id="6691972578451990912" name="applicableConcept" index="2t_S0q" />
        <child id="6691972578451986151" name="input" index="2t_VXX" />
      </concept>
      <concept id="8335224865066015764" name="jetbrains.mps.lang.typesystem2.structure.Handler" flags="ng" index="AVZre">
        <child id="1980609059185345194" name="constraint" index="8PkJo" />
        <child id="3575255234175157601" name="template" index="1nK1Vg" />
      </concept>
      <concept id="6856711987714624232" name="jetbrains.mps.lang.typesystem2.structure.ExpressionItem" flags="ng" index="HKQnh">
        <child id="6856711987714624233" name="code" index="HKQng" />
      </concept>
      <concept id="1302893676238672057" name="jetbrains.mps.lang.typesystem2.structure.ExpandPseudoConstraint" flags="ng" index="1imXTs">
        <child id="1302893676238674275" name="logical" index="1imXu6" />
        <child id="1302893676238672106" name="origin" index="1imXSf" />
      </concept>
      <concept id="3575255234196628445" name="jetbrains.mps.lang.typesystem2.structure.RequireStatement" flags="ng" index="1mebxG">
        <child id="3575255234196628696" name="node" index="1mebXD" />
      </concept>
      <concept id="3575255234174969639" name="jetbrains.mps.lang.typesystem2.structure.ConstraintRule" flags="ng" index="1nLNMm">
        <child id="8456919074565751439" name="parameter" index="0UC6o" />
        <child id="3575255234174969658" name="head" index="1nLNMb" />
        <child id="3575255234174969660" name="body" index="1nLNMd" />
      </concept>
      <concept id="3575255234174969615" name="jetbrains.mps.lang.typesystem2.structure.RuleTemplate" flags="ng" index="1nLNMY">
        <child id="3575255234175001641" name="condition" index="1nLFYo" />
        <child id="3575255234174969633" name="input" index="1nLNMg" />
        <child id="3575255234174969628" name="code" index="1nLNMH" />
      </concept>
      <concept id="3575255234174969664" name="jetbrains.mps.lang.typesystem2.structure.ConstraintRuleStatement" flags="ng" index="1nLNNL">
        <child id="3575255234174969665" name="rule" index="1nLNNK" />
      </concept>
      <concept id="5372587443968979218" name="jetbrains.mps.lang.typesystem2.structure.ExpressionConstraint" flags="ng" index="3wWvb2">
        <child id="5372587443968983820" name="expression" index="3wWo3s" />
      </concept>
      <concept id="1878265754077060950" name="jetbrains.mps.lang.typesystem2.structure.ConstraintParameterDeclaration" flags="ng" index="1zAUYm" />
      <concept id="7368070394769089081" name="jetbrains.mps.lang.typesystem2.structure.RuleInputDeclaration" flags="ng" index="3A20r5" />
      <concept id="7368070394769139970" name="jetbrains.mps.lang.typesystem2.structure.RuleInputReference" flags="ng" index="3A2sRY">
        <reference id="7368070394769213644" name="declaration" index="3A2yKK" />
      </concept>
      <concept id="7368070394770780974" name="jetbrains.mps.lang.typesystem2.structure.UnifiesConstraint" flags="ng" index="3A8Hvi">
        <child id="7368070394770793930" name="value" index="3A8w4Q" />
        <child id="7368070394770793388" name="assignee" index="3A8wtg" />
      </concept>
      <concept id="7368070394766963750" name="jetbrains.mps.lang.typesystem2.structure.Head" flags="ng" index="3Aq93q">
        <property id="7368070394767443940" name="keep" index="3ArMco" />
      </concept>
      <concept id="7368070394766963523" name="jetbrains.mps.lang.typesystem2.structure.RuleComponent" flags="ng" index="3Aq9uZ">
        <child id="2316688792939037645" name="logic" index="3Ip0Jz" />
        <child id="965748826975413053" name="parameter" index="3Nuqhd" />
      </concept>
      <concept id="7368070394766966388" name="jetbrains.mps.lang.typesystem2.structure.Body" flags="ng" index="3Aq9E8" />
      <concept id="7368070394766978092" name="jetbrains.mps.lang.typesystem2.structure.EmitConstraintStatement" flags="ng" index="3Aqczg">
        <child id="7368070394767031348" name="constraint" index="3Aqpz8" />
      </concept>
      <concept id="7368070394767067636" name="jetbrains.mps.lang.typesystem2.structure.ConstraintDeclaration" flags="ng" index="3AqmO8">
        <child id="1878265754077059170" name="parameters" index="1zAUyy" />
      </concept>
      <concept id="7368070394767045637" name="jetbrains.mps.lang.typesystem2.structure.UserConstraint" flags="ng" index="3Aqt3T">
        <reference id="7368070394767091750" name="template" index="3AqCNq" />
        <child id="7368070394768117915" name="argument" index="3AunhB" />
      </concept>
      <concept id="1476354154047570702" name="jetbrains.mps.lang.typesystem2.structure.CodeBlock" flags="ng" index="3AO9d9">
        <child id="535508562359074271" name="code" index="16YjZG" />
      </concept>
      <concept id="8581119423153238082" name="jetbrains.mps.lang.typesystem2.structure.NodeAnchor" flags="ng" index="3BlFb$">
        <child id="8581119423153238083" name="node" index="3BlFb_" />
      </concept>
      <concept id="1877115349178398764" name="jetbrains.mps.lang.typesystem2.structure.EqualsConstraint" flags="ng" index="3GeI9q">
        <child id="1877115349178398815" name="right" index="3GeI8D" />
        <child id="1877115349178398813" name="left" index="3GeI8F" />
      </concept>
      <concept id="2316688792938826204" name="jetbrains.mps.lang.typesystem2.structure.ConstraintLogicalClause" flags="ng" index="3I6s7M">
        <child id="2316688792938826214" name="constraint" index="3I6s78" />
      </concept>
      <concept id="2316688792938825384" name="jetbrains.mps.lang.typesystem2.structure.LogicalClauseList" flags="ng" index="3I6sU6">
        <child id="2316688792938825385" name="clauses" index="3I6sU7" />
      </concept>
      <concept id="2316688792939428589" name="jetbrains.mps.lang.typesystem2.structure.TemplateLogicalClause" flags="ng" index="3IrJb3">
        <child id="2316688792939428590" name="code" index="3IrJb0" />
      </concept>
      <concept id="965748826975413063" name="jetbrains.mps.lang.typesystem2.structure.RulePartParameterDeclaration" flags="ng" index="3NuqgR" />
    </language>
  </registry>
  <node concept="AVZre" id="36tQV5Ao9p_">
    <property role="TrG5h" value="Foobar" />
    <node concept="1nLNMY" id="36tQV5Ao9qv" role="1nK1Vg">
      <property role="TrG5h" value="test" />
      <node concept="3clFbS" id="36tQV5Ao9qw" role="1nLNMH">
        <node concept="1mebxG" id="7lt0LtOVMbx" role="3cqZAp">
          <node concept="3A2sRY" id="7lt0LtOVMh4" role="1mebXD">
            <ref role="3A2yKK" node="36tQV5A_oxu" resolve="attr" />
          </node>
        </node>
        <node concept="3clFbH" id="oI9Yr_udY" role="3cqZAp" />
        <node concept="3clFbF" id="oI9Ys1dGH" role="3cqZAp">
          <node concept="2OqwBi" id="oI9Ys1fyg" role="3clFbG">
            <node concept="2OqwBi" id="oI9Ys1dU5" role="2Oq$k0">
              <node concept="3A2sRY" id="oI9Ys1dGF" role="2Oq$k0">
                <ref role="3A2yKK" node="36tQV5A_oxu" resolve="attr" />
              </node>
              <node concept="2W$R8B" id="oI9Ys1fiw" role="2OqNvi" />
            </node>
            <node concept="2ra22R" id="oI9Ys1gRH" role="2OqNvi">
              <node concept="10Nm6u" id="oI9Ys1gVp" role="2ra2ae" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="oI9Ys1jeT" role="3cqZAp" />
        <node concept="3clFbF" id="oI9Ys1Od2" role="3cqZAp">
          <node concept="2OqwBi" id="oI9Ys1OqS" role="3clFbG">
            <node concept="3A2sRY" id="oI9Ys1Od0" role="2Oq$k0">
              <ref role="3A2yKK" node="36tQV5A_oxu" resolve="attr" />
            </node>
            <node concept="2s7oft" id="oI9Ys27_Q" role="2OqNvi">
              <property role="2s7ueQ" value="error" />
              <node concept="Xl_RD" id="oI9Ys2j_x" role="2s7u9n">
                <property role="Xl_RC" value="blah" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="oI9Ys1O4g" role="3cqZAp" />
        <node concept="1nLNNL" id="oI9Ys1jmX" role="3cqZAp">
          <node concept="1nLNMm" id="oI9Ys1jmZ" role="1nLNNK">
            <node concept="3Aq9E8" id="1mdVbTSjMO6" role="1nLNMd">
              <node concept="3I6sU6" id="1mdVbTSjMO7" role="3Ip0Jz">
                <node concept="3I6s7M" id="1mdVbTSjMOr" role="3I6sU7">
                  <node concept="3Aqt3T" id="1mdVbTSjMOq" role="3I6s78">
                    <ref role="3AqCNq" node="36tQV5ADNk_" resolve="bar" />
                    <node concept="a7P8L" id="1mdVbTSjNcS" role="3AunhB">
                      <ref role="a7OzE" node="oI9Ys1juo" resolve="TTT" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="oI9Ys1jtA" role="1nLNMd">
              <node concept="3I6sU6" id="oI9Ys1jtB" role="3Ip0Jz">
                <node concept="3I6s7M" id="oI9Ys1jv2" role="3I6sU7">
                  <node concept="3A8Hvi" id="oI9Ys1juW" role="3I6s78">
                    <node concept="a7P8L" id="oI9Ys1jvc" role="3A8wtg">
                      <ref role="a7OzE" node="oI9Ys1juo" resolve="TTT" />
                    </node>
                    <node concept="ns1u0" id="JOGAOsVtsz" role="3A8w4Q">
                      <ref role="ns1xF" node="JOGAOsVt6y" resolve="Foo" />
                      <node concept="nsMwS" id="JOGAOsVts$" role="ns1xD">
                        <ref role="nsMwP" node="JOGAOsVt6$" resolve="bar" />
                        <node concept="Xl_RD" id="oI9Ys1jzA" role="nsMwV">
                          <property role="Xl_RC" value="foo" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="0eUR_" id="oI9Ys1jul" role="0UC6o">
              <node concept="3NuqgR" id="oI9Ys1jun" role="0eVf_">
                <node concept="aZer4" id="oI9Ys1juo" role="3XD1gS">
                  <property role="TrG5h" value="TTT" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="oI9Ys1dA9" role="3cqZAp" />
        <node concept="3cpWs8" id="36tQV5AKngS" role="3cqZAp">
          <node concept="3cpWsn" id="36tQV5AKngV" role="3cpWs9">
            <property role="TrG5h" value="str" />
            <node concept="17QB3L" id="36tQV5AKngQ" role="1tU5fm" />
            <node concept="Xl_RD" id="36tQV5AKnhT" role="33vP2m">
              <property role="Xl_RC" value="text" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="36tQV5AKHu1" role="3cqZAp">
          <node concept="3clFbS" id="36tQV5AKHu3" role="2LFqv$">
            <node concept="1nLNNL" id="36tQV5AB4mv" role="3cqZAp">
              <node concept="1nLNMm" id="36tQV5AB4mx" role="1nLNNK">
                <node concept="3Aq9E8" id="36tQV5ADNkx" role="1nLNMd">
                  <node concept="3I6sU6" id="36tQV5ADNky" role="3Ip0Jz">
                    <node concept="3IrJb3" id="36tQV5AKnfR" role="3I6sU7">
                      <node concept="3clFbS" id="36tQV5AKnfS" role="3IrJb0">
                        <node concept="3clFbJ" id="36tQV5AKnfV" role="3cqZAp">
                          <node concept="3eOSWO" id="36tQV5AKpat" role="3clFbw">
                            <node concept="3cmrfG" id="36tQV5AKpaw" role="3uHU7w">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="2OqwBi" id="36tQV5AKnEG" role="3uHU7B">
                              <node concept="37vLTw" id="36tQV5AKnlL" role="2Oq$k0">
                                <ref role="3cqZAo" node="36tQV5AKngV" resolve="str" />
                              </node>
                              <node concept="liA8E" id="36tQV5AKomS" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="36tQV5AKnfX" role="3clFbx">
                            <node concept="3Aqczg" id="36tQV5AKq9$" role="3cqZAp">
                              <node concept="3Aqt3T" id="36tQV5AKq9z" role="3Aqpz8">
                                <ref role="3AqCNq" node="36tQV5ADNk_" resolve="bar" />
                                <node concept="a7P8L" id="36tQV5AKqdA" role="3AunhB">
                                  <ref role="a7OzE" node="36tQV5ADNkj" resolve="AAA" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="36tQV5AKC84" role="3cqZAp">
                          <node concept="3clFbS" id="36tQV5AKC86" role="3clFbx">
                            <node concept="3Aqczg" id="36tQV5AKDC$" role="3cqZAp">
                              <node concept="3Aqt3T" id="36tQV5AKDCy" role="3Aqpz8">
                                <ref role="3AqCNq" node="36tQV5ADNk_" resolve="bar" />
                                <node concept="Hz6ka" id="36tQV5AKDCD" role="3AunhB">
                                  <node concept="1oi5XN" id="36tQV5AKDCJ" role="Hz6kd">
                                    <property role="1oi5yK" value="text" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="17R0WA" id="36tQV5AKDyy" role="3clFbw">
                            <node concept="Xl_RD" id="36tQV5AKD$G" role="3uHU7w">
                              <property role="Xl_RC" value="qux" />
                            </node>
                            <node concept="2OqwBi" id="36tQV5AKCmu" role="3uHU7B">
                              <node concept="3A2sRY" id="36tQV5AKCdT" role="2Oq$k0">
                                <ref role="3A2yKK" node="36tQV5A_oxu" resolve="attr" />
                              </node>
                              <node concept="3TrcHB" id="36tQV5AKCwc" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Aq93q" id="36tQV5ALYt4" role="1nLNMb">
                  <property role="3ArMco" value="true" />
                  <node concept="3I6sU6" id="36tQV5ALYt5" role="3Ip0Jz" />
                  <node concept="3NuqgR" id="36tQV5ALYyT" role="3Nuqhd">
                    <node concept="aZer4" id="36tQV5ALYyU" role="3XD1gS">
                      <property role="TrG5h" value="T" />
                    </node>
                  </node>
                </node>
                <node concept="3Aq93q" id="36tQV5ADNjn" role="1nLNMb">
                  <node concept="3I6sU6" id="36tQV5ADNjo" role="3Ip0Jz">
                    <node concept="3I6s7M" id="36tQV5ADNkc" role="3I6sU7">
                      <node concept="3Aqt3T" id="36tQV5ADNkb" role="3I6s78">
                        <ref role="3AqCNq" node="36tQV5ADNjJ" resolve="foo" />
                        <node concept="a7P8L" id="36tQV5ADNks" role="3AunhB">
                          <ref role="a7OzE" node="36tQV5ADNkj" resolve="AAA" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3NuqgR" id="36tQV5ADNki" role="3Nuqhd">
                    <node concept="aZer4" id="36tQV5ADNkj" role="3XD1gS">
                      <property role="TrG5h" value="AAA" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="36tQV5AKHu4" role="1Duv9x">
            <property role="TrG5h" value="nnn" />
            <node concept="3Tqbb2" id="36tQV5ALjuj" role="1tU5fm" />
          </node>
          <node concept="2OqwBi" id="36tQV5ALi6Z" role="1DdaDG">
            <node concept="3A2sRY" id="36tQV5ALhR8" role="2Oq$k0">
              <ref role="3A2yKK" node="36tQV5A_oxu" resolve="attr" />
            </node>
            <node concept="2Rf3mk" id="36tQV5ALir4" role="2OqNvi">
              <node concept="1xMEDy" id="36tQV5ALir6" role="1xVPHs">
                <node concept="chp4Y" id="36tQV5ALirO" role="ri$Ld">
                  <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1mdVbTRVYrd" role="3cqZAp" />
        <node concept="1nLNNL" id="oI9YrdiPZ" role="3cqZAp">
          <node concept="1nLNMm" id="oI9YrdiQ1" role="1nLNNK">
            <node concept="3Aq93q" id="1mdVbTRSfoK" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="1mdVbTRSfoL" role="3Ip0Jz" />
            </node>
            <node concept="3Aq9E8" id="oI9YrdiWh" role="1nLNMd">
              <node concept="3I6sU6" id="oI9YrdiWi" role="3Ip0Jz">
                <node concept="3I6s7M" id="oI9YrdiWm" role="3I6sU7">
                  <node concept="3wWvb2" id="oI9YrdiWl" role="3I6s78">
                    <node concept="2OqwBi" id="oI9Yrdjke" role="3wWo3s">
                      <node concept="2OqwBi" id="oI9YrDb4o" role="2Oq$k0">
                        <node concept="3A2sRY" id="oI9Yrdjdi" role="2Oq$k0">
                          <ref role="3A2yKK" node="36tQV5A_oxu" resolve="attr" />
                        </node>
                        <node concept="2W$R8B" id="oI9YrDcMe" role="2OqNvi" />
                      </node>
                      <node concept="2ra22R" id="oI9Yrdkza" role="2OqNvi">
                        <node concept="2c44tf" id="oI9Yrdkzx" role="2ra2ae">
                          <node concept="3Tqbb2" id="oI9Yrdk$G" role="2c44tc" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="oI9Ys2m_3" role="3I6sU7">
                  <node concept="3wWvb2" id="oI9Ys2m_1" role="3I6s78">
                    <node concept="2OqwBi" id="oI9Ys2nbg" role="3wWo3s">
                      <node concept="3A2sRY" id="oI9Ys2n4l" role="2Oq$k0">
                        <ref role="3A2yKK" node="36tQV5A_oxu" resolve="attr" />
                      </node>
                      <node concept="2s7oft" id="oI9Ys2ozS" role="2OqNvi">
                        <property role="2s7ueQ" value="error" />
                        <node concept="Xl_RD" id="oI9Ys2o$x" role="2s7u9n">
                          <property role="Xl_RC" value="blah" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="0eUR_" id="1mdVbTRSfoP" role="0UC6o">
              <node concept="3NuqgR" id="1mdVbTRSfoR" role="0eVf_">
                <node concept="aZer4" id="1mdVbTRSfoS" role="3XD1gS">
                  <property role="TrG5h" value="GGG" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="oI9YrdiJL" role="3cqZAp" />
      </node>
      <node concept="2t___k" id="36tQV5A_oxt" role="1nLNMg">
        <ref role="2t_S0q" to="tpck:4uZwTti3_$T" resolve="Attribute" />
        <node concept="3A20r5" id="36tQV5A_oxu" role="2t_VXX">
          <property role="TrG5h" value="attr" />
        </node>
      </node>
      <node concept="cBwPQ" id="36tQV5ALoUi" role="1nLFYo">
        <node concept="3clFbS" id="36tQV5ALoUj" role="16YjZG">
          <node concept="3clFbF" id="36tQV5ALp0k" role="3cqZAp">
            <node concept="2OqwBi" id="36tQV5ALp8U" role="3clFbG">
              <node concept="3A2sRY" id="36tQV5ALp0j" role="2Oq$k0">
                <ref role="3A2yKK" node="36tQV5A_oxu" resolve="attr" />
              </node>
              <node concept="3x8VRR" id="36tQV5ALqz2" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3AqmO8" id="3IIf9O_JfC9" role="8PkJo">
      <property role="TrG5h" value="main" />
    </node>
    <node concept="3AqmO8" id="36tQV5ADNjJ" role="8PkJo">
      <property role="TrG5h" value="foo" />
      <node concept="1zAUYm" id="36tQV5ADNk9" role="1zAUyy">
        <property role="TrG5h" value="t" />
      </node>
    </node>
    <node concept="3AqmO8" id="36tQV5ADNk_" role="8PkJo">
      <property role="TrG5h" value="bar" />
      <node concept="1zAUYm" id="36tQV5ADNl1" role="1zAUyy">
        <property role="TrG5h" value="t" />
      </node>
    </node>
    <node concept="1nLNMY" id="12QmIo_7_05" role="1nK1Vg">
      <property role="TrG5h" value="base" />
      <node concept="3clFbS" id="12QmIo_7_06" role="1nLNMH">
        <node concept="1nLNNL" id="12QmIo_7_07" role="3cqZAp">
          <node concept="1nLNMm" id="12QmIo_7_08" role="1nLNNK">
            <node concept="0eUR_" id="34$A1Mfalx_" role="0UC6o">
              <node concept="3NuqgR" id="34$A1MfalxB" role="0eVf_">
                <node concept="aZer4" id="34$A1MfalxC" role="3XD1gS">
                  <property role="TrG5h" value="T" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="34$A1Mfalxm" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="34$A1Mfalxn" role="3Ip0Jz">
                <node concept="3I6s7M" id="34$A1Mfalxr" role="3I6sU7">
                  <node concept="3Aqt3T" id="34$A1Mfalxq" role="3I6s78">
                    <ref role="3AqCNq" node="36tQV5ADNjJ" resolve="foo" />
                    <node concept="a7P8L" id="34$A1MfalxL" role="3AunhB">
                      <ref role="a7OzE" node="34$A1MfalxC" resolve="T" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="3$nR4PM7XQT" role="1nLNMd">
              <node concept="3I6sU6" id="3$nR4PM7XQU" role="3Ip0Jz">
                <node concept="3I6s7M" id="3$nR4PM7XQY" role="3I6sU7">
                  <node concept="3wWvb2" id="3$nR4PM7XQX" role="3I6s78">
                    <node concept="2OqwBi" id="3$nR4PM7XXK" role="3wWo3s">
                      <node concept="3A2sRY" id="3$nR4PM7XRm" role="2Oq$k0">
                        <ref role="3A2yKK" node="3$nR4PM7XR2" resolve="bc" />
                      </node>
                      <node concept="2s7oft" id="3$nR4PM7YA8" role="2OqNvi">
                        <property role="2s7ueQ" value="error" />
                        <node concept="Xl_RD" id="3$nR4PM7YAI" role="2s7u9n">
                          <property role="Xl_RC" value="blah" />
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
      <node concept="2t___k" id="3$nR4PM7XR1" role="1nLNMg">
        <ref role="2t_S0q" to="tpck:gw2VY9q" resolve="BaseConcept" />
        <node concept="3A20r5" id="3$nR4PM7XR2" role="2t_VXX">
          <property role="TrG5h" value="bc" />
        </node>
      </node>
    </node>
  </node>
  <node concept="AVZre" id="7lt0LtPHRYY">
    <property role="TrG5h" value="Type" />
    <node concept="1nLNMY" id="7lt0LtPHRZ8" role="1nK1Vg">
      <property role="TrG5h" value="exprTypeof" />
      <node concept="3clFbS" id="7lt0LtPHRZ9" role="1nLNMH">
        <node concept="1nLNNL" id="7lt0LtPHRZ_" role="3cqZAp">
          <node concept="1nLNMm" id="7lt0LtPHRZA" role="1nLNNK">
            <node concept="3Aq9E8" id="7lt0LtPHRZD" role="1nLNMd">
              <node concept="3I6sU6" id="7lt0LtPHRZE" role="3Ip0Jz">
                <node concept="3I6s7M" id="7lt0LtPHS0f" role="3I6sU7">
                  <node concept="3A8Hvi" id="7lt0LtPHS09" role="3I6s78">
                    <node concept="a7P8L" id="7lt0LtPIYZ7" role="3A8wtg">
                      <ref role="a7OzE" node="7lt0LtPIm0Y" resolve="T" />
                    </node>
                    <node concept="ns1u0" id="JOGAOsVts_" role="3A8w4Q">
                      <ref role="ns1xF" node="JOGAOsVt6y" resolve="Foo" />
                      <node concept="nsMwS" id="JOGAOsVtsA" role="ns1xD">
                        <ref role="nsMwP" node="JOGAOsVt6$" resolve="bar" />
                        <node concept="Xl_RD" id="7lt0LtPIZ7Q" role="nsMwV">
                          <property role="Xl_RC" value="BLAH" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="7lt0LtPHS0p" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="7lt0LtPHS0q" role="3Ip0Jz" />
            </node>
            <node concept="0eUR_" id="7lt0LtPIm0V" role="0UC6o">
              <node concept="3NuqgR" id="7lt0LtPIm0X" role="0eVf_">
                <node concept="aZer4" id="7lt0LtPIm0Y" role="3XD1gS">
                  <property role="TrG5h" value="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="7lt0LtPHRZc" role="1nLNMg">
        <ref role="2t_S0q" to="qulx:7lt0LtPHOmg" resolve="Expr" />
        <node concept="3A20r5" id="7lt0LtPHRZd" role="2t_VXX">
          <property role="TrG5h" value="expr" />
        </node>
      </node>
    </node>
  </node>
  <node concept="AVZre" id="7lt0LtPOZVe">
    <property role="TrG5h" value="Recover" />
    <node concept="3AqmO8" id="7lt0LtPOZVl" role="8PkJo">
      <property role="TrG5h" value="recover" />
    </node>
    <node concept="3AqmO8" id="7lt0LtPOZWJ" role="8PkJo">
      <property role="TrG5h" value="typeNode" />
      <node concept="1zAUYm" id="7lt0LtPP10G" role="1zAUyy">
        <property role="TrG5h" value="node" />
      </node>
      <node concept="1zAUYm" id="7lt0LtPP10I" role="1zAUyy">
        <property role="TrG5h" value="expression" />
      </node>
    </node>
    <node concept="1nLNMY" id="7lt0LtPOZVh" role="1nK1Vg">
      <property role="TrG5h" value="recoverExpr" />
      <node concept="3clFbS" id="7lt0LtPOZVi" role="1nLNMH">
        <node concept="1nLNNL" id="7lt0LtPOZW0" role="3cqZAp">
          <node concept="1nLNMm" id="7lt0LtPOZW1" role="1nLNNK">
            <node concept="0eUR_" id="7lt0LtPOZW5" role="0UC6o">
              <node concept="3NuqgR" id="7lt0LtPOZW7" role="0eVf_">
                <node concept="aZer4" id="7lt0LtPOZW8" role="3XD1gS">
                  <property role="TrG5h" value="T" />
                </node>
                <node concept="aZer4" id="7lt0LtPP29U" role="3XD1gS">
                  <property role="TrG5h" value="Node" />
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="7lt0LtPP11l" role="1nLNMd">
              <node concept="3I6sU6" id="7lt0LtPP11m" role="3Ip0Jz">
                <node concept="3I6s7M" id="7lt0LtPP29M" role="3I6sU7">
                  <node concept="3GeI9q" id="7lt0LtPP29G" role="3I6s78">
                    <node concept="a7P8L" id="7lt0LtPP2ab" role="3GeI8F">
                      <ref role="a7OzE" node="7lt0LtPP29U" resolve="Node" />
                    </node>
                    <node concept="HKQnh" id="7lt0LtPP2an" role="3GeI8D">
                      <node concept="2c44tf" id="7lt0LtPP2as" role="HKQng">
                        <node concept="17QB3L" id="7lt0LtPP2aI" role="2c44tc" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="7lt0LtPP11q" role="3I6sU7">
                  <node concept="3Aqt3T" id="7lt0LtPP11p" role="3I6s78">
                    <ref role="3AqCNq" node="7lt0LtPOZWJ" resolve="typeNode" />
                    <node concept="a7P8L" id="7lt0LtPP2b1" role="3AunhB">
                      <ref role="a7OzE" node="7lt0LtPP29U" resolve="Node" />
                    </node>
                    <node concept="3BlFb$" id="7lt0LtPP2b7" role="3AunhB">
                      <node concept="3A2sRY" id="7lt0LtPP2bh" role="3BlFb_">
                        <ref role="3A2yKK" node="7lt0LtPOZVo" resolve="expr" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="7lt0LtPOZVn" role="1nLNMg">
        <ref role="2t_S0q" to="qulx:7lt0LtPHOmg" resolve="Expr" />
        <node concept="3A20r5" id="7lt0LtPOZVo" role="2t_VXX">
          <property role="TrG5h" value="expr" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="JOGAOsHzhm" role="1nK1Vg">
      <property role="TrG5h" value="asdasdasd" />
      <node concept="3clFbS" id="JOGAOsHzhn" role="1nLNMH">
        <node concept="3clFbH" id="3IIf9OArhiN" role="3cqZAp" />
        <node concept="1nLNNL" id="JOGAOsHziB" role="3cqZAp">
          <node concept="1nLNMm" id="JOGAOsHziC" role="1nLNNK">
            <node concept="0eUR_" id="JOGAOsHziK" role="0UC6o">
              <node concept="3NuqgR" id="JOGAOsHziM" role="0eVf_">
                <node concept="aZer4" id="JOGAOsHziN" role="3XD1gS">
                  <property role="TrG5h" value="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="ns1xd" id="JOGAOsVt6x">
    <property role="TrG5h" value="Types" />
    <node concept="ns1x$" id="JOGAOsVt6y" role="ns1xc">
      <property role="TrG5h" value="Foo" />
      <node concept="nspSf" id="JOGAOsVt6z" role="ns1xx">
        <node concept="nssqF" id="JOGAOsVt6$" role="nspSe">
          <property role="TrG5h" value="bar" />
          <property role="nspS5" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node concept="AVZre" id="3IIf9OArhmM">
    <property role="TrG5h" value="Promote" />
    <node concept="3AqmO8" id="3IIf9OArhmN" role="8PkJo">
      <property role="TrG5h" value="promote" />
      <node concept="1zAUYm" id="3IIf9OArhmP" role="1zAUyy">
        <property role="TrG5h" value="subtype" />
      </node>
      <node concept="1zAUYm" id="3IIf9OArhmR" role="1zAUyy">
        <property role="TrG5h" value="supertype" />
      </node>
    </node>
  </node>
  <node concept="92CTh" id="6OXbTD$fzih">
    <property role="TrG5h" value="Query_sample" />
    <node concept="2bWyPT" id="6OXbTD$fzli" role="92CTm">
      <property role="TrG5h" value="main" />
      <node concept="3clFbS" id="6OXbTD$fzlj" role="fHCRw">
        <node concept="3cpWs8" id="6OXbTD$fzlm" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTD$fzln" role="3cpWs9">
            <property role="TrG5h" value="inputA" />
            <node concept="3Tqbb2" id="6OXbTD$fzlo" role="1tU5fm" />
            <node concept="10Nm6u" id="6OXbTD$fzlp" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="6OXbTD$fzlq" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTD$fzlr" role="3cpWs9">
            <property role="TrG5h" value="inputB" />
            <node concept="3Tqbb2" id="6OXbTD$fzls" role="1tU5fm" />
            <node concept="10Nm6u" id="6OXbTD$fzlt" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="6OXbTD$fzlu" role="3cqZAp" />
        <node concept="1nLNNL" id="6OXbTD$fzlv" role="3cqZAp">
          <node concept="1nLNMm" id="6OXbTD$fzlw" role="1nLNNK">
            <node concept="3Aq9E8" id="6OXbTD$fzlx" role="1nLNMd">
              <node concept="3I6sU6" id="6OXbTD$fzly" role="3Ip0Jz">
                <node concept="3I6s7M" id="6OXbTD$fzlz" role="3I6sU7">
                  <node concept="1imXTs" id="6OXbTD$fzl$" role="3I6s78">
                    <node concept="a7P8L" id="6OXbTD$fzl_" role="1imXu6">
                      <ref role="a7OzE" node="6OXbTD$fzlL" resolve="A" />
                    </node>
                    <node concept="37vLTw" id="6OXbTD$fzlA" role="1imXSf">
                      <ref role="3cqZAo" node="6OXbTD$fzln" resolve="inputA" />
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="6OXbTD$fzlB" role="3I6sU7">
                  <node concept="1imXTs" id="6OXbTD$fzlC" role="3I6s78">
                    <node concept="a7P8L" id="6OXbTD$fzlD" role="1imXu6">
                      <ref role="a7OzE" node="6OXbTD$fzlM" resolve="B" />
                    </node>
                    <node concept="37vLTw" id="6OXbTD$fzlE" role="1imXSf">
                      <ref role="3cqZAo" node="6OXbTD$fzlr" resolve="inputB" />
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="6OXbTD$fzlF" role="3I6sU7">
                  <node concept="3Aqt3T" id="6OXbTD$fzlG" role="3I6s78">
                    <ref role="3AqCNq" node="3IIf9OArhmN" resolve="promote" />
                    <node concept="a7P8L" id="6OXbTD$fzlH" role="3AunhB">
                      <ref role="a7OzE" node="6OXbTD$fzlL" resolve="A" />
                    </node>
                    <node concept="a7P8L" id="6OXbTD$fzlI" role="3AunhB">
                      <ref role="a7OzE" node="6OXbTD$fzlM" resolve="B" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="0eUR_" id="6OXbTD$fzlJ" role="0UC6o">
              <node concept="3NuqgR" id="6OXbTD$fzlK" role="0eVf_">
                <node concept="aZer4" id="6OXbTD$fzlL" role="3XD1gS">
                  <property role="TrG5h" value="A" />
                </node>
                <node concept="aZer4" id="6OXbTD$fzlM" role="3XD1gS">
                  <property role="TrG5h" value="B" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="10M0yZ" id="12QmIoyRGx2" role="2_lZgo">
      <ref role="3cqZAo" to="1g4i:4t7Xo7inNvw" resolve="TYPECHECK" />
      <ref role="1PxDUh" to="1g4i:4t7Xo7inNgi" resolve="TypecheckingQueryKind" />
    </node>
  </node>
</model>

