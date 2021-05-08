<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:53d84a0c-d729-4f62-82dd-13e1144d50cf(jetbrains.mps.lang.patternExt.types)">
  <persistence version="9" />
  <languages>
    <use id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" version="0" />
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules" version="23" />
    <engage id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.baseLanguageExt.types)" />
    <import index="tp3t" ref="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" />
    <import index="jxwi" ref="r:6ecd2c91-8e0b-4c6a-878e-d699a7336100(jetbrains.mps.lang.smodelExt.types)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="yh6q" ref="r:14dbdd37-ab02-4407-8e3c-3308d6f4fbba(jetbrains.mps.baseLanguage.sequence.types)" />
    <import index="tpeq" ref="r:00000000-0000-4000-0000-011c895902fe(jetbrains.mps.lang.smodel.typesystem)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tp3r" ref="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
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
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules">
      <concept id="1149537088067116625" name="jetbrains.mps.lang.coderules.structure.NodeRefItem" flags="ng" index="h$QuP">
        <reference id="1149537088067125001" name="ref" index="h$OrH" />
      </concept>
      <concept id="861509610434242029" name="jetbrains.mps.lang.coderules.structure.TermConstructor" flags="ng" index="ns1u0">
        <reference id="861509610434243078" name="decl" index="ns1xF" />
        <child id="861509610434243076" name="override" index="ns1xD" />
      </concept>
      <concept id="861509610434435669" name="jetbrains.mps.lang.coderules.structure.TermFeatureOverride" flags="ng" index="nsMwS">
        <reference id="861509610434435672" name="feature" index="nsMwP" />
        <child id="1149537088045275069" name="item" index="iSaTp" />
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
  <node concept="AVZre" id="127bLwWT0rL">
    <property role="TrG5h" value="CheckPattern" />
    <ref role="2YbDB9" to="kqnc:34$A1Mf51rY" resolve="TypeOf" />
    <node concept="1nLNMY" id="127bLwWT0FI" role="1nK1Vg">
      <property role="TrG5h" value="patternBuilderVariableReference" />
      <node concept="3clFbS" id="127bLwWT0FJ" role="1nLNMH">
        <node concept="3clFbJ" id="127bLwWT0G2" role="3cqZAp">
          <node concept="3clFbS" id="127bLwWT0G4" role="3clFbx">
            <node concept="1nLNNL" id="127bLwWT0FT" role="3cqZAp">
              <node concept="1nLNMm" id="127bLwWT0FU" role="1nLNNK">
                <node concept="3Aq93q" id="127bLwWT16N" role="1nLNMb">
                  <property role="3ArMco" value="true" />
                  <node concept="3I6sU6" id="127bLwWT16O" role="3Ip0Jz">
                    <node concept="3I6s7M" id="127bLwWT16S" role="3I6sU7">
                      <node concept="3Aqt3T" id="127bLwWT16R" role="3I6s78">
                        <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                        <node concept="37jhX" id="127bLwWT170" role="3AunhB">
                          <node concept="2OqwBi" id="127bLwWT17q" role="37jj2">
                            <node concept="3A2sRY" id="127bLwWT16Y" role="2Oq$k0">
                              <ref role="3A2yKK" node="127bLwWT0FL" resolve="pbvr" />
                            </node>
                            <node concept="3TrEf2" id="127bLwWT18d" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                            </node>
                          </node>
                        </node>
                        <node concept="a7P8L" id="127bLwWT18K" role="3AunhB">
                          <ref role="a7OzE" node="127bLwWT18y" resolve="T" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3NuqgR" id="127bLwWT18x" role="0Rg$4">
                  <node concept="aZer4" id="127bLwWT18y" role="3XD1gS">
                    <property role="TrG5h" value="T" />
                  </node>
                  <node concept="32pEOW" id="127bLwWT18D" role="3vLBG7" />
                </node>
                <node concept="3xSepi" id="127bLwWT18U" role="3xSepv">
                  <node concept="3Aq9E8" id="127bLwWT18V" role="3xSepj">
                    <node concept="3I6sU6" id="127bLwWT18W" role="3Ip0Jz">
                      <node concept="3I6s7M" id="127bLwWT191" role="3I6sU7">
                        <node concept="3Aqt3T" id="127bLwWT190" role="3I6s78">
                          <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                          <node concept="37jhX" id="127bLwWT199" role="3AunhB">
                            <node concept="3A2sRY" id="127bLwWT197" role="37jj2">
                              <ref role="3A2yKK" node="127bLwWT0FL" resolve="pbvr" />
                            </node>
                          </node>
                          <node concept="a7P8L" id="127bLwWT1a4" role="3AunhB">
                            <ref role="a7OzE" node="127bLwWT18y" resolve="T" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="127bLwWT14W" role="3clFbw">
            <node concept="2OqwBi" id="127bLwWT0UU" role="2Oq$k0">
              <node concept="3A2sRY" id="127bLwWT0Ge" role="2Oq$k0">
                <ref role="3A2yKK" node="127bLwWT0FL" resolve="pbvr" />
              </node>
              <node concept="3TrEf2" id="127bLwWT144" role="2OqNvi">
                <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
              </node>
            </node>
            <node concept="3x8VRR" id="127bLwWT16n" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2t___k" id="127bLwWT0FK" role="1nLNMg">
        <ref role="2t_S0q" to="tp3t:2r4rhgaDx25" resolve="PatternBuilderVariableReference" />
        <node concept="3A20r5" id="127bLwWT0FL" role="2t_VXX">
          <property role="TrG5h" value="pbvr" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="127bLwWT1b7" role="1nK1Vg">
      <property role="TrG5h" value="patternSwitchStatement" />
      <node concept="3clFbS" id="127bLwWT1b8" role="1nLNMH">
        <node concept="1nLNNL" id="127bLwWT1bQ" role="3cqZAp">
          <node concept="1nLNMm" id="127bLwWT1bR" role="1nLNNK">
            <node concept="3Aq93q" id="127bLwWT1bU" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="127bLwWT1bV" role="3Ip0Jz">
                <node concept="3I6s7M" id="127bLwWT1bZ" role="3I6sU7">
                  <node concept="3Aqt3T" id="127bLwWT1bY" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="127bLwWT1c2" role="3xSepv">
              <node concept="3Aq9E8" id="127bLwWT1c3" role="3xSepj">
                <node concept="3I6sU6" id="127bLwWT1c4" role="3Ip0Jz">
                  <node concept="3I6s7M" id="127bLwWT1c9" role="3I6sU7">
                    <node concept="3Aqt3T" id="127bLwWT1c8" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="127bLwWT1cl" role="3AunhB">
                        <node concept="3A2sRY" id="127bLwWT1cj" role="37jj2">
                          <ref role="3A2yKK" node="127bLwWT1ba" resolve="pss" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="127bLwWT1Z7" role="3AunhB">
                        <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                        <node concept="nsMwS" id="127bLwWT2yo" role="ns1xD">
                          <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                          <node concept="h$QuP" id="127bLwWT2yx" role="iSaTp">
                            <ref role="h$OrH" to="tpck:gw2VY9q" resolve="BaseConcept" />
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
      <node concept="2t___k" id="127bLwWT1b9" role="1nLNMg">
        <ref role="2t_S0q" to="tp3t:1tcvH6aAlHh" resolve="PatternSwitchStatement" />
        <node concept="3A20r5" id="127bLwWT1ba" role="2t_VXX">
          <property role="TrG5h" value="pss" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="127bLwWT2zy" role="1nK1Vg">
      <property role="TrG5h" value="labeledNode" />
      <node concept="3clFbS" id="127bLwWT2zz" role="1nLNMH">
        <node concept="1nLNNL" id="127bLwWT2$B" role="3cqZAp">
          <node concept="1nLNMm" id="127bLwWT2$D" role="1nLNNK">
            <node concept="3Aq93q" id="127bLwWT2$H" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="127bLwWT2$I" role="3Ip0Jz">
                <node concept="3I6s7M" id="127bLwWT2$M" role="3I6sU7">
                  <node concept="3Aqt3T" id="127bLwWT2$L" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="127bLwWT2$P" role="3xSepv">
              <node concept="3Aq9E8" id="127bLwWT2$Q" role="3xSepj">
                <node concept="3I6sU6" id="127bLwWT2$R" role="3Ip0Jz">
                  <node concept="3I6s7M" id="127bLwWT2$W" role="3I6sU7">
                    <node concept="3Aqt3T" id="127bLwWT2$V" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="127bLwWT2_e" role="3AunhB">
                        <node concept="3A2sRY" id="127bLwWT2_c" role="37jj2">
                          <ref role="3A2yKK" node="127bLwWT2z_" resolve="ln" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="127bLwWT2_l" role="3AunhB">
                        <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                        <node concept="nsMwS" id="127bLwWT39$" role="ns1xD">
                          <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                          <node concept="37jhX" id="127bLwWT39C" role="iSaTp">
                            <node concept="2OqwBi" id="127bLwWT3oy" role="37jj2">
                              <node concept="3A2sRY" id="127bLwWT39B" role="2Oq$k0">
                                <ref role="3A2yKK" node="127bLwWT2z_" resolve="ln" />
                              </node>
                              <node concept="3TrEf2" id="127bLwWT4ql" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3r:4IP40Bi2KaL" resolve="concept" />
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
      <node concept="2t___k" id="127bLwWT2z$" role="1nLNMg">
        <ref role="2t_S0q" to="tp3t:PFUECvMiNB" resolve="LabeledNode" />
        <node concept="3A20r5" id="127bLwWT2z_" role="2t_VXX">
          <property role="TrG5h" value="ln" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="127bLwWT4Gb" role="1nK1Vg">
      <property role="TrG5h" value="patternVariableNode" />
      <node concept="3clFbS" id="127bLwWT4Gc" role="1nLNMH">
        <node concept="1nLNNL" id="127bLwWT4Y7" role="3cqZAp">
          <node concept="1nLNMm" id="127bLwWT4Y9" role="1nLNNK">
            <node concept="3Aq93q" id="127bLwWT4Zt" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="127bLwWT4Zu" role="3Ip0Jz">
                <node concept="3I6s7M" id="127bLwWT4Zy" role="3I6sU7">
                  <node concept="3Aqt3T" id="127bLwWT4Zx" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="127bLwWT4Z_" role="3xSepv">
              <node concept="3Aq9E8" id="127bLwWT4ZA" role="3xSepj">
                <node concept="3I6sU6" id="127bLwWT4ZB" role="3Ip0Jz">
                  <node concept="3IrJb3" id="127bLwWT4ZF" role="3I6sU7">
                    <node concept="3clFbS" id="127bLwWT4ZG" role="3IrJb0">
                      <node concept="3clFbJ" id="2r4rhgaHa2S" role="3cqZAp">
                        <node concept="2OqwBi" id="2r4rhgaHa2T" role="3clFbw">
                          <node concept="1BlSNk" id="2r4rhgaHa2V" role="2OqNvi">
                            <ref role="1BmUXE" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
                            <ref role="1Bn3mz" to="tp3r:1o$2SUuutG3" resolve="initValue" />
                          </node>
                          <node concept="3A2sRY" id="127bLwWT4Sw" role="2Oq$k0">
                            <ref role="3A2yKK" node="127bLwWT4Ge" resolve="pvn" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2r4rhgaHa2W" role="3clFbx">
                          <node concept="3cpWs8" id="2r4rhgaHeAc" role="3cqZAp">
                            <node concept="3cpWsn" id="2r4rhgaHeAd" role="3cpWs9">
                              <property role="TrG5h" value="link" />
                              <node concept="3Tqbb2" id="2r4rhgaHeeq" role="1tU5fm">
                                <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                              </node>
                              <node concept="2OqwBi" id="2r4rhgaHeAe" role="33vP2m">
                                <node concept="1PxgMI" id="2r4rhgaHeAf" role="2Oq$k0">
                                  <node concept="chp4Y" id="2r4rhgaHeAg" role="3oSUPX">
                                    <ref role="cht4Q" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
                                  </node>
                                  <node concept="2OqwBi" id="2r4rhgaHeAh" role="1m5AlR">
                                    <node concept="1mfA1w" id="2r4rhgaHeAj" role="2OqNvi" />
                                    <node concept="3A2sRY" id="127bLwWT4SR" role="2Oq$k0">
                                      <ref role="3A2yKK" node="127bLwWT4Ge" resolve="pvn" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="2r4rhgaHeAk" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="5sDn0Onncao" role="3cqZAp">
                            <node concept="3clFbS" id="5sDn0Onncaq" role="3clFbx">
                              <node concept="3Aqczg" id="127bLwWT52P" role="3cqZAp">
                                <node concept="3Aqt3T" id="127bLwWT52N" role="3Aqpz8">
                                  <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                                  <node concept="37jhX" id="127bLwWT538" role="3AunhB">
                                    <node concept="3A2sRY" id="127bLwWT536" role="37jj2">
                                      <ref role="3A2yKK" node="127bLwWT4Ge" resolve="pvn" />
                                    </node>
                                  </node>
                                  <node concept="ns1u0" id="127bLwWT53j" role="3AunhB">
                                    <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                                    <node concept="nsMwS" id="127bLwWT5HQ" role="ns1xD">
                                      <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                                      <node concept="37jhX" id="127bLwWT5IT" role="iSaTp">
                                        <node concept="2OqwBi" id="127bLwWT5Qy" role="37jj2">
                                          <node concept="37vLTw" id="127bLwWT5IS" role="2Oq$k0">
                                            <ref role="3cqZAo" node="2r4rhgaHeAd" resolve="link" />
                                          </node>
                                          <node concept="3TrEf2" id="127bLwWT6no" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="5sDn0OnncpS" role="3clFbw">
                              <node concept="37vLTw" id="5sDn0Onncbx" role="2Oq$k0">
                                <ref role="3cqZAo" node="2r4rhgaHeAd" resolve="link" />
                              </node>
                              <node concept="2qgKlT" id="5sDn0OnncEA" role="2OqNvi">
                                <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                              </node>
                            </node>
                            <node concept="9aQIb" id="5sDn0OnncO$" role="9aQIa">
                              <node concept="3clFbS" id="5sDn0OnncO_" role="9aQI4">
                                <node concept="3Aqczg" id="127bLwWT6nG" role="3cqZAp">
                                  <node concept="3Aqt3T" id="127bLwWT6nH" role="3Aqpz8">
                                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                                    <node concept="37jhX" id="127bLwWT6nI" role="3AunhB">
                                      <node concept="3A2sRY" id="127bLwWT6nJ" role="37jj2">
                                        <ref role="3A2yKK" node="127bLwWT4Ge" resolve="pvn" />
                                      </node>
                                    </node>
                                    <node concept="ns1u0" id="127bLwWT73I" role="3AunhB">
                                      <ref role="ns1xF" to="yh6q:3MFPGC50Ab3" resolve="sequence" />
                                      <node concept="nsMwS" id="127bLwWT7p0" role="ns1xD">
                                        <ref role="nsMwP" to="yh6q:3MFPGC50Aiu" resolve="elem" />
                                        <node concept="ns1u0" id="127bLwWT6nK" role="iSaTp">
                                          <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                                          <node concept="nsMwS" id="127bLwWT6nL" role="ns1xD">
                                            <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                                            <node concept="37jhX" id="127bLwWT6nM" role="iSaTp">
                                              <node concept="2OqwBi" id="127bLwWT6nN" role="37jj2">
                                                <node concept="37vLTw" id="127bLwWT6nO" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="2r4rhgaHeAd" resolve="link" />
                                                </node>
                                                <node concept="3TrEf2" id="127bLwWT6nP" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
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
                        <node concept="3eNFk2" id="127bLwWT7q0" role="3eNLev">
                          <node concept="3clFbS" id="127bLwWT7q2" role="3eOfB_">
                            <node concept="3cpWs8" id="127bLwWT7yv" role="3cqZAp">
                              <node concept="3cpWsn" id="127bLwWT7yw" role="3cpWs9">
                                <property role="TrG5h" value="link" />
                                <node concept="3Tqbb2" id="127bLwWT7yx" role="1tU5fm">
                                  <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                                </node>
                                <node concept="2OqwBi" id="127bLwWT7yy" role="33vP2m">
                                  <node concept="1PxgMI" id="127bLwWT7yz" role="2Oq$k0">
                                    <node concept="chp4Y" id="127bLwWT7y$" role="3oSUPX">
                                      <ref role="cht4Q" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
                                    </node>
                                    <node concept="2OqwBi" id="127bLwWT7y_" role="1m5AlR">
                                      <node concept="2OqwBi" id="127bLwWT7yA" role="2Oq$k0">
                                        <node concept="1mfA1w" id="127bLwWT7yC" role="2OqNvi" />
                                        <node concept="3A2sRY" id="127bLwWT7z_" role="2Oq$k0">
                                          <ref role="3A2yKK" node="127bLwWT4Ge" resolve="pvn" />
                                        </node>
                                      </node>
                                      <node concept="1mfA1w" id="127bLwWT7yD" role="2OqNvi" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="127bLwWT7yE" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3Aqczg" id="127bLwWT7zI" role="3cqZAp">
                              <node concept="3Aqt3T" id="127bLwWT7zJ" role="3Aqpz8">
                                <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                                <node concept="37jhX" id="127bLwWT7zK" role="3AunhB">
                                  <node concept="3A2sRY" id="127bLwWT7zL" role="37jj2">
                                    <ref role="3A2yKK" node="127bLwWT4Ge" resolve="pvn" />
                                  </node>
                                </node>
                                <node concept="ns1u0" id="127bLwWT7zM" role="3AunhB">
                                  <ref role="ns1xF" to="yh6q:3MFPGC50Ab3" resolve="sequence" />
                                  <node concept="nsMwS" id="127bLwWT7zN" role="ns1xD">
                                    <ref role="nsMwP" to="yh6q:3MFPGC50Aiu" resolve="elem" />
                                    <node concept="ns1u0" id="127bLwWT7zO" role="iSaTp">
                                      <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                                      <node concept="nsMwS" id="127bLwWT7zP" role="ns1xD">
                                        <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                                        <node concept="37jhX" id="127bLwWT7zQ" role="iSaTp">
                                          <node concept="2OqwBi" id="127bLwWT7zR" role="37jj2">
                                            <node concept="37vLTw" id="127bLwWT7B6" role="2Oq$k0">
                                              <ref role="3cqZAo" node="127bLwWT7yw" resolve="link" />
                                            </node>
                                            <node concept="3TrEf2" id="127bLwWT7zT" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
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
                          <node concept="1Wc70l" id="127bLwWT7q7" role="3eO9$A">
                            <node concept="2OqwBi" id="127bLwWT7q8" role="3uHU7w">
                              <node concept="2OqwBi" id="127bLwWT7q9" role="2Oq$k0">
                                <node concept="1mfA1w" id="127bLwWT7qb" role="2OqNvi" />
                                <node concept="3A2sRY" id="127bLwWT7ya" role="2Oq$k0">
                                  <ref role="3A2yKK" node="127bLwWT4Ge" resolve="pvn" />
                                </node>
                              </node>
                              <node concept="1BlSNk" id="127bLwWT7qc" role="2OqNvi">
                                <ref role="1BmUXE" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
                                <ref role="1Bn3mz" to="tp3r:1o$2SUuutG3" resolve="initValue" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="127bLwWT7qd" role="3uHU7B">
                              <node concept="1BlSNk" id="127bLwWT7qf" role="2OqNvi">
                                <ref role="1BmUXE" to="tp3r:76efOMRCHWM" resolve="NodeBuilderList" />
                                <ref role="1Bn3mz" to="tp3r:76efOMRCHWN" resolve="nodes" />
                              </node>
                              <node concept="3A2sRY" id="127bLwWT7xQ" role="2Oq$k0">
                                <ref role="3A2yKK" node="127bLwWT4Ge" resolve="pvn" />
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
      <node concept="2t___k" id="127bLwWT4Gd" role="1nLNMg">
        <ref role="2t_S0q" to="tp3t:2g69lt1BJHK" resolve="PatternVariableNode" />
        <node concept="3A20r5" id="127bLwWT4Ge" role="2t_VXX">
          <property role="TrG5h" value="pvn" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="127bLwWT7Vp" role="1nK1Vg">
      <property role="TrG5h" value="patternVariableProperty" />
      <node concept="3clFbS" id="127bLwWT7Vq" role="1nLNMH">
        <node concept="1nLNNL" id="127bLwWT7Ye" role="3cqZAp">
          <node concept="1nLNMm" id="127bLwWT7Yf" role="1nLNNK">
            <node concept="3Aq93q" id="127bLwWT7Yi" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="127bLwWT7Yj" role="3Ip0Jz">
                <node concept="3I6s7M" id="127bLwWT7Yn" role="3I6sU7">
                  <node concept="3Aqt3T" id="127bLwWT7Ym" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="127bLwWT7Yq" role="3xSepv">
              <node concept="3Aq9E8" id="127bLwWT7Yr" role="3xSepj">
                <node concept="3I6sU6" id="127bLwWT7Ys" role="3Ip0Jz">
                  <node concept="3IrJb3" id="127bLwWT7Yw" role="3I6sU7">
                    <node concept="3clFbS" id="127bLwWT7Yx" role="3IrJb0">
                      <node concept="3clFbJ" id="2r4rhgaH6ex" role="3cqZAp">
                        <node concept="2OqwBi" id="2r4rhgaH6pM" role="3clFbw">
                          <node concept="1BlSNk" id="2r4rhgaH6zS" role="2OqNvi">
                            <ref role="1BmUXE" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
                            <ref role="1Bn3mz" to="tp3r:1o$2SUuutyh" resolve="initValue" />
                          </node>
                          <node concept="3A2sRY" id="127bLwWT80j" role="2Oq$k0">
                            <ref role="3A2yKK" node="127bLwWT7Vs" resolve="pvp" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2r4rhgaH6ez" role="3clFbx">
                          <node concept="3cpWs8" id="127bLwWTbYh" role="3cqZAp">
                            <node concept="3cpWsn" id="127bLwWTbYi" role="3cpWs9">
                              <property role="TrG5h" value="datatypeBLType" />
                              <node concept="3Tqbb2" id="127bLwWTbYg" role="1tU5fm">
                                <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                              </node>
                              <node concept="2YIFZM" id="127bLwWTbYj" role="33vP2m">
                                <ref role="37wK5l" to="tpeq:4uA70LEglme" resolve="datatypeBLType" />
                                <ref role="1Pybhc" to="tpeq:h9nq4jh" resolve="RulesUtil" />
                                <node concept="2OqwBi" id="127bLwWTbYk" role="37wK5m">
                                  <node concept="2OqwBi" id="127bLwWTbYl" role="2Oq$k0">
                                    <node concept="1PxgMI" id="127bLwWTbYm" role="2Oq$k0">
                                      <node concept="chp4Y" id="127bLwWTbYn" role="3oSUPX">
                                        <ref role="cht4Q" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
                                      </node>
                                      <node concept="2OqwBi" id="127bLwWTbYo" role="1m5AlR">
                                        <node concept="3A2sRY" id="127bLwWTbYp" role="2Oq$k0">
                                          <ref role="3A2yKK" node="127bLwWT7Vs" resolve="pvp" />
                                        </node>
                                        <node concept="1mfA1w" id="127bLwWTbYq" role="2OqNvi" />
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="127bLwWTbYr" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcA" resolve="property" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="127bLwWTbYs" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3Aqczg" id="127bLwWTcQ$" role="3cqZAp">
                            <node concept="3jbYBd" id="127bLwWTcQx" role="3Aqpz8">
                              <ref role="3jbY9l" to="kqnc:5itBwMau8m1" resolve="lift" />
                              <node concept="37vLTw" id="127bLwWTdRX" role="3jbY8P">
                                <ref role="3cqZAo" node="127bLwWTbYi" resolve="datatypeBLType" />
                              </node>
                              <node concept="a7P8L" id="127bLwWTdRR" role="3jbY8V">
                                <ref role="a7OzE" node="127bLwWTdQT" resolve="DataT" />
                              </node>
                            </node>
                          </node>
                          <node concept="3Aqczg" id="127bLwWTdX3" role="3cqZAp">
                            <node concept="3Aqt3T" id="127bLwWTdX1" role="3Aqpz8">
                              <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                              <node concept="37jhX" id="127bLwWTdYs" role="3AunhB">
                                <node concept="3A2sRY" id="127bLwWTdYq" role="37jj2">
                                  <ref role="3A2yKK" node="127bLwWT7Vs" resolve="pvp" />
                                </node>
                              </node>
                              <node concept="a7P8L" id="127bLwWTdYB" role="3AunhB">
                                <ref role="a7OzE" node="127bLwWTdQT" resolve="DataT" />
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
            <node concept="3NuqgR" id="127bLwWTdQS" role="0Rg$4">
              <node concept="aZer4" id="127bLwWTdQT" role="3XD1gS">
                <property role="TrG5h" value="DataT" />
              </node>
              <node concept="32pEOW" id="127bLwWTdRK" role="3vLBG7" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="127bLwWT7Vr" role="1nLNMg">
        <ref role="2t_S0q" to="tp3t:63LzO9stD_y" resolve="PatternVariableProperty" />
        <node concept="3A20r5" id="127bLwWT7Vs" role="2t_VXX">
          <property role="TrG5h" value="pvp" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="127bLwWTfGM" role="1nK1Vg">
      <property role="TrG5h" value="asPattern" />
      <node concept="3clFbS" id="127bLwWTfGN" role="1nLNMH">
        <node concept="1nLNNL" id="127bLwWTfKJ" role="3cqZAp">
          <node concept="1nLNMm" id="127bLwWTfKK" role="1nLNNK">
            <node concept="3Aq93q" id="127bLwWTfKN" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="127bLwWTfKO" role="3Ip0Jz">
                <node concept="3I6s7M" id="127bLwWTfKS" role="3I6sU7">
                  <node concept="3Aqt3T" id="127bLwWTfKR" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="127bLwWTfLh" role="3xSepv">
              <node concept="3Aq9E8" id="127bLwWTfLi" role="3xSepj">
                <node concept="3I6sU6" id="127bLwWTfLj" role="3Ip0Jz">
                  <node concept="3I6s7M" id="127bLwWTfLo" role="3I6sU7">
                    <node concept="3Aqt3T" id="127bLwWTfLn" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="127bLwWTfLw" role="3AunhB">
                        <node concept="3A2sRY" id="127bLwWTfLu" role="37jj2">
                          <ref role="3A2yKK" node="127bLwWTfGP" resolve="ap" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="127bLwWTfLO" role="3AunhB">
                        <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                        <node concept="nsMwS" id="127bLwWTg8Q" role="ns1xD">
                          <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                          <node concept="37jhX" id="127bLwWThvZ" role="iSaTp">
                            <node concept="2YIFZM" id="127bLwWTh$A" role="37jj2">
                              <ref role="37wK5l" to="tpeq:EDoXYsb2Yk" resolve="closestConceptNode" />
                              <ref role="1Pybhc" to="tpeq:h9nq4jh" resolve="RulesUtil" />
                              <node concept="2OqwBi" id="127bLwWThAz" role="37wK5m">
                                <node concept="2OqwBi" id="127bLwWThA$" role="2Oq$k0">
                                  <node concept="1mfA1w" id="127bLwWThA_" role="2OqNvi" />
                                  <node concept="3A2sRY" id="127bLwWThAA" role="2Oq$k0">
                                    <ref role="3A2yKK" node="127bLwWTfGP" resolve="ap" />
                                  </node>
                                </node>
                                <node concept="2yIwOk" id="127bLwWThAB" role="2OqNvi" />
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
      <node concept="2t___k" id="127bLwWTfGO" role="1nLNMg">
        <ref role="2t_S0q" to="tp3t:gyDMOud" resolve="AsPattern" />
        <node concept="3A20r5" id="127bLwWTfGP" role="2t_VXX">
          <property role="TrG5h" value="ap" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="127bLwWThY3" role="1nK1Vg">
      <property role="TrG5h" value="linkPatternVariableDeclaration" />
      <node concept="3clFbS" id="127bLwWThY4" role="1nLNMH">
        <node concept="3cpWs8" id="127bLwWTm6Z" role="3cqZAp">
          <node concept="3cpWsn" id="127bLwWTm70" role="3cpWs9">
            <property role="TrG5h" value="acd" />
            <node concept="3Tqbb2" id="127bLwWTm6Y" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
            </node>
            <node concept="1PxgMI" id="127bLwWTm71" role="33vP2m">
              <node concept="chp4Y" id="127bLwWTm72" role="3oSUPX">
                <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              </node>
              <node concept="2OqwBi" id="127bLwWTm73" role="1m5AlR">
                <node concept="2OqwBi" id="127bLwWTm74" role="2Oq$k0">
                  <node concept="2OqwBi" id="127bLwWTm75" role="2Oq$k0">
                    <node concept="3A2sRY" id="127bLwWTm76" role="2Oq$k0">
                      <ref role="3A2yKK" node="127bLwWThY6" resolve="lpvd" />
                    </node>
                    <node concept="2qgKlT" id="127bLwWTm77" role="2OqNvi">
                      <ref role="37wK5l" to="tpcu:1avfQ4BEFo6" resolve="getLink" />
                    </node>
                  </node>
                  <node concept="liA8E" id="127bLwWTm78" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
                  </node>
                </node>
                <node concept="liA8E" id="127bLwWTm79" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getDeclarationNode()" resolve="getDeclarationNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1nLNNL" id="127bLwWTi2L" role="3cqZAp">
          <node concept="1nLNMm" id="127bLwWTi2N" role="1nLNNK">
            <node concept="3Aq93q" id="127bLwWTi2R" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="127bLwWTi2S" role="3Ip0Jz">
                <node concept="3I6s7M" id="127bLwWTi2W" role="3I6sU7">
                  <node concept="3Aqt3T" id="127bLwWTi2V" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="127bLwWTi2Z" role="3xSepv">
              <node concept="3Aq9E8" id="127bLwWTi30" role="3xSepj">
                <node concept="3I6sU6" id="127bLwWTi31" role="3Ip0Jz">
                  <node concept="3I6s7M" id="127bLwWTn6m" role="3I6sU7">
                    <node concept="3Aqt3T" id="127bLwWTn6l" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="127bLwWTn6u" role="3AunhB">
                        <node concept="3A2sRY" id="127bLwWTn6s" role="37jj2">
                          <ref role="3A2yKK" node="127bLwWThY6" resolve="lpvd" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="127bLwWTn6D" role="3AunhB">
                        <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                        <node concept="nsMwS" id="127bLwWTnR2" role="ns1xD">
                          <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                          <node concept="37jhX" id="127bLwWTnR6" role="iSaTp">
                            <node concept="37vLTw" id="127bLwWTnR5" role="37jj2">
                              <ref role="3cqZAo" node="127bLwWTm70" resolve="acd" />
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
      <node concept="2t___k" id="127bLwWThY5" role="1nLNMg">
        <ref role="2t_S0q" to="tp3t:gzjrplq" resolve="LinkPatternVariableDeclaration" />
        <node concept="3A20r5" id="127bLwWThY6" role="2t_VXX">
          <property role="TrG5h" value="lpvd" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="127bLwWTodb" role="1nK1Vg">
      <property role="TrG5h" value="listPattern" />
      <node concept="3clFbS" id="127bLwWTodc" role="1nLNMH">
        <node concept="1nLNNL" id="127bLwWToip" role="3cqZAp">
          <node concept="1nLNMm" id="127bLwWToiq" role="1nLNNK">
            <node concept="3Aq93q" id="127bLwWToit" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="127bLwWToiu" role="3Ip0Jz">
                <node concept="3I6s7M" id="127bLwWToiB" role="3I6sU7">
                  <node concept="3Aqt3T" id="127bLwWToiA" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="127bLwWToiE" role="3xSepv">
              <node concept="3Aq9E8" id="127bLwWToiF" role="3xSepj">
                <node concept="3I6sU6" id="127bLwWToiG" role="3Ip0Jz">
                  <node concept="3IrJb3" id="127bLwWToiK" role="3I6sU7">
                    <node concept="3clFbS" id="127bLwWToiL" role="3IrJb0">
                      <node concept="3cpWs8" id="127bLwWTptZ" role="3cqZAp">
                        <node concept="3cpWsn" id="127bLwWTpu0" role="3cpWs9">
                          <property role="TrG5h" value="attrNode" />
                          <node concept="3Tqbb2" id="127bLwWTptY" role="1tU5fm">
                            <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                          </node>
                          <node concept="2OqwBi" id="127bLwWTpu1" role="33vP2m">
                            <node concept="3A2sRY" id="127bLwWTpu2" role="2Oq$k0">
                              <ref role="3A2yKK" node="127bLwWTode" resolve="lp" />
                            </node>
                            <node concept="1mfA1w" id="127bLwWTpu3" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="127bLwWToiO" role="3cqZAp">
                        <node concept="3y3z36" id="127bLwWTq4I" role="3clFbw">
                          <node concept="2OqwBi" id="127bLwWTojr" role="3uHU7B">
                            <node concept="37vLTw" id="127bLwWTpvs" role="2Oq$k0">
                              <ref role="3cqZAo" node="127bLwWTpu0" resolve="attrNode" />
                            </node>
                            <node concept="1mfA1w" id="127bLwWToO$" role="2OqNvi" />
                          </node>
                          <node concept="10Nm6u" id="127bLwWToWw" role="3uHU7w" />
                        </node>
                        <node concept="3clFbS" id="127bLwWTq3Y" role="3clFbx">
                          <node concept="3cpWs8" id="127bLwWTsq2" role="3cqZAp">
                            <node concept="3cpWsn" id="127bLwWTsq3" role="3cpWs9">
                              <property role="TrG5h" value="role" />
                              <node concept="3uibUv" id="127bLwWTsq1" role="1tU5fm">
                                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
                              </node>
                              <node concept="2OqwBi" id="127bLwWTsq4" role="33vP2m">
                                <node concept="liA8E" id="127bLwWTsq5" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                                </node>
                                <node concept="2JrnkZ" id="127bLwWTsq6" role="2Oq$k0">
                                  <node concept="2OqwBi" id="127bLwWTsq7" role="2JrQYb">
                                    <node concept="37vLTw" id="127bLwWTsq8" role="2Oq$k0">
                                      <ref role="3cqZAo" node="127bLwWTpu0" resolve="attrNode" />
                                    </node>
                                    <node concept="1mfA1w" id="127bLwWTsq9" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3Aqczg" id="127bLwWTsrI" role="3cqZAp">
                            <node concept="3Aqt3T" id="127bLwWTsrG" role="3Aqpz8">
                              <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                              <node concept="37jhX" id="127bLwWTssq" role="3AunhB">
                                <node concept="3A2sRY" id="127bLwWTsso" role="37jj2">
                                  <ref role="3A2yKK" node="127bLwWTode" resolve="lp" />
                                </node>
                              </node>
                              <node concept="ns1u0" id="127bLwWXv6F" role="3AunhB">
                                <ref role="ns1xF" to="jxwi:3bgqfmmLhUu" resolve="nodeList" />
                                <node concept="nsMwS" id="127bLwWXvYQ" role="ns1xD">
                                  <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                                  <node concept="37jhX" id="127bLwWTssA" role="iSaTp">
                                    <node concept="2YIFZM" id="127bLwWTswR" role="37jj2">
                                      <ref role="1Pybhc" to="tpeq:h9nq4jh" resolve="RulesUtil" />
                                      <ref role="37wK5l" to="tpeq:EDoXYsb2Yk" resolve="closestConceptNode" />
                                      <node concept="2OqwBi" id="127bLwWTsz$" role="37wK5m">
                                        <node concept="37vLTw" id="127bLwWTsys" role="2Oq$k0">
                                          <ref role="3cqZAo" node="127bLwWTsq3" resolve="role" />
                                        </node>
                                        <node concept="liA8E" id="127bLwWTtBH" role="2OqNvi">
                                          <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="127bLwWTtC1" role="3cqZAp" />
                        </node>
                        <node concept="9aQIb" id="127bLwWTq4L" role="9aQIa">
                          <node concept="3clFbS" id="127bLwWToiQ" role="9aQI4">
                            <node concept="3Aqczg" id="127bLwWTpv$" role="3cqZAp">
                              <node concept="3Aqt3T" id="127bLwWTpvz" role="3Aqpz8">
                                <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                                <node concept="37jhX" id="127bLwWTpvG" role="3AunhB">
                                  <node concept="3A2sRY" id="127bLwWTpvE" role="37jj2">
                                    <ref role="3A2yKK" node="127bLwWTode" resolve="lp" />
                                  </node>
                                </node>
                                <node concept="ns1u0" id="127bLwWTpDT" role="3AunhB">
                                  <ref role="ns1xF" to="jxwi:3bgqfmmLhUu" resolve="nodeList" />
                                  <node concept="nsMwS" id="127bLwWTq38" role="ns1xD">
                                    <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                                    <node concept="h$QuP" id="127bLwWTq3c" role="iSaTp">
                                      <ref role="h$OrH" to="tpck:gw2VY9q" resolve="BaseConcept" />
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
      <node concept="2t___k" id="127bLwWTodd" role="1nLNMg">
        <ref role="2t_S0q" to="tp3t:gyEdBcq" resolve="ListPattern" />
        <node concept="3A20r5" id="127bLwWTode" role="2t_VXX">
          <property role="TrG5h" value="lp" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="127bLwWTtUx" role="1nK1Vg">
      <property role="TrG5h" value="patternExpression" />
      <node concept="3clFbS" id="127bLwWTtUy" role="1nLNMH">
        <node concept="1nLNNL" id="127bLwWTu12" role="3cqZAp">
          <node concept="1nLNMm" id="127bLwWTu13" role="1nLNNK">
            <node concept="3Aq93q" id="127bLwWTu16" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="127bLwWTu17" role="3Ip0Jz">
                <node concept="3I6s7M" id="127bLwWTu1b" role="3I6sU7">
                  <node concept="3Aqt3T" id="127bLwWTu1a" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="127bLwWTu1m" role="3xSepv">
              <node concept="3Aq9E8" id="127bLwWTu1n" role="3xSepj">
                <node concept="3I6sU6" id="127bLwWTu1o" role="3Ip0Jz">
                  <node concept="3I6s7M" id="127bLwWTu1t" role="3I6sU7">
                    <node concept="3Aqt3T" id="127bLwWTu1s" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="127bLwWTu1E" role="3AunhB">
                        <node concept="3A2sRY" id="127bLwWTu1C" role="37jj2">
                          <ref role="3A2yKK" node="127bLwWTtU$" resolve="pe" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="127bLwWTu1P" role="3AunhB">
                        <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                        <node concept="nsMwS" id="127bLwWXlbu" role="ns1xD">
                          <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                          <node concept="37jhX" id="127bLwWXleh" role="iSaTp">
                            <node concept="2YIFZM" id="127bLwWXljg" role="37jj2">
                              <ref role="37wK5l" to="tpeq:EDoXYsb2Yk" resolve="closestConceptNode" />
                              <ref role="1Pybhc" to="tpeq:h9nq4jh" resolve="RulesUtil" />
                              <node concept="2OqwBi" id="127bLwWXnXg" role="37wK5m">
                                <node concept="2OqwBi" id="127bLwWXmpU" role="2Oq$k0">
                                  <node concept="2OqwBi" id="127bLwWXlng" role="2Oq$k0">
                                    <node concept="3A2sRY" id="127bLwWXlmN" role="2Oq$k0">
                                      <ref role="3A2yKK" node="127bLwWTtU$" resolve="pe" />
                                    </node>
                                    <node concept="3TrEf2" id="127bLwWXlSZ" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3t:7Qbh0xggLjd" resolve="pattern" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="127bLwWXnsr" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3r:hqc44pq" resolve="quotedNode" />
                                  </node>
                                </node>
                                <node concept="2yIwOk" id="127bLwWXoZ5" role="2OqNvi" />
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
      <node concept="2t___k" id="127bLwWTtUz" role="1nLNMg">
        <ref role="2t_S0q" to="tp3t:gyDMOuh" resolve="PatternExpression" />
        <node concept="3A20r5" id="127bLwWTtU$" role="2t_VXX">
          <property role="TrG5h" value="pe" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="127bLwWXpoZ" role="1nK1Vg">
      <property role="TrG5h" value="patternVariableDeclaration" />
      <node concept="3clFbS" id="127bLwWXpp0" role="1nLNMH">
        <node concept="1nLNNL" id="127bLwWXpwj" role="3cqZAp">
          <node concept="1nLNMm" id="127bLwWXpwk" role="1nLNNK">
            <node concept="3Aq93q" id="127bLwWXpwl" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="127bLwWXpwm" role="3Ip0Jz">
                <node concept="3I6s7M" id="127bLwWXpwn" role="3I6sU7">
                  <node concept="3Aqt3T" id="127bLwWXpwo" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="127bLwWXpwp" role="3xSepv">
              <node concept="3Aq9E8" id="127bLwWXpwq" role="3xSepj">
                <node concept="3I6sU6" id="127bLwWXpwr" role="3Ip0Jz">
                  <node concept="3IrJb3" id="127bLwWXpws" role="3I6sU7">
                    <node concept="3clFbS" id="127bLwWXpwt" role="3IrJb0">
                      <node concept="3cpWs8" id="127bLwWXpwu" role="3cqZAp">
                        <node concept="3cpWsn" id="127bLwWXpwv" role="3cpWs9">
                          <property role="TrG5h" value="attrNode" />
                          <node concept="3Tqbb2" id="127bLwWXpww" role="1tU5fm">
                            <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                          </node>
                          <node concept="2OqwBi" id="127bLwWXpwx" role="33vP2m">
                            <node concept="3A2sRY" id="127bLwWXp_p" role="2Oq$k0">
                              <ref role="3A2yKK" node="127bLwWXpp2" resolve="pvd" />
                            </node>
                            <node concept="1mfA1w" id="127bLwWXpwz" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="127bLwWXpw$" role="3cqZAp">
                        <node concept="3y3z36" id="127bLwWXpw_" role="3clFbw">
                          <node concept="2OqwBi" id="127bLwWXpwA" role="3uHU7B">
                            <node concept="37vLTw" id="127bLwWXpwB" role="2Oq$k0">
                              <ref role="3cqZAo" node="127bLwWXpwv" resolve="attrNode" />
                            </node>
                            <node concept="1mfA1w" id="127bLwWXpwC" role="2OqNvi" />
                          </node>
                          <node concept="10Nm6u" id="127bLwWXpwD" role="3uHU7w" />
                        </node>
                        <node concept="3clFbS" id="127bLwWXpwE" role="3clFbx">
                          <node concept="3cpWs8" id="127bLwWXpwF" role="3cqZAp">
                            <node concept="3cpWsn" id="127bLwWXpwG" role="3cpWs9">
                              <property role="TrG5h" value="link" />
                              <node concept="3uibUv" id="127bLwWXpwH" role="1tU5fm">
                                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
                              </node>
                              <node concept="2OqwBi" id="127bLwWXpwI" role="33vP2m">
                                <node concept="liA8E" id="127bLwWXpwJ" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                                </node>
                                <node concept="2JrnkZ" id="127bLwWXpwK" role="2Oq$k0">
                                  <node concept="2OqwBi" id="127bLwWXpwL" role="2JrQYb">
                                    <node concept="37vLTw" id="127bLwWXpwM" role="2Oq$k0">
                                      <ref role="3cqZAo" node="127bLwWXpwv" resolve="attrNode" />
                                    </node>
                                    <node concept="1mfA1w" id="127bLwWXpwN" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3Aqczg" id="127bLwWXpwO" role="3cqZAp">
                            <node concept="3Aqt3T" id="127bLwWXpwP" role="3Aqpz8">
                              <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                              <node concept="37jhX" id="127bLwWXpwQ" role="3AunhB">
                                <node concept="3A2sRY" id="127bLwWXpAs" role="37jj2">
                                  <ref role="3A2yKK" node="127bLwWXpp2" resolve="pvd" />
                                </node>
                              </node>
                              <node concept="ns1u0" id="127bLwWXrOK" role="3AunhB">
                                <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                                <node concept="nsMwS" id="127bLwWXsGY" role="ns1xD">
                                  <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                                  <node concept="37jhX" id="127bLwWXsLA" role="iSaTp">
                                    <node concept="1PxgMI" id="127bLwWXuTP" role="37jj2">
                                      <node concept="chp4Y" id="127bLwWXuUy" role="3oSUPX">
                                        <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                      </node>
                                      <node concept="2OqwBi" id="127bLwWXtP8" role="1m5AlR">
                                        <node concept="2OqwBi" id="127bLwWXsLR" role="2Oq$k0">
                                          <node concept="37vLTw" id="127bLwWXsL_" role="2Oq$k0">
                                            <ref role="3cqZAo" node="127bLwWXpwG" resolve="link" />
                                          </node>
                                          <node concept="liA8E" id="127bLwWXtOK" role="2OqNvi">
                                            <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="127bLwWXuSg" role="2OqNvi">
                                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getDeclarationNode()" resolve="getDeclarationNode" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="127bLwWXpwX" role="3cqZAp" />
                        </node>
                        <node concept="9aQIb" id="127bLwWXpwY" role="9aQIa">
                          <node concept="3clFbS" id="127bLwWXpwZ" role="9aQI4">
                            <node concept="3Aqczg" id="127bLwWXpx0" role="3cqZAp">
                              <node concept="3Aqt3T" id="127bLwWXpx1" role="3Aqpz8">
                                <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                                <node concept="37jhX" id="127bLwWXpx2" role="3AunhB">
                                  <node concept="3A2sRY" id="127bLwWXpAj" role="37jj2">
                                    <ref role="3A2yKK" node="127bLwWXpp2" resolve="pvd" />
                                  </node>
                                </node>
                                <node concept="ns1u0" id="127bLwWXpx4" role="3AunhB">
                                  <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                                  <node concept="nsMwS" id="127bLwWXpx5" role="ns1xD">
                                    <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                                    <node concept="h$QuP" id="127bLwWXpx6" role="iSaTp">
                                      <ref role="h$OrH" to="tpck:gw2VY9q" resolve="BaseConcept" />
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
      <node concept="2t___k" id="127bLwWXpp1" role="1nLNMg">
        <ref role="2t_S0q" to="tp3t:gyDMOuj" resolve="PatternVariableDeclaration" />
        <node concept="3A20r5" id="127bLwWXpp2" role="2t_VXX">
          <property role="TrG5h" value="pvd" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="127bLwWXwi3" role="1nK1Vg">
      <property role="TrG5h" value="propertyPatternVariableDeclaration" />
      <node concept="3clFbS" id="127bLwWXwi4" role="1nLNMH">
        <node concept="1nLNNL" id="127bLwWXwqr" role="3cqZAp">
          <node concept="1nLNMm" id="127bLwWXwqs" role="1nLNNK">
            <node concept="3Aq93q" id="127bLwWXwqv" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="127bLwWXwqw" role="3Ip0Jz">
                <node concept="3I6s7M" id="127bLwWXwq$" role="3I6sU7">
                  <node concept="3Aqt3T" id="127bLwWXwqz" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="127bLwWXwqB" role="3xSepv">
              <node concept="3Aq9E8" id="127bLwWXwqC" role="3xSepj">
                <node concept="3I6sU6" id="127bLwWXwqD" role="3Ip0Jz">
                  <node concept="3IrJb3" id="127bLwWXwqH" role="3I6sU7">
                    <node concept="3clFbS" id="127bLwWXwqI" role="3IrJb0">
                      <node concept="3clFbJ" id="127bLwWXwqL" role="3cqZAp">
                        <node concept="2OqwBi" id="127bLwWXwrk" role="3clFbw">
                          <node concept="3A2sRY" id="127bLwWXwqS" role="2Oq$k0">
                            <ref role="3A2yKK" node="127bLwWXwi6" resolve="ppvd" />
                          </node>
                          <node concept="3TrcHB" id="127bLwWXxsI" role="2OqNvi">
                            <ref role="3TsBF5" to="tp3r:1SDkaf46SBG" resolve="stringValueMigrated" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="127bLwWXwqN" role="3clFbx">
                          <node concept="3cpWs8" id="127bLwWXxsQ" role="3cqZAp">
                            <node concept="3cpWsn" id="127bLwWXxsR" role="3cpWs9">
                              <property role="TrG5h" value="datatypeBLType" />
                              <node concept="3Tqbb2" id="127bLwWXxsS" role="1tU5fm">
                                <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                              </node>
                              <node concept="2YIFZM" id="127bLwWXxsT" role="33vP2m">
                                <ref role="37wK5l" to="tpeq:4uA70LEglme" resolve="datatypeBLType" />
                                <ref role="1Pybhc" to="tpeq:h9nq4jh" resolve="RulesUtil" />
                                <node concept="2OqwBi" id="127bLwWXy$w" role="37wK5m">
                                  <node concept="2OqwBi" id="127bLwWXxyj" role="2Oq$k0">
                                    <node concept="3A2sRY" id="127bLwWXxxB" role="2Oq$k0">
                                      <ref role="3A2yKK" node="127bLwWXwi6" resolve="ppvd" />
                                    </node>
                                    <node concept="2qgKlT" id="127bLwWXy$7" role="2OqNvi">
                                      <ref role="37wK5l" to="tpcu:121FNPYBLc9" resolve="getPropertyDeclaration" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="127bLwWXzAM" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3Aqczg" id="127bLwWXxt3" role="3cqZAp">
                            <node concept="3jbYBd" id="127bLwWXxt4" role="3Aqpz8">
                              <ref role="3jbY9l" to="kqnc:5itBwMau8m1" resolve="lift" />
                              <node concept="37vLTw" id="127bLwWXxt5" role="3jbY8P">
                                <ref role="3cqZAo" node="127bLwWXxsR" resolve="datatypeBLType" />
                              </node>
                              <node concept="a7P8L" id="127bLwWXzBD" role="3jbY8V">
                                <ref role="a7OzE" node="127bLwWXzB1" resolve="DataT" />
                              </node>
                            </node>
                          </node>
                          <node concept="3Aqczg" id="127bLwWXxt7" role="3cqZAp">
                            <node concept="3Aqt3T" id="127bLwWXxt8" role="3Aqpz8">
                              <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                              <node concept="37jhX" id="127bLwWXxt9" role="3AunhB">
                                <node concept="3A2sRY" id="127bLwWXzBJ" role="37jj2">
                                  <ref role="3A2yKK" node="127bLwWXwi6" resolve="ppvd" />
                                </node>
                              </node>
                              <node concept="a7P8L" id="127bLwWXzBP" role="3AunhB">
                                <ref role="a7OzE" node="127bLwWXzB1" resolve="DataT" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="127bLwWXzCr" role="3cqZAp" />
                        </node>
                        <node concept="9aQIb" id="127bLwWXzBZ" role="9aQIa">
                          <node concept="3clFbS" id="127bLwWXzC0" role="9aQI4">
                            <node concept="3Aqczg" id="127bLwWXzDv" role="3cqZAp">
                              <node concept="3Aqt3T" id="127bLwWXzDu" role="3Aqpz8">
                                <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                                <node concept="37jhX" id="127bLwWXzDB" role="3AunhB">
                                  <node concept="3A2sRY" id="127bLwWXzD_" role="37jj2">
                                    <ref role="3A2yKK" node="127bLwWXwi6" resolve="ppvd" />
                                  </node>
                                </node>
                                <node concept="ns1u0" id="127bLwWXzDM" role="3AunhB">
                                  <ref role="ns1xF" to="kqnc:2HYHa0WV2R$" resolve="string" />
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
            <node concept="3NuqgR" id="127bLwWXzB0" role="0Rg$4">
              <node concept="aZer4" id="127bLwWXzB1" role="3XD1gS">
                <property role="TrG5h" value="DataT" />
              </node>
              <node concept="32pEOW" id="127bLwWXzBw" role="3vLBG7" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="127bLwWXwi5" role="1nLNMg">
        <ref role="2t_S0q" to="tp3t:gyDMOul" resolve="PropertyPatternVariableDeclaration" />
        <node concept="3A20r5" id="127bLwWXwi6" role="2t_VXX">
          <property role="TrG5h" value="ppvd" />
        </node>
      </node>
    </node>
  </node>
</model>

