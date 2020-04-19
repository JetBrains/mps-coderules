<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ffe541d0-0912-42c1-800b-d2f22dd8a4c8(jetbrains.mps.baseLanguage.closuresExt.types)">
  <persistence version="9" />
  <languages>
    <use id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" version="0" />
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules" version="21" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="12" />
    <engage id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.baseLanguageExt.types)" />
    <import index="tp2c" ref="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1239709250944" name="jetbrains.mps.baseLanguage.structure.PrefixIncrementExpression" flags="nn" index="2$rviw" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068431790189" name="jetbrains.mps.baseLanguage.structure.Type" flags="in" index="33vP2l" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ng" index="2c44t0">
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785118" name="jetbrains.mps.lang.quotation.structure.ListAntiquotation" flags="ng" index="2c44t8" />
      <concept id="1196350785112" name="jetbrains.mps.lang.quotation.structure.Antiquotation" flags="ng" index="2c44te" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
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
      <concept id="6856711987710888499" name="jetbrains.mps.logic.structure.DataNodeLiteral" flags="ng" index="Hz6ka">
        <child id="6856711987710888500" name="root" index="Hz6kd" />
      </concept>
      <concept id="2105510410850132386" name="jetbrains.mps.logic.structure.ListNode" flags="ng" index="KCUsM" />
      <concept id="4780620083400582599" name="jetbrains.mps.logic.structure.LogicalItemExpression" flags="ng" index="1nq8_$">
        <child id="4780620083400582654" name="logical" index="1nq8_t" />
      </concept>
      <concept id="960803923479540328" name="jetbrains.mps.logic.structure.LogicalVariableDataForm" flags="ng" index="3wAshV">
        <child id="960803923479549586" name="variable" index="3wAq21" />
      </concept>
      <concept id="8713947027062024097" name="jetbrains.mps.logic.structure.LogicalItemValueExpression" flags="ng" index="1Ft4W6">
        <child id="8713947027062064784" name="logical" index="1FtiSR" />
      </concept>
      <concept id="1432138691741609740" name="jetbrains.mps.logic.structure.ConsListNode" flags="ng" index="1Pxxm1">
        <child id="1432138691741609741" name="head" index="1Pxxm0" />
        <child id="1432138691741609743" name="tail" index="1Pxxm2" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
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
      <concept id="1618328391714763069" name="jetbrains.mps.lang.coderules.structure.MacroTable" flags="ng" index="0oKg$">
        <reference id="6097203247219331496" name="extends" index="3tg4Y$" />
        <child id="1618328391714763070" name="macro" index="0oKgB" />
      </concept>
      <concept id="861509610434242029" name="jetbrains.mps.lang.coderules.structure.TermConstructor" flags="ng" index="ns1u0">
        <reference id="861509610434243078" name="decl" index="ns1xF" />
        <child id="861509610434243076" name="override" index="ns1xD" />
      </concept>
      <concept id="861509610434243104" name="jetbrains.mps.lang.coderules.structure.TermTable" flags="ng" index="ns1xd">
        <child id="861509610434243105" name="contents" index="ns1xc" />
      </concept>
      <concept id="861509610434243081" name="jetbrains.mps.lang.coderules.structure.TermDeclaration" flags="ng" index="ns1x$">
        <property id="5177758076344254900" name="open" index="3uGXoX" />
        <reference id="861509610434243089" name="prototype" index="ns1xW" />
        <child id="861509610434243084" name="template" index="ns1xx" />
      </concept>
      <concept id="861509610434305888" name="jetbrains.mps.lang.coderules.structure.ListFeature" flags="ng" index="nsiOd" />
      <concept id="861509610434276450" name="jetbrains.mps.lang.coderules.structure.TermTemplate" flags="ng" index="nspSf">
        <child id="861509610434276451" name="feature" index="nspSe" />
      </concept>
      <concept id="861509610434289827" name="jetbrains.mps.lang.coderules.structure.ChildFeature" flags="ng" index="nstbe" />
      <concept id="861509610434435669" name="jetbrains.mps.lang.coderules.structure.TermFeatureOverride" flags="ng" index="nsMwS">
        <reference id="861509610434435672" name="feature" index="nsMwP" />
        <child id="861509610434435670" name="getter" index="nsMwV" />
      </concept>
      <concept id="8335224865066015764" name="jetbrains.mps.lang.coderules.structure.RulesList" flags="ng" index="AVZre">
        <reference id="3541122455446356437" name="extends" index="2YbDB9" />
        <child id="1980609059185345194" name="constraint" index="8PkJo" />
        <child id="3575255234175157601" name="template" index="1nK1Vg" />
      </concept>
      <concept id="6856711987714624232" name="jetbrains.mps.lang.coderules.structure.LateExpressionItem" flags="ng" index="HKQnh">
        <child id="6856711987714624233" name="code" index="HKQng" />
      </concept>
      <concept id="5042557354438383712" name="jetbrains.mps.lang.coderules.structure.TermListType" flags="ig" index="VbTHi" />
      <concept id="2381360340662937504" name="jetbrains.mps.lang.coderules.structure.TermType" flags="ig" index="32pEOW" />
      <concept id="6097203247139556923" name="jetbrains.mps.lang.coderules.structure.CallMacroTemplate" flags="ng" index="3hwh0R">
        <child id="6097203247147235901" name="logical" index="3h32gL" />
        <child id="6097203247141261094" name="code" index="3hEL4E" />
        <child id="6097203247141280536" name="variable" index="3hEOkk" />
        <child id="6097203247142518497" name="parameter" index="3hP23H" />
      </concept>
      <concept id="6097203247142995359" name="jetbrains.mps.lang.coderules.structure.CallMacroParameterReference" flags="ng" index="3hN9Ij">
        <reference id="6097203247143507437" name="declaration" index="3hLkJx" />
      </concept>
      <concept id="6097203247142432582" name="jetbrains.mps.lang.coderules.structure.CallMacroParameterDeclaration" flags="ng" index="3hPv5a">
        <child id="6097203247142468229" name="type" index="3hPmi9" />
      </concept>
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
      </concept>
      <concept id="6097203247183580433" name="jetbrains.mps.lang.coderules.structure.ExpandMacroInputReference" flags="ng" index="3j8tct">
        <reference id="6097203247183580434" name="declaration" index="3j8tcu" />
      </concept>
      <concept id="6097203247182936001" name="jetbrains.mps.lang.coderules.structure.ExpandMacroConstraint" flags="ng" index="3jbYBd">
        <reference id="6097203247182937177" name="template" index="3jbY9l" />
        <child id="6097203247182937145" name="input" index="3jbY8P" />
        <child id="6097203247182937143" name="logical" index="3jbY8V" />
      </concept>
      <concept id="6097203247184206287" name="jetbrains.mps.lang.coderules.structure.CallMacroConstraint" flags="ng" index="3jm4v3">
        <reference id="6097203247184207800" name="template" index="3jm46O" />
        <child id="6097203247185219723" name="argument" index="3jicU7" />
        <child id="6097203247184212024" name="logical" index="3jm6SO" />
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
        <child id="3575255234174969628" name="code" index="1nLNMH" />
      </concept>
      <concept id="3575255234174969664" name="jetbrains.mps.lang.coderules.structure.ConstraintRuleStatement" flags="ng" index="1nLNNL">
        <child id="3575255234174969665" name="rule" index="1nLNNK" />
      </concept>
      <concept id="8908809128801951597" name="jetbrains.mps.lang.coderules.structure.MacroBodyLogicalDeclaration" flags="ng" index="3uniRu" />
      <concept id="7674753015762572646" name="jetbrains.mps.lang.coderules.structure.BodyBlock" flags="ng" index="3xSepi">
        <child id="7674753015762572647" name="body" index="3xSepj" />
      </concept>
      <concept id="1878265754077060950" name="jetbrains.mps.lang.coderules.structure.ConstraintParameterDeclaration" flags="ng" index="1zAUYm">
        <child id="6036655413802463897" name="dataType" index="3gTf24" />
      </concept>
      <concept id="7368070394770780974" name="jetbrains.mps.lang.coderules.structure.UnifiesConstraint" flags="ng" index="3A8Hvi">
        <child id="7368070394770793930" name="value" index="3A8w4Q" />
        <child id="7368070394770793388" name="assignee" index="3A8wtg" />
      </concept>
      <concept id="7368070394766963750" name="jetbrains.mps.lang.coderules.structure.Head" flags="ng" index="3Aq93q" />
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
      <concept id="2316688792939428589" name="jetbrains.mps.lang.coderules.structure.TemplateLogicalClause" flags="ng" index="3IrJb3">
        <child id="2316688792939428590" name="code" index="3IrJb0" />
      </concept>
      <concept id="965748826975413063" name="jetbrains.mps.lang.coderules.structure.RulePartParameterDeclaration" flags="ng" index="3NuqgR" />
    </language>
  </registry>
  <node concept="0oKg$" id="4E290qPYhpn">
    <property role="TrG5h" value="ClosureTypes" />
    <ref role="3tg4Y$" to="kqnc:E1U1n2RerB" resolve="Types" />
    <node concept="3iyZe8" id="6$MmqWfmeMH" role="0oKgB">
      <ref role="3iRiWT" to="kqnc:5itBwMau8m1" resolve="lift" />
      <node concept="3clFbS" id="6$MmqWfmeMI" role="3iwQuN">
        <node concept="3Aqczg" id="6$MmqWfmoJu" role="3cqZAp">
          <node concept="3jm4v3" id="6$MmqWfmoJs" role="3Aqpz8">
            <ref role="3jm46O" node="6$MmqWfmo8t" resolve="functionType" />
            <node concept="2OqwBi" id="6$MmqWfmoTx" role="3jicU7">
              <node concept="3j8tct" id="6$MmqWfmoJG" role="2Oq$k0">
                <ref role="3j8tcu" node="6$MmqWfmeMN" resolve="funType" />
              </node>
              <node concept="3Tsc0h" id="6$MmqWfmp7r" role="2OqNvi">
                <ref role="3TtcxE" to="tp2c:htajw4W" resolve="parameterType" />
              </node>
            </node>
            <node concept="2OqwBi" id="6$MmqWfmpjt" role="3jicU7">
              <node concept="3j8tct" id="6$MmqWfmpa5" role="2Oq$k0">
                <ref role="3j8tcu" node="6$MmqWfmeMN" resolve="funType" />
              </node>
              <node concept="3TrEf2" id="6$MmqWfmpk6" role="2OqNvi">
                <ref role="3Tt5mk" to="tp2c:htajldL" resolve="resultType" />
              </node>
            </node>
            <node concept="a7P8L" id="6$MmqWfmoJz" role="3jm6SO">
              <ref role="a7OzE" node="6$MmqWfmeML" resolve="Type" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uniRu" id="6$MmqWfmeMJ" role="3tb1AD">
        <node concept="32pEOW" id="6$MmqWfmeMK" role="3vLBG7" />
        <node concept="aZer4" id="6$MmqWfmeML" role="3XD1gS">
          <property role="TrG5h" value="Type" />
        </node>
      </node>
      <node concept="3ixlbQ" id="6$MmqWfmeMM" role="3iweTQ">
        <ref role="3ixz9q" to="tp2c:htajhBZ" resolve="FunctionType" />
        <node concept="3ixQyH" id="6$MmqWfmeMN" role="3ix8rx">
          <property role="TrG5h" value="funType" />
        </node>
      </node>
    </node>
    <node concept="3hwh0R" id="6$MmqWfmo8t" role="0oKgB">
      <property role="TrG5h" value="functionType" />
      <node concept="3hPv5a" id="6$MmqWfmoJc" role="3hP23H">
        <property role="TrG5h" value="paramTypes" />
        <node concept="2I9FWS" id="6$MmqWfmoJg" role="3hPmi9">
          <ref role="2I9WkF" to="tpee:fz3vP1H" resolve="Type" />
        </node>
      </node>
      <node concept="3hPv5a" id="6$MmqWfmoJj" role="3hP23H">
        <property role="TrG5h" value="resultType" />
        <node concept="3Tqbb2" id="6$MmqWfmoJp" role="3hPmi9">
          <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
        </node>
      </node>
      <node concept="3clFbS" id="6$MmqWfmo8v" role="3hEL4E">
        <node concept="1Dw8fO" id="4E290qPYBou" role="3cqZAp">
          <node concept="3cpWsn" id="4E290qPYBov" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="4E290qPYBpn" role="1tU5fm" />
            <node concept="3cmrfG" id="4E290qPYBqW" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="4E290qPYBow" role="2LFqv$">
            <node concept="3Aqczg" id="4E290qPYH2O" role="3cqZAp">
              <node concept="3jbYBd" id="4E290qPYH2L" role="3Aqpz8">
                <ref role="3jbY9l" to="kqnc:5itBwMau8m1" resolve="lift" />
                <node concept="1y4W85" id="4E290qPYMln" role="3jbY8P">
                  <node concept="37vLTw" id="4E290qPYMn1" role="1y58nS">
                    <ref role="3cqZAo" node="4E290qPYBov" resolve="i" />
                  </node>
                  <node concept="3hN9Ij" id="6$MmqWfmwQS" role="1y566C">
                    <ref role="3hLkJx" node="6$MmqWfmoJc" resolve="paramTypes" />
                  </node>
                </node>
                <node concept="a7P8L" id="4E290qPYH3l" role="3jbY8V">
                  <ref role="a7OzE" node="6$MmqWfmrsz" resolve="ParamTypes" />
                  <node concept="37vLTw" id="4E290qPYH4_" role="3gCZO6">
                    <ref role="3cqZAo" node="4E290qPYBov" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="4E290qPYCgX" role="1Dwp0S">
            <node concept="2OqwBi" id="4E290qPYETV" role="3uHU7w">
              <node concept="34oBXx" id="4E290qPYGYi" role="2OqNvi" />
              <node concept="3hN9Ij" id="6$MmqWfmwNU" role="2Oq$k0">
                <ref role="3hLkJx" node="6$MmqWfmoJc" resolve="paramTypes" />
              </node>
            </node>
            <node concept="37vLTw" id="4E290qPYBrP" role="3uHU7B">
              <ref role="3cqZAo" node="4E290qPYBov" resolve="i" />
            </node>
          </node>
          <node concept="2$rviw" id="4E290qPYGZX" role="1Dwrff">
            <node concept="37vLTw" id="4E290qPYH28" role="2$L3a6">
              <ref role="3cqZAo" node="4E290qPYBov" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3Aqczg" id="6$MmqWfmpvk" role="3cqZAp">
          <node concept="3jbYBd" id="6$MmqWfmpvh" role="3Aqpz8">
            <ref role="3jbY9l" to="kqnc:5itBwMau8m1" resolve="lift" />
            <node concept="3hN9Ij" id="6$MmqWfmw1K" role="3jbY8P">
              <ref role="3hLkJx" node="6$MmqWfmoJj" resolve="resultType" />
            </node>
            <node concept="a7P8L" id="6$MmqWfmw1D" role="3jbY8V">
              <ref role="a7OzE" node="6$MmqWfmrtC" resolve="ResultType" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6$MmqWfmwDe" role="3cqZAp" />
        <node concept="3Aqczg" id="6$MmqWfmpuR" role="3cqZAp">
          <node concept="3A8Hvi" id="6$MmqWfmpuO" role="3Aqpz8">
            <node concept="a7P8L" id="6$MmqWfmpuW" role="3A8wtg">
              <ref role="a7OzE" node="6$MmqWfmo8G" resolve="Type" />
            </node>
            <node concept="ns1u0" id="6$MmqWfmpv3" role="3A8w4Q">
              <ref role="ns1xF" node="6$MmqWflYd6" resolve="function" />
              <node concept="nsMwS" id="6$MmqWfmpv5" role="ns1xD">
                <ref role="nsMwP" node="6$MmqWflYdw" resolve="params" />
                <node concept="1nq8_$" id="6$MmqWfmw1Q" role="nsMwV">
                  <node concept="a7P8L" id="6$MmqWfmw1P" role="1nq8_t">
                    <ref role="a7OzE" node="6$MmqWfmrsz" resolve="ParamTypes" />
                  </node>
                </node>
              </node>
              <node concept="nsMwS" id="6$MmqWfmwCT" role="ns1xD">
                <ref role="nsMwP" node="6$MmqWflYdg" resolve="result" />
                <node concept="1nq8_$" id="6$MmqWfmwD1" role="nsMwV">
                  <node concept="a7P8L" id="6$MmqWfmwD0" role="1nq8_t">
                    <ref role="a7OzE" node="6$MmqWfmrtC" resolve="ResultType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uniRu" id="6$MmqWfmo8F" role="3h32gL">
        <node concept="aZer4" id="6$MmqWfmo8G" role="3XD1gS">
          <property role="TrG5h" value="Type" />
        </node>
        <node concept="32pEOW" id="6$MmqWfmo8S" role="3vLBG7" />
      </node>
      <node concept="3uniRu" id="6$MmqWfmrsy" role="3hEOkk">
        <node concept="aZer4" id="6$MmqWfmrsz" role="3XD1gS">
          <property role="TrG5h" value="ParamTypes" />
          <node concept="2OqwBi" id="6$MmqWfmthi" role="3gj$pD">
            <node concept="3hN9Ij" id="6$MmqWfmruz" role="2Oq$k0">
              <ref role="3hLkJx" node="6$MmqWfmoJc" resolve="paramTypes" />
            </node>
            <node concept="34oBXx" id="6$MmqWfmvkw" role="2OqNvi" />
          </node>
        </node>
        <node concept="32pEOW" id="6$MmqWfmruf" role="3vLBG7" />
      </node>
      <node concept="3uniRu" id="6$MmqWfmrtB" role="3hEOkk">
        <node concept="aZer4" id="6$MmqWfmrtC" role="3XD1gS">
          <property role="TrG5h" value="ResultType" />
        </node>
        <node concept="32pEOW" id="6$MmqWfmrtR" role="3vLBG7" />
      </node>
    </node>
  </node>
  <node concept="AVZre" id="2WQBycG$hsu">
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="RecoverClosure" />
    <ref role="2YbDB9" to="kqnc:6Qzc0KyJGzD" resolve="Recover" />
    <node concept="1nLNMY" id="2WQBycG$nvU" role="1nK1Vg">
      <property role="TrG5h" value="recover_FunctionType" />
      <node concept="3clFbS" id="2WQBycG$nvV" role="1nLNMH">
        <node concept="1nLNNL" id="12QmIo_7sfB" role="3cqZAp">
          <node concept="1nLNMm" id="12QmIo_7sfC" role="1nLNNK">
            <node concept="3Aq93q" id="5upUcEtdUWy" role="1nLNMb">
              <node concept="3I6sU6" id="5upUcEtdUWz" role="3Ip0Jz">
                <node concept="3I6s7M" id="5upUcEtdXZM" role="3I6sU7">
                  <node concept="3Aqt3T" id="5upUcEtdXZL" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:6Qzc0KyJGJT" resolve="recover" />
                    <node concept="a7P8L" id="5upUcEtdXZR" role="3AunhB">
                      <ref role="a7OzE" node="5upUcEtdUWC" resolve="Node" />
                    </node>
                    <node concept="1HFMs5" id="6$MmqWfm90W" role="3AunhB">
                      <node concept="a7P8L" id="6$MmqWfm8Z0" role="1uarlU">
                        <ref role="a7OzE" node="6$MmqWfm8Xk" resolve="Type" />
                      </node>
                      <node concept="ns1u0" id="6$MmqWfm933" role="1uarlW">
                        <ref role="ns1xF" node="6$MmqWflYd6" resolve="function" />
                        <node concept="nsMwS" id="6$MmqWfm93a" role="ns1xD">
                          <ref role="nsMwP" node="6$MmqWflYdw" resolve="params" />
                          <node concept="1nq8_$" id="6$MmqWfm93f" role="nsMwV">
                            <node concept="a7P8L" id="6$MmqWfm93e" role="1nq8_t">
                              <ref role="a7OzE" node="5upUcEtdY0_" resolve="ParamTypes" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="6$MmqWfm93s" role="ns1xD">
                          <ref role="nsMwP" node="6$MmqWflYdg" resolve="result" />
                          <node concept="1nq8_$" id="6$MmqWfm93$" role="nsMwV">
                            <node concept="a7P8L" id="6$MmqWfm93z" role="1nq8_t">
                              <ref role="a7OzE" node="6$MmqWfm8Yx" resolve="ResultType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="5upUcEtdUWB" role="0Rg$4">
              <node concept="aZer4" id="5upUcEtdUWC" role="3XD1gS">
                <property role="TrG5h" value="Node" />
              </node>
              <node concept="aZer4" id="6$MmqWfm96E" role="3XD1gS">
                <property role="TrG5h" value="ResultTypeNode" />
              </node>
              <node concept="3Tqbb2" id="5f6wxQ30Ugg" role="3vLBG7" />
            </node>
            <node concept="3NuqgR" id="2WQBycG$nBx" role="0Rg$4">
              <node concept="aZer4" id="2WQBycG$nBy" role="3XD1gS">
                <property role="TrG5h" value="ParamTypesNodes" />
              </node>
              <node concept="2I9FWS" id="2WQBycG$nBP" role="3vLBG7" />
            </node>
            <node concept="3NuqgR" id="6$MmqWfm8Xj" role="0Rg$4">
              <node concept="aZer4" id="6$MmqWfm8Xk" role="3XD1gS">
                <property role="TrG5h" value="Type" />
              </node>
              <node concept="aZer4" id="6$MmqWfm8Yx" role="3XD1gS">
                <property role="TrG5h" value="ResultType" />
              </node>
              <node concept="32pEOW" id="6$MmqWfm8XD" role="3vLBG7" />
            </node>
            <node concept="3NuqgR" id="5f6wxQ30Unu" role="0Rg$4">
              <node concept="aZer4" id="5upUcEtdY0_" role="3XD1gS">
                <property role="TrG5h" value="ParamTypes" />
              </node>
              <node concept="VbTHi" id="6$MmqWfm8UR" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="6$MmqWfm93L" role="3xSepv">
              <node concept="3Aq9E8" id="6$MmqWfm93M" role="3xSepj">
                <node concept="3I6sU6" id="6$MmqWfm93N" role="3Ip0Jz">
                  <node concept="3IrJb3" id="2dupQuU$hnj" role="3I6sU7">
                    <node concept="3clFbS" id="2dupQuU$hnk" role="3IrJb0">
                      <node concept="3Aqczg" id="2dupQuU$hnl" role="3cqZAp">
                        <node concept="3A8Hvi" id="2dupQuU$fQt" role="3Aqpz8">
                          <node concept="HKQnh" id="2dupQuU$fTg" role="3A8w4Q">
                            <node concept="2ShNRf" id="2dupQuU$fTl" role="HKQng">
                              <node concept="2T8Vx0" id="2dupQuU$h13" role="2ShVmc">
                                <node concept="2I9FWS" id="2dupQuU$h15" role="2T96Bj">
                                  <ref role="2I9WkF" to="tpee:fz3vP1H" resolve="Type" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="a7P8L" id="2dupQuU$fPQ" role="3A8wtg">
                            <ref role="a7OzE" node="2WQBycG$nBy" resolve="ParamTypesNodes" />
                          </node>
                        </node>
                      </node>
                      <node concept="3Aqczg" id="2dupQuU$hnm" role="3cqZAp">
                        <node concept="3Aqt3T" id="6$MmqWfm9dQ" role="3Aqpz8">
                          <ref role="3AqCNq" to="kqnc:6Qzc0KyJGJT" resolve="recover" />
                          <node concept="a7P8L" id="6$MmqWfm9dX" role="3AunhB">
                            <ref role="a7OzE" node="6$MmqWfm96E" resolve="ResultTypeNode" />
                          </node>
                          <node concept="a7P8L" id="6$MmqWfm9fZ" role="3AunhB">
                            <ref role="a7OzE" node="6$MmqWfm8Yx" resolve="ResultType" />
                          </node>
                        </node>
                      </node>
                      <node concept="3Aqczg" id="2dupQuU$hnn" role="3cqZAp">
                        <node concept="3Aqt3T" id="6$MmqWfm93R" role="3Aqpz8">
                          <ref role="3AqCNq" to="kqnc:6N2bvv_l2qf" resolve="recoverList" />
                          <node concept="a7P8L" id="6$MmqWfm93Z" role="3AunhB">
                            <ref role="a7OzE" node="2WQBycG$nBy" resolve="ParamTypesNodes" />
                          </node>
                          <node concept="a7P8L" id="6$MmqWfm962" role="3AunhB">
                            <ref role="a7OzE" node="5upUcEtdY0_" resolve="ParamTypes" />
                          </node>
                        </node>
                      </node>
                      <node concept="3Aqczg" id="2dupQuU$hno" role="3cqZAp">
                        <node concept="3A8Hvi" id="6$MmqWfm9gV" role="3Aqpz8">
                          <node concept="a7P8L" id="6$MmqWfm9gy" role="3A8wtg">
                            <ref role="a7OzE" node="5upUcEtdUWC" resolve="Node" />
                          </node>
                          <node concept="HKQnh" id="6$MmqWfmb$z" role="3A8w4Q">
                            <node concept="2c44tf" id="6$MmqWfm9j9" role="HKQng">
                              <node concept="1ajhzC" id="1vxei$17fRB" role="2c44tc">
                                <node concept="33vP2l" id="6$MmqWfmbdk" role="1ajw0F">
                                  <node concept="2c44t8" id="6$MmqWfmbd$" role="lGtFl">
                                    <node concept="1Ft4W6" id="6$MmqWfmc5V" role="2c44t1">
                                      <node concept="a7P8L" id="6$MmqWfmc5U" role="1FtiSR">
                                        <ref role="a7OzE" node="2WQBycG$nBy" resolve="ParamTypesNodes" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="33vP2l" id="6$MmqWfmbi$" role="1ajl9A">
                                  <node concept="2c44te" id="6$MmqWfmbiO" role="lGtFl">
                                    <node concept="1Ft4W6" id="6$MmqWfmbTi" role="2c44t1">
                                      <node concept="a7P8L" id="6$MmqWfmbTh" role="1FtiSR">
                                        <ref role="a7OzE" node="6$MmqWfm96E" resolve="ResultTypeNode" />
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
      </node>
    </node>
  </node>
  <node concept="ns1xd" id="4E290qPYB4i">
    <property role="TrG5h" value="ClosureTerms" />
    <node concept="ns1x$" id="4lCLOtwq2MF" role="ns1xc">
      <property role="TrG5h" value="type" />
      <property role="3uGXoX" value="true" />
      <node concept="nspSf" id="4lCLOtwq2MG" role="ns1xx" />
    </node>
    <node concept="ns1x$" id="6$MmqWflYd6" role="ns1xc">
      <property role="TrG5h" value="function" />
      <ref role="ns1xW" node="4lCLOtwq2MF" resolve="type" />
      <node concept="nspSf" id="6$MmqWflYd7" role="ns1xx">
        <node concept="nstbe" id="6$MmqWflYdg" role="nspSe">
          <property role="TrG5h" value="result" />
        </node>
        <node concept="nsiOd" id="6$MmqWflYdw" role="nspSe">
          <property role="TrG5h" value="params" />
        </node>
      </node>
    </node>
  </node>
  <node concept="AVZre" id="6$MmqWfm_Qc">
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="ConversionFunction" />
    <ref role="2YbDB9" to="kqnc:24Vro6cM_J$" resolve="ConversionMain" />
    <node concept="3AqmO8" id="6$MmqWfmATa" role="8PkJo">
      <property role="TrG5h" value="convertsLists" />
      <node concept="1zAUYm" id="6$MmqWfmATh" role="1zAUyy">
        <property role="TrG5h" value="left" />
        <node concept="VbTHi" id="6$MmqWfmATm" role="3gTf24" />
      </node>
      <node concept="1zAUYm" id="6$MmqWfmATp" role="1zAUyy">
        <property role="TrG5h" value="right" />
        <node concept="VbTHi" id="6$MmqWfmATw" role="3gTf24" />
      </node>
    </node>
    <node concept="1nLNMY" id="6$MmqWfm_Qd" role="1nK1Vg">
      <property role="TrG5h" value="convertsTo_functionType" />
      <node concept="3clFbS" id="6$MmqWfm_Qe" role="1nLNMH">
        <node concept="1nLNNL" id="6$MmqWfm_Ql" role="3cqZAp">
          <node concept="1nLNMm" id="6$MmqWfm_Qn" role="1nLNNK">
            <node concept="3Aq93q" id="6$MmqWfm_Uv" role="1nLNMb">
              <node concept="3I6sU6" id="6$MmqWfm_Uw" role="3Ip0Jz">
                <node concept="3I6s7M" id="6$MmqWfmA9c" role="3I6sU7">
                  <node concept="3Aqt3T" id="6$MmqWfmA9b" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="convertsTo" />
                    <node concept="1HFMs5" id="6$MmqWfmA9k" role="3AunhB">
                      <node concept="a7P8L" id="6$MmqWfmA9h" role="1uarlU">
                        <ref role="a7OzE" node="6$MmqWfm_Qu" resolve="FunL" />
                      </node>
                      <node concept="ns1u0" id="6$MmqWfmA9w" role="1uarlW">
                        <ref role="ns1xF" node="6$MmqWflYd6" resolve="function" />
                        <node concept="nsMwS" id="6$MmqWfmA9y" role="ns1xD">
                          <ref role="nsMwP" node="6$MmqWflYdw" resolve="params" />
                          <node concept="1nq8_$" id="6$MmqWfmA9B" role="nsMwV">
                            <node concept="a7P8L" id="6$MmqWfmA9A" role="1nq8_t">
                              <ref role="a7OzE" node="6$MmqWfm_Rk" resolve="ParamsL" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="6$MmqWfmAOi" role="ns1xD">
                          <ref role="nsMwP" node="6$MmqWflYdg" resolve="result" />
                          <node concept="1nq8_$" id="6$MmqWfmAOq" role="nsMwV">
                            <node concept="a7P8L" id="6$MmqWfmAOp" role="1nq8_t">
                              <ref role="a7OzE" node="6$MmqWfm_Tg" resolve="ResL" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1HFMs5" id="6$MmqWfmAP5" role="3AunhB">
                      <node concept="a7P8L" id="6$MmqWfmAOM" role="1uarlU">
                        <ref role="a7OzE" node="6$MmqWfm_QO" resolve="FunR" />
                      </node>
                      <node concept="ns1u0" id="6$MmqWfmAPx" role="1uarlW">
                        <ref role="ns1xF" node="6$MmqWflYd6" resolve="function" />
                        <node concept="nsMwS" id="6$MmqWfmAPz" role="ns1xD">
                          <ref role="nsMwP" node="6$MmqWflYdw" resolve="params" />
                          <node concept="1nq8_$" id="6$MmqWfmAPC" role="nsMwV">
                            <node concept="a7P8L" id="6$MmqWfmAPB" role="1nq8_t">
                              <ref role="a7OzE" node="6$MmqWfm_SL" resolve="ParamsR" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="6$MmqWfmAPF" role="ns1xD">
                          <ref role="nsMwP" node="6$MmqWflYdg" resolve="result" />
                          <node concept="1nq8_$" id="6$MmqWfmAPX" role="nsMwV">
                            <node concept="a7P8L" id="6$MmqWfmAPW" role="1nq8_t">
                              <ref role="a7OzE" node="6$MmqWfm_TR" resolve="ResR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="6$MmqWfm_Qt" role="0Rg$4">
              <node concept="aZer4" id="6$MmqWfm_Qu" role="3XD1gS">
                <property role="TrG5h" value="FunL" />
              </node>
              <node concept="aZer4" id="6$MmqWfm_QO" role="3XD1gS">
                <property role="TrG5h" value="FunR" />
              </node>
              <node concept="aZer4" id="6$MmqWfm_Tg" role="3XD1gS">
                <property role="TrG5h" value="ResL" />
              </node>
              <node concept="aZer4" id="6$MmqWfm_TR" role="3XD1gS">
                <property role="TrG5h" value="ResR" />
              </node>
              <node concept="32pEOW" id="6$MmqWfm_QE" role="3vLBG7" />
            </node>
            <node concept="3NuqgR" id="6$MmqWfm_Rj" role="0Rg$4">
              <node concept="aZer4" id="6$MmqWfm_Rk" role="3XD1gS">
                <property role="TrG5h" value="ParamsL" />
              </node>
              <node concept="aZer4" id="6$MmqWfm_SL" role="3XD1gS">
                <property role="TrG5h" value="ParamsR" />
              </node>
              <node concept="VbTHi" id="6$MmqWfm_R$" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="6$MmqWfmAQa" role="3xSepv">
              <node concept="3Aq9E8" id="6$MmqWfmAQb" role="3xSepj">
                <node concept="3I6sU6" id="6$MmqWfmAQc" role="3Ip0Jz">
                  <node concept="3I6s7M" id="6$MmqWfmAQi" role="3I6sU7">
                    <node concept="3Aqt3T" id="6$MmqWfmAR5" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:ONSj15RYDg" resolve="compatibleWith" />
                      <node concept="a7P8L" id="6$MmqWfmARa" role="3AunhB">
                        <ref role="a7OzE" node="6$MmqWfm_Tg" resolve="ResL" />
                      </node>
                      <node concept="a7P8L" id="6$MmqWfmARk" role="3AunhB">
                        <ref role="a7OzE" node="6$MmqWfm_TR" resolve="ResR" />
                      </node>
                    </node>
                  </node>
                  <node concept="3I6s7M" id="6$MmqWfmAT_" role="3I6sU7">
                    <node concept="3Aqt3T" id="6$MmqWfmATz" role="3I6s78">
                      <ref role="3AqCNq" node="6$MmqWfmATa" resolve="convertsLists" />
                      <node concept="a7P8L" id="6$MmqWfmBap" role="3AunhB">
                        <ref role="a7OzE" node="6$MmqWfm_SL" resolve="ParamsR" />
                      </node>
                      <node concept="a7P8L" id="6$MmqWfmBcJ" role="3AunhB">
                        <ref role="a7OzE" node="6$MmqWfm_Rk" resolve="ParamsL" />
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
    <node concept="1nLNMY" id="6$MmqWfmARy" role="1nK1Vg">
      <property role="TrG5h" value="convertsLists_induction" />
      <node concept="3clFbS" id="6$MmqWfmARz" role="1nLNMH">
        <node concept="1nLNNL" id="6$MmqWfmASi" role="3cqZAp">
          <node concept="1nLNMm" id="6$MmqWfmASj" role="1nLNNK">
            <node concept="3Aq93q" id="6$MmqWfmAT6" role="1nLNMb">
              <node concept="3I6sU6" id="6$MmqWfmAT7" role="3Ip0Jz">
                <node concept="3I6s7M" id="6$MmqWfmAWl" role="3I6sU7">
                  <node concept="3Aqt3T" id="6$MmqWfmAWk" role="3I6s78">
                    <ref role="3AqCNq" node="6$MmqWfmATa" resolve="convertsLists" />
                    <node concept="1HFMs5" id="6$MmqWfmB1J" role="3AunhB">
                      <node concept="a7P8L" id="6$MmqWfmB1F" role="1uarlU">
                        <ref role="a7OzE" node="6$MmqWfmASo" resolve="L" />
                      </node>
                      <node concept="Hz6ka" id="6$MmqWfmB2m" role="1uarlW">
                        <node concept="1Pxxm1" id="6$MmqWfmB2v" role="Hz6kd">
                          <node concept="3wAshV" id="6$MmqWfmB8p" role="1Pxxm0">
                            <node concept="a7P8L" id="6$MmqWfmB8o" role="3wAq21">
                              <ref role="a7OzE" node="6$MmqWfmB71" resolve="LHead" />
                            </node>
                          </node>
                          <node concept="3wAshV" id="6$MmqWfmB8y" role="1Pxxm2">
                            <node concept="a7P8L" id="6$MmqWfmB8x" role="3wAq21">
                              <ref role="a7OzE" node="6$MmqWfmB5c" resolve="LTail" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1HFMs5" id="6$MmqWfmB8F" role="3AunhB">
                      <node concept="a7P8L" id="6$MmqWfmAYc" role="1uarlU">
                        <ref role="a7OzE" node="6$MmqWfmASI" resolve="R" />
                      </node>
                      <node concept="Hz6ka" id="6$MmqWfmB9m" role="1uarlW">
                        <node concept="1Pxxm1" id="6$MmqWfmB9q" role="Hz6kd">
                          <node concept="3wAshV" id="6$MmqWfmB9t" role="1Pxxm2">
                            <node concept="a7P8L" id="6$MmqWfmB9I" role="3wAq21">
                              <ref role="a7OzE" node="6$MmqWfmB62" resolve="RTail" />
                            </node>
                          </node>
                          <node concept="3wAshV" id="6$MmqWfmB9A" role="1Pxxm0">
                            <node concept="a7P8L" id="6$MmqWfmB9_" role="3wAq21">
                              <ref role="a7OzE" node="6$MmqWfmB7$" resolve="RHead" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="6$MmqWfmASn" role="0Rg$4">
              <node concept="aZer4" id="6$MmqWfmASo" role="3XD1gS">
                <property role="TrG5h" value="L" />
              </node>
              <node concept="aZer4" id="6$MmqWfmASI" role="3XD1gS">
                <property role="TrG5h" value="R" />
              </node>
              <node concept="aZer4" id="6$MmqWfmB5c" role="3XD1gS">
                <property role="TrG5h" value="LTail" />
              </node>
              <node concept="aZer4" id="6$MmqWfmB62" role="3XD1gS">
                <property role="TrG5h" value="RTail" />
              </node>
              <node concept="VbTHi" id="6$MmqWfmAS$" role="3vLBG7" />
            </node>
            <node concept="3NuqgR" id="6$MmqWfmB70" role="0Rg$4">
              <node concept="aZer4" id="6$MmqWfmB71" role="3XD1gS">
                <property role="TrG5h" value="LHead" />
              </node>
              <node concept="aZer4" id="6$MmqWfmB7$" role="3XD1gS">
                <property role="TrG5h" value="RHead" />
              </node>
              <node concept="32pEOW" id="6$MmqWfmB7j" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="6$MmqWfmAYE" role="3xSepv">
              <node concept="3Aq9E8" id="6$MmqWfmAYF" role="3xSepj">
                <node concept="3I6sU6" id="6$MmqWfmAYG" role="3Ip0Jz">
                  <node concept="3I6s7M" id="6$MmqWfmBa2" role="3I6sU7">
                    <node concept="3Aqt3T" id="6$MmqWfmBa1" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="convertsTo" />
                      <node concept="a7P8L" id="6$MmqWfmBa7" role="3AunhB">
                        <ref role="a7OzE" node="6$MmqWfmB71" resolve="LHead" />
                      </node>
                      <node concept="a7P8L" id="6$MmqWfmBah" role="3AunhB">
                        <ref role="a7OzE" node="6$MmqWfmB7$" resolve="RHead" />
                      </node>
                    </node>
                  </node>
                  <node concept="3I6s7M" id="6$MmqWfmBhZ" role="3I6sU7">
                    <node concept="3Aqt3T" id="6$MmqWfmBhX" role="3I6s78">
                      <ref role="3AqCNq" node="6$MmqWfmATa" resolve="convertsLists" />
                      <node concept="a7P8L" id="6$MmqWfmBia" role="3AunhB">
                        <ref role="a7OzE" node="6$MmqWfmB5c" resolve="LTail" />
                      </node>
                      <node concept="a7P8L" id="6$MmqWfmBiL" role="3AunhB">
                        <ref role="a7OzE" node="6$MmqWfmB62" resolve="RTail" />
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
    <node concept="1nLNMY" id="6$MmqWfmBjk" role="1nK1Vg">
      <property role="TrG5h" value="convertsLists_trivial" />
      <node concept="3clFbS" id="6$MmqWfmBjl" role="1nLNMH">
        <node concept="1nLNNL" id="6$MmqWfmBjm" role="3cqZAp">
          <node concept="1nLNMm" id="6$MmqWfmBjn" role="1nLNNK">
            <node concept="3Aq93q" id="6$MmqWfmBjo" role="1nLNMb">
              <node concept="3I6sU6" id="6$MmqWfmBjp" role="3Ip0Jz">
                <node concept="3I6s7M" id="6$MmqWfmBjq" role="3I6sU7">
                  <node concept="3Aqt3T" id="6$MmqWfmBjr" role="3I6s78">
                    <ref role="3AqCNq" node="6$MmqWfmATa" resolve="convertsLists" />
                    <node concept="1HFMs5" id="6$MmqWfmBjs" role="3AunhB">
                      <node concept="a7P8L" id="6$MmqWfmBjt" role="1uarlU">
                        <ref role="a7OzE" node="6$MmqWfmBjH" resolve="L" />
                      </node>
                      <node concept="Hz6ka" id="6$MmqWfmBju" role="1uarlW">
                        <node concept="KCUsM" id="6$MmqWfmBri" role="Hz6kd" />
                      </node>
                    </node>
                    <node concept="1HFMs5" id="6$MmqWfmBj$" role="3AunhB">
                      <node concept="a7P8L" id="6$MmqWfmBj_" role="1uarlU">
                        <ref role="a7OzE" node="6$MmqWfmBjI" resolve="R" />
                      </node>
                      <node concept="Hz6ka" id="6$MmqWfmBjA" role="1uarlW">
                        <node concept="KCUsM" id="6$MmqWfmBrS" role="Hz6kd" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="6$MmqWfmBjG" role="0Rg$4">
              <node concept="aZer4" id="6$MmqWfmBjH" role="3XD1gS">
                <property role="TrG5h" value="L" />
              </node>
              <node concept="aZer4" id="6$MmqWfmBjI" role="3XD1gS">
                <property role="TrG5h" value="R" />
              </node>
              <node concept="VbTHi" id="6$MmqWfmBjL" role="3vLBG7" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MmqWfmBwC" role="1nK1Vg">
      <property role="TrG5h" value="convertsLists_default" />
      <node concept="3clFbS" id="6$MmqWfmBwD" role="1nLNMH">
        <node concept="1nLNNL" id="6$MmqWfmBwE" role="3cqZAp">
          <node concept="1nLNMm" id="6$MmqWfmBwF" role="1nLNNK">
            <node concept="3Aq93q" id="6$MmqWfmBwG" role="1nLNMb">
              <node concept="3I6sU6" id="6$MmqWfmBwH" role="3Ip0Jz">
                <node concept="3I6s7M" id="6$MmqWfmBwI" role="3I6sU7">
                  <node concept="3Aqt3T" id="6$MmqWfmBwJ" role="3I6s78">
                    <ref role="3AqCNq" node="6$MmqWfmATa" resolve="convertsLists" />
                    <node concept="a7P8L" id="6$MmqWfmBwL" role="3AunhB">
                      <ref role="a7OzE" node="6$MmqWfmBwT" resolve="L" />
                    </node>
                    <node concept="a7P8L" id="6$MmqWfmBwP" role="3AunhB">
                      <ref role="a7OzE" node="6$MmqWfmBwU" resolve="R" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="6$MmqWfmBwS" role="0Rg$4">
              <node concept="aZer4" id="6$MmqWfmBwT" role="3XD1gS">
                <property role="TrG5h" value="L" />
              </node>
              <node concept="aZer4" id="6$MmqWfmBwU" role="3XD1gS">
                <property role="TrG5h" value="R" />
              </node>
              <node concept="VbTHi" id="6$MmqWfmBwX" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="6$MmqWfmBDk" role="3xSepv">
              <node concept="3Aq9E8" id="6$MmqWfmBDl" role="3xSepj">
                <node concept="3I6sU6" id="6$MmqWfmBDm" role="3Ip0Jz">
                  <node concept="3I6s7M" id="6$MmqWfmBDr" role="3I6sU7">
                    <node concept="1lHd6T" id="6$MmqWfmBDq" role="3I6s78">
                      <property role="1lHdp1" value="4jcOV4hu0n_/ERROR" />
                      <node concept="Xl_RD" id="6$MmqWfmBDu" role="1ljv2e">
                        <property role="Xl_RC" value="lengths differ" />
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
</model>

