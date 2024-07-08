<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f3742e97-df7f-4871-b236-a260f855967f(jetbrains.mps.baseLanguage.varVariableExt.types)">
  <persistence version="9" />
  <languages>
    <use id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" version="1" />
    <devkit ref="888618cf-7697-4adc-80cd-8c6ea3486ef7(jetbrains.mps.devkit.aspect.types)" />
  </languages>
  <imports>
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.baseLanguageExt.types)" />
    <import index="dvap" ref="r:931e38db-856b-4b95-8ae0-a7cd13da6d32(jetbrains.mps.baseLanguage.varVariable.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="8456919074574710634" name="jetbrains.mps.logic.structure.ExpressionItem" flags="ng" index="37jhX">
        <child id="8456919074574710741" name="code" index="37jj2" />
      </concept>
      <concept id="8169506320648805904" name="jetbrains.mps.logic.structure.LogicalVariableDeclarationContainer" flags="ngI" index="29MRiA">
        <child id="6399471711045617306" name="dataType" index="3vLBG7" />
        <child id="3063948360254832884" name="declaration" index="3XD1gS" />
      </concept>
      <concept id="8829335963593820278" name="jetbrains.mps.logic.structure.LogicalVariable" flags="ng" index="a7P8L">
        <reference id="8829335963593822893" name="declaration" index="a7OzE" />
      </concept>
      <concept id="8829335963591572611" name="jetbrains.mps.logic.structure.LogicalVariableDeclaration" flags="ng" index="aZer4">
        <child id="6036655413809169524" name="cardinalityExpr" index="3gj$pD" />
      </concept>
      <concept id="6856711987710888499" name="jetbrains.mps.logic.structure.DataNodeLiteral" flags="ng" index="Hz6ka">
        <child id="6856711987710888500" name="root" index="Hz6kd" />
      </concept>
      <concept id="960803923479540328" name="jetbrains.mps.logic.structure.LogicalVariableDataForm" flags="ng" index="3wAshV">
        <child id="960803923479549586" name="variable" index="3wAq21" />
      </concept>
      <concept id="1432138691741609740" name="jetbrains.mps.logic.structure.ConsListNode" flags="ng" index="1Pxxm1">
        <child id="1432138691741609741" name="head" index="1Pxxm0" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules">
      <concept id="1618328391714763069" name="jetbrains.mps.lang.coderules.structure.MacroTable" flags="ng" index="0oKg$">
        <reference id="6097203247219331496" name="extends" index="3tg4Y$" />
        <child id="1618328391714763070" name="macro" index="0oKgB" />
      </concept>
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
        <child id="3972229586022038333" name="parameter" index="1Q0WFY" />
      </concept>
      <concept id="4957570047283823112" name="jetbrains.mps.lang.coderules.structure.ProvideFeedbackConstraint" flags="ng" index="1lHd6T">
        <property id="4957570047283824112" name="severity" index="1lHdp1" />
        <child id="4957570047284421439" name="message" index="1ljv2e" />
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
      <concept id="8908809128801951597" name="jetbrains.mps.lang.coderules.structure.MacroBodyLogicalDeclaration" flags="ng" index="3uniRu" />
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
      <concept id="7368070394767045637" name="jetbrains.mps.lang.coderules.structure.UserConstraint" flags="ng" index="3Aqt3T">
        <reference id="7368070394767091750" name="template" index="3AqCNq" />
        <child id="7368070394768117915" name="argument" index="3AunhB" />
      </concept>
      <concept id="1534124788579507963" name="jetbrains.mps.lang.coderules.structure.OriginSpec" flags="ng" index="3Hbl2A">
        <child id="1534124788579511329" name="origin" index="3Hbm9W" />
      </concept>
      <concept id="2316688792938826204" name="jetbrains.mps.lang.coderules.structure.ConstraintLogicalClause" flags="ng" index="3I6s7M">
        <child id="2316688792938826214" name="constraint" index="3I6s78" />
      </concept>
      <concept id="2316688792938825384" name="jetbrains.mps.lang.coderules.structure.LogicalClauseList" flags="ng" index="3I6sU6">
        <child id="2316688792938825385" name="clauses" index="3I6sU7" />
      </concept>
      <concept id="965748826975413063" name="jetbrains.mps.lang.coderules.structure.RulePartParameterDeclaration" flags="ng" index="3NuqgR" />
      <concept id="3972229586021710485" name="jetbrains.mps.lang.coderules.structure.ExpandMacroParameterUsage" flags="ng" index="1QfGHm">
        <reference id="3972229586021710487" name="declaration" index="1QfGHk" />
      </concept>
    </language>
  </registry>
  <node concept="0oKg$" id="6WjmmdEQ2oa">
    <property role="TrG5h" value="VarVariable" />
    <ref role="3tg4Y$" to="kqnc:E1U1n2RerB" resolve="Types" />
    <node concept="3iyZe8" id="6WjmmdEQ3DD" role="0oKgB">
      <ref role="3iRiWT" to="kqnc:5itBwMau8m1" resolve="lift" />
      <node concept="3clFbS" id="6WjmmdEQ3DE" role="3iwQuN">
        <node concept="3SKdUt" id="6WjmmdEQ3I2" role="3cqZAp">
          <node concept="1PaTwC" id="6WjmmdEQ3I3" role="1aUNEU">
            <node concept="3oM_SD" id="6WjmmdEQ3I4" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="6WjmmdEQ3I6" role="1PaTwD">
              <property role="3oM_SC" value="nothing" />
            </node>
            <node concept="3oM_SD" id="6WjmmdEQ3IE" role="1PaTwD">
              <property role="3oM_SC" value="--" />
            </node>
            <node concept="3oM_SD" id="6WjmmdEQ3Jd" role="1PaTwD">
              <property role="3oM_SC" value="leave" />
            </node>
            <node concept="3oM_SD" id="6WjmmdEQ3JK" role="1PaTwD">
              <property role="3oM_SC" value="Type" />
            </node>
            <node concept="3oM_SD" id="6WjmmdEQ3O4" role="1PaTwD">
              <property role="3oM_SC" value="unassigned" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uniRu" id="6WjmmdEQ3DF" role="3tb1AD">
        <node concept="32pEOW" id="6WjmmdEQ3DG" role="3vLBG7" />
        <node concept="aZer4" id="6WjmmdEQ3DH" role="3XD1gS">
          <property role="TrG5h" value="Type" />
        </node>
      </node>
      <node concept="1QfGHm" id="6WjmmdEQ3DI" role="1Q0WFY">
        <property role="TrG5h" value="substitution" />
        <ref role="1QfGHk" to="kqnc:5itBwMaLICh" resolve="substitution" />
      </node>
      <node concept="1QfGHm" id="6WjmmdEQ3DJ" role="1Q0WFY">
        <property role="TrG5h" value="Bound" />
        <ref role="1QfGHk" to="kqnc:6BYZfeEX8SG" resolve="Bound" />
      </node>
      <node concept="3ixlbQ" id="6WjmmdEQ3DK" role="3iweTQ">
        <ref role="3ixz9q" to="dvap:h8PeGkH" resolve="VarType" />
        <node concept="3ixQyH" id="6WjmmdEQ3DL" role="3ix8rx">
          <property role="TrG5h" value="vt" />
        </node>
      </node>
    </node>
  </node>
  <node concept="AVZre" id="6WjmmdESQ1A">
    <property role="TrG5h" value="VarDecl" />
    <ref role="2YbDB9" to="kqnc:34$A1Mf51rY" resolve="TypeOf" />
    <node concept="1nLNMY" id="6WjmmdESQa8" role="1nK1Vg">
      <property role="TrG5h" value="varVariableDeclaration" />
      <node concept="3clFbS" id="6WjmmdESQa9" role="1nLNMH">
        <node concept="3clFbJ" id="6WjmmdESQbj" role="3cqZAp">
          <node concept="2OqwBi" id="6WjmmdESSX_" role="3clFbw">
            <node concept="2OqwBi" id="6WjmmdESQwG" role="2Oq$k0">
              <node concept="3A2sRY" id="6WjmmdESQbY" role="2Oq$k0">
                <ref role="3A2yKK" node="6WjmmdESQab" resolve="vvd" />
              </node>
              <node concept="1mfA1w" id="6WjmmdESSNX" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="6WjmmdESTaK" role="2OqNvi">
              <node concept="chp4Y" id="6WjmmdESTh5" role="cj9EA">
                <ref role="cht4Q" to="tpee:gDDcWSN" resolve="ForeachStatement" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6WjmmdESQbl" role="3clFbx">
            <node concept="3cpWs8" id="6WjmmdESXYD" role="3cqZAp">
              <node concept="3cpWsn" id="6WjmmdESXYE" role="3cpWs9">
                <property role="TrG5h" value="iterable" />
                <node concept="3Tqbb2" id="6WjmmdESVBS" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
                </node>
                <node concept="2OqwBi" id="6WjmmdESXYF" role="33vP2m">
                  <node concept="1PxgMI" id="6WjmmdESXYG" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="6WjmmdESXYH" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:gDDcWSN" resolve="ForeachStatement" />
                    </node>
                    <node concept="2OqwBi" id="6WjmmdESXYI" role="1m5AlR">
                      <node concept="3A2sRY" id="6WjmmdESXYJ" role="2Oq$k0">
                        <ref role="3A2yKK" node="6WjmmdESQab" resolve="vvd" />
                      </node>
                      <node concept="1mfA1w" id="6WjmmdESXYK" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="6WjmmdESXYL" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gDDdaHA" resolve="iterable" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Hbl2A" id="6WjmmdET1wX" role="3cqZAp">
              <node concept="3clFbS" id="6WjmmdET1wZ" role="9aQI4">
                <node concept="1nLNNL" id="6WjmmdESTte" role="3cqZAp">
                  <node concept="1nLNMm" id="6WjmmdESTtf" role="1nLNNK">
                    <node concept="3Aq93q" id="6WjmmdESTtm" role="1nLNMb">
                      <property role="3ArMco" value="true" />
                      <node concept="3I6sU6" id="6WjmmdESTtn" role="3Ip0Jz">
                        <node concept="3I6s7M" id="6WjmmdESTvP" role="3I6sU7">
                          <node concept="3Aqt3T" id="6WjmmdESTvO" role="3I6s78">
                            <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                            <node concept="37jhX" id="6WjmmdESTyX" role="3AunhB">
                              <node concept="37vLTw" id="6WjmmdESXYM" role="37jj2">
                                <ref role="3cqZAo" node="6WjmmdESXYE" resolve="iterable" />
                              </node>
                            </node>
                            <node concept="a7P8L" id="6WjmmdESVGn" role="3AunhB">
                              <ref role="a7OzE" node="6WjmmdESTvS" resolve="IterableT" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3NuqgR" id="6WjmmdESTvR" role="0Rg$4">
                      <node concept="aZer4" id="6WjmmdESTvS" role="3XD1gS">
                        <property role="TrG5h" value="IterableT" />
                      </node>
                      <node concept="aZer4" id="6WjmmdESW_F" role="3XD1gS">
                        <property role="TrG5h" value="ElemT" />
                      </node>
                      <node concept="aZer4" id="6WjmmdESXcm" role="3XD1gS">
                        <property role="TrG5h" value="ArrayT" />
                        <node concept="3cmrfG" id="6WjmmdESXeo" role="3gj$pD">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                      <node concept="32pEOW" id="6WjmmdESTwz" role="3vLBG7" />
                    </node>
                    <node concept="3xSepi" id="6WjmmdESVJl" role="3xSepv">
                      <node concept="3Aq9E8" id="6WjmmdESVJm" role="3xSepj">
                        <node concept="3I6sU6" id="6WjmmdESVJn" role="3Ip0Jz">
                          <node concept="3I6s7M" id="6WjmmdESWKY" role="3I6sU7">
                            <node concept="3Aqt3T" id="6WjmmdESWKX" role="3I6s78">
                              <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="defaultConvertsTo" />
                              <node concept="a7P8L" id="6WjmmdESWM6" role="3AunhB">
                                <ref role="a7OzE" node="6WjmmdESTvS" resolve="IterableT" />
                              </node>
                              <node concept="ns1u0" id="6WjmmdESWQl" role="3AunhB">
                                <ref role="ns1xF" to="kqnc:JOGAOsVt2a" resolve="classifier" />
                                <node concept="nsMwS" id="6WjmmdESWSh" role="ns1xD">
                                  <ref role="nsMwP" to="kqnc:JOGAOsVt2c" resolve="classifier" />
                                  <node concept="h$QuP" id="6WjmmdESWXV" role="iSaTp">
                                    <ref role="h$OrH" to="wyt6:~Iterable" resolve="Iterable" />
                                  </node>
                                </node>
                                <node concept="nsMwS" id="6WjmmdESWZ0" role="ns1xD">
                                  <ref role="nsMwP" to="kqnc:ZJPHcupkiC" resolve="typeParams" />
                                  <node concept="Hz6ka" id="6WjmmdESXvQ" role="iSaTp">
                                    <node concept="1Pxxm1" id="6WjmmdESXvP" role="Hz6kd">
                                      <node concept="3wAshV" id="6WjmmdESXzh" role="1Pxxm0">
                                        <node concept="a7P8L" id="6WjmmdESXzg" role="3wAq21">
                                          <ref role="a7OzE" node="6WjmmdESW_F" resolve="ElemT" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3I6s7M" id="6WjmmdESXM9" role="3I6sU7">
                            <node concept="3Aqt3T" id="6WjmmdESXM8" role="3I6s78">
                              <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                              <node concept="37jhX" id="6WjmmdESXNh" role="3AunhB">
                                <node concept="3A2sRY" id="6WjmmdESXNf" role="37jj2">
                                  <ref role="3A2yKK" node="6WjmmdESQab" resolve="vvd" />
                                </node>
                              </node>
                              <node concept="a7P8L" id="6WjmmdESXNY" role="3AunhB">
                                <ref role="a7OzE" node="6WjmmdESW_F" resolve="ElemT" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3xSepi" id="6WjmmdESX$r" role="3xSepv">
                      <node concept="3Aq9E8" id="6WjmmdESX$s" role="3xSepj">
                        <node concept="3I6sU6" id="6WjmmdESX$t" role="3Ip0Jz">
                          <node concept="3I6s7M" id="6WjmmdESXA4" role="3I6sU7">
                            <node concept="3Aqt3T" id="6WjmmdESXA5" role="3I6s78">
                              <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="defaultConvertsTo" />
                              <node concept="a7P8L" id="6WjmmdESXA6" role="3AunhB">
                                <ref role="a7OzE" node="6WjmmdESTvS" resolve="IterableT" />
                              </node>
                              <node concept="ns1u0" id="6WjmmdESXEW" role="3AunhB">
                                <ref role="ns1xF" to="kqnc:JOGAOsVt2o" resolve="array" />
                                <node concept="nsMwS" id="6WjmmdESXG3" role="ns1xD">
                                  <ref role="nsMwP" to="kqnc:39Sam6Zio_N" resolve="parameter" />
                                  <node concept="a7P8L" id="6WjmmdESXIg" role="iSaTp">
                                    <ref role="a7OzE" node="6WjmmdESW_F" resolve="ElemT" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3I6s7M" id="6WjmmdESXP9" role="3I6sU7">
                            <node concept="3Aqt3T" id="6WjmmdESXPa" role="3I6s78">
                              <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                              <node concept="37jhX" id="6WjmmdESXPb" role="3AunhB">
                                <node concept="3A2sRY" id="6WjmmdESXPc" role="37jj2">
                                  <ref role="3A2yKK" node="6WjmmdESQab" resolve="vvd" />
                                </node>
                              </node>
                              <node concept="a7P8L" id="6WjmmdESXPd" role="3AunhB">
                                <ref role="a7OzE" node="6WjmmdESW_F" resolve="ElemT" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3xSepi" id="6WjmmdESXJq" role="3xSepv">
                      <node concept="3Aq9E8" id="6WjmmdESXJr" role="3xSepj">
                        <node concept="3I6sU6" id="6WjmmdESXJs" role="3Ip0Jz">
                          <node concept="3I6s7M" id="6WjmmdET1rX" role="3I6sU7">
                            <node concept="1lHd6T" id="6WjmmdET1rW" role="3I6s78">
                              <property role="1lHdp1" value="4jcOV4hu0n_/ERROR" />
                              <node concept="Xl_RD" id="6WjmmdET1rY" role="1ljv2e">
                                <property role="Xl_RC" value="iterable or array type expected" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6WjmmdET21V" role="3Hbm9W">
                <ref role="3cqZAo" node="6WjmmdESXYE" resolve="iterable" />
              </node>
            </node>
            <node concept="3clFbH" id="6WjmmdESVHT" role="3cqZAp" />
          </node>
          <node concept="9aQIb" id="6WjmmdESTnr" role="9aQIa">
            <node concept="3clFbS" id="6WjmmdESTns" role="9aQI4">
              <node concept="1nLNNL" id="6WjmmdESYGn" role="3cqZAp">
                <node concept="1nLNMm" id="6WjmmdESYGo" role="1nLNNK">
                  <node concept="3Aq93q" id="6WjmmdESYJ_" role="1nLNMb">
                    <property role="3ArMco" value="true" />
                    <node concept="3I6sU6" id="6WjmmdESYJA" role="3Ip0Jz">
                      <node concept="3I6s7M" id="6WjmmdESYLg" role="3I6sU7">
                        <node concept="3Aqt3T" id="6WjmmdESYLf" role="3I6s78">
                          <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                          <node concept="37jhX" id="6WjmmdESYLQ" role="3AunhB">
                            <node concept="2OqwBi" id="6WjmmdESZ36" role="37jj2">
                              <node concept="3A2sRY" id="6WjmmdESYLO" role="2Oq$k0">
                                <ref role="3A2yKK" node="6WjmmdESQab" resolve="vvd" />
                              </node>
                              <node concept="3TrEf2" id="6WjmmdESZOO" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpee:fz3vP1I" resolve="initializer" />
                              </node>
                            </node>
                          </node>
                          <node concept="a7P8L" id="6WjmmdESZUA" role="3AunhB">
                            <ref role="a7OzE" node="6WjmmdESYHv" resolve="InitT" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3NuqgR" id="6WjmmdESYHu" role="0Rg$4">
                    <node concept="aZer4" id="6WjmmdESYHv" role="3XD1gS">
                      <property role="TrG5h" value="InitT" />
                    </node>
                    <node concept="32pEOW" id="6WjmmdESYHC" role="3vLBG7" />
                  </node>
                  <node concept="3xSepi" id="6WjmmdESZVK" role="3xSepv">
                    <node concept="3Aq9E8" id="6WjmmdESZVL" role="3xSepj">
                      <node concept="3I6sU6" id="6WjmmdESZVM" role="3Ip0Jz">
                        <node concept="3I6s7M" id="6WjmmdET02Q" role="3I6sU7">
                          <node concept="3Aqt3T" id="6WjmmdET02P" role="3I6s78">
                            <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                            <node concept="37jhX" id="6WjmmdET03W" role="3AunhB">
                              <node concept="3A2sRY" id="6WjmmdET03V" role="37jj2">
                                <ref role="3A2yKK" node="6WjmmdESQab" resolve="vvd" />
                              </node>
                            </node>
                            <node concept="a7P8L" id="6WjmmdET0$A" role="3AunhB">
                              <ref role="a7OzE" node="6WjmmdESYHv" resolve="InitT" />
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
      <node concept="2t___k" id="6WjmmdESQaa" role="1nLNMg">
        <ref role="2t_S0q" to="dvap:hZKEzqp" resolve="VarVariableDeclaration" />
        <node concept="3A20r5" id="6WjmmdESQab" role="2t_VXX">
          <property role="TrG5h" value="vvd" />
        </node>
      </node>
    </node>
  </node>
</model>

