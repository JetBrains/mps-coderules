<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:30efdd3a-609b-4e7b-a8f2-60af62d5341f(jetbrains.mps.fitch.types)">
  <persistence version="9" />
  <languages>
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.typesystem2" version="7" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="jfgh" ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
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
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="238586457668550951" name="jetbrains.mps.logic.structure.Splice" flags="ng" index="22Ky0T">
        <child id="238586457668550958" name="expression" index="22Ky0K" />
      </concept>
      <concept id="8169506320648805904" name="jetbrains.mps.logic.structure.LogicalVariableDeclarationContainer" flags="ng" index="29MRiA">
        <child id="6399471711045617306" name="dataType" index="3vLBG7" />
        <child id="3063948360254832884" name="declaration" index="3XD1gS" />
      </concept>
      <concept id="8829335963593820278" name="jetbrains.mps.logic.structure.LogicalVariable" flags="ng" index="a7P8L">
        <reference id="8829335963593822893" name="declaration" index="a7OzE" />
        <child id="6036655413806858011" name="indexExpr" index="3gCZO6" />
      </concept>
      <concept id="8829335963591530299" name="jetbrains.mps.logic.structure.ExpressionLogicalVariable" flags="ng" index="aZ4PW">
        <child id="8829335963591530990" name="expression" index="aZ4eD" />
      </concept>
      <concept id="8829335963591572611" name="jetbrains.mps.logic.structure.LogicalVariableDeclaration" flags="ng" index="aZer4">
        <child id="6036655413809169524" name="cardinalityExpr" index="3gj$pD" />
      </concept>
      <concept id="2784663291567294648" name="jetbrains.mps.logic.structure.Wildcard" flags="ng" index="2IllgU" />
      <concept id="2105510410850132386" name="jetbrains.mps.logic.structure.List" flags="ng" index="KCUsM">
        <child id="2105510410850136264" name="contents" index="KCVpo" />
      </concept>
      <concept id="4780620083400582599" name="jetbrains.mps.logic.structure.LogicalExpression" flags="ng" index="1nq8_$">
        <child id="4780620083400582654" name="logical" index="1nq8_t" />
      </concept>
      <concept id="7571593955706120730" name="jetbrains.mps.logic.structure.TreeFormExpression" flags="ng" index="1oi1Uc">
        <child id="7571593955706125526" name="root" index="1oi0x0" />
      </concept>
      <concept id="7571593955706137125" name="jetbrains.mps.logic.structure.TermNode" flags="ng" index="1oi5UN" />
      <concept id="5131913661993028914" name="jetbrains.mps.logic.structure.PatternLogicalVariable" flags="ng" index="1uarlV">
        <child id="5131913661993028915" name="variable" index="1uarlU" />
        <child id="5131913661993028917" name="value" index="1uarlW" />
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
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
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
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.typesystem2">
      <concept id="1618328391714701929" name="jetbrains.mps.lang.typesystem2.structure.TermTemplate" flags="ng" index="0oftK">
        <child id="1618328391714701961" name="feature" index="0ofug" />
      </concept>
      <concept id="1618328391714701966" name="jetbrains.mps.lang.typesystem2.structure.ValueTermFeature" flags="ng" index="0ofun" />
      <concept id="1618328391714701958" name="jetbrains.mps.lang.typesystem2.structure.ListTermFeature" flags="ng" index="0ofuv" />
      <concept id="1618328391714702001" name="jetbrains.mps.lang.typesystem2.structure.ChildTermFeature" flags="ng" index="0ofuC" />
      <concept id="1618328391714763069" name="jetbrains.mps.lang.typesystem2.structure.MacroTable" flags="ng" index="0oKg$">
        <child id="1618328391714763070" name="macro" index="0oKgB" />
      </concept>
      <concept id="1618328391714763491" name="jetbrains.mps.lang.typesystem2.structure.MacroDeclaration" flags="ng" index="0oKvU">
        <child id="7670825977262353027" name="input" index="3eYTkm" />
        <child id="8908809128802132746" name="parameter" index="3tC56T" />
        <child id="8908809128801952514" name="body" index="3unh6L" />
      </concept>
      <concept id="6086839168138086051" name="jetbrains.mps.lang.typesystem2.structure.TermTable" flags="ng" index="1HGPq">
        <child id="6086839168138086052" name="termDeclaration" index="1HGPt" />
      </concept>
      <concept id="4992889260816483106" name="jetbrains.mps.lang.typesystem2.structure.Condition" flags="ng" index="cBwPQ" />
      <concept id="6691972578451976398" name="jetbrains.mps.lang.typesystem2.structure.RuleInputSpecification" flags="ng" index="2t___k">
        <reference id="6691972578451990912" name="applicableConcept" index="2t_S0q" />
        <child id="6691972578451986151" name="input" index="2t_VXX" />
      </concept>
      <concept id="8335224865066016388" name="jetbrains.mps.lang.typesystem2.structure.Rule" flags="ng" index="AVZhu">
        <child id="4340821131304055573" name="condition" index="30RCb4" />
      </concept>
      <concept id="8335224865066015764" name="jetbrains.mps.lang.typesystem2.structure.Handler" flags="ng" index="AVZre">
        <property id="2316688792951788157" name="stage" index="3J8TDj" />
        <child id="1980609059185345194" name="constraint" index="8PkJo" />
        <child id="7368070394767441299" name="rule" index="3ArX_J" />
      </concept>
      <concept id="5524459797190399502" name="jetbrains.mps.lang.typesystem2.structure.TermDeclaration" flags="ng" index="BRKj$">
        <child id="5524459797190401236" name="template" index="BRKSY" />
      </concept>
      <concept id="6856711987714624232" name="jetbrains.mps.lang.typesystem2.structure.ExpressionItem" flags="ng" index="HKQnh">
        <child id="6856711987714624233" name="code" index="HKQng" />
      </concept>
      <concept id="7670825977262541651" name="jetbrains.mps.lang.typesystem2.structure.MacroInputReference" flags="ng" index="3eTFj6">
        <reference id="7670825977262541652" name="declaration" index="3eTFj1" />
      </concept>
      <concept id="7670825977262339471" name="jetbrains.mps.lang.typesystem2.structure.MacroInputDeclaration" flags="ng" index="3eYOCq">
        <child id="7670825977262355988" name="type" index="3eYSA1" />
      </concept>
      <concept id="1302893676238672057" name="jetbrains.mps.lang.typesystem2.structure.ExpandPseudoConstraint" flags="ng" index="1imXTs">
        <child id="1302893676238674275" name="logical" index="1imXu6" />
        <child id="1302893676238672106" name="origin" index="1imXSf" />
      </concept>
      <concept id="8908809128804390455" name="jetbrains.mps.lang.typesystem2.structure.MacroLogicalExpression" flags="ng" index="3txIi4" />
      <concept id="8908809128802132672" name="jetbrains.mps.lang.typesystem2.structure.MacroParameterDeclaration" flags="ng" index="3tC51N">
        <child id="8908809128802132718" name="type" index="3tC51t" />
        <child id="8908809128803441142" name="init" index="3tH6H5" />
      </concept>
      <concept id="8908809128802381130" name="jetbrains.mps.lang.typesystem2.structure.MacroParameterReference" flags="ng" index="3tDTZT">
        <reference id="8908809128802381395" name="parameter" index="3tDTNw" />
      </concept>
      <concept id="8908809128803504920" name="jetbrains.mps.lang.typesystem2.structure.InitBlock" flags="ng" index="3tHm6F" />
      <concept id="8908809128801951589" name="jetbrains.mps.lang.typesystem2.structure.MacroBody" flags="ng" index="3uniRm">
        <child id="8908809128801951592" name="code" index="3uniRr" />
      </concept>
      <concept id="5372587443975633709" name="jetbrains.mps.lang.typesystem2.structure.AbstractRule" flags="ng" index="3wqRzX">
        <child id="7509376976631847095" name="input" index="20_v8_" />
        <child id="1427485783570316357" name="head" index="3orSU4" />
        <child id="1427485783571962463" name="body" index="3otmyu" />
      </concept>
      <concept id="1878265754077060950" name="jetbrains.mps.lang.typesystem2.structure.ConstraintParameterDeclaration" flags="ng" index="1zAUYm">
        <child id="6036655413802463897" name="dataType" index="3gTf24" />
      </concept>
      <concept id="7368070394769089081" name="jetbrains.mps.lang.typesystem2.structure.RuleInputDeclaration" flags="ng" index="3A20r5" />
      <concept id="7368070394769139970" name="jetbrains.mps.lang.typesystem2.structure.RuleInputReference" flags="ng" index="3A2sRY">
        <reference id="7368070394769213644" name="declaration" index="3A2yKK" />
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
      <concept id="1476354154047290768" name="jetbrains.mps.lang.typesystem2.structure.GetterBlock" flags="ng" index="3AP2Rn" />
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
      <concept id="965748826975413063" name="jetbrains.mps.lang.typesystem2.structure.RulePartParameterDeclaration" flags="ng" index="3NuqgR" />
      <concept id="2037618519496446007" name="jetbrains.mps.lang.typesystem2.structure.Term" flags="ng" index="1Q4cc8">
        <reference id="6086839168126957156" name="termDecl" index="1nfQt" />
        <child id="2037618519520915633" name="override" index="1Ryyee" />
      </concept>
      <concept id="2037618519520719251" name="jetbrains.mps.lang.typesystem2.structure.TermFeatureOverride" flags="ng" index="1RziaG">
        <reference id="2037618519520719300" name="feature" index="1RzibV" />
        <child id="2037618519520739064" name="term" index="1RzmR7" />
      </concept>
      <concept id="3063948360254202562" name="jetbrains.mps.lang.typesystem2.structure.LocalDeclarationStatement" flags="ng" index="3X$Joe" />
    </language>
  </registry>
  <node concept="1HGPq" id="5RfK0kxiwiX">
    <property role="TrG5h" value="Logic" />
    <node concept="BRKj$" id="5RfK0kxiwjU" role="1HGPt">
      <property role="TrG5h" value="Const" />
      <node concept="0oftK" id="5RfK0kxiwjV" role="BRKSY">
        <node concept="0ofun" id="5RfK0kxiwk0" role="0ofug">
          <property role="TrG5h" value="name" />
        </node>
      </node>
    </node>
    <node concept="BRKj$" id="5RfK0kxiwk2" role="1HGPt">
      <property role="TrG5h" value="And" />
      <node concept="0oftK" id="5RfK0kxiwk3" role="BRKSY">
        <node concept="0ofuv" id="5RfK0kxiwkb" role="0ofug">
          <property role="TrG5h" value="conjuncts" />
        </node>
      </node>
    </node>
    <node concept="BRKj$" id="5RfK0kxiwki" role="1HGPt">
      <property role="TrG5h" value="Or" />
      <node concept="0oftK" id="5RfK0kxiwkj" role="BRKSY">
        <node concept="0ofuv" id="5RfK0kxiwku" role="0ofug">
          <property role="TrG5h" value="disjuncts" />
        </node>
      </node>
    </node>
    <node concept="BRKj$" id="5RfK0kxiwkI" role="1HGPt">
      <property role="TrG5h" value="Not" />
      <node concept="0oftK" id="5RfK0kxiwkJ" role="BRKSY">
        <node concept="0ofuC" id="5RfK0kxiwkZ" role="0ofug">
          <property role="TrG5h" value="target" />
        </node>
      </node>
    </node>
    <node concept="BRKj$" id="5RfK0kxiwkx" role="1HGPt">
      <property role="TrG5h" value="If" />
      <node concept="0oftK" id="5RfK0kxiwky" role="BRKSY">
        <node concept="0ofuC" id="5RfK0kxiwl4" role="0ofug">
          <property role="TrG5h" value="antecedent" />
        </node>
        <node concept="0ofuC" id="5RfK0kxiwla" role="0ofug">
          <property role="TrG5h" value="consequence" />
        </node>
      </node>
    </node>
    <node concept="BRKj$" id="5RfK0kxiwle" role="1HGPt">
      <property role="TrG5h" value="Iff" />
      <node concept="0oftK" id="5RfK0kxiwlf" role="BRKSY">
        <node concept="0ofuC" id="5RfK0kxiwl$" role="0ofug">
          <property role="TrG5h" value="antecedent" />
        </node>
        <node concept="0ofuC" id="5RfK0kxiwlE" role="0ofug">
          <property role="TrG5h" value="consequence" />
        </node>
      </node>
    </node>
  </node>
  <node concept="0oKg$" id="5RfK0kxl0WE">
    <property role="TrG5h" value="Terms" />
    <node concept="0oKvU" id="5RfK0kxl0WF" role="0oKgB">
      <property role="TrG5h" value="Constant" />
      <node concept="3tC51N" id="5RfK0kxl1xE" role="3tC56T">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5RfK0kxl1xI" role="3tC51t" />
        <node concept="3tHm6F" id="5RfK0kxl1xL" role="3tH6H5">
          <node concept="3clFbS" id="5RfK0kxl1xM" role="16YjZG">
            <node concept="3clFbF" id="5RfK0kxl1xY" role="3cqZAp">
              <node concept="2OqwBi" id="5RfK0kxl1G5" role="3clFbG">
                <node concept="3eTFj6" id="5RfK0kxl1xX" role="2Oq$k0">
                  <ref role="3eTFj1" node="5RfK0kxl0WG" resolve="cst" />
                </node>
                <node concept="3TrcHB" id="5RfK0kxl1WT" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eYOCq" id="5RfK0kxl0WG" role="3eYTkm">
        <property role="TrG5h" value="cst" />
        <node concept="3Tqbb2" id="5RfK0kxl0WH" role="3eYSA1">
          <ref role="ehGHo" to="jfgh:3JXBM6C3Cn8" resolve="Constant" />
        </node>
      </node>
      <node concept="3uniRm" id="5RfK0kxl0X2" role="3unh6L">
        <node concept="3clFbS" id="5RfK0kxl0X9" role="3uniRr">
          <node concept="3Aqczg" id="5RfK0kxl0YB" role="3cqZAp">
            <node concept="3GeI9q" id="5RfK0kxl0Yx" role="3Aqpz8">
              <node concept="aZ4PW" id="5RfK0kxl0YQ" role="3GeI8F">
                <node concept="3txIi4" id="5RfK0kxl0ZL" role="aZ4eD" />
              </node>
              <node concept="1Q4cc8" id="5RfK0kxl0ZW" role="3GeI8D">
                <ref role="1nfQt" node="5RfK0kxiwjU" resolve="Const" />
                <node concept="1RziaG" id="5RfK0kxl0ZY" role="1Ryyee">
                  <ref role="1RzibV" node="5RfK0kxiwk0" resolve="name" />
                  <node concept="3AP2Rn" id="5RfK0kxl0ZZ" role="1RzmR7">
                    <node concept="3clFbS" id="5RfK0kxl100" role="16YjZG">
                      <node concept="3clFbF" id="5RfK0kxl10f" role="3cqZAp">
                        <node concept="3tDTZT" id="5RfK0kxl1ZH" role="3clFbG">
                          <ref role="3tDTNw" node="5RfK0kxl1xE" resolve="name" />
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
    <node concept="0oKvU" id="5RfK0kxl0WR" role="0oKgB">
      <property role="TrG5h" value="And" />
      <node concept="3tC51N" id="5RfK0kxl20G" role="3tC56T">
        <property role="TrG5h" value="conjunct" />
        <node concept="2I9FWS" id="5RfK0kxl20K" role="3tC51t" />
        <node concept="3tHm6F" id="5RfK0kxl20N" role="3tH6H5">
          <node concept="3clFbS" id="5RfK0kxl20O" role="16YjZG">
            <node concept="3clFbF" id="5RfK0kxl210" role="3cqZAp">
              <node concept="2OqwBi" id="5RfK0kxl2al" role="3clFbG">
                <node concept="3eTFj6" id="5RfK0kxl20Z" role="2Oq$k0">
                  <ref role="3eTFj1" node="5RfK0kxl0WS" resolve="and" />
                </node>
                <node concept="3Tsc0h" id="5RfK0kxl2rm" role="2OqNvi">
                  <ref role="3TtcxE" to="jfgh:3JXBM6C3FnW" resolve="conjunct" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eYOCq" id="5RfK0kxl0WS" role="3eYTkm">
        <property role="TrG5h" value="and" />
        <node concept="3Tqbb2" id="5RfK0kxl0WT" role="3eYSA1">
          <ref role="ehGHo" to="jfgh:3JXBM6C3FnV" resolve="And" />
        </node>
      </node>
      <node concept="3uniRm" id="5RfK0kxl2u5" role="3unh6L">
        <node concept="3clFbS" id="5RfK0kxl2$G" role="3uniRr">
          <node concept="3X$Joe" id="5RfK0kxl2_2" role="3cqZAp">
            <node concept="aZer4" id="5RfK0kxl2_3" role="3XD1gS">
              <property role="TrG5h" value="Conj" />
              <node concept="2OqwBi" id="5RfK0kxl3rs" role="3gj$pD">
                <node concept="3tDTZT" id="5RfK0kxl2_v" role="2Oq$k0">
                  <ref role="3tDTNw" node="5RfK0kxl20G" resolve="conjunct" />
                </node>
                <node concept="34oBXx" id="5RfK0kxl5Cj" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="1Dw8fO" id="5RfK0kxl5CZ" role="3cqZAp">
            <node concept="3clFbS" id="5RfK0kxl5D1" role="2LFqv$">
              <node concept="3cpWs8" id="5RfK0kxlow0" role="3cqZAp">
                <node concept="3cpWsn" id="5RfK0kxlow1" role="3cpWs9">
                  <property role="TrG5h" value="c" />
                  <node concept="3Tqbb2" id="5RfK0kxlovY" role="1tU5fm" />
                  <node concept="1y4W85" id="5RfK0kxlow2" role="33vP2m">
                    <node concept="37vLTw" id="5RfK0kxlow3" role="1y58nS">
                      <ref role="3cqZAo" node="5RfK0kxl5D2" resolve="i" />
                    </node>
                    <node concept="3tDTZT" id="5RfK0kxlow4" role="1y566C">
                      <ref role="3tDTNw" node="5RfK0kxl20G" resolve="conjunct" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Aqczg" id="5RfK0kxlbbN" role="3cqZAp">
                <node concept="1imXTs" id="5RfK0kxlbbH" role="3Aqpz8">
                  <node concept="37vLTw" id="5RfK0kxlow5" role="1imXSf">
                    <ref role="3cqZAo" node="5RfK0kxlow1" resolve="c" />
                  </node>
                  <node concept="a7P8L" id="5RfK0kxltLE" role="1imXu6">
                    <ref role="a7OzE" node="5RfK0kxl2_3" resolve="Conj" />
                    <node concept="37vLTw" id="5RfK0kxltLF" role="3gCZO6">
                      <ref role="3cqZAo" node="5RfK0kxl5D2" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="5RfK0kxl5D2" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="5RfK0kxl5Df" role="1tU5fm" />
              <node concept="3cmrfG" id="5RfK0kxl5Dw" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3eOVzh" id="5RfK0kxl6rZ" role="1Dwp0S">
              <node concept="2OqwBi" id="5RfK0kxl7Oz" role="3uHU7w">
                <node concept="3tDTZT" id="5RfK0kxl6sg" role="2Oq$k0">
                  <ref role="3tDTNw" node="5RfK0kxl20G" resolve="conjunct" />
                </node>
                <node concept="34oBXx" id="5RfK0kxla1v" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="5RfK0kxl5DD" role="3uHU7B">
                <ref role="3cqZAo" node="5RfK0kxl5D2" resolve="i" />
              </node>
            </node>
            <node concept="3uNrnE" id="5RfK0kxlaQt" role="1Dwrff">
              <node concept="37vLTw" id="5RfK0kxlaQv" role="2$L3a6">
                <ref role="3cqZAo" node="5RfK0kxl5D2" resolve="i" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="5RfK0kxlc3S" role="3cqZAp">
            <node concept="3GeI9q" id="5RfK0kxlc3M" role="3Aqpz8">
              <node concept="aZ4PW" id="5RfK0kxlc4q" role="3GeI8F">
                <node concept="3txIi4" id="5RfK0kxlc4w" role="aZ4eD" />
              </node>
              <node concept="1Q4cc8" id="5RfK0kxlc4A" role="3GeI8D">
                <ref role="1nfQt" node="5RfK0kxiwk2" resolve="And" />
                <node concept="1RziaG" id="5RfK0kxlc4C" role="1Ryyee">
                  <ref role="1RzibV" node="5RfK0kxiwkb" resolve="conjuncts" />
                  <node concept="3AP2Rn" id="5RfK0kxlc4D" role="1RzmR7">
                    <node concept="3clFbS" id="5RfK0kxlc4E" role="16YjZG">
                      <node concept="3clFbF" id="5RfK0kxlqI1" role="3cqZAp">
                        <node concept="1nq8_$" id="5RfK0kxltHS" role="3clFbG">
                          <node concept="a7P8L" id="5RfK0kxltHQ" role="1nq8_t">
                            <ref role="a7OzE" node="5RfK0kxl2_3" resolve="Conj" />
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
    <node concept="0oKvU" id="5RfK0kxld9g" role="0oKgB">
      <property role="TrG5h" value="Or" />
      <node concept="3tC51N" id="5RfK0kxld9h" role="3tC56T">
        <property role="TrG5h" value="disjunct" />
        <node concept="2I9FWS" id="5RfK0kxld9i" role="3tC51t" />
        <node concept="3tHm6F" id="5RfK0kxld9j" role="3tH6H5">
          <node concept="3clFbS" id="5RfK0kxld9k" role="16YjZG">
            <node concept="3clFbF" id="5RfK0kxld9l" role="3cqZAp">
              <node concept="2OqwBi" id="5RfK0kxld9m" role="3clFbG">
                <node concept="3eTFj6" id="5RfK0kxld9n" role="2Oq$k0">
                  <ref role="3eTFj1" node="5RfK0kxld9p" resolve="or" />
                </node>
                <node concept="3Tsc0h" id="5RfK0kxldOt" role="2OqNvi">
                  <ref role="3TtcxE" to="jfgh:3JXBM6C3Fp4" resolve="disjunct" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eYOCq" id="5RfK0kxld9p" role="3eYTkm">
        <property role="TrG5h" value="or" />
        <node concept="3Tqbb2" id="5RfK0kxld9q" role="3eYSA1">
          <ref role="ehGHo" to="jfgh:3JXBM6C3FoA" resolve="Or" />
        </node>
      </node>
      <node concept="3uniRm" id="5RfK0kxld9r" role="3unh6L">
        <node concept="3clFbS" id="5RfK0kxld9s" role="3uniRr">
          <node concept="3X$Joe" id="5RfK0kxld9t" role="3cqZAp">
            <node concept="aZer4" id="5RfK0kxld9v" role="3XD1gS">
              <property role="TrG5h" value="Disj" />
              <node concept="2OqwBi" id="5RfK0kxld9w" role="3gj$pD">
                <node concept="3tDTZT" id="5RfK0kxld9x" role="2Oq$k0">
                  <ref role="3tDTNw" node="5RfK0kxld9h" resolve="disjunct" />
                </node>
                <node concept="34oBXx" id="5RfK0kxld9y" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="1Dw8fO" id="5RfK0kxld9z" role="3cqZAp">
            <node concept="3clFbS" id="5RfK0kxld9$" role="2LFqv$">
              <node concept="3cpWs8" id="5RfK0kxloxE" role="3cqZAp">
                <node concept="3cpWsn" id="5RfK0kxloxF" role="3cpWs9">
                  <property role="TrG5h" value="d" />
                  <node concept="3Tqbb2" id="5RfK0kxloxB" role="1tU5fm" />
                  <node concept="1y4W85" id="5RfK0kxloxG" role="33vP2m">
                    <node concept="37vLTw" id="5RfK0kxloxH" role="1y58nS">
                      <ref role="3cqZAo" node="5RfK0kxld9K" resolve="i" />
                    </node>
                    <node concept="3tDTZT" id="5RfK0kxloxI" role="1y566C">
                      <ref role="3tDTNw" node="5RfK0kxld9h" resolve="disjunct" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Aqczg" id="5RfK0kxld9_" role="3cqZAp">
                <node concept="1imXTs" id="5RfK0kxld9A" role="3Aqpz8">
                  <node concept="37vLTw" id="5RfK0kxloxJ" role="1imXSf">
                    <ref role="3cqZAo" node="5RfK0kxloxF" resolve="d" />
                  </node>
                  <node concept="a7P8L" id="5RfK0kxltUj" role="1imXu6">
                    <ref role="a7OzE" node="5RfK0kxld9v" resolve="Disj" />
                    <node concept="37vLTw" id="5RfK0kxltUk" role="3gCZO6">
                      <ref role="3cqZAo" node="5RfK0kxld9K" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="5RfK0kxld9K" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="5RfK0kxld9L" role="1tU5fm" />
              <node concept="3cmrfG" id="5RfK0kxld9M" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3eOVzh" id="5RfK0kxld9N" role="1Dwp0S">
              <node concept="2OqwBi" id="5RfK0kxld9O" role="3uHU7w">
                <node concept="3tDTZT" id="5RfK0kxld9P" role="2Oq$k0">
                  <ref role="3tDTNw" node="5RfK0kxld9h" resolve="disjunct" />
                </node>
                <node concept="34oBXx" id="5RfK0kxld9Q" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="5RfK0kxld9R" role="3uHU7B">
                <ref role="3cqZAo" node="5RfK0kxld9K" resolve="i" />
              </node>
            </node>
            <node concept="3uNrnE" id="5RfK0kxld9S" role="1Dwrff">
              <node concept="37vLTw" id="5RfK0kxld9T" role="2$L3a6">
                <ref role="3cqZAo" node="5RfK0kxld9K" resolve="i" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="5RfK0kxld9U" role="3cqZAp">
            <node concept="3GeI9q" id="5RfK0kxld9V" role="3Aqpz8">
              <node concept="aZ4PW" id="5RfK0kxld9W" role="3GeI8F">
                <node concept="3txIi4" id="5RfK0kxld9X" role="aZ4eD" />
              </node>
              <node concept="1Q4cc8" id="5RfK0kxld9Y" role="3GeI8D">
                <ref role="1nfQt" node="5RfK0kxiwki" resolve="Or" />
                <node concept="1RziaG" id="5RfK0kxld9Z" role="1Ryyee">
                  <ref role="1RzibV" node="5RfK0kxiwku" resolve="disjuncts" />
                  <node concept="3AP2Rn" id="5RfK0kxlda0" role="1RzmR7">
                    <node concept="3clFbS" id="5RfK0kxlda1" role="16YjZG">
                      <node concept="3clFbF" id="5RfK0kxlda2" role="3cqZAp">
                        <node concept="1nq8_$" id="5RfK0kxlubX" role="3clFbG">
                          <node concept="a7P8L" id="5RfK0kxlubS" role="1nq8_t">
                            <ref role="a7OzE" node="5RfK0kxld9v" resolve="Disj" />
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
    <node concept="0oKvU" id="5RfK0kxlwbr" role="0oKgB">
      <property role="TrG5h" value="Not" />
      <node concept="3tC51N" id="5RfK0kxlwiT" role="3tC56T">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="5RfK0kxlwiX" role="3tC51t" />
        <node concept="3tHm6F" id="5RfK0kxlwj8" role="3tH6H5">
          <node concept="3clFbS" id="5RfK0kxlwj9" role="16YjZG">
            <node concept="3clFbF" id="5RfK0kxlwjl" role="3cqZAp">
              <node concept="2OqwBi" id="5RfK0kxlwrI" role="3clFbG">
                <node concept="3eTFj6" id="5RfK0kxlwjk" role="2Oq$k0">
                  <ref role="3eTFj1" node="5RfK0kxlwbs" resolve="not" />
                </node>
                <node concept="3TrEf2" id="5RfK0kxlwAU" role="2OqNvi">
                  <ref role="3Tt5mk" to="jfgh:3JXBM6C3Cno" resolve="target" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eYOCq" id="5RfK0kxlwbs" role="3eYTkm">
        <property role="TrG5h" value="not" />
        <node concept="3Tqbb2" id="5RfK0kxlwbt" role="3eYSA1">
          <ref role="ehGHo" to="jfgh:3JXBM6C3Cnn" resolve="Not" />
        </node>
      </node>
      <node concept="3uniRm" id="5RfK0kxlwDE" role="3unh6L">
        <node concept="3clFbS" id="5RfK0kxlwDI" role="3uniRr">
          <node concept="3X$Joe" id="5RfK0kxlwDG" role="3cqZAp">
            <node concept="aZer4" id="5RfK0kxlwDH" role="3XD1gS">
              <property role="TrG5h" value="Target" />
            </node>
          </node>
          <node concept="3Aqczg" id="5RfK0kxlwE8" role="3cqZAp">
            <node concept="1imXTs" id="5RfK0kxlwE2" role="3Aqpz8">
              <node concept="a7P8L" id="5RfK0kxlwEg" role="1imXu6">
                <ref role="a7OzE" node="5RfK0kxlwDH" resolve="Target" />
              </node>
              <node concept="3tDTZT" id="5RfK0kxlwEl" role="1imXSf">
                <ref role="3tDTNw" node="5RfK0kxlwiT" resolve="target" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="5RfK0kxlwEC" role="3cqZAp">
            <node concept="3GeI9q" id="5RfK0kxlwEy" role="3Aqpz8">
              <node concept="aZ4PW" id="5RfK0kxlwEN" role="3GeI8F">
                <node concept="3txIi4" id="5RfK0kxlwET" role="aZ4eD" />
              </node>
              <node concept="1Q4cc8" id="5RfK0kxlwEZ" role="3GeI8D">
                <ref role="1nfQt" node="5RfK0kxiwkI" resolve="Not" />
                <node concept="1RziaG" id="5RfK0kxlwF1" role="1Ryyee">
                  <ref role="1RzibV" node="5RfK0kxiwkZ" resolve="target" />
                  <node concept="3AP2Rn" id="5RfK0kxlwF2" role="1RzmR7">
                    <node concept="3clFbS" id="5RfK0kxlwF3" role="16YjZG">
                      <node concept="3clFbF" id="5RfK0kxlwFi" role="3cqZAp">
                        <node concept="1nq8_$" id="5RfK0kxlwFh" role="3clFbG">
                          <node concept="a7P8L" id="5RfK0kxlwFg" role="1nq8_t">
                            <ref role="a7OzE" node="5RfK0kxlwDH" resolve="Target" />
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
    <node concept="0oKvU" id="5RfK0kxlwHv" role="0oKgB">
      <property role="TrG5h" value="If" />
      <node concept="3tC51N" id="5RfK0kxlwKc" role="3tC56T">
        <property role="TrG5h" value="antecedent" />
        <node concept="3Tqbb2" id="5RfK0kxlwKg" role="3tC51t" />
        <node concept="3tHm6F" id="5RfK0kxlwKj" role="3tH6H5">
          <node concept="3clFbS" id="5RfK0kxlwKk" role="16YjZG">
            <node concept="3clFbF" id="5RfK0kxlwKG" role="3cqZAp">
              <node concept="2OqwBi" id="5RfK0kxlwT5" role="3clFbG">
                <node concept="3eTFj6" id="5RfK0kxlwKF" role="2Oq$k0">
                  <ref role="3eTFj1" node="5RfK0kxlwHw" resolve="_if" />
                </node>
                <node concept="3TrEf2" id="5RfK0kxlxgC" role="2OqNvi">
                  <ref role="3Tt5mk" to="jfgh:3JXBM6C3Fpi" resolve="antecedent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3tC51N" id="5RfK0kxlxn9" role="3tC56T">
        <property role="TrG5h" value="consequent" />
        <node concept="3Tqbb2" id="5RfK0kxlxna" role="3tC51t" />
        <node concept="3tHm6F" id="5RfK0kxlxnb" role="3tH6H5">
          <node concept="3clFbS" id="5RfK0kxlxnc" role="16YjZG">
            <node concept="3clFbF" id="5RfK0kxlxnd" role="3cqZAp">
              <node concept="2OqwBi" id="5RfK0kxlxne" role="3clFbG">
                <node concept="3eTFj6" id="5RfK0kxlxnf" role="2Oq$k0">
                  <ref role="3eTFj1" node="5RfK0kxlwHw" resolve="_if" />
                </node>
                <node concept="3TrEf2" id="5RfK0kxlxE1" role="2OqNvi">
                  <ref role="3Tt5mk" to="jfgh:3JXBM6C3Fpk" resolve="consequent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eYOCq" id="5RfK0kxlwHw" role="3eYTkm">
        <property role="TrG5h" value="_if" />
        <node concept="3Tqbb2" id="5RfK0kxlwHx" role="3eYSA1">
          <ref role="ehGHo" to="jfgh:3JXBM6C3Fph" resolve="If" />
        </node>
      </node>
      <node concept="3uniRm" id="5RfK0kxlxIw" role="3unh6L">
        <node concept="3clFbS" id="5RfK0kxlxI$" role="3uniRr">
          <node concept="3X$Joe" id="5RfK0kxlxIy" role="3cqZAp">
            <node concept="aZer4" id="5RfK0kxlxIz" role="3XD1gS">
              <property role="TrG5h" value="Ante" />
            </node>
            <node concept="aZer4" id="5RfK0kxlxIL" role="3XD1gS">
              <property role="TrG5h" value="Cons" />
            </node>
          </node>
          <node concept="3Aqczg" id="5RfK0kxlxJ8" role="3cqZAp">
            <node concept="1imXTs" id="5RfK0kxlxJ2" role="3Aqpz8">
              <node concept="a7P8L" id="5RfK0kxlxJh" role="1imXu6">
                <ref role="a7OzE" node="5RfK0kxlxIz" resolve="Ante" />
              </node>
              <node concept="3tDTZT" id="5RfK0kxlxJm" role="1imXSf">
                <ref role="3tDTNw" node="5RfK0kxlwKc" resolve="antecedent" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="5RfK0kxlxJE" role="3cqZAp">
            <node concept="1imXTs" id="5RfK0kxlxJ$" role="3Aqpz8">
              <node concept="a7P8L" id="5RfK0kxlxJR" role="1imXu6">
                <ref role="a7OzE" node="5RfK0kxlxIL" resolve="Cons" />
              </node>
              <node concept="3tDTZT" id="5RfK0kxlxJW" role="1imXSf">
                <ref role="3tDTNw" node="5RfK0kxlxn9" resolve="consequent" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="5RfK0kxlxKk" role="3cqZAp">
            <node concept="3GeI9q" id="5RfK0kxlxKe" role="3Aqpz8">
              <node concept="aZ4PW" id="5RfK0kxlxK$" role="3GeI8F">
                <node concept="3txIi4" id="5RfK0kxlxKE" role="aZ4eD" />
              </node>
              <node concept="1Q4cc8" id="5RfK0kxlxKK" role="3GeI8D">
                <ref role="1nfQt" node="5RfK0kxiwkx" resolve="If" />
                <node concept="1RziaG" id="5RfK0kxlxKM" role="1Ryyee">
                  <ref role="1RzibV" node="5RfK0kxiwl4" resolve="antecedent" />
                  <node concept="3AP2Rn" id="5RfK0kxlxKN" role="1RzmR7">
                    <node concept="3clFbS" id="5RfK0kxlxKO" role="16YjZG">
                      <node concept="3clFbF" id="5RfK0kxlxL3" role="3cqZAp">
                        <node concept="1nq8_$" id="5RfK0kxlxL2" role="3clFbG">
                          <node concept="a7P8L" id="5RfK0kxlxL1" role="1nq8_t">
                            <ref role="a7OzE" node="5RfK0kxlxIz" resolve="Ante" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1RziaG" id="5RfK0kxlxRw" role="1Ryyee">
                  <ref role="1RzibV" node="5RfK0kxiwla" resolve="consequence" />
                  <node concept="3AP2Rn" id="5RfK0kxlxRx" role="1RzmR7">
                    <node concept="3clFbS" id="5RfK0kxlxRy" role="16YjZG">
                      <node concept="3clFbF" id="5RfK0kxlxRR" role="3cqZAp">
                        <node concept="1nq8_$" id="5RfK0kxlxRQ" role="3clFbG">
                          <node concept="a7P8L" id="5RfK0kxlxRP" role="1nq8_t">
                            <ref role="a7OzE" node="5RfK0kxlxIL" resolve="Cons" />
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
    <node concept="0oKvU" id="5RfK0kxly6A" role="0oKgB">
      <property role="TrG5h" value="Iff" />
      <node concept="3tC51N" id="5RfK0kxly6B" role="3tC56T">
        <property role="TrG5h" value="antecedent" />
        <node concept="3Tqbb2" id="5RfK0kxly6C" role="3tC51t" />
        <node concept="3tHm6F" id="5RfK0kxly6D" role="3tH6H5">
          <node concept="3clFbS" id="5RfK0kxly6E" role="16YjZG">
            <node concept="3clFbF" id="5RfK0kxly6F" role="3cqZAp">
              <node concept="2OqwBi" id="5RfK0kxly6G" role="3clFbG">
                <node concept="3eTFj6" id="5RfK0kxly6H" role="2Oq$k0">
                  <ref role="3eTFj1" node="5RfK0kxly6R" resolve="iff" />
                </node>
                <node concept="3TrEf2" id="5RfK0kxlyLG" role="2OqNvi">
                  <ref role="3Tt5mk" to="jfgh:3JXBM6C3FrF" resolve="antecedent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3tC51N" id="5RfK0kxly6J" role="3tC56T">
        <property role="TrG5h" value="consequent" />
        <node concept="3Tqbb2" id="5RfK0kxly6K" role="3tC51t" />
        <node concept="3tHm6F" id="5RfK0kxly6L" role="3tH6H5">
          <node concept="3clFbS" id="5RfK0kxly6M" role="16YjZG">
            <node concept="3clFbF" id="5RfK0kxly6N" role="3cqZAp">
              <node concept="2OqwBi" id="5RfK0kxly6O" role="3clFbG">
                <node concept="3eTFj6" id="5RfK0kxly6P" role="2Oq$k0">
                  <ref role="3eTFj1" node="5RfK0kxly6R" resolve="iff" />
                </node>
                <node concept="3TrEf2" id="5RfK0kxlyZr" role="2OqNvi">
                  <ref role="3Tt5mk" to="jfgh:3JXBM6C3FrG" resolve="consequent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eYOCq" id="5RfK0kxly6R" role="3eYTkm">
        <property role="TrG5h" value="iff" />
        <node concept="3Tqbb2" id="5RfK0kxly6S" role="3eYSA1">
          <ref role="ehGHo" to="jfgh:3JXBM6C3Frx" resolve="Iff" />
        </node>
      </node>
      <node concept="3uniRm" id="5RfK0kxly6T" role="3unh6L">
        <node concept="3clFbS" id="5RfK0kxly6U" role="3uniRr">
          <node concept="3X$Joe" id="5RfK0kxly6V" role="3cqZAp">
            <node concept="aZer4" id="5RfK0kxly6W" role="3XD1gS">
              <property role="TrG5h" value="Ante" />
            </node>
            <node concept="aZer4" id="5RfK0kxly6X" role="3XD1gS">
              <property role="TrG5h" value="Cons" />
            </node>
          </node>
          <node concept="3Aqczg" id="5RfK0kxly6Y" role="3cqZAp">
            <node concept="1imXTs" id="5RfK0kxly6Z" role="3Aqpz8">
              <node concept="a7P8L" id="5RfK0kxly70" role="1imXu6">
                <ref role="a7OzE" node="5RfK0kxly6W" resolve="Ante" />
              </node>
              <node concept="3tDTZT" id="5RfK0kxly71" role="1imXSf">
                <ref role="3tDTNw" node="5RfK0kxly6B" resolve="antecedent" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="5RfK0kxly72" role="3cqZAp">
            <node concept="1imXTs" id="5RfK0kxly73" role="3Aqpz8">
              <node concept="a7P8L" id="5RfK0kxly74" role="1imXu6">
                <ref role="a7OzE" node="5RfK0kxly6X" resolve="Cons" />
              </node>
              <node concept="3tDTZT" id="5RfK0kxly75" role="1imXSf">
                <ref role="3tDTNw" node="5RfK0kxly6J" resolve="consequent" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="5RfK0kxly76" role="3cqZAp">
            <node concept="3GeI9q" id="5RfK0kxly77" role="3Aqpz8">
              <node concept="aZ4PW" id="5RfK0kxly78" role="3GeI8F">
                <node concept="3txIi4" id="5RfK0kxly79" role="aZ4eD" />
              </node>
              <node concept="1Q4cc8" id="5RfK0kxly7a" role="3GeI8D">
                <ref role="1nfQt" node="5RfK0kxiwle" resolve="Iff" />
                <node concept="1RziaG" id="5RfK0kxly7b" role="1Ryyee">
                  <ref role="1RzibV" node="5RfK0kxiwl$" resolve="antecedent" />
                  <node concept="3AP2Rn" id="5RfK0kxly7c" role="1RzmR7">
                    <node concept="3clFbS" id="5RfK0kxly7d" role="16YjZG">
                      <node concept="3clFbF" id="5RfK0kxly7e" role="3cqZAp">
                        <node concept="1nq8_$" id="5RfK0kxly7f" role="3clFbG">
                          <node concept="a7P8L" id="5RfK0kxly7g" role="1nq8_t">
                            <ref role="a7OzE" node="5RfK0kxly6W" resolve="Ante" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1RziaG" id="5RfK0kxly7h" role="1Ryyee">
                  <ref role="1RzibV" node="5RfK0kxiwlE" resolve="consequence" />
                  <node concept="3AP2Rn" id="5RfK0kxly7i" role="1RzmR7">
                    <node concept="3clFbS" id="5RfK0kxly7j" role="16YjZG">
                      <node concept="3clFbF" id="5RfK0kxly7k" role="3cqZAp">
                        <node concept="1nq8_$" id="5RfK0kxly7l" role="3clFbG">
                          <node concept="a7P8L" id="5RfK0kxly7m" role="1nq8_t">
                            <ref role="a7OzE" node="5RfK0kxly6X" resolve="Cons" />
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
  <node concept="AVZre" id="5RfK0kxl_zr">
    <property role="TrG5h" value="Reasoning" />
    <node concept="AVZhu" id="5RfK0kxl_zw" role="3ArX_J">
      <property role="TrG5h" value="assumption_ok" />
      <node concept="2t___k" id="5RfK0kxl_zz" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3Pwi" resolve="Assumption" />
        <node concept="3A20r5" id="5RfK0kxl_z$" role="2t_VXX">
          <property role="TrG5h" value="ass" />
        </node>
      </node>
      <node concept="3Aq9E8" id="5RfK0kxl_zH" role="3otmyu">
        <node concept="3I6sU6" id="5RfK0kxl_zI" role="3Ip0Jz">
          <node concept="3I6s7M" id="2aBGSFgfVxM" role="3I6sU7">
            <node concept="1imXTs" id="2aBGSFgfVxG" role="3I6s78">
              <node concept="a7P8L" id="2aBGSFgfVy6" role="1imXu6">
                <ref role="a7OzE" node="2aBGSFgfVxh" resolve="Stnc" />
              </node>
              <node concept="2OqwBi" id="2aBGSFgg5UP" role="1imXSf">
                <node concept="3A2sRY" id="2aBGSFgfVy1" role="2Oq$k0">
                  <ref role="3A2yKK" node="5RfK0kxl_z$" resolve="ass" />
                </node>
                <node concept="3TrEf2" id="2aBGSFggSCW" role="2OqNvi">
                  <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2aBGSFgfVys" role="3I6sU7">
            <node concept="3Aqt3T" id="2aBGSFgfVyq" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="a7P8L" id="2aBGSFgfVyM" role="3AunhB">
                <ref role="a7OzE" node="2aBGSFgfVxh" resolve="Stnc" />
              </node>
              <node concept="3BlFb$" id="2aBGSFgfVyU" role="3AunhB">
                <node concept="3A2sRY" id="2aBGSFgfVz4" role="3BlFb_">
                  <ref role="3A2yKK" node="5RfK0kxl_z$" resolve="ass" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P7tuG" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7tuE" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7tv5" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7tve" role="3BlFb_">
                  <ref role="3A2yKK" node="5RfK0kxl_z$" resolve="ass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3NuqgR" id="5RfK0kxl_zV" role="3Nuqhd">
          <node concept="aZer4" id="2aBGSFgfVxh" role="3XD1gS">
            <property role="TrG5h" value="Stnc" />
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="5jVx7S22gUI" role="3ArX_J">
      <property role="TrG5h" value="premise_ok" />
      <node concept="2t___k" id="5jVx7S22gUJ" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:$u9BK__JRe" resolve="Premise" />
        <node concept="3A20r5" id="5jVx7S22gUK" role="2t_VXX">
          <property role="TrG5h" value="prem" />
        </node>
      </node>
      <node concept="3Aq9E8" id="5jVx7S22gUL" role="3otmyu">
        <node concept="3I6sU6" id="5jVx7S22gUM" role="3Ip0Jz">
          <node concept="3I6s7M" id="5jVx7S22gUN" role="3I6sU7">
            <node concept="1imXTs" id="5jVx7S22gUO" role="3I6s78">
              <node concept="a7P8L" id="5jVx7S22gUP" role="1imXu6">
                <ref role="a7OzE" node="5jVx7S22gV3" resolve="Stnc" />
              </node>
              <node concept="2OqwBi" id="5jVx7S22gUQ" role="1imXSf">
                <node concept="3A2sRY" id="5jVx7S22gUR" role="2Oq$k0">
                  <ref role="3A2yKK" node="5jVx7S22gUK" resolve="prem" />
                </node>
                <node concept="3TrEf2" id="5jVx7S22hrC" role="2OqNvi">
                  <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="5jVx7S22gUT" role="3I6sU7">
            <node concept="3Aqt3T" id="5jVx7S22gUU" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="a7P8L" id="5jVx7S22gUV" role="3AunhB">
                <ref role="a7OzE" node="5jVx7S22gV3" resolve="Stnc" />
              </node>
              <node concept="3BlFb$" id="5jVx7S22gUW" role="3AunhB">
                <node concept="3A2sRY" id="5jVx7S22gUX" role="3BlFb_">
                  <ref role="3A2yKK" node="5jVx7S22gUK" resolve="prem" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="5jVx7S22gUY" role="3I6sU7">
            <node concept="3Aqt3T" id="5jVx7S22gUZ" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="5jVx7S22gV0" role="3AunhB">
                <node concept="3A2sRY" id="5jVx7S22gV1" role="3BlFb_">
                  <ref role="3A2yKK" node="5jVx7S22gUK" resolve="prem" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3NuqgR" id="5jVx7S22gV2" role="3Nuqhd">
          <node concept="aZer4" id="5jVx7S22gV3" role="3XD1gS">
            <property role="TrG5h" value="Stnc" />
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2aBGSFgfACW" role="3ArX_J">
      <property role="TrG5h" value="Judgement_conclusion" />
      <node concept="3Aq9E8" id="2aBGSFgfAEo" role="3otmyu">
        <node concept="3I6sU6" id="2aBGSFgfAEp" role="3Ip0Jz">
          <node concept="3I6s7M" id="2aBGSFgfAEE" role="3I6sU7">
            <node concept="1imXTs" id="2aBGSFgfAEB" role="3I6s78">
              <node concept="a7P8L" id="2aBGSFgfAEK" role="1imXu6">
                <ref role="a7OzE" node="2aBGSFgfAEu" resolve="Stnc" />
              </node>
              <node concept="2OqwBi" id="2aBGSFgfANH" role="1imXSf">
                <node concept="3A2sRY" id="2aBGSFgfAEP" role="2Oq$k0">
                  <ref role="3A2yKK" node="2aBGSFgfAE9" resolve="jdg" />
                </node>
                <node concept="3TrEf2" id="2aBGSFggS9I" role="2OqNvi">
                  <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2aBGSFgfBj9" role="3I6sU7">
            <node concept="3Aqt3T" id="2aBGSFgfBj7" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="a7P8L" id="2aBGSFgfBjo" role="3AunhB">
                <ref role="a7OzE" node="2aBGSFgfAEu" resolve="Stnc" />
              </node>
              <node concept="3BlFb$" id="2aBGSFgfBjw" role="3AunhB">
                <node concept="3A2sRY" id="2aBGSFgfBjE" role="3BlFb_">
                  <ref role="3A2yKK" node="2aBGSFgfAE9" resolve="jdg" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3NuqgR" id="2aBGSFgfAEt" role="3Nuqhd">
          <node concept="aZer4" id="2aBGSFgfAEu" role="3XD1gS">
            <property role="TrG5h" value="Stnc" />
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2aBGSFgfAE8" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3FsA" resolve="Judgement" />
        <node concept="3A20r5" id="2aBGSFgfAE9" role="2t_VXX">
          <property role="TrG5h" value="jdg" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="5jVx7S216YY" role="3ArX_J">
      <property role="TrG5h" value="reiteration_valid" />
      <node concept="3Aq9E8" id="5jVx7S21uiY" role="3otmyu">
        <node concept="3I6sU6" id="5jVx7S21uiZ" role="3Ip0Jz">
          <node concept="3I6s7M" id="5jVx7S21uj3" role="3I6sU7">
            <node concept="3Aqt3T" id="5jVx7S21uj2" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="5jVx7S21uj8" role="3AunhB">
                <node concept="3A2sRY" id="5jVx7S21ujh" role="3BlFb_">
                  <ref role="3A2yKK" node="5jVx7S2178P" resolve="reit" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="5jVx7S217sJ" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="5jVx7S217sK" role="3Ip0Jz">
          <node concept="3I6s7M" id="5jVx7S21O1J" role="3I6sU7">
            <node concept="3Aqt3T" id="5jVx7S21O1H" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="a7P8L" id="5jVx7S21O24" role="3AunhB">
                <ref role="a7OzE" node="5jVx7S21pW_" resolve="Con" />
              </node>
              <node concept="3BlFb$" id="5jVx7S21O2a" role="3AunhB">
                <node concept="3A2sRY" id="5jVx7S21O2k" role="3BlFb_">
                  <ref role="3A2yKK" node="5jVx7S2178P" resolve="reit" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="5jVx7S217t5" role="3I6sU7">
            <node concept="3Aqt3T" id="5jVx7S217t4" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="1uarlV" id="5jVx7S21pWO" role="3AunhB">
                <node concept="a7P8L" id="5jVx7S21je4" role="1uarlU">
                  <ref role="a7OzE" node="5jVx7S217sP" resolve="Ass" />
                </node>
                <node concept="a7P8L" id="5jVx7S21pX8" role="1uarlW">
                  <ref role="a7OzE" node="5jVx7S21pW_" resolve="Con" />
                </node>
              </node>
              <node concept="3BlFb$" id="5jVx7S21jec" role="3AunhB">
                <node concept="2OqwBi" id="5jVx7S21pr9" role="3BlFb_">
                  <node concept="2OqwBi" id="5jVx7S21lHO" role="2Oq$k0">
                    <node concept="2OqwBi" id="5jVx7S21jnV" role="2Oq$k0">
                      <node concept="3A2sRY" id="5jVx7S21jem" role="2Oq$k0">
                        <ref role="3A2yKK" node="5jVx7S2178P" resolve="reit" />
                      </node>
                      <node concept="3Tsc0h" id="5jVx7S21kbH" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                    <node concept="1uHKPH" id="5jVx7S21nFd" role="2OqNvi" />
                  </node>
                  <node concept="3TrEf2" id="5jVx7S21pUp" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3NuqgR" id="5jVx7S217sO" role="3Nuqhd">
          <node concept="aZer4" id="5jVx7S21pW_" role="3XD1gS">
            <property role="TrG5h" value="Con" />
          </node>
          <node concept="aZer4" id="5jVx7S217sP" role="3XD1gS">
            <property role="TrG5h" value="Ass" />
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="5jVx7S21pWi" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="5jVx7S21pWj" role="3Ip0Jz">
          <node concept="3I6s7M" id="5jVx7S21pXe" role="3I6sU7">
            <node concept="3Aqt3T" id="5jVx7S21pXd" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="5jVx7S21pXj" role="3AunhB">
                <node concept="2OqwBi" id="5jVx7S21SqX" role="3BlFb_">
                  <node concept="2OqwBi" id="5jVx7S21si9" role="2Oq$k0">
                    <node concept="2OqwBi" id="5jVx7S21q71" role="2Oq$k0">
                      <node concept="3A2sRY" id="5jVx7S21pXs" role="2Oq$k0">
                        <ref role="3A2yKK" node="5jVx7S2178P" resolve="reit" />
                      </node>
                      <node concept="3Tsc0h" id="5jVx7S21qHJ" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                    <node concept="1uHKPH" id="5jVx7S21uib" role="2OqNvi" />
                  </node>
                  <node concept="3TrEf2" id="5jVx7S21T6N" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="5jVx7S2178O" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:5jVx7S1Yau5" resolve="Reiteration" />
        <node concept="3A20r5" id="5jVx7S2178P" role="2t_VXX">
          <property role="TrG5h" value="reit" />
        </node>
      </node>
      <node concept="cBwPQ" id="5jVx7S217t8" role="30RCb4">
        <node concept="3clFbS" id="5jVx7S217t9" role="16YjZG">
          <node concept="3clFbF" id="5jVx7S217tm" role="3cqZAp">
            <node concept="3clFbC" id="5jVx7S21iTF" role="3clFbG">
              <node concept="3cmrfG" id="5jVx7S21iTU" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="5jVx7S219L5" role="3uHU7B">
                <node concept="2OqwBi" id="5jVx7S217D2" role="2Oq$k0">
                  <node concept="3A2sRY" id="5jVx7S217tl" role="2Oq$k0">
                    <ref role="3A2yKK" node="5jVx7S2178P" resolve="reit" />
                  </node>
                  <node concept="3Tsc0h" id="5jVx7S217Wz" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                  </node>
                </node>
                <node concept="34oBXx" id="5jVx7S21d8X" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2aBGSFgfrJr" role="3ArX_J">
      <property role="TrG5h" value="orIntro_valid1" />
      <node concept="3Aq93q" id="2aBGSFgfwOr" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2aBGSFgfwOs" role="3Ip0Jz">
          <node concept="3I6s7M" id="2aBGSFgfAB$" role="3I6sU7">
            <node concept="3Aqt3T" id="2aBGSFgfABz" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="a7P8L" id="2aBGSFgfABD" role="3AunhB">
                <ref role="a7OzE" node="2aBGSFgfwOx" resolve="Prem" />
              </node>
              <node concept="3BlFb$" id="2aBGSFgfBkU" role="3AunhB">
                <node concept="2OqwBi" id="2aBGSFggddW" role="3BlFb_">
                  <node concept="2OqwBi" id="2aBGSFgfDA8" role="2Oq$k0">
                    <node concept="2OqwBi" id="2aBGSFgfBuD" role="2Oq$k0">
                      <node concept="3A2sRY" id="2aBGSFgfBl4" role="2Oq$k0">
                        <ref role="3A2yKK" node="2aBGSFgfrJt" resolve="oi" />
                      </node>
                      <node concept="3Tsc0h" id="2aBGSFgfC1E" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                    <node concept="1uHKPH" id="2aBGSFgfFiK" role="2OqNvi" />
                  </node>
                  <node concept="3TrEf2" id="2aBGSFggdst" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2aBGSFgfFke" role="3I6sU7">
            <node concept="3Aqt3T" id="2aBGSFgfFkc" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="1uarlV" id="2YqrT$P3gAW" role="3AunhB">
                <node concept="a7P8L" id="2YqrT$P3gAX" role="1uarlU">
                  <ref role="a7OzE" node="2aBGSFgfFks" resolve="Con" />
                </node>
                <node concept="1Q4cc8" id="2YqrT$P3gAY" role="1uarlW">
                  <ref role="1nfQt" node="5RfK0kxiwki" resolve="Or" />
                  <node concept="1RziaG" id="2YqrT$P45Ca" role="1Ryyee">
                    <ref role="1RzibV" node="5RfK0kxiwku" resolve="disjuncts" />
                    <node concept="3AP2Rn" id="2YqrT$P45Cb" role="1RzmR7">
                      <node concept="3clFbS" id="2YqrT$P45Cc" role="16YjZG">
                        <node concept="3clFbF" id="2YqrT$P4bbS" role="3cqZAp">
                          <node concept="1oi1Uc" id="2YqrT$P4bbQ" role="3clFbG">
                            <node concept="KCUsM" id="2YqrT$P4beJ" role="1oi0x0">
                              <node concept="1oi5UN" id="2YqrT$P4hmv" role="KCVpo">
                                <node concept="22Ky0T" id="2YqrT$P4hvj" role="lGtFl">
                                  <node concept="1nq8_$" id="2YqrT$P4hvm" role="22Ky0K">
                                    <node concept="a7P8L" id="2YqrT$P4hvl" role="1nq8_t">
                                      <ref role="a7OzE" node="2aBGSFgfwOx" resolve="Prem" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2IllgU" id="2YqrT$P4bqX" role="KCVpo" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3BlFb$" id="2aBGSFgfGaB" role="3AunhB">
                <node concept="3A2sRY" id="2aBGSFgfGaY" role="3BlFb_">
                  <ref role="3A2yKK" node="2aBGSFgfrJt" resolve="oi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3NuqgR" id="2aBGSFgfwOw" role="3Nuqhd">
          <node concept="aZer4" id="2aBGSFgfFks" role="3XD1gS">
            <property role="TrG5h" value="Con" />
          </node>
          <node concept="aZer4" id="2aBGSFgfwOx" role="3XD1gS">
            <property role="TrG5h" value="Prem" />
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="2YqrT$P6wDP" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2YqrT$P6wDQ" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7tzb" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7tz9" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7tLP" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P7tLQ" role="3BlFb_">
                  <node concept="2OqwBi" id="2YqrT$P7tLR" role="2Oq$k0">
                    <node concept="2OqwBi" id="2YqrT$P7tLS" role="2Oq$k0">
                      <node concept="3A2sRY" id="2YqrT$P7tLT" role="2Oq$k0">
                        <ref role="3A2yKK" node="2aBGSFgfrJt" resolve="oi" />
                      </node>
                      <node concept="3Tsc0h" id="2YqrT$P7tLU" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                    <node concept="1uHKPH" id="2YqrT$P7tLV" role="2OqNvi" />
                  </node>
                  <node concept="3TrEf2" id="2YqrT$P7tLW" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2aBGSFgfrJs" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3UT$" resolve="OrIntro" />
        <node concept="3A20r5" id="2aBGSFgfrJt" role="2t_VXX">
          <property role="TrG5h" value="oi" />
        </node>
      </node>
      <node concept="3Aq9E8" id="2aBGSFgfrJu" role="3otmyu">
        <node concept="3I6sU6" id="2aBGSFgfrJv" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7tYK" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7tYI" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7tYU" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7tZ3" role="3BlFb_">
                  <ref role="3A2yKK" node="2aBGSFgfrJt" resolve="oi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="cBwPQ" id="2aBGSFgfwOB" role="30RCb4">
        <node concept="3clFbS" id="2aBGSFgfwOC" role="16YjZG">
          <node concept="3clFbF" id="2aBGSFgfwOP" role="3cqZAp">
            <node concept="2OqwBi" id="2aBGSFgfzbc" role="3clFbG">
              <node concept="2OqwBi" id="2aBGSFgfx0y" role="2Oq$k0">
                <node concept="3A2sRY" id="2aBGSFgfwOO" role="2Oq$k0">
                  <ref role="3A2yKK" node="2aBGSFgfrJt" resolve="oi" />
                </node>
                <node concept="3Tsc0h" id="2aBGSFgfxmA" role="2OqNvi">
                  <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                </node>
              </node>
              <node concept="3GX2aA" id="2aBGSFgfAzm" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2aBGSFgfGfo" role="3ArX_J">
      <property role="TrG5h" value="orIntro_valid2" />
      <node concept="3Aq93q" id="2aBGSFgfGfp" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2aBGSFgfGfq" role="3Ip0Jz">
          <node concept="3I6s7M" id="2aBGSFgfGfr" role="3I6sU7">
            <node concept="3Aqt3T" id="2aBGSFgfGfs" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="a7P8L" id="2aBGSFgfGft" role="3AunhB">
                <ref role="a7OzE" node="2aBGSFgfGfS" resolve="Prem" />
              </node>
              <node concept="3BlFb$" id="2aBGSFgfGfu" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P4oXA" role="3BlFb_">
                  <node concept="2OqwBi" id="2aBGSFgfGfv" role="2Oq$k0">
                    <node concept="2OqwBi" id="2aBGSFgfGfw" role="2Oq$k0">
                      <node concept="3A2sRY" id="2aBGSFgfGfx" role="2Oq$k0">
                        <ref role="3A2yKK" node="2aBGSFgfGfU" resolve="oi" />
                      </node>
                      <node concept="3Tsc0h" id="2aBGSFgfGfy" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                    <node concept="1uHKPH" id="2aBGSFgfGfz" role="2OqNvi" />
                  </node>
                  <node concept="3TrEf2" id="2YqrT$P4plS" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2aBGSFgfGf$" role="3I6sU7">
            <node concept="3Aqt3T" id="2aBGSFgfGf_" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="1uarlV" id="2aBGSFgfGfA" role="3AunhB">
                <node concept="a7P8L" id="2aBGSFgfGfB" role="1uarlU">
                  <ref role="a7OzE" node="2aBGSFgfGfR" resolve="Con" />
                </node>
                <node concept="1Q4cc8" id="2aBGSFgfGfC" role="1uarlW">
                  <ref role="1nfQt" node="5RfK0kxiwki" resolve="Or" />
                  <node concept="1RziaG" id="2aBGSFgfGfD" role="1Ryyee">
                    <ref role="1RzibV" node="5RfK0kxiwku" resolve="disjuncts" />
                    <node concept="3AP2Rn" id="2aBGSFgfGfE" role="1RzmR7">
                      <node concept="3clFbS" id="2aBGSFgfGfF" role="16YjZG">
                        <node concept="3clFbF" id="2aBGSFgfGfG" role="3cqZAp">
                          <node concept="1oi1Uc" id="2YqrT$P4hvt" role="3clFbG">
                            <node concept="KCUsM" id="2YqrT$P4hvu" role="1oi0x0">
                              <node concept="2IllgU" id="2YqrT$P4hvz" role="KCVpo" />
                              <node concept="1oi5UN" id="2YqrT$P4hvv" role="KCVpo">
                                <node concept="22Ky0T" id="2YqrT$P4hvw" role="lGtFl">
                                  <node concept="1nq8_$" id="2YqrT$P4hvx" role="22Ky0K">
                                    <node concept="a7P8L" id="2YqrT$P4hvy" role="1nq8_t">
                                      <ref role="a7OzE" node="2aBGSFgfGfS" resolve="Prem" />
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
              <node concept="3BlFb$" id="2aBGSFgfGfO" role="3AunhB">
                <node concept="3A2sRY" id="2aBGSFgfGfP" role="3BlFb_">
                  <ref role="3A2yKK" node="2aBGSFgfGfU" resolve="oi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3NuqgR" id="2aBGSFgfGfQ" role="3Nuqhd">
          <node concept="aZer4" id="2aBGSFgfGfR" role="3XD1gS">
            <property role="TrG5h" value="Con" />
          </node>
          <node concept="aZer4" id="2aBGSFgfGfS" role="3XD1gS">
            <property role="TrG5h" value="Prem" />
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="2YqrT$P6AUH" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2YqrT$P6AUI" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7u6l" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7u6j" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7u6_" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P7u6A" role="3BlFb_">
                  <node concept="2OqwBi" id="2YqrT$P7u6B" role="2Oq$k0">
                    <node concept="2OqwBi" id="2YqrT$P7u6C" role="2Oq$k0">
                      <node concept="3A2sRY" id="2YqrT$P7u6D" role="2Oq$k0">
                        <ref role="3A2yKK" node="2aBGSFgfGfU" resolve="oi" />
                      </node>
                      <node concept="3Tsc0h" id="2YqrT$P7u6E" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                    <node concept="1uHKPH" id="2YqrT$P7u6F" role="2OqNvi" />
                  </node>
                  <node concept="3TrEf2" id="2YqrT$P7u6G" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2aBGSFgfGfT" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3UT$" resolve="OrIntro" />
        <node concept="3A20r5" id="2aBGSFgfGfU" role="2t_VXX">
          <property role="TrG5h" value="oi" />
        </node>
      </node>
      <node concept="3Aq9E8" id="2aBGSFgfGfV" role="3otmyu">
        <node concept="3I6sU6" id="2aBGSFgfGfW" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7umf" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7umd" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7ump" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7umy" role="3BlFb_">
                  <ref role="3A2yKK" node="2aBGSFgfGfU" resolve="oi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="cBwPQ" id="2aBGSFgfGg9" role="30RCb4">
        <node concept="3clFbS" id="2aBGSFgfGga" role="16YjZG">
          <node concept="3clFbF" id="2aBGSFgfGgb" role="3cqZAp">
            <node concept="2OqwBi" id="2aBGSFgfGgc" role="3clFbG">
              <node concept="2OqwBi" id="2aBGSFgfGgd" role="2Oq$k0">
                <node concept="3A2sRY" id="2aBGSFgfGge" role="2Oq$k0">
                  <ref role="3A2yKK" node="2aBGSFgfGfU" resolve="oi" />
                </node>
                <node concept="3Tsc0h" id="2aBGSFgfGgf" role="2OqNvi">
                  <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                </node>
              </node>
              <node concept="3GX2aA" id="2aBGSFgfGgg" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2YqrT$P4vBU" role="3ArX_J">
      <property role="TrG5h" value="notIntro_valid1" />
      <node concept="3Aq9E8" id="2YqrT$P4Kf$" role="3otmyu">
        <node concept="3I6sU6" id="2YqrT$P4Kf_" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7veS" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7veQ" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7vf2" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7vfb" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P4vEy" resolve="ni" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="2YqrT$P4CCe" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2YqrT$P4CCf" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P4D89" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P4D87" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="1uarlV" id="2YqrT$P4D8C" role="3AunhB">
                <node concept="a7P8L" id="2YqrT$P4D8v" role="1uarlU">
                  <ref role="a7OzE" node="2YqrT$P4D5$" resolve="Con" />
                </node>
                <node concept="1Q4cc8" id="2YqrT$P4D8P" role="1uarlW">
                  <ref role="1nfQt" node="5RfK0kxiwkI" resolve="Not" />
                  <node concept="1RziaG" id="2YqrT$P4De4" role="1Ryyee">
                    <ref role="1RzibV" node="5RfK0kxiwkZ" resolve="target" />
                    <node concept="3AP2Rn" id="2YqrT$P4De5" role="1RzmR7">
                      <node concept="3clFbS" id="2YqrT$P4De6" role="16YjZG">
                        <node concept="3clFbF" id="2YqrT$P4Del" role="3cqZAp">
                          <node concept="1nq8_$" id="2YqrT$P4Dek" role="3clFbG">
                            <node concept="a7P8L" id="2YqrT$P4Dej" role="1nq8_t">
                              <ref role="a7OzE" node="2YqrT$P4CCk" resolve="PremAtcd" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3BlFb$" id="2YqrT$P4DgH" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P4DgZ" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P4vEy" resolve="ni" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P4CCN" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P4CCM" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="1Q4cc8" id="2YqrT$P4CD0" role="3AunhB">
                <ref role="1nfQt" node="5RfK0kxiwkx" resolve="If" />
                <node concept="1RziaG" id="2YqrT$P4CD6" role="1Ryyee">
                  <ref role="1RzibV" node="5RfK0kxiwl4" resolve="antecedent" />
                  <node concept="3AP2Rn" id="2YqrT$P4CD7" role="1RzmR7">
                    <node concept="3clFbS" id="2YqrT$P4CD8" role="16YjZG">
                      <node concept="3clFbF" id="2YqrT$P4CDn" role="3cqZAp">
                        <node concept="1nq8_$" id="2YqrT$P4CDm" role="3clFbG">
                          <node concept="a7P8L" id="2YqrT$P4CDl" role="1nq8_t">
                            <ref role="a7OzE" node="2YqrT$P4CCk" resolve="PremAtcd" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1RziaG" id="2YqrT$P4CLy" role="1Ryyee">
                  <ref role="1RzibV" node="5RfK0kxiwla" resolve="consequence" />
                  <node concept="3AP2Rn" id="2YqrT$P4CLz" role="1RzmR7">
                    <node concept="3clFbS" id="2YqrT$P4CL$" role="16YjZG">
                      <node concept="3clFbF" id="2YqrT$P4CLT" role="3cqZAp">
                        <node concept="1nq8_$" id="2YqrT$P4CLS" role="3clFbG">
                          <node concept="a7P8L" id="2YqrT$P4CLR" role="1nq8_t">
                            <ref role="a7OzE" node="2YqrT$P4CCw" resolve="PremCsq" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3BlFb$" id="2YqrT$P4CU4" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P4Hm5" role="3BlFb_">
                  <node concept="1y4W85" id="2YqrT$P4GRF" role="2Oq$k0">
                    <node concept="3cmrfG" id="2YqrT$P4Hcz" role="1y58nS">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="2YqrT$P4EuT" role="1y566C">
                      <node concept="3A2sRY" id="2YqrT$P4Elk" role="2Oq$k0">
                        <ref role="3A2yKK" node="2YqrT$P4vEy" resolve="ni" />
                      </node>
                      <node concept="3Tsc0h" id="2YqrT$P4FiH" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="2YqrT$P4HYM" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P4I0F" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P4I0G" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="1Q4cc8" id="2YqrT$P4I0H" role="3AunhB">
                <ref role="1nfQt" node="5RfK0kxiwkx" resolve="If" />
                <node concept="1RziaG" id="2YqrT$P4I0I" role="1Ryyee">
                  <ref role="1RzibV" node="5RfK0kxiwl4" resolve="antecedent" />
                  <node concept="3AP2Rn" id="2YqrT$P4I0J" role="1RzmR7">
                    <node concept="3clFbS" id="2YqrT$P4I0K" role="16YjZG">
                      <node concept="3clFbF" id="2YqrT$P4I0L" role="3cqZAp">
                        <node concept="1nq8_$" id="2YqrT$P4I0M" role="3clFbG">
                          <node concept="a7P8L" id="2YqrT$P4I0N" role="1nq8_t">
                            <ref role="a7OzE" node="2YqrT$P4CCk" resolve="PremAtcd" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1RziaG" id="2YqrT$P4I0O" role="1Ryyee">
                  <ref role="1RzibV" node="5RfK0kxiwla" resolve="consequence" />
                  <node concept="3AP2Rn" id="2YqrT$P4I0P" role="1RzmR7">
                    <node concept="3clFbS" id="2YqrT$P4I0Q" role="16YjZG">
                      <node concept="3clFbF" id="2YqrT$P4If6" role="3cqZAp">
                        <node concept="1nq8_$" id="2YqrT$P4If5" role="3clFbG">
                          <node concept="1Q4cc8" id="2YqrT$P4If4" role="1nq8_t">
                            <ref role="1nfQt" node="5RfK0kxiwkI" resolve="Not" />
                            <node concept="1RziaG" id="2YqrT$P4IhB" role="1Ryyee">
                              <ref role="1RzibV" node="5RfK0kxiwkZ" resolve="target" />
                              <node concept="3AP2Rn" id="2YqrT$P4IhC" role="1RzmR7">
                                <node concept="3clFbS" id="2YqrT$P4IhD" role="16YjZG">
                                  <node concept="3clFbF" id="2YqrT$P4IjK" role="3cqZAp">
                                    <node concept="1nq8_$" id="2YqrT$P4IjJ" role="3clFbG">
                                      <node concept="a7P8L" id="2YqrT$P4IjI" role="1nq8_t">
                                        <ref role="a7OzE" node="2YqrT$P4CCw" resolve="PremCsq" />
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
              <node concept="3BlFb$" id="2YqrT$P4I0U" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P4I0V" role="3BlFb_">
                  <node concept="1y4W85" id="2YqrT$P4I0W" role="2Oq$k0">
                    <node concept="3cmrfG" id="2YqrT$P4I0X" role="1y58nS">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="2YqrT$P4I0Y" role="1y566C">
                      <node concept="3A2sRY" id="2YqrT$P4I0Z" role="2Oq$k0">
                        <ref role="3A2yKK" node="2YqrT$P4vEy" resolve="ni" />
                      </node>
                      <node concept="3Tsc0h" id="2YqrT$P4I10" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="2YqrT$P4I11" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3NuqgR" id="2YqrT$P4CCj" role="3Nuqhd">
          <node concept="aZer4" id="2YqrT$P4D5$" role="3XD1gS">
            <property role="TrG5h" value="Con" />
          </node>
          <node concept="aZer4" id="2YqrT$P4CCk" role="3XD1gS">
            <property role="TrG5h" value="PremAtcd" />
          </node>
          <node concept="aZer4" id="2YqrT$P4CCw" role="3XD1gS">
            <property role="TrG5h" value="PremCsq" />
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="2YqrT$P6B1z" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2YqrT$P6B1$" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7uwD" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7uwB" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7ux2" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P7ux3" role="3BlFb_">
                  <node concept="1y4W85" id="2YqrT$P7ux4" role="2Oq$k0">
                    <node concept="3cmrfG" id="2YqrT$P7ux5" role="1y58nS">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="2YqrT$P7ux6" role="1y566C">
                      <node concept="3A2sRY" id="2YqrT$P7ux7" role="2Oq$k0">
                        <ref role="3A2yKK" node="2YqrT$P4vEy" resolve="ni" />
                      </node>
                      <node concept="3Tsc0h" id="2YqrT$P7ux8" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="2YqrT$P7ux9" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P7uAw" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7uAx" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7uAy" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P7uAz" role="3BlFb_">
                  <node concept="1y4W85" id="2YqrT$P7uA$" role="2Oq$k0">
                    <node concept="3cmrfG" id="2YqrT$P7uA_" role="1y58nS">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="2YqrT$P7uAA" role="1y566C">
                      <node concept="3A2sRY" id="2YqrT$P7uAB" role="2Oq$k0">
                        <ref role="3A2yKK" node="2YqrT$P4vEy" resolve="ni" />
                      </node>
                      <node concept="3Tsc0h" id="2YqrT$P7uAC" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="2YqrT$P7uAD" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P4vEx" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3UTA" resolve="NotIntro" />
        <node concept="3A20r5" id="2YqrT$P4vEy" role="2t_VXX">
          <property role="TrG5h" value="ni" />
        </node>
      </node>
      <node concept="cBwPQ" id="2YqrT$P4vEI" role="30RCb4">
        <node concept="3clFbS" id="2YqrT$P4vEJ" role="16YjZG">
          <node concept="3clFbF" id="2YqrT$P4vEW" role="3cqZAp">
            <node concept="3clFbC" id="2YqrT$P4BZP" role="3clFbG">
              <node concept="2OqwBi" id="2YqrT$P4yc6" role="3uHU7B">
                <node concept="2OqwBi" id="2YqrT$P4vQD" role="2Oq$k0">
                  <node concept="3A2sRY" id="2YqrT$P4vEV" role="2Oq$k0">
                    <ref role="3A2yKK" node="2YqrT$P4vEy" resolve="ni" />
                  </node>
                  <node concept="3Tsc0h" id="2YqrT$P4wpR" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                  </node>
                </node>
                <node concept="34oBXx" id="2YqrT$P4_zY" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="2YqrT$P4Cke" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2YqrT$P4Iqr" role="3ArX_J">
      <property role="TrG5h" value="notIntro_valid2" />
      <node concept="3Aq9E8" id="2YqrT$P4Kmc" role="3otmyu">
        <node concept="3I6sU6" id="2YqrT$P4Kmd" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7wLK" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7wLL" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7wLM" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7wLN" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P4Ir$" resolve="ni" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="2YqrT$P4Iqs" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2YqrT$P4Iqt" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P4Iqu" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P4Iqv" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="1uarlV" id="2YqrT$P4Iqw" role="3AunhB">
                <node concept="a7P8L" id="2YqrT$P4Iqx" role="1uarlU">
                  <ref role="a7OzE" node="2YqrT$P4Irw" resolve="Con" />
                </node>
                <node concept="1Q4cc8" id="2YqrT$P4Iqy" role="1uarlW">
                  <ref role="1nfQt" node="5RfK0kxiwkI" resolve="Not" />
                  <node concept="1RziaG" id="2YqrT$P4Iqz" role="1Ryyee">
                    <ref role="1RzibV" node="5RfK0kxiwkZ" resolve="target" />
                    <node concept="3AP2Rn" id="2YqrT$P4Iq$" role="1RzmR7">
                      <node concept="3clFbS" id="2YqrT$P4Iq_" role="16YjZG">
                        <node concept="3clFbF" id="2YqrT$P4IqA" role="3cqZAp">
                          <node concept="1nq8_$" id="2YqrT$P4IqB" role="3clFbG">
                            <node concept="a7P8L" id="2YqrT$P4IqC" role="1nq8_t">
                              <ref role="a7OzE" node="2YqrT$P4Irx" resolve="PremAtcd" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3BlFb$" id="2YqrT$P4IqD" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P4IqE" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P4Ir$" resolve="ni" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P4Ir2" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P4Ir3" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="1Q4cc8" id="2YqrT$P4Ir4" role="3AunhB">
                <ref role="1nfQt" node="5RfK0kxiwkx" resolve="If" />
                <node concept="1RziaG" id="2YqrT$P4Ir5" role="1Ryyee">
                  <ref role="1RzibV" node="5RfK0kxiwl4" resolve="antecedent" />
                  <node concept="3AP2Rn" id="2YqrT$P4Ir6" role="1RzmR7">
                    <node concept="3clFbS" id="2YqrT$P4Ir7" role="16YjZG">
                      <node concept="3clFbF" id="2YqrT$P4Ir8" role="3cqZAp">
                        <node concept="1nq8_$" id="2YqrT$P4Ir9" role="3clFbG">
                          <node concept="a7P8L" id="2YqrT$P4Ira" role="1nq8_t">
                            <ref role="a7OzE" node="2YqrT$P4Irx" resolve="PremAtcd" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1RziaG" id="2YqrT$P4Irb" role="1Ryyee">
                  <ref role="1RzibV" node="5RfK0kxiwla" resolve="consequence" />
                  <node concept="3AP2Rn" id="2YqrT$P4Irc" role="1RzmR7">
                    <node concept="3clFbS" id="2YqrT$P4Ird" role="16YjZG">
                      <node concept="3clFbF" id="2YqrT$P4Ire" role="3cqZAp">
                        <node concept="1nq8_$" id="2YqrT$P4Irf" role="3clFbG">
                          <node concept="1Q4cc8" id="2YqrT$P4Irg" role="1nq8_t">
                            <ref role="1nfQt" node="5RfK0kxiwkI" resolve="Not" />
                            <node concept="1RziaG" id="2YqrT$P4Irh" role="1Ryyee">
                              <ref role="1RzibV" node="5RfK0kxiwkZ" resolve="target" />
                              <node concept="3AP2Rn" id="2YqrT$P4Iri" role="1RzmR7">
                                <node concept="3clFbS" id="2YqrT$P4Irj" role="16YjZG">
                                  <node concept="3clFbF" id="2YqrT$P4Irk" role="3cqZAp">
                                    <node concept="1nq8_$" id="2YqrT$P4Irl" role="3clFbG">
                                      <node concept="a7P8L" id="2YqrT$P4Irm" role="1nq8_t">
                                        <ref role="a7OzE" node="2YqrT$P4Iry" resolve="PremCsq" />
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
              <node concept="3BlFb$" id="2YqrT$P4Irn" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P4Iro" role="3BlFb_">
                  <node concept="1y4W85" id="2YqrT$P4Irp" role="2Oq$k0">
                    <node concept="3cmrfG" id="2YqrT$P4Irq" role="1y58nS">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="2YqrT$P4Irr" role="1y566C">
                      <node concept="3A2sRY" id="2YqrT$P4Irs" role="2Oq$k0">
                        <ref role="3A2yKK" node="2YqrT$P4Ir$" resolve="ni" />
                      </node>
                      <node concept="3Tsc0h" id="2YqrT$P4Irt" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="2YqrT$P4Iru" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P4IqF" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P4IqG" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="1Q4cc8" id="2YqrT$P4IqH" role="3AunhB">
                <ref role="1nfQt" node="5RfK0kxiwkx" resolve="If" />
                <node concept="1RziaG" id="2YqrT$P4IqI" role="1Ryyee">
                  <ref role="1RzibV" node="5RfK0kxiwl4" resolve="antecedent" />
                  <node concept="3AP2Rn" id="2YqrT$P4IqJ" role="1RzmR7">
                    <node concept="3clFbS" id="2YqrT$P4IqK" role="16YjZG">
                      <node concept="3clFbF" id="2YqrT$P4IqL" role="3cqZAp">
                        <node concept="1nq8_$" id="2YqrT$P4IqM" role="3clFbG">
                          <node concept="a7P8L" id="2YqrT$P4IqN" role="1nq8_t">
                            <ref role="a7OzE" node="2YqrT$P4Irx" resolve="PremAtcd" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1RziaG" id="2YqrT$P4IqO" role="1Ryyee">
                  <ref role="1RzibV" node="5RfK0kxiwla" resolve="consequence" />
                  <node concept="3AP2Rn" id="2YqrT$P4IqP" role="1RzmR7">
                    <node concept="3clFbS" id="2YqrT$P4IqQ" role="16YjZG">
                      <node concept="3clFbF" id="2YqrT$P4IqR" role="3cqZAp">
                        <node concept="1nq8_$" id="2YqrT$P4IqS" role="3clFbG">
                          <node concept="a7P8L" id="2YqrT$P4IqT" role="1nq8_t">
                            <ref role="a7OzE" node="2YqrT$P4Iry" resolve="PremCsq" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3BlFb$" id="2YqrT$P4IqU" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P4IqV" role="3BlFb_">
                  <node concept="1y4W85" id="2YqrT$P4IqW" role="2Oq$k0">
                    <node concept="3cmrfG" id="2YqrT$P4IqX" role="1y58nS">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="2YqrT$P4IqY" role="1y566C">
                      <node concept="3A2sRY" id="2YqrT$P4IqZ" role="2Oq$k0">
                        <ref role="3A2yKK" node="2YqrT$P4Ir$" resolve="ni" />
                      </node>
                      <node concept="3Tsc0h" id="2YqrT$P4Ir0" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="2YqrT$P4Ir1" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3NuqgR" id="2YqrT$P4Irv" role="3Nuqhd">
          <node concept="aZer4" id="2YqrT$P4Irw" role="3XD1gS">
            <property role="TrG5h" value="Con" />
          </node>
          <node concept="aZer4" id="2YqrT$P4Irx" role="3XD1gS">
            <property role="TrG5h" value="PremAtcd" />
          </node>
          <node concept="aZer4" id="2YqrT$P4Iry" role="3XD1gS">
            <property role="TrG5h" value="PremCsq" />
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="2YqrT$P6D$T" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2YqrT$P6D$U" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7whN" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7whO" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7whP" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P7whQ" role="3BlFb_">
                  <node concept="1y4W85" id="2YqrT$P7whR" role="2Oq$k0">
                    <node concept="3cmrfG" id="2YqrT$P7whS" role="1y58nS">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="2YqrT$P7whT" role="1y566C">
                      <node concept="3A2sRY" id="2YqrT$P7whU" role="2Oq$k0">
                        <ref role="3A2yKK" node="2YqrT$P4Ir$" resolve="ni" />
                      </node>
                      <node concept="3Tsc0h" id="2YqrT$P7whV" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="2YqrT$P7whW" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P7whX" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7whY" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7whZ" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P7wi0" role="3BlFb_">
                  <node concept="1y4W85" id="2YqrT$P7wi1" role="2Oq$k0">
                    <node concept="3cmrfG" id="2YqrT$P7wi2" role="1y58nS">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="2YqrT$P7wi3" role="1y566C">
                      <node concept="3A2sRY" id="2YqrT$P7wi4" role="2Oq$k0">
                        <ref role="3A2yKK" node="2YqrT$P4Ir$" resolve="ni" />
                      </node>
                      <node concept="3Tsc0h" id="2YqrT$P7wi5" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="2YqrT$P7wi6" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P4Irz" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3UTA" resolve="NotIntro" />
        <node concept="3A20r5" id="2YqrT$P4Ir$" role="2t_VXX">
          <property role="TrG5h" value="ni" />
        </node>
      </node>
      <node concept="cBwPQ" id="2YqrT$P4Ir_" role="30RCb4">
        <node concept="3clFbS" id="2YqrT$P4IrA" role="16YjZG">
          <node concept="3clFbF" id="2YqrT$P4IrB" role="3cqZAp">
            <node concept="3clFbC" id="2YqrT$P4IrC" role="3clFbG">
              <node concept="2OqwBi" id="2YqrT$P4IrD" role="3uHU7B">
                <node concept="2OqwBi" id="2YqrT$P4IrE" role="2Oq$k0">
                  <node concept="3A2sRY" id="2YqrT$P4IrF" role="2Oq$k0">
                    <ref role="3A2yKK" node="2YqrT$P4Ir$" resolve="ni" />
                  </node>
                  <node concept="3Tsc0h" id="2YqrT$P4IrG" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                  </node>
                </node>
                <node concept="34oBXx" id="2YqrT$P4IrH" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="2YqrT$P4IrI" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2YqrT$P4RUb" role="3ArX_J">
      <property role="TrG5h" value="notElim_valid" />
      <node concept="3Aq9E8" id="2YqrT$P5bzv" role="3otmyu">
        <node concept="3I6sU6" id="2YqrT$P5bzw" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7xEH" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7xEF" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7xEP" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7xEQ" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P4RZR" resolve="ne" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="2YqrT$P4S03" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2YqrT$P4S04" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P4S0j" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P4S0i" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="a7P8L" id="2YqrT$P4S0o" role="3AunhB">
                <ref role="a7OzE" node="2YqrT$P4S09" resolve="Con" />
              </node>
              <node concept="3BlFb$" id="2YqrT$P4S0w" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P4S0E" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P4RZR" resolve="ne" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P54yY" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P54yW" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="1uarlV" id="2YqrT$P5jKo" role="3AunhB">
                <node concept="a7P8L" id="2YqrT$P5jKa" role="1uarlU">
                  <ref role="a7OzE" node="2YqrT$P54za" resolve="Prem" />
                </node>
                <node concept="1Q4cc8" id="2YqrT$P5jKG" role="1uarlW">
                  <ref role="1nfQt" node="5RfK0kxiwkI" resolve="Not" />
                  <node concept="1RziaG" id="2YqrT$P5jKI" role="1Ryyee">
                    <ref role="1RzibV" node="5RfK0kxiwkZ" resolve="target" />
                    <node concept="3AP2Rn" id="2YqrT$P5jKJ" role="1RzmR7">
                      <node concept="3clFbS" id="2YqrT$P5jKK" role="16YjZG">
                        <node concept="3clFbF" id="2YqrT$P5jLc" role="3cqZAp">
                          <node concept="1nq8_$" id="2YqrT$P5jLb" role="3clFbG">
                            <node concept="1Q4cc8" id="2YqrT$P5jLa" role="1nq8_t">
                              <ref role="1nfQt" node="5RfK0kxiwkI" resolve="Not" />
                              <node concept="1RziaG" id="2YqrT$P5jLq" role="1Ryyee">
                                <ref role="1RzibV" node="5RfK0kxiwkZ" resolve="target" />
                                <node concept="3AP2Rn" id="2YqrT$P5jLr" role="1RzmR7">
                                  <node concept="3clFbS" id="2YqrT$P5jLs" role="16YjZG">
                                    <node concept="3clFbF" id="2YqrT$P5jNj" role="3cqZAp">
                                      <node concept="1nq8_$" id="2YqrT$P5jNi" role="3clFbG">
                                        <node concept="a7P8L" id="2YqrT$P5rMC" role="1nq8_t">
                                          <ref role="a7OzE" node="2YqrT$P4S09" resolve="Con" />
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
              <node concept="3BlFb$" id="2YqrT$P54Ci" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P5aSn" role="3BlFb_">
                  <node concept="2OqwBi" id="2YqrT$P57au" role="2Oq$k0">
                    <node concept="2OqwBi" id="2YqrT$P54Mc" role="2Oq$k0">
                      <node concept="3A2sRY" id="2YqrT$P54CC" role="2Oq$k0">
                        <ref role="3A2yKK" node="2YqrT$P4RZR" resolve="ne" />
                      </node>
                      <node concept="3Tsc0h" id="2YqrT$P55A4" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                    <node concept="1uHKPH" id="2YqrT$P597X" role="2OqNvi" />
                  </node>
                  <node concept="3TrEf2" id="2YqrT$P5bxA" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3NuqgR" id="2YqrT$P4S08" role="3Nuqhd">
          <node concept="aZer4" id="2YqrT$P4S09" role="3XD1gS">
            <property role="TrG5h" value="Con" />
          </node>
          <node concept="aZer4" id="2YqrT$P54za" role="3XD1gS">
            <property role="TrG5h" value="Prem" />
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="2YqrT$P6DId" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2YqrT$P6DIe" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7xcP" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7xcN" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7xdv" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P7xdw" role="3BlFb_">
                  <node concept="1y4W85" id="2YqrT$P7xdx" role="2Oq$k0">
                    <node concept="3cmrfG" id="2YqrT$P7xdy" role="1y58nS">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="2YqrT$P7xdz" role="1y566C">
                      <node concept="3A2sRY" id="2YqrT$P7xd$" role="2Oq$k0">
                        <ref role="3A2yKK" node="2YqrT$P4RZR" resolve="ne" />
                      </node>
                      <node concept="3Tsc0h" id="2YqrT$P7xd_" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="2YqrT$P7xdA" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3NuqgR" id="2YqrT$P6DI_" role="3Nuqhd">
          <node concept="aZer4" id="2YqrT$P6DIA" role="3XD1gS">
            <property role="TrG5h" value="OK" />
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P4RZQ" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3ZJ8" resolve="NotElim" />
        <node concept="3A20r5" id="2YqrT$P4RZR" role="2t_VXX">
          <property role="TrG5h" value="ne" />
        </node>
      </node>
      <node concept="cBwPQ" id="2YqrT$P4SsJ" role="30RCb4">
        <node concept="3clFbS" id="2YqrT$P4SsK" role="16YjZG">
          <node concept="3clFbF" id="2YqrT$P4SsX" role="3cqZAp">
            <node concept="3clFbC" id="2YqrT$P54dW" role="3clFbG">
              <node concept="3cmrfG" id="2YqrT$P54eb" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="2YqrT$P4V2M" role="3uHU7B">
                <node concept="2OqwBi" id="2YqrT$P4SCB" role="2Oq$k0">
                  <node concept="3A2sRY" id="2YqrT$P4SsW" role="2Oq$k0">
                    <ref role="3A2yKK" node="2YqrT$P4RZR" resolve="ne" />
                  </node>
                  <node concept="3Tsc0h" id="2YqrT$P4Teg" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                  </node>
                </node>
                <node concept="34oBXx" id="2YqrT$P51Mz" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2YqrT$P5VD9" role="3ArX_J">
      <property role="TrG5h" value="IfIntro_valid" />
      <node concept="3Aq9E8" id="2YqrT$P6nCE" role="3otmyu">
        <node concept="3I6sU6" id="2YqrT$P6nCF" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7zuH" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7zuF" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7zuR" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7zv0" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P5VJV" resolve="ifi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="2YqrT$P64rS" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2YqrT$P64rT" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P64sh" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P64sg" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="1uarlV" id="2YqrT$P64sp" role="3AunhB">
                <node concept="a7P8L" id="2YqrT$P64sk" role="1uarlU">
                  <ref role="a7OzE" node="2YqrT$P64rY" resolve="Con" />
                </node>
                <node concept="1Q4cc8" id="2YqrT$P64s_" role="1uarlW">
                  <ref role="1nfQt" node="5RfK0kxiwkx" resolve="If" />
                  <node concept="1RziaG" id="2YqrT$P64sB" role="1Ryyee">
                    <ref role="1RzibV" node="5RfK0kxiwl4" resolve="antecedent" />
                    <node concept="3AP2Rn" id="2YqrT$P64sC" role="1RzmR7">
                      <node concept="3clFbS" id="2YqrT$P64sD" role="16YjZG">
                        <node concept="3clFbF" id="2YqrT$P64tY" role="3cqZAp">
                          <node concept="1nq8_$" id="2YqrT$P64tX" role="3clFbG">
                            <node concept="a7P8L" id="2YqrT$P64tW" role="1nq8_t">
                              <ref role="a7OzE" node="2YqrT$P64s7" resolve="Atcd" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1RziaG" id="2YqrT$P64Ep" role="1Ryyee">
                    <ref role="1RzibV" node="5RfK0kxiwla" resolve="consequence" />
                    <node concept="3AP2Rn" id="2YqrT$P64Eq" role="1RzmR7">
                      <node concept="3clFbS" id="2YqrT$P64Er" role="16YjZG">
                        <node concept="3clFbF" id="2YqrT$P64EK" role="3cqZAp">
                          <node concept="1nq8_$" id="2YqrT$P64EJ" role="3clFbG">
                            <node concept="a7P8L" id="2YqrT$P64EI" role="1nq8_t">
                              <ref role="a7OzE" node="2YqrT$P64tc" resolve="Csq" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3BlFb$" id="2YqrT$P64Nc" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P64N$" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P5VJV" resolve="ifi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P64OT" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P64OR" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="a7P8L" id="2YqrT$P64Ph" role="3AunhB">
                <ref role="a7OzE" node="2YqrT$P64s7" resolve="Atcd" />
              </node>
              <node concept="3BlFb$" id="2YqrT$P64Pp" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P6b5b" role="3BlFb_">
                  <node concept="1y4W85" id="2YqrT$P6kds" role="2Oq$k0">
                    <node concept="3cmrfG" id="2YqrT$P6k$c" role="1y58nS">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="2YqrT$P64Z8" role="1y566C">
                      <node concept="3A2sRY" id="2YqrT$P64Pz" role="2Oq$k0">
                        <ref role="3A2yKK" node="2YqrT$P5VJV" resolve="ifi" />
                      </node>
                      <node concept="3Tsc0h" id="2YqrT$P65MW" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="2YqrT$P6dHh" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P6dJG" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P6dJE" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="a7P8L" id="2YqrT$P6dKf" role="3AunhB">
                <ref role="a7OzE" node="2YqrT$P64tc" resolve="Csq" />
              </node>
              <node concept="3BlFb$" id="2YqrT$P6dKn" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P6mF7" role="3BlFb_">
                  <node concept="1y4W85" id="2YqrT$P6md6" role="2Oq$k0">
                    <node concept="3cmrfG" id="2YqrT$P6mdq" role="1y58nS">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="2YqrT$P6dU6" role="1y566C">
                      <node concept="3A2sRY" id="2YqrT$P6dKx" role="2Oq$k0">
                        <ref role="3A2yKK" node="2YqrT$P5VJV" resolve="ifi" />
                      </node>
                      <node concept="3Tsc0h" id="2YqrT$P6eKz" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="2YqrT$P6n0K" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3NuqgR" id="2YqrT$P64rX" role="3Nuqhd">
          <node concept="aZer4" id="2YqrT$P64rY" role="3XD1gS">
            <property role="TrG5h" value="Con" />
          </node>
          <node concept="aZer4" id="2YqrT$P64s7" role="3XD1gS">
            <property role="TrG5h" value="Atcd" />
          </node>
          <node concept="aZer4" id="2YqrT$P64tc" role="3XD1gS">
            <property role="TrG5h" value="Csq" />
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="2YqrT$P6EGB" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2YqrT$P6EGC" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7y8i" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7y8j" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7y8k" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P7y8l" role="3BlFb_">
                  <node concept="1y4W85" id="2YqrT$P7y8m" role="2Oq$k0">
                    <node concept="3cmrfG" id="2YqrT$P7y8n" role="1y58nS">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="2YqrT$P7y8o" role="1y566C">
                      <node concept="3A2sRY" id="2YqrT$P7yfG" role="2Oq$k0">
                        <ref role="3A2yKK" node="2YqrT$P5VJV" resolve="ifi" />
                      </node>
                      <node concept="3Tsc0h" id="2YqrT$P7y8q" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="2YqrT$P7y8r" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P7y8s" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7y8t" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7y8u" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P7y8v" role="3BlFb_">
                  <node concept="1y4W85" id="2YqrT$P7y8w" role="2Oq$k0">
                    <node concept="3cmrfG" id="2YqrT$P7y8x" role="1y58nS">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="2YqrT$P7y8y" role="1y566C">
                      <node concept="3A2sRY" id="2YqrT$P7yEY" role="2Oq$k0">
                        <ref role="3A2yKK" node="2YqrT$P5VJV" resolve="ifi" />
                      </node>
                      <node concept="3Tsc0h" id="2YqrT$P7y8$" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="2YqrT$P7y8_" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P5VJL" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3ZJ9" resolve="IfIntro" />
        <node concept="3A20r5" id="2YqrT$P5VJV" role="2t_VXX">
          <property role="TrG5h" value="ifi" />
        </node>
      </node>
      <node concept="cBwPQ" id="2YqrT$P5VK7" role="30RCb4">
        <node concept="3clFbS" id="2YqrT$P5VK8" role="16YjZG">
          <node concept="3clFbF" id="2YqrT$P5VKl" role="3cqZAp">
            <node concept="3clFbC" id="2YqrT$P647x" role="3clFbG">
              <node concept="3cmrfG" id="2YqrT$P647K" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="2OqwBi" id="2YqrT$P5YjM" role="3uHU7B">
                <node concept="2OqwBi" id="2YqrT$P5VW2" role="2Oq$k0">
                  <node concept="3A2sRY" id="2YqrT$P5VKk" role="2Oq$k0">
                    <ref role="3A2yKK" node="2YqrT$P5VJV" resolve="ifi" />
                  </node>
                  <node concept="3Tsc0h" id="2YqrT$P5Wvg" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                  </node>
                </node>
                <node concept="34oBXx" id="2YqrT$P61FE" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2YqrT$P7RdG" role="3ArX_J">
      <property role="TrG5h" value="goal" />
      <node concept="3Aq9E8" id="2YqrT$P7Rni" role="3otmyu">
        <node concept="3I6sU6" id="2YqrT$P7Rnj" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7Rnp" role="3I6sU7">
            <node concept="1imXTs" id="2YqrT$P7Rnm" role="3I6s78">
              <node concept="a7P8L" id="2YqrT$P7RE7" role="1imXu6">
                <ref role="a7OzE" node="2YqrT$P7RDY" resolve="Goal" />
              </node>
              <node concept="2OqwBi" id="2YqrT$P7Rup" role="1imXSf">
                <node concept="3A2sRY" id="2YqrT$P7Rnv" role="2Oq$k0">
                  <ref role="3A2yKK" node="2YqrT$P7Rn3" resolve="goal" />
                </node>
                <node concept="3TrEf2" id="2YqrT$P7RC3" role="2OqNvi">
                  <ref role="3Tt5mk" to="jfgh:$u9BK__SA9" resolve="sentence" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P7RFi" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7RFg" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7RE$" resolve="goal" />
              <node concept="a7P8L" id="2YqrT$P7RFt" role="3AunhB">
                <ref role="a7OzE" node="2YqrT$P7RDY" resolve="Goal" />
              </node>
              <node concept="3BlFb$" id="2YqrT$P7RF_" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7RFJ" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P7Rn3" resolve="goal" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3NuqgR" id="2YqrT$P7RDX" role="3Nuqhd">
          <node concept="aZer4" id="2YqrT$P7RDY" role="3XD1gS">
            <property role="TrG5h" value="Goal" />
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P7Rn2" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:$u9BK__SA8" resolve="Goal" />
        <node concept="3A20r5" id="2YqrT$P7Rn3" role="2t_VXX">
          <property role="TrG5h" value="goal" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2YqrT$P7HVI" role="3ArX_J">
      <property role="TrG5h" value="goal_valid" />
      <node concept="3Aq93q" id="2YqrT$P7I4z" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2YqrT$P7I4$" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7QYb" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7QYa" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
              <node concept="a7P8L" id="2YqrT$P7QYg" role="3AunhB">
                <ref role="a7OzE" node="2YqrT$P7QXD" resolve="ProofCon" />
              </node>
              <node concept="3BlFb$" id="2YqrT$P7QYo" role="3AunhB">
                <node concept="1PxgMI" id="9AXE3xNo9X" role="3BlFb_">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="9AXE3xNofB" role="3oSUPX">
                    <ref role="cht4Q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
                  </node>
                  <node concept="2OqwBi" id="2YqrT$P7QYy" role="1m5AlR">
                    <node concept="2OqwBi" id="2YqrT$P7QYz" role="2Oq$k0">
                      <node concept="1PxgMI" id="2YqrT$P7QY$" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="2YqrT$P7QY_" role="3oSUPX">
                          <ref role="cht4Q" to="jfgh:3JXBM6C3Fs$" resolve="Proof" />
                        </node>
                        <node concept="2OqwBi" id="2YqrT$P7QYA" role="1m5AlR">
                          <node concept="3A2sRY" id="2YqrT$P7QYB" role="2Oq$k0">
                            <ref role="3A2yKK" node="2YqrT$P7I4k" resolve="goal" />
                          </node>
                          <node concept="1mfA1w" id="2YqrT$P7QYC" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="2YqrT$P7QYD" role="2OqNvi">
                        <ref role="3TtcxE" to="jfgh:3JXBM6C4wQA" resolve="content" />
                      </node>
                    </node>
                    <node concept="1yVyf7" id="2YqrT$P7QYE" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P7RG8" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7RG6" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7RE$" resolve="goal" />
              <node concept="a7P8L" id="9AXE3xO8D9" role="3AunhB">
                <ref role="a7OzE" node="2YqrT$P7QXz" resolve="Goal" />
              </node>
              <node concept="3BlFb$" id="2YqrT$P7RGQ" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7RH2" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P7I4k" resolve="goal" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3NuqgR" id="2YqrT$P7QXy" role="3Nuqhd">
          <node concept="aZer4" id="2YqrT$P7QXz" role="3XD1gS">
            <property role="TrG5h" value="Goal" />
          </node>
          <node concept="aZer4" id="2YqrT$P7QXD" role="3XD1gS">
            <property role="TrG5h" value="ProofCon" />
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="2YqrT$P7I4B" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2YqrT$P7I4C" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7QRU" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7QRT" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7QRZ" role="3AunhB">
                <node concept="2OqwBi" id="2YqrT$P7QS8" role="3BlFb_">
                  <node concept="2OqwBi" id="2YqrT$P7QS9" role="2Oq$k0">
                    <node concept="1PxgMI" id="2YqrT$P7QSa" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="2YqrT$P7QSb" role="3oSUPX">
                        <ref role="cht4Q" to="jfgh:3JXBM6C3Fs$" resolve="Proof" />
                      </node>
                      <node concept="2OqwBi" id="2YqrT$P7QSc" role="1m5AlR">
                        <node concept="3A2sRY" id="2YqrT$P7QSd" role="2Oq$k0">
                          <ref role="3A2yKK" node="2YqrT$P7I4k" resolve="goal" />
                        </node>
                        <node concept="1mfA1w" id="2YqrT$P7QSe" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="2YqrT$P7QSf" role="2OqNvi">
                      <ref role="3TtcxE" to="jfgh:3JXBM6C4wQA" resolve="content" />
                    </node>
                  </node>
                  <node concept="1yVyf7" id="2YqrT$P7QSg" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P7I4j" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:$u9BK__SA8" resolve="Goal" />
        <node concept="3A20r5" id="2YqrT$P7I4k" role="2t_VXX">
          <property role="TrG5h" value="goal" />
        </node>
      </node>
      <node concept="cBwPQ" id="2YqrT$P7I55" role="30RCb4">
        <node concept="3clFbS" id="2YqrT$P7I56" role="16YjZG">
          <node concept="3clFbF" id="2YqrT$P7I5j" role="3cqZAp">
            <node concept="2OqwBi" id="9AXE3xOn6V" role="3clFbG">
              <node concept="2OqwBi" id="2YqrT$P7LVa" role="2Oq$k0">
                <node concept="2OqwBi" id="2YqrT$P7JQA" role="2Oq$k0">
                  <node concept="1PxgMI" id="2YqrT$P7J$X" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="2YqrT$P7JEG" role="3oSUPX">
                      <ref role="cht4Q" to="jfgh:3JXBM6C3Fs$" resolve="Proof" />
                    </node>
                    <node concept="2OqwBi" id="2YqrT$P7IdR" role="1m5AlR">
                      <node concept="3A2sRY" id="2YqrT$P7I5i" role="2Oq$k0">
                        <ref role="3A2yKK" node="2YqrT$P7I4k" resolve="goal" />
                      </node>
                      <node concept="1mfA1w" id="2YqrT$P7Ir0" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="2YqrT$P7KoQ" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C4wQA" resolve="content" />
                  </node>
                </node>
                <node concept="1yVyf7" id="2YqrT$P7OLn" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="9AXE3xOnzG" role="2OqNvi">
                <node concept="chp4Y" id="9AXE3xOnDd" role="cj9EA">
                  <ref role="cht4Q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq9E8" id="2YqrT$P7S7$" role="3otmyu">
        <node concept="3I6sU6" id="2YqrT$P7S7_" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7Sr7" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7Sr6" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="9AXE3xOzaf" role="3AunhB">
                <node concept="3A2sRY" id="9AXE3xOzat" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P7I4k" resolve="goal" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3AqmO8" id="2YqrT$P7tud" role="8PkJo">
      <property role="TrG5h" value="valid" />
      <node concept="1zAUYm" id="2YqrT$P7tui" role="1zAUyy">
        <property role="TrG5h" value="rsn" />
      </node>
    </node>
    <node concept="3AqmO8" id="2aBGSFgfwNi" role="8PkJo">
      <property role="TrG5h" value="conclusion" />
      <node concept="1zAUYm" id="2aBGSFgfwNl" role="1zAUyy">
        <property role="TrG5h" value="stnc" />
      </node>
      <node concept="1zAUYm" id="2aBGSFgfwNn" role="1zAUyy">
        <property role="TrG5h" value="rsn" />
      </node>
    </node>
    <node concept="3AqmO8" id="2YqrT$P7RE$" role="8PkJo">
      <property role="TrG5h" value="goal" />
      <node concept="1zAUYm" id="2YqrT$P7REF" role="1zAUyy">
        <property role="TrG5h" value="stnc" />
      </node>
      <node concept="1zAUYm" id="2YqrT$P7REH" role="1zAUyy">
        <property role="TrG5h" value="goal" />
      </node>
    </node>
  </node>
  <node concept="1HGPq" id="5RfK0kxl_Hp">
    <property role="TrG5h" value="Types" />
    <node concept="BRKj$" id="5RfK0kxl_Hq" role="1HGPt">
      <property role="TrG5h" value="Ok" />
      <node concept="0oftK" id="5RfK0kxl_Hr" role="BRKSY" />
    </node>
  </node>
  <node concept="AVZre" id="2aBGSFge0GD">
    <property role="3J8TDj" value="Stage2" />
    <property role="TrG5h" value="Check" />
    <node concept="3AqmO8" id="2aBGSFge6lD" role="8PkJo">
      <property role="TrG5h" value="main" />
    </node>
    <node concept="3AqmO8" id="2aBGSFge6lJ" role="8PkJo">
      <property role="TrG5h" value="checkAll" />
    </node>
    <node concept="3AqmO8" id="2YqrT$P6Q6Q" role="8PkJo">
      <property role="TrG5h" value="check" />
      <node concept="1zAUYm" id="2YqrT$P6Q72" role="1zAUyy">
        <property role="TrG5h" value="rsn" />
      </node>
    </node>
    <node concept="3AqmO8" id="2aBGSFge6oW" role="8PkJo">
      <property role="TrG5h" value="typeNode" />
      <node concept="1zAUYm" id="2aBGSFge6p4" role="1zAUyy">
        <property role="TrG5h" value="typeNode" />
        <node concept="3Tqbb2" id="2aBGSFge6p9" role="3gTf24" />
      </node>
      <node concept="1zAUYm" id="2aBGSFge6pc" role="1zAUyy">
        <property role="TrG5h" value="ref" />
      </node>
    </node>
    <node concept="3AqmO8" id="2YqrT$P6Qob" role="8PkJo">
      <property role="TrG5h" value="error" />
      <node concept="1zAUYm" id="2YqrT$P6Qo_" role="1zAUyy">
        <property role="TrG5h" value="msg" />
      </node>
      <node concept="1zAUYm" id="2YqrT$P6QoB" role="1zAUyy">
        <property role="TrG5h" value="ref" />
      </node>
    </node>
    <node concept="AVZhu" id="2aBGSFge6lQ" role="3ArX_J">
      <property role="TrG5h" value="recover_All" />
      <node concept="3Aq93q" id="2aBGSFge6lS" role="3orSU4">
        <node concept="3I6sU6" id="2aBGSFge6lT" role="3Ip0Jz">
          <node concept="3I6s7M" id="2aBGSFge6lX" role="3I6sU7">
            <node concept="3Aqt3T" id="2aBGSFge6lW" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFge6lD" resolve="main" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq9E8" id="2aBGSFge6m7" role="3otmyu">
        <node concept="3I6sU6" id="2aBGSFge6m8" role="3Ip0Jz">
          <node concept="3I6s7M" id="2aBGSFge6mc" role="3I6sU7">
            <node concept="3Aqt3T" id="2aBGSFge6mb" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFge6lJ" resolve="checkAll" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2YqrT$P6QkW" role="3ArX_J">
      <property role="TrG5h" value="check_Reasoning" />
      <node concept="3Aq93q" id="2YqrT$P6QmL" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2YqrT$P6QmM" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P6QmQ" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P6QmP" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFge6lJ" resolve="checkAll" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq9E8" id="2YqrT$P6Qmq" role="3otmyu">
        <node concept="3I6sU6" id="2YqrT$P6Qmr" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P6Qmv" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P6Qmu" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P6Q6Q" resolve="check" />
              <node concept="3BlFb$" id="2YqrT$P6Qmy" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P6QmD" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P6Qmb" resolve="rsn" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P6Qma" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
        <node concept="3A20r5" id="2YqrT$P6Qmb" role="2t_VXX">
          <property role="TrG5h" value="rsn" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2YqrT$P7S$8" role="3ArX_J">
      <property role="TrG5h" value="check_Goal" />
      <node concept="3Aq93q" id="2YqrT$P7S$9" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2YqrT$P7S$a" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7S$b" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7S$c" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFge6lJ" resolve="checkAll" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq9E8" id="2YqrT$P7S$d" role="3otmyu">
        <node concept="3I6sU6" id="2YqrT$P7S$e" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7S$f" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7S$g" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P6Q6Q" resolve="check" />
              <node concept="3BlFb$" id="2YqrT$P7S$h" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7S$i" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P7S$k" resolve="goal" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P7S$j" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:$u9BK__SA8" resolve="Goal" />
        <node concept="3A20r5" id="2YqrT$P7S$k" role="2t_VXX">
          <property role="TrG5h" value="goal" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2aBGSFge6mf" role="3ArX_J">
      <property role="TrG5h" value="typeOf_Reasoning" />
      <node concept="3Aq93q" id="2aBGSFge6mF" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2aBGSFge6mG" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7zRj" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7zRh" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7zRt" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7zRA" role="3BlFb_">
                  <ref role="3A2yKK" node="2aBGSFge6ms" resolve="rsn" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="2YqrT$P6Q7a" role="3orSU4">
        <node concept="3I6sU6" id="2YqrT$P6Q7b" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P6Q7q" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P6Q7p" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P6Q6Q" resolve="check" />
              <node concept="3BlFb$" id="2YqrT$P6Q7x" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P6QdB" role="3BlFb_">
                  <ref role="3A2yKK" node="2aBGSFge6ms" resolve="rsn" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2aBGSFge6mr" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
        <node concept="3A20r5" id="2aBGSFge6ms" role="2t_VXX">
          <property role="TrG5h" value="rsn" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2YqrT$P6Q34" role="3ArX_J">
      <property role="TrG5h" value="error_Reasoning" />
      <node concept="3Aq93q" id="2YqrT$P6Qn6" role="3orSU4">
        <node concept="3I6sU6" id="2YqrT$P6Qn7" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P6Qnm" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P6Qnl" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P6Q6Q" resolve="check" />
              <node concept="3BlFb$" id="2YqrT$P6Qnr" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P6Qn$" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P6Q3h" resolve="rsn" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P6Q3g" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
        <node concept="3A20r5" id="2YqrT$P6Q3h" role="2t_VXX">
          <property role="TrG5h" value="rsn" />
        </node>
      </node>
      <node concept="3Aq9E8" id="2YqrT$P6Q3i" role="3otmyu">
        <node concept="3I6sU6" id="2YqrT$P6Q3j" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P6QuV" role="3I6sU7">
            <node concept="3GeI9q" id="2YqrT$P6QuP" role="3I6s78">
              <node concept="a7P8L" id="2YqrT$P6Qve" role="3GeI8F">
                <ref role="a7OzE" node="2YqrT$P6Qsy" resolve="Msg" />
              </node>
              <node concept="HKQnh" id="2YqrT$P6Qvm" role="3GeI8D">
                <node concept="Xl_RD" id="2YqrT$P6Qvr" role="HKQng">
                  <property role="Xl_RC" value="invalid" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P6Qon" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P6Qol" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P6Qob" resolve="error" />
              <node concept="a7P8L" id="2YqrT$P6QvY" role="3AunhB">
                <ref role="a7OzE" node="2YqrT$P6Qsy" resolve="Msg" />
              </node>
              <node concept="3BlFb$" id="2YqrT$P6Qxl" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P6Qxv" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P6Q3h" resolve="rsn" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3NuqgR" id="2YqrT$P6Q3v" role="3Nuqhd">
          <node concept="aZer4" id="2YqrT$P6Q3w" role="3XD1gS">
            <property role="TrG5h" value="Node" />
          </node>
          <node concept="3Tqbb2" id="2YqrT$P6Q3x" role="3vLBG7" />
        </node>
        <node concept="3NuqgR" id="2YqrT$P6Qsx" role="3Nuqhd">
          <node concept="aZer4" id="2YqrT$P6Qsy" role="3XD1gS">
            <property role="TrG5h" value="Msg" />
          </node>
          <node concept="17QB3L" id="2YqrT$P6Quu" role="3vLBG7" />
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2YqrT$P7Ssz" role="3ArX_J">
      <property role="TrG5h" value="typeOf_Goal" />
      <node concept="3Aq9E8" id="2YqrT$P7Suu" role="3otmyu">
        <node concept="3I6sU6" id="2YqrT$P7Suv" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7Suw" role="3I6sU7">
            <node concept="3GeI9q" id="2YqrT$P7Sux" role="3I6s78">
              <node concept="a7P8L" id="2YqrT$P7Suy" role="3GeI8F">
                <ref role="a7OzE" node="2YqrT$P7SuG" resolve="Node" />
              </node>
              <node concept="HKQnh" id="2YqrT$P7Suz" role="3GeI8D">
                <node concept="2pJPEk" id="2YqrT$P7Su$" role="HKQng">
                  <node concept="2pJPED" id="2YqrT$P7Su_" role="2pJPEn">
                    <ref role="2pJxaS" to="jfgh:2aBGSFge6pw" resolve="Ok" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P7SuA" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7SuB" role="3I6s78">
              <ref role="3AqCNq" node="2aBGSFge6oW" resolve="typeNode" />
              <node concept="a7P8L" id="2YqrT$P7SuC" role="3AunhB">
                <ref role="a7OzE" node="2YqrT$P7SuG" resolve="Node" />
              </node>
              <node concept="3BlFb$" id="2YqrT$P7SuD" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7Sx0" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P7StR" resolve="goal" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3NuqgR" id="2YqrT$P7SuF" role="3Nuqhd">
          <node concept="aZer4" id="2YqrT$P7SuG" role="3XD1gS">
            <property role="TrG5h" value="Node" />
          </node>
          <node concept="3Tqbb2" id="2YqrT$P7SuH" role="3vLBG7" />
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P7StQ" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:$u9BK__SA8" resolve="Goal" />
        <node concept="3A20r5" id="2YqrT$P7StR" role="2t_VXX">
          <property role="TrG5h" value="goal" />
        </node>
      </node>
      <node concept="3Aq93q" id="2YqrT$P7Su3" role="3orSU4">
        <property role="3ArMco" value="true" />
        <node concept="3I6sU6" id="2YqrT$P7Su4" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7Su8" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7Su7" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P7tud" resolve="valid" />
              <node concept="3BlFb$" id="2YqrT$P7Sud" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7Sum" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P7StR" resolve="goal" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Aq93q" id="2YqrT$P7SyN" role="3orSU4">
        <node concept="3I6sU6" id="2YqrT$P7SyO" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7SyY" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7SyX" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P6Q6Q" resolve="check" />
              <node concept="3BlFb$" id="2YqrT$P7Sz3" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7Szc" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P7StR" resolve="goal" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="AVZhu" id="2YqrT$P7SAz" role="3ArX_J">
      <property role="TrG5h" value="error_Goal" />
      <node concept="3Aq93q" id="2YqrT$P7SA$" role="3orSU4">
        <node concept="3I6sU6" id="2YqrT$P7SA_" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7SAA" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7SAB" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P6Q6Q" resolve="check" />
              <node concept="3BlFb$" id="2YqrT$P7SAC" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7SAD" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P7SAF" resolve="goal" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P7SAE" role="20_v8_">
        <ref role="2t_S0q" to="jfgh:$u9BK__SA8" resolve="Goal" />
        <node concept="3A20r5" id="2YqrT$P7SAF" role="2t_VXX">
          <property role="TrG5h" value="goal" />
        </node>
      </node>
      <node concept="3Aq9E8" id="2YqrT$P7SAG" role="3otmyu">
        <node concept="3I6sU6" id="2YqrT$P7SAH" role="3Ip0Jz">
          <node concept="3I6s7M" id="2YqrT$P7SAI" role="3I6sU7">
            <node concept="3GeI9q" id="2YqrT$P7SAJ" role="3I6s78">
              <node concept="a7P8L" id="2YqrT$P7SAK" role="3GeI8F">
                <ref role="a7OzE" node="2YqrT$P7SAW" resolve="Msg" />
              </node>
              <node concept="HKQnh" id="2YqrT$P7SAL" role="3GeI8D">
                <node concept="Xl_RD" id="2YqrT$P7SAM" role="HKQng">
                  <property role="Xl_RC" value="invalid" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3I6s7M" id="2YqrT$P7SAN" role="3I6sU7">
            <node concept="3Aqt3T" id="2YqrT$P7SAO" role="3I6s78">
              <ref role="3AqCNq" node="2YqrT$P6Qob" resolve="error" />
              <node concept="a7P8L" id="2YqrT$P7SAP" role="3AunhB">
                <ref role="a7OzE" node="2YqrT$P7SAW" resolve="Msg" />
              </node>
              <node concept="3BlFb$" id="2YqrT$P7SAQ" role="3AunhB">
                <node concept="3A2sRY" id="2YqrT$P7SAR" role="3BlFb_">
                  <ref role="3A2yKK" node="2YqrT$P7SAF" resolve="goal" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3NuqgR" id="2YqrT$P7SAS" role="3Nuqhd">
          <node concept="aZer4" id="2YqrT$P7SAT" role="3XD1gS">
            <property role="TrG5h" value="Node" />
          </node>
          <node concept="3Tqbb2" id="2YqrT$P7SAU" role="3vLBG7" />
        </node>
        <node concept="3NuqgR" id="2YqrT$P7SAV" role="3Nuqhd">
          <node concept="aZer4" id="2YqrT$P7SAW" role="3XD1gS">
            <property role="TrG5h" value="Msg" />
          </node>
          <node concept="17QB3L" id="2YqrT$P7SAX" role="3vLBG7" />
        </node>
      </node>
    </node>
  </node>
</model>

