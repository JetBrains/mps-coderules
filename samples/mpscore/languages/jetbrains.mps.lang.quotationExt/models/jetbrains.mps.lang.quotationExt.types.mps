<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b032c892-0e47-41a2-a57c-8c2e7961e3dd(jetbrains.mps.lang.quotationExt.types)">
  <persistence version="9" />
  <languages>
    <use id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" version="0" />
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules" version="23" />
    <engage id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tp3r" ref="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" />
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.baseLanguageExt.types)" />
    <import index="jxwi" ref="r:6ecd2c91-8e0b-4c6a-878e-d699a7336100(jetbrains.mps.lang.smodelExt.types)" />
    <import index="yh6q" ref="r:14dbdd37-ab02-4407-8e3c-3308d6f4fbba(jetbrains.mps.baseLanguage.sequence.types)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpeq" ref="r:00000000-0000-4000-0000-011c895902fe(jetbrains.mps.lang.smodel.typesystem)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="ii9q" ref="r:1dca5eee-6e62-48f8-9e94-dbbe31be2456(jetbrains.mps.lang.quotation.behavior)" />
    <import index="wi9y" ref="r:cca2ab69-9222-4f50-95ac-2249d9193ff6(jetbrains.mps.baseLanguage.collectionsExt.types)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
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
        <child id="6036655413806858011" name="indexExpr" index="3gCZO6" />
      </concept>
      <concept id="8829335963591572611" name="jetbrains.mps.logic.structure.LogicalVariableDeclaration" flags="ng" index="aZer4">
        <child id="6036655413809169524" name="cardinalityExpr" index="3gj$pD" />
      </concept>
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
      <concept id="8866923313515890008" name="jetbrains.mps.lang.smodel.structure.AsNodeOperation" flags="nn" index="FGMqu" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
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
      <concept id="5042557354438383712" name="jetbrains.mps.lang.coderules.structure.TermListType" flags="ig" index="VbTHi" />
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
  <node concept="AVZre" id="5zhVuyLciHC">
    <property role="TrG5h" value="builder" />
    <ref role="2YbDB9" to="kqnc:34$A1Mf51rY" resolve="TypeOf" />
    <node concept="1nLNMY" id="5zhVuyLciOM" role="1nK1Vg">
      <property role="TrG5h" value="nodeBuilderExpression" />
      <node concept="3clFbS" id="5zhVuyLciON" role="1nLNMH">
        <node concept="1nLNNL" id="5zhVuyLciOZ" role="3cqZAp">
          <node concept="1nLNMm" id="5zhVuyLciP1" role="1nLNNK">
            <node concept="3Aq93q" id="5zhVuyLciP5" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="5zhVuyLciP6" role="3Ip0Jz">
                <node concept="3I6s7M" id="5zhVuyLciS8" role="3I6sU7">
                  <node concept="3Aqt3T" id="5zhVuyLciS7" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="5zhVuyLciSi" role="3AunhB">
                      <node concept="2OqwBi" id="5zhVuyLcj0U" role="37jj2">
                        <node concept="3A2sRY" id="5zhVuyLciSg" role="2Oq$k0">
                          <ref role="3A2yKK" node="5zhVuyLciOP" resolve="nbe" />
                        </node>
                        <node concept="3TrEf2" id="5zhVuyLcjaR" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="5zhVuyLcjdB" role="3AunhB">
                      <ref role="a7OzE" node="5zhVuyLcjda" resolve="ExType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="5zhVuyLcjd9" role="0Rg$4">
              <node concept="aZer4" id="5zhVuyLcjda" role="3XD1gS">
                <property role="TrG5h" value="ExType" />
              </node>
              <node concept="32pEOW" id="5zhVuyLcjdm" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="5zhVuyLcjdM" role="3xSepv">
              <node concept="3Aq9E8" id="5zhVuyLcjdN" role="3xSepj">
                <node concept="3I6sU6" id="5zhVuyLcjdO" role="3Ip0Jz">
                  <node concept="3I6s7M" id="5zhVuyLcjdT" role="3I6sU7">
                    <node concept="3Aqt3T" id="5zhVuyLcjdS" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="5zhVuyLcje0" role="3AunhB">
                        <node concept="3A2sRY" id="5zhVuyLcjdY" role="37jj2">
                          <ref role="3A2yKK" node="5zhVuyLciOP" resolve="nbe" />
                        </node>
                      </node>
                      <node concept="a7P8L" id="5zhVuyLcjeg" role="3AunhB">
                        <ref role="a7OzE" node="5zhVuyLcjda" resolve="ExType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="5zhVuyLciOO" role="1nLNMg">
        <ref role="2t_S0q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
        <node concept="3A20r5" id="5zhVuyLciOP" role="2t_VXX">
          <property role="TrG5h" value="nbe" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="5zhVuyLcjp6" role="1nK1Vg">
      <property role="TrG5h" value="nodeBuilderList" />
      <node concept="3clFbS" id="5zhVuyLcjp7" role="1nLNMH">
        <node concept="3cpWs8" id="5zhVuyLcjpF" role="3cqZAp">
          <node concept="3cpWsn" id="76efOMRDy9U" role="3cpWs9">
            <property role="TrG5h" value="lval" />
            <node concept="3Tqbb2" id="76efOMRDy9V" role="1tU5fm">
              <ref role="ehGHo" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
            </node>
            <node concept="1PxgMI" id="76efOMRDyaH" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="2OqwBi" id="76efOMRDyag" role="1m5AlR">
                <node concept="1mfA1w" id="76efOMRDyal" role="2OqNvi" />
                <node concept="3A2sRY" id="5zhVuyLcjqU" role="2Oq$k0">
                  <ref role="3A2yKK" node="5zhVuyLcjp9" resolve="nbl" />
                </node>
              </node>
              <node concept="chp4Y" id="714IaVdGYKZ" role="3oSUPX">
                <ref role="cht4Q" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1nLNNL" id="5zhVuyLcjr$" role="3cqZAp">
          <node concept="1nLNMm" id="5zhVuyLcjrA" role="1nLNNK">
            <node concept="3Aq93q" id="5zhVuyLcntW" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="5zhVuyLcntX" role="3Ip0Jz">
                <node concept="3IrJb3" id="5zhVuyLcnu4" role="3I6sU7">
                  <node concept="3clFbS" id="5zhVuyLcnu5" role="3IrJb0">
                    <node concept="1Dw8fO" id="5zhVuyLcwKa" role="3cqZAp">
                      <node concept="3clFbS" id="5zhVuyLcwKc" role="2LFqv$">
                        <node concept="3cpWs8" id="5zhVuyLcAdQ" role="3cqZAp">
                          <node concept="3cpWsn" id="5zhVuyLcAdR" role="3cpWs9">
                            <property role="TrG5h" value="idx" />
                            <property role="3TUv4t" value="true" />
                            <node concept="10Oyi0" id="5zhVuyLcAdP" role="1tU5fm" />
                            <node concept="37vLTw" id="5zhVuyLcAdS" role="33vP2m">
                              <ref role="3cqZAo" node="5zhVuyLcwKd" resolve="i" />
                            </node>
                          </node>
                        </node>
                        <node concept="3Aqczg" id="5zhVuyLcntT" role="3cqZAp">
                          <node concept="3Aqt3T" id="5zhVuyLcntS" role="3Aqpz8">
                            <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                            <node concept="37jhX" id="5zhVuyLcvc$" role="3AunhB">
                              <node concept="1y4W85" id="5zhVuyLcDtE" role="37jj2">
                                <node concept="37vLTw" id="5zhVuyLcELd" role="1y58nS">
                                  <ref role="3cqZAo" node="5zhVuyLcAdR" resolve="idx" />
                                </node>
                                <node concept="2OqwBi" id="5zhVuyLcAE_" role="1y566C">
                                  <node concept="3A2sRY" id="5zhVuyLcAt8" role="2Oq$k0">
                                    <ref role="3A2yKK" node="5zhVuyLcjp9" resolve="nbl" />
                                  </node>
                                  <node concept="3Tsc0h" id="5zhVuyLcC68" role="2OqNvi">
                                    <ref role="3TtcxE" to="tp3r:76efOMRCHWN" resolve="nodes" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="a7P8L" id="5zhVuyLcvi3" role="3AunhB">
                              <ref role="a7OzE" node="5zhVuyLco8s" resolve="NodeType" />
                              <node concept="37vLTw" id="5zhVuyLcEM2" role="3gCZO6">
                                <ref role="3cqZAo" node="5zhVuyLcAdR" resolve="idx" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="5zhVuyLcwKd" role="1Duv9x">
                        <property role="TrG5h" value="i" />
                        <node concept="10Oyi0" id="5zhVuyLcwKA" role="1tU5fm" />
                        <node concept="3cmrfG" id="5zhVuyLcwKP" role="33vP2m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="3eOVzh" id="5zhVuyLcx_H" role="1Dwp0S">
                        <node concept="37vLTw" id="5zhVuyLcwKY" role="3uHU7B">
                          <ref role="3cqZAo" node="5zhVuyLcwKd" resolve="i" />
                        </node>
                        <node concept="2OqwBi" id="5zhVuyLczoG" role="3uHU7w">
                          <node concept="2OqwBi" id="5zhVuyLcx_Y" role="2Oq$k0">
                            <node concept="3A2sRY" id="5zhVuyLcx_Z" role="2Oq$k0">
                              <ref role="3A2yKK" node="5zhVuyLcjp9" resolve="nbl" />
                            </node>
                            <node concept="3Tsc0h" id="5zhVuyLcxA0" role="2OqNvi">
                              <ref role="3TtcxE" to="tp3r:76efOMRCHWN" resolve="nodes" />
                            </node>
                          </node>
                          <node concept="34oBXx" id="5zhVuyLcAa_" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3uNrnE" id="5zhVuyLcAcr" role="1Dwrff">
                        <node concept="37vLTw" id="5zhVuyLcAct" role="2$L3a6">
                          <ref role="3cqZAo" node="5zhVuyLcwKd" resolve="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="5zhVuyLcjrU" role="3xSepv">
              <node concept="3Aq9E8" id="5zhVuyLcjrV" role="3xSepj">
                <node concept="3I6sU6" id="5zhVuyLcjrW" role="3Ip0Jz">
                  <node concept="3I6s7M" id="5zhVuyLcEQb" role="3I6sU7">
                    <node concept="3Aqt3T" id="5zhVuyLcEQa" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:1yt2T3T1J_l" resolve="convertsAllTo" />
                      <node concept="a7P8L" id="5zhVuyLcEQg" role="3AunhB">
                        <ref role="a7OzE" node="5zhVuyLco8s" resolve="NodeType" />
                      </node>
                      <node concept="ns1u0" id="5zhVuyLcFcr" role="3AunhB">
                        <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                        <node concept="nsMwS" id="5zhVuyLcFcu" role="ns1xD">
                          <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                          <node concept="37jhX" id="ZNYugu2LzT" role="iSaTp">
                            <node concept="2OqwBi" id="5zhVuyLcFGJ" role="37jj2">
                              <node concept="2OqwBi" id="5zhVuyLcFl2" role="2Oq$k0">
                                <node concept="37vLTw" id="5zhVuyLcFcy" role="2Oq$k0">
                                  <ref role="3cqZAo" node="76efOMRDy9U" resolve="lval" />
                                </node>
                                <node concept="3TrEf2" id="5zhVuyLcFu_" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="5zhVuyLcFZt" role="2OqNvi">
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
            <node concept="3NuqgR" id="5zhVuyLco8r" role="0Rg$4">
              <node concept="aZer4" id="5zhVuyLco8s" role="3XD1gS">
                <property role="TrG5h" value="NodeType" />
                <node concept="2OqwBi" id="5zhVuyLcqP5" role="3gj$pD">
                  <node concept="2OqwBi" id="5zhVuyLco9A" role="2Oq$k0">
                    <node concept="3A2sRY" id="5zhVuyLco9B" role="2Oq$k0">
                      <ref role="3A2yKK" node="5zhVuyLcjp9" resolve="nbl" />
                    </node>
                    <node concept="3Tsc0h" id="5zhVuyLco9C" role="2OqNvi">
                      <ref role="3TtcxE" to="tp3r:76efOMRCHWN" resolve="nodes" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="5zhVuyLcu0V" role="2OqNvi" />
                </node>
              </node>
              <node concept="VbTHi" id="5zhVuyLco8C" role="3vLBG7" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="5zhVuyLcjp8" role="1nLNMg">
        <ref role="2t_S0q" to="tp3r:76efOMRCHWM" resolve="NodeBuilderList" />
        <node concept="3A20r5" id="5zhVuyLcjp9" role="2t_VXX">
          <property role="TrG5h" value="nbl" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="5zhVuyLcGi7" role="1nK1Vg">
      <property role="TrG5h" value="nodeBuilderInitLink" />
      <node concept="3clFbS" id="5zhVuyLcGi8" role="1nLNMH">
        <node concept="1nLNNL" id="5zhVuyLcHhK" role="3cqZAp">
          <node concept="1nLNMm" id="5zhVuyLcHhM" role="1nLNNK">
            <node concept="3Aq93q" id="5zhVuyLcHnn" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="5zhVuyLcHno" role="3Ip0Jz">
                <node concept="3I6s7M" id="5zhVuyLcHns" role="3I6sU7">
                  <node concept="3Aqt3T" id="5zhVuyLcHnr" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="5zhVuyLcHo_" role="3AunhB">
                      <node concept="2OqwBi" id="5zhVuyLcHxc" role="37jj2">
                        <node concept="3A2sRY" id="5zhVuyLcHoz" role="2Oq$k0">
                          <ref role="3A2yKK" node="5zhVuyLcGia" resolve="nbil" />
                        </node>
                        <node concept="2qgKlT" id="5zhVuyLcHMD" role="2OqNvi">
                          <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="5zhVuyLcHPe" role="3AunhB">
                      <ref role="a7OzE" node="5zhVuyLcHnx" resolve="ValueType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="5zhVuyLcHnw" role="0Rg$4">
              <node concept="aZer4" id="5zhVuyLcHnx" role="3XD1gS">
                <property role="TrG5h" value="ValueType" />
              </node>
              <node concept="32pEOW" id="5zhVuyLcHnH" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="5zhVuyLcHPE" role="3xSepv">
              <node concept="3Aq9E8" id="5zhVuyLcHPF" role="3xSepj">
                <node concept="3I6sU6" id="5zhVuyLcHPG" role="3Ip0Jz">
                  <node concept="3IrJb3" id="5zhVuyLcHQ1" role="3I6sU7">
                    <node concept="3clFbS" id="5zhVuyLcHQ2" role="3IrJb0">
                      <node concept="3clFbJ" id="5zhVuyLcGjJ" role="3cqZAp">
                        <node concept="2OqwBi" id="5zhVuyLcGQN" role="3clFbw">
                          <node concept="2OqwBi" id="5zhVuyLcGuo" role="2Oq$k0">
                            <node concept="3A2sRY" id="5zhVuyLcGjV" role="2Oq$k0">
                              <ref role="3A2yKK" node="5zhVuyLcGia" resolve="nbil" />
                            </node>
                            <node concept="3TrEf2" id="5zhVuyLcGC4" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="5zhVuyLcHbX" role="2OqNvi">
                            <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="5zhVuyLcGjL" role="3clFbx">
                          <node concept="3Aqczg" id="5zhVuyLcHRj" role="3cqZAp">
                            <node concept="3Aqt3T" id="5zhVuyLcHRi" role="3Aqpz8">
                              <ref role="3AqCNq" to="kqnc:3vTJNooZDgN" resolve="convertsTo" />
                              <node concept="a7P8L" id="5zhVuyLcHRq" role="3AunhB">
                                <ref role="a7OzE" node="5zhVuyLcHnx" resolve="ValueType" />
                              </node>
                              <node concept="ns1u0" id="5zhVuyLcHTu" role="3AunhB">
                                <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                                <node concept="nsMwS" id="5zhVuyLcHTT" role="ns1xD">
                                  <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                                  <node concept="37jhX" id="ZNYugu2LzU" role="iSaTp">
                                    <node concept="2OqwBi" id="5zhVuyLcIGX" role="37jj2">
                                      <node concept="2OqwBi" id="5zhVuyLcIcz" role="2Oq$k0">
                                        <node concept="3A2sRY" id="5zhVuyLcI2B" role="2Oq$k0">
                                          <ref role="3A2yKK" node="5zhVuyLcGia" resolve="nbil" />
                                        </node>
                                        <node concept="3TrEf2" id="5zhVuyLcImL" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                        </node>
                                      </node>
                                      <node concept="3TrEf2" id="5zhVuyLcJ9r" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37jhX" id="5zhVuyLcJbC" role="3AunhB">
                                <node concept="2YIFZM" id="5zhVuyLcJk8" role="37jj2">
                                  <ref role="37wK5l" to="kqnc:6GOqnFkHuAN" resolve="strictestContetxt" />
                                  <ref role="1Pybhc" to="kqnc:4O7HczOeKN2" resolve="ConvertsContext" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="5zhVuyLcJm4" role="9aQIa">
                          <node concept="3clFbS" id="5zhVuyLcJm5" role="9aQI4">
                            <node concept="3Aqczg" id="5zhVuyLcJna" role="3cqZAp">
                              <node concept="3Aqt3T" id="5zhVuyLcJnb" role="3Aqpz8">
                                <ref role="3AqCNq" to="kqnc:3vTJNooZDgN" resolve="convertsTo" />
                                <node concept="a7P8L" id="5zhVuyLcJnc" role="3AunhB">
                                  <ref role="a7OzE" node="5zhVuyLcHnx" resolve="ValueType" />
                                </node>
                                <node concept="ns1u0" id="5zhVuyLcKeb" role="3AunhB">
                                  <ref role="ns1xF" to="yh6q:3MFPGC50Ab3" resolve="sequence" />
                                  <node concept="nsMwS" id="5zhVuyLcKi5" role="ns1xD">
                                    <ref role="nsMwP" to="yh6q:3MFPGC50Aiu" resolve="elem" />
                                    <node concept="ns1u0" id="5zhVuyLcKD2" role="iSaTp">
                                      <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                                      <node concept="nsMwS" id="5zhVuyLcJne" role="ns1xD">
                                        <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                                        <node concept="37jhX" id="ZNYugu2LzV" role="iSaTp">
                                          <node concept="2OqwBi" id="5zhVuyLcJnf" role="37jj2">
                                            <node concept="2OqwBi" id="5zhVuyLcJng" role="2Oq$k0">
                                              <node concept="3A2sRY" id="5zhVuyLcJnh" role="2Oq$k0">
                                                <ref role="3A2yKK" node="5zhVuyLcGia" resolve="nbil" />
                                              </node>
                                              <node concept="3TrEf2" id="5zhVuyLcJni" role="2OqNvi">
                                                <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                              </node>
                                            </node>
                                            <node concept="3TrEf2" id="5zhVuyLcJnj" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37jhX" id="5zhVuyLcJnk" role="3AunhB">
                                  <node concept="2YIFZM" id="5zhVuyLcJnl" role="37jj2">
                                    <ref role="37wK5l" to="kqnc:6GOqnFkHuAN" resolve="strictestContetxt" />
                                    <ref role="1Pybhc" to="kqnc:4O7HczOeKN2" resolve="ConvertsContext" />
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
      <node concept="2t___k" id="5zhVuyLcGi9" role="1nLNMg">
        <ref role="2t_S0q" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
        <node concept="3A20r5" id="5zhVuyLcGia" role="2t_VXX">
          <property role="TrG5h" value="nbil" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="5zhVuyLcL8q" role="1nK1Vg">
      <property role="TrG5h" value="nodeBuilderInitProperty" />
      <node concept="3clFbS" id="5zhVuyLcL8r" role="1nLNMH">
        <node concept="3cpWs8" id="76efOMRBDoO" role="3cqZAp">
          <node concept="3cpWsn" id="76efOMRBDoP" role="3cpWs9">
            <property role="TrG5h" value="dataType" />
            <node concept="3Tqbb2" id="76efOMRBDoQ" role="1tU5fm">
              <ref role="ehGHo" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
            </node>
            <node concept="2OqwBi" id="76efOMRBDoR" role="33vP2m">
              <node concept="2OqwBi" id="76efOMRBDoS" role="2Oq$k0">
                <node concept="3TrEf2" id="76efOMRBDoU" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcA" resolve="property" />
                </node>
                <node concept="3A2sRY" id="5zhVuyLcLcx" role="2Oq$k0">
                  <ref role="3A2yKK" node="5zhVuyLcL8t" resolve="nbip" />
                </node>
              </node>
              <node concept="3TrEf2" id="76efOMRBDoV" role="2OqNvi">
                <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1nLNNL" id="5zhVuyLcLcW" role="3cqZAp">
          <node concept="1nLNMm" id="5zhVuyLcLcY" role="1nLNNK">
            <node concept="3Aq93q" id="5zhVuyLcLdY" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="5zhVuyLcLdZ" role="3Ip0Jz">
                <node concept="3I6s7M" id="5zhVuyLcLe3" role="3I6sU7">
                  <node concept="3Aqt3T" id="5zhVuyLcLe2" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="5zhVuyLcLea" role="3AunhB">
                      <node concept="2OqwBi" id="5zhVuyLcLmb" role="37jj2">
                        <node concept="3A2sRY" id="5zhVuyLcLe8" role="2Oq$k0">
                          <ref role="3A2yKK" node="5zhVuyLcL8t" resolve="nbip" />
                        </node>
                        <node concept="2qgKlT" id="5zhVuyLcLzt" role="2OqNvi">
                          <ref role="37wK5l" to="ii9q:1o$2SUuvKUZ" resolve="getInitValue" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="5zhVuyLcL_z" role="3AunhB">
                      <ref role="a7OzE" node="5zhVuyLcLdc" resolve="ValueType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="5zhVuyLcLdb" role="0Rg$4">
              <node concept="aZer4" id="5zhVuyLcLdc" role="3XD1gS">
                <property role="TrG5h" value="ValueType" />
              </node>
              <node concept="32pEOW" id="5zhVuyLcLdo" role="3vLBG7" />
            </node>
            <node concept="3NuqgR" id="5zhVuyLcSil" role="0Rg$4">
              <node concept="aZer4" id="5zhVuyLcSim" role="3XD1gS">
                <property role="TrG5h" value="DataType" />
              </node>
              <node concept="32pEOW" id="5zhVuyLcSmv" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="5zhVuyLcL_Z" role="3xSepv">
              <node concept="3Aq9E8" id="5zhVuyLcLA0" role="3xSepj">
                <node concept="3I6sU6" id="5zhVuyLcLA1" role="3Ip0Jz">
                  <node concept="3I6s7M" id="5zhVuyLcS5j" role="3I6sU7">
                    <node concept="3jbYBd" id="5zhVuyLcS5g" role="3I6s78">
                      <ref role="3jbY9l" to="jxwi:6RzTUCSVvGo" resolve="liftDatatype" />
                      <node concept="37vLTw" id="5zhVuyLcSig" role="3jbY8P">
                        <ref role="3cqZAo" node="76efOMRBDoP" resolve="dataType" />
                      </node>
                      <node concept="a7P8L" id="5zhVuyLcSmR" role="3jbY8V">
                        <ref role="a7OzE" node="5zhVuyLcSim" resolve="DataType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Aq9E8" id="5zhVuyLcSnc" role="3xSepj">
                <node concept="3I6sU6" id="5zhVuyLcSnd" role="3Ip0Jz">
                  <node concept="3I6s7M" id="5zhVuyLcSnn" role="3I6sU7">
                    <node concept="3Aqt3T" id="5zhVuyLcSnm" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:3vTJNooZDgN" resolve="convertsTo" />
                      <node concept="a7P8L" id="5zhVuyLcSnu" role="3AunhB">
                        <ref role="a7OzE" node="5zhVuyLcLdc" resolve="ValueType" />
                      </node>
                      <node concept="a7P8L" id="5zhVuyLcSy_" role="3AunhB">
                        <ref role="a7OzE" node="5zhVuyLcSim" resolve="DataType" />
                      </node>
                      <node concept="37jhX" id="5zhVuyLcSzU" role="3AunhB">
                        <node concept="2YIFZM" id="5zhVuyLcSzV" role="37jj2">
                          <ref role="37wK5l" to="kqnc:6GOqnFkHuAN" resolve="strictestContetxt" />
                          <ref role="1Pybhc" to="kqnc:4O7HczOeKN2" resolve="ConvertsContext" />
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
      <node concept="2t___k" id="5zhVuyLcL8s" role="1nLNMg">
        <ref role="2t_S0q" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
        <node concept="3A20r5" id="5zhVuyLcL8t" role="2t_VXX">
          <property role="TrG5h" value="nbip" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="5zhVuyLcSUK" role="1nK1Vg">
      <property role="TrG5h" value="nodeBuilderPropertyExpression" />
      <node concept="3clFbS" id="5zhVuyLcSUL" role="1nLNMH">
        <node concept="1nLNNL" id="5zhVuyLcTcb" role="3cqZAp">
          <node concept="1nLNMm" id="5zhVuyLcTcc" role="1nLNNK">
            <node concept="3Aq93q" id="5zhVuyLcTcf" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="5zhVuyLcTcg" role="3Ip0Jz">
                <node concept="3I6s7M" id="5zhVuyLcTck" role="3I6sU7">
                  <node concept="3Aqt3T" id="5zhVuyLcTcj" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="5zhVuyLcTdi" role="3AunhB">
                      <node concept="2OqwBi" id="5zhVuyLcTmz" role="37jj2">
                        <node concept="3A2sRY" id="5zhVuyLcTdg" role="2Oq$k0">
                          <ref role="3A2yKK" node="5zhVuyLcSUN" resolve="nbpe" />
                        </node>
                        <node concept="3TrEf2" id="5zhVuyLcTxV" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:63LzO9stH8r" resolve="expression" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="5zhVuyLcT$q" role="3AunhB">
                      <ref role="a7OzE" node="5zhVuyLcTcp" resolve="ExpType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="5zhVuyLcTco" role="0Rg$4">
              <node concept="aZer4" id="5zhVuyLcTcp" role="3XD1gS">
                <property role="TrG5h" value="ExpType" />
              </node>
              <node concept="32pEOW" id="5zhVuyLcTc_" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="5zhVuyLcT$_" role="3xSepv">
              <node concept="3Aq9E8" id="5zhVuyLcT$A" role="3xSepj">
                <node concept="3I6sU6" id="5zhVuyLcT$B" role="3Ip0Jz">
                  <node concept="3I6s7M" id="5zhVuyLcT$G" role="3I6sU7">
                    <node concept="3Aqt3T" id="5zhVuyLcT$F" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="5zhVuyLcT$N" role="3AunhB">
                        <node concept="3A2sRY" id="5zhVuyLcT$L" role="37jj2">
                          <ref role="3A2yKK" node="5zhVuyLcSUN" resolve="nbpe" />
                        </node>
                      </node>
                      <node concept="a7P8L" id="5zhVuyLcTIc" role="3AunhB">
                        <ref role="a7OzE" node="5zhVuyLcTcp" resolve="ExpType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="5zhVuyLcSUM" role="1nLNMg">
        <ref role="2t_S0q" to="tp3r:63LzO9stH8q" resolve="NodeBuilderPropertyExpression" />
        <node concept="3A20r5" id="5zhVuyLcSUN" role="2t_VXX">
          <property role="TrG5h" value="nbpe" />
        </node>
      </node>
    </node>
  </node>
  <node concept="AVZre" id="5zhVuyLcWR2">
    <property role="TrG5h" value="container" />
    <ref role="2YbDB9" to="kqnc:34$A1Mf51rY" resolve="TypeOf" />
    <node concept="1nLNMY" id="5zhVuyLcWR9" role="1nK1Vg">
      <property role="TrG5h" value="nodeBuilder" />
      <node concept="3clFbS" id="5zhVuyLcWRa" role="1nLNMH">
        <node concept="1nLNNL" id="5zhVuyLcWRk" role="3cqZAp">
          <node concept="1nLNMm" id="5zhVuyLcWRl" role="1nLNNK">
            <node concept="3Aq93q" id="5zhVuyLcWRY" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="5zhVuyLcWRZ" role="3Ip0Jz">
                <node concept="3I6s7M" id="5zhVuyLcWS3" role="3I6sU7">
                  <node concept="3Aqt3T" id="5zhVuyLcWS2" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="5zhVuyLcWS6" role="3xSepv">
              <node concept="3Aq9E8" id="5zhVuyLcWS7" role="3xSepj">
                <node concept="3I6sU6" id="5zhVuyLcWS8" role="3Ip0Jz">
                  <node concept="3I6s7M" id="5zhVuyLcWSd" role="3I6sU7">
                    <node concept="3Aqt3T" id="5zhVuyLcWSc" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="5zhVuyLcWSn" role="3AunhB">
                        <node concept="3A2sRY" id="5zhVuyLcWSl" role="37jj2">
                          <ref role="3A2yKK" node="5zhVuyLcWRc" resolve="nb" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="5zhVuyLcWS$" role="3AunhB">
                        <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                        <node concept="nsMwS" id="5zhVuyLcWSC" role="ns1xD">
                          <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                          <node concept="37jhX" id="ZNYugu2LzW" role="iSaTp">
                            <node concept="2OqwBi" id="5zhVuyLcXql" role="37jj2">
                              <node concept="2OqwBi" id="5zhVuyLcX1Q" role="2Oq$k0">
                                <node concept="3A2sRY" id="5zhVuyLcWSG" role="2Oq$k0">
                                  <ref role="3A2yKK" node="5zhVuyLcWRc" resolve="nb" />
                                </node>
                                <node concept="3TrEf2" id="5zhVuyLcXeC" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3r:4IP40Bi2$Eu" resolve="quotedNode" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="5zhVuyLcXBG" role="2OqNvi">
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
      <node concept="2t___k" id="5zhVuyLcWRb" role="1nLNMg">
        <ref role="2t_S0q" to="tp3r:4IP40Bi2$Et" resolve="NodeBuilder" />
        <node concept="3A20r5" id="5zhVuyLcWRc" role="2t_VXX">
          <property role="TrG5h" value="nb" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="5zhVuyLcXHp" role="1nK1Vg">
      <property role="TrG5h" value="modelNodeInitializer" />
      <node concept="3clFbS" id="5zhVuyLcXHq" role="1nLNMH">
        <node concept="1nLNNL" id="5zhVuyLcXHW" role="3cqZAp">
          <node concept="1nLNMm" id="5zhVuyLcXHX" role="1nLNNK">
            <node concept="3Aq93q" id="5zhVuyLcXJb" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="5zhVuyLcXJc" role="3Ip0Jz">
                <node concept="3I6s7M" id="5zhVuyLcXJg" role="3I6sU7">
                  <node concept="3Aqt3T" id="5zhVuyLcXJf" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="5zhVuyLcXJn" role="3AunhB">
                      <node concept="2OqwBi" id="5zhVuyLcXQK" role="37jj2">
                        <node concept="3A2sRY" id="5zhVuyLcXJl" role="2Oq$k0">
                          <ref role="3A2yKK" node="5zhVuyLcXHs" resolve="mni" />
                        </node>
                        <node concept="3TrEf2" id="5zhVuyLcXXR" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1J" resolve="modelToCreate" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="5zhVuyLcXZX" role="3AunhB">
                      <ref role="a7OzE" node="5zhVuyLcXI2" resolve="ModelType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="5zhVuyLcY08" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="5zhVuyLcY09" role="3Ip0Jz">
                <node concept="3I6s7M" id="5zhVuyLcY0m" role="3I6sU7">
                  <node concept="3Aqt3T" id="5zhVuyLcY0l" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="5zhVuyLcY0q" role="3AunhB">
                      <node concept="2OqwBi" id="5zhVuyLcY7L" role="37jj2">
                        <node concept="3A2sRY" id="5zhVuyLcY0p" role="2Oq$k0">
                          <ref role="3A2yKK" node="5zhVuyLcXHs" resolve="mni" />
                        </node>
                        <node concept="3TrEf2" id="5zhVuyLcYgO" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1K" resolve="nodeId" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="5zhVuyLcYh5" role="3AunhB">
                      <ref role="a7OzE" node="5zhVuyLcXIo" resolve="NodeIdType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="5zhVuyLcXI1" role="0Rg$4">
              <node concept="aZer4" id="5zhVuyLcXI2" role="3XD1gS">
                <property role="TrG5h" value="ModelType" />
              </node>
              <node concept="aZer4" id="5zhVuyLcXIo" role="3XD1gS">
                <property role="TrG5h" value="NodeIdType" />
              </node>
              <node concept="32pEOW" id="5zhVuyLcXIe" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="5zhVuyLcXJ5" role="3xSepv">
              <node concept="3Aq9E8" id="5zhVuyLcXJ6" role="3xSepj">
                <node concept="3I6sU6" id="5zhVuyLcXJ7" role="3Ip0Jz">
                  <node concept="3I6s7M" id="5zhVuyLcYhh" role="3I6sU7">
                    <node concept="3Aqt3T" id="5zhVuyLcYhg" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:3vTJNooZDgN" resolve="convertsTo" />
                      <node concept="a7P8L" id="5zhVuyLcYho" role="3AunhB">
                        <ref role="a7OzE" node="5zhVuyLcXI2" resolve="ModelType" />
                      </node>
                      <node concept="ns1u0" id="5zhVuyLcYjs" role="3AunhB">
                        <ref role="ns1xF" to="kqnc:JOGAOsVt2a" resolve="classifier" />
                        <node concept="nsMwS" id="5zhVuyLcYjR" role="ns1xD">
                          <ref role="nsMwP" to="kqnc:JOGAOsVt2c" resolve="classifier" />
                          <node concept="37jhX" id="ZNYugu2LzX" role="iSaTp">
                            <node concept="2OqwBi" id="5zhVuyLcYT3" role="37jj2">
                              <node concept="2c44tf" id="5zhVuyLcZ9H" role="2Oq$k0">
                                <node concept="3uibUv" id="5zhVuyLcZ9I" role="2c44tc">
                                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="5zhVuyLcZ7a" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37jhX" id="5zhVuyLcZd_" role="3AunhB">
                        <node concept="2YIFZM" id="5zhVuyLcZnx" role="37jj2">
                          <ref role="37wK5l" to="kqnc:6GOqnFkHuAN" resolve="strictestContetxt" />
                          <ref role="1Pybhc" to="kqnc:4O7HczOeKN2" resolve="ConvertsContext" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Aq9E8" id="5zhVuyLcZpr" role="3xSepj">
                <node concept="3I6sU6" id="5zhVuyLcZps" role="3Ip0Jz">
                  <node concept="3I6s7M" id="5zhVuyLcZpt" role="3I6sU7">
                    <node concept="3Aqt3T" id="5zhVuyLcZpu" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:3vTJNooZDgN" resolve="convertsTo" />
                      <node concept="a7P8L" id="5zhVuyLcZwm" role="3AunhB">
                        <ref role="a7OzE" node="5zhVuyLcXIo" resolve="NodeIdType" />
                      </node>
                      <node concept="ns1u0" id="5zhVuyLcZpw" role="3AunhB">
                        <ref role="ns1xF" to="kqnc:JOGAOsVt2a" resolve="classifier" />
                        <node concept="nsMwS" id="5zhVuyLcZpx" role="ns1xD">
                          <ref role="nsMwP" to="kqnc:JOGAOsVt2c" resolve="classifier" />
                          <node concept="37jhX" id="ZNYugu2LzY" role="iSaTp">
                            <node concept="2OqwBi" id="5zhVuyLcZpy" role="37jj2">
                              <node concept="2c44tf" id="5zhVuyLcZpz" role="2Oq$k0">
                                <node concept="3uibUv" id="5zhVuyLcZxr" role="2c44tc">
                                  <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="5zhVuyLcZp_" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37jhX" id="5zhVuyLcZpA" role="3AunhB">
                        <node concept="2YIFZM" id="5zhVuyLcZpB" role="37jj2">
                          <ref role="37wK5l" to="kqnc:6GOqnFkHuAN" resolve="strictestContetxt" />
                          <ref role="1Pybhc" to="kqnc:4O7HczOeKN2" resolve="ConvertsContext" />
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
      <node concept="2t___k" id="5zhVuyLcXHr" role="1nLNMg">
        <ref role="2t_S0q" to="tp3r:2S6ZQ64Qx1I" resolve="ModelNodeInitializer" />
        <node concept="3A20r5" id="5zhVuyLcXHs" role="2t_VXX">
          <property role="TrG5h" value="mni" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="5zhVuyLcZCY" role="1nK1Vg">
      <property role="TrG5h" value="quotation" />
      <node concept="3clFbS" id="5zhVuyLcZCZ" role="1nLNMH">
        <node concept="3cpWs8" id="5c7SrrUYguY" role="3cqZAp">
          <node concept="3cpWsn" id="5c7SrrUYguZ" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3Tqbb2" id="5c7SrrUYgp4" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
            </node>
            <node concept="2YIFZM" id="5c7SrrUYgv0" role="33vP2m">
              <ref role="37wK5l" to="tpeq:EDoXYsb2Yk" resolve="closestConceptNode" />
              <ref role="1Pybhc" to="tpeq:h9nq4jh" resolve="RulesUtil" />
              <node concept="2OqwBi" id="5c7SrrUYgv1" role="37wK5m">
                <node concept="2OqwBi" id="5c7SrrUYgv2" role="2Oq$k0">
                  <node concept="3TrEf2" id="5c7SrrUYgv3" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3r:hqc44pq" resolve="quotedNode" />
                  </node>
                  <node concept="3A2sRY" id="5c7SrrUYgv4" role="2Oq$k0">
                    <ref role="3A2yKK" node="5zhVuyLcZD1" resolve="q" />
                  </node>
                </node>
                <node concept="2yIwOk" id="5c7SrrUYgv5" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1nLNNL" id="5c7SrrUYh3U" role="3cqZAp">
          <node concept="1nLNMm" id="5c7SrrUYh3W" role="1nLNNK">
            <node concept="3Aq93q" id="5c7SrrUYh51" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="5c7SrrUYh52" role="3Ip0Jz">
                <node concept="3I6s7M" id="5c7SrrUYh56" role="3I6sU7">
                  <node concept="3Aqt3T" id="5c7SrrUYh55" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="5c7SrrUYh5b" role="3xSepv">
              <node concept="3Aq9E8" id="5c7SrrUYh5c" role="3xSepj">
                <node concept="3I6sU6" id="5c7SrrUYh5d" role="3Ip0Jz">
                  <node concept="3I6s7M" id="5c7SrrUYh5i" role="3I6sU7">
                    <node concept="3Aqt3T" id="5c7SrrUYh5h" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="5c7SrrUYh5p" role="3AunhB">
                        <node concept="3A2sRY" id="5c7SrrUYh5n" role="37jj2">
                          <ref role="3A2yKK" node="5zhVuyLcZD1" resolve="q" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="5c7SrrUYh5D" role="3AunhB">
                        <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                        <node concept="nsMwS" id="5c7SrrUYh5H" role="ns1xD">
                          <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                          <node concept="37jhX" id="ZNYugu2LzZ" role="iSaTp">
                            <node concept="37vLTw" id="5c7SrrUYh7_" role="37jj2">
                              <ref role="3cqZAo" node="5c7SrrUYguZ" resolve="concept" />
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
      <node concept="2t___k" id="5zhVuyLcZD0" role="1nLNMg">
        <ref role="2t_S0q" to="tp3r:hqc44pp" resolve="Quotation" />
        <node concept="3A20r5" id="5zhVuyLcZD1" role="2t_VXX">
          <property role="TrG5h" value="q" />
        </node>
      </node>
    </node>
  </node>
  <node concept="AVZre" id="5c7SrrUYoEH">
    <property role="TrG5h" value="quotation" />
    <ref role="2YbDB9" to="kqnc:34$A1Mf51rY" resolve="TypeOf" />
    <node concept="1nLNMY" id="5c7SrrUYoSV" role="1nK1Vg">
      <property role="TrG5h" value="antiquotation" />
      <node concept="3clFbS" id="5c7SrrUYoSW" role="1nLNMH">
        <node concept="1nLNNL" id="5c7SrrUYoTn" role="3cqZAp">
          <node concept="1nLNMm" id="5c7SrrUYoTp" role="1nLNNK">
            <node concept="3Aq93q" id="5c7SrrUYoTw" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="5c7SrrUYoTx" role="3Ip0Jz">
                <node concept="3I6s7M" id="5c7SrrUYoT_" role="3I6sU7">
                  <node concept="3Aqt3T" id="5c7SrrUYoT$" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="5c7SrrUYoUb" role="3AunhB">
                      <node concept="2OqwBi" id="5c7SrrUYp4K" role="37jj2">
                        <node concept="3A2sRY" id="5c7SrrUYoU9" role="2Oq$k0">
                          <ref role="3A2yKK" node="5c7SrrUYoSY" resolve="a" />
                        </node>
                        <node concept="3TrEf2" id="5c7SrrUYpuw" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:hqc44pn" resolve="expression" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="5c7SrrUYpxq" role="3AunhB">
                      <ref role="a7OzE" node="5c7SrrUYoTG" resolve="ExpType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="5c7SrrUYoTF" role="0Rg$4">
              <node concept="aZer4" id="5c7SrrUYoTG" role="3XD1gS">
                <property role="TrG5h" value="ExpType" />
              </node>
              <node concept="32pEOW" id="5c7SrrUYoTS" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="5c7SrrUYpx_" role="3xSepv">
              <node concept="3Aq9E8" id="5c7SrrUYpxA" role="3xSepj">
                <node concept="3I6sU6" id="5c7SrrUYpxB" role="3Ip0Jz">
                  <node concept="3IrJb3" id="5c7SrrUYpxF" role="3I6sU7">
                    <node concept="3clFbS" id="5c7SrrUYpxG" role="3IrJb0">
                      <node concept="3clFbJ" id="5c7SrrUYoT6" role="3cqZAp">
                        <node concept="3clFbS" id="5c7SrrUYoT8" role="3clFbx">
                          <node concept="3cpWs8" id="5c7SrrUYqyI" role="3cqZAp">
                            <node concept="3cpWsn" id="5c7SrrUYqyJ" role="3cpWs9">
                              <property role="TrG5h" value="targetConcept" />
                              <node concept="3bZ5Sz" id="5c7SrrUYqFH" role="1tU5fm" />
                              <node concept="2OqwBi" id="5c7SrrUYqyK" role="33vP2m">
                                <node concept="2OqwBi" id="5c7SrrUYqyL" role="2Oq$k0">
                                  <node concept="3A2sRY" id="5c7SrrUYqyM" role="2Oq$k0">
                                    <ref role="3A2yKK" node="5c7SrrUYoSY" resolve="a" />
                                  </node>
                                  <node concept="2qgKlT" id="5c7SrrUYqyN" role="2OqNvi">
                                    <ref role="37wK5l" to="ii9q:5e7X3XC_mgR" resolve="getAttributedLink" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="5c7SrrUYqyO" role="2OqNvi">
                                  <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3Aqczg" id="5c7SrrUYrrt" role="3cqZAp">
                            <node concept="3Aqt3T" id="5c7SrrUYrrr" role="3Aqpz8">
                              <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="defaultConvertsTo" />
                              <node concept="a7P8L" id="5c7SrrUYrsa" role="3AunhB">
                                <ref role="a7OzE" node="5c7SrrUYoTG" resolve="ExpType" />
                              </node>
                              <node concept="ns1u0" id="5c7SrrUYsmW" role="3AunhB">
                                <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                                <node concept="nsMwS" id="5c7SrrUYsnn" role="ns1xD">
                                  <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                                  <node concept="37jhX" id="ZNYugu2L$0" role="iSaTp">
                                    <node concept="2OqwBi" id="5c7SrrUYs$F" role="37jj2">
                                      <node concept="37vLTw" id="5c7SrrUYsp6" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5c7SrrUYqyJ" resolve="targetConcept" />
                                      </node>
                                      <node concept="FGMqu" id="5c7SrrUYsKK" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="5c7SrrUYrb2" role="3clFbw">
                          <node concept="10Nm6u" id="5c7SrrUYrh$" role="3uHU7w" />
                          <node concept="2OqwBi" id="5c7SrrUYqOy" role="3uHU7B">
                            <node concept="3A2sRY" id="5c7SrrUYqOz" role="2Oq$k0">
                              <ref role="3A2yKK" node="5c7SrrUYoSY" resolve="a" />
                            </node>
                            <node concept="2qgKlT" id="5c7SrrUYqO$" role="2OqNvi">
                              <ref role="37wK5l" to="ii9q:5e7X3XC_mgR" resolve="getAttributedLink" />
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="5c7SrrUYsNK" role="9aQIa">
                          <node concept="3clFbS" id="5c7SrrUYsNL" role="9aQI4">
                            <node concept="3Aqczg" id="5c7SrrUYsUk" role="3cqZAp">
                              <node concept="3Aqt3T" id="5c7SrrUYsUj" role="3Aqpz8">
                                <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="defaultConvertsTo" />
                                <node concept="a7P8L" id="5c7SrrUYsUr" role="3AunhB">
                                  <ref role="a7OzE" node="5c7SrrUYoTG" resolve="ExpType" />
                                </node>
                                <node concept="ns1u0" id="5c7SrrUYsWD" role="3AunhB">
                                  <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
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
      <node concept="2t___k" id="5c7SrrUYoSX" role="1nLNMg">
        <ref role="2t_S0q" to="tp3r:hqc44po" resolve="Antiquotation" />
        <node concept="3A20r5" id="5c7SrrUYoSY" role="2t_VXX">
          <property role="TrG5h" value="a" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="5c7SrrUYtcm" role="1nK1Vg">
      <property role="TrG5h" value="listAntiquotation" />
      <node concept="3clFbS" id="5c7SrrUYtcn" role="1nLNMH">
        <node concept="1nLNNL" id="5c7SrrUYtm$" role="3cqZAp">
          <node concept="1nLNMm" id="5c7SrrUYtm_" role="1nLNNK">
            <node concept="3Aq93q" id="5c7SrrUYtmC" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="5c7SrrUYtmD" role="3Ip0Jz">
                <node concept="3I6s7M" id="5c7SrrUYtmH" role="3I6sU7">
                  <node concept="3Aqt3T" id="5c7SrrUYtmG" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="5c7SrrUYtnx" role="3AunhB">
                      <node concept="2OqwBi" id="5c7SrrUYtya" role="37jj2">
                        <node concept="3A2sRY" id="5c7SrrUYtnv" role="2Oq$k0">
                          <ref role="3A2yKK" node="5c7SrrUYtcp" resolve="la" />
                        </node>
                        <node concept="3TrEf2" id="5c7SrrUYtKo" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:hqc44pn" resolve="expression" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="5c7SrrUYtNc" role="3AunhB">
                      <ref role="a7OzE" node="5c7SrrUYtmM" resolve="ExpType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="5c7SrrUYtmL" role="0Rg$4">
              <node concept="aZer4" id="5c7SrrUYtmM" role="3XD1gS">
                <property role="TrG5h" value="ExpType" />
              </node>
              <node concept="32pEOW" id="5c7SrrUYtmY" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="5c7SrrUYtNn" role="3xSepv">
              <node concept="3Aq9E8" id="5c7SrrUYtNo" role="3xSepj">
                <node concept="3I6sU6" id="5c7SrrUYtNp" role="3Ip0Jz">
                  <node concept="3I6s7M" id="5c7SrrUYtNu" role="3I6sU7">
                    <node concept="3Aqt3T" id="5c7SrrUYtNt" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="defaultConvertsTo" />
                      <node concept="a7P8L" id="5c7SrrUYtN_" role="3AunhB">
                        <ref role="a7OzE" node="5c7SrrUYtmM" resolve="ExpType" />
                      </node>
                      <node concept="ns1u0" id="5c7SrrUYue3" role="3AunhB">
                        <ref role="ns1xF" to="wi9y:1oUE7CX3tx9" resolve="list" />
                        <node concept="nsMwS" id="5c7SrrUYufV" role="ns1xD">
                          <ref role="nsMwP" to="wi9y:1oUE7CX3Xc1" resolve="elem" />
                          <node concept="ns1u0" id="5c7SrrUYuhE" role="iSaTp">
                            <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
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
      <node concept="2t___k" id="5c7SrrUYtco" role="1nLNMg">
        <ref role="2t_S0q" to="tp3r:hqc44pu" resolve="ListAntiquotation" />
        <node concept="3A20r5" id="5c7SrrUYtcp" role="2t_VXX">
          <property role="TrG5h" value="la" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="5c7SrrUYuFY" role="1nK1Vg">
      <property role="TrG5h" value="propertyAntiquotation" />
      <node concept="3clFbS" id="5c7SrrUYuFZ" role="1nLNMH">
        <node concept="1nLNNL" id="5c7SrrUY_qH" role="3cqZAp">
          <node concept="1nLNMm" id="5c7SrrUY_qI" role="1nLNNK">
            <node concept="3Aq93q" id="5c7SrrUY_qL" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="5c7SrrUY_qM" role="3Ip0Jz">
                <node concept="3I6s7M" id="5c7SrrUY_qQ" role="3I6sU7">
                  <node concept="3Aqt3T" id="5c7SrrUY_qP" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="5c7SrrUY_rz" role="3AunhB">
                      <node concept="2OqwBi" id="5c7SrrUY_AM" role="37jj2">
                        <node concept="3A2sRY" id="5c7SrrUY_rx" role="2Oq$k0">
                          <ref role="3A2yKK" node="5c7SrrUYuG1" resolve="pa" />
                        </node>
                        <node concept="3TrEf2" id="5c7SrrUY_Qr" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:hqc44pn" resolve="expression" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="5c7SrrUY_Vi" role="3AunhB">
                      <ref role="a7OzE" node="5c7SrrUY_UI" resolve="ExpType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="5c7SrrUY_qU" role="0Rg$4">
              <node concept="aZer4" id="5c7SrrUY_UI" role="3XD1gS">
                <property role="TrG5h" value="ExpType" />
              </node>
              <node concept="aZer4" id="5c7SrrUY_qV" role="3XD1gS">
                <property role="TrG5h" value="DataType" />
              </node>
              <node concept="32pEOW" id="5c7SrrUY_r7" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="5c7SrrUY_TX" role="3xSepv">
              <node concept="3Aq9E8" id="5c7SrrUY_TY" role="3xSepj">
                <node concept="3I6sU6" id="5c7SrrUY_TZ" role="3Ip0Jz">
                  <node concept="3I6s7M" id="5c7SrrUY_UC" role="3I6sU7">
                    <node concept="3jbYBd" id="5c7SrrUY_U_" role="3I6s78">
                      <ref role="3jbY9l" to="jxwi:6RzTUCSVvGo" resolve="liftDatatype" />
                      <node concept="2OqwBi" id="5c7SrrUYBgs" role="3jbY8P">
                        <node concept="2OqwBi" id="5c7SrrUYA6N" role="2Oq$k0">
                          <node concept="3A2sRY" id="5c7SrrUY_VF" role="2Oq$k0">
                            <ref role="3A2yKK" node="5c7SrrUYuG1" resolve="pa" />
                          </node>
                          <node concept="2qgKlT" id="5c7SrrUYApp" role="2OqNvi">
                            <ref role="37wK5l" to="tpcu:121FNPYBLc9" resolve="getPropertyDeclaration" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="5c7SrrUYBQv" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
                        </node>
                      </node>
                      <node concept="a7P8L" id="5c7SrrUY_V$" role="3jbY8V">
                        <ref role="a7OzE" node="5c7SrrUY_qV" resolve="DataType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Aq9E8" id="5c7SrrUYBTP" role="3xSepj">
                <node concept="3I6sU6" id="5c7SrrUYBTQ" role="3Ip0Jz">
                  <node concept="3I6s7M" id="5c7SrrUYBUi" role="3I6sU7">
                    <node concept="3Aqt3T" id="5c7SrrUYBUh" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="defaultConvertsTo" />
                      <node concept="a7P8L" id="5c7SrrUYBUp" role="3AunhB">
                        <ref role="a7OzE" node="5c7SrrUY_UI" resolve="ExpType" />
                      </node>
                      <node concept="a7P8L" id="5c7SrrUYBWt" role="3AunhB">
                        <ref role="a7OzE" node="5c7SrrUY_qV" resolve="DataType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="5c7SrrUYuG0" role="1nLNMg">
        <ref role="2t_S0q" to="tp3r:hqEMmm7" resolve="PropertyAntiquotation" />
        <node concept="3A20r5" id="5c7SrrUYuG1" role="2t_VXX">
          <property role="TrG5h" value="pa" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="5c7SrrUYCrb" role="1nK1Vg">
      <property role="TrG5h" value="referenceAntiquotation" />
      <node concept="3clFbS" id="5c7SrrUYCrc" role="1nLNMH">
        <node concept="1nLNNL" id="5c7SrrUYCul" role="3cqZAp">
          <node concept="1nLNMm" id="5c7SrrUYCum" role="1nLNNK">
            <node concept="3Aq93q" id="5c7SrrUYCup" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="5c7SrrUYCuq" role="3Ip0Jz">
                <node concept="3I6s7M" id="5c7SrrUYCuu" role="3I6sU7">
                  <node concept="3Aqt3T" id="5c7SrrUYCut" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="5c7SrrUYCvb" role="3AunhB">
                      <node concept="2OqwBi" id="5c7SrrUYCDO" role="37jj2">
                        <node concept="3A2sRY" id="5c7SrrUYCv9" role="2Oq$k0">
                          <ref role="3A2yKK" node="5c7SrrUYCre" resolve="ra" />
                        </node>
                        <node concept="3TrEf2" id="5c7SrrUYCS2" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:hqc44pn" resolve="expression" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="5c7SrrUYCUQ" role="3AunhB">
                      <ref role="a7OzE" node="5c7SrrUYCuz" resolve="ExpType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="5c7SrrUYCuy" role="0Rg$4">
              <node concept="aZer4" id="5c7SrrUYCuz" role="3XD1gS">
                <property role="TrG5h" value="ExpType" />
              </node>
              <node concept="32pEOW" id="5c7SrrUYCuJ" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="5c7SrrUYCV1" role="3xSepv">
              <node concept="3Aq9E8" id="5c7SrrUYCV2" role="3xSepj">
                <node concept="3I6sU6" id="5c7SrrUYCV3" role="3Ip0Jz">
                  <node concept="3IrJb3" id="5c7SrrUYCV7" role="3I6sU7">
                    <node concept="3clFbS" id="5c7SrrUYCV8" role="3IrJb0">
                      <node concept="3clFbJ" id="5c7SrrUYCVb" role="3cqZAp">
                        <node concept="3y3z36" id="5c7SrrUYDJW" role="3clFbw">
                          <node concept="10Nm6u" id="5c7SrrUYDQ1" role="3uHU7w" />
                          <node concept="2OqwBi" id="5c7SrrUYD8i" role="3uHU7B">
                            <node concept="3A2sRY" id="5c7SrrUYCVn" role="2Oq$k0">
                              <ref role="3A2yKK" node="5c7SrrUYCre" resolve="ra" />
                            </node>
                            <node concept="2qgKlT" id="5c7SrrUYDoZ" role="2OqNvi">
                              <ref role="37wK5l" to="tpcu:1avfQ4BEFo6" resolve="getLink" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="5c7SrrUYCVd" role="3clFbx">
                          <node concept="3cpWs8" id="5c7SrrUYEV2" role="3cqZAp">
                            <node concept="3cpWsn" id="5c7SrrUYEV3" role="3cpWs9">
                              <property role="TrG5h" value="targetConcept" />
                              <node concept="3bZ5Sz" id="5c7SrrUYEWH" role="1tU5fm" />
                              <node concept="2OqwBi" id="5c7SrrUYEV4" role="33vP2m">
                                <node concept="2OqwBi" id="5c7SrrUYEV5" role="2Oq$k0">
                                  <node concept="3A2sRY" id="5c7SrrUYEV6" role="2Oq$k0">
                                    <ref role="3A2yKK" node="5c7SrrUYCre" resolve="ra" />
                                  </node>
                                  <node concept="2qgKlT" id="5c7SrrUYEV7" role="2OqNvi">
                                    <ref role="37wK5l" to="tpcu:1avfQ4BEFo6" resolve="getLink" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="5c7SrrUYEV8" role="2OqNvi">
                                  <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3Aqczg" id="5c7SrrUYDQq" role="3cqZAp">
                            <node concept="3Aqt3T" id="5c7SrrUYDQp" role="3Aqpz8">
                              <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="defaultConvertsTo" />
                              <node concept="a7P8L" id="5c7SrrUYDQx" role="3AunhB">
                                <ref role="a7OzE" node="5c7SrrUYCuz" resolve="ExpType" />
                              </node>
                              <node concept="ns1u0" id="5c7SrrUYDS_" role="3AunhB">
                                <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
                                <node concept="nsMwS" id="5c7SrrUYDUt" role="ns1xD">
                                  <ref role="nsMwP" to="jxwi:7LI_gNMWxb4" resolve="concept" />
                                  <node concept="37jhX" id="ZNYugu2L$1" role="iSaTp">
                                    <node concept="2OqwBi" id="5c7SrrUYFeX" role="37jj2">
                                      <node concept="37vLTw" id="5c7SrrUYF3o" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5c7SrrUYEV3" resolve="targetConcept" />
                                      </node>
                                      <node concept="FGMqu" id="5c7SrrUYFr2" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="5c7SrrUYFvn" role="3cqZAp" />
                        </node>
                        <node concept="9aQIb" id="5c7SrrUYFu2" role="9aQIa">
                          <node concept="3clFbS" id="5c7SrrUYFu3" role="9aQI4">
                            <node concept="3Aqczg" id="5c7SrrUYFwi" role="3cqZAp">
                              <node concept="3Aqt3T" id="5c7SrrUYFwh" role="3Aqpz8">
                                <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="defaultConvertsTo" />
                                <node concept="a7P8L" id="5c7SrrUYFwp" role="3AunhB">
                                  <ref role="a7OzE" node="5c7SrrUYCuz" resolve="ExpType" />
                                </node>
                                <node concept="ns1u0" id="5c7SrrUYFyB" role="3AunhB">
                                  <ref role="ns1xF" to="jxwi:7LI_gNMWw2A" resolve="node" />
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
      <node concept="2t___k" id="5c7SrrUYCrd" role="1nLNMg">
        <ref role="2t_S0q" to="tp3r:hqc44pt" resolve="ReferenceAntiquotation" />
        <node concept="3A20r5" id="5c7SrrUYCre" role="2t_VXX">
          <property role="TrG5h" value="ra" />
        </node>
      </node>
    </node>
  </node>
</model>

