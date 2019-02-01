<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:30d249b0-c2b0-4934-8bd8-e1d7a37c3b3b(samples.fitch.propositionalLogic.types)">
  <persistence version="9" />
  <languages>
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules" version="15" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="2" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" version="0" />
    <engage id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="27wh" ref="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(samples.fitch.propositionalLogic.structure)" />
    <import index="f3ld" ref="r:30efdd3a-609b-4e7b-a8f2-60af62d5341f(samples.fitch.types)" />
    <import index="jfgh" ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(samples.fitch.structure)" />
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="238586457668550951" name="jetbrains.mps.logic.structure.Splice" flags="ng" index="22Ky0T">
        <child id="238586457668550958" name="expression" index="22Ky0K" />
      </concept>
      <concept id="8169506320648805904" name="jetbrains.mps.logic.structure.LogicalVariableDeclarationContainer" flags="ng" index="29MRiA">
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
      <concept id="861509610434242029" name="jetbrains.mps.logic.structure.DataFormConstructor" flags="ng" index="ns1u0">
        <reference id="861509610434243078" name="decl" index="ns1xF" />
        <child id="861509610434243076" name="override" index="ns1xD" />
      </concept>
      <concept id="861509610434243104" name="jetbrains.mps.logic.structure.DataFormTable" flags="ng" index="ns1xd">
        <child id="861509610434243105" name="contents" index="ns1xc" />
      </concept>
      <concept id="861509610434243081" name="jetbrains.mps.logic.structure.DataFormDeclaration" flags="ng" index="ns1x$">
        <child id="861509610434243084" name="template" index="ns1xx" />
      </concept>
      <concept id="861509610434305888" name="jetbrains.mps.logic.structure.ListFeature" flags="ng" index="nsiOd" />
      <concept id="861509610434276453" name="jetbrains.mps.logic.structure.DataFormFeature" flags="ng" index="nspS8">
        <property id="861509610434276456" name="final" index="nspS5" />
      </concept>
      <concept id="861509610434276450" name="jetbrains.mps.logic.structure.DataFormTemplate" flags="ng" index="nspSf">
        <child id="861509610434276451" name="feature" index="nspSe" />
      </concept>
      <concept id="861509610434294982" name="jetbrains.mps.logic.structure.ValueFeature" flags="ng" index="nssqF" />
      <concept id="861509610434289827" name="jetbrains.mps.logic.structure.ChildFeature" flags="ng" index="nstbe" />
      <concept id="861509610434435669" name="jetbrains.mps.logic.structure.DataFormFeatureOverride" flags="ng" index="nsMwS">
        <reference id="861509610434435672" name="feature" index="nsMwP" />
        <child id="861509610434435670" name="getter" index="nsMwV" />
      </concept>
      <concept id="2784663291567294648" name="jetbrains.mps.logic.structure.Wildcard" flags="ng" index="2IllgU" />
      <concept id="2105510410850132386" name="jetbrains.mps.logic.structure.ListNode" flags="ng" index="KCUsM">
        <child id="2105510410850136264" name="contents" index="KCVpo" />
      </concept>
      <concept id="4780620083400582599" name="jetbrains.mps.logic.structure.LogicalItemExpression" flags="ng" index="1nq8_$">
        <child id="4780620083400582654" name="logical" index="1nq8_t" />
      </concept>
      <concept id="7571593955706120730" name="jetbrains.mps.logic.structure.DataNodeExpression" flags="ng" index="1oi1Uc">
        <child id="7571593955706125526" name="root" index="1oi0x0" />
      </concept>
      <concept id="7571593955706137125" name="jetbrains.mps.logic.structure.TermNode" flags="ng" index="1oi5UN" />
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
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules">
      <concept id="8456919074560454386" name="jetbrains.mps.lang.coderules.structure.ParameterContainer" flags="ng" index="0eUR_">
        <child id="8456919074560454898" name="parameter" index="0eVf_" />
      </concept>
      <concept id="1618328391714763069" name="jetbrains.mps.lang.coderules.structure.MacroTable" flags="ng" index="0oKg$">
        <child id="1618328391714763070" name="macro" index="0oKgB" />
      </concept>
      <concept id="1618328391714763491" name="jetbrains.mps.lang.coderules.structure.MacroDeclaration" flags="ng" index="0oKvU">
        <child id="7670825977262353027" name="input" index="3eYTkm" />
        <child id="8908809128802132746" name="parameter" index="3tC56T" />
        <child id="8908809128801952514" name="body" index="3unh6L" />
      </concept>
      <concept id="4992889260816483106" name="jetbrains.mps.lang.coderules.structure.Condition" flags="ng" index="cBwPQ" />
      <concept id="6691972578451976398" name="jetbrains.mps.lang.coderules.structure.RuleInputSpecification" flags="ng" index="2t___k">
        <reference id="6691972578451990912" name="applicableConcept" index="2t_S0q" />
        <child id="6691972578451986151" name="input" index="2t_VXX" />
      </concept>
      <concept id="8335224865066015764" name="jetbrains.mps.lang.coderules.structure.Handler" flags="ng" index="AVZre">
        <reference id="3541122455446356437" name="extends" index="2YbDB9" />
        <child id="1980609059185345194" name="constraint" index="8PkJo" />
        <child id="3575255234175157601" name="template" index="1nK1Vg" />
      </concept>
      <concept id="7670825977262541651" name="jetbrains.mps.lang.coderules.structure.MacroInputReference" flags="ng" index="3eTFj6">
        <reference id="7670825977262541652" name="declaration" index="3eTFj1" />
      </concept>
      <concept id="7670825977262339471" name="jetbrains.mps.lang.coderules.structure.MacroInputDeclaration" flags="ng" index="3eYOCq">
        <child id="7670825977262355988" name="type" index="3eYSA1" />
      </concept>
      <concept id="1302893676238672057" name="jetbrains.mps.lang.coderules.structure.ExpandPseudoConstraint" flags="ng" index="1imXTs">
        <child id="1302893676238674275" name="logical" index="1imXu6" />
        <child id="1302893676238672106" name="origin" index="1imXSf" />
      </concept>
      <concept id="3575255234174969639" name="jetbrains.mps.lang.coderules.structure.ConstraintRule" flags="ng" index="1nLNMm">
        <child id="8456919074565751439" name="parameter" index="0UC6o" />
        <child id="3575255234174969658" name="head" index="1nLNMb" />
        <child id="3575255234174969660" name="body" index="1nLNMd" />
      </concept>
      <concept id="3575255234174969615" name="jetbrains.mps.lang.coderules.structure.RuleTemplate" flags="ng" index="1nLNMY">
        <child id="3575255234175001641" name="condition" index="1nLFYo" />
        <child id="3575255234174969633" name="input" index="1nLNMg" />
        <child id="3575255234174969628" name="code" index="1nLNMH" />
      </concept>
      <concept id="3575255234174969664" name="jetbrains.mps.lang.coderules.structure.ConstraintRuleStatement" flags="ng" index="1nLNNL">
        <child id="3575255234174969665" name="rule" index="1nLNNK" />
      </concept>
      <concept id="8908809128804390455" name="jetbrains.mps.lang.coderules.structure.MacroLogicalExpression" flags="ng" index="3txIi4" />
      <concept id="8908809128802132672" name="jetbrains.mps.lang.coderules.structure.MacroParameterDeclaration" flags="ng" index="3tC51N">
        <child id="8908809128802132718" name="type" index="3tC51t" />
        <child id="8908809128803441142" name="init" index="3tH6H5" />
      </concept>
      <concept id="8908809128802381130" name="jetbrains.mps.lang.coderules.structure.MacroParameterReference" flags="ng" index="3tDTZT">
        <reference id="8908809128802381395" name="parameter" index="3tDTNw" />
      </concept>
      <concept id="8908809128803504920" name="jetbrains.mps.lang.coderules.structure.InitBlock" flags="ng" index="3tHm6F" />
      <concept id="8908809128801951589" name="jetbrains.mps.lang.coderules.structure.MacroBody" flags="ng" index="3uniRm">
        <child id="8908809128801951592" name="code" index="3uniRr" />
      </concept>
      <concept id="1878265754076919072" name="jetbrains.mps.lang.coderules.structure.Comment" flags="ng" index="1zAsnw">
        <child id="5974055334837370567" name="part" index="27qylF" />
      </concept>
      <concept id="1878265754077060950" name="jetbrains.mps.lang.coderules.structure.ConstraintParameterDeclaration" flags="ng" index="1zAUYm" />
      <concept id="7368070394769089081" name="jetbrains.mps.lang.coderules.structure.RuleInputDeclaration" flags="ng" index="3A20r5" />
      <concept id="7368070394769139970" name="jetbrains.mps.lang.coderules.structure.RuleInputReference" flags="ng" index="3A2sRY">
        <reference id="7368070394769213644" name="declaration" index="3A2yKK" />
      </concept>
      <concept id="7368070394770780974" name="jetbrains.mps.lang.coderules.structure.UnifiesConstraint" flags="ng" index="3A8Hvi">
        <child id="7368070394770793930" name="value" index="3A8w4Q" />
        <child id="7368070394770793388" name="assignee" index="3A8wtg" />
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
      <concept id="7368070394767067636" name="jetbrains.mps.lang.coderules.structure.ConstraintDeclaration" flags="ng" index="3AqmO8">
        <child id="1878265754077059170" name="parameters" index="1zAUyy" />
      </concept>
      <concept id="7368070394767045637" name="jetbrains.mps.lang.coderules.structure.UserConstraint" flags="ng" index="3Aqt3T">
        <reference id="7368070394767091750" name="template" index="3AqCNq" />
        <child id="7368070394768117915" name="argument" index="3AunhB" />
      </concept>
      <concept id="1476354154047570702" name="jetbrains.mps.lang.coderules.structure.CodeBlock" flags="ng" index="3AO9d9">
        <child id="535508562359074271" name="code" index="16YjZG" />
      </concept>
      <concept id="8581119423153238082" name="jetbrains.mps.lang.coderules.structure.NodeAnchor" flags="ng" index="3BlFb$">
        <child id="8581119423153238083" name="node" index="3BlFb_" />
      </concept>
      <concept id="1553157749316176827" name="jetbrains.mps.lang.coderules.structure.PatternLogicalVariable" flags="ng" index="1HFMs5">
        <child id="5131913661993028915" name="variable" index="1uarlU" />
        <child id="5131913661993028917" name="value" index="1uarlW" />
      </concept>
      <concept id="2316688792938826204" name="jetbrains.mps.lang.coderules.structure.ConstraintLogicalClause" flags="ng" index="3I6s7M">
        <child id="2316688792938826214" name="constraint" index="3I6s78" />
      </concept>
      <concept id="2316688792938825384" name="jetbrains.mps.lang.coderules.structure.LogicalClauseList" flags="ng" index="3I6sU6">
        <child id="2316688792938825385" name="clauses" index="3I6sU7" />
      </concept>
      <concept id="965748826975413063" name="jetbrains.mps.lang.coderules.structure.RulePartParameterDeclaration" flags="ng" index="3NuqgR" />
      <concept id="3063948360254202562" name="jetbrains.mps.lang.coderules.structure.LocalDeclarationStatement" flags="ng" index="3X$Joe" />
    </language>
  </registry>
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
          <ref role="ehGHo" to="27wh:3JXBM6C3Cn8" resolve="Proposition" />
        </node>
      </node>
      <node concept="3uniRm" id="5RfK0kxl0X2" role="3unh6L">
        <node concept="3clFbS" id="5RfK0kxl0X9" role="3uniRr">
          <node concept="3Aqczg" id="5RfK0kxl0YB" role="3cqZAp">
            <node concept="3A8Hvi" id="5TfjU0xtN79" role="3Aqpz8">
              <node concept="aZ4PW" id="5RfK0kxl0YQ" role="3A8wtg">
                <node concept="3txIi4" id="5RfK0kxl0ZL" role="aZ4eD" />
              </node>
              <node concept="ns1u0" id="7VBaGntKJe2" role="3A8w4Q">
                <ref role="ns1xF" node="7VBaGntKJ7X" resolve="Const" />
                <node concept="nsMwS" id="7VBaGntKJe3" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ7Z" resolve="name" />
                  <node concept="3tDTZT" id="5RfK0kxl1ZH" role="nsMwV">
                    <ref role="3tDTNw" node="5RfK0kxl1xE" resolve="name" />
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
                  <ref role="3TtcxE" to="27wh:3JXBM6C3FnW" resolve="conjunct" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eYOCq" id="5RfK0kxl0WS" role="3eYTkm">
        <property role="TrG5h" value="and" />
        <node concept="3Tqbb2" id="5RfK0kxl0WT" role="3eYSA1">
          <ref role="ehGHo" to="27wh:3JXBM6C3FnV" resolve="And" />
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
            <node concept="3A8Hvi" id="5TfjU0xtN7a" role="3Aqpz8">
              <node concept="aZ4PW" id="5RfK0kxlc4q" role="3A8wtg">
                <node concept="3txIi4" id="5RfK0kxlc4w" role="aZ4eD" />
              </node>
              <node concept="ns1u0" id="7VBaGntKJeh" role="3A8w4Q">
                <ref role="ns1xF" node="7VBaGntKJ80" resolve="And" />
                <node concept="nsMwS" id="7VBaGntKJei" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ82" resolve="conjuncts" />
                  <node concept="1nq8_$" id="5RfK0kxltHS" role="nsMwV">
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
                  <ref role="3TtcxE" to="27wh:3JXBM6C3Fp4" resolve="disjunct" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eYOCq" id="5RfK0kxld9p" role="3eYTkm">
        <property role="TrG5h" value="or" />
        <node concept="3Tqbb2" id="5RfK0kxld9q" role="3eYSA1">
          <ref role="ehGHo" to="27wh:3JXBM6C3FoA" resolve="Or" />
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
            <node concept="3A8Hvi" id="5TfjU0xtN7b" role="3Aqpz8">
              <node concept="aZ4PW" id="5RfK0kxld9W" role="3A8wtg">
                <node concept="3txIi4" id="5RfK0kxld9X" role="aZ4eD" />
              </node>
              <node concept="ns1u0" id="7VBaGntKJf3" role="3A8w4Q">
                <ref role="ns1xF" node="7VBaGntKJ83" resolve="Or" />
                <node concept="nsMwS" id="7VBaGntKJf4" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ85" resolve="disjuncts" />
                  <node concept="1nq8_$" id="5RfK0kxlubX" role="nsMwV">
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
                  <ref role="3Tt5mk" to="27wh:3JXBM6C3Cno" resolve="target" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eYOCq" id="5RfK0kxlwbs" role="3eYTkm">
        <property role="TrG5h" value="not" />
        <node concept="3Tqbb2" id="5RfK0kxlwbt" role="3eYSA1">
          <ref role="ehGHo" to="27wh:3JXBM6C3Cnn" resolve="Not" />
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
            <node concept="3A8Hvi" id="5TfjU0xtN7c" role="3Aqpz8">
              <node concept="aZ4PW" id="5RfK0kxlwEN" role="3A8wtg">
                <node concept="3txIi4" id="5RfK0kxlwET" role="aZ4eD" />
              </node>
              <node concept="ns1u0" id="7VBaGntKJej" role="3A8w4Q">
                <ref role="ns1xF" node="7VBaGntKJ86" resolve="Not" />
                <node concept="nsMwS" id="7VBaGntKJek" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ88" resolve="target" />
                  <node concept="1nq8_$" id="5RfK0kxlwFh" role="nsMwV">
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
                  <ref role="3Tt5mk" to="27wh:3JXBM6C3Fpi" resolve="antecedent" />
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
                  <ref role="3Tt5mk" to="27wh:3JXBM6C3Fpk" resolve="consequent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eYOCq" id="5RfK0kxlwHw" role="3eYTkm">
        <property role="TrG5h" value="_if" />
        <node concept="3Tqbb2" id="5RfK0kxlwHx" role="3eYSA1">
          <ref role="ehGHo" to="27wh:3JXBM6C3Fph" resolve="If" />
        </node>
      </node>
      <node concept="3uniRm" id="5RfK0kxlxIw" role="3unh6L">
        <node concept="3clFbS" id="5RfK0kxlxI$" role="3uniRr">
          <node concept="3X$Joe" id="5RfK0kxlxIy" role="3cqZAp">
            <node concept="aZer4" id="5RfK0kxlxIz" role="3XD1gS">
              <property role="TrG5h" value="Atcd" />
            </node>
            <node concept="aZer4" id="5RfK0kxlxIL" role="3XD1gS">
              <property role="TrG5h" value="Csqt" />
            </node>
          </node>
          <node concept="3Aqczg" id="5RfK0kxlxJ8" role="3cqZAp">
            <node concept="1imXTs" id="5RfK0kxlxJ2" role="3Aqpz8">
              <node concept="a7P8L" id="5RfK0kxlxJh" role="1imXu6">
                <ref role="a7OzE" node="5RfK0kxlxIz" resolve="Atcd" />
              </node>
              <node concept="3tDTZT" id="5RfK0kxlxJm" role="1imXSf">
                <ref role="3tDTNw" node="5RfK0kxlwKc" resolve="antecedent" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="5RfK0kxlxJE" role="3cqZAp">
            <node concept="1imXTs" id="5RfK0kxlxJ$" role="3Aqpz8">
              <node concept="a7P8L" id="5RfK0kxlxJR" role="1imXu6">
                <ref role="a7OzE" node="5RfK0kxlxIL" resolve="Csqt" />
              </node>
              <node concept="3tDTZT" id="5RfK0kxlxJW" role="1imXSf">
                <ref role="3tDTNw" node="5RfK0kxlxn9" resolve="consequent" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="5RfK0kxlxKk" role="3cqZAp">
            <node concept="3A8Hvi" id="5TfjU0xtN7d" role="3Aqpz8">
              <node concept="aZ4PW" id="5RfK0kxlxK$" role="3A8wtg">
                <node concept="3txIi4" id="5RfK0kxlxKE" role="aZ4eD" />
              </node>
              <node concept="ns1u0" id="7VBaGntKJeG" role="3A8w4Q">
                <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                <node concept="nsMwS" id="7VBaGntKJeH" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                  <node concept="1nq8_$" id="5RfK0kxlxL2" role="nsMwV">
                    <node concept="a7P8L" id="5RfK0kxlxL1" role="1nq8_t">
                      <ref role="a7OzE" node="5RfK0kxlxIz" resolve="Atcd" />
                    </node>
                  </node>
                </node>
                <node concept="nsMwS" id="7VBaGntKJeI" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                  <node concept="1nq8_$" id="5RfK0kxlxRQ" role="nsMwV">
                    <node concept="a7P8L" id="5RfK0kxlxRP" role="1nq8_t">
                      <ref role="a7OzE" node="5RfK0kxlxIL" resolve="Csqt" />
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
                  <ref role="3Tt5mk" to="27wh:3JXBM6C3FrF" resolve="antecedent" />
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
                  <ref role="3Tt5mk" to="27wh:3JXBM6C3FrG" resolve="consequent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eYOCq" id="5RfK0kxly6R" role="3eYTkm">
        <property role="TrG5h" value="iff" />
        <node concept="3Tqbb2" id="5RfK0kxly6S" role="3eYSA1">
          <ref role="ehGHo" to="27wh:3JXBM6C3Frx" resolve="Iff" />
        </node>
      </node>
      <node concept="3uniRm" id="5RfK0kxly6T" role="3unh6L">
        <node concept="3clFbS" id="5RfK0kxly6U" role="3uniRr">
          <node concept="3X$Joe" id="5RfK0kxly6V" role="3cqZAp">
            <node concept="aZer4" id="5RfK0kxly6W" role="3XD1gS">
              <property role="TrG5h" value="Atcd" />
            </node>
            <node concept="aZer4" id="5RfK0kxly6X" role="3XD1gS">
              <property role="TrG5h" value="Csqt" />
            </node>
          </node>
          <node concept="3Aqczg" id="5RfK0kxly6Y" role="3cqZAp">
            <node concept="1imXTs" id="5RfK0kxly6Z" role="3Aqpz8">
              <node concept="a7P8L" id="5RfK0kxly70" role="1imXu6">
                <ref role="a7OzE" node="5RfK0kxly6W" resolve="Atcd" />
              </node>
              <node concept="3tDTZT" id="5RfK0kxly71" role="1imXSf">
                <ref role="3tDTNw" node="5RfK0kxly6B" resolve="antecedent" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="5RfK0kxly72" role="3cqZAp">
            <node concept="1imXTs" id="5RfK0kxly73" role="3Aqpz8">
              <node concept="a7P8L" id="5RfK0kxly74" role="1imXu6">
                <ref role="a7OzE" node="5RfK0kxly6X" resolve="Csqt" />
              </node>
              <node concept="3tDTZT" id="5RfK0kxly75" role="1imXSf">
                <ref role="3tDTNw" node="5RfK0kxly6J" resolve="consequent" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="5RfK0kxly76" role="3cqZAp">
            <node concept="3A8Hvi" id="5TfjU0xtN7e" role="3Aqpz8">
              <node concept="aZ4PW" id="5RfK0kxly78" role="3A8wtg">
                <node concept="3txIi4" id="5RfK0kxly79" role="aZ4eD" />
              </node>
              <node concept="ns1u0" id="7VBaGntKJeP" role="3A8w4Q">
                <ref role="ns1xF" node="7VBaGntKJ8d" resolve="Iff" />
                <node concept="nsMwS" id="7VBaGntKJeQ" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ8f" resolve="antecedent" />
                  <node concept="1nq8_$" id="5RfK0kxly7f" role="nsMwV">
                    <node concept="a7P8L" id="5RfK0kxly7g" role="1nq8_t">
                      <ref role="a7OzE" node="5RfK0kxly6W" resolve="Atcd" />
                    </node>
                  </node>
                </node>
                <node concept="nsMwS" id="7VBaGntKJeR" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ8g" resolve="consequence" />
                  <node concept="1nq8_$" id="5RfK0kxly7l" role="nsMwV">
                    <node concept="a7P8L" id="5RfK0kxly7m" role="1nq8_t">
                      <ref role="a7OzE" node="5RfK0kxly6X" resolve="Csqt" />
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
    <property role="TrG5h" value="PropReasoning" />
    <ref role="2YbDB9" to="f3ld:2aBGSFge0GD" resolve="Check" />
    <node concept="3AqmO8" id="2aBGSFgfwNi" role="8PkJo">
      <property role="TrG5h" value="conclusion" />
      <node concept="1zAUYm" id="2aBGSFgfwNl" role="1zAUyy">
        <property role="TrG5h" value="stc" />
      </node>
      <node concept="1zAUYm" id="2aBGSFgfwNn" role="1zAUyy">
        <property role="TrG5h" value="rsn" />
      </node>
      <node concept="1zAsnw" id="3l440nVsJk$" role="lGtFl">
        <node concept="3SKdUq" id="3l440nVsJk_" role="27qylF">
          <property role="3SKdUp" value="sentence is the reasoning's conclusion" />
        </node>
      </node>
    </node>
    <node concept="3AqmO8" id="2YqrT$P7RE$" role="8PkJo">
      <property role="TrG5h" value="goal" />
      <node concept="1zAUYm" id="2YqrT$P7REF" role="1zAUyy">
        <property role="TrG5h" value="stc" />
      </node>
      <node concept="1zAUYm" id="2YqrT$P7REH" role="1zAUyy">
        <property role="TrG5h" value="goal" />
      </node>
      <node concept="1zAsnw" id="3l440nVsJkI" role="lGtFl">
        <node concept="3SKdUq" id="3l440nVsJkJ" role="27qylF">
          <property role="3SKdUp" value="sentence is the proof's goal" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H12U" role="1nK1Vg">
      <property role="TrG5h" value="Judgement_conclusion" />
      <node concept="3clFbS" id="6$MtiK8H12V" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H12W" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H12X" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwamm" role="0UC6o">
              <node concept="3NuqgR" id="2aBGSFgfAEt" role="0eVf_">
                <node concept="aZer4" id="2aBGSFgfAEu" role="3XD1gS">
                  <property role="TrG5h" value="Stc" />
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2aBGSFgfAEo" role="1nLNMd">
              <node concept="3I6sU6" id="2aBGSFgfAEp" role="3Ip0Jz">
                <node concept="3I6s7M" id="2aBGSFgfAEE" role="3I6sU7">
                  <node concept="1imXTs" id="2aBGSFgfAEB" role="3I6s78">
                    <node concept="a7P8L" id="2aBGSFgfAEK" role="1imXu6">
                      <ref role="a7OzE" node="2aBGSFgfAEu" resolve="Stc" />
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
                      <ref role="a7OzE" node="2aBGSFgfAEu" resolve="Stc" />
                    </node>
                    <node concept="3BlFb$" id="2aBGSFgfBjw" role="3AunhB">
                      <node concept="3A2sRY" id="2aBGSFgfBjE" role="3BlFb_">
                        <ref role="3A2yKK" node="2aBGSFgfAE9" resolve="jdg" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2aBGSFgfAE8" role="1nLNMg">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3FsA" resolve="Judgement" />
        <node concept="3A20r5" id="2aBGSFgfAE9" role="2t_VXX">
          <property role="TrG5h" value="jdg" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H12Y" role="1nK1Vg">
      <property role="TrG5h" value="premise_valid" />
      <node concept="3clFbS" id="6$MtiK8H12Z" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H130" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H131" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwama" role="0UC6o">
              <node concept="3NuqgR" id="5jVx7S22gV2" role="0eVf_">
                <node concept="aZer4" id="5jVx7S22gV3" role="3XD1gS">
                  <property role="TrG5h" value="Stc" />
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="5jVx7S22gUL" role="1nLNMd">
              <node concept="3I6sU6" id="5jVx7S22gUM" role="3Ip0Jz">
                <node concept="3I6s7M" id="5jVx7S22gUN" role="3I6sU7">
                  <node concept="1imXTs" id="5jVx7S22gUO" role="3I6s78">
                    <node concept="a7P8L" id="5jVx7S22gUP" role="1imXu6">
                      <ref role="a7OzE" node="5jVx7S22gV3" resolve="Stc" />
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
                      <ref role="a7OzE" node="5jVx7S22gV3" resolve="Stc" />
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
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="5jVx7S22gV0" role="3AunhB">
                      <node concept="3A2sRY" id="5jVx7S22gV1" role="3BlFb_">
                        <ref role="3A2yKK" node="5jVx7S22gUK" resolve="prem" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="5jVx7S22gUJ" role="1nLNMg">
        <ref role="2t_S0q" to="jfgh:$u9BK__JRe" resolve="Premise" />
        <node concept="3A20r5" id="5jVx7S22gUK" role="2t_VXX">
          <property role="TrG5h" value="prem" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H132" role="1nK1Vg">
      <property role="TrG5h" value="assumption_valid" />
      <node concept="3clFbS" id="6$MtiK8H133" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H134" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H135" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwamg" role="0UC6o">
              <node concept="3NuqgR" id="5RfK0kxl_zV" role="0eVf_">
                <node concept="aZer4" id="2aBGSFgfVxh" role="3XD1gS">
                  <property role="TrG5h" value="Stc" />
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="5RfK0kxl_zH" role="1nLNMd">
              <node concept="3I6sU6" id="5RfK0kxl_zI" role="3Ip0Jz">
                <node concept="3I6s7M" id="2aBGSFgfVxM" role="3I6sU7">
                  <node concept="1imXTs" id="2aBGSFgfVxG" role="3I6s78">
                    <node concept="a7P8L" id="2aBGSFgfVy6" role="1imXu6">
                      <ref role="a7OzE" node="2aBGSFgfVxh" resolve="Stc" />
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
                      <ref role="a7OzE" node="2aBGSFgfVxh" resolve="Stc" />
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
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2YqrT$P7tv5" role="3AunhB">
                      <node concept="3A2sRY" id="2YqrT$P7tve" role="3BlFb_">
                        <ref role="3A2yKK" node="5RfK0kxl_z$" resolve="ass" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="5RfK0kxl_zz" role="1nLNMg">
        <ref role="2t_S0q" to="jfgh:3JXBM6C3Pwi" resolve="Assumption" />
        <node concept="3A20r5" id="5RfK0kxl_z$" role="2t_VXX">
          <property role="TrG5h" value="ass" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H136" role="1nK1Vg">
      <property role="TrG5h" value="reiteration_valid" />
      <node concept="3clFbS" id="6$MtiK8H137" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H138" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H139" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwam1" role="0UC6o">
              <node concept="3NuqgR" id="5jVx7S217sO" role="0eVf_">
                <node concept="aZer4" id="5jVx7S21pW_" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="5jVx7S217sP" role="3XD1gS">
                  <property role="TrG5h" value="Ass" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="5jVx7S217sJ" role="1nLNMb">
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
                    <node concept="1HFMs5" id="7VBaGntKIR4" role="3AunhB">
                      <node concept="a7P8L" id="5jVx7S21pX8" role="1uarlW">
                        <ref role="a7OzE" node="5jVx7S21pW_" resolve="Con" />
                      </node>
                      <node concept="a7P8L" id="5jVx7S21je4" role="1uarlU">
                        <ref role="a7OzE" node="5jVx7S217sP" resolve="Ass" />
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
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
            </node>
            <node concept="3Aq93q" id="5jVx7S21pWi" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="5jVx7S21pWj" role="3Ip0Jz">
                <node concept="3I6s7M" id="5jVx7S21pXe" role="3I6sU7">
                  <node concept="3Aqt3T" id="5jVx7S21pXd" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="5jVx7S21pXj" role="3AunhB">
                      <node concept="2OqwBi" id="5jVx7S21SqX" role="3BlFb_">
                        <node concept="2OqwBi" id="5jVx7S21si9" role="2Oq$k0">
                          <node concept="2OqwBi" id="5jVx7S21q71" role="2Oq$k0">
                            <node concept="3A2sRY" id="5jVx7S21pXs" role="2Oq$k0">
                              <ref role="3A2yKK" node="5jVx7S2178P" resolve="reit" />
                            </node>
                            <node concept="3Tsc0h" id="5jVx7S21qHJ" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
            <node concept="3Aq9E8" id="5jVx7S21uiY" role="1nLNMd">
              <node concept="3I6sU6" id="5jVx7S21uiZ" role="3Ip0Jz">
                <node concept="3I6s7M" id="5jVx7S21uj3" role="3I6sU7">
                  <node concept="3Aqt3T" id="5jVx7S21uj2" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="5jVx7S21uj8" role="3AunhB">
                      <node concept="3A2sRY" id="5jVx7S21ujh" role="3BlFb_">
                        <ref role="3A2yKK" node="5jVx7S2178P" resolve="reit" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="5jVx7S2178O" role="1nLNMg">
        <ref role="2t_S0q" to="jfgh:5jVx7S1Yau5" resolve="Reiteration" />
        <node concept="3A20r5" id="5jVx7S2178P" role="2t_VXX">
          <property role="TrG5h" value="reit" />
        </node>
      </node>
      <node concept="cBwPQ" id="5jVx7S217t8" role="1nLFYo">
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
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="5jVx7S21d8X" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H13a" role="1nK1Vg">
      <property role="TrG5h" value="and_intro1" />
      <node concept="3clFbS" id="6$MtiK8H13b" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H13c" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H13d" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwamf" role="0UC6o">
              <node concept="3NuqgR" id="2AfSc6JvIq_" role="0eVf_">
                <node concept="aZer4" id="2AfSc6JvIqA" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="2AfSc6JvIqJ" role="3XD1gS">
                  <property role="TrG5h" value="Prem1" />
                </node>
                <node concept="aZer4" id="2AfSc6JvIr1" role="3XD1gS">
                  <property role="TrG5h" value="Prem2" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2AfSc6JvIqw" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2AfSc6JvIqx" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6JvIuN" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JvIuM" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="a7P8L" id="2AfSc6JvIuS" role="3AunhB">
                      <ref role="a7OzE" node="2AfSc6JvIqJ" resolve="Prem1" />
                    </node>
                    <node concept="3BlFb$" id="2AfSc6JvIv0" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6JvMsN" role="3BlFb_">
                        <node concept="1y4W85" id="2AfSc6JvLY3" role="2Oq$k0">
                          <node concept="3cmrfG" id="2AfSc6JvMj5" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="2AfSc6JvIva" role="1y566C">
                            <node concept="3A2sRY" id="2AfSc6JvIvb" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6Jv_Co" resolve="ai" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6JvIvc" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2AfSc6JvN5E" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2AfSc6JvN7z" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JvN7$" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="a7P8L" id="2AfSc6JvNcV" role="3AunhB">
                      <ref role="a7OzE" node="2AfSc6JvIr1" resolve="Prem2" />
                    </node>
                    <node concept="3BlFb$" id="2AfSc6JvN7A" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6JvN7B" role="3BlFb_">
                        <node concept="1y4W85" id="2AfSc6JvN7C" role="2Oq$k0">
                          <node concept="3cmrfG" id="2AfSc6JvN7D" role="1y58nS">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="2AfSc6JvN7E" role="1y566C">
                            <node concept="3A2sRY" id="2AfSc6JvN7F" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6Jv_Co" resolve="ai" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6JvN7G" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2AfSc6JvN7H" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2AfSc6JvNiL" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JvNiJ" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIR1" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJef" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ80" resolve="And" />
                        <node concept="nsMwS" id="7VBaGntKJeg" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ82" resolve="conjuncts" />
                          <node concept="1oi1Uc" id="2AfSc6JvNjG" role="nsMwV">
                            <node concept="KCUsM" id="2AfSc6JvNm_" role="1oi0x0">
                              <node concept="1oi5UN" id="2AfSc6JvNuI" role="KCVpo">
                                <node concept="22Ky0T" id="2AfSc6JvNBp" role="lGtFl">
                                  <node concept="1nq8_$" id="2AfSc6JvNBs" role="22Ky0K">
                                    <node concept="a7P8L" id="2AfSc6JvNBr" role="1nq8_t">
                                      <ref role="a7OzE" node="2AfSc6JvIqJ" resolve="Prem1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1oi5UN" id="2AfSc6JvNG4" role="KCVpo">
                                <node concept="22Ky0T" id="2AfSc6JvNON" role="lGtFl">
                                  <node concept="1nq8_$" id="2AfSc6JvNOQ" role="22Ky0K">
                                    <node concept="a7P8L" id="2AfSc6JvNOP" role="1nq8_t">
                                      <ref role="a7OzE" node="2AfSc6JvIr1" resolve="Prem2" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="2AfSc6JvNja" role="1uarlU">
                        <ref role="a7OzE" node="2AfSc6JvIqA" resolve="Con" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="2AfSc6JvNPg" role="3AunhB">
                      <node concept="3A2sRY" id="2AfSc6JvNPE" role="3BlFb_">
                        <ref role="3A2yKK" node="2AfSc6Jv_Co" resolve="ai" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2AfSc6JvNhR" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2AfSc6JvNhS" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6JvNPN" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JvNPM" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6JvNPS" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6JvNPT" role="3BlFb_">
                        <node concept="1y4W85" id="2AfSc6JvNPU" role="2Oq$k0">
                          <node concept="3cmrfG" id="2AfSc6JvNPV" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="2AfSc6JvNPW" role="1y566C">
                            <node concept="3A2sRY" id="2AfSc6JvNPX" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6Jv_Co" resolve="ai" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6JvNPY" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2AfSc6JvNPZ" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2AfSc6JvNVy" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JvNVz" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6JvNV$" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6JvNV_" role="3BlFb_">
                        <node concept="1y4W85" id="2AfSc6JvNVA" role="2Oq$k0">
                          <node concept="3cmrfG" id="2AfSc6JvNVB" role="1y58nS">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="2AfSc6JvNVC" role="1y566C">
                            <node concept="3A2sRY" id="2AfSc6JvNVD" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6Jv_Co" resolve="ai" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6JvNVE" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2AfSc6JvNVF" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2AfSc6JvO5v" role="1nLNMd">
              <node concept="3I6sU6" id="2AfSc6JvO5w" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6JvO5$" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JvO5z" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6JvO5J" role="3AunhB">
                      <node concept="3A2sRY" id="2AfSc6JvO5S" role="3BlFb_">
                        <ref role="3A2yKK" node="2AfSc6Jv_Co" resolve="ai" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2AfSc6Jv_Cn" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3URE" resolve="AndIntro" />
        <node concept="3A20r5" id="2AfSc6Jv_Co" role="2t_VXX">
          <property role="TrG5h" value="ai" />
        </node>
      </node>
      <node concept="cBwPQ" id="2AfSc6Jv_CB" role="1nLFYo">
        <node concept="3clFbS" id="2AfSc6Jv_CC" role="16YjZG">
          <node concept="3clFbF" id="2AfSc6Jv_CP" role="3cqZAp">
            <node concept="3clFbC" id="2AfSc6JvI5X" role="3clFbG">
              <node concept="3cmrfG" id="2AfSc6JvI6c" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="2OqwBi" id="2AfSc6JvCi2" role="3uHU7B">
                <node concept="2OqwBi" id="2AfSc6Jv_Pk" role="2Oq$k0">
                  <node concept="3A2sRY" id="2AfSc6Jv_CO" role="2Oq$k0">
                    <ref role="3A2yKK" node="2AfSc6Jv_Co" resolve="ai" />
                  </node>
                  <node concept="3Tsc0h" id="2AfSc6JvArI" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="2AfSc6JvFE6" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H13e" role="1nK1Vg">
      <property role="TrG5h" value="and_intro2" />
      <node concept="3clFbS" id="6$MtiK8H13f" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H13g" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H13h" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwamc" role="0UC6o">
              <node concept="3NuqgR" id="2AfSc6JvO6O" role="0eVf_">
                <node concept="aZer4" id="2AfSc6JvO6P" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="2AfSc6JvO6Q" role="3XD1gS">
                  <property role="TrG5h" value="Prem1" />
                </node>
                <node concept="aZer4" id="2AfSc6JvO6R" role="3XD1gS">
                  <property role="TrG5h" value="Prem2" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2AfSc6JvO67" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2AfSc6JvO68" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6JvO6k" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JvO6l" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="a7P8L" id="2AfSc6JwAHe" role="3AunhB">
                      <ref role="a7OzE" node="2AfSc6JvO6Q" resolve="Prem1" />
                    </node>
                    <node concept="3BlFb$" id="2AfSc6JvO6n" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6JvO6o" role="3BlFb_">
                        <node concept="1y4W85" id="2AfSc6JvO6p" role="2Oq$k0">
                          <node concept="3cmrfG" id="2AfSc6JvO6q" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="2AfSc6JvO6r" role="1y566C">
                            <node concept="3A2sRY" id="2AfSc6JvO6s" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6JvO7f" resolve="ai" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6JvO6t" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2AfSc6JvO6u" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2AfSc6JvO69" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JvO6a" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="a7P8L" id="2AfSc6JwBaI" role="3AunhB">
                      <ref role="a7OzE" node="2AfSc6JvO6R" resolve="Prem2" />
                    </node>
                    <node concept="3BlFb$" id="2AfSc6JvO6c" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6JvO6d" role="3BlFb_">
                        <node concept="1y4W85" id="2AfSc6JvO6e" role="2Oq$k0">
                          <node concept="3cmrfG" id="2AfSc6JvO6f" role="1y58nS">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="2AfSc6JvO6g" role="1y566C">
                            <node concept="3A2sRY" id="2AfSc6JvO6h" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6JvO7f" resolve="ai" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6JvO6i" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2AfSc6JvO6j" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2AfSc6JvO6v" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JvO6w" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIRb" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJfe" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ80" resolve="And" />
                        <node concept="nsMwS" id="7VBaGntKJff" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ82" resolve="conjuncts" />
                          <node concept="1oi1Uc" id="2AfSc6JvO6C" role="nsMwV">
                            <node concept="KCUsM" id="2AfSc6JvO6D" role="1oi0x0">
                              <node concept="1oi5UN" id="2AfSc6JvO6E" role="KCVpo">
                                <node concept="22Ky0T" id="2AfSc6JvO6F" role="lGtFl">
                                  <node concept="1nq8_$" id="2AfSc6JvO6G" role="22Ky0K">
                                    <node concept="a7P8L" id="2AfSc6JwBjN" role="1nq8_t">
                                      <ref role="a7OzE" node="2AfSc6JvO6R" resolve="Prem2" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1oi5UN" id="2AfSc6JvO6I" role="KCVpo">
                                <node concept="22Ky0T" id="2AfSc6JvO6J" role="lGtFl">
                                  <node concept="1nq8_$" id="2AfSc6JvO6K" role="22Ky0K">
                                    <node concept="a7P8L" id="2AfSc6JwBk7" role="1nq8_t">
                                      <ref role="a7OzE" node="2AfSc6JvO6Q" resolve="Prem1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="2AfSc6JvO6y" role="1uarlU">
                        <ref role="a7OzE" node="2AfSc6JvO6P" resolve="Con" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="2AfSc6JvO6M" role="3AunhB">
                      <node concept="3A2sRY" id="2AfSc6JvO6N" role="3BlFb_">
                        <ref role="3A2yKK" node="2AfSc6JvO7f" resolve="ai" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2AfSc6JvO6S" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2AfSc6JvO6T" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6JvO6U" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JvO6V" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6JvO6W" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6JvO6X" role="3BlFb_">
                        <node concept="1y4W85" id="2AfSc6JvO6Y" role="2Oq$k0">
                          <node concept="3cmrfG" id="2AfSc6JvO6Z" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="2AfSc6JvO70" role="1y566C">
                            <node concept="3A2sRY" id="2AfSc6JvO71" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6JvO7f" resolve="ai" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6JvO72" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2AfSc6JvO73" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2AfSc6JvO74" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JvO75" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6JvO76" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6JvO77" role="3BlFb_">
                        <node concept="1y4W85" id="2AfSc6JvO78" role="2Oq$k0">
                          <node concept="3cmrfG" id="2AfSc6JvO79" role="1y58nS">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="2AfSc6JvO7a" role="1y566C">
                            <node concept="3A2sRY" id="2AfSc6JvO7b" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6JvO7f" resolve="ai" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6JvO7c" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2AfSc6JvO7d" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2AfSc6JvO61" role="1nLNMd">
              <node concept="3I6sU6" id="2AfSc6JvO62" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6JvO63" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JvO64" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6JvO65" role="3AunhB">
                      <node concept="3A2sRY" id="2AfSc6JvO66" role="3BlFb_">
                        <ref role="3A2yKK" node="2AfSc6JvO7f" resolve="ai" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2AfSc6JvO7e" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3URE" resolve="AndIntro" />
        <node concept="3A20r5" id="2AfSc6JvO7f" role="2t_VXX">
          <property role="TrG5h" value="ai" />
        </node>
      </node>
      <node concept="cBwPQ" id="2AfSc6JvO7g" role="1nLFYo">
        <node concept="3clFbS" id="2AfSc6JvO7h" role="16YjZG">
          <node concept="3clFbF" id="2AfSc6JvO7i" role="3cqZAp">
            <node concept="3clFbC" id="2AfSc6JvO7j" role="3clFbG">
              <node concept="3cmrfG" id="2AfSc6JvO7k" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="2OqwBi" id="2AfSc6JvO7l" role="3uHU7B">
                <node concept="2OqwBi" id="2AfSc6JvO7m" role="2Oq$k0">
                  <node concept="3A2sRY" id="2AfSc6JvO7n" role="2Oq$k0">
                    <ref role="3A2yKK" node="2AfSc6JvO7f" resolve="ai" />
                  </node>
                  <node concept="3Tsc0h" id="2AfSc6JvO7o" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="2AfSc6JvO7p" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H13i" role="1nK1Vg">
      <property role="TrG5h" value="and_elim1" />
      <node concept="3clFbS" id="6$MtiK8H13j" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H13k" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H13l" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwam5" role="0UC6o">
              <node concept="3NuqgR" id="2AfSc6JwgnT" role="0eVf_">
                <node concept="aZer4" id="2AfSc6JwgnU" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="2AfSc6Jwgo9" role="3XD1gS">
                  <property role="TrG5h" value="Prem" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2AfSc6JwgnK" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2AfSc6JwgnL" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6JwgnP" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JwgnO" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="a7P8L" id="2AfSc6JwgoB" role="3AunhB">
                      <ref role="a7OzE" node="2AfSc6JwgnU" resolve="Con" />
                    </node>
                    <node concept="3BlFb$" id="2AfSc6JwgoJ" role="3AunhB">
                      <node concept="3A2sRY" id="2AfSc6JwgoT" role="3BlFb_">
                        <ref role="3A2yKK" node="2AfSc6Jw7Tu" resolve="ae" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2AfSc6Jwgp$" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6Jwgpy" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIRo" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJf1" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ80" resolve="And" />
                        <node concept="nsMwS" id="7VBaGntKJf2" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ82" resolve="conjuncts" />
                          <node concept="1oi1Uc" id="2AfSc6Jwgqh" role="nsMwV">
                            <node concept="KCUsM" id="2AfSc6Jwgta" role="1oi0x0">
                              <node concept="1oi5UN" id="2AfSc6Jwg_j" role="KCVpo">
                                <node concept="22Ky0T" id="2AfSc6JwgHY" role="lGtFl">
                                  <node concept="1nq8_$" id="2AfSc6JwgI1" role="22Ky0K">
                                    <node concept="a7P8L" id="2AfSc6JwRNl" role="1nq8_t">
                                      <ref role="a7OzE" node="2AfSc6JwgnU" resolve="Con" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2IllgU" id="2AfSc6JwgMg" role="KCVpo" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="2AfSc6JwgpI" role="1uarlU">
                        <ref role="a7OzE" node="2AfSc6Jwgo9" resolve="Prem" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="2AfSc6JwgQT" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6Jwncq" role="3BlFb_">
                        <node concept="2OqwBi" id="2AfSc6JwjuR" role="2Oq$k0">
                          <node concept="2OqwBi" id="2AfSc6Jwh1v" role="2Oq$k0">
                            <node concept="3A2sRY" id="2AfSc6JwgRg" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6Jw7Tu" resolve="ae" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6JwhSF" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                          <node concept="1uHKPH" id="2AfSc6Jwlsu" role="2OqNvi" />
                        </node>
                        <node concept="3TrEf2" id="2AfSc6JwnPL" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2AfSc6JwnRE" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2AfSc6JwnRF" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6JwnSh" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JwnSg" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6JwnSm" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6JwuiV" role="3BlFb_">
                        <node concept="2OqwBi" id="2AfSc6JwqyJ" role="2Oq$k0">
                          <node concept="2OqwBi" id="2AfSc6Jwo2I" role="2Oq$k0">
                            <node concept="3A2sRY" id="2AfSc6JwnSv" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6Jw7Tu" resolve="ae" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6JwoWz" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                          <node concept="1uHKPH" id="2AfSc6JwsyZ" role="2OqNvi" />
                        </node>
                        <node concept="3TrEf2" id="2AfSc6JwuYV" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2AfSc6Jwv0O" role="1nLNMd">
              <node concept="3I6sU6" id="2AfSc6Jwv0P" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6Jwv0T" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6Jwv0S" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6Jwv0Y" role="3AunhB">
                      <node concept="3A2sRY" id="2AfSc6Jx8At" role="3BlFb_">
                        <ref role="3A2yKK" node="2AfSc6Jw7Tu" resolve="ae" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2AfSc6Jw7Tt" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3UTz" resolve="AndElim" />
        <node concept="3A20r5" id="2AfSc6Jw7Tu" role="2t_VXX">
          <property role="TrG5h" value="ae" />
        </node>
      </node>
      <node concept="cBwPQ" id="2AfSc6Jw7TE" role="1nLFYo">
        <node concept="3clFbS" id="2AfSc6Jw7TF" role="16YjZG">
          <node concept="3clFbF" id="2AfSc6Jw7TS" role="3cqZAp">
            <node concept="3clFbC" id="2AfSc6Jwg3d" role="3clFbG">
              <node concept="3cmrfG" id="2AfSc6Jwg3s" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="2AfSc6Jwafi" role="3uHU7B">
                <node concept="2OqwBi" id="2AfSc6Jw86m" role="2Oq$k0">
                  <node concept="3A2sRY" id="2AfSc6Jw7TR" role="2Oq$k0">
                    <ref role="3A2yKK" node="2AfSc6Jw7Tu" resolve="ae" />
                  </node>
                  <node concept="3Tsc0h" id="2AfSc6Jw8rt" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="2AfSc6JwdBm" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H13m" role="1nK1Vg">
      <property role="TrG5h" value="and_elim2" />
      <node concept="3clFbS" id="6$MtiK8H13n" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H13o" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H13p" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwamh" role="0UC6o">
              <node concept="3NuqgR" id="2AfSc6Jw_T4" role="0eVf_">
                <node concept="aZer4" id="2AfSc6Jw_T5" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="2AfSc6Jw_T6" role="3XD1gS">
                  <property role="TrG5h" value="Prem" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2AfSc6Jw_S_" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2AfSc6Jw_SA" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6Jw_SB" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6Jw_SC" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="a7P8L" id="2AfSc6Jw_SD" role="3AunhB">
                      <ref role="a7OzE" node="2AfSc6Jw_T5" resolve="Con" />
                    </node>
                    <node concept="3BlFb$" id="2AfSc6Jw_SE" role="3AunhB">
                      <node concept="3A2sRY" id="2AfSc6Jw_SF" role="3BlFb_">
                        <ref role="3A2yKK" node="2AfSc6Jw_Tk" resolve="ae" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2AfSc6Jw_SG" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6Jw_SH" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIR8" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJf9" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ80" resolve="And" />
                        <node concept="nsMwS" id="7VBaGntKJfa" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ82" resolve="conjuncts" />
                          <node concept="1oi1Uc" id="2AfSc6Jw_SP" role="nsMwV">
                            <node concept="KCUsM" id="2AfSc6Jw_SQ" role="1oi0x0">
                              <node concept="2IllgU" id="2AfSc6Jw_SV" role="KCVpo" />
                              <node concept="1oi5UN" id="2AfSc6Jw_SR" role="KCVpo">
                                <node concept="22Ky0T" id="2AfSc6Jw_SS" role="lGtFl">
                                  <node concept="1nq8_$" id="2AfSc6Jw_ST" role="22Ky0K">
                                    <node concept="a7P8L" id="2AfSc6JwRND" role="1nq8_t">
                                      <ref role="a7OzE" node="2AfSc6Jw_T5" resolve="Con" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="2AfSc6Jw_SJ" role="1uarlU">
                        <ref role="a7OzE" node="2AfSc6Jw_T6" resolve="Prem" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="2AfSc6Jw_SW" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6Jw_SX" role="3BlFb_">
                        <node concept="2OqwBi" id="2AfSc6Jw_SY" role="2Oq$k0">
                          <node concept="2OqwBi" id="2AfSc6Jw_SZ" role="2Oq$k0">
                            <node concept="3A2sRY" id="2AfSc6Jw_T0" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6Jw_Tk" resolve="ae" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6Jw_T1" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                          <node concept="1uHKPH" id="2AfSc6Jw_T2" role="2OqNvi" />
                        </node>
                        <node concept="3TrEf2" id="2AfSc6Jw_T3" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2AfSc6Jw_T7" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2AfSc6Jw_T8" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6Jw_Sr" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6Jw_Ss" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6Jw_St" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6Jw_Su" role="3BlFb_">
                        <node concept="2OqwBi" id="2AfSc6Jw_Sv" role="2Oq$k0">
                          <node concept="2OqwBi" id="2AfSc6Jw_Sw" role="2Oq$k0">
                            <node concept="3A2sRY" id="2AfSc6Jw_Sx" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6Jw_Tk" resolve="ae" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6Jw_Sy" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                          <node concept="1uHKPH" id="2AfSc6Jw_Sz" role="2OqNvi" />
                        </node>
                        <node concept="3TrEf2" id="2AfSc6Jw_S$" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2AfSc6Jw_Sp" role="1nLNMd">
              <node concept="3I6sU6" id="2AfSc6Jw_Sq" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6Jw_T9" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6Jw_Ta" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6Jw_Tb" role="3AunhB">
                      <node concept="3A2sRY" id="2AfSc6Jx8YA" role="3BlFb_">
                        <ref role="3A2yKK" node="2AfSc6Jw_Tk" resolve="ae" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2AfSc6Jw_Tj" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3UTz" resolve="AndElim" />
        <node concept="3A20r5" id="2AfSc6Jw_Tk" role="2t_VXX">
          <property role="TrG5h" value="ae" />
        </node>
      </node>
      <node concept="cBwPQ" id="2AfSc6Jw_Tl" role="1nLFYo">
        <node concept="3clFbS" id="2AfSc6Jw_Tm" role="16YjZG">
          <node concept="3clFbF" id="2AfSc6Jw_Tn" role="3cqZAp">
            <node concept="3clFbC" id="2AfSc6Jw_To" role="3clFbG">
              <node concept="3cmrfG" id="2AfSc6Jw_Tp" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="2AfSc6Jw_Tq" role="3uHU7B">
                <node concept="2OqwBi" id="2AfSc6Jw_Tr" role="2Oq$k0">
                  <node concept="3A2sRY" id="2AfSc6Jw_Ts" role="2Oq$k0">
                    <ref role="3A2yKK" node="2AfSc6Jw_Tk" resolve="ae" />
                  </node>
                  <node concept="3Tsc0h" id="2AfSc6Jw_Tt" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="2AfSc6Jw_Tu" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H13q" role="1nK1Vg">
      <property role="TrG5h" value="orIntro_valid1" />
      <node concept="3clFbS" id="6$MtiK8H13r" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H13s" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H13t" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwami" role="0UC6o">
              <node concept="3NuqgR" id="2aBGSFgfwOw" role="0eVf_">
                <node concept="aZer4" id="2aBGSFgfFks" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="2aBGSFgfwOx" role="3XD1gS">
                  <property role="TrG5h" value="Prem" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2aBGSFgfwOr" role="1nLNMb">
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
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
                    <node concept="1HFMs5" id="7VBaGntKIRj" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJer" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ83" resolve="Or" />
                        <node concept="nsMwS" id="7VBaGntKJes" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ85" resolve="disjuncts" />
                          <node concept="1oi1Uc" id="2YqrT$P4bbQ" role="nsMwV">
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
                      <node concept="a7P8L" id="2YqrT$P3gAX" role="1uarlU">
                        <ref role="a7OzE" node="2aBGSFgfFks" resolve="Con" />
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
            </node>
            <node concept="3Aq93q" id="2YqrT$P6wDP" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2YqrT$P6wDQ" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7tzb" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7tz9" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2YqrT$P7tLP" role="3AunhB">
                      <node concept="2OqwBi" id="2YqrT$P7tLQ" role="3BlFb_">
                        <node concept="2OqwBi" id="2YqrT$P7tLR" role="2Oq$k0">
                          <node concept="2OqwBi" id="2YqrT$P7tLS" role="2Oq$k0">
                            <node concept="3A2sRY" id="2YqrT$P7tLT" role="2Oq$k0">
                              <ref role="3A2yKK" node="2aBGSFgfrJt" resolve="oi" />
                            </node>
                            <node concept="3Tsc0h" id="2YqrT$P7tLU" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
            <node concept="3Aq9E8" id="2aBGSFgfrJu" role="1nLNMd">
              <node concept="3I6sU6" id="2aBGSFgfrJv" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7tYK" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7tYI" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2YqrT$P7tYU" role="3AunhB">
                      <node concept="3A2sRY" id="2YqrT$P7tZ3" role="3BlFb_">
                        <ref role="3A2yKK" node="2aBGSFgfrJt" resolve="oi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2aBGSFgfrJs" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3UT$" resolve="OrIntro" />
        <node concept="3A20r5" id="2aBGSFgfrJt" role="2t_VXX">
          <property role="TrG5h" value="oi" />
        </node>
      </node>
      <node concept="cBwPQ" id="2aBGSFgfwOB" role="1nLFYo">
        <node concept="3clFbS" id="2aBGSFgfwOC" role="16YjZG">
          <node concept="3clFbF" id="2aBGSFgfwOP" role="3cqZAp">
            <node concept="2OqwBi" id="2aBGSFgfzbc" role="3clFbG">
              <node concept="2OqwBi" id="2aBGSFgfx0y" role="2Oq$k0">
                <node concept="3A2sRY" id="2aBGSFgfwOO" role="2Oq$k0">
                  <ref role="3A2yKK" node="2aBGSFgfrJt" resolve="oi" />
                </node>
                <node concept="3Tsc0h" id="2aBGSFgfxmA" role="2OqNvi">
                  <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                </node>
              </node>
              <node concept="3GX2aA" id="2aBGSFgfAzm" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H13u" role="1nK1Vg">
      <property role="TrG5h" value="orIntro_valid2" />
      <node concept="3clFbS" id="6$MtiK8H13v" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H13w" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H13x" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwamd" role="0UC6o">
              <node concept="3NuqgR" id="2aBGSFgfGfQ" role="0eVf_">
                <node concept="aZer4" id="2aBGSFgfGfR" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="2aBGSFgfGfS" role="3XD1gS">
                  <property role="TrG5h" value="Prem" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2aBGSFgfGfp" role="1nLNMb">
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
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
                    <node concept="1HFMs5" id="7VBaGntKIRl" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJdV" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ83" resolve="Or" />
                        <node concept="nsMwS" id="7VBaGntKJdW" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ85" resolve="disjuncts" />
                          <node concept="1oi1Uc" id="2YqrT$P4hvt" role="nsMwV">
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
                      <node concept="a7P8L" id="2aBGSFgfGfB" role="1uarlU">
                        <ref role="a7OzE" node="2aBGSFgfGfR" resolve="Con" />
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
            </node>
            <node concept="3Aq93q" id="2YqrT$P6AUH" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2YqrT$P6AUI" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7u6l" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7u6j" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2YqrT$P7u6_" role="3AunhB">
                      <node concept="2OqwBi" id="2YqrT$P7u6A" role="3BlFb_">
                        <node concept="2OqwBi" id="2YqrT$P7u6B" role="2Oq$k0">
                          <node concept="2OqwBi" id="2YqrT$P7u6C" role="2Oq$k0">
                            <node concept="3A2sRY" id="2YqrT$P7u6D" role="2Oq$k0">
                              <ref role="3A2yKK" node="2aBGSFgfGfU" resolve="oi" />
                            </node>
                            <node concept="3Tsc0h" id="2YqrT$P7u6E" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
            <node concept="3Aq9E8" id="2aBGSFgfGfV" role="1nLNMd">
              <node concept="3I6sU6" id="2aBGSFgfGfW" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7umf" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7umd" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2YqrT$P7ump" role="3AunhB">
                      <node concept="3A2sRY" id="2YqrT$P7umy" role="3BlFb_">
                        <ref role="3A2yKK" node="2aBGSFgfGfU" resolve="oi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2aBGSFgfGfT" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3UT$" resolve="OrIntro" />
        <node concept="3A20r5" id="2aBGSFgfGfU" role="2t_VXX">
          <property role="TrG5h" value="oi" />
        </node>
      </node>
      <node concept="cBwPQ" id="2aBGSFgfGg9" role="1nLFYo">
        <node concept="3clFbS" id="2aBGSFgfGga" role="16YjZG">
          <node concept="3clFbF" id="2aBGSFgfGgb" role="3cqZAp">
            <node concept="2OqwBi" id="2aBGSFgfGgc" role="3clFbG">
              <node concept="2OqwBi" id="2aBGSFgfGgd" role="2Oq$k0">
                <node concept="3A2sRY" id="2aBGSFgfGge" role="2Oq$k0">
                  <ref role="3A2yKK" node="2aBGSFgfGfU" resolve="oi" />
                </node>
                <node concept="3Tsc0h" id="2aBGSFgfGgf" role="2OqNvi">
                  <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                </node>
              </node>
              <node concept="3GX2aA" id="2aBGSFgfGgg" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H13y" role="1nK1Vg">
      <property role="TrG5h" value="orElim_valid1" />
      <node concept="3clFbS" id="6$MtiK8H13z" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H13$" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H13_" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwamj" role="0UC6o">
              <node concept="3NuqgR" id="2AfSc6JyU4Q" role="0eVf_">
                <node concept="aZer4" id="2AfSc6JyU4R" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="3l440nVo6AP" role="3XD1gS">
                  <property role="TrG5h" value="PremOr" />
                </node>
                <node concept="aZer4" id="3l440nVnmQi" role="3XD1gS">
                  <property role="TrG5h" value="Disj1" />
                </node>
                <node concept="aZer4" id="3l440nVnmVa" role="3XD1gS">
                  <property role="TrG5h" value="Disj2" />
                </node>
                <node concept="aZer4" id="2AfSc6JyU68" role="3XD1gS">
                  <property role="TrG5h" value="PremIf1" />
                </node>
                <node concept="aZer4" id="2AfSc6JyU6p" role="3XD1gS">
                  <property role="TrG5h" value="PremIf2" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2AfSc6JyU4L" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2AfSc6JyU4M" role="3Ip0Jz">
                <node concept="3I6s7M" id="3l440nVo6JR" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVo6JP" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="a7P8L" id="3l440nVo6L6" role="3AunhB">
                      <ref role="a7OzE" node="2AfSc6JyU4R" resolve="Con" />
                    </node>
                    <node concept="3BlFb$" id="3l440nVo6Lc" role="3AunhB">
                      <node concept="3A2sRY" id="3l440nVo6Lm" role="3BlFb_">
                        <ref role="3A2yKK" node="2AfSc6JyL1U" resolve="oe" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2AfSc6JyU60" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JyU5Y" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIQV" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJeo" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                        <node concept="nsMwS" id="7VBaGntKJep" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                          <node concept="1nq8_$" id="3l440nVnr0E" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVnr0D" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVnmQi" resolve="Disj1" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJeq" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                          <node concept="1nq8_$" id="2AfSc6JyU7k" role="nsMwV">
                            <node concept="a7P8L" id="2AfSc6JyU7j" role="1nq8_t">
                              <ref role="a7OzE" node="2AfSc6JyU4R" resolve="Con" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="2AfSc6JyU6K" role="1uarlU">
                        <ref role="a7OzE" node="2AfSc6JyU68" resolve="PremIf1" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="2AfSc6JyU9H" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6JyYRZ" role="3BlFb_">
                        <node concept="1y4W85" id="2AfSc6JyYmm" role="2Oq$k0">
                          <node concept="3cmrfG" id="2AfSc6JyYFq" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="2AfSc6JyUke" role="1y566C">
                            <node concept="3A2sRY" id="2AfSc6JyU9Z" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6JyL1U" resolve="oe" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6JyUU7" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2AfSc6JyZwS" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2AfSc6JyZyL" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JyZyM" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIRe" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJfg" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                        <node concept="nsMwS" id="7VBaGntKJfh" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                          <node concept="1nq8_$" id="3l440nVnrk5" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVnrk4" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVnmVa" resolve="Disj2" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJfi" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                          <node concept="1nq8_$" id="3l440nVnrhp" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVnrsh" role="1nq8_t">
                              <ref role="a7OzE" node="2AfSc6JyU4R" resolve="Con" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="2AfSc6JyZEQ" role="1uarlU">
                        <ref role="a7OzE" node="2AfSc6JyU6p" resolve="PremIf2" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="2AfSc6JyZyW" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6JyZyX" role="3BlFb_">
                        <node concept="1y4W85" id="2AfSc6JyZyY" role="2Oq$k0">
                          <node concept="3cmrfG" id="2AfSc6JyZyZ" role="1y58nS">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="2AfSc6JyZz0" role="1y566C">
                            <node concept="3A2sRY" id="2AfSc6JyZz1" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6JyL1U" resolve="oe" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6JyZz2" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2AfSc6JyZz3" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2AfSc6JyU51" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JyU50" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIR6" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJf7" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ83" resolve="Or" />
                        <node concept="nsMwS" id="7VBaGntKJf8" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ85" resolve="disjuncts" />
                          <node concept="1oi1Uc" id="3l440nVnqu3" role="nsMwV">
                            <node concept="KCUsM" id="3l440nVnqx4" role="1oi0x0">
                              <node concept="1oi5UN" id="3l440nVnq_h" role="KCVpo">
                                <node concept="22Ky0T" id="3l440nVnqI3" role="lGtFl">
                                  <node concept="1nq8_$" id="3l440nVnqI6" role="22Ky0K">
                                    <node concept="a7P8L" id="3l440nVnqI5" role="1nq8_t">
                                      <ref role="a7OzE" node="3l440nVnmQi" resolve="Disj1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1oi5UN" id="3l440nVnqMt" role="KCVpo">
                                <node concept="22Ky0T" id="3l440nVnqVk" role="lGtFl">
                                  <node concept="1nq8_$" id="3l440nVnqVv" role="22Ky0K">
                                    <node concept="a7P8L" id="3l440nVnqVu" role="1nq8_t">
                                      <ref role="a7OzE" node="3l440nVnmVa" resolve="Disj2" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="3l440nVo7jh" role="1uarlU">
                        <ref role="a7OzE" node="3l440nVo6AP" resolve="PremOr" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="3l440nVoap9" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVoapa" role="3BlFb_">
                        <node concept="1y4W85" id="3l440nVoapb" role="2Oq$k0">
                          <node concept="3cmrfG" id="3l440nVoapc" role="1y58nS">
                            <property role="3cmrfH" value="2" />
                          </node>
                          <node concept="2OqwBi" id="3l440nVoapd" role="1y566C">
                            <node concept="3A2sRY" id="3l440nVoape" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6JyL1U" resolve="oe" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVoapf" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3l440nVoapg" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2AfSc6JyZJE" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2AfSc6JyZJF" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6JyZKw" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JyZKv" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6JyZK_" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVq13H" role="3BlFb_">
                        <node concept="1y4W85" id="2AfSc6Jz2r4" role="2Oq$k0">
                          <node concept="3cmrfG" id="2AfSc6Jz2MR" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="2AfSc6JyZUX" role="1y566C">
                            <node concept="3A2sRY" id="2AfSc6JyZKI" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6JyL1U" resolve="oe" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6Jz0OS" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3l440nVq1KG" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2AfSc6Jz2RE" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6Jz2RF" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6Jz2RG" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVq1Tm" role="3BlFb_">
                        <node concept="1y4W85" id="2AfSc6Jz2RH" role="2Oq$k0">
                          <node concept="3cmrfG" id="2AfSc6Jz2RI" role="1y58nS">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="2AfSc6Jz2RJ" role="1y566C">
                            <node concept="3A2sRY" id="2AfSc6Jz2RK" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6JyL1U" resolve="oe" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6Jz2RL" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3l440nVq2Am" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="3l440nVouxh" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVouxi" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="3l440nVouxj" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVq2J0" role="3BlFb_">
                        <node concept="1y4W85" id="3l440nVouxk" role="2Oq$k0">
                          <node concept="3cmrfG" id="3l440nVouxl" role="1y58nS">
                            <property role="3cmrfH" value="2" />
                          </node>
                          <node concept="2OqwBi" id="3l440nVouxm" role="1y566C">
                            <node concept="3A2sRY" id="3l440nVouxn" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6JyL1U" resolve="oe" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVouxo" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3l440nVq36r" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2AfSc6Jz2XS" role="1nLNMd">
              <node concept="3I6sU6" id="2AfSc6Jz2XT" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6Jz2XX" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6Jz2XW" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6Jz2Y2" role="3AunhB">
                      <node concept="3A2sRY" id="2AfSc6Jz2Yb" role="3BlFb_">
                        <ref role="3A2yKK" node="2AfSc6JyL1U" resolve="oe" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2AfSc6JyL1T" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3UT_" resolve="OrElim" />
        <node concept="3A20r5" id="2AfSc6JyL1U" role="2t_VXX">
          <property role="TrG5h" value="oe" />
        </node>
      </node>
      <node concept="cBwPQ" id="2AfSc6JyL26" role="1nLFYo">
        <node concept="3clFbS" id="2AfSc6JyL27" role="16YjZG">
          <node concept="3clFbF" id="2AfSc6JyL2k" role="3cqZAp">
            <node concept="3clFbC" id="2AfSc6JyTs0" role="3clFbG">
              <node concept="2OqwBi" id="2AfSc6JyNFw" role="3uHU7B">
                <node concept="2OqwBi" id="2AfSc6JyLeM" role="2Oq$k0">
                  <node concept="3A2sRY" id="2AfSc6JyL2j" role="2Oq$k0">
                    <ref role="3A2yKK" node="2AfSc6JyL1U" resolve="oe" />
                  </node>
                  <node concept="3Tsc0h" id="2AfSc6JyLPc" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="2AfSc6JyR09" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="2AfSc6JyTK_" role="3uHU7w">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H13A" role="1nK1Vg">
      <property role="TrG5h" value="orElim_valid2" />
      <node concept="3clFbS" id="6$MtiK8H13B" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H13C" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H13D" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwam7" role="0UC6o">
              <node concept="3NuqgR" id="3l440nVo7Ti" role="0eVf_">
                <node concept="aZer4" id="3l440nVo7Tj" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="3l440nVo7Tk" role="3XD1gS">
                  <property role="TrG5h" value="PremOr" />
                </node>
                <node concept="aZer4" id="3l440nVo7Tl" role="3XD1gS">
                  <property role="TrG5h" value="Disj1" />
                </node>
                <node concept="aZer4" id="3l440nVo7Tm" role="3XD1gS">
                  <property role="TrG5h" value="Disj2" />
                </node>
                <node concept="aZer4" id="3l440nVo7Tn" role="3XD1gS">
                  <property role="TrG5h" value="PremIf1" />
                </node>
                <node concept="aZer4" id="3l440nVo7To" role="3XD1gS">
                  <property role="TrG5h" value="PremIf2" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="3l440nVo7S4" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="3l440nVo7S5" role="3Ip0Jz">
                <node concept="3I6s7M" id="3l440nVo7S6" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVo7S7" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="a7P8L" id="3l440nVo7S8" role="3AunhB">
                      <ref role="a7OzE" node="3l440nVo7Tj" resolve="Con" />
                    </node>
                    <node concept="3BlFb$" id="3l440nVo7S9" role="3AunhB">
                      <node concept="3A2sRY" id="3l440nVo7Sa" role="3BlFb_">
                        <ref role="3A2yKK" node="3l440nVo7TG" resolve="oe" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="3l440nVo7Sw" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVo7Sx" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIR5" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJeV" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                        <node concept="nsMwS" id="7VBaGntKJeW" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                          <node concept="1nq8_$" id="3l440nVo7SD" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVo7SE" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVo7Tl" resolve="Disj1" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJeX" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                          <node concept="1nq8_$" id="3l440nVo7SJ" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVo7SK" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVo7Tj" resolve="Con" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="3l440nVo7Sz" role="1uarlU">
                        <ref role="a7OzE" node="3l440nVo7Tn" resolve="PremIf1" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="3l440nVo7SL" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVo7SM" role="3BlFb_">
                        <node concept="1y4W85" id="3l440nVo7SN" role="2Oq$k0">
                          <node concept="3cmrfG" id="3l440nVo7SO" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="3l440nVo7SP" role="1y566C">
                            <node concept="3A2sRY" id="3l440nVo7SQ" role="2Oq$k0">
                              <ref role="3A2yKK" node="3l440nVo7TG" resolve="oe" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVo7SR" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3l440nVo7SS" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="3l440nVo7ST" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVo7SU" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIQX" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJe4" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                        <node concept="nsMwS" id="7VBaGntKJe5" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                          <node concept="1nq8_$" id="3l440nVo7T2" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVo7T3" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVo7Tm" resolve="Disj2" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJe6" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                          <node concept="1nq8_$" id="3l440nVo7T8" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVo7T9" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVo7Tj" resolve="Con" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="3l440nVo7SW" role="1uarlU">
                        <ref role="a7OzE" node="3l440nVo7To" resolve="PremIf2" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="3l440nVo7Ta" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVo7Tb" role="3BlFb_">
                        <node concept="1y4W85" id="3l440nVo7Tc" role="2Oq$k0">
                          <node concept="3cmrfG" id="3l440nVo7Td" role="1y58nS">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="3l440nVo7Te" role="1y566C">
                            <node concept="3A2sRY" id="3l440nVo7Tf" role="2Oq$k0">
                              <ref role="3A2yKK" node="3l440nVo7TG" resolve="oe" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVo7Tg" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3l440nVo7Th" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="3l440nVo7Sb" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVo7Sc" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIR2" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJfm" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ83" resolve="Or" />
                        <node concept="nsMwS" id="7VBaGntKJfn" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ85" resolve="disjuncts" />
                          <node concept="1oi1Uc" id="3l440nVo7Sk" role="nsMwV">
                            <node concept="KCUsM" id="3l440nVo7Sl" role="1oi0x0">
                              <node concept="1oi5UN" id="3l440nVo7Sm" role="KCVpo">
                                <node concept="22Ky0T" id="3l440nVo7Sn" role="lGtFl">
                                  <node concept="1nq8_$" id="3l440nVo7So" role="22Ky0K">
                                    <node concept="a7P8L" id="3l440nVo8On" role="1nq8_t">
                                      <ref role="a7OzE" node="3l440nVo7Tm" resolve="Disj2" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1oi5UN" id="3l440nVo7Sq" role="KCVpo">
                                <node concept="22Ky0T" id="3l440nVo7Sr" role="lGtFl">
                                  <node concept="1nq8_$" id="3l440nVo7Ss" role="22Ky0K">
                                    <node concept="a7P8L" id="3l440nVo8QT" role="1nq8_t">
                                      <ref role="a7OzE" node="3l440nVo7Tl" resolve="Disj1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="3l440nVo7Se" role="1uarlU">
                        <ref role="a7OzE" node="3l440nVo7Tk" resolve="PremOr" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="3l440nVo8TM" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVo8TN" role="3BlFb_">
                        <node concept="1y4W85" id="3l440nVo8TO" role="2Oq$k0">
                          <node concept="3cmrfG" id="3l440nVo8TP" role="1y58nS">
                            <property role="3cmrfH" value="2" />
                          </node>
                          <node concept="2OqwBi" id="3l440nVo8TQ" role="1y566C">
                            <node concept="3A2sRY" id="3l440nVo8TR" role="2Oq$k0">
                              <ref role="3A2yKK" node="3l440nVo7TG" resolve="oe" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVo8TS" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3l440nVo8TT" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="3l440nVo7Tp" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="3l440nVo7Tq" role="3Ip0Jz">
                <node concept="3I6s7M" id="3l440nVo7Tr" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVo7Ts" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="3l440nVo7Tt" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVq3z3" role="3BlFb_">
                        <node concept="1y4W85" id="3l440nVo7Tu" role="2Oq$k0">
                          <node concept="3cmrfG" id="3l440nVo7Tv" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="3l440nVo7Tw" role="1y566C">
                            <node concept="3A2sRY" id="3l440nVo7Tx" role="2Oq$k0">
                              <ref role="3A2yKK" node="3l440nVo7TG" resolve="oe" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVo7Ty" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3l440nVq3Uq" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="3l440nVo7Tz" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVo7T$" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="3l440nVo7T_" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVq4mY" role="3BlFb_">
                        <node concept="1y4W85" id="3l440nVo7TA" role="2Oq$k0">
                          <node concept="3cmrfG" id="3l440nVo7TB" role="1y58nS">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="3l440nVo7TC" role="1y566C">
                            <node concept="3A2sRY" id="3l440nVo7TD" role="2Oq$k0">
                              <ref role="3A2yKK" node="3l440nVo7TG" resolve="oe" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVo7TE" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3l440nVq4In" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="3l440nVouBj" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVouBk" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="3l440nVouBl" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVq5aX" role="3BlFb_">
                        <node concept="1y4W85" id="3l440nVouBm" role="2Oq$k0">
                          <node concept="3cmrfG" id="3l440nVouBn" role="1y58nS">
                            <property role="3cmrfH" value="2" />
                          </node>
                          <node concept="2OqwBi" id="3l440nVouBo" role="1y566C">
                            <node concept="3A2sRY" id="3l440nVouBp" role="2Oq$k0">
                              <ref role="3A2yKK" node="3l440nVo7TG" resolve="oe" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVouBq" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3l440nVq5yo" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="3l440nVo7RY" role="1nLNMd">
              <node concept="3I6sU6" id="3l440nVo7RZ" role="3Ip0Jz">
                <node concept="3I6s7M" id="3l440nVo7S0" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVo7S1" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="3l440nVo7S2" role="3AunhB">
                      <node concept="3A2sRY" id="3l440nVo7S3" role="3BlFb_">
                        <ref role="3A2yKK" node="3l440nVo7TG" resolve="oe" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="3l440nVo7TF" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3UT_" resolve="OrElim" />
        <node concept="3A20r5" id="3l440nVo7TG" role="2t_VXX">
          <property role="TrG5h" value="oe" />
        </node>
      </node>
      <node concept="cBwPQ" id="3l440nVo7TH" role="1nLFYo">
        <node concept="3clFbS" id="3l440nVo7TI" role="16YjZG">
          <node concept="3clFbF" id="3l440nVo7TJ" role="3cqZAp">
            <node concept="3clFbC" id="3l440nVo7TK" role="3clFbG">
              <node concept="2OqwBi" id="3l440nVo7TL" role="3uHU7B">
                <node concept="2OqwBi" id="3l440nVo7TM" role="2Oq$k0">
                  <node concept="3A2sRY" id="3l440nVo7TN" role="2Oq$k0">
                    <ref role="3A2yKK" node="3l440nVo7TG" resolve="oe" />
                  </node>
                  <node concept="3Tsc0h" id="3l440nVo7TO" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="3l440nVo7TP" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="3l440nVo7TQ" role="3uHU7w">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H13E" role="1nK1Vg">
      <property role="TrG5h" value="notIntro_valid1" />
      <node concept="3clFbS" id="6$MtiK8H13F" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H13G" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H13H" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwamb" role="0UC6o">
              <node concept="3NuqgR" id="2YqrT$P4CCj" role="0eVf_">
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
            <node concept="3Aq93q" id="2YqrT$P4CCe" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2YqrT$P4CCf" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P4D89" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P4D87" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIQY" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJe7" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ86" resolve="Not" />
                        <node concept="nsMwS" id="7VBaGntKJe8" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ88" resolve="target" />
                          <node concept="1nq8_$" id="2YqrT$P4Dek" role="nsMwV">
                            <node concept="a7P8L" id="2YqrT$P4Dej" role="1nq8_t">
                              <ref role="a7OzE" node="2YqrT$P4CCk" resolve="PremAtcd" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="2YqrT$P4D8v" role="1uarlU">
                        <ref role="a7OzE" node="2YqrT$P4D5$" resolve="Con" />
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
                    <node concept="ns1u0" id="7VBaGntKJel" role="3AunhB">
                      <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                      <node concept="nsMwS" id="7VBaGntKJem" role="ns1xD">
                        <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                        <node concept="1nq8_$" id="2YqrT$P4CDm" role="nsMwV">
                          <node concept="a7P8L" id="2YqrT$P4CDl" role="1nq8_t">
                            <ref role="a7OzE" node="2YqrT$P4CCk" resolve="PremAtcd" />
                          </node>
                        </node>
                      </node>
                      <node concept="nsMwS" id="7VBaGntKJen" role="ns1xD">
                        <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                        <node concept="1nq8_$" id="2YqrT$P4CLS" role="nsMwV">
                          <node concept="a7P8L" id="2YqrT$P4CLR" role="1nq8_t">
                            <ref role="a7OzE" node="2YqrT$P4CCw" resolve="PremCsq" />
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
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
                    <node concept="ns1u0" id="7VBaGntKJdP" role="3AunhB">
                      <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                      <node concept="nsMwS" id="7VBaGntKJdQ" role="ns1xD">
                        <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                        <node concept="1nq8_$" id="2YqrT$P4I0M" role="nsMwV">
                          <node concept="a7P8L" id="2YqrT$P4I0N" role="1nq8_t">
                            <ref role="a7OzE" node="2YqrT$P4CCk" resolve="PremAtcd" />
                          </node>
                        </node>
                      </node>
                      <node concept="nsMwS" id="7VBaGntKJdR" role="ns1xD">
                        <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                        <node concept="1nq8_$" id="2YqrT$P4If5" role="nsMwV">
                          <node concept="ns1u0" id="7VBaGntKJet" role="1nq8_t">
                            <ref role="ns1xF" node="7VBaGntKJ86" resolve="Not" />
                            <node concept="nsMwS" id="7VBaGntKJeu" role="ns1xD">
                              <ref role="nsMwP" node="7VBaGntKJ88" resolve="target" />
                              <node concept="1nq8_$" id="2YqrT$P4IjJ" role="nsMwV">
                                <node concept="a7P8L" id="2YqrT$P4IjI" role="1nq8_t">
                                  <ref role="a7OzE" node="2YqrT$P4CCw" resolve="PremCsq" />
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
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
            </node>
            <node concept="3Aq93q" id="2YqrT$P6B1z" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2YqrT$P6B1$" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7uwD" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7uwB" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
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
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
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
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
            <node concept="3Aq9E8" id="2YqrT$P4Kf$" role="1nLNMd">
              <node concept="3I6sU6" id="2YqrT$P4Kf_" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7veS" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7veQ" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2YqrT$P7vf2" role="3AunhB">
                      <node concept="3A2sRY" id="2YqrT$P7vfb" role="3BlFb_">
                        <ref role="3A2yKK" node="2YqrT$P4vEy" resolve="ni" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P4vEx" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3UTA" resolve="NotIntro" />
        <node concept="3A20r5" id="2YqrT$P4vEy" role="2t_VXX">
          <property role="TrG5h" value="ni" />
        </node>
      </node>
      <node concept="cBwPQ" id="2YqrT$P4vEI" role="1nLFYo">
        <node concept="3clFbS" id="2YqrT$P4vEJ" role="16YjZG">
          <node concept="3clFbF" id="2YqrT$P4vEW" role="3cqZAp">
            <node concept="3clFbC" id="2YqrT$P4BZP" role="3clFbG">
              <node concept="2OqwBi" id="2YqrT$P4yc6" role="3uHU7B">
                <node concept="2OqwBi" id="2YqrT$P4vQD" role="2Oq$k0">
                  <node concept="3A2sRY" id="2YqrT$P4vEV" role="2Oq$k0">
                    <ref role="3A2yKK" node="2YqrT$P4vEy" resolve="ni" />
                  </node>
                  <node concept="3Tsc0h" id="2YqrT$P4wpR" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
    <node concept="1nLNMY" id="6$MtiK8H13I" role="1nK1Vg">
      <property role="TrG5h" value="notIntro_valid2" />
      <node concept="3clFbS" id="6$MtiK8H13J" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H13K" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H13L" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwamn" role="0UC6o">
              <node concept="3NuqgR" id="2YqrT$P4Irv" role="0eVf_">
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
            <node concept="3Aq93q" id="2YqrT$P4Iqs" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2YqrT$P4Iqt" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P4Iqu" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P4Iqv" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIRd" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJex" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ86" resolve="Not" />
                        <node concept="nsMwS" id="7VBaGntKJey" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ88" resolve="target" />
                          <node concept="1nq8_$" id="2YqrT$P4IqB" role="nsMwV">
                            <node concept="a7P8L" id="2YqrT$P4IqC" role="1nq8_t">
                              <ref role="a7OzE" node="2YqrT$P4Irx" resolve="PremAtcd" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="2YqrT$P4Iqx" role="1uarlU">
                        <ref role="a7OzE" node="2YqrT$P4Irw" resolve="Con" />
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
                    <node concept="ns1u0" id="7VBaGntKJeY" role="3AunhB">
                      <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                      <node concept="nsMwS" id="7VBaGntKJeZ" role="ns1xD">
                        <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                        <node concept="1nq8_$" id="2YqrT$P4Ir9" role="nsMwV">
                          <node concept="a7P8L" id="2YqrT$P4Ira" role="1nq8_t">
                            <ref role="a7OzE" node="2YqrT$P4Irx" resolve="PremAtcd" />
                          </node>
                        </node>
                      </node>
                      <node concept="nsMwS" id="7VBaGntKJf0" role="ns1xD">
                        <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                        <node concept="1nq8_$" id="2YqrT$P4Irf" role="nsMwV">
                          <node concept="ns1u0" id="7VBaGntKJev" role="1nq8_t">
                            <ref role="ns1xF" node="7VBaGntKJ86" resolve="Not" />
                            <node concept="nsMwS" id="7VBaGntKJew" role="ns1xD">
                              <ref role="nsMwP" node="7VBaGntKJ88" resolve="target" />
                              <node concept="1nq8_$" id="2YqrT$P4Irl" role="nsMwV">
                                <node concept="a7P8L" id="2YqrT$P4Irm" role="1nq8_t">
                                  <ref role="a7OzE" node="2YqrT$P4Iry" resolve="PremCsq" />
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
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
                    <node concept="ns1u0" id="7VBaGntKJdZ" role="3AunhB">
                      <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                      <node concept="nsMwS" id="7VBaGntKJe0" role="ns1xD">
                        <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                        <node concept="1nq8_$" id="2YqrT$P4IqM" role="nsMwV">
                          <node concept="a7P8L" id="2YqrT$P4IqN" role="1nq8_t">
                            <ref role="a7OzE" node="2YqrT$P4Irx" resolve="PremAtcd" />
                          </node>
                        </node>
                      </node>
                      <node concept="nsMwS" id="7VBaGntKJe1" role="ns1xD">
                        <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                        <node concept="1nq8_$" id="2YqrT$P4IqS" role="nsMwV">
                          <node concept="a7P8L" id="2YqrT$P4IqT" role="1nq8_t">
                            <ref role="a7OzE" node="2YqrT$P4Iry" resolve="PremCsq" />
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
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
            </node>
            <node concept="3Aq93q" id="2YqrT$P6D$T" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2YqrT$P6D$U" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7whN" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7whO" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
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
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
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
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
            <node concept="3Aq9E8" id="2YqrT$P4Kmc" role="1nLNMd">
              <node concept="3I6sU6" id="2YqrT$P4Kmd" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7wLK" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7wLL" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2YqrT$P7wLM" role="3AunhB">
                      <node concept="3A2sRY" id="2YqrT$P7wLN" role="3BlFb_">
                        <ref role="3A2yKK" node="2YqrT$P4Ir$" resolve="ni" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P4Irz" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3UTA" resolve="NotIntro" />
        <node concept="3A20r5" id="2YqrT$P4Ir$" role="2t_VXX">
          <property role="TrG5h" value="ni" />
        </node>
      </node>
      <node concept="cBwPQ" id="2YqrT$P4Ir_" role="1nLFYo">
        <node concept="3clFbS" id="2YqrT$P4IrA" role="16YjZG">
          <node concept="3clFbF" id="2YqrT$P4IrB" role="3cqZAp">
            <node concept="3clFbC" id="2YqrT$P4IrC" role="3clFbG">
              <node concept="2OqwBi" id="2YqrT$P4IrD" role="3uHU7B">
                <node concept="2OqwBi" id="2YqrT$P4IrE" role="2Oq$k0">
                  <node concept="3A2sRY" id="2YqrT$P4IrF" role="2Oq$k0">
                    <ref role="3A2yKK" node="2YqrT$P4Ir$" resolve="ni" />
                  </node>
                  <node concept="3Tsc0h" id="2YqrT$P4IrG" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
    <node concept="1nLNMY" id="6$MtiK8H13M" role="1nK1Vg">
      <property role="TrG5h" value="notElim_valid" />
      <node concept="3clFbS" id="6$MtiK8H13N" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H13O" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H13P" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwam8" role="0UC6o">
              <node concept="3NuqgR" id="2YqrT$P4S08" role="0eVf_">
                <node concept="aZer4" id="2YqrT$P4S09" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="2YqrT$P54za" role="3XD1gS">
                  <property role="TrG5h" value="Prem" />
                </node>
              </node>
              <node concept="3NuqgR" id="2YqrT$P6DI_" role="0eVf_">
                <node concept="aZer4" id="2YqrT$P6DIA" role="3XD1gS">
                  <property role="TrG5h" value="OK" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2YqrT$P4S03" role="1nLNMb">
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
                    <node concept="1HFMs5" id="7VBaGntKIRn" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJdX" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ86" resolve="Not" />
                        <node concept="nsMwS" id="7VBaGntKJdY" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ88" resolve="target" />
                          <node concept="1nq8_$" id="2YqrT$P5jLb" role="nsMwV">
                            <node concept="ns1u0" id="7VBaGntKJf5" role="1nq8_t">
                              <ref role="ns1xF" node="7VBaGntKJ86" resolve="Not" />
                              <node concept="nsMwS" id="7VBaGntKJf6" role="ns1xD">
                                <ref role="nsMwP" node="7VBaGntKJ88" resolve="target" />
                                <node concept="1nq8_$" id="2YqrT$P5jNi" role="nsMwV">
                                  <node concept="a7P8L" id="2YqrT$P5rMC" role="1nq8_t">
                                    <ref role="a7OzE" node="2YqrT$P4S09" resolve="Con" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="2YqrT$P5jKa" role="1uarlU">
                        <ref role="a7OzE" node="2YqrT$P54za" resolve="Prem" />
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
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
            </node>
            <node concept="3Aq93q" id="2YqrT$P6DId" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2YqrT$P6DIe" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7xcP" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7xcN" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
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
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
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
            </node>
            <node concept="3Aq9E8" id="2YqrT$P5bzv" role="1nLNMd">
              <node concept="3I6sU6" id="2YqrT$P5bzw" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7xEH" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7xEF" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2YqrT$P7xEP" role="3AunhB">
                      <node concept="3A2sRY" id="2YqrT$P7xEQ" role="3BlFb_">
                        <ref role="3A2yKK" node="2YqrT$P4RZR" resolve="ne" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P4RZQ" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3ZJ8" resolve="NotElim" />
        <node concept="3A20r5" id="2YqrT$P4RZR" role="2t_VXX">
          <property role="TrG5h" value="ne" />
        </node>
      </node>
      <node concept="cBwPQ" id="2YqrT$P4SsJ" role="1nLFYo">
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
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="2YqrT$P51Mz" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H13Q" role="1nK1Vg">
      <property role="TrG5h" value="IfIntro_valid" />
      <node concept="3clFbS" id="6$MtiK8H13R" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H13S" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H13T" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwam4" role="0UC6o">
              <node concept="3NuqgR" id="2YqrT$P64rX" role="0eVf_">
                <node concept="aZer4" id="2YqrT$P64rY" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="2YqrT$P64s7" role="3XD1gS">
                  <property role="TrG5h" value="Atcd" />
                </node>
                <node concept="aZer4" id="2YqrT$P64tc" role="3XD1gS">
                  <property role="TrG5h" value="Csqt" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2YqrT$P64rS" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2YqrT$P64rT" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P64sh" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P64sg" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIRf" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJdM" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                        <node concept="nsMwS" id="7VBaGntKJdN" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                          <node concept="1nq8_$" id="2YqrT$P64tX" role="nsMwV">
                            <node concept="a7P8L" id="2YqrT$P64tW" role="1nq8_t">
                              <ref role="a7OzE" node="2YqrT$P64s7" resolve="Atcd" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJdO" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                          <node concept="1nq8_$" id="2YqrT$P64EJ" role="nsMwV">
                            <node concept="a7P8L" id="2YqrT$P64EI" role="1nq8_t">
                              <ref role="a7OzE" node="2YqrT$P64tc" resolve="Csqt" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="2YqrT$P64sk" role="1uarlU">
                        <ref role="a7OzE" node="2YqrT$P64rY" resolve="Con" />
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
                      <node concept="2OqwBi" id="2AfSc6JtVsh" role="3BlFb_">
                        <node concept="2OqwBi" id="2AfSc6JtTi8" role="2Oq$k0">
                          <node concept="1PxgMI" id="2AfSc6JtSDA" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="2AfSc6JtT2R" role="3oSUPX">
                              <ref role="cht4Q" to="jfgh:3JXBM6C3UQ$" resolve="SubProof" />
                            </node>
                            <node concept="2OqwBi" id="2AfSc6JtZ3i" role="1m5AlR">
                              <node concept="2OqwBi" id="2AfSc6JtQfH" role="2Oq$k0">
                                <node concept="2OqwBi" id="2YqrT$P64Z8" role="2Oq$k0">
                                  <node concept="3A2sRY" id="2YqrT$P64Pz" role="2Oq$k0">
                                    <ref role="3A2yKK" node="2YqrT$P5VJV" resolve="ifi" />
                                  </node>
                                  <node concept="3Tsc0h" id="2YqrT$P65MW" role="2OqNvi">
                                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                  </node>
                                </node>
                                <node concept="1uHKPH" id="2AfSc6JtSgH" role="2OqNvi" />
                              </node>
                              <node concept="3TrEf2" id="2AfSc6JtZAT" role="2OqNvi">
                                <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                              </node>
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="2AfSc6JtZQd" role="2OqNvi">
                            <ref role="3TtcxE" to="jfgh:3JXBM6C3UQ_" resolve="content" />
                          </node>
                        </node>
                        <node concept="1uHKPH" id="2AfSc6JtXiY" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2YqrT$P6dJG" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P6dJE" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="a7P8L" id="2YqrT$P6dKf" role="3AunhB">
                      <ref role="a7OzE" node="2YqrT$P64tc" resolve="Csqt" />
                    </node>
                    <node concept="3BlFb$" id="2AfSc6Ju0hA" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6Ju0hB" role="3BlFb_">
                        <node concept="2OqwBi" id="2AfSc6Ju0hC" role="2Oq$k0">
                          <node concept="1PxgMI" id="2AfSc6Ju0hD" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="2AfSc6Ju0hE" role="3oSUPX">
                              <ref role="cht4Q" to="jfgh:3JXBM6C3UQ$" resolve="SubProof" />
                            </node>
                            <node concept="2OqwBi" id="2AfSc6Ju0hF" role="1m5AlR">
                              <node concept="2OqwBi" id="2AfSc6Ju0hG" role="2Oq$k0">
                                <node concept="2OqwBi" id="2AfSc6Ju0hH" role="2Oq$k0">
                                  <node concept="3A2sRY" id="2AfSc6Ju0hI" role="2Oq$k0">
                                    <ref role="3A2yKK" node="2YqrT$P5VJV" resolve="ifi" />
                                  </node>
                                  <node concept="3Tsc0h" id="2AfSc6Ju0hJ" role="2OqNvi">
                                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                  </node>
                                </node>
                                <node concept="1uHKPH" id="2AfSc6Ju0hK" role="2OqNvi" />
                              </node>
                              <node concept="3TrEf2" id="2AfSc6Ju0hL" role="2OqNvi">
                                <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                              </node>
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="2AfSc6Ju0hM" role="2OqNvi">
                            <ref role="3TtcxE" to="jfgh:3JXBM6C3UQ_" resolve="content" />
                          </node>
                        </node>
                        <node concept="1yVyf7" id="2AfSc6Ju1Nf" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2YqrT$P6EGB" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2YqrT$P6EGC" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7y8i" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7y8j" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6Jug2v" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6Jug2w" role="3BlFb_">
                        <node concept="2OqwBi" id="2AfSc6Jug2x" role="2Oq$k0">
                          <node concept="1PxgMI" id="2AfSc6Jug2y" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="2AfSc6Jug2z" role="3oSUPX">
                              <ref role="cht4Q" to="jfgh:3JXBM6C3UQ$" resolve="SubProof" />
                            </node>
                            <node concept="2OqwBi" id="2AfSc6Jug2$" role="1m5AlR">
                              <node concept="2OqwBi" id="2AfSc6Jug2_" role="2Oq$k0">
                                <node concept="2OqwBi" id="2AfSc6Jug2A" role="2Oq$k0">
                                  <node concept="3A2sRY" id="2AfSc6Jug2B" role="2Oq$k0">
                                    <ref role="3A2yKK" node="2YqrT$P5VJV" resolve="ifi" />
                                  </node>
                                  <node concept="3Tsc0h" id="2AfSc6Jug2C" role="2OqNvi">
                                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                  </node>
                                </node>
                                <node concept="1uHKPH" id="2AfSc6Jug2D" role="2OqNvi" />
                              </node>
                              <node concept="3TrEf2" id="2AfSc6Jug2E" role="2OqNvi">
                                <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                              </node>
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="2AfSc6Jug2F" role="2OqNvi">
                            <ref role="3TtcxE" to="jfgh:3JXBM6C3UQ_" resolve="content" />
                          </node>
                        </node>
                        <node concept="1uHKPH" id="2AfSc6Jug2G" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2YqrT$P7y8s" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7y8t" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6Jug$$" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6Jug$_" role="3BlFb_">
                        <node concept="2OqwBi" id="2AfSc6Jug$A" role="2Oq$k0">
                          <node concept="1PxgMI" id="2AfSc6Jug$B" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="2AfSc6Jug$C" role="3oSUPX">
                              <ref role="cht4Q" to="jfgh:3JXBM6C3UQ$" resolve="SubProof" />
                            </node>
                            <node concept="2OqwBi" id="2AfSc6Jug$D" role="1m5AlR">
                              <node concept="2OqwBi" id="2AfSc6Jug$E" role="2Oq$k0">
                                <node concept="2OqwBi" id="2AfSc6Jug$F" role="2Oq$k0">
                                  <node concept="3A2sRY" id="2AfSc6Jug$G" role="2Oq$k0">
                                    <ref role="3A2yKK" node="2YqrT$P5VJV" resolve="ifi" />
                                  </node>
                                  <node concept="3Tsc0h" id="2AfSc6Jug$H" role="2OqNvi">
                                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                  </node>
                                </node>
                                <node concept="1uHKPH" id="2AfSc6Jug$I" role="2OqNvi" />
                              </node>
                              <node concept="3TrEf2" id="2AfSc6Jug$J" role="2OqNvi">
                                <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                              </node>
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="2AfSc6Jug$K" role="2OqNvi">
                            <ref role="3TtcxE" to="jfgh:3JXBM6C3UQ_" resolve="content" />
                          </node>
                        </node>
                        <node concept="1yVyf7" id="2AfSc6JuisV" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2YqrT$P6nCE" role="1nLNMd">
              <node concept="3I6sU6" id="2YqrT$P6nCF" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7zuH" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7zuF" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2YqrT$P7zuR" role="3AunhB">
                      <node concept="3A2sRY" id="2YqrT$P7zv0" role="3BlFb_">
                        <ref role="3A2yKK" node="2YqrT$P5VJV" resolve="ifi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P5VJL" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3ZJ9" resolve="IfIntro" />
        <node concept="3A20r5" id="2YqrT$P5VJV" role="2t_VXX">
          <property role="TrG5h" value="ifi" />
        </node>
      </node>
      <node concept="cBwPQ" id="2YqrT$P5VK7" role="1nLFYo">
        <node concept="3clFbS" id="2YqrT$P5VK8" role="16YjZG">
          <node concept="3clFbF" id="2YqrT$P5VKl" role="3cqZAp">
            <node concept="3clFbC" id="2YqrT$P647x" role="3clFbG">
              <node concept="3cmrfG" id="2YqrT$P647K" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="2YqrT$P5YjM" role="3uHU7B">
                <node concept="2OqwBi" id="2YqrT$P5VW2" role="2Oq$k0">
                  <node concept="3A2sRY" id="2YqrT$P5VKk" role="2Oq$k0">
                    <ref role="3A2yKK" node="2YqrT$P5VJV" resolve="ifi" />
                  </node>
                  <node concept="3Tsc0h" id="2YqrT$P5Wvg" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="2YqrT$P61FE" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H13U" role="1nK1Vg">
      <property role="TrG5h" value="IfIntro_valid_singular" />
      <node concept="3clFbS" id="6$MtiK8H13V" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H13W" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H13X" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwam6" role="0UC6o">
              <node concept="3NuqgR" id="2AfSc6JxXK2" role="0eVf_">
                <node concept="aZer4" id="2AfSc6JxXK3" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="2AfSc6JxXK4" role="3XD1gS">
                  <property role="TrG5h" value="Ass" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2AfSc6JxXJb" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2AfSc6JxXJc" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6JxXJd" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JxXJe" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIQW" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJeS" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                        <node concept="nsMwS" id="7VBaGntKJeT" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                          <node concept="1nq8_$" id="2AfSc6JxXJm" role="nsMwV">
                            <node concept="a7P8L" id="2AfSc6JxXJn" role="1nq8_t">
                              <ref role="a7OzE" node="2AfSc6JxXK4" resolve="Ass" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJeU" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                          <node concept="1nq8_$" id="2AfSc6JxXJs" role="nsMwV">
                            <node concept="a7P8L" id="2AfSc6JxYMg" role="1nq8_t">
                              <ref role="a7OzE" node="2AfSc6JxXK4" resolve="Ass" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="2AfSc6JxXJg" role="1uarlU">
                        <ref role="a7OzE" node="2AfSc6JxXK3" resolve="Con" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="2AfSc6JxXJu" role="3AunhB">
                      <node concept="3A2sRY" id="2AfSc6JxXJv" role="3BlFb_">
                        <ref role="3A2yKK" node="2AfSc6JxXKD" resolve="ifi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2AfSc6JxXJw" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JxXJx" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="a7P8L" id="2AfSc6JxXJy" role="3AunhB">
                      <ref role="a7OzE" node="2AfSc6JxXK4" resolve="Ass" />
                    </node>
                    <node concept="3BlFb$" id="2AfSc6JxXJz" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6JxXJ$" role="3BlFb_">
                        <node concept="2OqwBi" id="2AfSc6JxXJ_" role="2Oq$k0">
                          <node concept="1PxgMI" id="2AfSc6JxXJA" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="2AfSc6JxXJB" role="3oSUPX">
                              <ref role="cht4Q" to="jfgh:3JXBM6C3UQ$" resolve="SubProof" />
                            </node>
                            <node concept="2OqwBi" id="2AfSc6JxXJC" role="1m5AlR">
                              <node concept="2OqwBi" id="2AfSc6JxXJD" role="2Oq$k0">
                                <node concept="2OqwBi" id="2AfSc6JxXJE" role="2Oq$k0">
                                  <node concept="3A2sRY" id="2AfSc6JxXJF" role="2Oq$k0">
                                    <ref role="3A2yKK" node="2AfSc6JxXKD" resolve="ifi" />
                                  </node>
                                  <node concept="3Tsc0h" id="2AfSc6JxXJG" role="2OqNvi">
                                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                  </node>
                                </node>
                                <node concept="1uHKPH" id="2AfSc6JxXJH" role="2OqNvi" />
                              </node>
                              <node concept="3TrEf2" id="2AfSc6JxXJI" role="2OqNvi">
                                <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                              </node>
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="2AfSc6JxXJJ" role="2OqNvi">
                            <ref role="3TtcxE" to="jfgh:3JXBM6C3UQ_" resolve="content" />
                          </node>
                        </node>
                        <node concept="1uHKPH" id="2AfSc6JxXJK" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2AfSc6JxXK6" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2AfSc6JxXK7" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6JxXK8" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JxXK9" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6JxXKa" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6JxXKb" role="3BlFb_">
                        <node concept="2OqwBi" id="2AfSc6JxXKc" role="2Oq$k0">
                          <node concept="1PxgMI" id="2AfSc6JxXKd" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="2AfSc6JxXKe" role="3oSUPX">
                              <ref role="cht4Q" to="jfgh:3JXBM6C3UQ$" resolve="SubProof" />
                            </node>
                            <node concept="2OqwBi" id="2AfSc6JxXKf" role="1m5AlR">
                              <node concept="2OqwBi" id="2AfSc6JxXKg" role="2Oq$k0">
                                <node concept="2OqwBi" id="2AfSc6JxXKh" role="2Oq$k0">
                                  <node concept="3A2sRY" id="2AfSc6JxXKi" role="2Oq$k0">
                                    <ref role="3A2yKK" node="2AfSc6JxXKD" resolve="ifi" />
                                  </node>
                                  <node concept="3Tsc0h" id="2AfSc6JxXKj" role="2OqNvi">
                                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                  </node>
                                </node>
                                <node concept="1uHKPH" id="2AfSc6JxXKk" role="2OqNvi" />
                              </node>
                              <node concept="3TrEf2" id="2AfSc6JxXKl" role="2OqNvi">
                                <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                              </node>
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="2AfSc6JxXKm" role="2OqNvi">
                            <ref role="3TtcxE" to="jfgh:3JXBM6C3UQ_" resolve="content" />
                          </node>
                        </node>
                        <node concept="1uHKPH" id="2AfSc6JxXKn" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2AfSc6JxXJ5" role="1nLNMd">
              <node concept="3I6sU6" id="2AfSc6JxXJ6" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6JxXJ7" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JxXJ8" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6JxXJ9" role="3AunhB">
                      <node concept="3A2sRY" id="2AfSc6JxXJa" role="3BlFb_">
                        <ref role="3A2yKK" node="2AfSc6JxXKD" resolve="ifi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2AfSc6JxXKC" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3ZJ9" resolve="IfIntro" />
        <node concept="3A20r5" id="2AfSc6JxXKD" role="2t_VXX">
          <property role="TrG5h" value="ifi" />
        </node>
      </node>
      <node concept="cBwPQ" id="2AfSc6JxXKE" role="1nLFYo">
        <node concept="3clFbS" id="2AfSc6JxXKF" role="16YjZG">
          <node concept="3clFbF" id="2AfSc6JxXKG" role="3cqZAp">
            <node concept="1Wc70l" id="2AfSc6JxZ_j" role="3clFbG">
              <node concept="3clFbC" id="2AfSc6JxXKH" role="3uHU7B">
                <node concept="2OqwBi" id="2AfSc6JxXKJ" role="3uHU7B">
                  <node concept="2OqwBi" id="2AfSc6JxXKK" role="2Oq$k0">
                    <node concept="3A2sRY" id="2AfSc6JxXKL" role="2Oq$k0">
                      <ref role="3A2yKK" node="2AfSc6JxXKD" resolve="ifi" />
                    </node>
                    <node concept="3Tsc0h" id="2AfSc6JxXKM" role="2OqNvi">
                      <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="2AfSc6JxXKN" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="2AfSc6JxXKI" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="3clFbC" id="2AfSc6Jy7MK" role="3uHU7w">
                <node concept="3cmrfG" id="2AfSc6Jy7Nf" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="2AfSc6Jy1XD" role="3uHU7B">
                  <node concept="2OqwBi" id="2AfSc6Jy00n" role="2Oq$k0">
                    <node concept="1PxgMI" id="2AfSc6Jy00o" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="2AfSc6Jy00p" role="3oSUPX">
                        <ref role="cht4Q" to="jfgh:3JXBM6C3UQ$" resolve="SubProof" />
                      </node>
                      <node concept="2OqwBi" id="2AfSc6Jy00q" role="1m5AlR">
                        <node concept="2OqwBi" id="2AfSc6Jy00r" role="2Oq$k0">
                          <node concept="2OqwBi" id="2AfSc6Jy00s" role="2Oq$k0">
                            <node concept="3A2sRY" id="2AfSc6Jy00t" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6JxXKD" resolve="ifi" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6Jy00u" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                          <node concept="1uHKPH" id="2AfSc6Jy00v" role="2OqNvi" />
                        </node>
                        <node concept="3TrEf2" id="2AfSc6Jy00w" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="2AfSc6Jy00x" role="2OqNvi">
                      <ref role="3TtcxE" to="jfgh:3JXBM6C3UQ_" resolve="content" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="2AfSc6Jy5hT" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H13Y" role="1nK1Vg">
      <property role="TrG5h" value="IfElim_valid" />
      <node concept="3clFbS" id="6$MtiK8H13Z" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H140" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H141" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwam0" role="0UC6o">
              <node concept="3NuqgR" id="2AfSc6JuwUr" role="0eVf_">
                <node concept="aZer4" id="2AfSc6JuwUs" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="2AfSc6JuA9o" role="3XD1gS">
                  <property role="TrG5h" value="AtcdPrem" />
                </node>
                <node concept="aZer4" id="2AfSc6Juz0Q" role="3XD1gS">
                  <property role="TrG5h" value="IfPrem" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2AfSc6JuwT$" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2AfSc6JuwT_" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6JuwTA" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JuwTB" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="a7P8L" id="2AfSc6Juz0w" role="3AunhB">
                      <ref role="a7OzE" node="2AfSc6JuwUs" resolve="Con" />
                    </node>
                    <node concept="3BlFb$" id="2AfSc6JuwTR" role="3AunhB">
                      <node concept="3A2sRY" id="2AfSc6JuwTS" role="3BlFb_">
                        <ref role="3A2yKK" node="2AfSc6JuwV2" resolve="ife" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2AfSc6JuwTT" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JuwTU" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIRc" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJeD" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                        <node concept="nsMwS" id="7VBaGntKJeE" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                          <node concept="1nq8_$" id="2AfSc6JuArn" role="nsMwV">
                            <node concept="a7P8L" id="2AfSc6JuArm" role="1nq8_t">
                              <ref role="a7OzE" node="2AfSc6JuA9o" resolve="AtcdPrem" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJeF" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                          <node concept="1nq8_$" id="2AfSc6Juz2J" role="nsMwV">
                            <node concept="a7P8L" id="2AfSc6Juz2I" role="1nq8_t">
                              <ref role="a7OzE" node="2AfSc6JuwUs" resolve="Con" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="2AfSc6Juz1g" role="1uarlU">
                        <ref role="a7OzE" node="2AfSc6Juz0Q" resolve="IfPrem" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="2AfSc6JuwTW" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6JuwU1" role="3BlFb_">
                        <node concept="1y4W85" id="2AfSc6Ju_5S" role="2Oq$k0">
                          <node concept="3cmrfG" id="2AfSc6Ju__G" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="2AfSc6JuwU3" role="1y566C">
                            <node concept="3A2sRY" id="2AfSc6JuwU4" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6JuwV2" resolve="ife" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6JuwU5" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2AfSc6JuA60" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2AfSc6JuA8D" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JuA8B" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="a7P8L" id="2AfSc6JuAcf" role="3AunhB">
                      <ref role="a7OzE" node="2AfSc6JuA9o" resolve="AtcdPrem" />
                    </node>
                    <node concept="3BlFb$" id="2AfSc6JuAcn" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6JuAco" role="3BlFb_">
                        <node concept="1y4W85" id="2AfSc6JuAcp" role="2Oq$k0">
                          <node concept="3cmrfG" id="2AfSc6JuAcq" role="1y58nS">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="2AfSc6JuAcr" role="1y566C">
                            <node concept="3A2sRY" id="2AfSc6JuAcs" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6JuwV2" resolve="ife" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6JuAct" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2AfSc6JuAcu" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2AfSc6JuwUv" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2AfSc6JuwUw" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6JuwUx" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JuwUy" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6JuB1r" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6JuB1s" role="3BlFb_">
                        <node concept="1y4W85" id="2AfSc6JuB1t" role="2Oq$k0">
                          <node concept="3cmrfG" id="2AfSc6JuB1u" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="2AfSc6JuB1v" role="1y566C">
                            <node concept="3A2sRY" id="2AfSc6JuB1w" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6JuwV2" resolve="ife" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6JuB1x" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2AfSc6JuB1y" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2AfSc6JuwUL" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JuwUM" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6JuCPg" role="3AunhB">
                      <node concept="2OqwBi" id="2AfSc6JuCPh" role="3BlFb_">
                        <node concept="1y4W85" id="2AfSc6JuCPi" role="2Oq$k0">
                          <node concept="3cmrfG" id="2AfSc6JuCPj" role="1y58nS">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="2AfSc6JuCPk" role="1y566C">
                            <node concept="3A2sRY" id="2AfSc6JuCPl" role="2Oq$k0">
                              <ref role="3A2yKK" node="2AfSc6JuwV2" resolve="ife" />
                            </node>
                            <node concept="3Tsc0h" id="2AfSc6JuCPm" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2AfSc6JuCPn" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2AfSc6JuwTu" role="1nLNMd">
              <node concept="3I6sU6" id="2AfSc6JuwTv" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6JuwTw" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JuwTx" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2AfSc6JuwTy" role="3AunhB">
                      <node concept="3A2sRY" id="2AfSc6JuwTz" role="3BlFb_">
                        <ref role="3A2yKK" node="2AfSc6JuwV2" resolve="ife" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2AfSc6JuwV1" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3ZJm" resolve="IfElim" />
        <node concept="3A20r5" id="2AfSc6JuwV2" role="2t_VXX">
          <property role="TrG5h" value="ife" />
        </node>
      </node>
      <node concept="cBwPQ" id="2AfSc6JuwV3" role="1nLFYo">
        <node concept="3clFbS" id="2AfSc6JuwV4" role="16YjZG">
          <node concept="3clFbF" id="2AfSc6JuwV5" role="3cqZAp">
            <node concept="3clFbC" id="2AfSc6JuwV6" role="3clFbG">
              <node concept="3cmrfG" id="2AfSc6JuwV7" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="2OqwBi" id="2AfSc6JuwV8" role="3uHU7B">
                <node concept="2OqwBi" id="2AfSc6JuwV9" role="2Oq$k0">
                  <node concept="3A2sRY" id="2AfSc6JuwVa" role="2Oq$k0">
                    <ref role="3A2yKK" node="2AfSc6JuwV2" resolve="ife" />
                  </node>
                  <node concept="3Tsc0h" id="2AfSc6JuwVb" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="2AfSc6JuwVc" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H142" role="1nK1Vg">
      <property role="TrG5h" value="IffIntro_valid1" />
      <node concept="3clFbS" id="6$MtiK8H143" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H144" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H145" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwam2" role="0UC6o">
              <node concept="3NuqgR" id="3l440nVrMcf" role="0eVf_">
                <node concept="aZer4" id="3l440nVrMcg" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="3l440nVrMcp" role="3XD1gS">
                  <property role="TrG5h" value="Atcd" />
                </node>
                <node concept="aZer4" id="3l440nVrMcF" role="3XD1gS">
                  <property role="TrG5h" value="Csqt" />
                </node>
                <node concept="aZer4" id="3l440nVrMrr" role="3XD1gS">
                  <property role="TrG5h" value="Prem1" />
                </node>
                <node concept="aZer4" id="3l440nVrMuk" role="3XD1gS">
                  <property role="TrG5h" value="Prem2" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="3l440nVrMc4" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="3l440nVrMc5" role="3Ip0Jz">
                <node concept="3I6s7M" id="3l440nVrMr3" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVrMr1" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIRk" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJdS" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                        <node concept="nsMwS" id="7VBaGntKJdT" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                          <node concept="1nq8_$" id="3l440nVrMxP" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVrMxO" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVrMcp" resolve="Atcd" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJdU" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                          <node concept="1nq8_$" id="3l440nVrM$p" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVrM$o" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVrMcF" resolve="Csqt" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="3l440nVrMxh" role="1uarlU">
                        <ref role="a7OzE" node="3l440nVrMrr" resolve="Prem1" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="3l440nVrMHa" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVrPNo" role="3BlFb_">
                        <node concept="1y4W85" id="3l440nVrPkU" role="2Oq$k0">
                          <node concept="3cmrfG" id="3l440nVrPDO" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="3l440nVrMRQ" role="1y566C">
                            <node concept="3A2sRY" id="3l440nVrMHB" role="2Oq$k0">
                              <ref role="3A2yKK" node="3l440nVrA_8" resolve="iffi" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVrNIS" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3l440nVrQs7" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="3l440nVrQtW" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVrQtX" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIR9" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJdJ" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                        <node concept="nsMwS" id="7VBaGntKJdK" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                          <node concept="1nq8_$" id="3l440nVrQu5" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVsmqS" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVrMcF" resolve="Csqt" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJdL" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                          <node concept="1nq8_$" id="3l440nVrQub" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVsmEY" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVrMcp" resolve="Atcd" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="3l440nVrQAz" role="1uarlU">
                        <ref role="a7OzE" node="3l440nVrMuk" resolve="Prem2" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="3l440nVrQud" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVrQue" role="3BlFb_">
                        <node concept="1y4W85" id="3l440nVrQuf" role="2Oq$k0">
                          <node concept="3cmrfG" id="3l440nVrQug" role="1y58nS">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="3l440nVrQuh" role="1y566C">
                            <node concept="3A2sRY" id="3l440nVrQui" role="2Oq$k0">
                              <ref role="3A2yKK" node="3l440nVrA_8" resolve="iffi" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVrQuj" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3l440nVrQuk" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="3l440nVrMc9" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVrMc8" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIRi" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJec" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ8d" resolve="Iff" />
                        <node concept="nsMwS" id="7VBaGntKJed" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8f" resolve="antecedent" />
                          <node concept="1nq8_$" id="3l440nVrMgT" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVrMgS" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVrMcp" resolve="Atcd" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJee" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8g" resolve="consequence" />
                          <node concept="1nq8_$" id="3l440nVrMnH" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVrMnG" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVrMcF" resolve="Csqt" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="3l440nVrMgl" role="1uarlU">
                        <ref role="a7OzE" node="3l440nVrMcg" resolve="Con" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="3l440nVrMqc" role="3AunhB">
                      <node concept="3A2sRY" id="3l440nVrMq$" role="3BlFb_">
                        <ref role="3A2yKK" node="3l440nVrA_8" resolve="iffi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="3l440nVrUnb" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="3l440nVrUnc" role="3Ip0Jz">
                <node concept="3I6s7M" id="3l440nVrUnd" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVrUne" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="3l440nVrUnf" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVrUng" role="3BlFb_">
                        <node concept="1y4W85" id="3l440nVrUnh" role="2Oq$k0">
                          <node concept="3cmrfG" id="3l440nVrUni" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="3l440nVrUnj" role="1y566C">
                            <node concept="3A2sRY" id="3l440nVrUvu" role="2Oq$k0">
                              <ref role="3A2yKK" node="3l440nVrA_8" resolve="iffi" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVrUnl" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3l440nVrUnm" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="3l440nVrUnn" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVrUno" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="3l440nVrUnp" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVrUnq" role="3BlFb_">
                        <node concept="1y4W85" id="3l440nVrUnr" role="2Oq$k0">
                          <node concept="3cmrfG" id="3l440nVrUns" role="1y58nS">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="3l440nVrUnt" role="1y566C">
                            <node concept="3A2sRY" id="3l440nVrUUK" role="2Oq$k0">
                              <ref role="3A2yKK" node="3l440nVrA_8" resolve="iffi" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVrUnv" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3l440nVrUnw" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="3l440nVrXPm" role="1nLNMd">
              <node concept="3I6sU6" id="3l440nVrXPn" role="3Ip0Jz">
                <node concept="3I6s7M" id="3l440nVrXPo" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVrXPp" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="3l440nVrXPq" role="3AunhB">
                      <node concept="3A2sRY" id="3l440nVrXPB" role="3BlFb_">
                        <ref role="3A2yKK" node="3l440nVrA_8" resolve="iffi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="3l440nVrA_7" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3ZJn" resolve="IffIntro" />
        <node concept="3A20r5" id="3l440nVrA_8" role="2t_VXX">
          <property role="TrG5h" value="iffi" />
        </node>
      </node>
      <node concept="cBwPQ" id="3l440nVrA_t" role="1nLFYo">
        <node concept="3clFbS" id="3l440nVrA_u" role="16YjZG">
          <node concept="3clFbF" id="3l440nVrA_F" role="3cqZAp">
            <node concept="3clFbC" id="3l440nVrLwj" role="3clFbG">
              <node concept="3cmrfG" id="3l440nVrLOB" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="2OqwBi" id="3l440nVrDeI" role="3uHU7B">
                <node concept="2OqwBi" id="3l440nVrAMa" role="2Oq$k0">
                  <node concept="3A2sRY" id="3l440nVrA_E" role="2Oq$k0">
                    <ref role="3A2yKK" node="3l440nVrA_8" resolve="iffi" />
                  </node>
                  <node concept="3Tsc0h" id="3l440nVrBo$" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="3l440nVrG_c" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H146" role="1nK1Vg">
      <property role="TrG5h" value="IffIntro_valid2" />
      <node concept="3clFbS" id="6$MtiK8H147" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H148" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H149" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwam3" role="0UC6o">
              <node concept="3NuqgR" id="3l440nVrS8h" role="0eVf_">
                <node concept="aZer4" id="3l440nVrS8i" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="3l440nVrS8j" role="3XD1gS">
                  <property role="TrG5h" value="Atcd" />
                </node>
                <node concept="aZer4" id="3l440nVrS8k" role="3XD1gS">
                  <property role="TrG5h" value="Csqt" />
                </node>
                <node concept="aZer4" id="3l440nVrS8l" role="3XD1gS">
                  <property role="TrG5h" value="Prem1" />
                </node>
                <node concept="aZer4" id="3l440nVrS8m" role="3XD1gS">
                  <property role="TrG5h" value="Prem2" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="3l440nVrS7a" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="3l440nVrS7b" role="3Ip0Jz">
                <node concept="3I6s7M" id="3l440nVrS7c" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVrS7d" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIQZ" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJeJ" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                        <node concept="nsMwS" id="7VBaGntKJeK" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                          <node concept="1nq8_$" id="3l440nVrS7l" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVrS7m" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVrS8j" resolve="Atcd" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJeL" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                          <node concept="1nq8_$" id="3l440nVrS7r" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVrS7s" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVrS8k" resolve="Csqt" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="3l440nVrS7f" role="1uarlU">
                        <ref role="a7OzE" node="3l440nVrS8l" resolve="Prem1" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="3l440nVrS7t" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVrS7u" role="3BlFb_">
                        <node concept="1y4W85" id="3l440nVrS7v" role="2Oq$k0">
                          <node concept="3cmrfG" id="3l440nVrS7w" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="3l440nVrS7x" role="1y566C">
                            <node concept="3A2sRY" id="3l440nVrS7y" role="2Oq$k0">
                              <ref role="3A2yKK" node="3l440nVrS8o" resolve="iffi" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVrS7z" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3l440nVrS7$" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="3l440nVrS7_" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVrS7A" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIRa" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJe9" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                        <node concept="nsMwS" id="7VBaGntKJea" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                          <node concept="1nq8_$" id="3l440nVrS7I" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVsmO_" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVrS8k" resolve="Csqt" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJeb" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                          <node concept="1nq8_$" id="3l440nVrS7O" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVsmYc" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVrS8j" resolve="Atcd" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="3l440nVrS7C" role="1uarlU">
                        <ref role="a7OzE" node="3l440nVrS8m" resolve="Prem2" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="3l440nVrS7Q" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVrS7R" role="3BlFb_">
                        <node concept="1y4W85" id="3l440nVrS7S" role="2Oq$k0">
                          <node concept="3cmrfG" id="3l440nVrS7T" role="1y58nS">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="3l440nVrS7U" role="1y566C">
                            <node concept="3A2sRY" id="3l440nVrS7V" role="2Oq$k0">
                              <ref role="3A2yKK" node="3l440nVrS8o" resolve="iffi" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVrS7W" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3l440nVrS7X" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="3l440nVrS7Y" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVrS7Z" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIR3" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJfj" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ8d" resolve="Iff" />
                        <node concept="nsMwS" id="7VBaGntKJfk" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8f" resolve="antecedent" />
                          <node concept="1nq8_$" id="3l440nVrS87" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVrT6x" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVrS8k" resolve="Csqt" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJfl" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8g" resolve="consequence" />
                          <node concept="1nq8_$" id="3l440nVrS8d" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVrTfl" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVrS8j" resolve="Atcd" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="3l440nVrS81" role="1uarlU">
                        <ref role="a7OzE" node="3l440nVrS8i" resolve="Con" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="3l440nVrS8f" role="3AunhB">
                      <node concept="3A2sRY" id="3l440nVrS8g" role="3BlFb_">
                        <ref role="3A2yKK" node="3l440nVrS8o" resolve="iffi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="3l440nVrYGu" role="1nLNMd">
              <node concept="3I6sU6" id="3l440nVrYGv" role="3Ip0Jz">
                <node concept="3I6s7M" id="3l440nVrYGw" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVrYGx" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="3l440nVrYGy" role="3AunhB">
                      <node concept="3A2sRY" id="3l440nVrYGJ" role="3BlFb_">
                        <ref role="3A2yKK" node="3l440nVrS8o" resolve="iffi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="3l440nVrS8n" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3ZJn" resolve="IffIntro" />
        <node concept="3A20r5" id="3l440nVrS8o" role="2t_VXX">
          <property role="TrG5h" value="iffi" />
        </node>
      </node>
      <node concept="cBwPQ" id="3l440nVrS8p" role="1nLFYo">
        <node concept="3clFbS" id="3l440nVrS8q" role="16YjZG">
          <node concept="3clFbF" id="3l440nVrS8r" role="3cqZAp">
            <node concept="3clFbC" id="3l440nVrS8s" role="3clFbG">
              <node concept="3cmrfG" id="3l440nVrS8t" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="2OqwBi" id="3l440nVrS8u" role="3uHU7B">
                <node concept="2OqwBi" id="3l440nVrS8v" role="2Oq$k0">
                  <node concept="3A2sRY" id="3l440nVrS8w" role="2Oq$k0">
                    <ref role="3A2yKK" node="3l440nVrS8o" resolve="iffi" />
                  </node>
                  <node concept="3Tsc0h" id="3l440nVrS8x" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="3l440nVrS8y" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H14a" role="1nK1Vg">
      <property role="TrG5h" value="IffElim_valid1" />
      <node concept="3clFbS" id="6$MtiK8H14b" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H14c" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H14d" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwame" role="0UC6o">
              <node concept="3NuqgR" id="3l440nVqBe8" role="0eVf_">
                <node concept="aZer4" id="3l440nVqBe9" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="3l440nVqBi1" role="3XD1gS">
                  <property role="TrG5h" value="Prem" />
                </node>
                <node concept="aZer4" id="3l440nVqBii" role="3XD1gS">
                  <property role="TrG5h" value="Acdt" />
                </node>
                <node concept="aZer4" id="3l440nVqBiE" role="3XD1gS">
                  <property role="TrG5h" value="Csqt" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="3l440nVqBdX" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="3l440nVqBdY" role="3Ip0Jz">
                <node concept="3I6s7M" id="3l440nVqBe2" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVqBe1" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIRg" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJfb" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                        <node concept="nsMwS" id="7VBaGntKJfc" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                          <node concept="1nq8_$" id="3l440nVqBjm" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVqBjl" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVqBii" resolve="Acdt" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJfd" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                          <node concept="1nq8_$" id="3l440nVqBA6" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVqBA5" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVqBiE" resolve="Csqt" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="3l440nVqBei" role="1uarlU">
                        <ref role="a7OzE" node="3l440nVqBe9" resolve="Con" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="3l440nVqBIz" role="3AunhB">
                      <node concept="3A2sRY" id="3l440nVqBIV" role="3BlFb_">
                        <ref role="3A2yKK" node="3l440nVqqeO" resolve="iffe" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="3l440nVqBJV" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVqBJW" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIRh" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJez" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ8d" resolve="Iff" />
                        <node concept="nsMwS" id="7VBaGntKJe$" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8f" resolve="antecedent" />
                          <node concept="1nq8_$" id="3l440nVqBK4" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVqBK5" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVqBii" resolve="Acdt" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJe_" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8g" resolve="consequence" />
                          <node concept="1nq8_$" id="3l440nVqBKa" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVqBKb" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVqBiE" resolve="Csqt" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="3l440nVqBNr" role="1uarlU">
                        <ref role="a7OzE" node="3l440nVqBi1" resolve="Prem" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="3l440nVqBKc" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVqIyr" role="3BlFb_">
                        <node concept="2OqwBi" id="3l440nVqEP2" role="2Oq$k0">
                          <node concept="2OqwBi" id="3l440nVqCnY" role="2Oq$k0">
                            <node concept="3A2sRY" id="3l440nVqCdJ" role="2Oq$k0">
                              <ref role="3A2yKK" node="3l440nVqqeO" resolve="iffe" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVqDf0" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                          <node concept="1uHKPH" id="3l440nVqGMv" role="2OqNvi" />
                        </node>
                        <node concept="3TrEf2" id="3l440nVqJbC" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="3l440nVqJdt" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="3l440nVqJdu" role="3Ip0Jz">
                <node concept="3I6s7M" id="3l440nVqJel" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVqJek" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="3l440nVqJeo" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVqJep" role="3BlFb_">
                        <node concept="2OqwBi" id="3l440nVqJeq" role="2Oq$k0">
                          <node concept="2OqwBi" id="3l440nVqJer" role="2Oq$k0">
                            <node concept="3A2sRY" id="3l440nVqJes" role="2Oq$k0">
                              <ref role="3A2yKK" node="3l440nVqqeO" resolve="iffe" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVqJet" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                          <node concept="1uHKPH" id="3l440nVqJeu" role="2OqNvi" />
                        </node>
                        <node concept="3TrEf2" id="3l440nVqJev" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="3l440nVqJka" role="1nLNMd">
              <node concept="3I6sU6" id="3l440nVqJkb" role="3Ip0Jz">
                <node concept="3I6s7M" id="3l440nVqJkf" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVqJke" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="3l440nVqJkk" role="3AunhB">
                      <node concept="3A2sRY" id="3l440nVqJkt" role="3BlFb_">
                        <ref role="3A2yKK" node="3l440nVqqeO" resolve="iffe" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="3l440nVqqeN" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3ZJo" resolve="IffElim" />
        <node concept="3A20r5" id="3l440nVqqeO" role="2t_VXX">
          <property role="TrG5h" value="iffe" />
        </node>
      </node>
      <node concept="cBwPQ" id="3l440nVqqf6" role="1nLFYo">
        <node concept="3clFbS" id="3l440nVqqf7" role="16YjZG">
          <node concept="3clFbF" id="3l440nVqqmP" role="3cqZAp">
            <node concept="3clFbC" id="3l440nVqAQ9" role="3clFbG">
              <node concept="3cmrfG" id="3l440nVqAQo" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="3l440nVqyFC" role="3uHU7B">
                <node concept="2OqwBi" id="3l440nVqyFD" role="2Oq$k0">
                  <node concept="3A2sRY" id="3l440nVqyFE" role="2Oq$k0">
                    <ref role="3A2yKK" node="3l440nVqqeO" resolve="iffe" />
                  </node>
                  <node concept="3Tsc0h" id="3l440nVqyFF" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="3l440nVqyFG" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H14e" role="1nK1Vg">
      <property role="TrG5h" value="IffElim_valid2" />
      <node concept="3clFbS" id="6$MtiK8H14f" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H14g" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H14h" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwaml" role="0UC6o">
              <node concept="3NuqgR" id="3l440nVqJlq" role="0eVf_">
                <node concept="aZer4" id="3l440nVqJlr" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="3l440nVqJls" role="3XD1gS">
                  <property role="TrG5h" value="Prem" />
                </node>
                <node concept="aZer4" id="3l440nVqJlt" role="3XD1gS">
                  <property role="TrG5h" value="Acdt" />
                </node>
                <node concept="aZer4" id="3l440nVqJlu" role="3XD1gS">
                  <property role="TrG5h" value="Csqt" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="3l440nVqJkG" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="3l440nVqJkH" role="3Ip0Jz">
                <node concept="3I6s7M" id="3l440nVqJkI" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVqJkJ" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIRm" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJeM" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ89" resolve="If" />
                        <node concept="nsMwS" id="7VBaGntKJeN" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8b" resolve="antecedent" />
                          <node concept="1nq8_$" id="3l440nVqJkR" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVqJkS" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVqJlt" resolve="Acdt" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJeO" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8c" resolve="consequence" />
                          <node concept="1nq8_$" id="3l440nVqJkX" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVqJkY" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVqJlu" resolve="Csqt" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="3l440nVqJkL" role="1uarlU">
                        <ref role="a7OzE" node="3l440nVqJlr" resolve="Con" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="3l440nVqJkZ" role="3AunhB">
                      <node concept="3A2sRY" id="3l440nVqJl0" role="3BlFb_">
                        <ref role="3A2yKK" node="3l440nVqJlG" resolve="iffe" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="3l440nVqJl1" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVqJl2" role="3I6s78">
                    <ref role="3AqCNq" node="2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIR7" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJeA" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ8d" resolve="Iff" />
                        <node concept="nsMwS" id="7VBaGntKJeB" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8f" resolve="antecedent" />
                          <node concept="1nq8_$" id="3l440nVqJla" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVqKhl" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVqJlu" resolve="Csqt" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJeC" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ8g" resolve="consequence" />
                          <node concept="1nq8_$" id="3l440nVqJlg" role="nsMwV">
                            <node concept="a7P8L" id="3l440nVqKpT" role="1nq8_t">
                              <ref role="a7OzE" node="3l440nVqJlt" resolve="Acdt" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="3l440nVqJl4" role="1uarlU">
                        <ref role="a7OzE" node="3l440nVqJls" resolve="Prem" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="3l440nVqJli" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVqJlj" role="3BlFb_">
                        <node concept="2OqwBi" id="3l440nVqJlk" role="2Oq$k0">
                          <node concept="2OqwBi" id="3l440nVqJll" role="2Oq$k0">
                            <node concept="3A2sRY" id="3l440nVqJlm" role="2Oq$k0">
                              <ref role="3A2yKK" node="3l440nVqJlG" resolve="iffe" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVqJln" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                          <node concept="1uHKPH" id="3l440nVqJlo" role="2OqNvi" />
                        </node>
                        <node concept="3TrEf2" id="3l440nVqJlp" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="3l440nVqJlv" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="3l440nVqJlw" role="3Ip0Jz">
                <node concept="3I6s7M" id="3l440nVqJlx" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVqJly" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="3l440nVqJlz" role="3AunhB">
                      <node concept="2OqwBi" id="3l440nVqJl$" role="3BlFb_">
                        <node concept="2OqwBi" id="3l440nVqJl_" role="2Oq$k0">
                          <node concept="2OqwBi" id="3l440nVqJlA" role="2Oq$k0">
                            <node concept="3A2sRY" id="3l440nVqJlB" role="2Oq$k0">
                              <ref role="3A2yKK" node="3l440nVqJlG" resolve="iffe" />
                            </node>
                            <node concept="3Tsc0h" id="3l440nVqJlC" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                          <node concept="1uHKPH" id="3l440nVqJlD" role="2OqNvi" />
                        </node>
                        <node concept="3TrEf2" id="3l440nVqJlE" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="3l440nVqJkA" role="1nLNMd">
              <node concept="3I6sU6" id="3l440nVqJkB" role="3Ip0Jz">
                <node concept="3I6s7M" id="3l440nVqJkC" role="3I6sU7">
                  <node concept="3Aqt3T" id="3l440nVqJkD" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="3l440nVqJkE" role="3AunhB">
                      <node concept="3A2sRY" id="3l440nVqJkF" role="3BlFb_">
                        <ref role="3A2yKK" node="3l440nVqJlG" resolve="iffe" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="3l440nVqJlF" role="1nLNMg">
        <ref role="2t_S0q" to="27wh:3JXBM6C3ZJo" resolve="IffElim" />
        <node concept="3A20r5" id="3l440nVqJlG" role="2t_VXX">
          <property role="TrG5h" value="iffe" />
        </node>
      </node>
      <node concept="cBwPQ" id="3l440nVqJlH" role="1nLFYo">
        <node concept="3clFbS" id="3l440nVqJlI" role="16YjZG">
          <node concept="3clFbF" id="3l440nVqJlJ" role="3cqZAp">
            <node concept="3clFbC" id="3l440nVqJlK" role="3clFbG">
              <node concept="3cmrfG" id="3l440nVqJlL" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="3l440nVqJlM" role="3uHU7B">
                <node concept="2OqwBi" id="3l440nVqJlN" role="2Oq$k0">
                  <node concept="3A2sRY" id="3l440nVqJlO" role="2Oq$k0">
                    <ref role="3A2yKK" node="3l440nVqJlG" resolve="iffe" />
                  </node>
                  <node concept="3Tsc0h" id="3l440nVqJlP" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="3l440nVqJlQ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H14i" role="1nK1Vg">
      <property role="TrG5h" value="goal" />
      <node concept="3clFbS" id="6$MtiK8H14j" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H14k" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H14l" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwam9" role="0UC6o">
              <node concept="3NuqgR" id="2AfSc6JuwTp" role="0eVf_">
                <node concept="aZer4" id="2AfSc6JuwTq" role="3XD1gS">
                  <property role="TrG5h" value="Goal" />
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2AfSc6JuwTc" role="1nLNMd">
              <node concept="3I6sU6" id="2AfSc6JuwTd" role="3Ip0Jz">
                <node concept="3I6s7M" id="2AfSc6JuwTe" role="3I6sU7">
                  <node concept="1imXTs" id="2AfSc6JuwTf" role="3I6s78">
                    <node concept="a7P8L" id="2AfSc6JuwTg" role="1imXu6">
                      <ref role="a7OzE" node="2AfSc6JuwTq" resolve="Goal" />
                    </node>
                    <node concept="2OqwBi" id="2AfSc6JuwTh" role="1imXSf">
                      <node concept="3A2sRY" id="2AfSc6JuwTi" role="2Oq$k0">
                        <ref role="3A2yKK" node="2AfSc6JuwTs" resolve="goal" />
                      </node>
                      <node concept="3TrEf2" id="2AfSc6JuwTj" role="2OqNvi">
                        <ref role="3Tt5mk" to="jfgh:$u9BK__SA9" resolve="sentence" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2AfSc6JuwTk" role="3I6sU7">
                  <node concept="3Aqt3T" id="2AfSc6JuwTl" role="3I6s78">
                    <ref role="3AqCNq" node="2YqrT$P7RE$" resolve="goal" />
                    <node concept="a7P8L" id="2AfSc6JuwTm" role="3AunhB">
                      <ref role="a7OzE" node="2AfSc6JuwTq" resolve="Goal" />
                    </node>
                    <node concept="3BlFb$" id="2AfSc6JuwTn" role="3AunhB">
                      <node concept="3A2sRY" id="2AfSc6JuwTo" role="3BlFb_">
                        <ref role="3A2yKK" node="2AfSc6JuwTs" resolve="goal" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2AfSc6JuwTr" role="1nLNMg">
        <ref role="2t_S0q" to="jfgh:$u9BK__SA8" resolve="Goal" />
        <node concept="3A20r5" id="2AfSc6JuwTs" role="2t_VXX">
          <property role="TrG5h" value="goal" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H14m" role="1nK1Vg">
      <property role="TrG5h" value="goal_valid" />
      <node concept="3clFbS" id="6$MtiK8H14n" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H14o" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H14p" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwamk" role="0UC6o">
              <node concept="3NuqgR" id="2YqrT$P7QXy" role="0eVf_">
                <node concept="aZer4" id="2YqrT$P7QXz" role="3XD1gS">
                  <property role="TrG5h" value="Goal" />
                </node>
                <node concept="aZer4" id="2YqrT$P7QXD" role="3XD1gS">
                  <property role="TrG5h" value="ProofCon" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2YqrT$P7I4z" role="1nLNMb">
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
                              <node concept="chp4Y" id="3w0n0hzgXvI" role="3oSUPX">
                                <ref role="cht4Q" to="jfgh:3w0n0hzgWvH" resolve="AbstractProof" />
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
                    <node concept="1HFMs5" id="7VBaGntKIR0" role="3AunhB">
                      <node concept="a7P8L" id="2AfSc6JxESd" role="1uarlW">
                        <ref role="a7OzE" node="2YqrT$P7QXD" resolve="ProofCon" />
                      </node>
                      <node concept="a7P8L" id="9AXE3xO8D9" role="1uarlU">
                        <ref role="a7OzE" node="2YqrT$P7QXz" resolve="Goal" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="2YqrT$P7RGQ" role="3AunhB">
                      <node concept="3A2sRY" id="2YqrT$P7RH2" role="3BlFb_">
                        <ref role="3A2yKK" node="2YqrT$P7I4k" resolve="goal" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2YqrT$P7I4B" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2YqrT$P7I4C" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7QRU" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7QRT" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2YqrT$P7QRZ" role="3AunhB">
                      <node concept="2OqwBi" id="2YqrT$P7QS8" role="3BlFb_">
                        <node concept="2OqwBi" id="2YqrT$P7QS9" role="2Oq$k0">
                          <node concept="1PxgMI" id="2YqrT$P7QSa" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="3w0n0hzgXrv" role="3oSUPX">
                              <ref role="cht4Q" to="jfgh:3w0n0hzgWvH" resolve="AbstractProof" />
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
            <node concept="3Aq9E8" id="2YqrT$P7S7$" role="1nLNMd">
              <node concept="3I6sU6" id="2YqrT$P7S7_" role="3Ip0Jz">
                <node concept="3I6s7M" id="2YqrT$P7Sr7" role="3I6sU7">
                  <node concept="3Aqt3T" id="2YqrT$P7Sr6" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
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
        </node>
      </node>
      <node concept="2t___k" id="2YqrT$P7I4j" role="1nLNMg">
        <ref role="2t_S0q" to="jfgh:$u9BK__SA8" resolve="Goal" />
        <node concept="3A20r5" id="2YqrT$P7I4k" role="2t_VXX">
          <property role="TrG5h" value="goal" />
        </node>
      </node>
      <node concept="cBwPQ" id="2YqrT$P7I55" role="1nLFYo">
        <node concept="3clFbS" id="2YqrT$P7I56" role="16YjZG">
          <node concept="3clFbF" id="2YqrT$P7I5j" role="3cqZAp">
            <node concept="2OqwBi" id="9AXE3xOn6V" role="3clFbG">
              <node concept="2OqwBi" id="2YqrT$P7LVa" role="2Oq$k0">
                <node concept="2OqwBi" id="2YqrT$P7JQA" role="2Oq$k0">
                  <node concept="1PxgMI" id="2YqrT$P7J$X" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="3w0n0hzgWPN" role="3oSUPX">
                      <ref role="cht4Q" to="jfgh:3w0n0hzgWvH" resolve="AbstractProof" />
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
    </node>
  </node>
  <node concept="ns1xd" id="7VBaGntKJ7W">
    <property role="TrG5h" value="Logic" />
    <node concept="ns1x$" id="7VBaGntKJ7X" role="ns1xc">
      <property role="TrG5h" value="Const" />
      <node concept="nspSf" id="7VBaGntKJ7Y" role="ns1xx">
        <node concept="nssqF" id="7VBaGntKJ7Z" role="nspSe">
          <property role="TrG5h" value="name" />
          <property role="nspS5" value="false" />
        </node>
      </node>
    </node>
    <node concept="ns1x$" id="7VBaGntKJ80" role="ns1xc">
      <property role="TrG5h" value="And" />
      <node concept="nspSf" id="7VBaGntKJ81" role="ns1xx">
        <node concept="nsiOd" id="7VBaGntKJ82" role="nspSe">
          <property role="TrG5h" value="conjuncts" />
          <property role="nspS5" value="false" />
        </node>
      </node>
    </node>
    <node concept="ns1x$" id="7VBaGntKJ83" role="ns1xc">
      <property role="TrG5h" value="Or" />
      <node concept="nspSf" id="7VBaGntKJ84" role="ns1xx">
        <node concept="nsiOd" id="7VBaGntKJ85" role="nspSe">
          <property role="TrG5h" value="disjuncts" />
          <property role="nspS5" value="false" />
        </node>
      </node>
    </node>
    <node concept="ns1x$" id="7VBaGntKJ86" role="ns1xc">
      <property role="TrG5h" value="Not" />
      <node concept="nspSf" id="7VBaGntKJ87" role="ns1xx">
        <node concept="nstbe" id="7VBaGntKJ88" role="nspSe">
          <property role="TrG5h" value="target" />
          <property role="nspS5" value="false" />
        </node>
      </node>
    </node>
    <node concept="ns1x$" id="7VBaGntKJ89" role="ns1xc">
      <property role="TrG5h" value="If" />
      <node concept="nspSf" id="7VBaGntKJ8a" role="ns1xx">
        <node concept="nstbe" id="7VBaGntKJ8b" role="nspSe">
          <property role="TrG5h" value="antecedent" />
          <property role="nspS5" value="false" />
        </node>
        <node concept="nstbe" id="7VBaGntKJ8c" role="nspSe">
          <property role="TrG5h" value="consequence" />
          <property role="nspS5" value="false" />
        </node>
      </node>
    </node>
    <node concept="ns1x$" id="7VBaGntKJ8d" role="ns1xc">
      <property role="TrG5h" value="Iff" />
      <node concept="nspSf" id="7VBaGntKJ8e" role="ns1xx">
        <node concept="nstbe" id="7VBaGntKJ8f" role="nspSe">
          <property role="TrG5h" value="antecedent" />
          <property role="nspS5" value="false" />
        </node>
        <node concept="nstbe" id="7VBaGntKJ8g" role="nspSe">
          <property role="TrG5h" value="consequence" />
          <property role="nspS5" value="false" />
        </node>
      </node>
    </node>
  </node>
</model>

