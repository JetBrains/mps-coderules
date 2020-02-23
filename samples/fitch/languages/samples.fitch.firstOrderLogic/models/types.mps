<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a40f7100-fd07-4b1c-98c5-112d92c92128(samples.fitch.firstOrderLogic.types)">
  <persistence version="9" />
  <languages>
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules" version="20" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="7" />
    <use id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" version="0" />
    <engage id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="6r1k" ref="r:30d249b0-c2b0-4934-8bd8-e1d7a37c3b3b(samples.fitch.propositionalLogic.types)" />
    <import index="f3ld" ref="r:30efdd3a-609b-4e7b-a8f2-60af62d5341f(samples.fitch.types)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="yhz9" ref="r:72b177ed-1924-4265-b8f3-64e062fd2eed(samples.fitch.firstOrderLogic.structure)" />
    <import index="jfgh" ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(samples.fitch.structure)" />
    <import index="bw37" ref="r:faa478da-573c-4c9e-99e4-b87297289505(samples.fitch.herbrandLogic.structure)" />
    <import index="fxy1" ref="r:2e585daf-c5c7-4735-a41f-b2044cd9b207(samples.fitch.herbrandLogic.types)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1235746970280" name="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression" flags="nn" index="2Sg_IR">
        <child id="1235746996653" name="function" index="2SgG2M" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
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
      </concept>
      <concept id="8829335963591530299" name="jetbrains.mps.logic.structure.ExpressionLogicalVariable" flags="ng" index="aZ4PW">
        <child id="8829335963591530990" name="expression" index="aZ4eD" />
      </concept>
      <concept id="8829335963591572611" name="jetbrains.mps.logic.structure.LogicalVariableDeclaration" flags="ng" index="aZer4" />
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
      <concept id="861509610434276453" name="jetbrains.mps.logic.structure.DataFormFeature" flags="ng" index="nspS8">
        <property id="861509610434276456" name="final" index="nspS5" />
      </concept>
      <concept id="861509610434276450" name="jetbrains.mps.logic.structure.DataFormTemplate" flags="ng" index="nspSf">
        <child id="861509610434276451" name="feature" index="nspSe" />
      </concept>
      <concept id="861509610434289827" name="jetbrains.mps.logic.structure.ChildFeature" flags="ng" index="nstbe" />
      <concept id="861509610434435669" name="jetbrains.mps.logic.structure.DataFormFeatureOverride" flags="ng" index="nsMwS">
        <reference id="861509610434435672" name="feature" index="nsMwP" />
        <child id="861509610434435670" name="getter" index="nsMwV" />
      </concept>
      <concept id="2381360340662937504" name="jetbrains.mps.logic.structure.TermType" flags="ig" index="32pEOW" />
      <concept id="4780620083400582599" name="jetbrains.mps.logic.structure.LogicalItemExpression" flags="ng" index="1nq8_$">
        <child id="4780620083400582654" name="logical" index="1nq8_t" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1171391069720" name="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation" flags="nn" index="2WmjW8" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules">
      <concept id="1618328391714763069" name="jetbrains.mps.lang.coderules.structure.MacroTable" flags="ng" index="0oKg$">
        <child id="1618328391714763070" name="macro" index="0oKgB" />
      </concept>
      <concept id="1618328391714763491" name="jetbrains.mps.lang.coderules.structure.MacroDeclaration" flags="ng" index="0oKvU">
        <child id="7670825977262353027" name="input" index="3eYTkm" />
        <child id="8908809128802132746" name="parameter" index="3tC56T" />
        <child id="8908809128801952514" name="body" index="3unh6L" />
      </concept>
      <concept id="6691972578451976398" name="jetbrains.mps.lang.coderules.structure.RuleInputSpecification" flags="ng" index="2t___k">
        <reference id="6691972578451990912" name="applicableConcept" index="2t_S0q" />
        <child id="6691972578451986151" name="input" index="2t_VXX" />
      </concept>
      <concept id="8335224865066015764" name="jetbrains.mps.lang.coderules.structure.RulesList" flags="ng" index="AVZre">
        <reference id="3541122455446356437" name="extends" index="2YbDB9" />
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
      <concept id="7248331023826941335" name="jetbrains.mps.lang.coderules.structure.AssertExpressionConstraint" flags="ng" index="3lcGGY" />
      <concept id="3923391191348208850" name="jetbrains.mps.lang.coderules.structure.Substitution" flags="ng" index="1lh$Hi">
        <child id="3923391191348208863" name="origin" index="1lh$Hv" />
        <child id="3923391191348208865" name="replacement" index="1lh$Hx" />
        <child id="3923391191348208868" name="pattern" index="1lh$H$" />
      </concept>
      <concept id="4957570047283823112" name="jetbrains.mps.lang.coderules.structure.ProvideFeedbackConstraint" flags="ng" index="1lHd6T">
        <property id="4957570047283824112" name="severity" index="1lHdp1" />
        <child id="4957570047284421439" name="message" index="1ljv2e" />
      </concept>
      <concept id="3575255234174969639" name="jetbrains.mps.lang.coderules.structure.ConstraintRule" flags="ng" index="1nLNMm">
        <child id="4814011019633607808" name="parameter" index="0Rg$4" />
        <child id="3575255234174969659" name="guard" index="1nLNMa" />
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
        <child id="8908809128801951594" name="parameter" index="3uniRp" />
        <child id="8908809128801951592" name="code" index="3uniRr" />
      </concept>
      <concept id="8908809128801951597" name="jetbrains.mps.lang.coderules.structure.MacroBodyLogicalDeclaration" flags="ng" index="3uniRu" />
      <concept id="5372587443968979218" name="jetbrains.mps.lang.coderules.structure.ExpressionConstraint" flags="ng" index="3wWvb2">
        <child id="5372587443968983820" name="expression" index="3wWo3s" />
      </concept>
      <concept id="7674753015762572646" name="jetbrains.mps.lang.coderules.structure.BodyBlock" flags="ng" index="3xSepi">
        <child id="7674753015762572647" name="body" index="3xSepj" />
      </concept>
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
      <concept id="7368070394766966158" name="jetbrains.mps.lang.coderules.structure.Guard" flags="ng" index="3Aq9_M" />
      <concept id="7368070394766966388" name="jetbrains.mps.lang.coderules.structure.Body" flags="ng" index="3Aq9E8" />
      <concept id="7368070394766978092" name="jetbrains.mps.lang.coderules.structure.EmitConstraintStatement" flags="ng" index="3Aqczg">
        <child id="7368070394767031348" name="constraint" index="3Aqpz8" />
      </concept>
      <concept id="7368070394767045637" name="jetbrains.mps.lang.coderules.structure.UserConstraint" flags="ng" index="3Aqt3T">
        <reference id="7368070394767091750" name="template" index="3AqCNq" />
        <child id="7368070394768117915" name="argument" index="3AunhB" />
      </concept>
      <concept id="1476354154047570702" name="jetbrains.mps.lang.coderules.structure.CodeBlock" flags="ng" index="3AO9d9">
        <child id="535508562359074271" name="code" index="16YjZG" />
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
    </language>
  </registry>
  <node concept="0oKg$" id="3w0n0hzlX8o">
    <property role="TrG5h" value="Terms" />
    <node concept="0oKvU" id="3w0n0hzlX8p" role="0oKgB">
      <property role="TrG5h" value="Equality" />
      <node concept="3tC51N" id="3w0n0hzlX8_" role="3tC56T">
        <property role="TrG5h" value="left" />
        <node concept="3Tqbb2" id="3w0n0hzlX8D" role="3tC51t">
          <ref role="ehGHo" to="bw37:2DPo4JTRwsJ" resolve="Term" />
        </node>
        <node concept="3tHm6F" id="3w0n0hzlX8O" role="3tH6H5">
          <node concept="3clFbS" id="3w0n0hzlX8P" role="16YjZG">
            <node concept="3clFbF" id="3w0n0hzlX91" role="3cqZAp">
              <node concept="2OqwBi" id="3w0n0hzlXj8" role="3clFbG">
                <node concept="3eTFj6" id="3w0n0hzlX90" role="2Oq$k0">
                  <ref role="3eTFj1" node="3w0n0hzlX8q" resolve="eq" />
                </node>
                <node concept="3TrEf2" id="3w0n0hzlXx_" role="2OqNvi">
                  <ref role="3Tt5mk" to="yhz9:3w0n0hzkQZl" resolve="left" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3tC51N" id="3w0n0hzlX$8" role="3tC56T">
        <property role="TrG5h" value="right" />
        <node concept="3Tqbb2" id="3w0n0hzlX$k" role="3tC51t">
          <ref role="ehGHo" to="bw37:2DPo4JTRwsJ" resolve="Term" />
        </node>
        <node concept="3tHm6F" id="3w0n0hzlX$n" role="3tH6H5">
          <node concept="3clFbS" id="3w0n0hzlX$o" role="16YjZG">
            <node concept="3clFbF" id="3w0n0hzlX$$" role="3cqZAp">
              <node concept="2OqwBi" id="3w0n0hzlY0N" role="3clFbG">
                <node concept="3eTFj6" id="3w0n0hzlX$z" role="2Oq$k0">
                  <ref role="3eTFj1" node="3w0n0hzlX8q" resolve="eq" />
                </node>
                <node concept="3TrEf2" id="3w0n0hzlYfc" role="2OqNvi">
                  <ref role="3Tt5mk" to="yhz9:3w0n0hzkQZn" resolve="right" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eYOCq" id="3w0n0hzlX8q" role="3eYTkm">
        <property role="TrG5h" value="eq" />
        <node concept="3Tqbb2" id="3w0n0hzlX8r" role="3eYSA1">
          <ref role="ehGHo" to="yhz9:3w0n0hzkQZb" resolve="Equality" />
        </node>
      </node>
      <node concept="3uniRm" id="3w0n0hzlYhx" role="3unh6L">
        <node concept="3clFbS" id="3w0n0hzlYhB" role="3uniRr">
          <node concept="3Aqczg" id="3w0n0hzlYhA" role="3cqZAp">
            <node concept="1imXTs" id="3w0n0hzlYhz" role="3Aqpz8">
              <node concept="a7P8L" id="3w0n0hzlYi8" role="1imXu6">
                <ref role="a7OzE" node="3w0n0hzlYhK" resolve="Left" />
              </node>
              <node concept="3tDTZT" id="3w0n0hzlYid" role="1imXSf">
                <ref role="3tDTNw" node="3w0n0hzlX8_" resolve="left" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="3w0n0hzlYii" role="3cqZAp">
            <node concept="1imXTs" id="3w0n0hzlYij" role="3Aqpz8">
              <node concept="a7P8L" id="3w0n0hzlYiy" role="1imXu6">
                <ref role="a7OzE" node="3w0n0hzlYhT" resolve="Right" />
              </node>
              <node concept="3tDTZT" id="3w0n0hzlYiG" role="1imXSf">
                <ref role="3tDTNw" node="3w0n0hzlX$8" resolve="right" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="3w0n0hzlYj1" role="3cqZAp">
            <node concept="3A8Hvi" id="5TfjU0xtN57" role="3Aqpz8">
              <node concept="aZ4PW" id="3w0n0hzlYje" role="3A8wtg">
                <node concept="3txIi4" id="3w0n0hzlYjk" role="aZ4eD" />
              </node>
              <node concept="ns1u0" id="7VBaGntKJ8V" role="3A8w4Q">
                <ref role="ns1xF" node="7VBaGntKJ6C" resolve="Equality" />
                <node concept="nsMwS" id="7VBaGntKJ8W" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ6E" resolve="left" />
                  <node concept="1nq8_$" id="3w0n0hzlYjG" role="nsMwV">
                    <node concept="a7P8L" id="3w0n0hzlYjF" role="1nq8_t">
                      <ref role="a7OzE" node="3w0n0hzlYhK" resolve="Left" />
                    </node>
                  </node>
                </node>
                <node concept="nsMwS" id="7VBaGntKJ8X" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ6F" resolve="right" />
                  <node concept="1nq8_$" id="3w0n0hzlYwu" role="nsMwV">
                    <node concept="a7P8L" id="3w0n0hzlYwt" role="1nq8_t">
                      <ref role="a7OzE" node="3w0n0hzlYhT" resolve="Right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uniRu" id="3w0n0hzlYhJ" role="3uniRp">
          <node concept="aZer4" id="3w0n0hzlYhK" role="3XD1gS">
            <property role="TrG5h" value="Left" />
          </node>
          <node concept="aZer4" id="3w0n0hzlYhT" role="3XD1gS">
            <property role="TrG5h" value="Right" />
          </node>
          <node concept="32pEOW" id="24ciDNzxNvl" role="3vLBG7" />
        </node>
      </node>
    </node>
  </node>
  <node concept="AVZre" id="3w0n0hzm35U">
    <property role="TrG5h" value="FOReasoning" />
    <ref role="2YbDB9" to="6r1k:5RfK0kxl_zr" resolve="PropReasoning" />
    <node concept="1nLNMY" id="6$MtiK8GZNe" role="1nK1Vg">
      <property role="TrG5h" value="equalityIntroConclusion" />
      <node concept="3clFbS" id="6$MtiK8GZNf" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8GZNg" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8GZNh" role="1nLNNK">
            <node concept="3NuqgR" id="3w0n0hzminr" role="0Rg$4">
              <node concept="aZer4" id="3w0n0hzmins" role="3XD1gS">
                <property role="TrG5h" value="Stc" />
              </node>
              <node concept="32pEOW" id="24ciDNzxNvm" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="6E2cNicdh85" role="3xSepv">
              <node concept="3Aq9E8" id="3w0n0hzmfKd" role="3xSepj">
                <node concept="3I6sU6" id="3w0n0hzmfKe" role="3Ip0Jz">
                  <node concept="3I6s7M" id="3w0n0hzminh" role="3I6sU7">
                    <node concept="1imXTs" id="3w0n0hzminb" role="3I6s78">
                      <node concept="a7P8L" id="3w0n0hzmin_" role="1imXu6">
                        <ref role="a7OzE" node="3w0n0hzmins" resolve="Stc" />
                      </node>
                      <node concept="2OqwBi" id="3w0n0hzmixe" role="1imXSf">
                        <node concept="3A2sRY" id="3w0n0hzminE" role="2Oq$k0">
                          <ref role="3A2yKK" node="3w0n0hzmfJX" resolve="eqi" />
                        </node>
                        <node concept="3TrEf2" id="3w0n0hzmj0X" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3I6s7M" id="3w0n0hzmfKi" role="3I6sU7">
                    <node concept="3Aqt3T" id="3w0n0hzmfKh" role="3I6s78">
                      <ref role="3AqCNq" to="6r1k:2aBGSFgfwNi" resolve="conclusion" />
                      <node concept="a7P8L" id="3w0n0hzmj3I" role="3AunhB">
                        <ref role="a7OzE" node="3w0n0hzmins" resolve="Stc" />
                      </node>
                      <node concept="37jhX" id="1TH_SRmhqyY" role="3AunhB">
                        <node concept="3A2sRY" id="3w0n0hzmj3Y" role="37jj2">
                          <ref role="3A2yKK" node="3w0n0hzmfJX" resolve="eqi" />
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
      <node concept="2t___k" id="3w0n0hzmfJW" role="1nLNMg">
        <ref role="2t_S0q" to="yhz9:3w0n0hzkQ4g" resolve="EqualityIntro" />
        <node concept="3A20r5" id="3w0n0hzmfJX" role="2t_VXX">
          <property role="TrG5h" value="eqi" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8GZNi" role="1nK1Vg">
      <property role="TrG5h" value="equalityIntro" />
      <node concept="3clFbS" id="6$MtiK8GZNj" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8GZNk" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8GZNl" role="1nLNNK">
            <node concept="3Aq93q" id="3w0n0hzmj46" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="3w0n0hzmj47" role="3Ip0Jz">
                <node concept="3I6s7M" id="3w0n0hzmj4s" role="3I6sU7">
                  <node concept="3Aqt3T" id="3w0n0hzmj4r" role="3I6s78">
                    <ref role="3AqCNq" to="6r1k:2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKIM7" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJ94" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ6C" resolve="Equality" />
                        <node concept="nsMwS" id="7VBaGntKJ95" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ6E" resolve="left" />
                          <node concept="1nq8_$" id="3w0n0hzmj5J" role="nsMwV">
                            <node concept="a7P8L" id="3w0n0hzmj5I" role="1nq8_t">
                              <ref role="a7OzE" node="3w0n0hzmj4c" resolve="Term" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJ96" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ6F" resolve="right" />
                          <node concept="1nq8_$" id="3w0n0hzmjcz" role="nsMwV">
                            <node concept="a7P8L" id="2gcGVmG$Rdc" role="1nq8_t">
                              <ref role="a7OzE" node="3w0n0hzmj4c" resolve="Term" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="3w0n0hzmj4O" role="1uarlU">
                        <ref role="a7OzE" node="3w0n0hzmj4x" resolve="Con" />
                      </node>
                    </node>
                    <node concept="37jhX" id="1TH_SRmhqyZ" role="3AunhB">
                      <node concept="3A2sRY" id="3w0n0hzmjf9" role="37jj2">
                        <ref role="3A2yKK" node="3w0n0hzm360" resolve="eqi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="3w0n0hzmj4b" role="0Rg$4">
              <node concept="aZer4" id="3w0n0hzmj4x" role="3XD1gS">
                <property role="TrG5h" value="Con" />
              </node>
              <node concept="aZer4" id="3w0n0hzmj4c" role="3XD1gS">
                <property role="TrG5h" value="Term" />
              </node>
              <node concept="32pEOW" id="24ciDNzxNvn" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="6E2cNicdh86" role="3xSepv">
              <node concept="3Aq9E8" id="3w0n0hzm36f" role="3xSepj">
                <node concept="3I6sU6" id="3w0n0hzm36g" role="3Ip0Jz">
                  <node concept="3I6s7M" id="3w0n0hzm3dC" role="3I6sU7">
                    <node concept="3Aqt3T" id="3w0n0hzm3dB" role="3I6s78">
                      <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                      <node concept="37jhX" id="1TH_SRmhqz0" role="3AunhB">
                        <node concept="3A2sRY" id="3w0n0hzm3dQ" role="37jj2">
                          <ref role="3A2yKK" node="3w0n0hzm360" resolve="eqi" />
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
      <node concept="2t___k" id="3w0n0hzm35Z" role="1nLNMg">
        <ref role="2t_S0q" to="yhz9:3w0n0hzkQ4g" resolve="EqualityIntro" />
        <node concept="3A20r5" id="3w0n0hzm360" role="2t_VXX">
          <property role="TrG5h" value="eqi" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8GZNm" role="1nK1Vg">
      <property role="TrG5h" value="equalityElimLeft" />
      <node concept="2t___k" id="3w0n0hzm3el" role="1nLNMg">
        <ref role="2t_S0q" to="yhz9:3w0n0hzkQ4j" resolve="EqualityElim" />
        <node concept="3A20r5" id="3w0n0hzm3em" role="2t_VXX">
          <property role="TrG5h" value="eqe" />
        </node>
      </node>
      <node concept="3clFbS" id="3c$Di5ODBhY" role="1nLNMH">
        <node concept="3clFbJ" id="3c$Di5ODBhZ" role="3cqZAp">
          <node concept="3clFbS" id="6$MtiK8GZNn" role="3clFbx">
            <node concept="3cpWs8" id="6$MtiK8GZNo" role="3cqZAp">
              <node concept="3cpWsn" id="3w0n0hzmrNy" role="3cpWs9">
                <property role="TrG5h" value="replOk" />
                <node concept="10P_77" id="3w0n0hzmrNN" role="1tU5fm" />
                <node concept="2Sg_IR" id="6$MtiK8GZNq" role="33vP2m">
                  <node concept="1bVj0M" id="6$MtiK8GZNr" role="2SgG2M">
                    <node concept="3clFbS" id="3w0n0hzmrN$" role="1bW5cS">
                      <node concept="3SKdUt" id="3w0n0hzmrPc" role="3cqZAp">
                        <node concept="1PaTwC" id="589APehYw$u" role="3ndbpf">
                          <node concept="3oM_SD" id="589APehYw$v" role="1PaTwD">
                            <property role="3oM_SC" value="&quot;replacement" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$w" role="1PaTwD">
                            <property role="3oM_SC" value="must" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$x" role="1PaTwD">
                            <property role="3oM_SC" value="be" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$y" role="1PaTwD">
                            <property role="3oM_SC" value="substitutable" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$z" role="1PaTwD">
                            <property role="3oM_SC" value="for" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$$" role="1PaTwD">
                            <property role="3oM_SC" value="the" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$_" role="1PaTwD">
                            <property role="3oM_SC" value="term" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$A" role="1PaTwD">
                            <property role="3oM_SC" value="being" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$B" role="1PaTwD">
                            <property role="3oM_SC" value="replaced&quot;" />
                          </node>
                        </node>
                      </node>
                      <node concept="3SKdUt" id="2CF5XF5uYm8" role="3cqZAp">
                        <node concept="1PaTwC" id="589APehYw$C" role="3ndbpf">
                          <node concept="3oM_SD" id="589APehYw$D" role="1PaTwD">
                            <property role="3oM_SC" value="&quot;a" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$E" role="1PaTwD">
                            <property role="3oM_SC" value="term" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$F" role="1PaTwD">
                            <property role="3oM_SC" value="t" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$G" role="1PaTwD">
                            <property role="3oM_SC" value="is" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$H" role="1PaTwD">
                            <property role="3oM_SC" value="free" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$I" role="1PaTwD">
                            <property role="3oM_SC" value="for" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$J" role="1PaTwD">
                            <property role="3oM_SC" value="a" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$K" role="1PaTwD">
                            <property role="3oM_SC" value="variable" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$L" role="1PaTwD">
                            <property role="3oM_SC" value="x" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$M" role="1PaTwD">
                            <property role="3oM_SC" value="in" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$N" role="1PaTwD">
                            <property role="3oM_SC" value="a" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$O" role="1PaTwD">
                            <property role="3oM_SC" value="sentence" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$P" role="1PaTwD">
                            <property role="3oM_SC" value="s" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$Q" role="1PaTwD">
                            <property role="3oM_SC" value="if" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$R" role="1PaTwD">
                            <property role="3oM_SC" value="and" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$S" role="1PaTwD">
                            <property role="3oM_SC" value="only" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$T" role="1PaTwD">
                            <property role="3oM_SC" value="if" />
                          </node>
                        </node>
                      </node>
                      <node concept="3SKdUt" id="2CF5XF5uZAD" role="3cqZAp">
                        <node concept="1PaTwC" id="589APehYw$U" role="3ndbpf">
                          <node concept="3oM_SD" id="589APehYw$V" role="1PaTwD">
                            <property role="3oM_SC" value="no" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$W" role="1PaTwD">
                            <property role="3oM_SC" value="free" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$X" role="1PaTwD">
                            <property role="3oM_SC" value="occurrence" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$Y" role="1PaTwD">
                            <property role="3oM_SC" value="of" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw$Z" role="1PaTwD">
                            <property role="3oM_SC" value="x" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_0" role="1PaTwD">
                            <property role="3oM_SC" value="occurs" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_1" role="1PaTwD">
                            <property role="3oM_SC" value="within" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_2" role="1PaTwD">
                            <property role="3oM_SC" value="the" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_3" role="1PaTwD">
                            <property role="3oM_SC" value="scope" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_4" role="1PaTwD">
                            <property role="3oM_SC" value="of" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_5" role="1PaTwD">
                            <property role="3oM_SC" value="a" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_6" role="1PaTwD">
                            <property role="3oM_SC" value="quantifier" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_7" role="1PaTwD">
                            <property role="3oM_SC" value="of" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_8" role="1PaTwD">
                            <property role="3oM_SC" value="some" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_9" role="1PaTwD">
                            <property role="3oM_SC" value="variable" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_a" role="1PaTwD">
                            <property role="3oM_SC" value="in" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_b" role="1PaTwD">
                            <property role="3oM_SC" value="t&quot;" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="3w0n0hzmAUj" role="3cqZAp" />
                      <node concept="3cpWs8" id="3w0n0hzm_tU" role="3cqZAp">
                        <node concept="3cpWsn" id="3w0n0hzm_tV" role="3cpWs9">
                          <property role="TrG5h" value="eq" />
                          <node concept="3Tqbb2" id="3w0n0hzm_tN" role="1tU5fm">
                            <ref role="ehGHo" to="yhz9:3w0n0hzkQZb" resolve="Equality" />
                          </node>
                          <node concept="1PxgMI" id="3w0n0hzm_tW" role="33vP2m">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="3w0n0hzm_tX" role="3oSUPX">
                              <ref role="cht4Q" to="yhz9:3w0n0hzkQZb" resolve="Equality" />
                            </node>
                            <node concept="2OqwBi" id="3w0n0hzm_tY" role="1m5AlR">
                              <node concept="1PxgMI" id="3w0n0hzm_tZ" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="3w0n0hzm_u0" role="3oSUPX">
                                  <ref role="cht4Q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
                                </node>
                                <node concept="2OqwBi" id="3w0n0hzm_u1" role="1m5AlR">
                                  <node concept="1y4W85" id="3w0n0hzm_u2" role="2Oq$k0">
                                    <node concept="3cmrfG" id="3w0n0hzm_u3" role="1y58nS">
                                      <property role="3cmrfH" value="1" />
                                    </node>
                                    <node concept="2OqwBi" id="3w0n0hzm_u4" role="1y566C">
                                      <node concept="3A2sRY" id="3w0n0hzm_u5" role="2Oq$k0">
                                        <ref role="3A2yKK" node="3w0n0hzm3em" resolve="eqe" />
                                      </node>
                                      <node concept="3Tsc0h" id="3w0n0hzm_u6" role="2OqNvi">
                                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="3w0n0hzm_u7" role="2OqNvi">
                                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3TrEf2" id="3w0n0hzm_u8" role="2OqNvi">
                                <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="3w0n0hzmANX" role="3cqZAp">
                        <node concept="3cpWsn" id="3w0n0hzmANY" role="3cpWs9">
                          <property role="TrG5h" value="replOk" />
                          <node concept="10P_77" id="3w0n0hzmANW" role="1tU5fm" />
                          <node concept="3clFbT" id="3w0n0hzmANZ" role="33vP2m">
                            <property role="3clFbU" value="false" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="3w0n0hznmdj" role="3cqZAp">
                        <node concept="3cpWsn" id="3w0n0hznmdk" role="3cpWs9">
                          <property role="TrG5h" value="orig" />
                          <node concept="3Tqbb2" id="3w0n0hznmdg" role="1tU5fm">
                            <ref role="ehGHo" to="bw37:2DPo4JTRwsJ" resolve="Term" />
                          </node>
                          <node concept="2OqwBi" id="3w0n0hznmdl" role="33vP2m">
                            <node concept="37vLTw" id="3w0n0hznmdm" role="2Oq$k0">
                              <ref role="3cqZAo" node="3w0n0hzm_tV" resolve="eq" />
                            </node>
                            <node concept="3TrEf2" id="3w0n0hznmdn" role="2OqNvi">
                              <ref role="3Tt5mk" to="yhz9:3w0n0hzkQZl" resolve="left" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="3w0n0hzmBlK" role="3cqZAp">
                        <node concept="3clFbS" id="3w0n0hzmBlM" role="3clFbx">
                          <node concept="3cpWs8" id="3w0n0hzmLrS" role="3cqZAp">
                            <node concept="3cpWsn" id="3w0n0hzmLrT" role="3cpWs9">
                              <property role="TrG5h" value="origSent" />
                              <node concept="3Tqbb2" id="3w0n0hzmLrL" role="1tU5fm">
                                <ref role="ehGHo" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
                              </node>
                              <node concept="2OqwBi" id="3w0n0hzmLrU" role="33vP2m">
                                <node concept="1PxgMI" id="3w0n0hzmLrV" role="2Oq$k0">
                                  <property role="1BlNFB" value="true" />
                                  <node concept="chp4Y" id="3w0n0hzmLrW" role="3oSUPX">
                                    <ref role="cht4Q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
                                  </node>
                                  <node concept="2OqwBi" id="3w0n0hzmLrX" role="1m5AlR">
                                    <node concept="1y4W85" id="3w0n0hzmLrY" role="2Oq$k0">
                                      <node concept="3cmrfG" id="3w0n0hzmLrZ" role="1y58nS">
                                        <property role="3cmrfH" value="0" />
                                      </node>
                                      <node concept="2OqwBi" id="3w0n0hzmLs0" role="1y566C">
                                        <node concept="3A2sRY" id="3w0n0hzmLs1" role="2Oq$k0">
                                          <ref role="3A2yKK" node="3w0n0hzm3em" resolve="eqe" />
                                        </node>
                                        <node concept="3Tsc0h" id="3w0n0hzmLs2" role="2OqNvi">
                                          <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="3w0n0hzmLs3" role="2OqNvi">
                                      <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="3w0n0hzmLs4" role="2OqNvi">
                                  <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="3w0n0hzmM8Q" role="3cqZAp">
                            <node concept="3cpWsn" id="3w0n0hzmM8R" role="3cpWs9">
                              <property role="TrG5h" value="flatOrigSent" />
                              <node concept="2I9FWS" id="3w0n0hzmM8P" role="1tU5fm">
                                <ref role="2I9WkF" to="tpck:gw2VY9q" resolve="BaseConcept" />
                              </node>
                              <node concept="2OqwBi" id="3w0n0hzmM8S" role="33vP2m">
                                <node concept="37vLTw" id="3w0n0hzmM8T" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3w0n0hzmLrT" resolve="origSent" />
                                </node>
                                <node concept="2Rf3mk" id="3w0n0hzmM8U" role="2OqNvi">
                                  <node concept="1xMEDy" id="3w0n0hzmM8V" role="1xVPHs">
                                    <node concept="chp4Y" id="3w0n0hzmM8W" role="ri$Ld">
                                      <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                    </node>
                                  </node>
                                  <node concept="1xIGOp" id="3w0n0hzmM8X" role="1xVPHs" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="3w0n0hzn02D" role="3cqZAp">
                            <node concept="3cpWsn" id="3w0n0hzn02E" role="3cpWs9">
                              <property role="TrG5h" value="var" />
                              <node concept="3Tqbb2" id="3w0n0hzn026" role="1tU5fm">
                                <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                              </node>
                              <node concept="2OqwBi" id="3w0n0hzn02F" role="33vP2m">
                                <node concept="37vLTw" id="3w0n0hzn02G" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3w0n0hzmM8R" resolve="flatOrigSent" />
                                </node>
                                <node concept="1z4cxt" id="3w0n0hzn02H" role="2OqNvi">
                                  <node concept="1bVj0M" id="3w0n0hzn02I" role="23t8la">
                                    <node concept="3clFbS" id="3w0n0hzn02J" role="1bW5cS">
                                      <node concept="3clFbF" id="3w0n0hzn02K" role="3cqZAp">
                                        <node concept="17R0WA" id="3w0n0hzn02L" role="3clFbG">
                                          <node concept="2OqwBi" id="3w0n0hzn02M" role="3uHU7w">
                                            <node concept="1PxgMI" id="3w0n0hzn02N" role="2Oq$k0">
                                              <node concept="chp4Y" id="3w0n0hzn02O" role="3oSUPX">
                                                <ref role="cht4Q" to="bw37:2DPo4JTRwsM" resolve="Variable" />
                                              </node>
                                              <node concept="37vLTw" id="3w0n0hznmdp" role="1m5AlR">
                                                <ref role="3cqZAo" node="3w0n0hznmdk" resolve="orig" />
                                              </node>
                                            </node>
                                            <node concept="3TrcHB" id="3w0n0hzn02S" role="2OqNvi">
                                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="3w0n0hzn02T" role="3uHU7B">
                                            <node concept="1PxgMI" id="3w0n0hzn02U" role="2Oq$k0">
                                              <property role="1BlNFB" value="true" />
                                              <node concept="chp4Y" id="3w0n0hzn02V" role="3oSUPX">
                                                <ref role="cht4Q" to="bw37:2DPo4JTRwsM" resolve="Variable" />
                                              </node>
                                              <node concept="37vLTw" id="3w0n0hzn02W" role="1m5AlR">
                                                <ref role="3cqZAo" node="3w0n0hzn02Y" resolve="it" />
                                              </node>
                                            </node>
                                            <node concept="3TrcHB" id="3w0n0hzn02X" role="2OqNvi">
                                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Rh6nW" id="3w0n0hzn02Y" role="1bW2Oz">
                                      <property role="TrG5h" value="it" />
                                      <node concept="2jxLKc" id="3w0n0hzn02Z" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="3w0n0hzmMc_" role="3cqZAp" />
                          <node concept="3cpWs8" id="3w0n0hzniGm" role="3cqZAp">
                            <node concept="3cpWsn" id="3w0n0hzniGn" role="3cpWs9">
                              <property role="TrG5h" value="pattern" />
                              <node concept="3Tqbb2" id="3w0n0hzniFn" role="1tU5fm">
                                <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                              </node>
                              <node concept="1y4W85" id="3w0n0hzniGo" role="33vP2m">
                                <node concept="2OqwBi" id="3w0n0hzniGp" role="1y58nS">
                                  <node concept="37vLTw" id="3w0n0hzniGq" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3w0n0hzmM8R" resolve="flatOrigSent" />
                                  </node>
                                  <node concept="2WmjW8" id="3w0n0hzniGr" role="2OqNvi">
                                    <node concept="37vLTw" id="3w0n0hzniGs" role="25WWJ7">
                                      <ref role="3cqZAo" node="3w0n0hzn02E" resolve="var" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="3w0n0hzniGt" role="1y566C">
                                  <node concept="2OqwBi" id="3w0n0hzniGu" role="2Oq$k0">
                                    <node concept="3A2sRY" id="3w0n0hzniGv" role="2Oq$k0">
                                      <ref role="3A2yKK" node="3w0n0hzm3em" resolve="eqe" />
                                    </node>
                                    <node concept="3TrEf2" id="3w0n0hzniGw" role="2OqNvi">
                                      <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                                    </node>
                                  </node>
                                  <node concept="2Rf3mk" id="3w0n0hzniGx" role="2OqNvi">
                                    <node concept="1xMEDy" id="3w0n0hzniGy" role="1xVPHs">
                                      <node concept="chp4Y" id="3w0n0hzniGz" role="ri$Ld">
                                        <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                      </node>
                                    </node>
                                    <node concept="1xIGOp" id="3w0n0hzniG$" role="1xVPHs" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="2cLnr$rF6YD" role="3cqZAp">
                            <node concept="3cpWsn" id="2cLnr$rF6YE" role="3cpWs9">
                              <property role="TrG5h" value="quantVars" />
                              <node concept="2hMVRd" id="2cLnr$rF6Ya" role="1tU5fm">
                                <node concept="17QB3L" id="2cLnr$rF6Yd" role="2hN53Y" />
                              </node>
                              <node concept="2ShNRf" id="2cLnr$rF6YF" role="33vP2m">
                                <node concept="2i4dXS" id="2cLnr$rF6YG" role="2ShVmc">
                                  <node concept="17QB3L" id="2cLnr$rF6YH" role="HW$YZ" />
                                  <node concept="2OqwBi" id="2cLnr$rF6YI" role="I$8f6">
                                    <node concept="2OqwBi" id="2cLnr$rF6YJ" role="2Oq$k0">
                                      <node concept="37vLTw" id="2cLnr$rF6YK" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3w0n0hzniGn" resolve="pattern" />
                                      </node>
                                      <node concept="2Rf3mk" id="2cLnr$rF6YL" role="2OqNvi">
                                        <node concept="1xMEDy" id="2cLnr$rF6YM" role="1xVPHs">
                                          <node concept="chp4Y" id="2cLnr$rF6YN" role="ri$Ld">
                                            <ref role="cht4Q" to="bw37:2DPo4JTRwsM" resolve="Variable" />
                                          </node>
                                        </node>
                                        <node concept="1xIGOp" id="2cLnr$rFBuI" role="1xVPHs" />
                                      </node>
                                    </node>
                                    <node concept="3$u5V9" id="2cLnr$rF6YO" role="2OqNvi">
                                      <node concept="1bVj0M" id="2cLnr$rF6YP" role="23t8la">
                                        <node concept="3clFbS" id="2cLnr$rF6YQ" role="1bW5cS">
                                          <node concept="3clFbF" id="2cLnr$rF6YR" role="3cqZAp">
                                            <node concept="2OqwBi" id="2cLnr$rF6YS" role="3clFbG">
                                              <node concept="37vLTw" id="2cLnr$rF6YT" role="2Oq$k0">
                                                <ref role="3cqZAo" node="2cLnr$rF6YV" resolve="it" />
                                              </node>
                                              <node concept="3TrcHB" id="2cLnr$rF6YU" role="2OqNvi">
                                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="2cLnr$rF6YV" role="1bW2Oz">
                                          <property role="TrG5h" value="it" />
                                          <node concept="2jxLKc" id="2cLnr$rF6YW" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="2CF5XF5uMb2" role="3cqZAp">
                            <node concept="37vLTI" id="2CF5XF5uUCc" role="3clFbG">
                              <node concept="37vLTw" id="3w0n0hznjSf" role="37vLTJ">
                                <ref role="3cqZAo" node="3w0n0hzmANY" resolve="replOk" />
                              </node>
                              <node concept="3fqX7Q" id="2CF5XF5uV3v" role="37vLTx">
                                <node concept="2OqwBi" id="2CF5XF5uV3x" role="3fr31v">
                                  <node concept="2YIFZM" id="2CF5XF5uV3y" role="2Oq$k0">
                                    <ref role="37wK5l" to="fxy1:2CF5XF5pCwx" resolve="freeVarsUnderQuantifier" />
                                    <ref role="1Pybhc" to="fxy1:Vo$tzLFdFq" resolve="VariableUtil" />
                                    <node concept="2OqwBi" id="3w0n0hznlWm" role="37wK5m">
                                      <node concept="3A2sRY" id="3w0n0hznlWn" role="2Oq$k0">
                                        <ref role="3A2yKK" node="3w0n0hzm3em" resolve="eqe" />
                                      </node>
                                      <node concept="3TrEf2" id="3w0n0hznlWo" role="2OqNvi">
                                        <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="2cLnr$rF7mP" role="37wK5m">
                                      <ref role="3cqZAo" node="2cLnr$rF6YE" resolve="quantVars" />
                                    </node>
                                  </node>
                                  <node concept="3JPx81" id="2CF5XF5uV3A" role="2OqNvi">
                                    <node concept="2OqwBi" id="3w0n0hznnJX" role="25WWJ7">
                                      <node concept="1PxgMI" id="3w0n0hznnJY" role="2Oq$k0">
                                        <node concept="chp4Y" id="3w0n0hznnJZ" role="3oSUPX">
                                          <ref role="cht4Q" to="bw37:2DPo4JTRwsM" resolve="Variable" />
                                        </node>
                                        <node concept="37vLTw" id="3w0n0hznnK0" role="1m5AlR">
                                          <ref role="3cqZAo" node="3w0n0hznmdk" resolve="orig" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="3w0n0hznnK1" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="3w0n0hzno34" role="3cqZAp" />
                        </node>
                        <node concept="2OqwBi" id="3w0n0hzmCp9" role="3clFbw">
                          <node concept="37vLTw" id="3w0n0hznmdo" role="2Oq$k0">
                            <ref role="3cqZAo" node="3w0n0hznmdk" resolve="orig" />
                          </node>
                          <node concept="1mIQ4w" id="3w0n0hzmCKV" role="2OqNvi">
                            <node concept="chp4Y" id="3w0n0hzmCN5" role="cj9EA">
                              <ref role="cht4Q" to="bw37:2DPo4JTRwsM" resolve="Variable" />
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="3w0n0hzmC1O" role="9aQIa">
                          <node concept="3clFbS" id="3w0n0hzmC1P" role="9aQI4">
                            <node concept="3SKdUt" id="3w0n0hzmDfO" role="3cqZAp">
                              <node concept="1PaTwC" id="589APehYw_c" role="3ndbpf">
                                <node concept="3oM_SD" id="589APehYw_d" role="1PaTwD">
                                  <property role="3oM_SC" value="TODO:" />
                                </node>
                                <node concept="3oM_SD" id="589APehYw_e" role="1PaTwD">
                                  <property role="3oM_SC" value="what" />
                                </node>
                                <node concept="3oM_SD" id="589APehYw_f" role="1PaTwD">
                                  <property role="3oM_SC" value="about" />
                                </node>
                                <node concept="3oM_SD" id="589APehYw_g" role="1PaTwD">
                                  <property role="3oM_SC" value="variables" />
                                </node>
                                <node concept="3oM_SD" id="589APehYw_h" role="1PaTwD">
                                  <property role="3oM_SC" value="inside" />
                                </node>
                                <node concept="3oM_SD" id="589APehYw_i" role="1PaTwD">
                                  <property role="3oM_SC" value="terms?" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3w0n0hzmCQr" role="3cqZAp">
                              <node concept="37vLTI" id="3w0n0hzmDb5" role="3clFbG">
                                <node concept="3clFbT" id="3w0n0hzmDbp" role="37vLTx">
                                  <property role="3clFbU" value="true" />
                                </node>
                                <node concept="37vLTw" id="3w0n0hzmDfq" role="37vLTJ">
                                  <ref role="3cqZAo" node="3w0n0hzmANY" resolve="replOk" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="3w0n0hzmAJT" role="3cqZAp" />
                      <node concept="3clFbF" id="3w0n0hzmrOP" role="3cqZAp">
                        <node concept="37vLTw" id="3w0n0hzmAO0" role="3clFbG">
                          <ref role="3cqZAo" node="3w0n0hzmANY" resolve="replOk" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1laj_RSf1Vk" role="3cqZAp" />
            <node concept="1nLNNL" id="6$MtiK8GZNs" role="3cqZAp">
              <node concept="1nLNMm" id="6$MtiK8GZNt" role="1nLNNK">
                <node concept="3Aq93q" id="3w0n0hzmfIT" role="1nLNMb">
                  <property role="3ArMco" value="true" />
                  <node concept="3I6sU6" id="3w0n0hzmfIU" role="3Ip0Jz">
                    <node concept="3I6s7M" id="3w0n0hzmjgv" role="3I6sU7">
                      <node concept="3Aqt3T" id="3w0n0hzmjgu" role="3I6s78">
                        <ref role="3AqCNq" to="6r1k:2aBGSFgfwNi" resolve="conclusion" />
                        <node concept="a7P8L" id="3w0n0hzmjg$" role="3AunhB">
                          <ref role="a7OzE" node="3w0n0hzmjg7" resolve="Prem" />
                        </node>
                        <node concept="37jhX" id="1TH_SRmhqz1" role="3AunhB">
                          <node concept="2OqwBi" id="3w0n0hzmmp9" role="37jj2">
                            <node concept="1y4W85" id="3w0n0hzmlTZ" role="2Oq$k0">
                              <node concept="3cmrfG" id="3w0n0hzmmfd" role="1y58nS">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="2OqwBi" id="3w0n0hzmjrd" role="1y566C">
                                <node concept="3A2sRY" id="3w0n0hzmjgQ" role="2Oq$k0">
                                  <ref role="3A2yKK" node="3w0n0hzm3em" resolve="eqe" />
                                </node>
                                <node concept="3Tsc0h" id="3w0n0hzmkj7" role="2OqNvi">
                                  <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                </node>
                              </node>
                            </node>
                            <node concept="3TrEf2" id="3w0n0hzmnlM" role="2OqNvi">
                              <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3I6s7M" id="3w0n0hzmnnU" role="3I6sU7">
                      <node concept="3Aqt3T" id="3w0n0hzmnnS" role="3I6s78">
                        <ref role="3AqCNq" to="6r1k:2aBGSFgfwNi" resolve="conclusion" />
                        <node concept="1HFMs5" id="7VBaGntKIM5" role="3AunhB">
                          <node concept="ns1u0" id="7VBaGntKJ8Y" role="1uarlW">
                            <ref role="ns1xF" node="7VBaGntKJ6C" resolve="Equality" />
                            <node concept="nsMwS" id="7VBaGntKJ8Z" role="ns1xD">
                              <ref role="nsMwP" node="7VBaGntKJ6E" resolve="left" />
                              <node concept="1nq8_$" id="3w0n0hzmnoI" role="nsMwV">
                                <node concept="a7P8L" id="3w0n0hzmnoH" role="1nq8_t">
                                  <ref role="a7OzE" node="3w0n0hzmjfs" resolve="EqLeft" />
                                </node>
                              </node>
                            </node>
                            <node concept="nsMwS" id="7VBaGntKJ90" role="ns1xD">
                              <ref role="nsMwP" node="7VBaGntKJ6F" resolve="right" />
                              <node concept="1nq8_$" id="3w0n0hzmnri" role="nsMwV">
                                <node concept="a7P8L" id="3w0n0hzmnrh" role="1nq8_t">
                                  <ref role="a7OzE" node="3w0n0hzmjfI" resolve="EqRight" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="a7P8L" id="3w0n0hzmnoa" role="1uarlU">
                            <ref role="a7OzE" node="3w0n0hzmjfj" resolve="Eq" />
                          </node>
                        </node>
                        <node concept="37jhX" id="1TH_SRmhqz2" role="3AunhB">
                          <node concept="2OqwBi" id="3w0n0hzmqEU" role="37jj2">
                            <node concept="1y4W85" id="3w0n0hzmq9x" role="2Oq$k0">
                              <node concept="3cmrfG" id="3w0n0hzmqwY" role="1y58nS">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="2OqwBi" id="3w0n0hzmnCw" role="1y566C">
                                <node concept="3A2sRY" id="3w0n0hzmnu9" role="2Oq$k0">
                                  <ref role="3A2yKK" node="3w0n0hzm3em" resolve="eqe" />
                                </node>
                                <node concept="3Tsc0h" id="3w0n0hzmoyD" role="2OqNvi">
                                  <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                </node>
                              </node>
                            </node>
                            <node concept="3TrEf2" id="3w0n0hzmrmc" role="2OqNvi">
                              <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3I6s7M" id="3w0n0hzmrCZ" role="3I6sU7">
                      <node concept="3Aqt3T" id="3w0n0hzmrCX" role="3I6s78">
                        <ref role="3AqCNq" to="6r1k:2aBGSFgfwNi" resolve="conclusion" />
                        <node concept="a7P8L" id="3w0n0hzmrGk" role="3AunhB">
                          <ref role="a7OzE" node="3w0n0hzmrDC" resolve="Con" />
                        </node>
                        <node concept="37jhX" id="1TH_SRmhqz3" role="3AunhB">
                          <node concept="3A2sRY" id="3w0n0hzmrGA" role="37jj2">
                            <ref role="3A2yKK" node="3w0n0hzm3em" resolve="eqe" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Aq93q" id="3w0n0hzmfIX" role="1nLNMb">
                  <property role="3ArMco" value="true" />
                  <node concept="3I6sU6" id="3w0n0hzmfIY" role="3Ip0Jz">
                    <node concept="3I6s7M" id="3w0n0hzmro6" role="3I6sU7">
                      <node concept="3Aqt3T" id="3w0n0hzmro5" role="3I6s78">
                        <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                        <node concept="37jhX" id="1TH_SRmhqz4" role="3AunhB">
                          <node concept="2OqwBi" id="3w0n0hzmroc" role="37jj2">
                            <node concept="1y4W85" id="3w0n0hzmrod" role="2Oq$k0">
                              <node concept="3cmrfG" id="3w0n0hzmroe" role="1y58nS">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="2OqwBi" id="3w0n0hzmrof" role="1y566C">
                                <node concept="3A2sRY" id="3w0n0hzmrog" role="2Oq$k0">
                                  <ref role="3A2yKK" node="3w0n0hzm3em" resolve="eqe" />
                                </node>
                                <node concept="3Tsc0h" id="3w0n0hzmroh" role="2OqNvi">
                                  <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                </node>
                              </node>
                            </node>
                            <node concept="3TrEf2" id="3w0n0hzmroi" role="2OqNvi">
                              <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3I6s7M" id="3w0n0hzmru1" role="3I6sU7">
                      <node concept="3Aqt3T" id="3w0n0hzmru2" role="3I6s78">
                        <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                        <node concept="37jhX" id="1TH_SRmhqz5" role="3AunhB">
                          <node concept="2OqwBi" id="3w0n0hzmru4" role="37jj2">
                            <node concept="1y4W85" id="3w0n0hzmru5" role="2Oq$k0">
                              <node concept="3cmrfG" id="3w0n0hzmru6" role="1y58nS">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="2OqwBi" id="3w0n0hzmru7" role="1y566C">
                                <node concept="3A2sRY" id="3w0n0hzmru8" role="2Oq$k0">
                                  <ref role="3A2yKK" node="3w0n0hzm3em" resolve="eqe" />
                                </node>
                                <node concept="3Tsc0h" id="3w0n0hzmru9" role="2OqNvi">
                                  <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                </node>
                              </node>
                            </node>
                            <node concept="3TrEf2" id="3w0n0hzmrua" role="2OqNvi">
                              <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Aq9_M" id="3w0n0hzmrGK" role="1nLNMa">
                  <node concept="3I6sU6" id="3w0n0hzmrGL" role="3Ip0Jz">
                    <node concept="3I6s7M" id="3w0n0hzmrGR" role="3I6sU7">
                      <node concept="3A8Hvi" id="3w0n0hzmrGO" role="3I6s78">
                        <node concept="1lh$Hi" id="3w0n0hzmrGW" role="3A8wtg">
                          <node concept="a7P8L" id="3w0n0hzmrH8" role="1lh$Hv">
                            <ref role="a7OzE" node="3w0n0hzmjg7" resolve="Prem" />
                          </node>
                          <node concept="a7P8L" id="3w0n0hzmrHd" role="1lh$H$">
                            <ref role="a7OzE" node="3w0n0hzmjfs" resolve="EqLeft" />
                          </node>
                          <node concept="a7P8L" id="3w0n0hzmrHi" role="1lh$Hx">
                            <ref role="a7OzE" node="3w0n0hzmjfI" resolve="EqRight" />
                          </node>
                        </node>
                        <node concept="a7P8L" id="3w0n0hzmrHn" role="3A8w4Q">
                          <ref role="a7OzE" node="3w0n0hzmrDC" resolve="Con" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3NuqgR" id="3w0n0hzmjfi" role="0Rg$4">
                  <node concept="aZer4" id="3w0n0hzmjg7" role="3XD1gS">
                    <property role="TrG5h" value="Prem" />
                  </node>
                  <node concept="aZer4" id="3w0n0hzmjfj" role="3XD1gS">
                    <property role="TrG5h" value="Eq" />
                  </node>
                  <node concept="aZer4" id="3w0n0hzmjfs" role="3XD1gS">
                    <property role="TrG5h" value="EqLeft" />
                  </node>
                  <node concept="aZer4" id="3w0n0hzmjfI" role="3XD1gS">
                    <property role="TrG5h" value="EqRight" />
                  </node>
                  <node concept="aZer4" id="3w0n0hzmrDC" role="3XD1gS">
                    <property role="TrG5h" value="Con" />
                  </node>
                  <node concept="32pEOW" id="24ciDNzxNvo" role="3vLBG7" />
                </node>
                <node concept="3xSepi" id="6E2cNicdh87" role="3xSepv">
                  <node concept="3Aq9E8" id="3w0n0hzmrM0" role="3xSepj">
                    <node concept="3I6sU6" id="3w0n0hzmrM1" role="3Ip0Jz">
                      <node concept="3I6s7M" id="3w0n0hzno$y" role="3I6sU7">
                        <node concept="3lcGGY" id="3w0n0hzno$x" role="3I6s78">
                          <node concept="37vLTw" id="6$MtiK8GZNA" role="3wWo3s">
                            <ref role="3cqZAo" node="3w0n0hzmrNy" resolve="replOk" />
                          </node>
                        </node>
                      </node>
                      <node concept="3I6s7M" id="3w0n0hznoZS" role="3I6sU7">
                        <node concept="3Aqt3T" id="3w0n0hznoZQ" role="3I6s78">
                          <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                          <node concept="37jhX" id="1TH_SRmhqz6" role="3AunhB">
                            <node concept="3A2sRY" id="3w0n0hznp09" role="37jj2">
                              <ref role="3A2yKK" node="3w0n0hzm3em" resolve="eqe" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3xSepi" id="6E2cNicdh88" role="3xSepv">
                  <node concept="3Aq9E8" id="2CF5XF5v8Pa" role="3xSepj">
                    <node concept="3I6sU6" id="2CF5XF5v8Pb" role="3Ip0Jz">
                      <node concept="3I6s7M" id="1laj_RSf1T5" role="3I6sU7">
                        <node concept="1lHd6T" id="1laj_RSf1T4" role="3I6s78">
                          <property role="1lHdp1" value="4jcOV4hu0n_/ERROR" />
                          <node concept="Xl_RD" id="1laj_RSf21x" role="1ljv2e">
                            <property role="Xl_RC" value="replacement is not OK" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3w0n0hzmfqa" role="3clFbw">
            <node concept="3cmrfG" id="3w0n0hzmfqp" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="3w0n0hzm60c" role="3uHU7B">
              <node concept="2OqwBi" id="3w0n0hzm3rl" role="2Oq$k0">
                <node concept="3A2sRY" id="3w0n0hzm3eG" role="2Oq$k0">
                  <ref role="3A2yKK" node="3w0n0hzm3em" resolve="eqe" />
                </node>
                <node concept="3Tsc0h" id="3w0n0hzm42j" role="2OqNvi">
                  <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                </node>
              </node>
              <node concept="34oBXx" id="3w0n0hzmcV$" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8GZNu" role="1nK1Vg">
      <property role="TrG5h" value="equalityElimRight" />
      <node concept="2t___k" id="3w0n0hznw$I" role="1nLNMg">
        <ref role="2t_S0q" to="yhz9:3w0n0hzkQ4j" resolve="EqualityElim" />
        <node concept="3A20r5" id="3w0n0hznw$J" role="2t_VXX">
          <property role="TrG5h" value="eqe" />
        </node>
      </node>
      <node concept="3clFbS" id="3c$Di5ODBi0" role="1nLNMH">
        <node concept="3clFbJ" id="3c$Di5ODBi1" role="3cqZAp">
          <node concept="3clFbS" id="6$MtiK8GZNv" role="3clFbx">
            <node concept="3cpWs8" id="6$MtiK8GZNw" role="3cqZAp">
              <node concept="3cpWsn" id="3w0n0hznw_s" role="3cpWs9">
                <property role="TrG5h" value="replOk" />
                <node concept="10P_77" id="3w0n0hznw_t" role="1tU5fm" />
                <node concept="2Sg_IR" id="6$MtiK8GZNy" role="33vP2m">
                  <node concept="1bVj0M" id="6$MtiK8GZNz" role="2SgG2M">
                    <node concept="3clFbS" id="3w0n0hznw_u" role="1bW5cS">
                      <node concept="3SKdUt" id="3w0n0hznw_v" role="3cqZAp">
                        <node concept="1PaTwC" id="589APehYw_j" role="3ndbpf">
                          <node concept="3oM_SD" id="589APehYw_k" role="1PaTwD">
                            <property role="3oM_SC" value="&quot;replacement" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_l" role="1PaTwD">
                            <property role="3oM_SC" value="must" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_m" role="1PaTwD">
                            <property role="3oM_SC" value="be" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_n" role="1PaTwD">
                            <property role="3oM_SC" value="substitutable" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_o" role="1PaTwD">
                            <property role="3oM_SC" value="for" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_p" role="1PaTwD">
                            <property role="3oM_SC" value="the" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_q" role="1PaTwD">
                            <property role="3oM_SC" value="term" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_r" role="1PaTwD">
                            <property role="3oM_SC" value="being" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_s" role="1PaTwD">
                            <property role="3oM_SC" value="replaced&quot;" />
                          </node>
                        </node>
                      </node>
                      <node concept="3SKdUt" id="3w0n0hznw_x" role="3cqZAp">
                        <node concept="1PaTwC" id="589APehYw_t" role="3ndbpf">
                          <node concept="3oM_SD" id="589APehYw_u" role="1PaTwD">
                            <property role="3oM_SC" value="&quot;a" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_v" role="1PaTwD">
                            <property role="3oM_SC" value="term" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_w" role="1PaTwD">
                            <property role="3oM_SC" value="t" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_x" role="1PaTwD">
                            <property role="3oM_SC" value="is" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_y" role="1PaTwD">
                            <property role="3oM_SC" value="free" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_z" role="1PaTwD">
                            <property role="3oM_SC" value="for" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_$" role="1PaTwD">
                            <property role="3oM_SC" value="a" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw__" role="1PaTwD">
                            <property role="3oM_SC" value="variable" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_A" role="1PaTwD">
                            <property role="3oM_SC" value="x" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_B" role="1PaTwD">
                            <property role="3oM_SC" value="in" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_C" role="1PaTwD">
                            <property role="3oM_SC" value="a" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_D" role="1PaTwD">
                            <property role="3oM_SC" value="sentence" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_E" role="1PaTwD">
                            <property role="3oM_SC" value="s" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_F" role="1PaTwD">
                            <property role="3oM_SC" value="if" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_G" role="1PaTwD">
                            <property role="3oM_SC" value="and" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_H" role="1PaTwD">
                            <property role="3oM_SC" value="only" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_I" role="1PaTwD">
                            <property role="3oM_SC" value="if" />
                          </node>
                        </node>
                      </node>
                      <node concept="3SKdUt" id="3w0n0hznw_z" role="3cqZAp">
                        <node concept="1PaTwC" id="589APehYw_J" role="3ndbpf">
                          <node concept="3oM_SD" id="589APehYw_K" role="1PaTwD">
                            <property role="3oM_SC" value="no" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_L" role="1PaTwD">
                            <property role="3oM_SC" value="free" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_M" role="1PaTwD">
                            <property role="3oM_SC" value="occurrence" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_N" role="1PaTwD">
                            <property role="3oM_SC" value="of" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_O" role="1PaTwD">
                            <property role="3oM_SC" value="x" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_P" role="1PaTwD">
                            <property role="3oM_SC" value="occurs" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_Q" role="1PaTwD">
                            <property role="3oM_SC" value="within" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_R" role="1PaTwD">
                            <property role="3oM_SC" value="the" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_S" role="1PaTwD">
                            <property role="3oM_SC" value="scope" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_T" role="1PaTwD">
                            <property role="3oM_SC" value="of" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_U" role="1PaTwD">
                            <property role="3oM_SC" value="a" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_V" role="1PaTwD">
                            <property role="3oM_SC" value="quantifier" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_W" role="1PaTwD">
                            <property role="3oM_SC" value="of" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_X" role="1PaTwD">
                            <property role="3oM_SC" value="some" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_Y" role="1PaTwD">
                            <property role="3oM_SC" value="variable" />
                          </node>
                          <node concept="3oM_SD" id="589APehYw_Z" role="1PaTwD">
                            <property role="3oM_SC" value="in" />
                          </node>
                          <node concept="3oM_SD" id="589APehYwA0" role="1PaTwD">
                            <property role="3oM_SC" value="t&quot;" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="3w0n0hznw__" role="3cqZAp" />
                      <node concept="3cpWs8" id="3w0n0hznw_A" role="3cqZAp">
                        <node concept="3cpWsn" id="3w0n0hznw_B" role="3cpWs9">
                          <property role="TrG5h" value="eq" />
                          <node concept="3Tqbb2" id="3w0n0hznw_C" role="1tU5fm">
                            <ref role="ehGHo" to="yhz9:3w0n0hzkQZb" resolve="Equality" />
                          </node>
                          <node concept="1PxgMI" id="3w0n0hznw_D" role="33vP2m">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="3w0n0hznw_E" role="3oSUPX">
                              <ref role="cht4Q" to="yhz9:3w0n0hzkQZb" resolve="Equality" />
                            </node>
                            <node concept="2OqwBi" id="3w0n0hznw_F" role="1m5AlR">
                              <node concept="1PxgMI" id="3w0n0hznw_G" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="3w0n0hznw_H" role="3oSUPX">
                                  <ref role="cht4Q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
                                </node>
                                <node concept="2OqwBi" id="3w0n0hznw_I" role="1m5AlR">
                                  <node concept="1y4W85" id="3w0n0hznw_J" role="2Oq$k0">
                                    <node concept="3cmrfG" id="3w0n0hznw_K" role="1y58nS">
                                      <property role="3cmrfH" value="1" />
                                    </node>
                                    <node concept="2OqwBi" id="3w0n0hznw_L" role="1y566C">
                                      <node concept="3A2sRY" id="3w0n0hznw_M" role="2Oq$k0">
                                        <ref role="3A2yKK" node="3w0n0hznw$J" resolve="eqe" />
                                      </node>
                                      <node concept="3Tsc0h" id="3w0n0hznw_N" role="2OqNvi">
                                        <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="3w0n0hznw_O" role="2OqNvi">
                                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3TrEf2" id="3w0n0hznw_P" role="2OqNvi">
                                <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="3w0n0hznw_Q" role="3cqZAp">
                        <node concept="3cpWsn" id="3w0n0hznw_R" role="3cpWs9">
                          <property role="TrG5h" value="replOk" />
                          <node concept="10P_77" id="3w0n0hznw_S" role="1tU5fm" />
                          <node concept="3clFbT" id="3w0n0hznw_T" role="33vP2m">
                            <property role="3clFbU" value="false" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="3w0n0hznw_U" role="3cqZAp">
                        <node concept="3cpWsn" id="3w0n0hznw_V" role="3cpWs9">
                          <property role="TrG5h" value="orig" />
                          <node concept="3Tqbb2" id="3w0n0hznw_W" role="1tU5fm">
                            <ref role="ehGHo" to="bw37:2DPo4JTRwsJ" resolve="Term" />
                          </node>
                          <node concept="2OqwBi" id="3w0n0hznw_X" role="33vP2m">
                            <node concept="37vLTw" id="3w0n0hznw_Y" role="2Oq$k0">
                              <ref role="3cqZAo" node="3w0n0hznw_B" resolve="eq" />
                            </node>
                            <node concept="3TrEf2" id="3w0n0hznxRg" role="2OqNvi">
                              <ref role="3Tt5mk" to="yhz9:3w0n0hzkQZn" resolve="right" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="3w0n0hznwA0" role="3cqZAp">
                        <node concept="3clFbS" id="3w0n0hznwA1" role="3clFbx">
                          <node concept="3cpWs8" id="3w0n0hznwA2" role="3cqZAp">
                            <node concept="3cpWsn" id="3w0n0hznwA3" role="3cpWs9">
                              <property role="TrG5h" value="origSent" />
                              <node concept="3Tqbb2" id="3w0n0hznwA4" role="1tU5fm">
                                <ref role="ehGHo" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
                              </node>
                              <node concept="2OqwBi" id="3w0n0hznwA5" role="33vP2m">
                                <node concept="1PxgMI" id="3w0n0hznwA6" role="2Oq$k0">
                                  <property role="1BlNFB" value="true" />
                                  <node concept="chp4Y" id="3w0n0hznwA7" role="3oSUPX">
                                    <ref role="cht4Q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
                                  </node>
                                  <node concept="2OqwBi" id="3w0n0hznwA8" role="1m5AlR">
                                    <node concept="1y4W85" id="3w0n0hznwA9" role="2Oq$k0">
                                      <node concept="3cmrfG" id="3w0n0hznwAa" role="1y58nS">
                                        <property role="3cmrfH" value="0" />
                                      </node>
                                      <node concept="2OqwBi" id="3w0n0hznwAb" role="1y566C">
                                        <node concept="3A2sRY" id="3w0n0hznwAc" role="2Oq$k0">
                                          <ref role="3A2yKK" node="3w0n0hznw$J" resolve="eqe" />
                                        </node>
                                        <node concept="3Tsc0h" id="3w0n0hznwAd" role="2OqNvi">
                                          <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="3w0n0hznwAe" role="2OqNvi">
                                      <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="3w0n0hznwAf" role="2OqNvi">
                                  <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="3w0n0hznwAg" role="3cqZAp">
                            <node concept="3cpWsn" id="3w0n0hznwAh" role="3cpWs9">
                              <property role="TrG5h" value="flatOrigSent" />
                              <node concept="2I9FWS" id="3w0n0hznwAi" role="1tU5fm">
                                <ref role="2I9WkF" to="tpck:gw2VY9q" resolve="BaseConcept" />
                              </node>
                              <node concept="2OqwBi" id="3w0n0hznwAj" role="33vP2m">
                                <node concept="37vLTw" id="3w0n0hznwAk" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3w0n0hznwA3" resolve="origSent" />
                                </node>
                                <node concept="2Rf3mk" id="3w0n0hznwAl" role="2OqNvi">
                                  <node concept="1xMEDy" id="3w0n0hznwAm" role="1xVPHs">
                                    <node concept="chp4Y" id="3w0n0hznwAn" role="ri$Ld">
                                      <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                    </node>
                                  </node>
                                  <node concept="1xIGOp" id="3w0n0hznwAo" role="1xVPHs" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="3w0n0hznwAp" role="3cqZAp">
                            <node concept="3cpWsn" id="3w0n0hznwAq" role="3cpWs9">
                              <property role="TrG5h" value="var" />
                              <node concept="3Tqbb2" id="3w0n0hznwAr" role="1tU5fm">
                                <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                              </node>
                              <node concept="2OqwBi" id="3w0n0hznwAs" role="33vP2m">
                                <node concept="37vLTw" id="3w0n0hznwAt" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3w0n0hznwAh" resolve="flatOrigSent" />
                                </node>
                                <node concept="1z4cxt" id="3w0n0hznwAu" role="2OqNvi">
                                  <node concept="1bVj0M" id="3w0n0hznwAv" role="23t8la">
                                    <node concept="3clFbS" id="3w0n0hznwAw" role="1bW5cS">
                                      <node concept="3clFbF" id="3w0n0hznwAx" role="3cqZAp">
                                        <node concept="17R0WA" id="3w0n0hznwAy" role="3clFbG">
                                          <node concept="2OqwBi" id="3w0n0hznwAz" role="3uHU7w">
                                            <node concept="1PxgMI" id="3w0n0hznwA$" role="2Oq$k0">
                                              <node concept="chp4Y" id="3w0n0hznwA_" role="3oSUPX">
                                                <ref role="cht4Q" to="bw37:2DPo4JTRwsM" resolve="Variable" />
                                              </node>
                                              <node concept="37vLTw" id="3w0n0hznwAA" role="1m5AlR">
                                                <ref role="3cqZAo" node="3w0n0hznw_V" resolve="orig" />
                                              </node>
                                            </node>
                                            <node concept="3TrcHB" id="3w0n0hznwAB" role="2OqNvi">
                                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="3w0n0hznwAC" role="3uHU7B">
                                            <node concept="1PxgMI" id="3w0n0hznwAD" role="2Oq$k0">
                                              <property role="1BlNFB" value="true" />
                                              <node concept="chp4Y" id="3w0n0hznwAE" role="3oSUPX">
                                                <ref role="cht4Q" to="bw37:2DPo4JTRwsM" resolve="Variable" />
                                              </node>
                                              <node concept="37vLTw" id="3w0n0hznwAF" role="1m5AlR">
                                                <ref role="3cqZAo" node="3w0n0hznwAH" resolve="it" />
                                              </node>
                                            </node>
                                            <node concept="3TrcHB" id="3w0n0hznwAG" role="2OqNvi">
                                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Rh6nW" id="3w0n0hznwAH" role="1bW2Oz">
                                      <property role="TrG5h" value="it" />
                                      <node concept="2jxLKc" id="3w0n0hznwAI" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="3w0n0hznwAJ" role="3cqZAp" />
                          <node concept="3cpWs8" id="3w0n0hznwAK" role="3cqZAp">
                            <node concept="3cpWsn" id="3w0n0hznwAL" role="3cpWs9">
                              <property role="TrG5h" value="pattern" />
                              <node concept="3Tqbb2" id="3w0n0hznwAM" role="1tU5fm">
                                <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                              </node>
                              <node concept="1y4W85" id="3w0n0hznwAN" role="33vP2m">
                                <node concept="2OqwBi" id="3w0n0hznwAO" role="1y58nS">
                                  <node concept="37vLTw" id="3w0n0hznwAP" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3w0n0hznwAh" resolve="flatOrigSent" />
                                  </node>
                                  <node concept="2WmjW8" id="3w0n0hznwAQ" role="2OqNvi">
                                    <node concept="37vLTw" id="3w0n0hznwAR" role="25WWJ7">
                                      <ref role="3cqZAo" node="3w0n0hznwAq" resolve="var" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="3w0n0hznwAS" role="1y566C">
                                  <node concept="2OqwBi" id="3w0n0hznwAT" role="2Oq$k0">
                                    <node concept="3A2sRY" id="3w0n0hznwAU" role="2Oq$k0">
                                      <ref role="3A2yKK" node="3w0n0hznw$J" resolve="eqe" />
                                    </node>
                                    <node concept="3TrEf2" id="3w0n0hznwAV" role="2OqNvi">
                                      <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                                    </node>
                                  </node>
                                  <node concept="2Rf3mk" id="3w0n0hznwAW" role="2OqNvi">
                                    <node concept="1xMEDy" id="3w0n0hznwAX" role="1xVPHs">
                                      <node concept="chp4Y" id="3w0n0hznwAY" role="ri$Ld">
                                        <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                      </node>
                                    </node>
                                    <node concept="1xIGOp" id="3w0n0hznwAZ" role="1xVPHs" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="3w0n0hznwB0" role="3cqZAp">
                            <node concept="3cpWsn" id="3w0n0hznwB1" role="3cpWs9">
                              <property role="TrG5h" value="quantVars" />
                              <node concept="2hMVRd" id="3w0n0hznwB2" role="1tU5fm">
                                <node concept="17QB3L" id="3w0n0hznwB3" role="2hN53Y" />
                              </node>
                              <node concept="2ShNRf" id="3w0n0hznwB4" role="33vP2m">
                                <node concept="2i4dXS" id="3w0n0hznwB5" role="2ShVmc">
                                  <node concept="17QB3L" id="3w0n0hznwB6" role="HW$YZ" />
                                  <node concept="2OqwBi" id="3w0n0hznwB7" role="I$8f6">
                                    <node concept="2OqwBi" id="3w0n0hznwB8" role="2Oq$k0">
                                      <node concept="37vLTw" id="3w0n0hznwB9" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3w0n0hznwAL" resolve="pattern" />
                                      </node>
                                      <node concept="2Rf3mk" id="3w0n0hznwBa" role="2OqNvi">
                                        <node concept="1xMEDy" id="3w0n0hznwBb" role="1xVPHs">
                                          <node concept="chp4Y" id="3w0n0hznwBc" role="ri$Ld">
                                            <ref role="cht4Q" to="bw37:2DPo4JTRwsM" resolve="Variable" />
                                          </node>
                                        </node>
                                        <node concept="1xIGOp" id="3w0n0hznwBd" role="1xVPHs" />
                                      </node>
                                    </node>
                                    <node concept="3$u5V9" id="3w0n0hznwBe" role="2OqNvi">
                                      <node concept="1bVj0M" id="3w0n0hznwBf" role="23t8la">
                                        <node concept="3clFbS" id="3w0n0hznwBg" role="1bW5cS">
                                          <node concept="3clFbF" id="3w0n0hznwBh" role="3cqZAp">
                                            <node concept="2OqwBi" id="3w0n0hznwBi" role="3clFbG">
                                              <node concept="37vLTw" id="3w0n0hznwBj" role="2Oq$k0">
                                                <ref role="3cqZAo" node="3w0n0hznwBl" resolve="it" />
                                              </node>
                                              <node concept="3TrcHB" id="3w0n0hznwBk" role="2OqNvi">
                                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="3w0n0hznwBl" role="1bW2Oz">
                                          <property role="TrG5h" value="it" />
                                          <node concept="2jxLKc" id="3w0n0hznwBm" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="3w0n0hznwBn" role="3cqZAp">
                            <node concept="37vLTI" id="3w0n0hznwBo" role="3clFbG">
                              <node concept="37vLTw" id="3w0n0hznwBp" role="37vLTJ">
                                <ref role="3cqZAo" node="3w0n0hznw_R" resolve="replOk" />
                              </node>
                              <node concept="3fqX7Q" id="3w0n0hznwBq" role="37vLTx">
                                <node concept="2OqwBi" id="3w0n0hznwBr" role="3fr31v">
                                  <node concept="2YIFZM" id="3w0n0hznwBs" role="2Oq$k0">
                                    <ref role="37wK5l" to="fxy1:2CF5XF5pCwx" resolve="freeVarsUnderQuantifier" />
                                    <ref role="1Pybhc" to="fxy1:Vo$tzLFdFq" resolve="VariableUtil" />
                                    <node concept="2OqwBi" id="3w0n0hznwBt" role="37wK5m">
                                      <node concept="3A2sRY" id="3w0n0hznwBu" role="2Oq$k0">
                                        <ref role="3A2yKK" node="3w0n0hznw$J" resolve="eqe" />
                                      </node>
                                      <node concept="3TrEf2" id="3w0n0hznwBv" role="2OqNvi">
                                        <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="3w0n0hznwBw" role="37wK5m">
                                      <ref role="3cqZAo" node="3w0n0hznwB1" resolve="quantVars" />
                                    </node>
                                  </node>
                                  <node concept="3JPx81" id="3w0n0hznwBx" role="2OqNvi">
                                    <node concept="2OqwBi" id="3w0n0hznwBy" role="25WWJ7">
                                      <node concept="1PxgMI" id="3w0n0hznwBz" role="2Oq$k0">
                                        <node concept="chp4Y" id="3w0n0hznwB$" role="3oSUPX">
                                          <ref role="cht4Q" to="bw37:2DPo4JTRwsM" resolve="Variable" />
                                        </node>
                                        <node concept="37vLTw" id="3w0n0hznwB_" role="1m5AlR">
                                          <ref role="3cqZAo" node="3w0n0hznw_V" resolve="orig" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="3w0n0hznwBA" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="3w0n0hznwBB" role="3cqZAp" />
                        </node>
                        <node concept="2OqwBi" id="3w0n0hznwBC" role="3clFbw">
                          <node concept="37vLTw" id="3w0n0hznwBD" role="2Oq$k0">
                            <ref role="3cqZAo" node="3w0n0hznw_V" resolve="orig" />
                          </node>
                          <node concept="1mIQ4w" id="3w0n0hznwBE" role="2OqNvi">
                            <node concept="chp4Y" id="3w0n0hznwBF" role="cj9EA">
                              <ref role="cht4Q" to="bw37:2DPo4JTRwsM" resolve="Variable" />
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="3w0n0hznwBG" role="9aQIa">
                          <node concept="3clFbS" id="3w0n0hznwBH" role="9aQI4">
                            <node concept="3SKdUt" id="3w0n0hznwBI" role="3cqZAp">
                              <node concept="1PaTwC" id="589APehYwA1" role="3ndbpf">
                                <node concept="3oM_SD" id="589APehYwA2" role="1PaTwD">
                                  <property role="3oM_SC" value="TODO:" />
                                </node>
                                <node concept="3oM_SD" id="589APehYwA3" role="1PaTwD">
                                  <property role="3oM_SC" value="what" />
                                </node>
                                <node concept="3oM_SD" id="589APehYwA4" role="1PaTwD">
                                  <property role="3oM_SC" value="about" />
                                </node>
                                <node concept="3oM_SD" id="589APehYwA5" role="1PaTwD">
                                  <property role="3oM_SC" value="variables" />
                                </node>
                                <node concept="3oM_SD" id="589APehYwA6" role="1PaTwD">
                                  <property role="3oM_SC" value="inside" />
                                </node>
                                <node concept="3oM_SD" id="589APehYwA7" role="1PaTwD">
                                  <property role="3oM_SC" value="terms?" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3w0n0hznwBK" role="3cqZAp">
                              <node concept="37vLTI" id="3w0n0hznwBL" role="3clFbG">
                                <node concept="3clFbT" id="3w0n0hznwBM" role="37vLTx">
                                  <property role="3clFbU" value="true" />
                                </node>
                                <node concept="37vLTw" id="3w0n0hznwBN" role="37vLTJ">
                                  <ref role="3cqZAo" node="3w0n0hznw_R" resolve="replOk" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="3w0n0hznwBO" role="3cqZAp" />
                      <node concept="3clFbF" id="3w0n0hznwBP" role="3cqZAp">
                        <node concept="37vLTw" id="3w0n0hznwBQ" role="3clFbG">
                          <ref role="3cqZAo" node="3w0n0hznw_R" resolve="replOk" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1nLNNL" id="6$MtiK8GZN$" role="3cqZAp">
              <node concept="1nLNMm" id="6$MtiK8GZN_" role="1nLNNK">
                <node concept="3Aq93q" id="3w0n0hznwzB" role="1nLNMb">
                  <property role="3ArMco" value="true" />
                  <node concept="3I6sU6" id="3w0n0hznwzC" role="3Ip0Jz">
                    <node concept="3I6s7M" id="3w0n0hznwzD" role="3I6sU7">
                      <node concept="3Aqt3T" id="3w0n0hznwzE" role="3I6s78">
                        <ref role="3AqCNq" to="6r1k:2aBGSFgfwNi" resolve="conclusion" />
                        <node concept="a7P8L" id="3w0n0hznwzF" role="3AunhB">
                          <ref role="a7OzE" node="3w0n0hznw$j" resolve="Prem" />
                        </node>
                        <node concept="37jhX" id="1TH_SRmhqz7" role="3AunhB">
                          <node concept="2OqwBi" id="3w0n0hznwzH" role="37jj2">
                            <node concept="1y4W85" id="3w0n0hznwzI" role="2Oq$k0">
                              <node concept="3cmrfG" id="3w0n0hznwzJ" role="1y58nS">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="2OqwBi" id="3w0n0hznwzK" role="1y566C">
                                <node concept="3A2sRY" id="3w0n0hznwzL" role="2Oq$k0">
                                  <ref role="3A2yKK" node="3w0n0hznw$J" resolve="eqe" />
                                </node>
                                <node concept="3Tsc0h" id="3w0n0hznwzM" role="2OqNvi">
                                  <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                </node>
                              </node>
                            </node>
                            <node concept="3TrEf2" id="3w0n0hznwzN" role="2OqNvi">
                              <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3I6s7M" id="3w0n0hznwzO" role="3I6sU7">
                      <node concept="3Aqt3T" id="3w0n0hznwzP" role="3I6s78">
                        <ref role="3AqCNq" to="6r1k:2aBGSFgfwNi" resolve="conclusion" />
                        <node concept="1HFMs5" id="7VBaGntKIM6" role="3AunhB">
                          <node concept="ns1u0" id="7VBaGntKJ91" role="1uarlW">
                            <ref role="ns1xF" node="7VBaGntKJ6C" resolve="Equality" />
                            <node concept="nsMwS" id="7VBaGntKJ92" role="ns1xD">
                              <ref role="nsMwP" node="7VBaGntKJ6E" resolve="left" />
                              <node concept="1nq8_$" id="3w0n0hznwzX" role="nsMwV">
                                <node concept="a7P8L" id="3w0n0hznwzY" role="1nq8_t">
                                  <ref role="a7OzE" node="3w0n0hznw$l" resolve="EqLeft" />
                                </node>
                              </node>
                            </node>
                            <node concept="nsMwS" id="7VBaGntKJ93" role="ns1xD">
                              <ref role="nsMwP" node="7VBaGntKJ6F" resolve="right" />
                              <node concept="1nq8_$" id="3w0n0hznw$3" role="nsMwV">
                                <node concept="a7P8L" id="3w0n0hznw$4" role="1nq8_t">
                                  <ref role="a7OzE" node="3w0n0hznw$m" resolve="EqRight" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="a7P8L" id="3w0n0hznwzR" role="1uarlU">
                            <ref role="a7OzE" node="3w0n0hznw$k" resolve="Eq" />
                          </node>
                        </node>
                        <node concept="37jhX" id="1TH_SRmhqz8" role="3AunhB">
                          <node concept="2OqwBi" id="3w0n0hznw$6" role="37jj2">
                            <node concept="1y4W85" id="3w0n0hznw$7" role="2Oq$k0">
                              <node concept="3cmrfG" id="3w0n0hznw$8" role="1y58nS">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="2OqwBi" id="3w0n0hznw$9" role="1y566C">
                                <node concept="3A2sRY" id="3w0n0hznw$a" role="2Oq$k0">
                                  <ref role="3A2yKK" node="3w0n0hznw$J" resolve="eqe" />
                                </node>
                                <node concept="3Tsc0h" id="3w0n0hznw$b" role="2OqNvi">
                                  <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                </node>
                              </node>
                            </node>
                            <node concept="3TrEf2" id="3w0n0hznw$c" role="2OqNvi">
                              <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3I6s7M" id="3w0n0hznw$d" role="3I6sU7">
                      <node concept="3Aqt3T" id="3w0n0hznw$e" role="3I6s78">
                        <ref role="3AqCNq" to="6r1k:2aBGSFgfwNi" resolve="conclusion" />
                        <node concept="a7P8L" id="3w0n0hznw$f" role="3AunhB">
                          <ref role="a7OzE" node="3w0n0hznw$n" resolve="Con" />
                        </node>
                        <node concept="37jhX" id="1TH_SRmhqz9" role="3AunhB">
                          <node concept="3A2sRY" id="3w0n0hznw$h" role="37jj2">
                            <ref role="3A2yKK" node="3w0n0hznw$J" resolve="eqe" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Aq93q" id="3w0n0hznw$o" role="1nLNMb">
                  <property role="3ArMco" value="true" />
                  <node concept="3I6sU6" id="3w0n0hznw$p" role="3Ip0Jz">
                    <node concept="3I6s7M" id="3w0n0hznw$q" role="3I6sU7">
                      <node concept="3Aqt3T" id="3w0n0hznw$r" role="3I6s78">
                        <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                        <node concept="37jhX" id="1TH_SRmhqza" role="3AunhB">
                          <node concept="2OqwBi" id="3w0n0hznw$t" role="37jj2">
                            <node concept="1y4W85" id="3w0n0hznw$u" role="2Oq$k0">
                              <node concept="3cmrfG" id="3w0n0hznw$v" role="1y58nS">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="2OqwBi" id="3w0n0hznw$w" role="1y566C">
                                <node concept="3A2sRY" id="3w0n0hznw$x" role="2Oq$k0">
                                  <ref role="3A2yKK" node="3w0n0hznw$J" resolve="eqe" />
                                </node>
                                <node concept="3Tsc0h" id="3w0n0hznw$y" role="2OqNvi">
                                  <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                </node>
                              </node>
                            </node>
                            <node concept="3TrEf2" id="3w0n0hznw$z" role="2OqNvi">
                              <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3I6s7M" id="3w0n0hznw$$" role="3I6sU7">
                      <node concept="3Aqt3T" id="3w0n0hznw$_" role="3I6s78">
                        <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                        <node concept="37jhX" id="1TH_SRmhqzb" role="3AunhB">
                          <node concept="2OqwBi" id="3w0n0hznw$B" role="37jj2">
                            <node concept="1y4W85" id="3w0n0hznw$C" role="2Oq$k0">
                              <node concept="3cmrfG" id="3w0n0hznw$D" role="1y58nS">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="2OqwBi" id="3w0n0hznw$E" role="1y566C">
                                <node concept="3A2sRY" id="3w0n0hznw$F" role="2Oq$k0">
                                  <ref role="3A2yKK" node="3w0n0hznw$J" resolve="eqe" />
                                </node>
                                <node concept="3Tsc0h" id="3w0n0hznw$G" role="2OqNvi">
                                  <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                </node>
                              </node>
                            </node>
                            <node concept="3TrEf2" id="3w0n0hznw$H" role="2OqNvi">
                              <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Aq9_M" id="3w0n0hznw$U" role="1nLNMa">
                  <node concept="3I6sU6" id="3w0n0hznw$V" role="3Ip0Jz">
                    <node concept="3I6s7M" id="3w0n0hznw$W" role="3I6sU7">
                      <node concept="3A8Hvi" id="3w0n0hznw$X" role="3I6s78">
                        <node concept="1lh$Hi" id="3w0n0hznw$Y" role="3A8wtg">
                          <node concept="a7P8L" id="3w0n0hznw$Z" role="1lh$Hv">
                            <ref role="a7OzE" node="3w0n0hznw$j" resolve="Prem" />
                          </node>
                          <node concept="a7P8L" id="3w0n0hznyee" role="1lh$H$">
                            <ref role="a7OzE" node="3w0n0hznw$m" resolve="EqRight" />
                          </node>
                          <node concept="a7P8L" id="3w0n0hznygA" role="1lh$Hx">
                            <ref role="a7OzE" node="3w0n0hznw$l" resolve="EqLeft" />
                          </node>
                        </node>
                        <node concept="a7P8L" id="3w0n0hznw_2" role="3A8w4Q">
                          <ref role="a7OzE" node="3w0n0hznw$n" resolve="Con" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3NuqgR" id="3w0n0hznw$i" role="0Rg$4">
                  <node concept="aZer4" id="3w0n0hznw$j" role="3XD1gS">
                    <property role="TrG5h" value="Prem" />
                  </node>
                  <node concept="aZer4" id="3w0n0hznw$k" role="3XD1gS">
                    <property role="TrG5h" value="Eq" />
                  </node>
                  <node concept="aZer4" id="3w0n0hznw$l" role="3XD1gS">
                    <property role="TrG5h" value="EqLeft" />
                  </node>
                  <node concept="aZer4" id="3w0n0hznw$m" role="3XD1gS">
                    <property role="TrG5h" value="EqRight" />
                  </node>
                  <node concept="aZer4" id="3w0n0hznw$n" role="3XD1gS">
                    <property role="TrG5h" value="Con" />
                  </node>
                  <node concept="32pEOW" id="24ciDNzxNvp" role="3vLBG7" />
                </node>
                <node concept="3xSepi" id="6E2cNicdh89" role="3xSepv">
                  <node concept="3Aq9E8" id="3w0n0hznw_3" role="3xSepj">
                    <node concept="3I6sU6" id="3w0n0hznw_4" role="3Ip0Jz">
                      <node concept="3I6s7M" id="3w0n0hznw_5" role="3I6sU7">
                        <node concept="3lcGGY" id="3w0n0hznw_6" role="3I6s78">
                          <node concept="37vLTw" id="6$MtiK8GZNB" role="3wWo3s">
                            <ref role="3cqZAo" node="3w0n0hznw_s" resolve="replOk" />
                          </node>
                        </node>
                      </node>
                      <node concept="3I6s7M" id="3w0n0hznw_8" role="3I6sU7">
                        <node concept="3Aqt3T" id="3w0n0hznw_9" role="3I6s78">
                          <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                          <node concept="37jhX" id="1TH_SRmhqzc" role="3AunhB">
                            <node concept="3A2sRY" id="3w0n0hznw_b" role="37jj2">
                              <ref role="3A2yKK" node="3w0n0hznw$J" resolve="eqe" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3xSepi" id="6E2cNicdh8a" role="3xSepv">
                  <node concept="3Aq9E8" id="3w0n0hznw_c" role="3xSepj">
                    <node concept="3I6sU6" id="3w0n0hznw_d" role="3Ip0Jz">
                      <node concept="3I6s7M" id="1laj_RSf2K9" role="3I6sU7">
                        <node concept="1lHd6T" id="1laj_RSf2K8" role="3I6s78">
                          <property role="1lHdp1" value="4jcOV4hu0n_/ERROR" />
                          <node concept="Xl_RD" id="1laj_RSf2Ki" role="1ljv2e">
                            <property role="Xl_RC" value="replacement is not OK" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3w0n0hznw$N" role="3clFbw">
            <node concept="3cmrfG" id="3w0n0hznw$O" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="3w0n0hznw$P" role="3uHU7B">
              <node concept="2OqwBi" id="3w0n0hznw$Q" role="2Oq$k0">
                <node concept="3A2sRY" id="3w0n0hznw$R" role="2Oq$k0">
                  <ref role="3A2yKK" node="3w0n0hznw$J" resolve="eqe" />
                </node>
                <node concept="3Tsc0h" id="3w0n0hznw$S" role="2OqNvi">
                  <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                </node>
              </node>
              <node concept="34oBXx" id="3w0n0hznw$T" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="ns1xd" id="7VBaGntKJ6B">
    <property role="TrG5h" value="FirstOrder" />
    <node concept="ns1x$" id="7VBaGntKJ6C" role="ns1xc">
      <property role="TrG5h" value="Equality" />
      <node concept="nspSf" id="7VBaGntKJ6D" role="ns1xx">
        <node concept="nstbe" id="7VBaGntKJ6E" role="nspSe">
          <property role="TrG5h" value="left" />
          <property role="nspS5" value="false" />
        </node>
        <node concept="nstbe" id="7VBaGntKJ6F" role="nspSe">
          <property role="TrG5h" value="right" />
          <property role="nspS5" value="false" />
        </node>
      </node>
    </node>
  </node>
</model>

