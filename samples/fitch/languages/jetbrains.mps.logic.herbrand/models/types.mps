<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2e585daf-c5c7-4735-a41f-b2044cd9b207(jetbrains.mps.logic.herbrand.types)">
  <persistence version="9" />
  <languages>
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules" version="14" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="6r1k" ref="r:30d249b0-c2b0-4934-8bd8-e1d7a37c3b3b(jetbrains.mps.logic.propositional.types)" />
    <import index="f3ld" ref="r:30efdd3a-609b-4e7b-a8f2-60af62d5341f(jetbrains.mps.fitch.types)" />
    <import index="jfgh" ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
    <import index="bw37" ref="r:faa478da-573c-4c9e-99e4-b87297289505(jetbrains.mps.logic.herbrand.structure)" />
    <import index="qd7f" ref="r:6e0181fc-40ea-4aea-a8b0-3ba2d104ddef(jetbrains.mps.fitch.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
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
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
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
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
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
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
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
      <concept id="861509610434305888" name="jetbrains.mps.dataform.structure.ListFeature" flags="ng" index="nsiOd" />
      <concept id="861509610434276453" name="jetbrains.mps.dataform.structure.DataFormFeature" flags="ng" index="nspS8">
        <property id="861509610434276456" name="final" index="nspS5" />
      </concept>
      <concept id="861509610434276450" name="jetbrains.mps.dataform.structure.DataFormTemplate" flags="ng" index="nspSf">
        <child id="861509610434276451" name="feature" index="nspSe" />
      </concept>
      <concept id="861509610434294982" name="jetbrains.mps.dataform.structure.ValueFeature" flags="ng" index="nssqF" />
      <concept id="861509610434289827" name="jetbrains.mps.dataform.structure.ChildFeature" flags="ng" index="nstbe" />
      <concept id="861509610434435669" name="jetbrains.mps.dataform.structure.DataFormFeatureOverride" flags="ng" index="nsMwS">
        <reference id="861509610434435672" name="feature" index="nsMwP" />
        <child id="861509610434435670" name="getter" index="nsMwV" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="1564179198502666296" name="jetbrains.mps.logic.structure.LogicalType" flags="ig" index="26uTi9" />
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
      <concept id="4780620083400582599" name="jetbrains.mps.logic.structure.LogicalExpression" flags="ng" index="1nq8_$">
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
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
        <child id="1562299158920737514" name="initSize" index="3lWHg$" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1171391069720" name="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation" flags="nn" index="2WmjW8" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
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
      <concept id="6958395097955138" name="jetbrains.mps.lang.coderules.structure.SNodeReportOperation" flags="ng" index="2s7oft">
        <property id="6958395097963305" name="kind" index="2s7ueQ" />
        <child id="6958395097963208" name="text" index="2s7u9n" />
      </concept>
      <concept id="6691972578451976398" name="jetbrains.mps.lang.coderules.structure.RuleInputSpecification" flags="ng" index="2t___k">
        <reference id="6691972578451990912" name="applicableConcept" index="2t_S0q" />
        <child id="6691972578451986151" name="input" index="2t_VXX" />
      </concept>
      <concept id="8335224865066015764" name="jetbrains.mps.lang.coderules.structure.Handler" flags="ng" index="AVZre">
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
      <concept id="3575255234174969639" name="jetbrains.mps.lang.coderules.structure.ConstraintRule" flags="ng" index="1nLNMm">
        <child id="8456919074565751439" name="parameter" index="0UC6o" />
        <child id="3575255234174969659" name="guard" index="1nLNMa" />
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
        <child id="8908809128801951594" name="parameter" index="3uniRp" />
        <child id="8908809128801951592" name="code" index="3uniRr" />
      </concept>
      <concept id="8908809128801951597" name="jetbrains.mps.lang.coderules.structure.MacroBodyLogicalDeclaration" flags="ng" index="3uniRu" />
      <concept id="5372587443968979218" name="jetbrains.mps.lang.coderules.structure.ExpressionConstraint" flags="ng" index="3wWvb2">
        <child id="5372587443968983820" name="expression" index="3wWo3s" />
      </concept>
      <concept id="4492335231042132271" name="jetbrains.mps.lang.coderules.structure.ContextParameterReference" flags="ng" index="1$qI8S">
        <reference id="4492335231042132281" name="parameter" index="1$qI8I" />
      </concept>
      <concept id="4492335231042132193" name="jetbrains.mps.lang.coderules.structure.ContextParameterDeclaration" flags="ng" index="1$qIfQ">
        <child id="4492335231042132212" name="type" index="1$qIfz" />
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
      <concept id="8581119423153238082" name="jetbrains.mps.lang.coderules.structure.NodeAnchor" flags="ng" index="3BlFb$">
        <child id="8581119423153238083" name="node" index="3BlFb_" />
      </concept>
      <concept id="1877115349178398764" name="jetbrains.mps.lang.coderules.structure.EqualsConstraint" flags="ng" index="3GeI9q">
        <child id="1877115349178398815" name="right" index="3GeI8D" />
        <child id="1877115349178398813" name="left" index="3GeI8F" />
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
      <concept id="7231283050490391433" name="jetbrains.mps.lang.coderules.structure.ContextParameterContainer" flags="ng" index="1M$Gom">
        <child id="7231283050490401312" name="parameter" index="1M$zYZ" />
      </concept>
      <concept id="965748826975413063" name="jetbrains.mps.lang.coderules.structure.RulePartParameterDeclaration" flags="ng" index="3NuqgR" />
    </language>
  </registry>
  <node concept="0oKg$" id="Vo$tzLEEHJ">
    <property role="TrG5h" value="Terms" />
    <node concept="0oKvU" id="Vo$tzLEEHK" role="0oKgB">
      <property role="TrG5h" value="Forall" />
      <node concept="3eYOCq" id="Vo$tzLEEHL" role="3eYTkm">
        <property role="TrG5h" value="forall" />
        <node concept="3Tqbb2" id="Vo$tzLEEHM" role="3eYSA1">
          <ref role="ehGHo" to="bw37:2DPo4JTRwtd" resolve="Forall" />
        </node>
      </node>
      <node concept="3uniRm" id="Vo$tzLEEIc" role="3unh6L">
        <node concept="3clFbS" id="Vo$tzLEEIi" role="3uniRr">
          <node concept="3Aqczg" id="2oO2uzBWKpR" role="3cqZAp">
            <node concept="1imXTs" id="2oO2uzBWKpS" role="3Aqpz8">
              <node concept="a7P8L" id="2oO2uzBWKqM" role="1imXu6">
                <ref role="a7OzE" node="Vo$tzLEEJk" resolve="Var" />
              </node>
              <node concept="3tDTZT" id="2oO2uzBWKpU" role="1imXSf">
                <ref role="3tDTNw" node="Vo$tzLEEKt" resolve="variable" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="Vo$tzLEFFs" role="3cqZAp">
            <node concept="1imXTs" id="Vo$tzLEFFt" role="3Aqpz8">
              <node concept="a7P8L" id="Vo$tzLEFFR" role="1imXu6">
                <ref role="a7OzE" node="Vo$tzLEEJq" resolve="Sent" />
              </node>
              <node concept="3tDTZT" id="Vo$tzLEFG1" role="1imXSf">
                <ref role="3tDTNw" node="Vo$tzLEEK$" resolve="sentence" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="Vo$tzLEEIh" role="3cqZAp">
            <node concept="3GeI9q" id="Vo$tzLEEIe" role="3Aqpz8">
              <node concept="aZ4PW" id="Vo$tzLEEIz" role="3GeI8F">
                <node concept="3txIi4" id="Vo$tzLEEID" role="aZ4eD" />
              </node>
              <node concept="ns1u0" id="7VBaGntKJam" role="3GeI8D">
                <ref role="ns1xF" node="7VBaGntKJ6Q" resolve="Forall" />
                <node concept="nsMwS" id="7VBaGntKJan" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ6S" resolve="variable" />
                  <node concept="1nq8_$" id="Vo$tzLEFG7" role="nsMwV">
                    <node concept="a7P8L" id="Vo$tzLEFG6" role="1nq8_t">
                      <ref role="a7OzE" node="Vo$tzLEEJk" resolve="Var" />
                    </node>
                  </node>
                </node>
                <node concept="nsMwS" id="7VBaGntKJao" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ6T" resolve="sentence" />
                  <node concept="1nq8_$" id="Vo$tzLEFIm" role="nsMwV">
                    <node concept="a7P8L" id="Vo$tzLEFIl" role="1nq8_t">
                      <ref role="a7OzE" node="Vo$tzLEEJq" resolve="Sent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uniRu" id="Vo$tzLEEJj" role="3uniRp">
          <node concept="aZer4" id="Vo$tzLEEJk" role="3XD1gS">
            <property role="TrG5h" value="Var" />
          </node>
          <node concept="aZer4" id="Vo$tzLEEJq" role="3XD1gS">
            <property role="TrG5h" value="Sent" />
          </node>
        </node>
      </node>
      <node concept="3tC51N" id="Vo$tzLEEKt" role="3tC56T">
        <property role="TrG5h" value="variable" />
        <node concept="3Tqbb2" id="Vo$tzLEEKx" role="3tC51t">
          <ref role="ehGHo" to="bw37:2DPo4JTRwsM" resolve="Variable" />
        </node>
        <node concept="3tHm6F" id="Vo$tzLEEKH" role="3tH6H5">
          <node concept="3clFbS" id="Vo$tzLEEKI" role="16YjZG">
            <node concept="3clFbF" id="Vo$tzLEEKU" role="3cqZAp">
              <node concept="2OqwBi" id="Vo$tzLEEUh" role="3clFbG">
                <node concept="3eTFj6" id="Vo$tzLEEKT" role="2Oq$k0">
                  <ref role="3eTFj1" node="Vo$tzLEEHL" resolve="forall" />
                </node>
                <node concept="3TrEf2" id="Vo$tzLEF7l" role="2OqNvi">
                  <ref role="3Tt5mk" to="bw37:2DPo4JTRwtr" resolve="variable" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3tC51N" id="Vo$tzLEEK$" role="3tC56T">
        <property role="TrG5h" value="sentence" />
        <node concept="3Tqbb2" id="Vo$tzLEEKE" role="3tC51t">
          <ref role="ehGHo" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
        </node>
        <node concept="3tHm6F" id="Vo$tzLEF9t" role="3tH6H5">
          <node concept="3clFbS" id="Vo$tzLEF9u" role="16YjZG">
            <node concept="3clFbF" id="Vo$tzLEF9E" role="3cqZAp">
              <node concept="2OqwBi" id="Vo$tzLEFhz" role="3clFbG">
                <node concept="3eTFj6" id="Vo$tzLEF9D" role="2Oq$k0">
                  <ref role="3eTFj1" node="Vo$tzLEEHL" resolve="forall" />
                </node>
                <node concept="3TrEf2" id="Vo$tzLEFDd" role="2OqNvi">
                  <ref role="3Tt5mk" to="bw37:2DPo4JTRwts" resolve="sentence" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="0oKvU" id="Vo$tzLEFMe" role="0oKgB">
      <property role="TrG5h" value="Exists" />
      <node concept="3eYOCq" id="Vo$tzLEFMf" role="3eYTkm">
        <property role="TrG5h" value="exists" />
        <node concept="3Tqbb2" id="Vo$tzLEFMg" role="3eYSA1">
          <ref role="ehGHo" to="bw37:2DPo4JTRwtj" resolve="Exists" />
        </node>
      </node>
      <node concept="3uniRm" id="Vo$tzLEFMh" role="3unh6L">
        <node concept="3clFbS" id="Vo$tzLEFMi" role="3uniRr">
          <node concept="3Aqczg" id="Vo$tzLEFMj" role="3cqZAp">
            <node concept="1imXTs" id="Vo$tzLEFMk" role="3Aqpz8">
              <node concept="a7P8L" id="Vo$tzLEFMl" role="1imXu6">
                <ref role="a7OzE" node="Vo$tzLEFMH" resolve="Var" />
              </node>
              <node concept="3tDTZT" id="Vo$tzLEFMm" role="1imXSf">
                <ref role="3tDTNw" node="Vo$tzLEFMJ" resolve="variable" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="Vo$tzLEFMn" role="3cqZAp">
            <node concept="1imXTs" id="Vo$tzLEFMo" role="3Aqpz8">
              <node concept="a7P8L" id="Vo$tzLEFMp" role="1imXu6">
                <ref role="a7OzE" node="Vo$tzLEFMI" resolve="Sent" />
              </node>
              <node concept="3tDTZT" id="Vo$tzLEFMq" role="1imXSf">
                <ref role="3tDTNw" node="Vo$tzLEFMR" resolve="sentence" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="Vo$tzLEFMr" role="3cqZAp">
            <node concept="3GeI9q" id="Vo$tzLEFMs" role="3Aqpz8">
              <node concept="aZ4PW" id="Vo$tzLEFMt" role="3GeI8F">
                <node concept="3txIi4" id="Vo$tzLEFMu" role="aZ4eD" />
              </node>
              <node concept="ns1u0" id="7VBaGntKJap" role="3GeI8D">
                <ref role="ns1xF" node="7VBaGntKJ6U" resolve="Exists" />
                <node concept="nsMwS" id="7VBaGntKJaq" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ6W" resolve="variable" />
                  <node concept="1nq8_$" id="Vo$tzLEFM$" role="nsMwV">
                    <node concept="a7P8L" id="Vo$tzLEFM_" role="1nq8_t">
                      <ref role="a7OzE" node="Vo$tzLEFMH" resolve="Var" />
                    </node>
                  </node>
                </node>
                <node concept="nsMwS" id="7VBaGntKJar" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ6X" resolve="sentence" />
                  <node concept="1nq8_$" id="Vo$tzLEFME" role="nsMwV">
                    <node concept="a7P8L" id="Vo$tzLEFMF" role="1nq8_t">
                      <ref role="a7OzE" node="Vo$tzLEFMI" resolve="Sent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uniRu" id="Vo$tzLEFMG" role="3uniRp">
          <node concept="aZer4" id="Vo$tzLEFMH" role="3XD1gS">
            <property role="TrG5h" value="Var" />
          </node>
          <node concept="aZer4" id="Vo$tzLEFMI" role="3XD1gS">
            <property role="TrG5h" value="Sent" />
          </node>
        </node>
      </node>
      <node concept="3tC51N" id="Vo$tzLEFMJ" role="3tC56T">
        <property role="TrG5h" value="variable" />
        <node concept="3Tqbb2" id="Vo$tzLEFMK" role="3tC51t">
          <ref role="ehGHo" to="bw37:2DPo4JTRwsM" resolve="Variable" />
        </node>
        <node concept="3tHm6F" id="Vo$tzLEFML" role="3tH6H5">
          <node concept="3clFbS" id="Vo$tzLEFMM" role="16YjZG">
            <node concept="3clFbF" id="Vo$tzLEFMN" role="3cqZAp">
              <node concept="2OqwBi" id="Vo$tzLEFMO" role="3clFbG">
                <node concept="3eTFj6" id="Vo$tzLEFMP" role="2Oq$k0">
                  <ref role="3eTFj1" node="Vo$tzLEFMf" resolve="exists" />
                </node>
                <node concept="3TrEf2" id="Vo$tzLEG9D" role="2OqNvi">
                  <ref role="3Tt5mk" to="bw37:2DPo4JTRwto" resolve="variable" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3tC51N" id="Vo$tzLEFMR" role="3tC56T">
        <property role="TrG5h" value="sentence" />
        <node concept="3Tqbb2" id="Vo$tzLEFMS" role="3tC51t">
          <ref role="ehGHo" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
        </node>
        <node concept="3tHm6F" id="Vo$tzLEFMT" role="3tH6H5">
          <node concept="3clFbS" id="Vo$tzLEFMU" role="16YjZG">
            <node concept="3clFbF" id="Vo$tzLEFMV" role="3cqZAp">
              <node concept="2OqwBi" id="Vo$tzLEFMW" role="3clFbG">
                <node concept="3eTFj6" id="Vo$tzLEFMX" role="2Oq$k0">
                  <ref role="3eTFj1" node="Vo$tzLEFMf" resolve="exists" />
                </node>
                <node concept="3TrEf2" id="Vo$tzLEGmK" role="2OqNvi">
                  <ref role="3Tt5mk" to="bw37:2DPo4JTRwtm" resolve="sentence" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="0oKvU" id="Vo$tzLI8XD" role="0oKgB">
      <property role="TrG5h" value="Relation" />
      <node concept="3eYOCq" id="Vo$tzLI8XE" role="3eYTkm">
        <property role="TrG5h" value="rel" />
        <node concept="3Tqbb2" id="Vo$tzLI8XF" role="3eYSA1">
          <ref role="ehGHo" to="bw37:2DPo4JTRwtx" resolve="Relation" />
        </node>
      </node>
      <node concept="3tC51N" id="Vo$tzLIqd5" role="3tC56T">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="Vo$tzLIqdh" role="3tC51t" />
        <node concept="3tHm6F" id="Vo$tzLIqdk" role="3tH6H5">
          <node concept="3clFbS" id="Vo$tzLIqdl" role="16YjZG">
            <node concept="3clFbF" id="Vo$tzLIqdx" role="3cqZAp">
              <node concept="2OqwBi" id="Vo$tzLIqnE" role="3clFbG">
                <node concept="3eTFj6" id="Vo$tzLIqdw" role="2Oq$k0">
                  <ref role="3eTFj1" node="Vo$tzLI8XE" resolve="rel" />
                </node>
                <node concept="3TrcHB" id="Vo$tzLIq$s" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3tC51N" id="Vo$tzLI8Zn" role="3tC56T">
        <property role="TrG5h" value="member" />
        <node concept="2I9FWS" id="Vo$tzLI9Ai" role="3tC51t">
          <ref role="2I9WkF" to="bw37:2DPo4JTRwsJ" resolve="Term" />
        </node>
        <node concept="3tHm6F" id="Vo$tzLI8Zz" role="3tH6H5">
          <node concept="3clFbS" id="Vo$tzLI8Z$" role="16YjZG">
            <node concept="3clFbF" id="Vo$tzLI8ZK" role="3cqZAp">
              <node concept="2OqwBi" id="Vo$tzLI99T" role="3clFbG">
                <node concept="3eTFj6" id="Vo$tzLI8ZJ" role="2Oq$k0">
                  <ref role="3eTFj1" node="Vo$tzLI8XE" resolve="rel" />
                </node>
                <node concept="3Tsc0h" id="Vo$tzLI9mF" role="2OqNvi">
                  <ref role="3TtcxE" to="bw37:2DPo4JTRwtF" resolve="member" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uniRm" id="Vo$tzLIpZe" role="3unh6L">
        <node concept="3uniRu" id="Vo$tzLIpZf" role="3uniRp">
          <node concept="aZer4" id="Vo$tzLIpZg" role="3XD1gS">
            <property role="TrG5h" value="Memb" />
            <node concept="2OqwBi" id="Vo$tzLIpZh" role="3gj$pD">
              <node concept="3tDTZT" id="Vo$tzLIqAL" role="2Oq$k0">
                <ref role="3tDTNw" node="Vo$tzLI8Zn" resolve="member" />
              </node>
              <node concept="34oBXx" id="Vo$tzLIpZj" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="Vo$tzLIpZk" role="3uniRr">
          <node concept="1Dw8fO" id="Vo$tzLIpZl" role="3cqZAp">
            <node concept="3cpWsn" id="Vo$tzLIpZm" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="Vo$tzLIpZn" role="1tU5fm" />
              <node concept="3cmrfG" id="Vo$tzLIpZo" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3clFbS" id="Vo$tzLIpZp" role="2LFqv$">
              <node concept="3Aqczg" id="Vo$tzLIpZq" role="3cqZAp">
                <node concept="1imXTs" id="Vo$tzLIpZr" role="3Aqpz8">
                  <node concept="a7P8L" id="Vo$tzLIpZs" role="1imXu6">
                    <ref role="a7OzE" node="Vo$tzLIpZg" resolve="Memb" />
                    <node concept="37vLTw" id="Vo$tzLIpZt" role="3gCZO6">
                      <ref role="3cqZAo" node="Vo$tzLIpZm" resolve="i" />
                    </node>
                  </node>
                  <node concept="1y4W85" id="Vo$tzLIpZu" role="1imXSf">
                    <node concept="37vLTw" id="Vo$tzLIpZv" role="1y58nS">
                      <ref role="3cqZAo" node="Vo$tzLIpZm" resolve="i" />
                    </node>
                    <node concept="3tDTZT" id="Vo$tzLIqPs" role="1y566C">
                      <ref role="3tDTNw" node="Vo$tzLI8Zn" resolve="member" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOVzh" id="Vo$tzLIpZx" role="1Dwp0S">
              <node concept="2OqwBi" id="Vo$tzLIpZy" role="3uHU7w">
                <node concept="3tDTZT" id="Vo$tzLIqIX" role="2Oq$k0">
                  <ref role="3tDTNw" node="Vo$tzLI8Zn" resolve="member" />
                </node>
                <node concept="34oBXx" id="Vo$tzLIpZ$" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="Vo$tzLIpZ_" role="3uHU7B">
                <ref role="3cqZAo" node="Vo$tzLIpZm" resolve="i" />
              </node>
            </node>
            <node concept="3uNrnE" id="Vo$tzLIpZA" role="1Dwrff">
              <node concept="37vLTw" id="Vo$tzLIpZB" role="2$L3a6">
                <ref role="3cqZAo" node="Vo$tzLIpZm" resolve="i" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="Vo$tzLIpZC" role="3cqZAp">
            <node concept="3GeI9q" id="Vo$tzLIpZD" role="3Aqpz8">
              <node concept="aZ4PW" id="Vo$tzLIpZE" role="3GeI8F">
                <node concept="3txIi4" id="Vo$tzLIpZF" role="aZ4eD" />
              </node>
              <node concept="ns1u0" id="7VBaGntKJav" role="3GeI8D">
                <ref role="ns1xF" node="7VBaGntKJ6Y" resolve="Relation" />
                <node concept="nsMwS" id="7VBaGntKJaw" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ70" resolve="name" />
                  <node concept="3tDTZT" id="Vo$tzLIqX5" role="nsMwV">
                    <ref role="3tDTNw" node="Vo$tzLIqd5" resolve="name" />
                  </node>
                </node>
                <node concept="nsMwS" id="7VBaGntKJax" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ71" resolve="member" />
                  <node concept="1nq8_$" id="Vo$tzLIpZQ" role="nsMwV">
                    <node concept="a7P8L" id="Vo$tzLIpZR" role="1nq8_t">
                      <ref role="a7OzE" node="Vo$tzLIpZg" resolve="Memb" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="0oKvU" id="Vo$tzLI9K1" role="0oKgB">
      <property role="TrG5h" value="Object" />
      <node concept="3eYOCq" id="Vo$tzLI9K2" role="3eYTkm">
        <property role="TrG5h" value="obj" />
        <node concept="3Tqbb2" id="Vo$tzLI9K3" role="3eYSA1">
          <ref role="ehGHo" to="bw37:2DPo4JTRwsI" resolve="Object" />
        </node>
      </node>
      <node concept="3tC51N" id="Vo$tzLI9M2" role="3tC56T">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="Vo$tzLI9M6" role="3tC51t" />
        <node concept="3tHm6F" id="Vo$tzLI9M9" role="3tH6H5">
          <node concept="3clFbS" id="Vo$tzLI9Ma" role="16YjZG">
            <node concept="3clFbF" id="Vo$tzLI9Mm" role="3cqZAp">
              <node concept="2OqwBi" id="Vo$tzLI9Wv" role="3clFbG">
                <node concept="3eTFj6" id="Vo$tzLI9Ml" role="2Oq$k0">
                  <ref role="3eTFj1" node="Vo$tzLI9K2" resolve="obj" />
                </node>
                <node concept="3TrcHB" id="Vo$tzLIa9h" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uniRm" id="Vo$tzLIbP6" role="3unh6L">
        <node concept="3clFbS" id="Vo$tzLIbPc" role="3uniRr">
          <node concept="3Aqczg" id="Vo$tzLIbPb" role="3cqZAp">
            <node concept="3GeI9q" id="Vo$tzLIbP8" role="3Aqpz8">
              <node concept="aZ4PW" id="Vo$tzLIbPi" role="3GeI8F">
                <node concept="3txIi4" id="Vo$tzLIbPo" role="aZ4eD" />
              </node>
              <node concept="ns1u0" id="7VBaGntKJab" role="3GeI8D">
                <ref role="ns1xF" node="7VBaGntKJ72" resolve="Object" />
                <node concept="nsMwS" id="7VBaGntKJac" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ74" resolve="name" />
                  <node concept="3tDTZT" id="Vo$tzLIbPJ" role="nsMwV">
                    <ref role="3tDTNw" node="Vo$tzLI9M2" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="0oKvU" id="Vo$tzLIabA" role="0oKgB">
      <property role="TrG5h" value="Variable" />
      <node concept="3tC51N" id="Vo$tzLIadM" role="3tC56T">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="Vo$tzLIadQ" role="3tC51t" />
        <node concept="3tHm6F" id="Vo$tzLIae1" role="3tH6H5">
          <node concept="3clFbS" id="Vo$tzLIae2" role="16YjZG">
            <node concept="3clFbF" id="Vo$tzLIaee" role="3cqZAp">
              <node concept="2OqwBi" id="Vo$tzLIauD" role="3clFbG">
                <node concept="3eTFj6" id="Vo$tzLIakx" role="2Oq$k0">
                  <ref role="3eTFj1" node="Vo$tzLIabB" resolve="var" />
                </node>
                <node concept="3TrcHB" id="Vo$tzLIaFr" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eYOCq" id="Vo$tzLIabB" role="3eYTkm">
        <property role="TrG5h" value="var" />
        <node concept="3Tqbb2" id="Vo$tzLIabC" role="3eYSA1">
          <ref role="ehGHo" to="bw37:2DPo4JTRwsM" resolve="Variable" />
        </node>
      </node>
      <node concept="3uniRm" id="Vo$tzLIbUH" role="3unh6L">
        <node concept="3clFbS" id="Vo$tzLIbUN" role="3uniRr">
          <node concept="3cpWs8" id="2oO2uzBX6DI" role="3cqZAp">
            <node concept="3cpWsn" id="2oO2uzBX6DJ" role="3cpWs9">
              <property role="TrG5h" value="subs" />
              <node concept="3rvAFt" id="2oO2uzBX6DK" role="1tU5fm">
                <node concept="17QB3L" id="2oO2uzBX6DL" role="3rvQeY" />
                <node concept="26uTi9" id="2oO2uzBX6DM" role="3rvSg0" />
              </node>
              <node concept="1$qI8S" id="2oO2uzBX6DN" role="33vP2m">
                <ref role="1$qI8I" node="2oO2uzBWWJ7" resolve="TypeVars" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2oO2uzBX6DO" role="3cqZAp">
            <node concept="3cpWsn" id="2oO2uzBX6DP" role="3cpWs9">
              <property role="TrG5h" value="VarSubs" />
              <node concept="26uTi9" id="2oO2uzBX6DQ" role="1tU5fm" />
              <node concept="3EllGN" id="2oO2uzBX6DR" role="33vP2m">
                <node concept="3tDTZT" id="2oO2uzBX6Iy" role="3ElVtu">
                  <ref role="3tDTNw" node="Vo$tzLIadM" resolve="name" />
                </node>
                <node concept="37vLTw" id="2oO2uzBX6DV" role="3ElQJh">
                  <ref role="3cqZAo" node="2oO2uzBX6DJ" resolve="subs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2oO2uzBX6DW" role="3cqZAp">
            <node concept="3clFbS" id="2oO2uzBX6DX" role="3clFbx">
              <node concept="3Aqczg" id="2oO2uzBX6DY" role="3cqZAp">
                <node concept="3GeI9q" id="2oO2uzBX6DZ" role="3Aqpz8">
                  <node concept="aZ4PW" id="2oO2uzBX6E1" role="3GeI8D">
                    <node concept="37vLTw" id="2oO2uzBX6E2" role="aZ4eD">
                      <ref role="3cqZAo" node="2oO2uzBX6DP" resolve="VarSubs" />
                    </node>
                  </node>
                  <node concept="aZ4PW" id="2oO2uzBX6LO" role="3GeI8F">
                    <node concept="3txIi4" id="2oO2uzBX6LU" role="aZ4eD" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2oO2uzBX6E3" role="3cqZAp" />
            </node>
            <node concept="3y3z36" id="2oO2uzBX6E4" role="3clFbw">
              <node concept="10Nm6u" id="2oO2uzBX6E5" role="3uHU7w" />
              <node concept="37vLTw" id="2oO2uzBX6E6" role="3uHU7B">
                <ref role="3cqZAo" node="2oO2uzBX6DP" resolve="VarSubs" />
              </node>
            </node>
            <node concept="9aQIb" id="2oO2uzBX6E7" role="9aQIa">
              <node concept="3clFbS" id="2oO2uzBX6E8" role="9aQI4">
                <node concept="3Aqczg" id="Vo$tzLIbUM" role="3cqZAp">
                  <node concept="3GeI9q" id="Vo$tzLIbUJ" role="3Aqpz8">
                    <node concept="aZ4PW" id="Vo$tzLIbUT" role="3GeI8F">
                      <node concept="3txIi4" id="Vo$tzLIbUZ" role="aZ4eD" />
                    </node>
                    <node concept="ns1u0" id="7VBaGntKJay" role="3GeI8D">
                      <ref role="ns1xF" node="7VBaGntKJ75" resolve="Variable" />
                      <node concept="nsMwS" id="7VBaGntKJaz" role="ns1xD">
                        <ref role="nsMwP" node="7VBaGntKJ77" resolve="name" />
                        <node concept="3tDTZT" id="2oO2uzBWBqJ" role="nsMwV">
                          <ref role="3tDTNw" node="Vo$tzLIadM" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uniRu" id="2oO2uzBW4WE" role="3uniRp">
          <node concept="aZer4" id="2oO2uzBW4WF" role="3XD1gS">
            <property role="TrG5h" value="Fresh" />
          </node>
        </node>
      </node>
    </node>
    <node concept="0oKvU" id="Vo$tzLIaHK" role="0oKgB">
      <property role="TrG5h" value="Function" />
      <node concept="3tC51N" id="Vo$tzLIaK7" role="3tC56T">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="Vo$tzLIaKb" role="3tC51t" />
        <node concept="3tHm6F" id="Vo$tzLIaKe" role="3tH6H5">
          <node concept="3clFbS" id="Vo$tzLIaKf" role="16YjZG">
            <node concept="3clFbF" id="Vo$tzLIaKr" role="3cqZAp">
              <node concept="2OqwBi" id="Vo$tzLIaU$" role="3clFbG">
                <node concept="3eTFj6" id="Vo$tzLIaKq" role="2Oq$k0">
                  <ref role="3eTFj1" node="Vo$tzLIaHL" resolve="fun" />
                </node>
                <node concept="3TrcHB" id="Vo$tzLIb7m" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3tC51N" id="Vo$tzLIb9T" role="3tC56T">
        <property role="TrG5h" value="argument" />
        <node concept="2I9FWS" id="Vo$tzLIba5" role="3tC51t">
          <ref role="2I9WkF" to="bw37:2DPo4JTRwsJ" resolve="Term" />
        </node>
        <node concept="3tHm6F" id="Vo$tzLIba8" role="3tH6H5">
          <node concept="3clFbS" id="Vo$tzLIba9" role="16YjZG">
            <node concept="3clFbF" id="Vo$tzLIbal" role="3cqZAp">
              <node concept="2OqwBi" id="Vo$tzLIbku" role="3clFbG">
                <node concept="3eTFj6" id="Vo$tzLIbak" role="2Oq$k0">
                  <ref role="3eTFj1" node="Vo$tzLIaHL" resolve="fun" />
                </node>
                <node concept="3Tsc0h" id="Vo$tzLIbHH" role="2OqNvi">
                  <ref role="3TtcxE" to="bw37:2DPo4JTRwtv" resolve="argument" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eYOCq" id="Vo$tzLIaHL" role="3eYTkm">
        <property role="TrG5h" value="fun" />
        <node concept="3Tqbb2" id="Vo$tzLIaHM" role="3eYSA1">
          <ref role="ehGHo" to="bw37:2DPo4JTRwsP" resolve="Function" />
        </node>
      </node>
      <node concept="3uniRm" id="Vo$tzLIc25" role="3unh6L">
        <node concept="3uniRu" id="Vo$tzLIcAo" role="3uniRp">
          <node concept="aZer4" id="Vo$tzLIcAp" role="3XD1gS">
            <property role="TrG5h" value="Arg" />
            <node concept="2OqwBi" id="Vo$tzLIdEU" role="3gj$pD">
              <node concept="3tDTZT" id="Vo$tzLIcAC" role="2Oq$k0">
                <ref role="3tDTNw" node="Vo$tzLIb9T" resolve="argument" />
              </node>
              <node concept="34oBXx" id="Vo$tzLIgpH" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="Vo$tzLIgqu" role="3uniRr">
          <node concept="1Dw8fO" id="Vo$tzLIgqw" role="3cqZAp">
            <node concept="3cpWsn" id="Vo$tzLIgqx" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="Vo$tzLIgqD" role="1tU5fm" />
              <node concept="3cmrfG" id="Vo$tzLIgqP" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3clFbS" id="Vo$tzLIgqy" role="2LFqv$">
              <node concept="3Aqczg" id="Vo$tzLIoFr" role="3cqZAp">
                <node concept="1imXTs" id="Vo$tzLIoFl" role="3Aqpz8">
                  <node concept="a7P8L" id="Vo$tzLIoFA" role="1imXu6">
                    <ref role="a7OzE" node="Vo$tzLIcAp" resolve="Arg" />
                    <node concept="37vLTw" id="Vo$tzLIoFZ" role="3gCZO6">
                      <ref role="3cqZAo" node="Vo$tzLIgqx" resolve="i" />
                    </node>
                  </node>
                  <node concept="1y4W85" id="Vo$tzLIpK$" role="1imXSf">
                    <node concept="37vLTw" id="Vo$tzLIpL3" role="1y58nS">
                      <ref role="3cqZAo" node="Vo$tzLIgqx" resolve="i" />
                    </node>
                    <node concept="3tDTZT" id="Vo$tzLIoGl" role="1y566C">
                      <ref role="3tDTNw" node="Vo$tzLIb9T" resolve="argument" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOVzh" id="Vo$tzLIhRa" role="1Dwp0S">
              <node concept="2OqwBi" id="Vo$tzLIj$k" role="3uHU7w">
                <node concept="3tDTZT" id="Vo$tzLIhRr" role="2Oq$k0">
                  <ref role="3tDTNw" node="Vo$tzLIb9T" resolve="argument" />
                </node>
                <node concept="34oBXx" id="Vo$tzLImjc" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="Vo$tzLIgqY" role="3uHU7B">
                <ref role="3cqZAo" node="Vo$tzLIgqx" resolve="i" />
              </node>
            </node>
            <node concept="3uNrnE" id="Vo$tzLIn9J" role="1Dwrff">
              <node concept="37vLTw" id="Vo$tzLIn9L" role="2$L3a6">
                <ref role="3cqZAo" node="Vo$tzLIgqx" resolve="i" />
              </node>
            </node>
          </node>
          <node concept="3Aqczg" id="Vo$tzLIpQv" role="3cqZAp">
            <node concept="3GeI9q" id="Vo$tzLIpQp" role="3Aqpz8">
              <node concept="aZ4PW" id="Vo$tzLIpQR" role="3GeI8F">
                <node concept="3txIi4" id="Vo$tzLIpRh" role="aZ4eD" />
              </node>
              <node concept="ns1u0" id="7VBaGntKJaB" role="3GeI8D">
                <ref role="ns1xF" node="7VBaGntKJ78" resolve="Function" />
                <node concept="nsMwS" id="7VBaGntKJaC" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ7a" resolve="name" />
                  <node concept="3tDTZT" id="Vo$tzLIpRC" role="nsMwV">
                    <ref role="3tDTNw" node="Vo$tzLIaK7" resolve="name" />
                  </node>
                </node>
                <node concept="nsMwS" id="7VBaGntKJaD" role="ns1xD">
                  <ref role="nsMwP" node="7VBaGntKJ7b" resolve="argument" />
                  <node concept="1nq8_$" id="Vo$tzLIpVG" role="nsMwV">
                    <node concept="a7P8L" id="Vo$tzLIpVF" role="1nq8_t">
                      <ref role="a7OzE" node="Vo$tzLIcAp" resolve="Arg" />
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
  <node concept="AVZre" id="Vo$tzLEGty">
    <property role="TrG5h" value="Reasoning" />
    <node concept="1nLNMY" id="6$MtiK8H0qt" role="1nK1Vg">
      <property role="TrG5h" value="forallIntro" />
      <node concept="3clFbS" id="6$MtiK8H0qu" role="1nLNMH">
        <node concept="3cpWs8" id="6$MtiK8H0qv" role="3cqZAp">
          <node concept="3cpWsn" id="2CF5XF5rJR3" role="3cpWs9">
            <property role="TrG5h" value="variableOk" />
            <node concept="10P_77" id="2CF5XF5sSBK" role="1tU5fm" />
            <node concept="2Sg_IR" id="6$MtiK8H0qx" role="33vP2m">
              <node concept="1bVj0M" id="6$MtiK8H0qy" role="2SgG2M">
                <node concept="3clFbS" id="2CF5XF5rJR5" role="1bW5cS">
                  <node concept="3SKdUt" id="2CF5XF5t1GN" role="3cqZAp">
                    <node concept="3SKdUq" id="2CF5XF5t1GP" role="3SKWNk">
                      <property role="3SKdUp" value="&quot;If the variable being quantified appears in the sentence being quantified, " />
                    </node>
                  </node>
                  <node concept="3SKdUt" id="2CF5XF5t2Tg" role="3cqZAp">
                    <node concept="3SKdUq" id="2CF5XF5t2Ti" role="3SKWNk">
                      <property role="3SKdUp" value="it must not appear free in any active assumption.&quot;" />
                    </node>
                  </node>
                  <node concept="3cpWs8" id="2CF5XF5s$MA" role="3cqZAp">
                    <node concept="3cpWsn" id="2CF5XF5s$MB" role="3cpWs9">
                      <property role="TrG5h" value="forall" />
                      <node concept="3Tqbb2" id="2CF5XF5s$My" role="1tU5fm">
                        <ref role="ehGHo" to="bw37:2DPo4JTRwtd" resolve="Forall" />
                      </node>
                      <node concept="1PxgMI" id="2CF5XF5s$MC" role="33vP2m">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="2CF5XF5s$MD" role="3oSUPX">
                          <ref role="cht4Q" to="bw37:2DPo4JTRwtd" resolve="Forall" />
                        </node>
                        <node concept="2OqwBi" id="2CF5XF5s$ME" role="1m5AlR">
                          <node concept="3A2sRY" id="2CF5XF5s$MF" role="2Oq$k0">
                            <ref role="3A2yKK" node="Vo$tzLEGtN" resolve="fi" />
                          </node>
                          <node concept="3TrEf2" id="2CF5XF5s$MG" role="2OqNvi">
                            <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2CF5XF5sgTf" role="3cqZAp">
                    <node concept="22lmx$" id="2CF5XF5sPn3" role="3clFbG">
                      <node concept="3fqX7Q" id="2CF5XF5sOgu" role="3uHU7B">
                        <node concept="2OqwBi" id="2CF5XF5sOgw" role="3fr31v">
                          <node concept="2YIFZM" id="2CF5XF5sOgx" role="2Oq$k0">
                            <ref role="37wK5l" node="Vo$tzLFdG3" resolve="freeVars" />
                            <ref role="1Pybhc" node="Vo$tzLFdFq" resolve="VariableUtil" />
                            <node concept="2OqwBi" id="2CF5XF5sOgy" role="37wK5m">
                              <node concept="37vLTw" id="2CF5XF5sOgz" role="2Oq$k0">
                                <ref role="3cqZAo" node="2CF5XF5s$MB" resolve="forall" />
                              </node>
                              <node concept="3TrEf2" id="2CF5XF5sOg$" role="2OqNvi">
                                <ref role="3Tt5mk" to="bw37:2DPo4JTRwts" resolve="sentence" />
                              </node>
                            </node>
                          </node>
                          <node concept="3JPx81" id="2CF5XF5sOg_" role="2OqNvi">
                            <node concept="2OqwBi" id="2CF5XF5sOgA" role="25WWJ7">
                              <node concept="2OqwBi" id="2CF5XF5sOgB" role="2Oq$k0">
                                <node concept="37vLTw" id="2CF5XF5sOgC" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2CF5XF5s$MB" resolve="forall" />
                                </node>
                                <node concept="3TrEf2" id="2CF5XF5sOgD" role="2OqNvi">
                                  <ref role="3Tt5mk" to="bw37:2DPo4JTRwtr" resolve="variable" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="2CF5XF5sOgE" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="2CF5XF5sRo7" role="3uHU7w">
                        <node concept="2OqwBi" id="2CF5XF5sRo8" role="3fr31v">
                          <node concept="2OqwBi" id="2CF5XF5sWNW" role="2Oq$k0">
                            <node concept="2OqwBi" id="2CF5XF5sRoa" role="2Oq$k0">
                              <node concept="3A2sRY" id="2CF5XF5sRob" role="2Oq$k0">
                                <ref role="3A2yKK" node="Vo$tzLEGtN" resolve="fi" />
                              </node>
                              <node concept="2qgKlT" id="2CF5XF5sRoc" role="2OqNvi">
                                <ref role="37wK5l" to="qd7f:5jVx7S20nJ_" resolve="allInScope" />
                              </node>
                            </node>
                            <node concept="v3k3i" id="2CF5XF5sZBN" role="2OqNvi">
                              <node concept="chp4Y" id="2CF5XF5sZTv" role="v3oSu">
                                <ref role="cht4Q" to="jfgh:3JXBM6C3Pwi" resolve="Assumption" />
                              </node>
                            </node>
                          </node>
                          <node concept="2HwmR7" id="2CF5XF5sRon" role="2OqNvi">
                            <node concept="1bVj0M" id="2CF5XF5sRoo" role="23t8la">
                              <node concept="3clFbS" id="2CF5XF5sRop" role="1bW5cS">
                                <node concept="3clFbF" id="2CF5XF5sRoq" role="3cqZAp">
                                  <node concept="2OqwBi" id="2CF5XF5sRor" role="3clFbG">
                                    <node concept="2YIFZM" id="2CF5XF5sRos" role="2Oq$k0">
                                      <ref role="37wK5l" node="Vo$tzLFdG3" resolve="freeVars" />
                                      <ref role="1Pybhc" node="Vo$tzLFdFq" resolve="VariableUtil" />
                                      <node concept="2OqwBi" id="2CF5XF5sRot" role="37wK5m">
                                        <node concept="37vLTw" id="2CF5XF5sRow" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2CF5XF5sRoC" resolve="it" />
                                        </node>
                                        <node concept="3TrEf2" id="2CF5XF5sRox" role="2OqNvi">
                                          <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3JPx81" id="2CF5XF5sRoy" role="2OqNvi">
                                      <node concept="2OqwBi" id="2CF5XF5sRoz" role="25WWJ7">
                                        <node concept="2OqwBi" id="2CF5XF5sRo$" role="2Oq$k0">
                                          <node concept="37vLTw" id="2CF5XF5sRo_" role="2Oq$k0">
                                            <ref role="3cqZAo" node="2CF5XF5s$MB" resolve="forall" />
                                          </node>
                                          <node concept="3TrEf2" id="2CF5XF5sRoA" role="2OqNvi">
                                            <ref role="3Tt5mk" to="bw37:2DPo4JTRwtr" resolve="variable" />
                                          </node>
                                        </node>
                                        <node concept="3TrcHB" id="2CF5XF5sRoB" role="2OqNvi">
                                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="2CF5XF5sRoC" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="2CF5XF5sRoD" role="1tU5fm" />
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
        <node concept="1nLNNL" id="6$MtiK8H0qz" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H0q$" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwakT" role="0UC6o">
              <node concept="3NuqgR" id="2oO2uzBWT6y" role="0eVf_">
                <node concept="aZer4" id="2oO2uzBWT6z" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="2oO2uzBWT6$" role="3XD1gS">
                  <property role="TrG5h" value="Prem" />
                </node>
                <node concept="aZer4" id="2oO2uzBWTdP" role="3XD1gS">
                  <property role="TrG5h" value="Var" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2oO2uzBWQgb" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2oO2uzBWQhg" role="3Ip0Jz">
                <node concept="3I6s7M" id="2oO2uzBXy4R" role="3I6sU7">
                  <node concept="3Aqt3T" id="2oO2uzBXy4P" role="3I6s78">
                    <ref role="3AqCNq" to="6r1k:2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="a7P8L" id="2oO2uzBXy5e" role="3AunhB">
                      <ref role="a7OzE" node="2oO2uzBWT6$" resolve="Prem" />
                    </node>
                    <node concept="3BlFb$" id="2oO2uzBXy5f" role="3AunhB">
                      <node concept="2OqwBi" id="2oO2uzBXy5g" role="3BlFb_">
                        <node concept="1y4W85" id="2oO2uzBXy5h" role="2Oq$k0">
                          <node concept="3cmrfG" id="2oO2uzBXy5i" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="2oO2uzBXy5j" role="1y566C">
                            <node concept="3A2sRY" id="2oO2uzBXy5k" role="2Oq$k0">
                              <ref role="3A2yKK" node="Vo$tzLEGtN" resolve="fi" />
                            </node>
                            <node concept="3Tsc0h" id="2oO2uzBXy5l" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2oO2uzBXy5m" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2oO2uzBXyfn" role="3I6sU7">
                  <node concept="3Aqt3T" id="2oO2uzBXyfl" role="3I6s78">
                    <ref role="3AqCNq" to="6r1k:2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKINM" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJaE" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ6Q" resolve="Forall" />
                        <node concept="nsMwS" id="7VBaGntKJaF" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ6S" resolve="variable" />
                          <node concept="1nq8_$" id="2oO2uzBXAqH" role="nsMwV">
                            <node concept="a7P8L" id="2oO2uzBXAqF" role="1nq8_t">
                              <ref role="a7OzE" node="2oO2uzBWTdP" resolve="Var" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJaG" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ6T" resolve="sentence" />
                          <node concept="1nq8_$" id="2oO2uzBXAsU" role="nsMwV">
                            <node concept="a7P8L" id="2oO2uzBXAsT" role="1nq8_t">
                              <ref role="a7OzE" node="2oO2uzBWT6$" resolve="Prem" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="2oO2uzBXyfU" role="1uarlU">
                        <ref role="a7OzE" node="2oO2uzBWT6z" resolve="Con" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="2oO2uzBXyfW" role="3AunhB">
                      <node concept="3A2sRY" id="2oO2uzBXyfX" role="3BlFb_">
                        <ref role="3A2yKK" node="Vo$tzLEGtN" resolve="fi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="Vo$tzLEGvs" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="Vo$tzLEGvt" role="3Ip0Jz">
                <node concept="3I6s7M" id="Vo$tzLET3g" role="3I6sU7">
                  <node concept="3Aqt3T" id="Vo$tzLET3f" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="Vo$tzLET3$" role="3AunhB">
                      <node concept="2OqwBi" id="Vo$tzLET3_" role="3BlFb_">
                        <node concept="1y4W85" id="Vo$tzLET3A" role="2Oq$k0">
                          <node concept="3cmrfG" id="Vo$tzLET3B" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="Vo$tzLET3C" role="1y566C">
                            <node concept="3A2sRY" id="Vo$tzLET3D" role="2Oq$k0">
                              <ref role="3A2yKK" node="Vo$tzLEGtN" resolve="fi" />
                            </node>
                            <node concept="3Tsc0h" id="Vo$tzLET3E" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="Vo$tzLET3F" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="Vo$tzLETb6" role="1nLNMd">
              <node concept="3I6sU6" id="Vo$tzLETb7" role="3Ip0Jz">
                <node concept="3I6s7M" id="2CF5XF5t4aQ" role="3I6sU7">
                  <node concept="3lcGGY" id="2CF5XF5t4aO" role="3I6s78">
                    <node concept="37vLTw" id="6$MtiK8H0qV" role="3wWo3s">
                      <ref role="3cqZAo" node="2CF5XF5rJR3" resolve="variableOk" />
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="Vo$tzLETbb" role="3I6sU7">
                  <node concept="3Aqt3T" id="Vo$tzLETba" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="Vo$tzLETbg" role="3AunhB">
                      <node concept="3A2sRY" id="Vo$tzLETbv" role="3BlFb_">
                        <ref role="3A2yKK" node="Vo$tzLEGtN" resolve="fi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2CF5XF5tgIy" role="1nLNMd">
              <node concept="3I6sU6" id="2CF5XF5tgIz" role="3Ip0Jz">
                <node concept="3I6s7M" id="3dsgZcixU3v" role="3I6sU7">
                  <node concept="3wWvb2" id="3dsgZcixU3w" role="3I6s78">
                    <node concept="2OqwBi" id="3dsgZcixU3x" role="3wWo3s">
                      <node concept="2s7oft" id="3dsgZcixU3y" role="2OqNvi">
                        <property role="2s7ueQ" value="error" />
                        <node concept="Xl_RD" id="3dsgZcixU3z" role="2s7u9n">
                          <property role="Xl_RC" value="variable is not OK" />
                        </node>
                      </node>
                      <node concept="3A2sRY" id="3dsgZcixU4f" role="2Oq$k0">
                        <ref role="3A2yKK" node="Vo$tzLEGtN" resolve="fi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="Vo$tzLEGtM" role="1nLNMg">
        <ref role="2t_S0q" to="bw37:Vo$tzLEGtD" resolve="ForallIntro" />
        <node concept="3A20r5" id="Vo$tzLEGtN" role="2t_VXX">
          <property role="TrG5h" value="fi" />
        </node>
      </node>
      <node concept="cBwPQ" id="Vo$tzLEGtZ" role="1nLFYo">
        <node concept="3clFbS" id="Vo$tzLEGu0" role="16YjZG">
          <node concept="3clFbF" id="2CF5XF5qelU" role="3cqZAp">
            <node concept="3clFbC" id="2CF5XF5qelW" role="3clFbG">
              <node concept="3cmrfG" id="2CF5XF5qelX" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="2CF5XF5qelY" role="3uHU7B">
                <node concept="2OqwBi" id="2CF5XF5qelZ" role="2Oq$k0">
                  <node concept="3A2sRY" id="2CF5XF5qem0" role="2Oq$k0">
                    <ref role="3A2yKK" node="Vo$tzLEGtN" resolve="fi" />
                  </node>
                  <node concept="3Tsc0h" id="2CF5XF5qem1" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="2CF5XF5qem2" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H0q_" role="1nK1Vg">
      <property role="TrG5h" value="forallElim" />
      <node concept="3clFbS" id="6$MtiK8H0qA" role="1nLNMH">
        <node concept="3cpWs8" id="6$MtiK8H0qB" role="3cqZAp">
          <node concept="3cpWsn" id="2CF5XF5tSik" role="3cpWs9">
            <property role="TrG5h" value="termOk" />
            <node concept="10P_77" id="2CF5XF5uWxP" role="1tU5fm" />
            <node concept="2Sg_IR" id="6$MtiK8H0qD" role="33vP2m">
              <node concept="1bVj0M" id="6$MtiK8H0qE" role="2SgG2M">
                <node concept="3clFbS" id="2CF5XF5tSim" role="1bW5cS">
                  <node concept="3SKdUt" id="2CF5XF5uYm8" role="3cqZAp">
                    <node concept="3SKdUq" id="2CF5XF5uYma" role="3SKWNk">
                      <property role="3SKdUp" value="&quot;a term t is free for a variable x in a sentence s if and only if" />
                    </node>
                  </node>
                  <node concept="3SKdUt" id="2CF5XF5uZAD" role="3cqZAp">
                    <node concept="3SKdUq" id="2CF5XF5uZAF" role="3SKWNk">
                      <property role="3SKdUp" value="no free occurrence of x occurs within the scope of a quantifier of some variable in t&quot;" />
                    </node>
                  </node>
                  <node concept="3cpWs8" id="2CF5XF5u1ka" role="3cqZAp">
                    <node concept="3cpWsn" id="2CF5XF5u1kb" role="3cpWs9">
                      <property role="TrG5h" value="forall" />
                      <node concept="3Tqbb2" id="2CF5XF5u1jZ" role="1tU5fm">
                        <ref role="ehGHo" to="bw37:2DPo4JTRwtd" resolve="Forall" />
                      </node>
                      <node concept="1PxgMI" id="2CF5XF5u1kc" role="33vP2m">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="2CF5XF5u1kd" role="3oSUPX">
                          <ref role="cht4Q" to="bw37:2DPo4JTRwtd" resolve="Forall" />
                        </node>
                        <node concept="2OqwBi" id="2CF5XF5u1ke" role="1m5AlR">
                          <node concept="1PxgMI" id="2CF5XF5u1kf" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="2CF5XF5u1kg" role="3oSUPX">
                              <ref role="cht4Q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
                            </node>
                            <node concept="2OqwBi" id="2CF5XF5u1kh" role="1m5AlR">
                              <node concept="1y4W85" id="2CF5XF5u1ki" role="2Oq$k0">
                                <node concept="3cmrfG" id="2CF5XF5u1kj" role="1y58nS">
                                  <property role="3cmrfH" value="0" />
                                </node>
                                <node concept="2OqwBi" id="2CF5XF5u1kk" role="1y566C">
                                  <node concept="3A2sRY" id="2CF5XF5u1kl" role="2Oq$k0">
                                    <ref role="3A2yKK" node="2oO2uzBWNhx" resolve="fe" />
                                  </node>
                                  <node concept="3Tsc0h" id="2CF5XF5u1km" role="2OqNvi">
                                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3TrEf2" id="2CF5XF5u1kn" role="2OqNvi">
                                <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                              </node>
                            </node>
                          </node>
                          <node concept="3TrEf2" id="2CF5XF5u1ko" role="2OqNvi">
                            <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="2CF5XF5v1VM" role="3cqZAp">
                    <node concept="3SKdUq" id="2CF5XF5v1VO" role="3SKWNk">
                      <property role="3SKdUp" value="unification is done later on terms, here we assume that index of the first occurrence of forall variable" />
                    </node>
                  </node>
                  <node concept="3SKdUt" id="2CF5XF5v4X7" role="3cqZAp">
                    <node concept="3SKdUq" id="2CF5XF5v4X9" role="3SKWNk">
                      <property role="3SKdUp" value="in flattened forall sentence equals index of the first occurrence of pattern in flattened conclusion" />
                    </node>
                  </node>
                  <node concept="3cpWs8" id="2CF5XF5ug09" role="3cqZAp">
                    <node concept="3cpWsn" id="2CF5XF5ug0a" role="3cpWs9">
                      <property role="TrG5h" value="flatSentence" />
                      <node concept="2I9FWS" id="2CF5XF5ufZR" role="1tU5fm">
                        <ref role="2I9WkF" to="tpck:gw2VY9q" resolve="BaseConcept" />
                      </node>
                      <node concept="2OqwBi" id="2CF5XF5ug0b" role="33vP2m">
                        <node concept="2OqwBi" id="2cLnr$rEgvW" role="2Oq$k0">
                          <node concept="37vLTw" id="2CF5XF5ug0c" role="2Oq$k0">
                            <ref role="3cqZAo" node="2CF5XF5u1kb" resolve="forall" />
                          </node>
                          <node concept="3TrEf2" id="2cLnr$rEgWy" role="2OqNvi">
                            <ref role="3Tt5mk" to="bw37:2DPo4JTRwts" resolve="sentence" />
                          </node>
                        </node>
                        <node concept="2Rf3mk" id="2CF5XF5ug0d" role="2OqNvi">
                          <node concept="1xMEDy" id="2CF5XF5ug0e" role="1xVPHs">
                            <node concept="chp4Y" id="2CF5XF5ug0f" role="ri$Ld">
                              <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                            </node>
                          </node>
                          <node concept="1xIGOp" id="2cLnr$rDX4u" role="1xVPHs" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="2CF5XF5un$C" role="3cqZAp">
                    <node concept="3cpWsn" id="2CF5XF5un$D" role="3cpWs9">
                      <property role="TrG5h" value="var" />
                      <node concept="3Tqbb2" id="2CF5XF5un$$" role="1tU5fm">
                        <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                      </node>
                      <node concept="2OqwBi" id="2CF5XF5un$E" role="33vP2m">
                        <node concept="37vLTw" id="2CF5XF5un$F" role="2Oq$k0">
                          <ref role="3cqZAo" node="2CF5XF5ug0a" resolve="flatSentence" />
                        </node>
                        <node concept="1z4cxt" id="2CF5XF5un$G" role="2OqNvi">
                          <node concept="1bVj0M" id="2CF5XF5un$H" role="23t8la">
                            <node concept="3clFbS" id="2CF5XF5un$I" role="1bW5cS">
                              <node concept="3clFbF" id="2CF5XF5un$J" role="3cqZAp">
                                <node concept="17R0WA" id="2CF5XF5un$K" role="3clFbG">
                                  <node concept="2OqwBi" id="2CF5XF5un$L" role="3uHU7w">
                                    <node concept="2OqwBi" id="2CF5XF5un$M" role="2Oq$k0">
                                      <node concept="37vLTw" id="2CF5XF5un$N" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2CF5XF5u1kb" resolve="forall" />
                                      </node>
                                      <node concept="3TrEf2" id="2CF5XF5un$O" role="2OqNvi">
                                        <ref role="3Tt5mk" to="bw37:2DPo4JTRwtr" resolve="variable" />
                                      </node>
                                    </node>
                                    <node concept="3TrcHB" id="2CF5XF5un$P" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="2CF5XF5un$Q" role="3uHU7B">
                                    <node concept="1PxgMI" id="2CF5XF5un$R" role="2Oq$k0">
                                      <property role="1BlNFB" value="true" />
                                      <node concept="chp4Y" id="2CF5XF5un$S" role="3oSUPX">
                                        <ref role="cht4Q" to="bw37:2DPo4JTRwsM" resolve="Variable" />
                                      </node>
                                      <node concept="37vLTw" id="2CF5XF5un$T" role="1m5AlR">
                                        <ref role="3cqZAo" node="2CF5XF5un$V" resolve="it" />
                                      </node>
                                    </node>
                                    <node concept="3TrcHB" id="2CF5XF5un$U" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="2CF5XF5un$V" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="2CF5XF5un$W" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="2CF5XF5uTV0" role="3cqZAp">
                    <node concept="3cpWsn" id="2CF5XF5uTV3" role="3cpWs9">
                      <property role="TrG5h" value="termOk" />
                      <node concept="10P_77" id="2CF5XF5uTUY" role="1tU5fm" />
                      <node concept="3clFbT" id="2CF5XF5uUB5" role="33vP2m">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="2CF5XF5uJlS" role="3cqZAp">
                    <node concept="3clFbS" id="2CF5XF5uJlU" role="3clFbx">
                      <node concept="3cpWs8" id="2CF5XF5uL4e" role="3cqZAp">
                        <node concept="3cpWsn" id="2CF5XF5uL4f" role="3cpWs9">
                          <property role="TrG5h" value="pattern" />
                          <node concept="3Tqbb2" id="2CF5XF5uL2j" role="1tU5fm">
                            <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                          </node>
                          <node concept="1y4W85" id="2CF5XF5uL4g" role="33vP2m">
                            <node concept="2OqwBi" id="2CF5XF5uL4h" role="1y58nS">
                              <node concept="37vLTw" id="2CF5XF5uL4i" role="2Oq$k0">
                                <ref role="3cqZAo" node="2CF5XF5ug0a" resolve="flatSentence" />
                              </node>
                              <node concept="2WmjW8" id="2CF5XF5uL4j" role="2OqNvi">
                                <node concept="37vLTw" id="2CF5XF5uL4k" role="25WWJ7">
                                  <ref role="3cqZAo" node="2CF5XF5un$D" resolve="var" />
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2CF5XF5uL4l" role="1y566C">
                              <node concept="2OqwBi" id="2CF5XF5uL4m" role="2Oq$k0">
                                <node concept="3A2sRY" id="2CF5XF5uL4n" role="2Oq$k0">
                                  <ref role="3A2yKK" node="2oO2uzBWNhx" resolve="fe" />
                                </node>
                                <node concept="3TrEf2" id="2CF5XF5uL4o" role="2OqNvi">
                                  <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                                </node>
                              </node>
                              <node concept="2Rf3mk" id="2CF5XF5uL4p" role="2OqNvi">
                                <node concept="1xMEDy" id="2CF5XF5uL4q" role="1xVPHs">
                                  <node concept="chp4Y" id="2CF5XF5uL4r" role="ri$Ld">
                                    <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                  </node>
                                </node>
                                <node concept="1xIGOp" id="2cLnr$rDXnL" role="1xVPHs" />
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
                                    <ref role="3cqZAo" node="2CF5XF5uL4f" resolve="pattern" />
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
                          <node concept="37vLTw" id="2CF5XF5uUKC" role="37vLTJ">
                            <ref role="3cqZAo" node="2CF5XF5uTV3" resolve="termOk" />
                          </node>
                          <node concept="3fqX7Q" id="2CF5XF5uV3v" role="37vLTx">
                            <node concept="2OqwBi" id="2CF5XF5uV3x" role="3fr31v">
                              <node concept="2YIFZM" id="2CF5XF5uV3y" role="2Oq$k0">
                                <ref role="37wK5l" node="2CF5XF5pCwx" resolve="freeVarsUnderQuantifier" />
                                <ref role="1Pybhc" node="Vo$tzLFdFq" resolve="VariableUtil" />
                                <node concept="2OqwBi" id="2cLnr$rFnS8" role="37wK5m">
                                  <node concept="37vLTw" id="2cLnr$rFnDL" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2CF5XF5u1kb" resolve="forall" />
                                  </node>
                                  <node concept="3TrEf2" id="2cLnr$rFonj" role="2OqNvi">
                                    <ref role="3Tt5mk" to="bw37:2DPo4JTRwts" resolve="sentence" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="2cLnr$rF7mP" role="37wK5m">
                                  <ref role="3cqZAo" node="2cLnr$rF6YE" resolve="quantVars" />
                                </node>
                              </node>
                              <node concept="3JPx81" id="2CF5XF5uV3A" role="2OqNvi">
                                <node concept="2OqwBi" id="2CF5XF5uV3B" role="25WWJ7">
                                  <node concept="2OqwBi" id="2CF5XF5uV3C" role="2Oq$k0">
                                    <node concept="37vLTw" id="2CF5XF5uV3D" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2CF5XF5u1kb" resolve="forall" />
                                    </node>
                                    <node concept="3TrEf2" id="2CF5XF5uV3E" role="2OqNvi">
                                      <ref role="3Tt5mk" to="bw37:2DPo4JTRwtr" resolve="variable" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="2CF5XF5uV3F" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="2CF5XF5uJ_M" role="3clFbw">
                      <node concept="10Nm6u" id="2CF5XF5uJAk" role="3uHU7w" />
                      <node concept="37vLTw" id="2CF5XF5uJtH" role="3uHU7B">
                        <ref role="3cqZAo" node="2CF5XF5un$D" resolve="var" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2CF5XF5uVQe" role="3cqZAp">
                    <node concept="37vLTw" id="2CF5XF5uVQc" role="3clFbG">
                      <ref role="3cqZAo" node="2CF5XF5uTV3" resolve="termOk" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1nLNNL" id="6$MtiK8H0qF" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H0qG" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwakQ" role="0UC6o">
              <node concept="3NuqgR" id="2oO2uzBXpHP" role="0eVf_">
                <node concept="aZer4" id="2oO2uzBWNhT" role="3XD1gS">
                  <property role="TrG5h" value="Prem" />
                </node>
                <node concept="aZer4" id="2oO2uzBWNnU" role="3XD1gS">
                  <property role="TrG5h" value="Var" />
                </node>
                <node concept="aZer4" id="2S9ARS6yyhD" role="3XD1gS">
                  <property role="TrG5h" value="Fresh" />
                </node>
                <node concept="aZer4" id="2oO2uzBXx8g" role="3XD1gS">
                  <property role="TrG5h" value="Stc" />
                </node>
                <node concept="aZer4" id="2oO2uzBWNhK" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2oO2uzBXpGs" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2oO2uzBXpGt" role="3Ip0Jz">
                <node concept="3I6s7M" id="2CF5XF5oJu7" role="3I6sU7">
                  <node concept="3Aqt3T" id="2CF5XF5oJu5" role="3I6s78">
                    <ref role="3AqCNq" to="6r1k:2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKINL" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJag" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ6Q" resolve="Forall" />
                        <node concept="nsMwS" id="7VBaGntKJah" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ6S" resolve="variable" />
                          <node concept="1nq8_$" id="2CF5XF5oJvc" role="nsMwV">
                            <node concept="a7P8L" id="2CF5XF5oJvd" role="1nq8_t">
                              <ref role="a7OzE" node="2oO2uzBWNnU" resolve="Var" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJai" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ6T" resolve="sentence" />
                          <node concept="1nq8_$" id="2CF5XF5oJvi" role="nsMwV">
                            <node concept="a7P8L" id="2CF5XF5oJvj" role="1nq8_t">
                              <ref role="a7OzE" node="2oO2uzBXx8g" resolve="Stc" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="2CF5XF5oJv6" role="1uarlU">
                        <ref role="a7OzE" node="2oO2uzBWNhT" resolve="Prem" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="2CF5XF5oJvk" role="3AunhB">
                      <node concept="2OqwBi" id="2CF5XF5oJvl" role="3BlFb_">
                        <node concept="1y4W85" id="2CF5XF5oJvm" role="2Oq$k0">
                          <node concept="3cmrfG" id="2CF5XF5oJvn" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="2CF5XF5oJvo" role="1y566C">
                            <node concept="3A2sRY" id="2CF5XF5oJvp" role="2Oq$k0">
                              <ref role="3A2yKK" node="2oO2uzBWNhx" resolve="fe" />
                            </node>
                            <node concept="3Tsc0h" id="2CF5XF5oJvq" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2CF5XF5oJvr" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2CF5XF5oJCV" role="3I6sU7">
                  <node concept="3Aqt3T" id="2CF5XF5oJCT" role="3I6s78">
                    <ref role="3AqCNq" to="6r1k:2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="a7P8L" id="2CF5XF5oJEi" role="3AunhB">
                      <ref role="a7OzE" node="2oO2uzBWNhK" resolve="Con" />
                    </node>
                    <node concept="3BlFb$" id="2CF5XF5oJEj" role="3AunhB">
                      <node concept="3A2sRY" id="2CF5XF5oJEk" role="3BlFb_">
                        <ref role="3A2yKK" node="2oO2uzBWNhx" resolve="fe" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2oO2uzBWQ4w" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2oO2uzBWQ4x" role="3Ip0Jz">
                <node concept="3I6s7M" id="2oO2uzBWQ59" role="3I6sU7">
                  <node concept="3Aqt3T" id="2oO2uzBWQ58" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2oO2uzBWQ5e" role="3AunhB">
                      <node concept="2OqwBi" id="2oO2uzBWQ5f" role="3BlFb_">
                        <node concept="1y4W85" id="2oO2uzBWQ5g" role="2Oq$k0">
                          <node concept="3cmrfG" id="2oO2uzBWQ5h" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="2oO2uzBWQ5i" role="1y566C">
                            <node concept="3A2sRY" id="2oO2uzBWQ5j" role="2Oq$k0">
                              <ref role="3A2yKK" node="2oO2uzBWNhx" resolve="fe" />
                            </node>
                            <node concept="3Tsc0h" id="2oO2uzBWQ5k" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2oO2uzBWQ5l" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9_M" id="2oO2uzBYjOv" role="1nLNMa">
              <node concept="3I6sU6" id="2oO2uzBYjOw" role="3Ip0Jz">
                <node concept="3I6s7M" id="2oO2uzBYjOQ" role="3I6sU7">
                  <node concept="3A8Hvi" id="2oO2uzBYjON" role="3I6s78">
                    <node concept="a7P8L" id="2oO2uzBYjP0" role="3A8w4Q">
                      <ref role="a7OzE" node="2oO2uzBWNhK" resolve="Con" />
                    </node>
                    <node concept="1lh$Hi" id="2S9ARS6yyhj" role="3A8wtg">
                      <node concept="a7P8L" id="2S9ARS6yyhv" role="1lh$Hv">
                        <ref role="a7OzE" node="2oO2uzBXx8g" resolve="Stc" />
                      </node>
                      <node concept="a7P8L" id="2S9ARS6yyh$" role="1lh$H$">
                        <ref role="a7OzE" node="2oO2uzBWNnU" resolve="Var" />
                      </node>
                      <node concept="a7P8L" id="2S9ARS6yykR" role="1lh$Hx">
                        <ref role="a7OzE" node="2S9ARS6yyhD" resolve="Fresh" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2oO2uzBWQ4s" role="1nLNMd">
              <node concept="3I6sU6" id="2oO2uzBWQ4t" role="3Ip0Jz">
                <node concept="3I6s7M" id="2cLnr$rDh$3" role="3I6sU7">
                  <node concept="3lcGGY" id="2cLnr$rDh$1" role="3I6s78">
                    <node concept="37vLTw" id="6$MtiK8H0qT" role="3wWo3s">
                      <ref role="3cqZAo" node="2CF5XF5tSik" resolve="termOk" />
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2oO2uzBWQaH" role="3I6sU7">
                  <node concept="3Aqt3T" id="2oO2uzBWQaG" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2oO2uzBWQaM" role="3AunhB">
                      <node concept="3A2sRY" id="2oO2uzBWQaV" role="3BlFb_">
                        <ref role="3A2yKK" node="2oO2uzBWNhx" resolve="fe" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2CF5XF5v8Pa" role="1nLNMd">
              <node concept="3I6sU6" id="2CF5XF5v8Pb" role="3Ip0Jz">
                <node concept="3I6s7M" id="3dsgZcixVeS" role="3I6sU7">
                  <node concept="3wWvb2" id="3dsgZcixVeT" role="3I6s78">
                    <node concept="2OqwBi" id="3dsgZcixVeU" role="3wWo3s">
                      <node concept="2s7oft" id="3dsgZcixVeV" role="2OqNvi">
                        <property role="2s7ueQ" value="error" />
                        <node concept="Xl_RD" id="3dsgZcixVeW" role="2s7u9n">
                          <property role="Xl_RC" value="term is not OK" />
                        </node>
                      </node>
                      <node concept="3A2sRY" id="3dsgZcixVfL" role="2Oq$k0">
                        <ref role="3A2yKK" node="2oO2uzBWNhx" resolve="fe" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2oO2uzBWNhn" role="1nLNMg">
        <ref role="2t_S0q" to="bw37:Vo$tzLEGtE" resolve="ForallElim" />
        <node concept="3A20r5" id="2oO2uzBWNhx" role="2t_VXX">
          <property role="TrG5h" value="fe" />
        </node>
      </node>
      <node concept="cBwPQ" id="2CF5XF5pNjM" role="1nLFYo">
        <node concept="3clFbS" id="2CF5XF5pNjN" role="16YjZG">
          <node concept="3clFbF" id="2CF5XF5qfoS" role="3cqZAp">
            <node concept="3clFbC" id="2CF5XF5qfoU" role="3clFbG">
              <node concept="2OqwBi" id="2CF5XF5qfoV" role="3uHU7B">
                <node concept="2OqwBi" id="2CF5XF5qfoW" role="2Oq$k0">
                  <node concept="3A2sRY" id="2CF5XF5qfoX" role="2Oq$k0">
                    <ref role="3A2yKK" node="2oO2uzBWNhx" resolve="fe" />
                  </node>
                  <node concept="3Tsc0h" id="2CF5XF5qfoY" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="2CF5XF5qfoZ" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="2CF5XF5qfp0" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H0qH" role="1nK1Vg">
      <property role="TrG5h" value="existsIntro" />
      <node concept="3clFbS" id="6$MtiK8H0qI" role="1nLNMH">
        <node concept="1nLNNL" id="6$MtiK8H0qJ" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H0qK" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwakR" role="0UC6o">
              <node concept="3NuqgR" id="2CF5XF5qrJn" role="0eVf_">
                <node concept="aZer4" id="2CF5XF5qrJo" role="3XD1gS">
                  <property role="TrG5h" value="Prem" />
                </node>
                <node concept="aZer4" id="2CF5XF5qrJ$" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
                <node concept="aZer4" id="2CF5XF5qukG" role="3XD1gS">
                  <property role="TrG5h" value="Var" />
                </node>
                <node concept="aZer4" id="2CF5XF5q_9W" role="3XD1gS">
                  <property role="TrG5h" value="Fresh" />
                </node>
                <node concept="aZer4" id="2CF5XF5quzw" role="3XD1gS">
                  <property role="TrG5h" value="Stc" />
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2CF5XF5qrJ2" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2CF5XF5qrJ3" role="3Ip0Jz">
                <node concept="3I6s7M" id="2CF5XF5qrJd" role="3I6sU7">
                  <node concept="3Aqt3T" id="2CF5XF5qrJc" role="3I6s78">
                    <ref role="3AqCNq" to="6r1k:2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="a7P8L" id="2CF5XF5qrJM" role="3AunhB">
                      <ref role="a7OzE" node="2CF5XF5qrJo" resolve="Prem" />
                    </node>
                    <node concept="3BlFb$" id="2CF5XF5qrJU" role="3AunhB">
                      <node concept="2OqwBi" id="2CF5XF5qtV3" role="3BlFb_">
                        <node concept="1y4W85" id="2CF5XF5qtIo" role="2Oq$k0">
                          <node concept="3cmrfG" id="2CF5XF5qtLv" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="2CF5XF5qrTF" role="1y566C">
                            <node concept="3A2sRY" id="2CF5XF5qrK4" role="2Oq$k0">
                              <ref role="3A2yKK" node="2CF5XF5qrjo" resolve="ei" />
                            </node>
                            <node concept="3Tsc0h" id="2CF5XF5qs9K" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2CF5XF5quhR" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2CF5XF5qujZ" role="3I6sU7">
                  <node concept="3Aqt3T" id="2CF5XF5qujX" role="3I6s78">
                    <ref role="3AqCNq" to="6r1k:2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKINN" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJaj" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ6U" resolve="Exists" />
                        <node concept="nsMwS" id="7VBaGntKJak" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ6W" resolve="variable" />
                          <node concept="1nq8_$" id="2CF5XF5qul1" role="nsMwV">
                            <node concept="a7P8L" id="2CF5XF5qul0" role="1nq8_t">
                              <ref role="a7OzE" node="2CF5XF5qukG" resolve="Var" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJal" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ6X" resolve="sentence" />
                          <node concept="1nq8_$" id="2CF5XF5quA1" role="nsMwV">
                            <node concept="a7P8L" id="2CF5XF5quA0" role="1nq8_t">
                              <ref role="a7OzE" node="2CF5XF5quzw" resolve="Stc" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="2CF5XF5qukf" role="1uarlU">
                        <ref role="a7OzE" node="2CF5XF5qrJ$" resolve="Con" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="2CF5XF5qSDz" role="3AunhB">
                      <node concept="3A2sRY" id="2CF5XF5qSDV" role="3BlFb_">
                        <ref role="3A2yKK" node="2CF5XF5qrjo" resolve="ei" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2CF5XF5qrJ6" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2CF5XF5qrJ7" role="3Ip0Jz">
                <node concept="3I6s7M" id="2CF5XF5quCg" role="3I6sU7">
                  <node concept="3Aqt3T" id="2CF5XF5quCf" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2CF5XF5quCl" role="3AunhB">
                      <node concept="2OqwBi" id="2CF5XF5qwUi" role="3BlFb_">
                        <node concept="1y4W85" id="2CF5XF5qwFo" role="2Oq$k0">
                          <node concept="3cmrfG" id="2CF5XF5qwKI" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="2CF5XF5quMb" role="1y566C">
                            <node concept="3A2sRY" id="2CF5XF5quC$" role="2Oq$k0">
                              <ref role="3A2yKK" node="2CF5XF5qrjo" resolve="ei" />
                            </node>
                            <node concept="3Tsc0h" id="2CF5XF5qv6K" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2CF5XF5qxjl" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9_M" id="2CF5XF5q_9q" role="1nLNMa">
              <node concept="3I6sU6" id="2CF5XF5q_9r" role="3Ip0Jz">
                <node concept="3I6s7M" id="2CF5XF5q_9x" role="3I6sU7">
                  <node concept="3A8Hvi" id="2CF5XF5q_9u" role="3I6s78">
                    <node concept="1lh$Hi" id="2CF5XF5q_9A" role="3A8wtg">
                      <node concept="a7P8L" id="2CF5XF5q_9M" role="1lh$Hv">
                        <ref role="a7OzE" node="2CF5XF5quzw" resolve="Stc" />
                      </node>
                      <node concept="a7P8L" id="2CF5XF5q_9R" role="1lh$H$">
                        <ref role="a7OzE" node="2CF5XF5qukG" resolve="Var" />
                      </node>
                      <node concept="a7P8L" id="2CF5XF5q_cG" role="1lh$Hx">
                        <ref role="a7OzE" node="2CF5XF5q_9W" resolve="Fresh" />
                      </node>
                    </node>
                    <node concept="a7P8L" id="2CF5XF5q_cL" role="3A8w4Q">
                      <ref role="a7OzE" node="2CF5XF5qrJo" resolve="Prem" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2CF5XF5qxtw" role="1nLNMd">
              <node concept="3I6sU6" id="2CF5XF5qxtx" role="3Ip0Jz">
                <node concept="3I6s7M" id="2CF5XF5qxt_" role="3I6sU7">
                  <node concept="3Aqt3T" id="2CF5XF5qxt$" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2CF5XF5qxtE" role="3AunhB">
                      <node concept="3A2sRY" id="2CF5XF5qxtN" role="3BlFb_">
                        <ref role="3A2yKK" node="2CF5XF5qrjo" resolve="ei" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2CF5XF5qrjn" role="1nLNMg">
        <ref role="2t_S0q" to="bw37:Vo$tzLEGtF" resolve="ExistsIntro" />
        <node concept="3A20r5" id="2CF5XF5qrjo" role="2t_VXX">
          <property role="TrG5h" value="ei" />
        </node>
      </node>
      <node concept="cBwPQ" id="2CF5XF5qrjB" role="1nLFYo">
        <node concept="3clFbS" id="2CF5XF5qrjC" role="16YjZG">
          <node concept="3clFbF" id="2CF5XF5qrnf" role="3cqZAp">
            <node concept="3clFbC" id="2CF5XF5qrng" role="3clFbG">
              <node concept="2OqwBi" id="2CF5XF5qrnh" role="3uHU7B">
                <node concept="2OqwBi" id="2CF5XF5qrni" role="2Oq$k0">
                  <node concept="3A2sRY" id="2CF5XF5qTqL" role="2Oq$k0">
                    <ref role="3A2yKK" node="2CF5XF5qrjo" resolve="ei" />
                  </node>
                  <node concept="3Tsc0h" id="2CF5XF5qrnk" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="2CF5XF5qrnl" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="2CF5XF5qrnm" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="6$MtiK8H0qL" role="1nK1Vg">
      <property role="TrG5h" value="existsElim" />
      <node concept="3clFbS" id="6$MtiK8H0qM" role="1nLNMH">
        <node concept="3cpWs8" id="6$MtiK8H0qN" role="3cqZAp">
          <node concept="3cpWsn" id="2cLnr$rHydI" role="3cpWs9">
            <property role="TrG5h" value="variableOk" />
            <node concept="10P_77" id="2cLnr$rHyWn" role="1tU5fm" />
            <node concept="2Sg_IR" id="6$MtiK8H0qP" role="33vP2m">
              <node concept="1bVj0M" id="6$MtiK8H0qQ" role="2SgG2M">
                <node concept="3clFbS" id="2cLnr$rHydK" role="1bW5cS">
                  <node concept="3SKdUt" id="2cLnr$rHyXh" role="3cqZAp">
                    <node concept="3SKdUq" id="2cLnr$rHyXj" role="3SKWNk">
                      <property role="3SKdUp" value="the variable must not occurr free in the conclusion" />
                    </node>
                  </node>
                  <node concept="3cpWs8" id="2cLnr$rHHaJ" role="3cqZAp">
                    <node concept="3cpWsn" id="2cLnr$rHHaK" role="3cpWs9">
                      <property role="TrG5h" value="forall" />
                      <node concept="3Tqbb2" id="2cLnr$rHHaI" role="1tU5fm">
                        <ref role="ehGHo" to="bw37:2DPo4JTRwtd" resolve="Forall" />
                      </node>
                      <node concept="1PxgMI" id="2cLnr$rHHaL" role="33vP2m">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="2cLnr$rIBZI" role="3oSUPX">
                          <ref role="cht4Q" to="bw37:2DPo4JTRwtd" resolve="Forall" />
                        </node>
                        <node concept="2OqwBi" id="2cLnr$rHHaN" role="1m5AlR">
                          <node concept="1PxgMI" id="2cLnr$rHHaO" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="2cLnr$rHHaP" role="3oSUPX">
                              <ref role="cht4Q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
                            </node>
                            <node concept="2OqwBi" id="2cLnr$rHHaQ" role="1m5AlR">
                              <node concept="1y4W85" id="2cLnr$rHHaR" role="2Oq$k0">
                                <node concept="3cmrfG" id="2cLnr$rHHaS" role="1y58nS">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="2OqwBi" id="2cLnr$rHHaT" role="1y566C">
                                  <node concept="3A2sRY" id="2cLnr$rHHaU" role="2Oq$k0">
                                    <ref role="3A2yKK" node="2CF5XF5q_lG" resolve="ee" />
                                  </node>
                                  <node concept="3Tsc0h" id="2cLnr$rHHaV" role="2OqNvi">
                                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3TrEf2" id="2cLnr$rHHaW" role="2OqNvi">
                                <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                              </node>
                            </node>
                          </node>
                          <node concept="3TrEf2" id="2cLnr$rHHaX" role="2OqNvi">
                            <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2cLnr$rHHKo" role="3cqZAp">
                    <node concept="3fqX7Q" id="2cLnr$rHPQs" role="3clFbG">
                      <node concept="2OqwBi" id="2cLnr$rHPQu" role="3fr31v">
                        <node concept="2YIFZM" id="2cLnr$rHPQv" role="2Oq$k0">
                          <ref role="37wK5l" node="Vo$tzLFdG3" resolve="freeVars" />
                          <ref role="1Pybhc" node="Vo$tzLFdFq" resolve="VariableUtil" />
                          <node concept="2OqwBi" id="2cLnr$rHPQw" role="37wK5m">
                            <node concept="3A2sRY" id="2cLnr$rHPQx" role="2Oq$k0">
                              <ref role="3A2yKK" node="2CF5XF5q_lG" resolve="ee" />
                            </node>
                            <node concept="3TrEf2" id="2cLnr$rHPQy" role="2OqNvi">
                              <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                            </node>
                          </node>
                        </node>
                        <node concept="3JPx81" id="2cLnr$rHPQz" role="2OqNvi">
                          <node concept="2OqwBi" id="2cLnr$rHPQ$" role="25WWJ7">
                            <node concept="2OqwBi" id="2cLnr$rHPQ_" role="2Oq$k0">
                              <node concept="37vLTw" id="2cLnr$rHPQA" role="2Oq$k0">
                                <ref role="3cqZAo" node="2cLnr$rHHaK" resolve="forall" />
                              </node>
                              <node concept="3TrEf2" id="2cLnr$rHPQB" role="2OqNvi">
                                <ref role="3Tt5mk" to="bw37:2DPo4JTRwtr" resolve="variable" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="2cLnr$rHPQC" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
        <node concept="1nLNNL" id="6$MtiK8H0qR" role="3cqZAp">
          <node concept="1nLNMm" id="6$MtiK8H0qS" role="1nLNNK">
            <node concept="0eUR_" id="3dsgZciwakS" role="0UC6o">
              <node concept="3NuqgR" id="2CF5XF5qAsd" role="0eVf_">
                <node concept="aZer4" id="2CF5XF5qAse" role="3XD1gS">
                  <property role="TrG5h" value="Ex" />
                </node>
                <node concept="aZer4" id="2CF5XF5qAtH" role="3XD1gS">
                  <property role="TrG5h" value="ExVar" />
                </node>
                <node concept="aZer4" id="2CF5XF5qOwG" role="3XD1gS">
                  <property role="TrG5h" value="ExStc" />
                </node>
                <node concept="aZer4" id="2CF5XF5qAzp" role="3XD1gS">
                  <property role="TrG5h" value="Uni" />
                </node>
                <node concept="aZer4" id="2CF5XF5qNbA" role="3XD1gS">
                  <property role="TrG5h" value="UniVar" />
                </node>
                <node concept="aZer4" id="2CF5XF5qAtS" role="3XD1gS">
                  <property role="TrG5h" value="UniStc" />
                </node>
                <node concept="aZer4" id="2CF5XF5qF8v" role="3XD1gS">
                  <property role="TrG5h" value="Con" />
                </node>
              </node>
              <node concept="3NuqgR" id="2cLnr$rI$Mk" role="0eVf_">
                <node concept="aZer4" id="2cLnr$rI$Ml" role="3XD1gS">
                  <property role="TrG5h" value="Msg" />
                </node>
                <node concept="17QB3L" id="2cLnr$rI$Mm" role="3vLBG7" />
              </node>
            </node>
            <node concept="3Aq93q" id="2CF5XF5qA5P" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2CF5XF5qA5Q" role="3Ip0Jz">
                <node concept="3I6s7M" id="2CF5XF5qAsE" role="3I6sU7">
                  <node concept="3Aqt3T" id="2CF5XF5qAsD" role="3I6s78">
                    <ref role="3AqCNq" to="6r1k:2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKINO" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJa$" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ6U" resolve="Exists" />
                        <node concept="nsMwS" id="7VBaGntKJa_" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ6W" resolve="variable" />
                          <node concept="1nq8_$" id="2CF5XF5qAuj" role="nsMwV">
                            <node concept="a7P8L" id="2CF5XF5qAui" role="1nq8_t">
                              <ref role="a7OzE" node="2CF5XF5qAtH" resolve="ExVar" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJaA" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ6X" resolve="sentence" />
                          <node concept="1nq8_$" id="2CF5XF5qAwy" role="nsMwV">
                            <node concept="a7P8L" id="2CF5XF5qODY" role="1nq8_t">
                              <ref role="a7OzE" node="2CF5XF5qOwG" resolve="ExStc" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="2CF5XF5qAsS" role="1uarlU">
                        <ref role="a7OzE" node="2CF5XF5qAse" resolve="Ex" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="2CF5XF5qFfA" role="3AunhB">
                      <node concept="2OqwBi" id="2CF5XF5qIgp" role="3BlFb_">
                        <node concept="1y4W85" id="2CF5XF5qHLZ" role="2Oq$k0">
                          <node concept="3cmrfG" id="2CF5XF5qI6P" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="2CF5XF5qFp_" role="1y566C">
                            <node concept="3A2sRY" id="2CF5XF5qFfY" role="2Oq$k0">
                              <ref role="3A2yKK" node="2CF5XF5q_lG" resolve="ee" />
                            </node>
                            <node concept="3Tsc0h" id="2CF5XF5qGdn" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2CF5XF5qIJd" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="3dsgZcixZum" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="3dsgZcixZun" role="3Ip0Jz">
                <node concept="3I6s7M" id="3dsgZcixZvT" role="3I6sU7">
                  <node concept="3Aqt3T" id="3dsgZcixZvU" role="3I6s78">
                    <ref role="3AqCNq" to="6r1k:2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="1HFMs5" id="7VBaGntKINP" role="3AunhB">
                      <node concept="ns1u0" id="7VBaGntKJad" role="1uarlW">
                        <ref role="ns1xF" node="7VBaGntKJ6Q" resolve="Forall" />
                        <node concept="nsMwS" id="7VBaGntKJae" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ6S" resolve="variable" />
                          <node concept="1nq8_$" id="3dsgZcixZw2" role="nsMwV">
                            <node concept="a7P8L" id="3dsgZcixZw3" role="1nq8_t">
                              <ref role="a7OzE" node="2CF5XF5qNbA" resolve="UniVar" />
                            </node>
                          </node>
                        </node>
                        <node concept="nsMwS" id="7VBaGntKJaf" role="ns1xD">
                          <ref role="nsMwP" node="7VBaGntKJ6T" resolve="sentence" />
                          <node concept="1nq8_$" id="3dsgZcixZw8" role="nsMwV">
                            <node concept="ns1u0" id="7VBaGntKJas" role="1nq8_t">
                              <ref role="ns1xF" to="6r1k:7VBaGntKJ89" resolve="If" />
                              <node concept="nsMwS" id="7VBaGntKJat" role="ns1xD">
                                <ref role="nsMwP" to="6r1k:7VBaGntKJ8b" resolve="antecedent" />
                                <node concept="1nq8_$" id="3dsgZcixZwe" role="nsMwV">
                                  <node concept="a7P8L" id="3dsgZcixZwf" role="1nq8_t">
                                    <ref role="a7OzE" node="2CF5XF5qAtS" resolve="UniStc" />
                                  </node>
                                </node>
                              </node>
                              <node concept="nsMwS" id="7VBaGntKJau" role="ns1xD">
                                <ref role="nsMwP" to="6r1k:7VBaGntKJ8c" resolve="consequence" />
                                <node concept="1nq8_$" id="3dsgZcixZwk" role="nsMwV">
                                  <node concept="a7P8L" id="3dsgZcixZwl" role="1nq8_t">
                                    <ref role="a7OzE" node="2CF5XF5qF8v" resolve="Con" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="a7P8L" id="3dsgZcixZvW" role="1uarlU">
                        <ref role="a7OzE" node="2CF5XF5qAzp" resolve="Uni" />
                      </node>
                    </node>
                    <node concept="3BlFb$" id="3dsgZcixZwm" role="3AunhB">
                      <node concept="2OqwBi" id="3dsgZcixZwn" role="3BlFb_">
                        <node concept="1y4W85" id="3dsgZcixZwo" role="2Oq$k0">
                          <node concept="3cmrfG" id="3dsgZcixZwp" role="1y58nS">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="3dsgZcixZwq" role="1y566C">
                            <node concept="3A2sRY" id="3dsgZcixZwr" role="2Oq$k0">
                              <ref role="3A2yKK" node="2CF5XF5q_lG" resolve="ee" />
                            </node>
                            <node concept="3Tsc0h" id="3dsgZcixZws" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3dsgZcixZwt" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="3dsgZciy0ny" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="3dsgZciy0n_" role="3Ip0Jz">
                <node concept="3I6s7M" id="3dsgZciy0p7" role="3I6sU7">
                  <node concept="3Aqt3T" id="3dsgZciy0p8" role="3I6s78">
                    <ref role="3AqCNq" to="6r1k:2aBGSFgfwNi" resolve="conclusion" />
                    <node concept="a7P8L" id="3dsgZciy0p9" role="3AunhB">
                      <ref role="a7OzE" node="2CF5XF5qF8v" resolve="Con" />
                    </node>
                    <node concept="3BlFb$" id="3dsgZciy0pa" role="3AunhB">
                      <node concept="3A2sRY" id="3dsgZciy0pb" role="3BlFb_">
                        <ref role="3A2yKK" node="2CF5XF5q_lG" resolve="ee" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="2CF5XF5qFel" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="2CF5XF5qFem" role="3Ip0Jz">
                <node concept="3I6s7M" id="2CF5XF5qFfg" role="3I6sU7">
                  <node concept="3Aqt3T" id="2CF5XF5qFff" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2CF5XF5qML8" role="3AunhB">
                      <node concept="2OqwBi" id="2CF5XF5qML9" role="3BlFb_">
                        <node concept="1y4W85" id="2CF5XF5qMLa" role="2Oq$k0">
                          <node concept="3cmrfG" id="2CF5XF5qMLb" role="1y58nS">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="2CF5XF5qMLc" role="1y566C">
                            <node concept="3A2sRY" id="2CF5XF5qMLd" role="2Oq$k0">
                              <ref role="3A2yKK" node="2CF5XF5q_lG" resolve="ee" />
                            </node>
                            <node concept="3Tsc0h" id="2CF5XF5qMLe" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2CF5XF5qMLf" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2CF5XF5qMTs" role="3I6sU7">
                  <node concept="3Aqt3T" id="2CF5XF5qMTq" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2CF5XF5qMTD" role="3AunhB">
                      <node concept="2OqwBi" id="2CF5XF5qMTE" role="3BlFb_">
                        <node concept="1y4W85" id="2CF5XF5qMTF" role="2Oq$k0">
                          <node concept="3cmrfG" id="2CF5XF5qMTG" role="1y58nS">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="2CF5XF5qMTH" role="1y566C">
                            <node concept="3A2sRY" id="2CF5XF5qMTI" role="2Oq$k0">
                              <ref role="3A2yKK" node="2CF5XF5q_lG" resolve="ee" />
                            </node>
                            <node concept="3Tsc0h" id="2CF5XF5qMTJ" role="2OqNvi">
                              <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2CF5XF5qMTK" role="2OqNvi">
                          <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9_M" id="2CF5XF5qPeh" role="1nLNMa">
              <node concept="3I6sU6" id="2CF5XF5qPei" role="3Ip0Jz">
                <node concept="3I6s7M" id="2CF5XF5qPem" role="3I6sU7">
                  <node concept="3A8Hvi" id="2CF5XF5qPer" role="3I6s78">
                    <node concept="1lh$Hi" id="2CF5XF5qPe$" role="3A8wtg">
                      <node concept="a7P8L" id="2CF5XF5qPeP" role="1lh$Hv">
                        <ref role="a7OzE" node="2CF5XF5qOwG" resolve="ExStc" />
                      </node>
                      <node concept="a7P8L" id="2CF5XF5qPhg" role="1lh$H$">
                        <ref role="a7OzE" node="2CF5XF5qAtH" resolve="ExVar" />
                      </node>
                      <node concept="a7P8L" id="2CF5XF5qPhl" role="1lh$Hx">
                        <ref role="a7OzE" node="2CF5XF5qNbA" resolve="UniVar" />
                      </node>
                    </node>
                    <node concept="a7P8L" id="2CF5XF5qPhq" role="3A8w4Q">
                      <ref role="a7OzE" node="2CF5XF5qAtS" resolve="UniStc" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2CF5XF5qN3_" role="1nLNMd">
              <node concept="3I6sU6" id="2CF5XF5qN3A" role="3Ip0Jz">
                <node concept="3I6s7M" id="2cLnr$rIwWm" role="3I6sU7">
                  <node concept="3lcGGY" id="2cLnr$rIwWk" role="3I6s78">
                    <node concept="37vLTw" id="6$MtiK8H0qU" role="3wWo3s">
                      <ref role="3cqZAo" node="2cLnr$rHydI" resolve="variableOk" />
                    </node>
                  </node>
                </node>
                <node concept="3I6s7M" id="2CF5XF5qN3E" role="3I6sU7">
                  <node concept="3Aqt3T" id="2CF5XF5qN3D" role="3I6s78">
                    <ref role="3AqCNq" to="f3ld:2YqrT$P7tud" resolve="valid" />
                    <node concept="3BlFb$" id="2CF5XF5qN3J" role="3AunhB">
                      <node concept="3A2sRY" id="2CF5XF5qN3S" role="3BlFb_">
                        <ref role="3A2yKK" node="2CF5XF5q_lG" resolve="ee" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9E8" id="2cLnr$rI$M8" role="1nLNMd">
              <node concept="3I6sU6" id="2cLnr$rI$M9" role="3Ip0Jz">
                <node concept="3I6s7M" id="3dsgZcixPye" role="3I6sU7">
                  <node concept="3wWvb2" id="3dsgZcixPyc" role="3I6s78">
                    <node concept="2OqwBi" id="3dsgZcixPUk" role="3wWo3s">
                      <node concept="2s7oft" id="3dsgZcixQbH" role="2OqNvi">
                        <property role="2s7ueQ" value="error" />
                        <node concept="Xl_RD" id="3dsgZcixRqs" role="2s7u9n">
                          <property role="Xl_RC" value="variable is not OK" />
                        </node>
                      </node>
                      <node concept="3A2sRY" id="3dsgZcixRqW" role="2Oq$k0">
                        <ref role="3A2yKK" node="2CF5XF5q_lG" resolve="ee" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="2CF5XF5q_lF" role="1nLNMg">
        <ref role="2t_S0q" to="bw37:Vo$tzLEGtG" resolve="ExistsElim" />
        <node concept="3A20r5" id="2CF5XF5q_lG" role="2t_VXX">
          <property role="TrG5h" value="ee" />
        </node>
      </node>
      <node concept="cBwPQ" id="2CF5XF5q_lS" role="1nLFYo">
        <node concept="3clFbS" id="2CF5XF5q_lT" role="16YjZG">
          <node concept="3clFbF" id="2CF5XF5q_m5" role="3cqZAp">
            <node concept="3clFbC" id="2CF5XF5q_m6" role="3clFbG">
              <node concept="2OqwBi" id="2CF5XF5q_m7" role="3uHU7B">
                <node concept="2OqwBi" id="2CF5XF5q_m8" role="2Oq$k0">
                  <node concept="3A2sRY" id="2CF5XF5q_Et" role="2Oq$k0">
                    <ref role="3A2yKK" node="2CF5XF5q_lG" resolve="ee" />
                  </node>
                  <node concept="3Tsc0h" id="2CF5XF5q_ma" role="2OqNvi">
                    <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="basis" />
                  </node>
                </node>
                <node concept="34oBXx" id="2CF5XF5q_mb" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="2CF5XF5q_mc" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Vo$tzLFdFq">
    <property role="TrG5h" value="VariableUtil" />
    <node concept="2tJIrI" id="Vo$tzLFdFO" role="jymVt" />
    <node concept="2YIFZL" id="Vo$tzLFdG3" role="jymVt">
      <property role="TrG5h" value="freeVars" />
      <node concept="37vLTG" id="Vo$tzLFdHB" role="3clF46">
        <property role="TrG5h" value="sentence" />
        <node concept="3Tqbb2" id="Vo$tzLFdHU" role="1tU5fm">
          <ref role="ehGHo" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
        </node>
      </node>
      <node concept="3Tm1VV" id="Vo$tzLFdG6" role="1B3o_S" />
      <node concept="3clFbS" id="Vo$tzLFdG7" role="3clF47">
        <node concept="3cpWs8" id="Vo$tzLGz$L" role="3cqZAp">
          <node concept="3cpWsn" id="Vo$tzLGz$M" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2hMVRd" id="Vo$tzLGz$D" role="1tU5fm">
              <node concept="17QB3L" id="Vo$tzLGz$G" role="2hN53Y" />
            </node>
            <node concept="2ShNRf" id="Vo$tzLGz$N" role="33vP2m">
              <node concept="2i4dXS" id="Vo$tzLGz$O" role="2ShVmc">
                <node concept="17QB3L" id="Vo$tzLGz$P" role="HW$YZ" />
                <node concept="3cmrfG" id="Vo$tzLGz$Q" role="3lWHg$">
                  <property role="3cmrfH" value="4" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Vo$tzLGzGF" role="3cqZAp">
          <node concept="1rXfSq" id="Vo$tzLGzGD" role="3clFbG">
            <ref role="37wK5l" node="Vo$tzLFdJV" resolve="collectFreeVars" />
            <node concept="37vLTw" id="Vo$tzLGzLx" role="37wK5m">
              <ref role="3cqZAo" node="Vo$tzLFdHB" resolve="sentence" />
            </node>
            <node concept="37vLTw" id="Vo$tzLGzPk" role="37wK5m">
              <ref role="3cqZAo" node="Vo$tzLGz$M" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Vo$tzLGzd4" role="3cqZAp">
          <node concept="37vLTw" id="Vo$tzLGz$R" role="3clFbG">
            <ref role="3cqZAo" node="Vo$tzLGz$M" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2hMVRd" id="Vo$tzLFiWR" role="3clF45">
        <node concept="17QB3L" id="Vo$tzLFiYR" role="2hN53Y" />
      </node>
    </node>
    <node concept="2tJIrI" id="2CF5XF5pCDB" role="jymVt" />
    <node concept="2YIFZL" id="2CF5XF5pCwx" role="jymVt">
      <property role="TrG5h" value="freeVarsUnderQuantifier" />
      <node concept="37vLTG" id="2CF5XF5pCwy" role="3clF46">
        <property role="TrG5h" value="sentence" />
        <node concept="3Tqbb2" id="2CF5XF5pCwz" role="1tU5fm">
          <ref role="ehGHo" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
        </node>
      </node>
      <node concept="37vLTG" id="2cLnr$rEF4B" role="3clF46">
        <property role="TrG5h" value="quantVars" />
        <node concept="2hMVRd" id="2cLnr$rEFK8" role="1tU5fm">
          <node concept="17QB3L" id="2cLnr$rEFTW" role="2hN53Y" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2CF5XF5pCw$" role="1B3o_S" />
      <node concept="3clFbS" id="2CF5XF5pCw_" role="3clF47">
        <node concept="3cpWs8" id="2CF5XF5pCwA" role="3cqZAp">
          <node concept="3cpWsn" id="2CF5XF5pCwB" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2hMVRd" id="2CF5XF5pCwC" role="1tU5fm">
              <node concept="17QB3L" id="2CF5XF5pCwD" role="2hN53Y" />
            </node>
            <node concept="2ShNRf" id="2CF5XF5pCwE" role="33vP2m">
              <node concept="2i4dXS" id="2CF5XF5pCwF" role="2ShVmc">
                <node concept="17QB3L" id="2CF5XF5pCwG" role="HW$YZ" />
                <node concept="3cmrfG" id="2CF5XF5pCwH" role="3lWHg$">
                  <property role="3cmrfH" value="4" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2CF5XF5pCwI" role="3cqZAp">
          <node concept="1rXfSq" id="2CF5XF5pCwJ" role="3clFbG">
            <ref role="37wK5l" node="2CF5XF5pm24" resolve="collectFreeVars" />
            <node concept="37vLTw" id="2CF5XF5pCwK" role="37wK5m">
              <ref role="3cqZAo" node="2CF5XF5pCwy" resolve="sentence" />
            </node>
            <node concept="37vLTw" id="2CF5XF5pCwL" role="37wK5m">
              <ref role="3cqZAo" node="2CF5XF5pCwB" resolve="result" />
            </node>
            <node concept="3clFbT" id="2CF5XF5pCYZ" role="37wK5m">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="37vLTw" id="2cLnr$rESsf" role="37wK5m">
              <ref role="3cqZAo" node="2cLnr$rEF4B" resolve="quantVars" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2CF5XF5pCwM" role="3cqZAp">
          <node concept="37vLTw" id="2CF5XF5pCwN" role="3clFbG">
            <ref role="3cqZAo" node="2CF5XF5pCwB" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2hMVRd" id="2CF5XF5pCwO" role="3clF45">
        <node concept="17QB3L" id="2CF5XF5pCwP" role="2hN53Y" />
      </node>
    </node>
    <node concept="2tJIrI" id="Vo$tzLFdJv" role="jymVt" />
    <node concept="2YIFZL" id="Vo$tzLFdJV" role="jymVt">
      <property role="TrG5h" value="collectFreeVars" />
      <node concept="37vLTG" id="Vo$tzLFdLo" role="3clF46">
        <property role="TrG5h" value="sentence" />
        <node concept="3Tqbb2" id="Vo$tzLFdLK" role="1tU5fm">
          <ref role="ehGHo" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
        </node>
      </node>
      <node concept="37vLTG" id="Vo$tzLFdOO" role="3clF46">
        <property role="TrG5h" value="names" />
        <node concept="2hMVRd" id="Vo$tzLFj10" role="1tU5fm">
          <node concept="17QB3L" id="Vo$tzLFj6A" role="2hN53Y" />
        </node>
      </node>
      <node concept="3cqZAl" id="Vo$tzLFdNH" role="3clF45" />
      <node concept="3Tm6S6" id="Vo$tzLFdNh" role="1B3o_S" />
      <node concept="3clFbS" id="Vo$tzLFdJZ" role="3clF47">
        <node concept="1_3QMa" id="Vo$tzLFsDO" role="3cqZAp">
          <node concept="2OqwBi" id="Vo$tzLFt0n" role="1_3QMn">
            <node concept="2yIwOk" id="Vo$tzLFtjm" role="2OqNvi" />
            <node concept="37vLTw" id="Vo$tzLFWz8" role="2Oq$k0">
              <ref role="3cqZAo" node="Vo$tzLFdLo" resolve="sentence" />
            </node>
          </node>
          <node concept="1pnPoh" id="Vo$tzLFsKD" role="1_3QMm">
            <node concept="3gn64h" id="Vo$tzLFsL3" role="1pnPq6">
              <ref role="3gnhBz" to="bw37:2DPo4JTRwtx" resolve="Relation" />
            </node>
            <node concept="3clFbS" id="Vo$tzLFsKH" role="1pnPq1">
              <node concept="3clFbF" id="Vo$tzLFsRg" role="3cqZAp">
                <node concept="2OqwBi" id="Vo$tzLFvWl" role="3clFbG">
                  <node concept="2OqwBi" id="Vo$tzLFuqa" role="2Oq$k0">
                    <node concept="1PxgMI" id="Vo$tzLFugm" role="2Oq$k0">
                      <node concept="chp4Y" id="Vo$tzLFuhr" role="3oSUPX">
                        <ref role="cht4Q" to="bw37:2DPo4JTRwtx" resolve="Relation" />
                      </node>
                      <node concept="37vLTw" id="Vo$tzLFsRf" role="1m5AlR">
                        <ref role="3cqZAo" node="Vo$tzLFdLo" resolve="sentence" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="Vo$tzLFuCF" role="2OqNvi">
                      <ref role="3TtcxE" to="bw37:2DPo4JTRwtF" resolve="member" />
                    </node>
                  </node>
                  <node concept="2es0OD" id="Vo$tzLFyIV" role="2OqNvi">
                    <node concept="1bVj0M" id="Vo$tzLFyIX" role="23t8la">
                      <node concept="3clFbS" id="Vo$tzLFyIY" role="1bW5cS">
                        <node concept="3clFbF" id="Vo$tzLFyPC" role="3cqZAp">
                          <node concept="1rXfSq" id="Vo$tzLFyPB" role="3clFbG">
                            <ref role="37wK5l" node="Vo$tzLFdPG" resolve="collectFreeVarsFromTerm" />
                            <node concept="37vLTw" id="Vo$tzLFz2V" role="37wK5m">
                              <ref role="3cqZAo" node="Vo$tzLFyIZ" resolve="it" />
                            </node>
                            <node concept="37vLTw" id="Vo$tzLGcRW" role="37wK5m">
                              <ref role="3cqZAo" node="Vo$tzLFdOO" resolve="names" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="Vo$tzLFyIZ" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="Vo$tzLFyJ0" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="Vo$tzLG5kL" role="3cqZAp" />
            </node>
          </node>
          <node concept="1pnPoh" id="Vo$tzLFsGa" role="1_3QMm">
            <node concept="3gn64h" id="Vo$tzLFsJe" role="1pnPq6">
              <ref role="3gnhBz" to="bw37:2DPo4JTRwtj" resolve="Exists" />
            </node>
            <node concept="3clFbS" id="Vo$tzLFsGc" role="1pnPq1">
              <node concept="3cpWs8" id="Vo$tzLFXTL" role="3cqZAp">
                <node concept="3cpWsn" id="Vo$tzLFXTM" role="3cpWs9">
                  <property role="TrG5h" value="subset" />
                  <node concept="2hMVRd" id="Vo$tzLFXTH" role="1tU5fm">
                    <node concept="17QB3L" id="Vo$tzLFXTK" role="2hN53Y" />
                  </node>
                  <node concept="2ShNRf" id="Vo$tzLFXTN" role="33vP2m">
                    <node concept="2i4dXS" id="Vo$tzLFXTO" role="2ShVmc">
                      <node concept="17QB3L" id="Vo$tzLFXTP" role="HW$YZ" />
                      <node concept="3cmrfG" id="Vo$tzLGpYv" role="3lWHg$">
                        <property role="3cmrfH" value="4" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="Vo$tzLG91$" role="3cqZAp">
                <node concept="1rXfSq" id="Vo$tzLG91_" role="3clFbG">
                  <ref role="37wK5l" node="Vo$tzLFdJV" resolve="collectFreeVars" />
                  <node concept="2OqwBi" id="Vo$tzLG91A" role="37wK5m">
                    <node concept="1PxgMI" id="Vo$tzLG91B" role="2Oq$k0">
                      <node concept="chp4Y" id="Vo$tzLGaui" role="3oSUPX">
                        <ref role="cht4Q" to="bw37:2DPo4JTRwtj" resolve="Exists" />
                      </node>
                      <node concept="37vLTw" id="Vo$tzLG91D" role="1m5AlR">
                        <ref role="3cqZAo" node="Vo$tzLFdLo" resolve="sentence" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="Vo$tzLG91E" role="2OqNvi">
                      <ref role="3Tt5mk" to="bw37:2DPo4JTRwtm" resolve="sentence" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="Vo$tzLG91F" role="37wK5m">
                    <ref role="3cqZAo" node="Vo$tzLFXTM" resolve="subset" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="Vo$tzLFYkO" role="3cqZAp">
                <node concept="2OqwBi" id="Vo$tzLFYUk" role="3clFbG">
                  <node concept="37vLTw" id="Vo$tzLFYkM" role="2Oq$k0">
                    <ref role="3cqZAo" node="Vo$tzLFXTM" resolve="subset" />
                  </node>
                  <node concept="3dhRuq" id="Vo$tzLG2Sg" role="2OqNvi">
                    <node concept="2OqwBi" id="Vo$tzLG2S9" role="25WWJ7">
                      <node concept="2OqwBi" id="Vo$tzLG2Sa" role="2Oq$k0">
                        <node concept="1PxgMI" id="Vo$tzLG2Sb" role="2Oq$k0">
                          <node concept="chp4Y" id="Vo$tzLG2Sc" role="3oSUPX">
                            <ref role="cht4Q" to="bw37:2DPo4JTRwtj" resolve="Exists" />
                          </node>
                          <node concept="37vLTw" id="Vo$tzLG2Sd" role="1m5AlR">
                            <ref role="3cqZAo" node="Vo$tzLFdLo" resolve="sentence" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="Vo$tzLG2Se" role="2OqNvi">
                          <ref role="3Tt5mk" to="bw37:2DPo4JTRwto" resolve="variable" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="Vo$tzLG2Sf" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="Vo$tzLG36m" role="3cqZAp">
                <node concept="2OqwBi" id="Vo$tzLG3Gc" role="3clFbG">
                  <node concept="37vLTw" id="Vo$tzLG36k" role="2Oq$k0">
                    <ref role="3cqZAo" node="Vo$tzLFdOO" resolve="names" />
                  </node>
                  <node concept="X8dFx" id="Vo$tzLG52c" role="2OqNvi">
                    <node concept="37vLTw" id="Vo$tzLG5cj" role="25WWJ7">
                      <ref role="3cqZAo" node="Vo$tzLFXTM" resolve="subset" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="Vo$tzLFXTb" role="3cqZAp" />
            </node>
          </node>
          <node concept="1pnPoh" id="Vo$tzLFsG_" role="1_3QMm">
            <node concept="3gn64h" id="Vo$tzLFsJp" role="1pnPq6">
              <ref role="3gnhBz" to="bw37:2DPo4JTRwtd" resolve="Forall" />
            </node>
            <node concept="3clFbS" id="Vo$tzLFsGD" role="1pnPq1">
              <node concept="3cpWs8" id="Vo$tzLG5l_" role="3cqZAp">
                <node concept="3cpWsn" id="Vo$tzLG5lA" role="3cpWs9">
                  <property role="TrG5h" value="subset" />
                  <node concept="2hMVRd" id="Vo$tzLG5lB" role="1tU5fm">
                    <node concept="17QB3L" id="Vo$tzLG5lC" role="2hN53Y" />
                  </node>
                  <node concept="2ShNRf" id="Vo$tzLG5lD" role="33vP2m">
                    <node concept="2i4dXS" id="Vo$tzLG5lE" role="2ShVmc">
                      <node concept="17QB3L" id="Vo$tzLG5lF" role="HW$YZ" />
                      <node concept="3cmrfG" id="Vo$tzLGskK" role="3lWHg$">
                        <property role="3cmrfH" value="4" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="Vo$tzLG6VR" role="3cqZAp">
                <node concept="1rXfSq" id="Vo$tzLG6VP" role="3clFbG">
                  <ref role="37wK5l" node="Vo$tzLFdJV" resolve="collectFreeVars" />
                  <node concept="2OqwBi" id="Vo$tzLG71j" role="37wK5m">
                    <node concept="1PxgMI" id="Vo$tzLG71k" role="2Oq$k0">
                      <node concept="chp4Y" id="Vo$tzLG71l" role="3oSUPX">
                        <ref role="cht4Q" to="bw37:2DPo4JTRwtd" resolve="Forall" />
                      </node>
                      <node concept="37vLTw" id="Vo$tzLG71m" role="1m5AlR">
                        <ref role="3cqZAo" node="Vo$tzLFdLo" resolve="sentence" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="Vo$tzLG71n" role="2OqNvi">
                      <ref role="3Tt5mk" to="bw37:2DPo4JTRwts" resolve="sentence" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="Vo$tzLG7bD" role="37wK5m">
                    <ref role="3cqZAo" node="Vo$tzLG5lA" resolve="subset" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="Vo$tzLG5lR" role="3cqZAp">
                <node concept="2OqwBi" id="Vo$tzLG5lS" role="3clFbG">
                  <node concept="37vLTw" id="Vo$tzLG5lT" role="2Oq$k0">
                    <ref role="3cqZAo" node="Vo$tzLG5lA" resolve="subset" />
                  </node>
                  <node concept="3dhRuq" id="Vo$tzLG5lU" role="2OqNvi">
                    <node concept="2OqwBi" id="Vo$tzLG5lV" role="25WWJ7">
                      <node concept="2OqwBi" id="Vo$tzLG5lW" role="2Oq$k0">
                        <node concept="1PxgMI" id="Vo$tzLG5lX" role="2Oq$k0">
                          <node concept="chp4Y" id="Vo$tzLG6pG" role="3oSUPX">
                            <ref role="cht4Q" to="bw37:2DPo4JTRwtd" resolve="Forall" />
                          </node>
                          <node concept="37vLTw" id="Vo$tzLG5lZ" role="1m5AlR">
                            <ref role="3cqZAo" node="Vo$tzLFdLo" resolve="sentence" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="Vo$tzLG5m0" role="2OqNvi">
                          <ref role="3Tt5mk" to="bw37:2DPo4JTRwtr" resolve="variable" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="Vo$tzLG5m1" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="Vo$tzLG5m2" role="3cqZAp">
                <node concept="2OqwBi" id="Vo$tzLG5m3" role="3clFbG">
                  <node concept="37vLTw" id="Vo$tzLG5m4" role="2Oq$k0">
                    <ref role="3cqZAo" node="Vo$tzLFdOO" resolve="names" />
                  </node>
                  <node concept="X8dFx" id="Vo$tzLG5m5" role="2OqNvi">
                    <node concept="37vLTw" id="Vo$tzLG5m6" role="25WWJ7">
                      <ref role="3cqZAo" node="Vo$tzLG5lA" resolve="subset" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="Vo$tzLG683" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbS" id="Vo$tzLGvuD" role="1prKM_">
            <node concept="3clFbF" id="Vo$tzLGwlK" role="3cqZAp">
              <node concept="2OqwBi" id="Vo$tzLGwlL" role="3clFbG">
                <node concept="2OqwBi" id="Vo$tzLGwlM" role="2Oq$k0">
                  <node concept="2OqwBi" id="Vo$tzLGwlN" role="2Oq$k0">
                    <node concept="37vLTw" id="Vo$tzLGwlQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="Vo$tzLFdLo" resolve="sentence" />
                    </node>
                    <node concept="32TBzR" id="Vo$tzLGwlR" role="2OqNvi" />
                  </node>
                  <node concept="v3k3i" id="Vo$tzLGwlS" role="2OqNvi">
                    <node concept="chp4Y" id="Vo$tzLGwlT" role="v3oSu">
                      <ref role="cht4Q" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
                    </node>
                  </node>
                </node>
                <node concept="2es0OD" id="Vo$tzLGwlU" role="2OqNvi">
                  <node concept="1bVj0M" id="Vo$tzLGwlV" role="23t8la">
                    <node concept="3clFbS" id="Vo$tzLGwlW" role="1bW5cS">
                      <node concept="3clFbF" id="Vo$tzLGwlX" role="3cqZAp">
                        <node concept="1rXfSq" id="Vo$tzLGwlY" role="3clFbG">
                          <ref role="37wK5l" node="Vo$tzLFdJV" resolve="collectFreeVars" />
                          <node concept="37vLTw" id="Vo$tzLGwlZ" role="37wK5m">
                            <ref role="3cqZAo" node="Vo$tzLGwm1" resolve="it" />
                          </node>
                          <node concept="37vLTw" id="Vo$tzLGwm0" role="37wK5m">
                            <ref role="3cqZAo" node="Vo$tzLFdOO" resolve="names" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="Vo$tzLGwm1" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="Vo$tzLGwm2" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2CF5XF5povU" role="jymVt" />
    <node concept="2YIFZL" id="2CF5XF5pm24" role="jymVt">
      <property role="TrG5h" value="collectFreeVars" />
      <node concept="37vLTG" id="2CF5XF5pm25" role="3clF46">
        <property role="TrG5h" value="sentence" />
        <node concept="3Tqbb2" id="2CF5XF5pm26" role="1tU5fm">
          <ref role="ehGHo" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
        </node>
      </node>
      <node concept="37vLTG" id="2CF5XF5pm27" role="3clF46">
        <property role="TrG5h" value="names" />
        <node concept="2hMVRd" id="2CF5XF5pm28" role="1tU5fm">
          <node concept="17QB3L" id="2CF5XF5pm29" role="2hN53Y" />
        </node>
      </node>
      <node concept="37vLTG" id="2CF5XF5pplt" role="3clF46">
        <property role="TrG5h" value="underQuantifier" />
        <node concept="10P_77" id="2CF5XF5ppuC" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2cLnr$rEGFh" role="3clF46">
        <property role="TrG5h" value="quantVars" />
        <node concept="2hMVRd" id="2cLnr$rEGRM" role="1tU5fm">
          <node concept="17QB3L" id="2cLnr$rEGTW" role="2hN53Y" />
        </node>
      </node>
      <node concept="3cqZAl" id="2CF5XF5pm2a" role="3clF45" />
      <node concept="3Tm6S6" id="2CF5XF5pm2b" role="1B3o_S" />
      <node concept="3clFbS" id="2CF5XF5pm2c" role="3clF47">
        <node concept="1_3QMa" id="2CF5XF5pm2d" role="3cqZAp">
          <node concept="2OqwBi" id="2CF5XF5pm2e" role="1_3QMn">
            <node concept="2yIwOk" id="2CF5XF5pm2f" role="2OqNvi" />
            <node concept="37vLTw" id="2CF5XF5pm2g" role="2Oq$k0">
              <ref role="3cqZAo" node="2CF5XF5pm25" resolve="sentence" />
            </node>
          </node>
          <node concept="1pnPoh" id="2CF5XF5pm2h" role="1_3QMm">
            <node concept="3gn64h" id="2CF5XF5pm2i" role="1pnPq6">
              <ref role="3gnhBz" to="bw37:2DPo4JTRwtx" resolve="Relation" />
            </node>
            <node concept="3clFbS" id="2CF5XF5pm2j" role="1pnPq1">
              <node concept="3clFbJ" id="2CF5XF5ppAl" role="3cqZAp">
                <node concept="3clFbS" id="2CF5XF5ppAn" role="3clFbx">
                  <node concept="3clFbF" id="2CF5XF5pm2k" role="3cqZAp">
                    <node concept="2OqwBi" id="2CF5XF5pm2l" role="3clFbG">
                      <node concept="2OqwBi" id="2CF5XF5pm2m" role="2Oq$k0">
                        <node concept="1PxgMI" id="2CF5XF5pm2n" role="2Oq$k0">
                          <node concept="chp4Y" id="2CF5XF5pm2o" role="3oSUPX">
                            <ref role="cht4Q" to="bw37:2DPo4JTRwtx" resolve="Relation" />
                          </node>
                          <node concept="37vLTw" id="2CF5XF5pm2p" role="1m5AlR">
                            <ref role="3cqZAo" node="2CF5XF5pm25" resolve="sentence" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="2CF5XF5pm2q" role="2OqNvi">
                          <ref role="3TtcxE" to="bw37:2DPo4JTRwtF" resolve="member" />
                        </node>
                      </node>
                      <node concept="2es0OD" id="2CF5XF5pm2r" role="2OqNvi">
                        <node concept="1bVj0M" id="2CF5XF5pm2s" role="23t8la">
                          <node concept="3clFbS" id="2CF5XF5pm2t" role="1bW5cS">
                            <node concept="3clFbF" id="2CF5XF5pm2u" role="3cqZAp">
                              <node concept="1rXfSq" id="2CF5XF5pm2v" role="3clFbG">
                                <ref role="37wK5l" node="Vo$tzLFdPG" resolve="collectFreeVarsFromTerm" />
                                <node concept="37vLTw" id="2CF5XF5pm2w" role="37wK5m">
                                  <ref role="3cqZAo" node="2CF5XF5pm2y" resolve="it" />
                                </node>
                                <node concept="37vLTw" id="2CF5XF5pm2x" role="37wK5m">
                                  <ref role="3cqZAo" node="2CF5XF5pm27" resolve="names" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="2CF5XF5pm2y" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="2CF5XF5pm2z" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2CF5XF5ppFn" role="3clFbw">
                  <ref role="3cqZAo" node="2CF5XF5pplt" resolve="underQuantifier" />
                </node>
              </node>
              <node concept="3clFbH" id="2CF5XF5pm2$" role="3cqZAp" />
            </node>
          </node>
          <node concept="1pnPoh" id="2CF5XF5pm2_" role="1_3QMm">
            <node concept="3gn64h" id="2CF5XF5pm2A" role="1pnPq6">
              <ref role="3gnhBz" to="bw37:2DPo4JTRwtj" resolve="Exists" />
            </node>
            <node concept="3clFbS" id="2CF5XF5pm2B" role="1pnPq1">
              <node concept="3cpWs8" id="2CF5XF5pm2C" role="3cqZAp">
                <node concept="3cpWsn" id="2CF5XF5pm2D" role="3cpWs9">
                  <property role="TrG5h" value="subset" />
                  <node concept="2hMVRd" id="2CF5XF5pm2E" role="1tU5fm">
                    <node concept="17QB3L" id="2CF5XF5pm2F" role="2hN53Y" />
                  </node>
                  <node concept="2ShNRf" id="2CF5XF5pm2G" role="33vP2m">
                    <node concept="2i4dXS" id="2CF5XF5pm2H" role="2ShVmc">
                      <node concept="17QB3L" id="2CF5XF5pm2I" role="HW$YZ" />
                      <node concept="3cmrfG" id="2CF5XF5pm2J" role="3lWHg$">
                        <property role="3cmrfH" value="4" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2CF5XF5pm2K" role="3cqZAp">
                <node concept="1rXfSq" id="2CF5XF5pm2L" role="3clFbG">
                  <ref role="37wK5l" node="2CF5XF5pm24" resolve="collectFreeVars" />
                  <node concept="2OqwBi" id="2CF5XF5pm2M" role="37wK5m">
                    <node concept="1PxgMI" id="2CF5XF5pm2N" role="2Oq$k0">
                      <node concept="chp4Y" id="2CF5XF5pm2O" role="3oSUPX">
                        <ref role="cht4Q" to="bw37:2DPo4JTRwtj" resolve="Exists" />
                      </node>
                      <node concept="37vLTw" id="2CF5XF5pm2P" role="1m5AlR">
                        <ref role="3cqZAo" node="2CF5XF5pm25" resolve="sentence" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="2CF5XF5pm2Q" role="2OqNvi">
                      <ref role="3Tt5mk" to="bw37:2DPo4JTRwtm" resolve="sentence" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2CF5XF5pm2R" role="37wK5m">
                    <ref role="3cqZAo" node="2CF5XF5pm2D" resolve="subset" />
                  </node>
                  <node concept="22lmx$" id="2cLnr$rEJUh" role="37wK5m">
                    <node concept="37vLTw" id="2cLnr$rEKb_" role="3uHU7B">
                      <ref role="3cqZAo" node="2CF5XF5pplt" resolve="underQuantifier" />
                    </node>
                    <node concept="2OqwBi" id="2cLnr$rEIfz" role="3uHU7w">
                      <node concept="37vLTw" id="2cLnr$rEHt_" role="2Oq$k0">
                        <ref role="3cqZAo" node="2cLnr$rEGFh" resolve="quantVars" />
                      </node>
                      <node concept="3JPx81" id="2cLnr$rEJEj" role="2OqNvi">
                        <node concept="2OqwBi" id="2cLnr$rEMcQ" role="25WWJ7">
                          <node concept="2OqwBi" id="2cLnr$rELrE" role="2Oq$k0">
                            <node concept="1PxgMI" id="2cLnr$rEKKI" role="2Oq$k0">
                              <node concept="chp4Y" id="2cLnr$rEKR6" role="3oSUPX">
                                <ref role="cht4Q" to="bw37:2DPo4JTRwtj" resolve="Exists" />
                              </node>
                              <node concept="37vLTw" id="2cLnr$rEKmF" role="1m5AlR">
                                <ref role="3cqZAo" node="2CF5XF5pm25" resolve="sentence" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="2cLnr$rELJ9" role="2OqNvi">
                              <ref role="3Tt5mk" to="bw37:2DPo4JTRwto" resolve="variable" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="2cLnr$rEMzD" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2cLnr$rEHfb" role="37wK5m">
                    <ref role="3cqZAo" node="2cLnr$rEGFh" resolve="quantVars" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2CF5XF5pm2S" role="3cqZAp">
                <node concept="2OqwBi" id="2CF5XF5pm2T" role="3clFbG">
                  <node concept="37vLTw" id="2CF5XF5pm2U" role="2Oq$k0">
                    <ref role="3cqZAo" node="2CF5XF5pm2D" resolve="subset" />
                  </node>
                  <node concept="3dhRuq" id="2CF5XF5pm2V" role="2OqNvi">
                    <node concept="2OqwBi" id="2CF5XF5pm2W" role="25WWJ7">
                      <node concept="2OqwBi" id="2CF5XF5pm2X" role="2Oq$k0">
                        <node concept="1PxgMI" id="2CF5XF5pm2Y" role="2Oq$k0">
                          <node concept="chp4Y" id="2CF5XF5pm2Z" role="3oSUPX">
                            <ref role="cht4Q" to="bw37:2DPo4JTRwtj" resolve="Exists" />
                          </node>
                          <node concept="37vLTw" id="2CF5XF5pm30" role="1m5AlR">
                            <ref role="3cqZAo" node="2CF5XF5pm25" resolve="sentence" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2CF5XF5pm31" role="2OqNvi">
                          <ref role="3Tt5mk" to="bw37:2DPo4JTRwto" resolve="variable" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="2CF5XF5pm32" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2CF5XF5pm33" role="3cqZAp">
                <node concept="2OqwBi" id="2CF5XF5pm34" role="3clFbG">
                  <node concept="37vLTw" id="2CF5XF5pm35" role="2Oq$k0">
                    <ref role="3cqZAo" node="2CF5XF5pm27" resolve="names" />
                  </node>
                  <node concept="X8dFx" id="2CF5XF5pm36" role="2OqNvi">
                    <node concept="37vLTw" id="2CF5XF5pm37" role="25WWJ7">
                      <ref role="3cqZAo" node="2CF5XF5pm2D" resolve="subset" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2CF5XF5pm38" role="3cqZAp" />
            </node>
          </node>
          <node concept="1pnPoh" id="2CF5XF5pm39" role="1_3QMm">
            <node concept="3gn64h" id="2CF5XF5pm3a" role="1pnPq6">
              <ref role="3gnhBz" to="bw37:2DPo4JTRwtd" resolve="Forall" />
            </node>
            <node concept="3clFbS" id="2CF5XF5pm3b" role="1pnPq1">
              <node concept="3cpWs8" id="2CF5XF5pm3c" role="3cqZAp">
                <node concept="3cpWsn" id="2CF5XF5pm3d" role="3cpWs9">
                  <property role="TrG5h" value="subset" />
                  <node concept="2hMVRd" id="2CF5XF5pm3e" role="1tU5fm">
                    <node concept="17QB3L" id="2CF5XF5pm3f" role="2hN53Y" />
                  </node>
                  <node concept="2ShNRf" id="2CF5XF5pm3g" role="33vP2m">
                    <node concept="2i4dXS" id="2CF5XF5pm3h" role="2ShVmc">
                      <node concept="17QB3L" id="2CF5XF5pm3i" role="HW$YZ" />
                      <node concept="3cmrfG" id="2CF5XF5pm3j" role="3lWHg$">
                        <property role="3cmrfH" value="4" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2cLnr$rEMHh" role="3cqZAp">
                <node concept="1rXfSq" id="2cLnr$rEMHi" role="3clFbG">
                  <ref role="37wK5l" node="2CF5XF5pm24" resolve="collectFreeVars" />
                  <node concept="2OqwBi" id="2cLnr$rEMHj" role="37wK5m">
                    <node concept="1PxgMI" id="2cLnr$rEMHk" role="2Oq$k0">
                      <node concept="chp4Y" id="2cLnr$rEMYH" role="3oSUPX">
                        <ref role="cht4Q" to="bw37:2DPo4JTRwtd" resolve="Forall" />
                      </node>
                      <node concept="37vLTw" id="2cLnr$rEMHm" role="1m5AlR">
                        <ref role="3cqZAo" node="2CF5XF5pm25" resolve="sentence" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="2cLnr$rEMHn" role="2OqNvi">
                      <ref role="3Tt5mk" to="bw37:2DPo4JTRwts" resolve="sentence" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2cLnr$rEMHo" role="37wK5m">
                    <ref role="3cqZAo" node="2CF5XF5pm3d" resolve="subset" />
                  </node>
                  <node concept="22lmx$" id="2cLnr$rEMHp" role="37wK5m">
                    <node concept="37vLTw" id="2cLnr$rEMHq" role="3uHU7B">
                      <ref role="3cqZAo" node="2CF5XF5pplt" resolve="underQuantifier" />
                    </node>
                    <node concept="2OqwBi" id="2cLnr$rEMHr" role="3uHU7w">
                      <node concept="37vLTw" id="2cLnr$rEMHs" role="2Oq$k0">
                        <ref role="3cqZAo" node="2cLnr$rEGFh" resolve="quantVars" />
                      </node>
                      <node concept="3JPx81" id="2cLnr$rEMHt" role="2OqNvi">
                        <node concept="2OqwBi" id="2cLnr$rEMHu" role="25WWJ7">
                          <node concept="2OqwBi" id="2cLnr$rEMHv" role="2Oq$k0">
                            <node concept="1PxgMI" id="2cLnr$rEMHw" role="2Oq$k0">
                              <node concept="chp4Y" id="2cLnr$rEN7x" role="3oSUPX">
                                <ref role="cht4Q" to="bw37:2DPo4JTRwtd" resolve="Forall" />
                              </node>
                              <node concept="37vLTw" id="2cLnr$rEMHy" role="1m5AlR">
                                <ref role="3cqZAo" node="2CF5XF5pm25" resolve="sentence" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="2cLnr$rEMHz" role="2OqNvi">
                              <ref role="3Tt5mk" to="bw37:2DPo4JTRwtr" resolve="variable" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="2cLnr$rEMH$" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2cLnr$rEMH_" role="37wK5m">
                    <ref role="3cqZAo" node="2cLnr$rEGFh" resolve="quantVars" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2CF5XF5pm3s" role="3cqZAp">
                <node concept="2OqwBi" id="2CF5XF5pm3t" role="3clFbG">
                  <node concept="37vLTw" id="2CF5XF5pm3u" role="2Oq$k0">
                    <ref role="3cqZAo" node="2CF5XF5pm3d" resolve="subset" />
                  </node>
                  <node concept="3dhRuq" id="2CF5XF5pm3v" role="2OqNvi">
                    <node concept="2OqwBi" id="2CF5XF5pm3w" role="25WWJ7">
                      <node concept="2OqwBi" id="2CF5XF5pm3x" role="2Oq$k0">
                        <node concept="1PxgMI" id="2CF5XF5pm3y" role="2Oq$k0">
                          <node concept="chp4Y" id="2CF5XF5pm3z" role="3oSUPX">
                            <ref role="cht4Q" to="bw37:2DPo4JTRwtd" resolve="Forall" />
                          </node>
                          <node concept="37vLTw" id="2CF5XF5pm3$" role="1m5AlR">
                            <ref role="3cqZAo" node="2CF5XF5pm25" resolve="sentence" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2CF5XF5pm3_" role="2OqNvi">
                          <ref role="3Tt5mk" to="bw37:2DPo4JTRwtr" resolve="variable" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="2CF5XF5pm3A" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2CF5XF5pm3B" role="3cqZAp">
                <node concept="2OqwBi" id="2CF5XF5pm3C" role="3clFbG">
                  <node concept="37vLTw" id="2CF5XF5pm3D" role="2Oq$k0">
                    <ref role="3cqZAo" node="2CF5XF5pm27" resolve="names" />
                  </node>
                  <node concept="X8dFx" id="2CF5XF5pm3E" role="2OqNvi">
                    <node concept="37vLTw" id="2CF5XF5pm3F" role="25WWJ7">
                      <ref role="3cqZAo" node="2CF5XF5pm3d" resolve="subset" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2CF5XF5pm3G" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbS" id="2CF5XF5pm3H" role="1prKM_">
            <node concept="3clFbF" id="2CF5XF5pm3I" role="3cqZAp">
              <node concept="2OqwBi" id="2CF5XF5pm3J" role="3clFbG">
                <node concept="2OqwBi" id="2CF5XF5pm3K" role="2Oq$k0">
                  <node concept="2OqwBi" id="2CF5XF5pm3L" role="2Oq$k0">
                    <node concept="37vLTw" id="2CF5XF5pm3O" role="2Oq$k0">
                      <ref role="3cqZAo" node="2CF5XF5pm25" resolve="sentence" />
                    </node>
                    <node concept="32TBzR" id="2CF5XF5pm3P" role="2OqNvi" />
                  </node>
                  <node concept="v3k3i" id="2CF5XF5pm3Q" role="2OqNvi">
                    <node concept="chp4Y" id="2CF5XF5pm3R" role="v3oSu">
                      <ref role="cht4Q" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
                    </node>
                  </node>
                </node>
                <node concept="2es0OD" id="2CF5XF5pm3S" role="2OqNvi">
                  <node concept="1bVj0M" id="2CF5XF5pm3T" role="23t8la">
                    <node concept="3clFbS" id="2CF5XF5pm3U" role="1bW5cS">
                      <node concept="3clFbF" id="2CF5XF5pm3V" role="3cqZAp">
                        <node concept="1rXfSq" id="2CF5XF5pm3W" role="3clFbG">
                          <ref role="37wK5l" node="2CF5XF5pm24" resolve="collectFreeVars" />
                          <node concept="37vLTw" id="2CF5XF5pm3X" role="37wK5m">
                            <ref role="3cqZAo" node="2CF5XF5pm3Z" resolve="it" />
                          </node>
                          <node concept="37vLTw" id="2CF5XF5pm3Y" role="37wK5m">
                            <ref role="3cqZAo" node="2CF5XF5pm27" resolve="names" />
                          </node>
                          <node concept="37vLTw" id="2CF5XF5pCkQ" role="37wK5m">
                            <ref role="3cqZAo" node="2CF5XF5pplt" resolve="underQuantifier" />
                          </node>
                          <node concept="37vLTw" id="2cLnr$rET1a" role="37wK5m">
                            <ref role="3cqZAo" node="2cLnr$rEGFh" resolve="quantVars" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="2CF5XF5pm3Z" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="2CF5XF5pm40" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="2cLnr$rESwb" role="lGtFl">
        <node concept="TZ5HA" id="2cLnr$rESwc" role="TZ5H$">
          <node concept="1dT_AC" id="2cLnr$rESwd" role="1dT_Ay">
            <property role="1dT_AB" value="Collect free variable names under quantifiers of one of the variables specified in `quantVars`." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Vo$tzLFdSe" role="jymVt" />
    <node concept="2YIFZL" id="Vo$tzLFdPG" role="jymVt">
      <property role="TrG5h" value="collectFreeVarsFromTerm" />
      <node concept="37vLTG" id="Vo$tzLFdPH" role="3clF46">
        <property role="TrG5h" value="term" />
        <node concept="3Tqbb2" id="Vo$tzLFdPI" role="1tU5fm">
          <ref role="ehGHo" to="bw37:2DPo4JTRwsJ" resolve="Term" />
        </node>
      </node>
      <node concept="37vLTG" id="Vo$tzLFdPJ" role="3clF46">
        <property role="TrG5h" value="variableNames" />
        <node concept="2hMVRd" id="Vo$tzLFjbf" role="1tU5fm">
          <node concept="17QB3L" id="Vo$tzLFjm_" role="2hN53Y" />
        </node>
      </node>
      <node concept="3cqZAl" id="Vo$tzLFdPL" role="3clF45" />
      <node concept="3Tm6S6" id="Vo$tzLFdPM" role="1B3o_S" />
      <node concept="3clFbS" id="Vo$tzLFdPN" role="3clF47">
        <node concept="3clFbF" id="Vo$tzLFqgf" role="3cqZAp">
          <node concept="2OqwBi" id="Vo$tzLFqRF" role="3clFbG">
            <node concept="37vLTw" id="Vo$tzLFqgd" role="2Oq$k0">
              <ref role="3cqZAo" node="Vo$tzLFdPJ" resolve="variableNames" />
            </node>
            <node concept="X8dFx" id="Vo$tzLGzS3" role="2OqNvi">
              <node concept="2OqwBi" id="Vo$tzLGzRN" role="25WWJ7">
                <node concept="2OqwBi" id="Vo$tzLGzRO" role="2Oq$k0">
                  <node concept="37vLTw" id="Vo$tzLGzRP" role="2Oq$k0">
                    <ref role="3cqZAo" node="Vo$tzLFdPH" resolve="term" />
                  </node>
                  <node concept="2Rf3mk" id="Vo$tzLGzRQ" role="2OqNvi">
                    <node concept="1xMEDy" id="Vo$tzLGzRR" role="1xVPHs">
                      <node concept="chp4Y" id="Vo$tzLGzRS" role="ri$Ld">
                        <ref role="cht4Q" to="bw37:2DPo4JTRwsM" resolve="Variable" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="Vo$tzLGzRT" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3$u5V9" id="Vo$tzLGzRU" role="2OqNvi">
                  <node concept="1bVj0M" id="Vo$tzLGzRV" role="23t8la">
                    <node concept="3clFbS" id="Vo$tzLGzRW" role="1bW5cS">
                      <node concept="3clFbF" id="Vo$tzLGzRX" role="3cqZAp">
                        <node concept="2OqwBi" id="Vo$tzLGzRY" role="3clFbG">
                          <node concept="37vLTw" id="Vo$tzLGzRZ" role="2Oq$k0">
                            <ref role="3cqZAo" node="Vo$tzLGzS1" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="Vo$tzLGzS0" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="Vo$tzLGzS1" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="Vo$tzLGzS2" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Vo$tzLFdFT" role="jymVt" />
    <node concept="3Tm1VV" id="Vo$tzLFdFr" role="1B3o_S" />
  </node>
  <node concept="1M$Gom" id="2oO2uzBWUUr">
    <property role="TrG5h" value="TypeVars" />
    <node concept="1$qIfQ" id="2oO2uzBWWJ7" role="1M$zYZ">
      <property role="TrG5h" value="TypeVars" />
      <node concept="3rvAFt" id="2oO2uzBWWJb" role="1$qIfz">
        <node concept="17QB3L" id="2oO2uzBX5eH" role="3rvQeY" />
        <node concept="26uTi9" id="2oO2uzBWWJz" role="3rvSg0" />
      </node>
    </node>
  </node>
  <node concept="ns1xd" id="7VBaGntKJ6P">
    <property role="TrG5h" value="Herbrand" />
    <node concept="ns1x$" id="7VBaGntKJ6Q" role="ns1xc">
      <property role="TrG5h" value="Forall" />
      <node concept="nspSf" id="7VBaGntKJ6R" role="ns1xx">
        <node concept="nstbe" id="7VBaGntKJ6S" role="nspSe">
          <property role="TrG5h" value="variable" />
          <property role="nspS5" value="false" />
        </node>
        <node concept="nstbe" id="7VBaGntKJ6T" role="nspSe">
          <property role="TrG5h" value="sentence" />
          <property role="nspS5" value="false" />
        </node>
      </node>
    </node>
    <node concept="ns1x$" id="7VBaGntKJ6U" role="ns1xc">
      <property role="TrG5h" value="Exists" />
      <node concept="nspSf" id="7VBaGntKJ6V" role="ns1xx">
        <node concept="nstbe" id="7VBaGntKJ6W" role="nspSe">
          <property role="TrG5h" value="variable" />
          <property role="nspS5" value="false" />
        </node>
        <node concept="nstbe" id="7VBaGntKJ6X" role="nspSe">
          <property role="TrG5h" value="sentence" />
          <property role="nspS5" value="false" />
        </node>
      </node>
    </node>
    <node concept="ns1x$" id="7VBaGntKJ6Y" role="ns1xc">
      <property role="TrG5h" value="Relation" />
      <node concept="nspSf" id="7VBaGntKJ6Z" role="ns1xx">
        <node concept="nssqF" id="7VBaGntKJ70" role="nspSe">
          <property role="TrG5h" value="name" />
          <property role="nspS5" value="false" />
        </node>
        <node concept="nsiOd" id="7VBaGntKJ71" role="nspSe">
          <property role="TrG5h" value="member" />
          <property role="nspS5" value="false" />
        </node>
      </node>
    </node>
    <node concept="ns1x$" id="7VBaGntKJ72" role="ns1xc">
      <property role="TrG5h" value="Object" />
      <node concept="nspSf" id="7VBaGntKJ73" role="ns1xx">
        <node concept="nssqF" id="7VBaGntKJ74" role="nspSe">
          <property role="TrG5h" value="name" />
          <property role="nspS5" value="false" />
        </node>
      </node>
    </node>
    <node concept="ns1x$" id="7VBaGntKJ75" role="ns1xc">
      <property role="TrG5h" value="Variable" />
      <node concept="nspSf" id="7VBaGntKJ76" role="ns1xx">
        <node concept="nssqF" id="7VBaGntKJ77" role="nspSe">
          <property role="TrG5h" value="name" />
          <property role="nspS5" value="false" />
        </node>
      </node>
    </node>
    <node concept="ns1x$" id="7VBaGntKJ78" role="ns1xc">
      <property role="TrG5h" value="Function" />
      <node concept="nspSf" id="7VBaGntKJ79" role="ns1xx">
        <node concept="nssqF" id="7VBaGntKJ7a" role="nspSe">
          <property role="TrG5h" value="name" />
          <property role="nspS5" value="false" />
        </node>
        <node concept="nsiOd" id="7VBaGntKJ7b" role="nspSe">
          <property role="TrG5h" value="argument" />
          <property role="nspS5" value="false" />
        </node>
      </node>
    </node>
  </node>
</model>

