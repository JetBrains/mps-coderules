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
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" implicit="true" />
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239709250944" name="jetbrains.mps.baseLanguage.structure.PrefixIncrementExpression" flags="nn" index="2$rviw" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068431790189" name="jetbrains.mps.baseLanguage.structure.Type" flags="in" index="33vP2l" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
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
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
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
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
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
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules">
      <concept id="1618328391714763069" name="jetbrains.mps.lang.coderules.structure.MacroTable" flags="ng" index="0oKg$">
        <reference id="6097203247219331496" name="extends" index="3tg4Y$" />
        <child id="1618328391714763070" name="macro" index="0oKgB" />
      </concept>
      <concept id="6928531011217258898" name="jetbrains.mps.lang.coderules.structure.LogicVariableConstraint" flags="ng" index="2aLIYG">
        <child id="6928531011217290187" name="variable" index="2aLmnP" />
      </concept>
      <concept id="6928531011218148071" name="jetbrains.mps.lang.coderules.structure.IsboundVariableConstraint" flags="ng" index="2aM9Np" />
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
      <concept id="6691972578451976398" name="jetbrains.mps.lang.coderules.structure.RuleInputSpecification" flags="ng" index="2t___k">
        <reference id="6691972578451990912" name="applicableConcept" index="2t_S0q" />
        <child id="6691972578451986151" name="input" index="2t_VXX" />
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
      <concept id="3575255234196628445" name="jetbrains.mps.lang.coderules.structure.RequireStatement" flags="ng" index="1mebxG">
        <child id="3575255234196628696" name="node" index="1mebXD" />
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
      <concept id="8908809128801951597" name="jetbrains.mps.lang.coderules.structure.MacroBodyLogicalDeclaration" flags="ng" index="3uniRu" />
      <concept id="5372587443968979218" name="jetbrains.mps.lang.coderules.structure.ExpressionConstraint" flags="ng" index="3wWvb2">
        <child id="5372587443968983820" name="expression" index="3wWo3s" />
      </concept>
      <concept id="7674753015762572646" name="jetbrains.mps.lang.coderules.structure.BodyBlock" flags="ng" index="3xSepi">
        <child id="7674753015762572647" name="body" index="3xSepj" />
      </concept>
      <concept id="1878265754077060950" name="jetbrains.mps.lang.coderules.structure.ConstraintParameterDeclaration" flags="ng" index="1zAUYm">
        <child id="6036655413802463897" name="dataType" index="3gTf24" />
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
      <concept id="7368070394767067636" name="jetbrains.mps.lang.coderules.structure.ConstraintDeclaration" flags="ng" index="3AqmO8">
        <child id="1878265754077059170" name="parameters" index="1zAUyy" />
      </concept>
      <concept id="7368070394767045637" name="jetbrains.mps.lang.coderules.structure.UserConstraint" flags="ng" index="3Aqt3T">
        <reference id="7368070394767091750" name="template" index="3AqCNq" />
        <child id="7368070394768117915" name="argument" index="3AunhB" />
      </concept>
      <concept id="1534124788579507963" name="jetbrains.mps.lang.coderules.structure.OriginSpec" flags="ng" index="3Hbl2A">
        <child id="1534124788579511329" name="origin" index="3Hbm9W" />
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
    <node concept="ns1x$" id="5jbgz$E6ihs" role="ns1xc">
      <property role="TrG5h" value="sequence" />
      <ref role="ns1xW" node="4lCLOtwq2MF" resolve="type" />
      <node concept="nspSf" id="5jbgz$E6iht" role="ns1xx">
        <node concept="nstbe" id="5jbgz$E6ihE" role="nspSe">
          <property role="TrG5h" value="parameter" />
        </node>
      </node>
    </node>
  </node>
  <node concept="AVZre" id="6$MmqWfm_Qc">
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="ConversionFunctionTypes" />
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
                    <node concept="3wWvb2" id="6jkHA5M_Vme" role="3I6s78">
                      <node concept="3clFbT" id="6jkHA5M_Vmg" role="3wWo3s" />
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
  <node concept="AVZre" id="4S1mDSNOe5f">
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="Closures" />
    <ref role="2YbDB9" to="kqnc:6qJjpCjlmVR" resolve="CheckAll" />
    <node concept="3AqmO8" id="4S1mDSNSsgi" role="8PkJo">
      <property role="TrG5h" value="inferenceVar" />
      <node concept="1zAUYm" id="4S1mDSNSskv" role="1zAUyy">
        <property role="TrG5h" value="source" />
        <node concept="3Tqbb2" id="4S1mDSNSskA" role="3gTf24" />
      </node>
      <node concept="1zAUYm" id="4S1mDSNSskn" role="1zAUyy">
        <property role="TrG5h" value="var" />
        <node concept="32pEOW" id="4S1mDSNSsks" role="3gTf24" />
      </node>
    </node>
    <node concept="3AqmO8" id="zb1Nk6ZgeG" role="8PkJo">
      <property role="TrG5h" value="recInvoke" />
      <node concept="1zAUYm" id="zb1Nk6ZguR" role="1zAUyy">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="zb1Nk6ZguW" role="3gTf24" />
      </node>
      <node concept="1zAUYm" id="zb1Nk6ZguZ" role="1zAUyy">
        <property role="TrG5h" value="type" />
        <node concept="32pEOW" id="zb1Nk6Zgv6" role="3gTf24" />
      </node>
    </node>
    <node concept="1nLNMY" id="4S1mDSNOe5g" role="1nK1Vg">
      <property role="TrG5h" value="closureLiteral" />
      <node concept="3clFbS" id="4S1mDSNOe5h" role="1nLNMH">
        <node concept="3clFbH" id="4S1mDSNOyqO" role="3cqZAp" />
        <node concept="1mebxG" id="4S1mDSNOvO0" role="3cqZAp">
          <node concept="2OqwBi" id="4S1mDSNOvWe" role="1mebXD">
            <node concept="3A2sRY" id="4S1mDSNOvOP" role="2Oq$k0">
              <ref role="3A2yKK" node="4S1mDSNOe5l" resolve="cl" />
            </node>
            <node concept="1mfA1w" id="4S1mDSNOyp5" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="4Z0pyZICXxt" role="3cqZAp" />
        <node concept="3cpWs8" id="4Z0pyZICXA_" role="3cqZAp">
          <node concept="3cpWsn" id="4Z0pyZICXAA" role="3cpWs9">
            <property role="TrG5h" value="helper" />
            <node concept="3uibUv" id="4Z0pyZICXAB" role="1tU5fm">
              <ref role="3uigEE" node="4S1mDSNUxuw" resolve="ClosureReturnsCollector" />
            </node>
            <node concept="2ShNRf" id="4Z0pyZICXD_" role="33vP2m">
              <node concept="1pGfFk" id="4Z0pyZICYOT" role="2ShVmc">
                <ref role="37wK5l" node="4S1mDSNUxMk" resolve="ClosureReturnsCollector" />
                <node concept="3A2sRY" id="4Z0pyZICYQl" role="37wK5m">
                  <ref role="3A2yKK" node="4S1mDSNOe5l" resolve="cl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4Z0pyZICXvx" role="3cqZAp">
          <node concept="3cpWsn" id="4Z0pyZICXv$" role="3cpWs9">
            <property role="TrG5h" value="exitPoints" />
            <node concept="_YKpA" id="4Z0pyZIFiw2" role="1tU5fm">
              <node concept="3Tqbb2" id="4Z0pyZIFjeL" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="zb1Nk71jcJ" role="33vP2m">
              <node concept="Tc6Ow" id="zb1Nk71kmg" role="2ShVmc">
                <node concept="3Tqbb2" id="zb1Nk71kCI" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4Z0pyZIFWwl" role="3cqZAp" />
        <node concept="3clFbJ" id="4Z0pyZICYXh" role="3cqZAp">
          <node concept="3clFbS" id="4Z0pyZICYXj" role="3clFbx">
            <node concept="3clFbH" id="4Z0pyZID3IZ" role="3cqZAp" />
            <node concept="1nLNNL" id="4Z0pyZID2HE" role="3cqZAp">
              <node concept="1nLNMm" id="4Z0pyZID2HF" role="1nLNNK">
                <node concept="3Aq93q" id="4Z0pyZID2HG" role="1nLNMb">
                  <property role="3ArMco" value="true" />
                  <node concept="3I6sU6" id="4Z0pyZID2HH" role="3Ip0Jz">
                    <node concept="3I6s7M" id="4Z0pyZID2HI" role="3I6sU7">
                      <node concept="3Aqt3T" id="4Z0pyZID2HJ" role="3I6s78">
                        <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3xSepi" id="4Z0pyZID2HK" role="3xSepv">
                  <node concept="3Aq9E8" id="4Z0pyZID2HL" role="3xSepj">
                    <node concept="3I6sU6" id="4Z0pyZID2HM" role="3Ip0Jz">
                      <node concept="3I6s7M" id="4Z0pyZID2HN" role="3I6sU7">
                        <node concept="1lHd6T" id="4Z0pyZID2HO" role="3I6s78">
                          <property role="1lHdp1" value="4jcOV4hu0n_/ERROR" />
                          <node concept="Xl_RD" id="4Z0pyZID2Il" role="1ljv2e">
                            <property role="Xl_RC" value="closure can't have both return and yield" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4Z0pyZID2L9" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="4Z0pyZIDzXC" role="3clFbw">
            <node concept="2OqwBi" id="4Z0pyZICZs3" role="3uHU7B">
              <node concept="2OqwBi" id="4Z0pyZICZ73" role="2Oq$k0">
                <node concept="37vLTw" id="4Z0pyZICYYN" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Z0pyZICXAA" resolve="helper" />
                </node>
                <node concept="liA8E" id="4Z0pyZICZd6" role="2OqNvi">
                  <ref role="37wK5l" node="4S1mDSNVpTt" resolve="getReturns" />
                </node>
              </node>
              <node concept="3GX2aA" id="4Z0pyZID38s" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="4Z0pyZID0$l" role="3uHU7w">
              <node concept="2OqwBi" id="4Z0pyZID0bH" role="2Oq$k0">
                <node concept="37vLTw" id="4Z0pyZID045" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Z0pyZICXAA" resolve="helper" />
                </node>
                <node concept="liA8E" id="4Z0pyZID0is" role="2OqNvi">
                  <ref role="37wK5l" node="4S1mDSNVwhc" resolve="getAllYields" />
                </node>
              </node>
              <node concept="3GX2aA" id="4Z0pyZID0LN" role="2OqNvi" />
            </node>
          </node>
          <node concept="3eNFk2" id="4Z0pyZID3Jk" role="3eNLev">
            <node concept="2OqwBi" id="4Z0pyZIDzoh" role="3eO9$A">
              <node concept="2OqwBi" id="4Z0pyZID3Ts" role="2Oq$k0">
                <node concept="37vLTw" id="4Z0pyZID3Mx" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Z0pyZICXAA" resolve="helper" />
                </node>
                <node concept="liA8E" id="4Z0pyZID$9f" role="2OqNvi">
                  <ref role="37wK5l" node="4S1mDSNVpTt" resolve="getReturns" />
                </node>
              </node>
              <node concept="3GX2aA" id="4Z0pyZIDz_H" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="4Z0pyZID3Jm" role="3eOfB_">
              <node concept="3clFbJ" id="4Z0pyZIEUmu" role="3cqZAp">
                <node concept="3clFbS" id="4Z0pyZIEUmw" role="3clFbx">
                  <node concept="3clFbF" id="4Z0pyZIEWev" role="3cqZAp">
                    <node concept="37vLTI" id="4Z0pyZIEWpN" role="3clFbG">
                      <node concept="2OqwBi" id="4Z0pyZIFjPx" role="37vLTx">
                        <node concept="2OqwBi" id="4Z0pyZIEWA7" role="2Oq$k0">
                          <node concept="2OqwBi" id="4Z0pyZIFjtf" role="2Oq$k0">
                            <node concept="37vLTw" id="4Z0pyZIFjmB" role="2Oq$k0">
                              <ref role="3cqZAo" node="4Z0pyZICXAA" resolve="helper" />
                            </node>
                            <node concept="liA8E" id="4Z0pyZIFjxw" role="2OqNvi">
                              <ref role="37wK5l" node="4S1mDSNVpTt" resolve="getReturns" />
                            </node>
                          </node>
                          <node concept="3QWeyG" id="4Z0pyZIEWI9" role="2OqNvi">
                            <node concept="2ShNRf" id="4Z0pyZIEWJr" role="576Qk">
                              <node concept="2HTt$P" id="4Z0pyZIEWRC" role="2ShVmc">
                                <node concept="3Tqbb2" id="4Z0pyZIEWUA" role="2HTBi0" />
                                <node concept="2OqwBi" id="4Z0pyZIEX02" role="2HTEbv">
                                  <node concept="37vLTw" id="4Z0pyZIEWVX" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4Z0pyZICXAA" resolve="helper" />
                                  </node>
                                  <node concept="liA8E" id="4Z0pyZIFc3Z" role="2OqNvi">
                                    <ref role="37wK5l" node="4Z0pyZIF6jh" resolve="getLastExpr" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="ANE8D" id="4Z0pyZIFk5Z" role="2OqNvi" />
                      </node>
                      <node concept="37vLTw" id="4Z0pyZIEWet" role="37vLTJ">
                        <ref role="3cqZAo" node="4Z0pyZICXv$" resolve="exitPoints" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4Z0pyZIEUHv" role="3clFbw">
                  <node concept="37vLTw" id="4Z0pyZIEUpv" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Z0pyZICXAA" resolve="helper" />
                  </node>
                  <node concept="liA8E" id="4Z0pyZIEUIS" role="2OqNvi">
                    <ref role="37wK5l" node="5jbgz$E5VPp" resolve="returnsFromLast" />
                  </node>
                </node>
                <node concept="9aQIb" id="4Z0pyZIFhCL" role="9aQIa">
                  <node concept="3clFbS" id="4Z0pyZIFhCM" role="9aQI4">
                    <node concept="3clFbF" id="4Z0pyZID3jc" role="3cqZAp">
                      <node concept="37vLTI" id="4Z0pyZID3u$" role="3clFbG">
                        <node concept="2OqwBi" id="4Z0pyZID3Aq" role="37vLTx">
                          <node concept="37vLTw" id="4Z0pyZID3v5" role="2Oq$k0">
                            <ref role="3cqZAo" node="4Z0pyZICXAA" resolve="helper" />
                          </node>
                          <node concept="liA8E" id="4Z0pyZID3GF" role="2OqNvi">
                            <ref role="37wK5l" node="4S1mDSNVpTt" resolve="getReturns" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4Z0pyZID3jb" role="37vLTJ">
                          <ref role="3cqZAo" node="4Z0pyZICXv$" resolve="exitPoints" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4Z0pyZID$bJ" role="3eNLev">
            <node concept="2OqwBi" id="4Z0pyZID$NV" role="3eO9$A">
              <node concept="2OqwBi" id="4Z0pyZID$y7" role="2Oq$k0">
                <node concept="37vLTw" id="4Z0pyZID$qp" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Z0pyZICXAA" resolve="helper" />
                </node>
                <node concept="liA8E" id="4Z0pyZID$$i" role="2OqNvi">
                  <ref role="37wK5l" node="4S1mDSNVwhc" resolve="getAllYields" />
                </node>
              </node>
              <node concept="3GX2aA" id="4Z0pyZID_2g" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="4Z0pyZID$bL" role="3eOfB_">
              <node concept="3clFbF" id="4Z0pyZID$gy" role="3cqZAp">
                <node concept="37vLTI" id="4Z0pyZID$gz" role="3clFbG">
                  <node concept="2OqwBi" id="4Z0pyZID$g$" role="37vLTx">
                    <node concept="37vLTw" id="4Z0pyZID$g_" role="2Oq$k0">
                      <ref role="3cqZAo" node="4Z0pyZICXAA" resolve="helper" />
                    </node>
                    <node concept="liA8E" id="4Z0pyZID$nC" role="2OqNvi">
                      <ref role="37wK5l" node="4S1mDSNVwhc" resolve="getAllYields" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4Z0pyZID$gB" role="37vLTJ">
                    <ref role="3cqZAo" node="4Z0pyZICXv$" resolve="exitPoints" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4Z0pyZIFXa0" role="3eNLev">
            <node concept="3clFbS" id="4Z0pyZIFXa1" role="3eOfB_">
              <node concept="3clFbF" id="4Z0pyZIFXqY" role="3cqZAp">
                <node concept="37vLTI" id="4Z0pyZIFY$J" role="3clFbG">
                  <node concept="37vLTw" id="4Z0pyZIFXqX" role="37vLTJ">
                    <ref role="3cqZAo" node="4Z0pyZICXv$" resolve="exitPoints" />
                  </node>
                  <node concept="2ShNRf" id="4Z0pyZIFYKx" role="37vLTx">
                    <node concept="Tc6Ow" id="4Z0pyZIFYTr" role="2ShVmc">
                      <node concept="2OqwBi" id="4Z0pyZIFZlw" role="HW$Y0">
                        <node concept="37vLTw" id="4Z0pyZIFZjy" role="2Oq$k0">
                          <ref role="3cqZAo" node="4Z0pyZICXAA" resolve="helper" />
                        </node>
                        <node concept="liA8E" id="4Z0pyZIFZnj" role="2OqNvi">
                          <ref role="37wK5l" node="4Z0pyZIF6jh" resolve="getLastExpr" />
                        </node>
                      </node>
                      <node concept="3Tqbb2" id="4Z0pyZIFZJG" role="HW$YZ" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4Z0pyZIFXmo" role="3eO9$A">
              <node concept="37vLTw" id="4Z0pyZIFXjf" role="2Oq$k0">
                <ref role="3cqZAo" node="4Z0pyZICXAA" resolve="helper" />
              </node>
              <node concept="liA8E" id="4Z0pyZIFXnL" role="2OqNvi">
                <ref role="37wK5l" node="5jbgz$E5VPp" resolve="returnsFromLast" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4Z0pyZIG0kO" role="9aQIa">
            <node concept="3clFbS" id="4Z0pyZIG0kP" role="9aQI4">
              <node concept="3SKdUt" id="4Z0pyZIG0up" role="3cqZAp">
                <node concept="1PaTwC" id="4Z0pyZIG0uq" role="3ndbpf">
                  <node concept="3oM_SD" id="4Z0pyZIG0us" role="1PaTwD">
                    <property role="3oM_SC" value="returns" />
                  </node>
                  <node concept="3oM_SD" id="4Z0pyZIG0uR" role="1PaTwD">
                    <property role="3oM_SC" value="or" />
                  </node>
                  <node concept="3oM_SD" id="4Z0pyZIG0uU" role="1PaTwD">
                    <property role="3oM_SC" value="yields" />
                  </node>
                  <node concept="3oM_SD" id="4Z0pyZIG0uY" role="1PaTwD">
                    <property role="3oM_SC" value="nothing" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="zb1Nk79lO0" role="3cqZAp">
          <node concept="3cpWsn" id="zb1Nk79lNY" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="exits" />
            <node concept="_YKpA" id="zb1Nk79m13" role="1tU5fm">
              <node concept="3Tqbb2" id="zb1Nk79m1c" role="_ZDj9" />
            </node>
            <node concept="37vLTw" id="zb1Nk79m1J" role="33vP2m">
              <ref role="3cqZAo" node="4Z0pyZICXv$" resolve="exitPoints" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4Z0pyZIFlew" role="3cqZAp" />
        <node concept="1nLNNL" id="4S1mDSNOe5D" role="3cqZAp">
          <node concept="1nLNMm" id="4S1mDSNOe5F" role="1nLNNK">
            <node concept="3Aq93q" id="4S1mDSNOmJx" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="4S1mDSNOmJy" role="3Ip0Jz">
                <node concept="3I6s7M" id="4S1mDSNOvME" role="3I6sU7">
                  <node concept="3Aqt3T" id="4S1mDSNOvMD" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="4S1mDSNOr58" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="4S1mDSNOr59" role="3Ip0Jz">
                <node concept="3IrJb3" id="4S1mDSNOmJE" role="3I6sU7">
                  <node concept="3clFbS" id="4S1mDSNOmJF" role="3IrJb0">
                    <node concept="1DcWWT" id="4S1mDSNOmJI" role="3cqZAp">
                      <node concept="3cpWsn" id="4S1mDSNOmJJ" role="1Duv9x">
                        <property role="TrG5h" value="pdecl" />
                        <node concept="3Tqbb2" id="4S1mDSNOmSp" role="1tU5fm">
                          <ref role="ehGHo" to="tpee:fz7vLUk" resolve="ParameterDeclaration" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4S1mDSNOnxQ" role="1DdaDG">
                        <node concept="3A2sRY" id="4S1mDSNOngo" role="2Oq$k0">
                          <ref role="3A2yKK" node="4S1mDSNOe5l" resolve="cl" />
                        </node>
                        <node concept="3Tsc0h" id="4S1mDSNOnL4" role="2OqNvi">
                          <ref role="3TtcxE" to="tp2c:htbW2KO" resolve="parameter" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4S1mDSNOmJL" role="2LFqv$">
                        <node concept="3Aqczg" id="4S1mDSNOqcE" role="3cqZAp">
                          <node concept="3Aqt3T" id="4S1mDSNOqcD" role="3Aqpz8">
                            <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                            <node concept="37jhX" id="4S1mDSNOqcL" role="3AunhB">
                              <node concept="37vLTw" id="4S1mDSNOqcJ" role="37jj2">
                                <ref role="3cqZAo" node="4S1mDSNOmJJ" resolve="pdecl" />
                              </node>
                            </node>
                            <node concept="a7P8L" id="4S1mDSNOqk6" role="3AunhB">
                              <ref role="a7OzE" node="4S1mDSNOe5N" resolve="ParamT" />
                              <node concept="2OqwBi" id="4S1mDSNOqzo" role="3gCZO6">
                                <node concept="37vLTw" id="4S1mDSNOqky" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4S1mDSNOmJJ" resolve="pdecl" />
                                </node>
                                <node concept="2bSWHS" id="4S1mDSNOr3o" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1Dw8fO" id="4Z0pyZIFR2q" role="3cqZAp">
                      <node concept="3clFbS" id="4Z0pyZIFR2s" role="2LFqv$">
                        <node concept="3cpWs8" id="zb1Nk797v1" role="3cqZAp">
                          <node concept="3cpWsn" id="zb1Nk797v4" role="3cpWs9">
                            <property role="TrG5h" value="exit" />
                            <node concept="3Tqbb2" id="zb1Nk797uZ" role="1tU5fm" />
                            <node concept="1y4W85" id="zb1Nk798S$" role="33vP2m">
                              <node concept="37vLTw" id="zb1Nk798Tb" role="1y58nS">
                                <ref role="3cqZAo" node="4Z0pyZIFR2t" resolve="i" />
                              </node>
                              <node concept="37vLTw" id="zb1Nk79m8u" role="1y566C">
                                <ref role="3cqZAo" node="zb1Nk79lNY" resolve="exits" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3Aqczg" id="4Z0pyZIFNXa" role="3cqZAp">
                          <node concept="3Aqt3T" id="4Z0pyZIFNXb" role="3Aqpz8">
                            <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                            <node concept="37jhX" id="4Z0pyZIFNXc" role="3AunhB">
                              <node concept="37vLTw" id="zb1Nk798U2" role="37jj2">
                                <ref role="3cqZAo" node="zb1Nk797v4" resolve="exit" />
                              </node>
                            </node>
                            <node concept="a7P8L" id="4Z0pyZIFVS0" role="3AunhB">
                              <ref role="a7OzE" node="4Z0pyZIFO6s" resolve="ExitPoints" />
                              <node concept="37vLTw" id="4Z0pyZIFVSI" role="3gCZO6">
                                <ref role="3cqZAo" node="4Z0pyZIFR2t" resolve="i" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="4Z0pyZIFR2t" role="1Duv9x">
                        <property role="TrG5h" value="i" />
                        <node concept="10Oyi0" id="4Z0pyZIFR30" role="1tU5fm" />
                        <node concept="3cmrfG" id="4Z0pyZIFR3k" role="33vP2m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="3eOVzh" id="4Z0pyZIFRSa" role="1Dwp0S">
                        <node concept="2OqwBi" id="4Z0pyZIFTtr" role="3uHU7w">
                          <node concept="37vLTw" id="zb1Nk79m3P" role="2Oq$k0">
                            <ref role="3cqZAo" node="zb1Nk79lNY" resolve="exits" />
                          </node>
                          <node concept="34oBXx" id="4Z0pyZIFUu6" role="2OqNvi" />
                        </node>
                        <node concept="37vLTw" id="4Z0pyZIFR3t" role="3uHU7B">
                          <ref role="3cqZAo" node="4Z0pyZIFR2t" resolve="i" />
                        </node>
                      </node>
                      <node concept="2$rviw" id="4Z0pyZIFUyN" role="1Dwrff">
                        <node concept="37vLTw" id="4Z0pyZIFU$k" role="2$L3a6">
                          <ref role="3cqZAo" node="4Z0pyZIFR2t" resolve="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="4S1mDSNOe5M" role="0Rg$4">
              <node concept="aZer4" id="4Z0pyZIFwbt" role="3XD1gS">
                <property role="TrG5h" value="FunT" />
              </node>
              <node concept="aZer4" id="4S1mDSNOmvb" role="3XD1gS">
                <property role="TrG5h" value="RetT" />
              </node>
              <node concept="aZer4" id="4S1mDSNOe5N" role="3XD1gS">
                <property role="TrG5h" value="ParamT" />
                <node concept="2OqwBi" id="4S1mDSNOiJu" role="3gj$pD">
                  <node concept="2OqwBi" id="4S1mDSNOey$" role="2Oq$k0">
                    <node concept="3A2sRY" id="4S1mDSNOem1" role="2Oq$k0">
                      <ref role="3A2yKK" node="4S1mDSNOe5l" resolve="cl" />
                    </node>
                    <node concept="3Tsc0h" id="4S1mDSNOeOP" role="2OqNvi">
                      <ref role="3TtcxE" to="tp2c:htbW2KO" resolve="parameter" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="4S1mDSNOmtS" role="2OqNvi" />
                </node>
              </node>
              <node concept="aZer4" id="4Z0pyZIFO6s" role="3XD1gS">
                <property role="TrG5h" value="ExitPoints" />
                <node concept="2OqwBi" id="4Z0pyZIFOZU" role="3gj$pD">
                  <node concept="37vLTw" id="zb1Nk79m2r" role="2Oq$k0">
                    <ref role="3cqZAo" node="zb1Nk79lNY" resolve="exits" />
                  </node>
                  <node concept="34oBXx" id="4Z0pyZIFQ0$" role="2OqNvi" />
                </node>
              </node>
              <node concept="32pEOW" id="4S1mDSNOelv" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="4S1mDSNOvMH" role="3xSepv">
              <node concept="3Aq9E8" id="4S1mDSNOvMI" role="3xSepj">
                <node concept="3I6sU6" id="4S1mDSNOvMJ" role="3Ip0Jz">
                  <node concept="3IrJb3" id="4Z0pyZIFwdj" role="3I6sU7">
                    <node concept="3clFbS" id="4Z0pyZIFwdk" role="3IrJb0">
                      <node concept="3clFbJ" id="4Z0pyZIFySA" role="3cqZAp">
                        <node concept="3clFbS" id="4Z0pyZIFySC" role="3clFbx">
                          <node concept="3SKdUt" id="4Z0pyZIFWs8" role="3cqZAp">
                            <node concept="1PaTwC" id="4Z0pyZIFWs9" role="3ndbpf">
                              <node concept="3oM_SD" id="4Z0pyZIFWsb" role="1PaTwD">
                                <property role="3oM_SC" value="check" />
                              </node>
                              <node concept="3oM_SD" id="4Z0pyZIFWsH" role="1PaTwD">
                                <property role="3oM_SC" value="compatibility" />
                              </node>
                              <node concept="3oM_SD" id="4Z0pyZIFWsT" role="1PaTwD">
                                <property role="3oM_SC" value="of" />
                              </node>
                              <node concept="3oM_SD" id="4Z0pyZIFWsX" role="1PaTwD">
                                <property role="3oM_SC" value="returns" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="4yZzE4kNIKL" role="3cqZAp">
                            <node concept="3clFbS" id="4yZzE4kNIKN" role="3clFbx">
                              <node concept="3SKdUt" id="4yZzE4kNJf5" role="3cqZAp">
                                <node concept="1PaTwC" id="4yZzE4kNJf6" role="3ndbpf">
                                  <node concept="3oM_SD" id="4yZzE4kNJf7" role="1PaTwD">
                                    <property role="3oM_SC" value="todo:" />
                                  </node>
                                  <node concept="3oM_SD" id="4yZzE4kNJf8" role="1PaTwD">
                                    <property role="3oM_SC" value="find" />
                                  </node>
                                  <node concept="3oM_SD" id="4yZzE4kNJf9" role="1PaTwD">
                                    <property role="3oM_SC" value="lub" />
                                  </node>
                                  <node concept="3oM_SD" id="4yZzE4kNJsu" role="1PaTwD">
                                    <property role="3oM_SC" value="or" />
                                  </node>
                                  <node concept="3oM_SD" id="4yZzE4kNJsz" role="1PaTwD">
                                    <property role="3oM_SC" value="the" />
                                  </node>
                                  <node concept="3oM_SD" id="4yZzE4kNJsD" role="1PaTwD">
                                    <property role="3oM_SC" value="most" />
                                  </node>
                                  <node concept="3oM_SD" id="4yZzE4kNJsK" role="1PaTwD">
                                    <property role="3oM_SC" value="general" />
                                  </node>
                                  <node concept="3oM_SD" id="4yZzE4kNJsS" role="1PaTwD">
                                    <property role="3oM_SC" value="type" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3Aqczg" id="4yZzE4kNJh9" role="3cqZAp">
                                <node concept="3A8Hvi" id="4yZzE4kNJha" role="3Aqpz8">
                                  <node concept="a7P8L" id="4yZzE4kNJhb" role="3A8wtg">
                                    <ref role="a7OzE" node="4S1mDSNOmvb" resolve="RetT" />
                                  </node>
                                  <node concept="a7P8L" id="4yZzE4kNJhc" role="3A8w4Q">
                                    <ref role="a7OzE" node="4Z0pyZIFO6s" resolve="ExitPoints" />
                                    <node concept="3cmrfG" id="4yZzE4kNJhd" role="3gCZO6">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4yZzE4kNIT2" role="3clFbw">
                              <node concept="37vLTw" id="4yZzE4kNIM7" role="2Oq$k0">
                                <ref role="3cqZAo" node="4Z0pyZICXAA" resolve="helper" />
                              </node>
                              <node concept="liA8E" id="4yZzE4kNIYG" role="2OqNvi">
                                <ref role="37wK5l" node="4yZzE4kNykJ" resolve="allNonVoid" />
                              </node>
                            </node>
                            <node concept="9aQIb" id="4yZzE4kNJeI" role="9aQIa">
                              <node concept="3clFbS" id="4yZzE4kNJeJ" role="9aQI4">
                                <node concept="3Aqczg" id="4yZzE4kNJeb" role="3cqZAp">
                                  <node concept="3A8Hvi" id="4yZzE4kNJec" role="3Aqpz8">
                                    <node concept="a7P8L" id="4yZzE4kNJed" role="3A8wtg">
                                      <ref role="a7OzE" node="4S1mDSNOmvb" resolve="RetT" />
                                    </node>
                                    <node concept="ns1u0" id="4yZzE4kNJjy" role="3A8w4Q">
                                      <ref role="ns1xF" to="kqnc:JOGAOsVt3a" resolve="_void_" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="4yZzE4kNoDr" role="3cqZAp" />
                          <node concept="1Dw8fO" id="4Z0pyZIFW4I" role="3cqZAp">
                            <node concept="3clFbS" id="4Z0pyZIFW4J" role="2LFqv$">
                              <node concept="3Hbl2A" id="4yZzE4kMyhM" role="3cqZAp">
                                <node concept="3clFbS" id="4yZzE4kMyhO" role="9aQI4">
                                  <node concept="3Aqczg" id="4Z0pyZIFWbr" role="3cqZAp">
                                    <node concept="3Aqt3T" id="4Z0pyZIFWbq" role="3Aqpz8">
                                      <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="convertsTo" />
                                      <node concept="a7P8L" id="4Z0pyZIFWm0" role="3AunhB">
                                        <ref role="a7OzE" node="4Z0pyZIFO6s" resolve="ExitPoints" />
                                        <node concept="37vLTw" id="4Z0pyZIFWmz" role="3gCZO6">
                                          <ref role="3cqZAo" node="4Z0pyZIFW4S" resolve="i" />
                                        </node>
                                      </node>
                                      <node concept="a7P8L" id="4yZzE4kNJnm" role="3AunhB">
                                        <ref role="a7OzE" node="4S1mDSNOmvb" resolve="RetT" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="1y4W85" id="4yZzE4kMzj$" role="3Hbm9W">
                                  <node concept="37vLTw" id="4yZzE4kMzka" role="1y58nS">
                                    <ref role="3cqZAo" node="4Z0pyZIFW4S" resolve="i" />
                                  </node>
                                  <node concept="37vLTw" id="4yZzE4kMyi0" role="1y566C">
                                    <ref role="3cqZAo" node="zb1Nk79lNY" resolve="exits" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWsn" id="4Z0pyZIFW4S" role="1Duv9x">
                              <property role="TrG5h" value="i" />
                              <node concept="10Oyi0" id="4Z0pyZIFW4T" role="1tU5fm" />
                              <node concept="3cmrfG" id="4Z0pyZIFW4U" role="33vP2m">
                                <property role="3cmrfH" value="0" />
                              </node>
                            </node>
                            <node concept="3eOVzh" id="4Z0pyZIFW4V" role="1Dwp0S">
                              <node concept="2OqwBi" id="4Z0pyZIFW4W" role="3uHU7w">
                                <node concept="37vLTw" id="zb1Nk79m99" role="2Oq$k0">
                                  <ref role="3cqZAo" node="zb1Nk79lNY" resolve="exits" />
                                </node>
                                <node concept="34oBXx" id="4Z0pyZIFW4Y" role="2OqNvi" />
                              </node>
                              <node concept="37vLTw" id="4Z0pyZIFW4Z" role="3uHU7B">
                                <ref role="3cqZAo" node="4Z0pyZIFW4S" resolve="i" />
                              </node>
                            </node>
                            <node concept="2$rviw" id="4Z0pyZIFW50" role="1Dwrff">
                              <node concept="37vLTw" id="4Z0pyZIFW51" role="2$L3a6">
                                <ref role="3cqZAo" node="4Z0pyZIFW4S" resolve="i" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4Z0pyZIFzVu" role="3clFbw">
                          <node concept="37vLTw" id="zb1Nk79m24" role="2Oq$k0">
                            <ref role="3cqZAo" node="zb1Nk79lNY" resolve="exits" />
                          </node>
                          <node concept="3GX2aA" id="4Z0pyZIF$W5" role="2OqNvi" />
                        </node>
                        <node concept="9aQIb" id="4Z0pyZIF$X1" role="9aQIa">
                          <node concept="3clFbS" id="4Z0pyZIF$X2" role="9aQI4">
                            <node concept="3Aqczg" id="4Z0pyZIF$Xp" role="3cqZAp">
                              <node concept="3A8Hvi" id="4Z0pyZIF$Xq" role="3Aqpz8">
                                <node concept="a7P8L" id="4Z0pyZIF$YY" role="3A8wtg">
                                  <ref role="a7OzE" node="4S1mDSNOmvb" resolve="RetT" />
                                </node>
                                <node concept="ns1u0" id="4Z0pyZIF$ZR" role="3A8w4Q">
                                  <ref role="ns1xF" to="kqnc:JOGAOsVt3a" resolve="_void_" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="4Z0pyZIFWuf" role="3cqZAp" />
                      <node concept="3Aqczg" id="4Z0pyZIF$Y3" role="3cqZAp">
                        <node concept="3A8Hvi" id="4Z0pyZIF$XX" role="3Aqpz8">
                          <node concept="a7P8L" id="4Z0pyZIF$Yt" role="3A8wtg">
                            <ref role="a7OzE" node="4Z0pyZIFwbt" resolve="FunT" />
                          </node>
                          <node concept="ns1u0" id="4Z0pyZIF$Y$" role="3A8w4Q">
                            <ref role="ns1xF" node="6$MmqWflYd6" resolve="function" />
                            <node concept="nsMwS" id="4Z0pyZIF$YA" role="ns1xD">
                              <ref role="nsMwP" node="6$MmqWflYdw" resolve="params" />
                              <node concept="1nq8_$" id="4Z0pyZIFWu2" role="nsMwV">
                                <node concept="a7P8L" id="4Z0pyZIFWu1" role="1nq8_t">
                                  <ref role="a7OzE" node="4S1mDSNOe5N" resolve="ParamT" />
                                </node>
                              </node>
                            </node>
                            <node concept="nsMwS" id="4Z0pyZIF$YE" role="ns1xD">
                              <ref role="nsMwP" node="6$MmqWflYdg" resolve="result" />
                              <node concept="1nq8_$" id="4Z0pyZIF$YL" role="nsMwV">
                                <node concept="a7P8L" id="4Z0pyZIF$YK" role="1nq8_t">
                                  <ref role="a7OzE" node="4S1mDSNOmvb" resolve="RetT" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Aqczg" id="4Z0pyZIFwdl" role="3cqZAp">
                        <node concept="3Aqt3T" id="4S1mDSNOvMN" role="3Aqpz8">
                          <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                          <node concept="37jhX" id="4S1mDSNOvMV" role="3AunhB">
                            <node concept="3A2sRY" id="4S1mDSNOvMT" role="37jj2">
                              <ref role="3A2yKK" node="4S1mDSNOe5l" resolve="cl" />
                            </node>
                          </node>
                          <node concept="a7P8L" id="4Z0pyZIFyRQ" role="3AunhB">
                            <ref role="a7OzE" node="4Z0pyZIFwbt" resolve="FunT" />
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
        <node concept="3clFbH" id="4Z0pyZIFov8" role="3cqZAp" />
      </node>
      <node concept="2t___k" id="4S1mDSNOe5k" role="1nLNMg">
        <ref role="2t_S0q" to="tp2c:htbVj4_" resolve="ClosureLiteral" />
        <node concept="3A20r5" id="4S1mDSNOe5l" role="2t_VXX">
          <property role="TrG5h" value="cl" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="5jbgz$E6gEI" role="1nK1Vg">
      <property role="TrG5h" value="yieldStmt" />
      <node concept="3clFbS" id="5jbgz$E6gEJ" role="1nLNMH">
        <node concept="1nLNNL" id="5jbgz$E6gUE" role="3cqZAp">
          <node concept="1nLNMm" id="5jbgz$E6gUF" role="1nLNNK">
            <node concept="3Aq93q" id="5jbgz$E6gVr" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="5jbgz$E6gVs" role="3Ip0Jz">
                <node concept="3I6s7M" id="5jbgz$E6gVw" role="3I6sU7">
                  <node concept="3Aqt3T" id="5jbgz$E6gWn" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="5jbgz$E6gWu" role="3AunhB">
                      <node concept="2OqwBi" id="5jbgz$E6h8z" role="37jj2">
                        <node concept="3A2sRY" id="5jbgz$E6gWs" role="2Oq$k0">
                          <ref role="3A2yKK" node="5jbgz$E6gUr" resolve="yld" />
                        </node>
                        <node concept="3TrEf2" id="5jbgz$E6hla" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp2c:hun6tkl" resolve="expression" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="5jbgz$E6ihh" role="3AunhB">
                      <ref role="a7OzE" node="5jbgz$E6gUK" resolve="YieldT" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="5jbgz$E6gUJ" role="0Rg$4">
              <node concept="aZer4" id="5jbgz$E6gUK" role="3XD1gS">
                <property role="TrG5h" value="YieldT" />
              </node>
              <node concept="32pEOW" id="5jbgz$E6gUW" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="5jbgz$E6gVR" role="3xSepv">
              <node concept="3Aq9E8" id="5jbgz$E6gVS" role="3xSepj">
                <node concept="3I6sU6" id="5jbgz$E6gVT" role="3Ip0Jz">
                  <node concept="3I6s7M" id="5jbgz$E6gVY" role="3I6sU7">
                    <node concept="3Aqt3T" id="5jbgz$E6gVX" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="5jbgz$E6gW5" role="3AunhB">
                        <node concept="3A2sRY" id="5jbgz$E6gW3" role="37jj2">
                          <ref role="3A2yKK" node="5jbgz$E6gUr" resolve="yld" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="5jbgz$E6ihH" role="3AunhB">
                        <ref role="ns1xF" node="5jbgz$E6ihs" resolve="sequence" />
                        <node concept="nsMwS" id="5jbgz$E6ihL" role="ns1xD">
                          <ref role="nsMwP" node="5jbgz$E6ihE" resolve="parameter" />
                          <node concept="1nq8_$" id="5jbgz$E6ihQ" role="nsMwV">
                            <node concept="a7P8L" id="5jbgz$E6ihP" role="1nq8_t">
                              <ref role="a7OzE" node="5jbgz$E6gUK" resolve="YieldT" />
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
      <node concept="2t___k" id="5jbgz$E6gUq" role="1nLNMg">
        <ref role="2t_S0q" to="tp2c:hun63U2" resolve="YieldStatement" />
        <node concept="3A20r5" id="5jbgz$E6gUr" role="2t_VXX">
          <property role="TrG5h" value="yld" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="5jbgz$E6io5" role="1nK1Vg">
      <property role="TrG5h" value="yieldAllStmt" />
      <node concept="3clFbS" id="5jbgz$E6io6" role="1nLNMH">
        <node concept="1nLNNL" id="5jbgz$E6io7" role="3cqZAp">
          <node concept="1nLNMm" id="5jbgz$E6io8" role="1nLNNK">
            <node concept="3xSepi" id="5jbgz$E6kO4" role="3xSepv">
              <node concept="3Aq9E8" id="5jbgz$E6kO5" role="3xSepj">
                <node concept="3I6sU6" id="5jbgz$E6kO6" role="3Ip0Jz">
                  <node concept="3I6s7M" id="5jbgz$E6kVQ" role="3I6sU7">
                    <node concept="3Aqt3T" id="5jbgz$E6kVP" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="convertsTo" />
                      <node concept="a7P8L" id="5jbgz$E6kVV" role="3AunhB">
                        <ref role="a7OzE" node="5jbgz$E6ioj" resolve="YieldAllT" />
                      </node>
                      <node concept="ns1u0" id="5jbgz$E6kW5" role="3AunhB">
                        <ref role="ns1xF" to="kqnc:JOGAOsVt2o" resolve="array" />
                        <node concept="nsMwS" id="5jbgz$E6kWu" role="ns1xD">
                          <ref role="nsMwP" to="kqnc:39Sam6Zio_N" resolve="parameter" />
                          <node concept="1nq8_$" id="5jbgz$E6kWz" role="nsMwV">
                            <node concept="a7P8L" id="5jbgz$E6kWy" role="1nq8_t">
                              <ref role="a7OzE" node="5jbgz$E6j5t" resolve="Elem" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3I6s7M" id="5jbgz$E6kWg" role="3I6sU7">
                    <node concept="3Aqt3T" id="5jbgz$E6kWe" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="5jbgz$E6kZz" role="3AunhB">
                        <node concept="3A2sRY" id="5jbgz$E6kZx" role="37jj2">
                          <ref role="3A2yKK" node="5jbgz$E6iox" resolve="yldAll" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="5jbgz$E6rv8" role="3AunhB">
                        <ref role="ns1xF" node="5jbgz$E6ihs" resolve="sequence" />
                        <node concept="nsMwS" id="5jbgz$E6rv9" role="ns1xD">
                          <ref role="nsMwP" node="5jbgz$E6ihE" resolve="parameter" />
                          <node concept="1nq8_$" id="5jbgz$E6rva" role="nsMwV">
                            <node concept="a7P8L" id="5jbgz$E6rvb" role="1nq8_t">
                              <ref role="a7OzE" node="5jbgz$E6j5t" resolve="Elem" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="5jbgz$E6io9" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="5jbgz$E6ioa" role="3Ip0Jz">
                <node concept="3I6s7M" id="5jbgz$E6iob" role="3I6sU7">
                  <node concept="3Aqt3T" id="5jbgz$E6ioc" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="5jbgz$E6iod" role="3AunhB">
                      <node concept="2OqwBi" id="5jbgz$E6ioe" role="37jj2">
                        <node concept="3A2sRY" id="5jbgz$E6iof" role="2Oq$k0">
                          <ref role="3A2yKK" node="5jbgz$E6iox" resolve="yldAll" />
                        </node>
                        <node concept="3TrEf2" id="5jbgz$E6iWU" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp2c:hS_Z9Vh" resolve="expression" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="5jbgz$E6ioh" role="3AunhB">
                      <ref role="a7OzE" node="5jbgz$E6ioj" resolve="YieldAllT" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="5jbgz$E6ioi" role="0Rg$4">
              <node concept="aZer4" id="5jbgz$E6ioj" role="3XD1gS">
                <property role="TrG5h" value="YieldAllT" />
              </node>
              <node concept="aZer4" id="5jbgz$E6j5t" role="3XD1gS">
                <property role="TrG5h" value="Elem" />
              </node>
              <node concept="32pEOW" id="5jbgz$E6iok" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="5jbgz$E6iol" role="3xSepv">
              <node concept="3Aq9E8" id="5jbgz$E6iom" role="3xSepj">
                <node concept="3I6sU6" id="5jbgz$E6ion" role="3Ip0Jz">
                  <node concept="3I6s7M" id="5jbgz$E6j3L" role="3I6sU7">
                    <node concept="3Aqt3T" id="5jbgz$E6j3J" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="convertsTo" />
                      <node concept="a7P8L" id="5jbgz$E6j5a" role="3AunhB">
                        <ref role="a7OzE" node="5jbgz$E6ioj" resolve="YieldAllT" />
                      </node>
                      <node concept="ns1u0" id="5jbgz$E6ios" role="3AunhB">
                        <ref role="ns1xF" node="5jbgz$E6ihs" resolve="sequence" />
                        <node concept="nsMwS" id="5jbgz$E6kWK" role="ns1xD">
                          <ref role="nsMwP" node="5jbgz$E6ihE" resolve="parameter" />
                          <node concept="1nq8_$" id="5jbgz$E6kWP" role="nsMwV">
                            <node concept="a7P8L" id="5jbgz$E6kWO" role="1nq8_t">
                              <ref role="a7OzE" node="5jbgz$E6j5t" resolve="Elem" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3I6s7M" id="5jbgz$E6ioo" role="3I6sU7">
                    <node concept="3Aqt3T" id="5jbgz$E6iop" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="5jbgz$E6ioq" role="3AunhB">
                        <node concept="3A2sRY" id="5jbgz$E6ior" role="37jj2">
                          <ref role="3A2yKK" node="5jbgz$E6iox" resolve="yldAll" />
                        </node>
                      </node>
                      <node concept="ns1u0" id="5jbgz$E6rvA" role="3AunhB">
                        <ref role="ns1xF" node="5jbgz$E6ihs" resolve="sequence" />
                        <node concept="nsMwS" id="5jbgz$E6rvB" role="ns1xD">
                          <ref role="nsMwP" node="5jbgz$E6ihE" resolve="parameter" />
                          <node concept="1nq8_$" id="5jbgz$E6rvC" role="nsMwV">
                            <node concept="a7P8L" id="5jbgz$E6rvD" role="1nq8_t">
                              <ref role="a7OzE" node="5jbgz$E6j5t" resolve="Elem" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3xSepi" id="5jbgz$E6r_I" role="3xSepv">
              <node concept="3Aq9E8" id="5jbgz$E6r_J" role="3xSepj">
                <node concept="3I6sU6" id="5jbgz$E6r_K" role="3Ip0Jz">
                  <node concept="3I6s7M" id="5jbgz$E6rD1" role="3I6sU7">
                    <node concept="1lHd6T" id="5jbgz$E6rD0" role="3I6s78">
                      <property role="1lHdp1" value="4jcOV4hu0n_/ERROR" />
                      <node concept="Xl_RD" id="5jbgz$E6rD4" role="1ljv2e">
                        <property role="Xl_RC" value="sequence expected" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="5jbgz$E6iow" role="1nLNMg">
        <ref role="2t_S0q" to="tp2c:hS_Z6Lz" resolve="YieldAllStatement" />
        <node concept="3A20r5" id="5jbgz$E6iox" role="2t_VXX">
          <property role="TrG5h" value="yldAll" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="4S1mDSNQCdp" role="1nK1Vg">
      <property role="TrG5h" value="unboundClosureParam" />
      <node concept="3clFbS" id="4S1mDSNQCdq" role="1nLNMH">
        <node concept="1nLNNL" id="4S1mDSNQCn1" role="3cqZAp">
          <node concept="1nLNMm" id="4S1mDSNQCn3" role="1nLNNK">
            <node concept="3Aq93q" id="4S1mDSNQCnv" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="4S1mDSNQCnw" role="3Ip0Jz">
                <node concept="3I6s7M" id="4S1mDSNQCn$" role="3I6sU7">
                  <node concept="3Aqt3T" id="4S1mDSNQCoc" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="4S1mDSNQCn8" role="0Rg$4">
              <node concept="aZer4" id="4S1mDSNQCn9" role="3XD1gS">
                <property role="TrG5h" value="FreshVar" />
              </node>
              <node concept="32pEOW" id="4S1mDSNQCnl" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="4S1mDSNQCof" role="3xSepv">
              <node concept="3Aq9E8" id="4S1mDSNQCog" role="3xSepj">
                <node concept="3I6sU6" id="4S1mDSNQCoh" role="3Ip0Jz">
                  <node concept="3I6s7M" id="4S1mDSNQCom" role="3I6sU7">
                    <node concept="3Aqt3T" id="4S1mDSNQCol" role="3I6s78">
                      <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                      <node concept="37jhX" id="4S1mDSNQCot" role="3AunhB">
                        <node concept="3A2sRY" id="4S1mDSNQCor" role="37jj2">
                          <ref role="3A2yKK" node="4S1mDSNQCmH" resolve="it" />
                        </node>
                      </node>
                      <node concept="a7P8L" id="4S1mDSNQCoH" role="3AunhB">
                        <ref role="a7OzE" node="4S1mDSNQCn9" resolve="FreshVar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="4S1mDSNQCmG" role="1nLNMg">
        <ref role="2t_S0q" to="tp2c:hwBqR26" resolve="UnboundClosureParameterDeclaration" />
        <node concept="3A20r5" id="4S1mDSNQCmH" role="2t_VXX">
          <property role="TrG5h" value="it" />
        </node>
      </node>
    </node>
    <node concept="1X3_iC" id="zb1Nk6YYkJ" role="lGtFl">
      <property role="3V$3am" value="template" />
      <property role="3V$3ak" value="c4803b19-6d89-4a3b-bf82-390769514add/8335224865066015764/3575255234175157601" />
      <node concept="1nLNMY" id="4Z0pyZIG0v6" role="8Wnug">
        <property role="TrG5h" value="inferenceVar_discharge" />
        <node concept="3clFbS" id="4Z0pyZIG0v7" role="1nLNMH">
          <node concept="1nLNNL" id="4Z0pyZIG0Th" role="3cqZAp">
            <node concept="1nLNMm" id="4Z0pyZIG0Ti" role="1nLNNK">
              <node concept="3Aq93q" id="4Z0pyZIG0U$" role="1nLNMb">
                <node concept="3I6sU6" id="4Z0pyZIG0U_" role="3Ip0Jz">
                  <node concept="3I6s7M" id="4Z0pyZIG0Vl" role="3I6sU7">
                    <node concept="3Aqt3T" id="4Z0pyZIG0Vk" role="3I6s78">
                      <ref role="3AqCNq" node="4S1mDSNSsgi" resolve="inferenceVar" />
                      <node concept="a7P8L" id="4Z0pyZIG0Vs" role="3AunhB">
                        <ref role="a7OzE" node="4Z0pyZIG0TQ" resolve="Target" />
                      </node>
                      <node concept="a7P8L" id="4Z0pyZIG0Xf" role="3AunhB">
                        <ref role="a7OzE" node="4Z0pyZIG0To" resolve="Var" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3NuqgR" id="4Z0pyZIG0Tn" role="0Rg$4">
                <node concept="aZer4" id="4Z0pyZIG0To" role="3XD1gS">
                  <property role="TrG5h" value="Var" />
                </node>
                <node concept="32pEOW" id="4Z0pyZIG0T$" role="3vLBG7" />
              </node>
              <node concept="3NuqgR" id="4Z0pyZIG0TP" role="0Rg$4">
                <node concept="aZer4" id="4Z0pyZIG0TQ" role="3XD1gS">
                  <property role="TrG5h" value="Target" />
                </node>
                <node concept="3Tqbb2" id="4Z0pyZIG0U5" role="3vLBG7" />
              </node>
              <node concept="3Aq9_M" id="4Z0pyZIG0ZP" role="1nLNMa">
                <node concept="3I6sU6" id="4Z0pyZIG0ZQ" role="3Ip0Jz">
                  <node concept="3I6s7M" id="4Z0pyZIG0ZU" role="3I6sU7">
                    <node concept="2aM9Np" id="4Z0pyZIG0ZT" role="3I6s78">
                      <node concept="a7P8L" id="4Z0pyZIG0ZZ" role="2aLmnP">
                        <ref role="a7OzE" node="4Z0pyZIG0To" resolve="Var" />
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
    <node concept="1nLNMY" id="4S1mDSNPDSl" role="1nK1Vg">
      <property role="TrG5h" value="invokeExpr" />
      <node concept="3clFbS" id="4S1mDSNPDSm" role="1nLNMH">
        <node concept="3clFbH" id="4S1mDSNQ4Pc" role="3cqZAp" />
        <node concept="3SKdUt" id="4Z0pyZICXqt" role="3cqZAp">
          <node concept="1PaTwC" id="4Z0pyZICXs8" role="3ndbpf">
            <node concept="3oM_SD" id="4Z0pyZICXqw" role="1PaTwD">
              <property role="3oM_SC" value="todo:" />
            </node>
            <node concept="3oM_SD" id="4Z0pyZICXs0" role="1PaTwD">
              <property role="3oM_SC" value="recursive" />
            </node>
            <node concept="3oM_SD" id="4Z0pyZICXsf" role="1PaTwD">
              <property role="3oM_SC" value="call" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4Z0pyZICXsn" role="3cqZAp" />
        <node concept="3cpWs8" id="4S1mDSNQ4DN" role="3cqZAp">
          <node concept="3cpWsn" id="4S1mDSNQ4DO" role="3cpWs9">
            <property role="TrG5h" value="args" />
            <node concept="2I9FWS" id="4S1mDSNQ4DP" role="1tU5fm">
              <ref role="2I9WkF" to="tpee:fz3vP1J" resolve="Expression" />
            </node>
            <node concept="2OqwBi" id="4S1mDSNQ4DQ" role="33vP2m">
              <node concept="3A2sRY" id="4S1mDSNQ4DR" role="2Oq$k0">
                <ref role="3A2yKK" node="4S1mDSNPDU5" resolve="inv" />
              </node>
              <node concept="3Tsc0h" id="4S1mDSNQ4DS" role="2OqNvi">
                <ref role="3TtcxE" to="tp2c:htkn_zo" resolve="parameter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="htkotF5" role="3cqZAp">
          <node concept="3cpWsn" id="htkotF6" role="3cpWs9">
            <property role="TrG5h" value="cl" />
            <property role="3TUv4t" value="true" />
            <node concept="3Tqbb2" id="htkotF7" role="1tU5fm" />
            <node concept="2OqwBi" id="hxx$VLb" role="33vP2m">
              <node concept="2Xjw5R" id="htkotFa" role="2OqNvi">
                <node concept="1xMEDy" id="htkotFb" role="1xVPHs">
                  <node concept="chp4Y" id="hA2lvyc" role="ri$Ld">
                    <ref role="cht4Q" to="tp2c:htbVj4_" resolve="ClosureLiteral" />
                  </node>
                </node>
              </node>
              <node concept="3A2sRY" id="4S1mDSNPK4l" role="2Oq$k0">
                <ref role="3A2yKK" node="4S1mDSNPDU5" resolve="inv" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4S1mDSNPK6_" role="3cqZAp">
          <node concept="3clFbS" id="4S1mDSNPK6B" role="3clFbx">
            <node concept="3clFbH" id="4Z0pyZICXu6" role="3cqZAp" />
            <node concept="1nLNNL" id="4S1mDSNPKpT" role="3cqZAp">
              <node concept="1nLNMm" id="4S1mDSNPKpV" role="1nLNNK">
                <node concept="3Aq93q" id="4S1mDSNPKpZ" role="1nLNMb">
                  <property role="3ArMco" value="true" />
                  <node concept="3I6sU6" id="4S1mDSNPKq0" role="3Ip0Jz">
                    <node concept="3I6s7M" id="4S1mDSNPKq4" role="3I6sU7">
                      <node concept="3Aqt3T" id="4S1mDSNPKq3" role="3I6s78">
                        <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3xSepi" id="4S1mDSNPKql" role="3xSepv">
                  <node concept="3Aq9E8" id="4S1mDSNPKqm" role="3xSepj">
                    <node concept="3I6sU6" id="4S1mDSNPKqn" role="3Ip0Jz">
                      <node concept="3I6s7M" id="4S1mDSNPKqs" role="3I6sU7">
                        <node concept="1lHd6T" id="4S1mDSNPKqr" role="3I6s78">
                          <property role="1lHdp1" value="4jcOV4hu0n_/ERROR" />
                          <node concept="Xl_RD" id="4S1mDSNPKqv" role="1ljv2e">
                            <property role="Xl_RC" value="must be within closure" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4Z0pyZICXtS" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="4S1mDSNPKgM" role="3clFbw">
            <node concept="37vLTw" id="4S1mDSNPK8F" role="2Oq$k0">
              <ref role="3cqZAo" node="htkotF6" resolve="cl" />
            </node>
            <node concept="3w_OXm" id="4S1mDSNPKmr" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="4S1mDSNPKr6" role="9aQIa">
            <node concept="3clFbS" id="4S1mDSNPKr7" role="9aQI4">
              <node concept="3clFbH" id="zb1Nk6ZbCd" role="3cqZAp" />
              <node concept="3SKdUt" id="zb1Nk6Zd5w" role="3cqZAp">
                <node concept="1PaTwC" id="zb1Nk6Zd5x" role="3ndbpf">
                  <node concept="3oM_SD" id="zb1Nk6Zd5z" role="1PaTwD">
                    <property role="3oM_SC" value="break" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zgbn" role="1PaTwD">
                    <property role="3oM_SC" value="recursive" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zgb$" role="1PaTwD">
                    <property role="3oM_SC" value="type" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6ZgbM" role="1PaTwD">
                    <property role="3oM_SC" value="dependency:" />
                  </node>
                </node>
                <node concept="1PaTwC" id="zb1Nk6Zgc2" role="3ndbpf">
                  <node concept="3oM_SD" id="zb1Nk6Zgc1" role="1PaTwD">
                    <property role="3oM_SC" value="type" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zgco" role="1PaTwD">
                    <property role="3oM_SC" value="of" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zgc_" role="1PaTwD">
                    <property role="3oM_SC" value="invoke" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6ZgcN" role="1PaTwD">
                    <property role="3oM_SC" value="can" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zgd2" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zgdi" role="1PaTwD">
                    <property role="3oM_SC" value="needed" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zgdz" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zd6M" role="1PaTwD">
                    <property role="3oM_SC" value="build" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zd6P" role="1PaTwD">
                    <property role="3oM_SC" value="closure" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zd6T" role="1PaTwD">
                    <property role="3oM_SC" value="type" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zd7b" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="1nLNNL" id="zb1Nk6ZbE0" role="3cqZAp">
                <node concept="1nLNMm" id="zb1Nk6ZbE2" role="1nLNNK">
                  <node concept="3Aq93q" id="zb1Nk6ZbFF" role="1nLNMb">
                    <property role="3ArMco" value="true" />
                    <node concept="3I6sU6" id="zb1Nk6ZbFG" role="3Ip0Jz">
                      <node concept="3I6s7M" id="zb1Nk6ZbFK" role="3I6sU7">
                        <node concept="3Aqt3T" id="zb1Nk6ZbFJ" role="3I6s78">
                          <ref role="3AqCNq" to="kqnc:34$A1MfabR$" resolve="checkAll" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3NuqgR" id="zb1Nk6ZbEZ" role="0Rg$4">
                    <node concept="aZer4" id="zb1Nk6ZbF0" role="3XD1gS">
                      <property role="TrG5h" value="UnboundRetT" />
                    </node>
                    <node concept="32pEOW" id="zb1Nk6ZbFc" role="3vLBG7" />
                  </node>
                  <node concept="3xSepi" id="zb1Nk6ZbFN" role="3xSepv">
                    <node concept="3Aq9E8" id="zb1Nk6ZbFO" role="3xSepj">
                      <node concept="3I6sU6" id="zb1Nk6ZbFP" role="3Ip0Jz">
                        <node concept="3I6s7M" id="zb1Nk6ZbFU" role="3I6sU7">
                          <node concept="3Aqt3T" id="zb1Nk6ZbFT" role="3I6s78">
                            <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                            <node concept="37jhX" id="zb1Nk6ZbG1" role="3AunhB">
                              <node concept="3A2sRY" id="zb1Nk6ZbFZ" role="37jj2">
                                <ref role="3A2yKK" node="4S1mDSNPDU5" resolve="inv" />
                              </node>
                            </node>
                            <node concept="a7P8L" id="zb1Nk6ZbGo" role="3AunhB">
                              <ref role="a7OzE" node="zb1Nk6ZbF0" resolve="UnboundRetT" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="4S1mDSNQbVU" role="3cqZAp" />
              <node concept="3SKdUt" id="zb1Nk6Zg3r" role="3cqZAp">
                <node concept="1PaTwC" id="zb1Nk6Zg8j" role="3ndbpf">
                  <node concept="3oM_SD" id="zb1Nk6Zg7C" role="1PaTwD">
                    <property role="3oM_SC" value="when" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zg7F" role="1PaTwD">
                    <property role="3oM_SC" value="closure" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zg7J" role="1PaTwD">
                    <property role="3oM_SC" value="type" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zg7O" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zg7U" role="1PaTwD">
                    <property role="3oM_SC" value="already" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zg81" role="1PaTwD">
                    <property role="3oM_SC" value="available" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zgal" role="1PaTwD">
                    <property role="3oM_SC" value="but" />
                  </node>
                </node>
                <node concept="1PaTwC" id="zb1Nk6Zga$" role="3ndbpf">
                  <node concept="3oM_SD" id="zb1Nk6Zgaz" role="1PaTwD">
                    <property role="3oM_SC" value="there're" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zg8E" role="1PaTwD">
                    <property role="3oM_SC" value="free" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zg8P" role="1PaTwD">
                    <property role="3oM_SC" value="variables" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zg8U" role="1PaTwD">
                    <property role="3oM_SC" value="--" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zg90" role="1PaTwD">
                    <property role="3oM_SC" value="not" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zg97" role="1PaTwD">
                    <property role="3oM_SC" value="enough" />
                  </node>
                  <node concept="3oM_SD" id="zb1Nk6Zg9f" role="1PaTwD">
                    <property role="3oM_SC" value="information" />
                  </node>
                </node>
              </node>
              <node concept="1nLNNL" id="zb1Nk6Zdcg" role="3cqZAp">
                <node concept="1nLNMm" id="zb1Nk6Zdch" role="1nLNNK">
                  <node concept="3Aq93q" id="zb1Nk6Zdci" role="1nLNMb">
                    <property role="3ArMco" value="true" />
                    <node concept="3I6sU6" id="zb1Nk6Zdcj" role="3Ip0Jz">
                      <node concept="3I6s7M" id="zb1Nk6Zdck" role="3I6sU7">
                        <node concept="3Aqt3T" id="zb1Nk6Zdgv" role="3I6s78">
                          <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                          <node concept="37jhX" id="zb1Nk6ZdgA" role="3AunhB">
                            <node concept="3A2sRY" id="zb1Nk6Zdg$" role="37jj2">
                              <ref role="3A2yKK" node="4S1mDSNPDU5" resolve="inv" />
                            </node>
                          </node>
                          <node concept="a7P8L" id="zb1Nk6ZdgQ" role="3AunhB">
                            <ref role="a7OzE" node="zb1Nk6Zdcn" resolve="InvokeRetT" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3Aq93q" id="zb1Nk6ZdgZ" role="1nLNMb">
                    <property role="3ArMco" value="true" />
                    <node concept="3I6sU6" id="zb1Nk6Zdh0" role="3Ip0Jz">
                      <node concept="3I6s7M" id="zb1Nk6Zdhb" role="3I6sU7">
                        <node concept="3Aqt3T" id="zb1Nk6Zdha" role="3I6s78">
                          <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                          <node concept="37jhX" id="zb1Nk6Zdhi" role="3AunhB">
                            <node concept="37vLTw" id="zb1Nk6ZdiX" role="37jj2">
                              <ref role="3cqZAo" node="htkotF6" resolve="cl" />
                            </node>
                          </node>
                          <node concept="1HFMs5" id="zb1Nk6ZeDv" role="3AunhB">
                            <node concept="a7P8L" id="zb1Nk6ZdiH" role="1uarlU">
                              <ref role="a7OzE" node="zb1Nk6Zdhy" resolve="FunT" />
                            </node>
                            <node concept="ns1u0" id="zb1Nk6ZeDO" role="1uarlW">
                              <ref role="ns1xF" node="6$MmqWflYd6" resolve="function" />
                              <node concept="nsMwS" id="zb1Nk6ZeE2" role="ns1xD">
                                <ref role="nsMwP" node="6$MmqWflYdg" resolve="result" />
                                <node concept="1nq8_$" id="zb1Nk6ZeEJ" role="nsMwV">
                                  <node concept="a7P8L" id="zb1Nk6ZeEI" role="1nq8_t">
                                    <ref role="a7OzE" node="zb1Nk6ZeE6" resolve="RetT" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3NuqgR" id="zb1Nk6Zdcm" role="0Rg$4">
                    <node concept="aZer4" id="zb1Nk6Zdcn" role="3XD1gS">
                      <property role="TrG5h" value="InvokeRetT" />
                    </node>
                    <node concept="aZer4" id="zb1Nk6Zdhy" role="3XD1gS">
                      <property role="TrG5h" value="FunT" />
                    </node>
                    <node concept="aZer4" id="zb1Nk6ZeE6" role="3XD1gS">
                      <property role="TrG5h" value="RetT" />
                    </node>
                    <node concept="32pEOW" id="zb1Nk6Zdco" role="3vLBG7" />
                  </node>
                  <node concept="3xSepi" id="zb1Nk6Zdcp" role="3xSepv">
                    <node concept="3Aq9E8" id="zb1Nk6Zdcq" role="3xSepj">
                      <node concept="3I6sU6" id="zb1Nk6Zdcr" role="3Ip0Jz">
                        <node concept="3I6s7M" id="zb1Nk6ZeFH" role="3I6sU7">
                          <node concept="3Aqt3T" id="zb1Nk6ZeFF" role="3I6s78">
                            <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="convertsTo" />
                            <node concept="a7P8L" id="zb1Nk6ZeFR" role="3AunhB">
                              <ref role="a7OzE" node="zb1Nk6Zdcn" resolve="InvokeRetT" />
                            </node>
                            <node concept="a7P8L" id="zb1Nk6ZeG1" role="3AunhB">
                              <ref role="a7OzE" node="zb1Nk6ZeE6" resolve="RetT" />
                            </node>
                          </node>
                        </node>
                        <node concept="3I6s7M" id="zb1Nk6Zdcs" role="3I6sU7">
                          <node concept="2aM9Np" id="zb1Nk6Zg1k" role="3I6s78">
                            <node concept="a7P8L" id="zb1Nk6Zg1n" role="2aLmnP">
                              <ref role="a7OzE" node="zb1Nk6ZeE6" resolve="RetT" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3xSepi" id="zb1Nk6Zg6T" role="3xSepv">
                    <node concept="3Aq9E8" id="zb1Nk6Zg6U" role="3xSepj">
                      <node concept="3I6sU6" id="zb1Nk6Zg6V" role="3Ip0Jz">
                        <node concept="3I6s7M" id="zb1Nk6Zg7a" role="3I6sU7">
                          <node concept="1lHd6T" id="zb1Nk6Zg79" role="3I6s78">
                            <property role="1lHdp1" value="4jcOV4hu0n_/ERROR" />
                            <node concept="Xl_RD" id="zb1Nk6Zg7d" role="1ljv2e">
                              <property role="Xl_RC" value="closure return type can't be inferred" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="zb1Nk6ZdaR" role="3cqZAp" />
              <node concept="1nLNNL" id="4S1mDSNPDSo" role="3cqZAp">
                <node concept="1nLNMm" id="4S1mDSNPDSp" role="1nLNNK">
                  <node concept="3Aq93q" id="zb1Nk6ZbHJ" role="1nLNMb">
                    <property role="3ArMco" value="true" />
                    <node concept="3I6sU6" id="zb1Nk6ZbHK" role="3Ip0Jz">
                      <node concept="3I6s7M" id="zb1Nk6ZbIo" role="3I6sU7">
                        <node concept="3Aqt3T" id="zb1Nk6ZbIn" role="3I6s78">
                          <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                          <node concept="37jhX" id="zb1Nk6ZbIz" role="3AunhB">
                            <node concept="37vLTw" id="zb1Nk6ZbIx" role="37jj2">
                              <ref role="3cqZAo" node="htkotF6" resolve="cl" />
                            </node>
                          </node>
                          <node concept="a7P8L" id="zb1Nk6ZbIK" role="3AunhB">
                            <ref role="a7OzE" node="4S1mDSNPS4d" resolve="FunT" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3Aq93q" id="4S1mDSNPDSz" role="1nLNMb">
                    <property role="3ArMco" value="true" />
                    <node concept="3I6sU6" id="4S1mDSNPDS$" role="3Ip0Jz">
                      <node concept="3IrJb3" id="4S1mDSNPDS_" role="3I6sU7">
                        <node concept="3clFbS" id="4S1mDSNPDSA" role="3IrJb0">
                          <node concept="1DcWWT" id="4S1mDSNPDSB" role="3cqZAp">
                            <node concept="3cpWsn" id="4S1mDSNPDSC" role="1Duv9x">
                              <property role="TrG5h" value="arg" />
                              <node concept="3Tqbb2" id="4S1mDSNPDSD" role="1tU5fm">
                                <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="4S1mDSNQ5hs" role="1DdaDG">
                              <ref role="3cqZAo" node="4S1mDSNQ4DO" resolve="args" />
                            </node>
                            <node concept="3clFbS" id="4S1mDSNPDSH" role="2LFqv$">
                              <node concept="3Aqczg" id="4S1mDSNPDSI" role="3cqZAp">
                                <node concept="3Aqt3T" id="4S1mDSNPDSJ" role="3Aqpz8">
                                  <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                                  <node concept="37jhX" id="4S1mDSNPDSK" role="3AunhB">
                                    <node concept="37vLTw" id="4S1mDSNPDSL" role="37jj2">
                                      <ref role="3cqZAo" node="4S1mDSNPDSC" resolve="arg" />
                                    </node>
                                  </node>
                                  <node concept="a7P8L" id="4S1mDSNPDSM" role="3AunhB">
                                    <ref role="a7OzE" node="4S1mDSNPDSS" resolve="ArgsT" />
                                    <node concept="2OqwBi" id="4S1mDSNPDSN" role="3gCZO6">
                                      <node concept="37vLTw" id="4S1mDSNPDSO" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4S1mDSNPDSC" resolve="arg" />
                                      </node>
                                      <node concept="2bSWHS" id="4S1mDSNPDSP" role="2OqNvi" />
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
                  <node concept="3NuqgR" id="4S1mDSNPDSQ" role="0Rg$4">
                    <node concept="aZer4" id="4S1mDSNPS4d" role="3XD1gS">
                      <property role="TrG5h" value="FunT" />
                    </node>
                    <node concept="aZer4" id="4S1mDSNPDSS" role="3XD1gS">
                      <property role="TrG5h" value="ArgsT" />
                      <node concept="2OqwBi" id="4S1mDSNPDST" role="3gj$pD">
                        <node concept="37vLTw" id="4S1mDSNQ7Pz" role="2Oq$k0">
                          <ref role="3cqZAo" node="4S1mDSNQ4DO" resolve="args" />
                        </node>
                        <node concept="34oBXx" id="4S1mDSNPDSX" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="aZer4" id="4S1mDSNPDSY" role="3XD1gS">
                      <property role="TrG5h" value="CapArgsT" />
                      <node concept="2OqwBi" id="4S1mDSNPDSZ" role="3gj$pD">
                        <node concept="37vLTw" id="4S1mDSNQ8WB" role="2Oq$k0">
                          <ref role="3cqZAo" node="4S1mDSNQ4DO" resolve="args" />
                        </node>
                        <node concept="34oBXx" id="4S1mDSNPDT3" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="32pEOW" id="4S1mDSNPDT4" role="3vLBG7" />
                  </node>
                  <node concept="3NuqgR" id="4S1mDSNPDT5" role="0Rg$4">
                    <node concept="aZer4" id="4S1mDSNPDT6" role="3XD1gS">
                      <property role="TrG5h" value="RetT" />
                    </node>
                    <node concept="aZer4" id="4S1mDSNPDT7" role="3XD1gS">
                      <property role="TrG5h" value="CapRetT" />
                    </node>
                    <node concept="aZer4" id="4S1mDSNPDT8" role="3XD1gS">
                      <property role="TrG5h" value="ParamsT" />
                      <node concept="2OqwBi" id="4S1mDSNPDT9" role="3gj$pD">
                        <node concept="37vLTw" id="4S1mDSNQap8" role="2Oq$k0">
                          <ref role="3cqZAo" node="4S1mDSNQ4DO" resolve="args" />
                        </node>
                        <node concept="34oBXx" id="4S1mDSNPDTd" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="32pEOW" id="4S1mDSNPDTe" role="3vLBG7" />
                  </node>
                  <node concept="3xSepi" id="4S1mDSNPDTf" role="3xSepv">
                    <node concept="3Aq9E8" id="4S1mDSNPDTg" role="3xSepj">
                      <node concept="3I6sU6" id="4S1mDSNPDTh" role="3Ip0Jz">
                        <node concept="3I6s7M" id="4S1mDSNQx9m" role="3I6sU7">
                          <node concept="3jm4v3" id="4S1mDSNQx9r" role="3I6s78">
                            <ref role="3jm46O" node="4S1mDSNQjm4" resolve="typeOfInvoke" />
                            <node concept="3A2sRY" id="4S1mDSNQx9s" role="3jicU7">
                              <ref role="3A2yKK" node="4S1mDSNPDU5" resolve="inv" />
                            </node>
                            <node concept="37vLTw" id="4S1mDSNQx9t" role="3jicU7">
                              <ref role="3cqZAo" node="4S1mDSNQ4DO" resolve="args" />
                            </node>
                            <node concept="a7P8L" id="4S1mDSNQx9u" role="3jm6SO">
                              <ref role="a7OzE" node="4S1mDSNPS4d" resolve="FunT" />
                            </node>
                            <node concept="a7P8L" id="4S1mDSNQx9v" role="3jm6SO">
                              <ref role="a7OzE" node="4S1mDSNPDSS" resolve="ArgsT" />
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
        <node concept="3clFbH" id="4S1mDSNQcv_" role="3cqZAp" />
      </node>
      <node concept="2t___k" id="4S1mDSNPDU4" role="1nLNMg">
        <ref role="2t_S0q" to="tp2c:htknjxq" resolve="InvokeExpression" />
        <node concept="3A20r5" id="4S1mDSNPDU5" role="2t_VXX">
          <property role="TrG5h" value="inv" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="4S1mDSNODhA" role="1nK1Vg">
      <property role="TrG5h" value="compactInvokeExpr" />
      <node concept="3clFbS" id="4S1mDSNODhB" role="1nLNMH">
        <node concept="3clFbH" id="4S1mDSNOG$G" role="3cqZAp" />
        <node concept="3cpWs8" id="4S1mDSNPTKL" role="3cqZAp">
          <node concept="3cpWsn" id="4S1mDSNPTKO" role="3cpWs9">
            <property role="TrG5h" value="args" />
            <node concept="2I9FWS" id="4S1mDSNPTKJ" role="1tU5fm">
              <ref role="2I9WkF" to="tpee:fz3vP1J" resolve="Expression" />
            </node>
            <node concept="2OqwBi" id="4S1mDSNPTW$" role="33vP2m">
              <node concept="3A2sRY" id="4S1mDSNPTMP" role="2Oq$k0">
                <ref role="3A2yKK" node="4S1mDSNODix" resolve="inv" />
              </node>
              <node concept="3Tsc0h" id="4S1mDSNPVpJ" role="2OqNvi">
                <ref role="3TtcxE" to="tp2c:hYSgHCY" resolve="parameter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4S1mDSNPVpX" role="3cqZAp" />
        <node concept="1nLNNL" id="4S1mDSNODiN" role="3cqZAp">
          <node concept="1nLNMm" id="4S1mDSNODiP" role="1nLNNK">
            <node concept="3Aq93q" id="4S1mDSNOG$T" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="4S1mDSNOG$U" role="3Ip0Jz">
                <node concept="3I6s7M" id="4S1mDSNOG$Y" role="3I6sU7">
                  <node concept="3Aqt3T" id="4S1mDSNOG$X" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="4S1mDSNOG_5" role="3AunhB">
                      <node concept="2OqwBi" id="4S1mDSNOGH2" role="37jj2">
                        <node concept="3A2sRY" id="4S1mDSNOG_3" role="2Oq$k0">
                          <ref role="3A2yKK" node="4S1mDSNODix" resolve="inv" />
                        </node>
                        <node concept="3TrEf2" id="4S1mDSNOGSu" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp2c:hYSgG6H" resolve="function" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="4S1mDSNOGSP" role="3AunhB">
                      <ref role="a7OzE" node="4S1mDSNODiV" resolve="FunT" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="4S1mDSNOGTp" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="4S1mDSNOGTq" role="3Ip0Jz">
                <node concept="3IrJb3" id="4S1mDSNOGTA" role="3I6sU7">
                  <node concept="3clFbS" id="4S1mDSNOGTB" role="3IrJb0">
                    <node concept="1DcWWT" id="4S1mDSNOGTE" role="3cqZAp">
                      <node concept="3cpWsn" id="4S1mDSNOGTF" role="1Duv9x">
                        <property role="TrG5h" value="arg" />
                        <node concept="3Tqbb2" id="4S1mDSNOH2l" role="1tU5fm">
                          <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4S1mDSNPZuF" role="1DdaDG">
                        <ref role="3cqZAo" node="4S1mDSNPTKO" resolve="args" />
                      </node>
                      <node concept="3clFbS" id="4S1mDSNOGTH" role="2LFqv$">
                        <node concept="3Aqczg" id="4S1mDSNOJfX" role="3cqZAp">
                          <node concept="3Aqt3T" id="4S1mDSNOJfW" role="3Aqpz8">
                            <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                            <node concept="37jhX" id="4S1mDSNOJg4" role="3AunhB">
                              <node concept="37vLTw" id="4S1mDSNOMTd" role="37jj2">
                                <ref role="3cqZAo" node="4S1mDSNOGTF" resolve="arg" />
                              </node>
                            </node>
                            <node concept="a7P8L" id="4S1mDSNOO6T" role="3AunhB">
                              <ref role="a7OzE" node="4S1mDSNODjo" resolve="ArgsT" />
                              <node concept="2OqwBi" id="4S1mDSNOOmR" role="3gCZO6">
                                <node concept="37vLTw" id="4S1mDSNOO8p" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4S1mDSNOGTF" resolve="arg" />
                                </node>
                                <node concept="2bSWHS" id="4S1mDSNOOz6" role="2OqNvi" />
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
            <node concept="3NuqgR" id="4S1mDSNODiU" role="0Rg$4">
              <node concept="aZer4" id="4S1mDSNODiV" role="3XD1gS">
                <property role="TrG5h" value="FunT" />
              </node>
              <node concept="aZer4" id="4S1mDSNODjo" role="3XD1gS">
                <property role="TrG5h" value="ArgsT" />
                <node concept="2OqwBi" id="4S1mDSNOEWl" role="3gj$pD">
                  <node concept="37vLTw" id="4S1mDSNPWD4" role="2Oq$k0">
                    <ref role="3cqZAo" node="4S1mDSNPTKO" resolve="args" />
                  </node>
                  <node concept="34oBXx" id="4S1mDSNOGzL" role="2OqNvi" />
                </node>
              </node>
              <node concept="aZer4" id="4S1mDSNP9NK" role="3XD1gS">
                <property role="TrG5h" value="CapArgsT" />
                <node concept="2OqwBi" id="4S1mDSNPbHy" role="3gj$pD">
                  <node concept="37vLTw" id="4S1mDSNPY7o" role="2Oq$k0">
                    <ref role="3cqZAo" node="4S1mDSNPTKO" resolve="args" />
                  </node>
                  <node concept="34oBXx" id="4S1mDSNPe9X" role="2OqNvi" />
                </node>
              </node>
              <node concept="32pEOW" id="4S1mDSNODj7" role="3vLBG7" />
            </node>
            <node concept="3NuqgR" id="4S1mDSNOOzG" role="0Rg$4">
              <node concept="aZer4" id="4S1mDSNOOzH" role="3XD1gS">
                <property role="TrG5h" value="RetT" />
              </node>
              <node concept="aZer4" id="4S1mDSNPeeW" role="3XD1gS">
                <property role="TrG5h" value="CapRetT" />
              </node>
              <node concept="aZer4" id="4S1mDSNOPra" role="3XD1gS">
                <property role="TrG5h" value="ParamsT" />
                <node concept="2OqwBi" id="4S1mDSNOS7A" role="3gj$pD">
                  <node concept="37vLTw" id="4S1mDSNPZkU" role="2Oq$k0">
                    <ref role="3cqZAo" node="4S1mDSNPTKO" resolve="args" />
                  </node>
                  <node concept="34oBXx" id="4S1mDSNOUZ5" role="2OqNvi" />
                </node>
              </node>
              <node concept="32pEOW" id="4S1mDSNOO$2" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="4S1mDSNOGTj" role="3xSepv">
              <node concept="3Aq9E8" id="4S1mDSNOGTk" role="3xSepj">
                <node concept="3I6sU6" id="4S1mDSNOGTl" role="3Ip0Jz">
                  <node concept="3I6s7M" id="4S1mDSNQvOh" role="3I6sU7">
                    <node concept="3jm4v3" id="4S1mDSNQvNB" role="3I6s78">
                      <ref role="3jm46O" node="4S1mDSNQjm4" resolve="typeOfInvoke" />
                      <node concept="3A2sRY" id="4S1mDSNQvO3" role="3jicU7">
                        <ref role="3A2yKK" node="4S1mDSNODix" resolve="inv" />
                      </node>
                      <node concept="37vLTw" id="4S1mDSNQvOb" role="3jicU7">
                        <ref role="3cqZAo" node="4S1mDSNPTKO" resolve="args" />
                      </node>
                      <node concept="a7P8L" id="4S1mDSNQvNL" role="3jm6SO">
                        <ref role="a7OzE" node="4S1mDSNODiV" resolve="FunT" />
                      </node>
                      <node concept="a7P8L" id="4S1mDSNQvNT" role="3jm6SO">
                        <ref role="a7OzE" node="4S1mDSNODjo" resolve="ArgsT" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="4S1mDSNODiw" role="1nLNMg">
        <ref role="2t_S0q" to="tp2c:hYSg_EC" resolve="CompactInvokeFunctionExpression" />
        <node concept="3A20r5" id="4S1mDSNODix" role="2t_VXX">
          <property role="TrG5h" value="inv" />
        </node>
      </node>
    </node>
    <node concept="1nLNMY" id="4S1mDSNQcAu" role="1nK1Vg">
      <property role="TrG5h" value="invokeOp" />
      <node concept="3clFbS" id="4S1mDSNQcAv" role="1nLNMH">
        <node concept="3clFbH" id="4S1mDSNQcAw" role="3cqZAp" />
        <node concept="3cpWs8" id="4S1mDSNQcAx" role="3cqZAp">
          <node concept="3cpWsn" id="4S1mDSNQcAy" role="3cpWs9">
            <property role="TrG5h" value="args" />
            <node concept="2I9FWS" id="4S1mDSNQcAz" role="1tU5fm">
              <ref role="2I9WkF" to="tpee:fz3vP1J" resolve="Expression" />
            </node>
            <node concept="2OqwBi" id="4S1mDSNQcA$" role="33vP2m">
              <node concept="3A2sRY" id="4S1mDSNQcA_" role="2Oq$k0">
                <ref role="3A2yKK" node="4S1mDSNQcCb" resolve="inv" />
              </node>
              <node concept="3Tsc0h" id="4S1mDSNQhVK" role="2OqNvi">
                <ref role="3TtcxE" to="tp2c:hPBdPZc" resolve="parameter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4S1mDSNQcAB" role="3cqZAp" />
        <node concept="1nLNNL" id="4S1mDSNQcAC" role="3cqZAp">
          <node concept="1nLNMm" id="4S1mDSNQcAD" role="1nLNNK">
            <node concept="3Aq93q" id="4S1mDSNQcAE" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="4S1mDSNQcAF" role="3Ip0Jz">
                <node concept="3I6s7M" id="4S1mDSNQcAG" role="3I6sU7">
                  <node concept="3Aqt3T" id="4S1mDSNQcAH" role="3I6s78">
                    <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                    <node concept="37jhX" id="4S1mDSNQcAI" role="3AunhB">
                      <node concept="2OqwBi" id="4S1mDSNQcAJ" role="37jj2">
                        <node concept="3A2sRY" id="4S1mDSNQcAK" role="2Oq$k0">
                          <ref role="3A2yKK" node="4S1mDSNQcCb" resolve="inv" />
                        </node>
                        <node concept="2qgKlT" id="4S1mDSNQjh8" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:hEwIP$m" resolve="getOperand" />
                        </node>
                      </node>
                    </node>
                    <node concept="a7P8L" id="4S1mDSNQcAM" role="3AunhB">
                      <ref role="a7OzE" node="4S1mDSNQcB5" resolve="FunT" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq93q" id="4S1mDSNQcAN" role="1nLNMb">
              <property role="3ArMco" value="true" />
              <node concept="3I6sU6" id="4S1mDSNQcAO" role="3Ip0Jz">
                <node concept="3IrJb3" id="4S1mDSNQcAP" role="3I6sU7">
                  <node concept="3clFbS" id="4S1mDSNQcAQ" role="3IrJb0">
                    <node concept="1DcWWT" id="4S1mDSNQcAR" role="3cqZAp">
                      <node concept="3cpWsn" id="4S1mDSNQcAS" role="1Duv9x">
                        <property role="TrG5h" value="arg" />
                        <node concept="3Tqbb2" id="4S1mDSNQcAT" role="1tU5fm">
                          <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4S1mDSNQcAU" role="1DdaDG">
                        <ref role="3cqZAo" node="4S1mDSNQcAy" resolve="args" />
                      </node>
                      <node concept="3clFbS" id="4S1mDSNQcAV" role="2LFqv$">
                        <node concept="3Aqczg" id="4S1mDSNQcAW" role="3cqZAp">
                          <node concept="3Aqt3T" id="4S1mDSNQcAX" role="3Aqpz8">
                            <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
                            <node concept="37jhX" id="4S1mDSNQcAY" role="3AunhB">
                              <node concept="37vLTw" id="4S1mDSNQcAZ" role="37jj2">
                                <ref role="3cqZAo" node="4S1mDSNQcAS" resolve="arg" />
                              </node>
                            </node>
                            <node concept="a7P8L" id="4S1mDSNQcB0" role="3AunhB">
                              <ref role="a7OzE" node="4S1mDSNQcB6" resolve="ArgsT" />
                              <node concept="2OqwBi" id="4S1mDSNQcB1" role="3gCZO6">
                                <node concept="37vLTw" id="4S1mDSNQcB2" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4S1mDSNQcAS" resolve="arg" />
                                </node>
                                <node concept="2bSWHS" id="4S1mDSNQcB3" role="2OqNvi" />
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
            <node concept="3NuqgR" id="4S1mDSNQcB4" role="0Rg$4">
              <node concept="aZer4" id="4S1mDSNQcB5" role="3XD1gS">
                <property role="TrG5h" value="FunT" />
              </node>
              <node concept="aZer4" id="4S1mDSNQcB6" role="3XD1gS">
                <property role="TrG5h" value="ArgsT" />
                <node concept="2OqwBi" id="4S1mDSNQcB7" role="3gj$pD">
                  <node concept="37vLTw" id="4S1mDSNQcB8" role="2Oq$k0">
                    <ref role="3cqZAo" node="4S1mDSNQcAy" resolve="args" />
                  </node>
                  <node concept="34oBXx" id="4S1mDSNQcB9" role="2OqNvi" />
                </node>
              </node>
              <node concept="aZer4" id="4S1mDSNQcBa" role="3XD1gS">
                <property role="TrG5h" value="CapArgsT" />
                <node concept="2OqwBi" id="4S1mDSNQcBb" role="3gj$pD">
                  <node concept="37vLTw" id="4S1mDSNQcBc" role="2Oq$k0">
                    <ref role="3cqZAo" node="4S1mDSNQcAy" resolve="args" />
                  </node>
                  <node concept="34oBXx" id="4S1mDSNQcBd" role="2OqNvi" />
                </node>
              </node>
              <node concept="32pEOW" id="4S1mDSNQcBe" role="3vLBG7" />
            </node>
            <node concept="3NuqgR" id="4S1mDSNQcBf" role="0Rg$4">
              <node concept="aZer4" id="4S1mDSNQcBg" role="3XD1gS">
                <property role="TrG5h" value="RetT" />
              </node>
              <node concept="aZer4" id="4S1mDSNQcBh" role="3XD1gS">
                <property role="TrG5h" value="CapRetT" />
              </node>
              <node concept="aZer4" id="4S1mDSNQcBi" role="3XD1gS">
                <property role="TrG5h" value="ParamsT" />
                <node concept="2OqwBi" id="4S1mDSNQcBj" role="3gj$pD">
                  <node concept="37vLTw" id="4S1mDSNQcBk" role="2Oq$k0">
                    <ref role="3cqZAo" node="4S1mDSNQcAy" resolve="args" />
                  </node>
                  <node concept="34oBXx" id="4S1mDSNQcBl" role="2OqNvi" />
                </node>
              </node>
              <node concept="32pEOW" id="4S1mDSNQcBm" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="4S1mDSNQcBn" role="3xSepv">
              <node concept="3Aq9E8" id="4S1mDSNQcBo" role="3xSepj">
                <node concept="3I6sU6" id="4S1mDSNQcBp" role="3Ip0Jz">
                  <node concept="3I6s7M" id="4S1mDSNQyrH" role="3I6sU7">
                    <node concept="3jm4v3" id="4S1mDSNQyrM" role="3I6s78">
                      <ref role="3jm46O" node="4S1mDSNQjm4" resolve="typeOfInvoke" />
                      <node concept="3A2sRY" id="4S1mDSNQyrN" role="3jicU7">
                        <ref role="3A2yKK" node="4S1mDSNQcCb" resolve="inv" />
                      </node>
                      <node concept="37vLTw" id="4S1mDSNQyrO" role="3jicU7">
                        <ref role="3cqZAo" node="4S1mDSNQcAy" resolve="args" />
                      </node>
                      <node concept="a7P8L" id="4S1mDSNQyrP" role="3jm6SO">
                        <ref role="a7OzE" node="4S1mDSNQcB5" resolve="FunT" />
                      </node>
                      <node concept="a7P8L" id="4S1mDSNQyrQ" role="3jm6SO">
                        <ref role="a7OzE" node="4S1mDSNQcB6" resolve="ArgsT" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2t___k" id="4S1mDSNQcCa" role="1nLNMg">
        <ref role="2t_S0q" to="tp2c:hPBd92j" resolve="InvokeFunctionOperation" />
        <node concept="3A20r5" id="4S1mDSNQcCb" role="2t_VXX">
          <property role="TrG5h" value="inv" />
        </node>
      </node>
    </node>
  </node>
  <node concept="0oKg$" id="4S1mDSNQjm1">
    <property role="TrG5h" value="ClosureRuleMacros" />
    <node concept="3hwh0R" id="4S1mDSNQjm4" role="0oKgB">
      <property role="TrG5h" value="typeOfInvoke" />
      <node concept="3hPv5a" id="4S1mDSNQsJy" role="3hP23H">
        <property role="TrG5h" value="inv" />
        <node concept="3Tqbb2" id="4S1mDSNQsJC" role="3hPmi9" />
      </node>
      <node concept="3hPv5a" id="4S1mDSNQjma" role="3hP23H">
        <property role="TrG5h" value="args" />
        <node concept="2I9FWS" id="4S1mDSNQjxp" role="3hPmi9">
          <ref role="2I9WkF" to="tpee:fz3vP1J" resolve="Expression" />
        </node>
      </node>
      <node concept="3clFbS" id="4S1mDSNQjm6" role="3hEL4E">
        <node concept="3Aqczg" id="4S1mDSNQpsl" role="3cqZAp">
          <node concept="3Aqt3T" id="4S1mDSNQpsm" role="3Aqpz8">
            <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="convertsTo" />
            <node concept="a7P8L" id="4S1mDSNQpsn" role="3AunhB">
              <ref role="a7OzE" node="4S1mDSNQmtW" resolve="FunT" />
            </node>
            <node concept="ns1u0" id="4S1mDSNQpso" role="3AunhB">
              <ref role="ns1xF" node="6$MmqWflYd6" resolve="function" />
              <node concept="nsMwS" id="4S1mDSNQpsp" role="ns1xD">
                <ref role="nsMwP" node="6$MmqWflYdw" resolve="params" />
                <node concept="1nq8_$" id="4S1mDSNQpsq" role="nsMwV">
                  <node concept="37jhX" id="4S1mDSNQpsr" role="1nq8_t">
                    <node concept="1nq8_$" id="4S1mDSNQpss" role="37jj2">
                      <node concept="a7P8L" id="4S1mDSNQpst" role="1nq8_t">
                        <ref role="a7OzE" node="4S1mDSNQpAr" resolve="ParamsT" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="nsMwS" id="4S1mDSNQpsu" role="ns1xD">
                <ref role="nsMwP" node="6$MmqWflYdg" resolve="result" />
                <node concept="1nq8_$" id="4S1mDSNQpsv" role="nsMwV">
                  <node concept="a7P8L" id="4S1mDSNQpsw" role="1nq8_t">
                    <ref role="a7OzE" node="4S1mDSNQprM" resolve="RetT" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="4S1mDSNQpsx" role="3cqZAp">
          <node concept="2$rviw" id="4S1mDSNQpsy" role="1Dwrff">
            <node concept="37vLTw" id="4S1mDSNQpsz" role="2$L3a6">
              <ref role="3cqZAo" node="4S1mDSNQpsL" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="4S1mDSNQps$" role="2LFqv$">
            <node concept="3Aqczg" id="4S1mDSNQps_" role="3cqZAp">
              <node concept="3Aqt3T" id="4S1mDSNQpsA" role="3Aqpz8">
                <ref role="3AqCNq" to="kqnc:3wxtToEiJ2p" resolve="capture" />
                <node concept="a7P8L" id="4S1mDSNQpsB" role="3AunhB">
                  <ref role="a7OzE" node="4S1mDSNQmuw" resolve="CapArgsT" />
                  <node concept="37vLTw" id="4S1mDSNQpsC" role="3gCZO6">
                    <ref role="3cqZAo" node="4S1mDSNQpsL" resolve="i" />
                  </node>
                </node>
                <node concept="a7P8L" id="4S1mDSNQpsD" role="3AunhB">
                  <ref role="a7OzE" node="4S1mDSNQjxu" resolve="ArgsT" />
                  <node concept="37vLTw" id="4S1mDSNQpsE" role="3gCZO6">
                    <ref role="3cqZAo" node="4S1mDSNQpsL" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aqczg" id="4S1mDSNQpsF" role="3cqZAp">
              <node concept="3Aqt3T" id="4S1mDSNQpsG" role="3Aqpz8">
                <ref role="3AqCNq" to="kqnc:3Qp4N06bUPu" resolve="convertsTo" />
                <node concept="a7P8L" id="4S1mDSNQpsH" role="3AunhB">
                  <ref role="a7OzE" node="4S1mDSNQmuw" resolve="CapArgsT" />
                  <node concept="37vLTw" id="4S1mDSNQpsI" role="3gCZO6">
                    <ref role="3cqZAo" node="4S1mDSNQpsL" resolve="i" />
                  </node>
                </node>
                <node concept="a7P8L" id="4S1mDSNQpsJ" role="3AunhB">
                  <ref role="a7OzE" node="4S1mDSNQpAr" resolve="ParamsT" />
                  <node concept="37vLTw" id="4S1mDSNQpsK" role="3gCZO6">
                    <ref role="3cqZAo" node="4S1mDSNQpsL" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4S1mDSNQpsL" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="4S1mDSNQpsM" role="1tU5fm" />
            <node concept="3cmrfG" id="4S1mDSNQpsN" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="4S1mDSNQpsO" role="1Dwp0S">
            <node concept="2OqwBi" id="4S1mDSNQpsP" role="3uHU7w">
              <node concept="3hN9Ij" id="4S1mDSNQsW5" role="2Oq$k0">
                <ref role="3hLkJx" node="4S1mDSNQjma" resolve="args" />
              </node>
              <node concept="34oBXx" id="4S1mDSNQunz" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="4S1mDSNQpsS" role="3uHU7B">
              <ref role="3cqZAo" node="4S1mDSNQpsL" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4S1mDSNQpsT" role="3cqZAp" />
        <node concept="3Aqczg" id="4S1mDSNQpsU" role="3cqZAp">
          <node concept="3Aqt3T" id="4S1mDSNQpsV" role="3Aqpz8">
            <ref role="3AqCNq" to="kqnc:3wxtToEiJ2p" resolve="capture" />
            <node concept="a7P8L" id="4S1mDSNQpsW" role="3AunhB">
              <ref role="a7OzE" node="4S1mDSNQpr2" resolve="CapRetT" />
            </node>
            <node concept="a7P8L" id="4S1mDSNQpsX" role="3AunhB">
              <ref role="a7OzE" node="4S1mDSNQprM" resolve="RetT" />
            </node>
          </node>
        </node>
        <node concept="3Aqczg" id="4S1mDSNQpsY" role="3cqZAp">
          <node concept="3Aqt3T" id="4S1mDSNQpsZ" role="3Aqpz8">
            <ref role="3AqCNq" to="kqnc:34$A1MfhdDv" resolve="typeOf" />
            <node concept="37jhX" id="4S1mDSNQpt0" role="3AunhB">
              <node concept="3hN9Ij" id="4S1mDSNQuqe" role="37jj2">
                <ref role="3hLkJx" node="4S1mDSNQsJy" resolve="inv" />
              </node>
            </node>
            <node concept="a7P8L" id="4S1mDSNQpt2" role="3AunhB">
              <ref role="a7OzE" node="4S1mDSNQpr2" resolve="CapRetT" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uniRu" id="4S1mDSNQjxt" role="3h32gL">
        <node concept="aZer4" id="4S1mDSNQmtW" role="3XD1gS">
          <property role="TrG5h" value="FunT" />
        </node>
        <node concept="aZer4" id="4S1mDSNQjxu" role="3XD1gS">
          <property role="TrG5h" value="ArgsT" />
          <node concept="2OqwBi" id="4S1mDSNQkRt" role="3gj$pD">
            <node concept="3hN9Ij" id="4S1mDSNQjyc" role="2Oq$k0">
              <ref role="3hLkJx" node="4S1mDSNQjma" resolve="args" />
            </node>
            <node concept="34oBXx" id="4S1mDSNQmsz" role="2OqNvi" />
          </node>
        </node>
        <node concept="32pEOW" id="4S1mDSNQjxE" role="3vLBG7" />
      </node>
      <node concept="3uniRu" id="4S1mDSNQmuv" role="3hEOkk">
        <node concept="aZer4" id="4S1mDSNQprM" role="3XD1gS">
          <property role="TrG5h" value="RetT" />
        </node>
        <node concept="aZer4" id="4S1mDSNQpr2" role="3XD1gS">
          <property role="TrG5h" value="CapRetT" />
        </node>
        <node concept="aZer4" id="4S1mDSNQpAr" role="3XD1gS">
          <property role="TrG5h" value="ParamsT" />
          <node concept="2OqwBi" id="4S1mDSNQqWN" role="3gj$pD">
            <node concept="3hN9Ij" id="4S1mDSNQpBy" role="2Oq$k0">
              <ref role="3hLkJx" node="4S1mDSNQjma" resolve="args" />
            </node>
            <node concept="34oBXx" id="4S1mDSNQsxQ" role="2OqNvi" />
          </node>
        </node>
        <node concept="aZer4" id="4S1mDSNQmuw" role="3XD1gS">
          <property role="TrG5h" value="CapArgsT" />
          <node concept="2OqwBi" id="4S1mDSNQnOs" role="3gj$pD">
            <node concept="3hN9Ij" id="4S1mDSNQmvb" role="2Oq$k0">
              <ref role="3hLkJx" node="4S1mDSNQjma" resolve="args" />
            </node>
            <node concept="34oBXx" id="4S1mDSNQppv" role="2OqNvi" />
          </node>
        </node>
        <node concept="32pEOW" id="4S1mDSNQpqS" role="3vLBG7" />
      </node>
    </node>
  </node>
  <node concept="AVZre" id="4S1mDSNQJE5">
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="ControlAbstraction" />
  </node>
  <node concept="312cEu" id="4S1mDSNUxuw">
    <property role="TrG5h" value="ClosureReturnsCollector" />
    <node concept="312cEg" id="4S1mDSNUFN1" role="jymVt">
      <property role="TrG5h" value="allRets" />
      <node concept="3Tm6S6" id="4S1mDSNUFGa" role="1B3o_S" />
      <node concept="_YKpA" id="4S1mDSNUFM$" role="1tU5fm">
        <node concept="3Tqbb2" id="4S1mDSNUFO4" role="_ZDj9">
          <ref role="ehGHo" to="tpee:fzcpWvY" resolve="ReturnStatement" />
        </node>
      </node>
      <node concept="2ShNRf" id="4S1mDSNUHU2" role="33vP2m">
        <node concept="Tc6Ow" id="4S1mDSNUI24" role="2ShVmc">
          <node concept="3Tqbb2" id="4S1mDSNUIlB" role="HW$YZ">
            <ref role="ehGHo" to="tpee:fzcpWvY" resolve="ReturnStatement" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4S1mDSNUFOw" role="jymVt">
      <property role="TrG5h" value="allYlds" />
      <node concept="3Tm6S6" id="4S1mDSNUFOx" role="1B3o_S" />
      <node concept="_YKpA" id="4S1mDSNUFOy" role="1tU5fm">
        <node concept="3Tqbb2" id="4S1mDSNUFOz" role="_ZDj9">
          <ref role="ehGHo" to="tp2c:hun63U2" resolve="YieldStatement" />
        </node>
      </node>
      <node concept="2ShNRf" id="4S1mDSNUIyp" role="33vP2m">
        <node concept="Tc6Ow" id="4S1mDSNUIyq" role="2ShVmc">
          <node concept="3Tqbb2" id="4S1mDSNUIyr" role="HW$YZ">
            <ref role="ehGHo" to="tp2c:hun63U2" resolve="YieldStatement" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4S1mDSNUFPd" role="jymVt">
      <property role="TrG5h" value="allYldAlls" />
      <node concept="3Tm6S6" id="4S1mDSNUFPe" role="1B3o_S" />
      <node concept="_YKpA" id="4S1mDSNUFPf" role="1tU5fm">
        <node concept="3Tqbb2" id="4S1mDSNUFPg" role="_ZDj9">
          <ref role="ehGHo" to="tp2c:hS_Z6Lz" resolve="YieldAllStatement" />
        </node>
      </node>
      <node concept="2ShNRf" id="4S1mDSNUIII" role="33vP2m">
        <node concept="Tc6Ow" id="4S1mDSNUIIJ" role="2ShVmc">
          <node concept="3Tqbb2" id="4S1mDSNUIIK" role="HW$YZ">
            <ref role="ehGHo" to="tp2c:hS_Z6Lz" resolve="YieldAllStatement" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5jbgz$E5XBk" role="jymVt">
      <property role="TrG5h" value="lastStmt" />
      <node concept="3Tm6S6" id="5jbgz$E5Xk0" role="1B3o_S" />
      <node concept="3Tqbb2" id="5jbgz$E5XAo" role="1tU5fm">
        <ref role="ehGHo" to="tpee:fzclF8j" resolve="ExpressionStatement" />
      </node>
    </node>
    <node concept="2tJIrI" id="4S1mDSNUFNB" role="jymVt" />
    <node concept="3clFb_" id="4S1mDSNVpTt" role="jymVt">
      <property role="TrG5h" value="getReturns" />
      <node concept="3clFbS" id="4S1mDSNVpTw" role="3clF47">
        <node concept="3clFbF" id="4S1mDSNVrcU" role="3cqZAp">
          <node concept="37vLTw" id="4S1mDSNVrcT" role="3clFbG">
            <ref role="3cqZAo" node="4S1mDSNUFN1" resolve="allRets" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4S1mDSNVpoE" role="1B3o_S" />
      <node concept="_YKpA" id="4Z0pyZIE90f" role="3clF45">
        <node concept="3Tqbb2" id="4S1mDSNVraQ" role="_ZDj9">
          <ref role="ehGHo" to="tpee:fzcpWvY" resolve="ReturnStatement" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4S1mDSNVwhc" role="jymVt">
      <property role="TrG5h" value="getAllYields" />
      <node concept="3clFbS" id="4S1mDSNVwhd" role="3clF47">
        <node concept="3clFbF" id="4Z0pyZIDpen" role="3cqZAp">
          <node concept="15s5l7" id="4Z0pyZIDHHC" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: type list&lt;node&lt;YieldAllStatement&gt;&gt; is not a subtype of sequence&lt;node&lt;YieldStatement&gt;&gt;&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c8959032b(jetbrains.mps.baseLanguage.collections.typesystem)/5380162141330971841]&quot;;" />
            <property role="huDt6" value="Error: type list&lt;node&lt;YieldAllStatement&gt;&gt; is not a subtype of sequence&lt;node&lt;YieldStatement&gt;&gt;" />
          </node>
          <node concept="2OqwBi" id="4Z0pyZIE5XE" role="3clFbG">
            <node concept="2OqwBi" id="4Z0pyZIDq6v" role="2Oq$k0">
              <node concept="3QWeyG" id="4Z0pyZIDqtE" role="2OqNvi">
                <node concept="37vLTw" id="4Z0pyZIDqv_" role="576Qk">
                  <ref role="3cqZAo" node="4S1mDSNUFPd" resolve="allYldAlls" />
                </node>
              </node>
              <node concept="37vLTw" id="4Z0pyZIDrto" role="2Oq$k0">
                <ref role="3cqZAo" node="4S1mDSNUFOw" resolve="allYlds" />
              </node>
            </node>
            <node concept="ANE8D" id="4Z0pyZIE6NC" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4S1mDSNVwhg" role="1B3o_S" />
      <node concept="_YKpA" id="4Z0pyZIDWKN" role="3clF45">
        <node concept="3Tqbb2" id="4Z0pyZIDXz8" role="_ZDj9" />
      </node>
    </node>
    <node concept="3clFb_" id="4S1mDSNVx25" role="jymVt">
      <property role="TrG5h" value="getYieldAlls" />
      <node concept="3clFbS" id="4S1mDSNVx26" role="3clF47">
        <node concept="3clFbF" id="4S1mDSNVx27" role="3cqZAp">
          <node concept="37vLTw" id="4S1mDSNVyyA" role="3clFbG">
            <ref role="3cqZAo" node="4S1mDSNUFPd" resolve="allYldAlls" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4S1mDSNVx29" role="1B3o_S" />
      <node concept="_YKpA" id="4Z0pyZIDYCU" role="3clF45">
        <node concept="3Tqbb2" id="4Z0pyZIDYCV" role="_ZDj9">
          <ref role="ehGHo" to="tp2c:hS_Z6Lz" resolve="YieldAllStatement" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4Z0pyZIDMDn" role="jymVt">
      <property role="TrG5h" value="getYields" />
      <node concept="3clFbS" id="4Z0pyZIDMDo" role="3clF47">
        <node concept="3clFbF" id="4Z0pyZIDMDp" role="3cqZAp">
          <node concept="37vLTw" id="4Z0pyZIDSa_" role="3clFbG">
            <ref role="3cqZAo" node="4S1mDSNUFOw" resolve="allYlds" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4Z0pyZIDMDr" role="1B3o_S" />
      <node concept="_YKpA" id="4Z0pyZIE4o2" role="3clF45">
        <node concept="3Tqbb2" id="4Z0pyZIE4o3" role="_ZDj9">
          <ref role="ehGHo" to="tp2c:hun63U2" resolve="YieldStatement" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Z0pyZIEX2_" role="jymVt" />
    <node concept="3clFb_" id="4Z0pyZIF6jh" role="jymVt">
      <property role="TrG5h" value="getLastExpr" />
      <node concept="3clFbS" id="4Z0pyZIF6jk" role="3clF47">
        <node concept="3clFbF" id="4Z0pyZIFbXs" role="3cqZAp">
          <node concept="2OqwBi" id="zb1Nk6Zap3" role="3clFbG">
            <node concept="37vLTw" id="4Z0pyZIFbXr" role="2Oq$k0">
              <ref role="3cqZAo" node="5jbgz$E5XBk" resolve="lastStmt" />
            </node>
            <node concept="3TrEf2" id="zb1Nk6ZaEe" role="2OqNvi">
              <ref role="3Tt5mk" to="tpee:fzclF8k" resolve="expression" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4Z0pyZIF1Hi" role="1B3o_S" />
      <node concept="3Tqbb2" id="4Z0pyZIF6de" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jbgz$E5UG_" role="jymVt" />
    <node concept="3clFb_" id="5jbgz$E5VPp" role="jymVt">
      <property role="TrG5h" value="returnsFromLast" />
      <node concept="3clFbS" id="5jbgz$E5VPs" role="3clF47">
        <node concept="3clFbF" id="5jbgz$E6g4B" role="3cqZAp">
          <node concept="1Wc70l" id="4Z0pyZIEckS" role="3clFbG">
            <node concept="3y3z36" id="5jbgz$E6go_" role="3uHU7B">
              <node concept="37vLTw" id="5jbgz$E6g4A" role="3uHU7B">
                <ref role="3cqZAo" node="5jbgz$E5XBk" resolve="lastStmt" />
              </node>
              <node concept="10Nm6u" id="5jbgz$E6gy4" role="3uHU7w" />
            </node>
            <node concept="1rXfSq" id="4yZzE4kNBbh" role="3uHU7w">
              <ref role="37wK5l" node="4yZzE4kNykJ" resolve="allNonVoid" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5jbgz$E5Vxv" role="1B3o_S" />
      <node concept="10P_77" id="5jbgz$E5VOU" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4yZzE4kNoPp" role="jymVt" />
    <node concept="3clFb_" id="4yZzE4kNsq0" role="jymVt">
      <property role="TrG5h" value="allVoid" />
      <node concept="3clFbS" id="4yZzE4kNsq3" role="3clF47">
        <node concept="3clFbF" id="4yZzE4kNsWJ" role="3cqZAp">
          <node concept="2OqwBi" id="4Z0pyZIEf$E" role="3clFbG">
            <node concept="37vLTw" id="4Z0pyZIEcnS" role="2Oq$k0">
              <ref role="3cqZAo" node="4S1mDSNUFN1" resolve="allRets" />
            </node>
            <node concept="2HxqBE" id="4Z0pyZIEhBe" role="2OqNvi">
              <node concept="1bVj0M" id="4Z0pyZIEhBg" role="23t8la">
                <node concept="3clFbS" id="4Z0pyZIEhBh" role="1bW5cS">
                  <node concept="3clFbF" id="4Z0pyZIEhZ5" role="3cqZAp">
                    <node concept="1rXfSq" id="4Z0pyZIETPJ" role="3clFbG">
                      <ref role="37wK5l" node="4Z0pyZIEL8V" resolve="isVoid" />
                      <node concept="37vLTw" id="4Z0pyZIETPK" role="37wK5m">
                        <ref role="3cqZAo" node="4Z0pyZIEhBi" resolve="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4Z0pyZIEhBi" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4Z0pyZIEhBj" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4yZzE4kNqPT" role="1B3o_S" />
      <node concept="10P_77" id="4yZzE4kNspd" role="3clF45" />
    </node>
    <node concept="3clFb_" id="4yZzE4kNykJ" role="jymVt">
      <property role="TrG5h" value="allNonVoid" />
      <node concept="3clFbS" id="4yZzE4kNykK" role="3clF47">
        <node concept="3clFbF" id="4yZzE4kNykL" role="3cqZAp">
          <node concept="2OqwBi" id="4yZzE4kNDdr" role="3clFbG">
            <node concept="37vLTw" id="4yZzE4kNDds" role="2Oq$k0">
              <ref role="3cqZAo" node="4S1mDSNUFN1" resolve="allRets" />
            </node>
            <node concept="2HxqBE" id="4yZzE4kNFDw" role="2OqNvi">
              <node concept="1bVj0M" id="4yZzE4kNFDy" role="23t8la">
                <node concept="3clFbS" id="4yZzE4kNFDz" role="1bW5cS">
                  <node concept="3clFbF" id="4yZzE4kNFD$" role="3cqZAp">
                    <node concept="3fqX7Q" id="4yZzE4kNFI$" role="3clFbG">
                      <node concept="1rXfSq" id="4yZzE4kNFIA" role="3fr31v">
                        <ref role="37wK5l" node="4Z0pyZIEL8V" resolve="isVoid" />
                        <node concept="37vLTw" id="4yZzE4kNFIB" role="37wK5m">
                          <ref role="3cqZAo" node="4yZzE4kNFDB" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4yZzE4kNFDB" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4yZzE4kNFDC" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4yZzE4kNykX" role="1B3o_S" />
      <node concept="10P_77" id="4yZzE4kNykY" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4Z0pyZIEBJI" role="jymVt" />
    <node concept="3clFb_" id="4Z0pyZIEL8V" role="jymVt">
      <property role="TrG5h" value="isVoid" />
      <node concept="3clFbS" id="4Z0pyZIEL8Y" role="3clF47">
        <node concept="3clFbF" id="4Z0pyZIEQML" role="3cqZAp">
          <node concept="2OqwBi" id="4Z0pyZIEREw" role="3clFbG">
            <node concept="2OqwBi" id="4Z0pyZIEQZy" role="2Oq$k0">
              <node concept="37vLTw" id="4Z0pyZIEQMK" role="2Oq$k0">
                <ref role="3cqZAo" node="4Z0pyZIEPHs" resolve="node" />
              </node>
              <node concept="3TrEf2" id="4Z0pyZIERuv" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzcqZ_G" resolve="expression" />
              </node>
            </node>
            <node concept="3w_OXm" id="4yZzE4kO8tE" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4Z0pyZIEGvf" role="1B3o_S" />
      <node concept="10P_77" id="4Z0pyZIEL4t" role="3clF45" />
      <node concept="37vLTG" id="4Z0pyZIEPHs" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4Z0pyZIEPHr" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fzcpWvY" resolve="ReturnStatement" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4S1mDSNVozw" role="jymVt" />
    <node concept="3clFbW" id="4S1mDSNUxMk" role="jymVt">
      <node concept="37vLTG" id="4S1mDSNUxMG" role="3clF46">
        <property role="TrG5h" value="closure" />
        <node concept="3Tqbb2" id="4S1mDSNUy2H" role="1tU5fm">
          <ref role="ehGHo" to="tp2c:htbVj4_" resolve="ClosureLiteral" />
        </node>
      </node>
      <node concept="3cqZAl" id="4S1mDSNUxMl" role="3clF45" />
      <node concept="3clFbS" id="4S1mDSNUxMn" role="3clF47">
        <node concept="3clFbH" id="5jbgz$E5Ylc" role="3cqZAp" />
        <node concept="3cpWs8" id="hLFMn2o" role="3cqZAp">
          <node concept="3cpWsn" id="hLFMn2p" role="3cpWs9">
            <property role="TrG5h" value="stmts" />
            <node concept="2OqwBi" id="hLFMn2q" role="33vP2m">
              <node concept="2OqwBi" id="hLFMn2r" role="2Oq$k0">
                <node concept="3TrEf2" id="hLFMn2t" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp2c:htbW58J" resolve="body" />
                </node>
                <node concept="37vLTw" id="5jbgz$E60bH" role="2Oq$k0">
                  <ref role="3cqZAo" node="4S1mDSNUxMG" resolve="closure" />
                </node>
              </node>
              <node concept="3Tsc0h" id="hLFMn2u" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
              </node>
            </node>
            <node concept="2I9FWS" id="hLFVa6c" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbF" id="5jbgz$E61sr" role="3cqZAp">
          <node concept="37vLTI" id="5jbgz$E64dn" role="3clFbG">
            <node concept="2OqwBi" id="5jbgz$E626A" role="37vLTJ">
              <node concept="Xjq3P" id="5jbgz$E61sp" role="2Oq$k0" />
              <node concept="2OwXpG" id="5jbgz$E62lf" role="2OqNvi">
                <ref role="2Oxat5" node="5jbgz$E5XBk" resolve="lastStmt" />
              </node>
            </node>
            <node concept="3K4zz7" id="hLFMn2$" role="37vLTx">
              <node concept="1Wc70l" id="hLFMn2_" role="3K4Cdx">
                <node concept="2OqwBi" id="5eo3iW5fee0" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagTzhc" role="2Oq$k0">
                    <ref role="3cqZAo" node="hLFMn2p" resolve="stmts" />
                  </node>
                  <node concept="3GX2aA" id="5eo3iW5fee1" role="2OqNvi" />
                </node>
                <node concept="3y3z36" id="hLFMn2F" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTwdl" role="3uHU7B">
                    <ref role="3cqZAo" node="hLFMn2p" resolve="stmts" />
                  </node>
                  <node concept="10Nm6u" id="hLFMn2H" role="3uHU7w" />
                </node>
              </node>
              <node concept="10Nm6u" id="hLFMn2I" role="3K4GZi" />
              <node concept="1PxgMI" id="5jbgz$E65IC" role="3K4E3e">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="5jbgz$E65Su" role="3oSUPX">
                  <ref role="cht4Q" to="tpee:fzclF8j" resolve="ExpressionStatement" />
                </node>
                <node concept="2OqwBi" id="7XyRbC9NJd" role="1m5AlR">
                  <node concept="2qgKlT" id="7XyRbC9NJh" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:i2fhS7A" resolve="getLastStatement" />
                  </node>
                  <node concept="37vLTw" id="5jbgz$E60lB" role="2Oq$k0">
                    <ref role="3cqZAo" node="4S1mDSNUxMG" resolve="closure" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4S1mDSNVdac" role="3cqZAp" />
        <node concept="3cpWs8" id="hLFMmYR" role="3cqZAp">
          <node concept="3cpWsn" id="hLFMmYS" role="3cpWs9">
            <property role="TrG5h" value="allStmts" />
            <node concept="_YKpA" id="i05vWsl" role="1tU5fm">
              <node concept="3Tqbb2" id="i05vWsm" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="hLFMmYV" role="33vP2m">
              <node concept="2Jqq0_" id="i0fejN1" role="2ShVmc">
                <node concept="3Tqbb2" id="hLFMmYX" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="hLFMmYY" role="3cqZAp">
          <node concept="3cpWsn" id="hLFMmYZ" role="3cpWs9">
            <property role="TrG5h" value="allThrows" />
            <node concept="_YKpA" id="i05vWhi" role="1tU5fm">
              <node concept="3Tqbb2" id="i05vWhj" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="hLFMmZ2" role="33vP2m">
              <node concept="Tc6Ow" id="i0fej6U" role="2ShVmc">
                <node concept="3Tqbb2" id="hLFMmZ4" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="25sdewUNOKn" role="3cqZAp">
          <node concept="3cpWsn" id="25sdewUNOKo" role="3cpWs9">
            <property role="TrG5h" value="allCatches" />
            <node concept="_YKpA" id="25sdewUNOKp" role="1tU5fm">
              <node concept="3Tqbb2" id="25sdewUNOKq" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="25sdewUNOKr" role="33vP2m">
              <node concept="Tc6Ow" id="25sdewUNOKs" role="2ShVmc">
                <node concept="3Tqbb2" id="25sdewUNOKt" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4S1mDSNUZ33" role="3cqZAp" />
        <node concept="1DcWWT" id="hLFMmZ5" role="3cqZAp">
          <node concept="3clFbS" id="hLFMmZ6" role="2LFqv$">
            <node concept="3clFbJ" id="hLFMmZ7" role="3cqZAp">
              <node concept="2OqwBi" id="hLFMmZ8" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTv5F" role="2Oq$k0">
                  <ref role="3cqZAo" node="hLFMmZO" resolve="c" />
                </node>
                <node concept="1mIQ4w" id="hLFMmZa" role="2OqNvi">
                  <node concept="chp4Y" id="hLFMmZb" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fzcpWvY" resolve="ReturnStatement" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="hLFMmZc" role="3clFbx">
                <node concept="3clFbF" id="hLFMmZd" role="3cqZAp">
                  <node concept="2OqwBi" id="hLFMmZe" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTsMj" role="2Oq$k0">
                      <ref role="3cqZAo" node="4S1mDSNUFN1" resolve="allRets" />
                    </node>
                    <node concept="TSZUe" id="i05w2jx" role="2OqNvi">
                      <node concept="1PxgMI" id="4S1mDSNV2od" role="25WWJ7">
                        <node concept="chp4Y" id="4S1mDSNV2v6" role="3oSUPX">
                          <ref role="cht4Q" to="tpee:fzcpWvY" resolve="ReturnStatement" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTtg3" role="1m5AlR">
                          <ref role="3cqZAo" node="hLFMmZO" resolve="c" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="hSA4VX8" role="3eNLev">
                <node concept="3clFbS" id="hSA4VXa" role="3eOfB_">
                  <node concept="3clFbF" id="hLFMmZk" role="3cqZAp">
                    <node concept="2OqwBi" id="hLFMmZl" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTyqf" role="2Oq$k0">
                        <ref role="3cqZAo" node="4S1mDSNUFOw" resolve="allYlds" />
                      </node>
                      <node concept="TSZUe" id="i05w2b2" role="2OqNvi">
                        <node concept="1PxgMI" id="4S1mDSNV2_Z" role="25WWJ7">
                          <node concept="chp4Y" id="4S1mDSNV2Fq" role="3oSUPX">
                            <ref role="cht4Q" to="tp2c:hun63U2" resolve="YieldStatement" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTyC$" role="1m5AlR">
                            <ref role="3cqZAo" node="hLFMmZO" resolve="c" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="hSA4Xyh" role="3eO9$A">
                  <node concept="37vLTw" id="3GM_nagTr2B" role="2Oq$k0">
                    <ref role="3cqZAo" node="hLFMmZO" resolve="c" />
                  </node>
                  <node concept="1mIQ4w" id="hSA4Xyj" role="2OqNvi">
                    <node concept="chp4Y" id="hSA4Xyk" role="cj9EA">
                      <ref role="cht4Q" to="tp2c:hun63U2" resolve="YieldStatement" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="hSA6yJt" role="3eNLev">
                <node concept="2OqwBi" id="hSA6$3t" role="3eO9$A">
                  <node concept="37vLTw" id="3GM_nagTtOQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="hLFMmZO" resolve="c" />
                  </node>
                  <node concept="1mIQ4w" id="hSA6$8G" role="2OqNvi">
                    <node concept="chp4Y" id="hSA6$Ie" role="cj9EA">
                      <ref role="cht4Q" to="tp2c:hS_Z6Lz" resolve="YieldAllStatement" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="hSA6yJv" role="3eOfB_">
                  <node concept="3clFbF" id="hSA6_LM" role="3cqZAp">
                    <node concept="2OqwBi" id="hSA6_XI" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTzYp" role="2Oq$k0">
                        <ref role="3cqZAo" node="4S1mDSNUFPd" resolve="allYldAlls" />
                      </node>
                      <node concept="TSZUe" id="i05w1Wd" role="2OqNvi">
                        <node concept="1PxgMI" id="4S1mDSNV2Mb" role="25WWJ7">
                          <node concept="chp4Y" id="4S1mDSNV2RA" role="3oSUPX">
                            <ref role="cht4Q" to="tp2c:hS_Z6Lz" resolve="YieldAllStatement" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTrWJ" role="1m5AlR">
                            <ref role="3cqZAo" node="hLFMmZO" resolve="c" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="hSA4vGg" role="3eNLev">
                <node concept="3fqX7Q" id="hLFMmZE" role="3eO9$A">
                  <node concept="2OqwBi" id="hLFMmZF" role="3fr31v">
                    <node concept="37vLTw" id="3GM_nagT$jB" role="2Oq$k0">
                      <ref role="3cqZAo" node="hLFMmZO" resolve="c" />
                    </node>
                    <node concept="1mIQ4w" id="hLFMmZH" role="2OqNvi">
                      <node concept="chp4Y" id="hLFMmZI" role="cj9EA">
                        <ref role="cht4Q" to="tpee:htgVS9_" resolve="IStatementListContainer" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="hLFMmZu" role="3eOfB_">
                  <node concept="3clFbF" id="hLFMmZv" role="3cqZAp">
                    <node concept="2OqwBi" id="hLFMmZw" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTswL" role="2Oq$k0">
                        <ref role="3cqZAo" node="hLFMmYS" resolve="allStmts" />
                      </node>
                      <node concept="2Ke9KJ" id="i05w2vn" role="2OqNvi">
                        <node concept="37vLTw" id="3GM_nagT_3L" role="25WWJ7">
                          <ref role="3cqZAo" node="hLFMmZO" resolve="c" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hLFMmZJ" role="1DdaDG">
            <node concept="2OqwBi" id="hLFMmZK" role="2Oq$k0">
              <node concept="3TrEf2" id="hLFMmZM" role="2OqNvi">
                <ref role="3Tt5mk" to="tp2c:htbW58J" resolve="body" />
              </node>
              <node concept="37vLTw" id="4S1mDSNV16T" role="2Oq$k0">
                <ref role="3cqZAo" node="4S1mDSNUxMG" resolve="closure" />
              </node>
            </node>
            <node concept="32TBzR" id="hLFMmZN" role="2OqNvi" />
          </node>
          <node concept="3cpWsn" id="hLFMmZO" role="1Duv9x">
            <property role="TrG5h" value="c" />
            <node concept="3Tqbb2" id="hLFMmZP" role="1tU5fm" />
          </node>
        </node>
        <node concept="2$JKZl" id="hLFMmZQ" role="3cqZAp">
          <node concept="3fqX7Q" id="hLFMmZR" role="2$JKZa">
            <node concept="2OqwBi" id="hLFMmZS" role="3fr31v">
              <node concept="37vLTw" id="3GM_nagTA6d" role="2Oq$k0">
                <ref role="3cqZAo" node="hLFMmYS" resolve="allStmts" />
              </node>
              <node concept="1v1jN8" id="i05w2sG" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbS" id="hLFMmZV" role="2LFqv$">
            <node concept="3cpWs8" id="hLFMmZW" role="3cqZAp">
              <node concept="3cpWsn" id="hLFMmZX" role="3cpWs9">
                <property role="TrG5h" value="stmt" />
                <node concept="3Tqbb2" id="hLFMmZY" role="1tU5fm" />
                <node concept="2OqwBi" id="hLFMmZZ" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagT_W8" role="2Oq$k0">
                    <ref role="3cqZAo" node="hLFMmYS" resolve="allStmts" />
                  </node>
                  <node concept="2Kt2Hk" id="i05w2y6" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="hLFMn02" role="3cqZAp">
              <node concept="3clFbS" id="hLFMn03" role="3clFbx">
                <node concept="3clFbF" id="4S1mDSNV2YX" role="3cqZAp">
                  <node concept="2OqwBi" id="4S1mDSNV2YY" role="3clFbG">
                    <node concept="37vLTw" id="4S1mDSNV2YZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="4S1mDSNUFN1" resolve="allRets" />
                    </node>
                    <node concept="TSZUe" id="4S1mDSNV2Z0" role="2OqNvi">
                      <node concept="1PxgMI" id="4S1mDSNV2Z1" role="25WWJ7">
                        <node concept="chp4Y" id="4S1mDSNV2Z2" role="3oSUPX">
                          <ref role="cht4Q" to="tpee:fzcpWvY" resolve="ReturnStatement" />
                        </node>
                        <node concept="37vLTw" id="4S1mDSNV3fY" role="1m5AlR">
                          <ref role="3cqZAo" node="hLFMmZX" resolve="stmt" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="hLFMn09" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTzgD" role="2Oq$k0">
                  <ref role="3cqZAo" node="hLFMmZX" resolve="stmt" />
                </node>
                <node concept="1mIQ4w" id="hLFMn0b" role="2OqNvi">
                  <node concept="chp4Y" id="hLFMn0c" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fzcpWvY" resolve="ReturnStatement" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="hSA6NX2" role="3eNLev">
                <node concept="3clFbS" id="hSA6NX4" role="3eOfB_">
                  <node concept="3clFbF" id="hSA6Sql" role="3cqZAp">
                    <node concept="2OqwBi" id="hSA6SAv" role="3clFbG">
                      <node concept="37vLTw" id="4S1mDSNVcnY" role="2Oq$k0">
                        <ref role="3cqZAo" node="4S1mDSNUFOw" resolve="allYlds" />
                      </node>
                      <node concept="TSZUe" id="i05w1Mi" role="2OqNvi">
                        <node concept="1PxgMI" id="4S1mDSNV3yB" role="25WWJ7">
                          <node concept="chp4Y" id="4S1mDSNVcdJ" role="3oSUPX">
                            <ref role="cht4Q" to="tp2c:hun63U2" resolve="YieldStatement" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTwfa" role="1m5AlR">
                            <ref role="3cqZAo" node="hLFMmZX" resolve="stmt" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="hSA6PLo" role="3eO9$A">
                  <node concept="37vLTw" id="3GM_nagTvc8" role="2Oq$k0">
                    <ref role="3cqZAo" node="hLFMmZX" resolve="stmt" />
                  </node>
                  <node concept="1mIQ4w" id="hSA6PLq" role="2OqNvi">
                    <node concept="chp4Y" id="4S1mDSNVciT" role="cj9EA">
                      <ref role="cht4Q" to="tp2c:hun63U2" resolve="YieldStatement" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="hLFMn0d" role="9aQIa">
                <node concept="3clFbS" id="hLFMn0e" role="3clFbx">
                  <node concept="3clFbF" id="hLFMn0f" role="3cqZAp">
                    <node concept="2OqwBi" id="hLFMn0g" role="3clFbG">
                      <node concept="37vLTw" id="4S1mDSNVcwo" role="2Oq$k0">
                        <ref role="3cqZAo" node="4S1mDSNUFPd" resolve="allYldAlls" />
                      </node>
                      <node concept="TSZUe" id="i05w20u" role="2OqNvi">
                        <node concept="1PxgMI" id="4S1mDSNVcC0" role="25WWJ7">
                          <node concept="chp4Y" id="4S1mDSNVcC9" role="3oSUPX">
                            <ref role="cht4Q" to="tp2c:hS_Z6Lz" resolve="YieldAllStatement" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTBtE" role="1m5AlR">
                            <ref role="3cqZAo" node="hLFMmZX" resolve="stmt" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="hLFMn0k" role="3clFbw">
                  <node concept="37vLTw" id="3GM_nagTzLv" role="2Oq$k0">
                    <ref role="3cqZAo" node="hLFMmZX" resolve="stmt" />
                  </node>
                  <node concept="1mIQ4w" id="hLFMn0m" role="2OqNvi">
                    <node concept="chp4Y" id="4S1mDSNVcH4" role="cj9EA">
                      <ref role="cht4Q" to="tp2c:hS_Z6Lz" resolve="YieldAllStatement" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="hLFMn0o" role="9aQIa">
                  <node concept="3clFbS" id="hLFMn0p" role="9aQI4">
                    <node concept="3clFbH" id="4S1mDSNUYiw" role="3cqZAp" />
                    <node concept="3clFbJ" id="hLFMn0q" role="3cqZAp">
                      <node concept="9aQIb" id="4KRMk4lFSsP" role="9aQIa">
                        <node concept="3clFbS" id="4KRMk4lFSsQ" role="9aQI4">
                          <node concept="1DcWWT" id="4KRMk4lFSse" role="3cqZAp">
                            <node concept="3clFbS" id="4KRMk4lFSsf" role="2LFqv$">
                              <node concept="3clFbF" id="4KRMk4lFSs_" role="3cqZAp">
                                <node concept="2OqwBi" id="4KRMk4lFSsA" role="3clFbG">
                                  <node concept="37vLTw" id="3GM_nagTtla" role="2Oq$k0">
                                    <ref role="3cqZAo" node="hLFMmYZ" resolve="allThrows" />
                                  </node>
                                  <node concept="TSZUe" id="4KRMk4lFSsC" role="2OqNvi">
                                    <node concept="2OqwBi" id="4KRMk4lFSsD" role="25WWJ7">
                                      <node concept="37vLTw" id="3GM_nagT$1G" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4KRMk4lFSsg" resolve="thr" />
                                      </node>
                                      <node concept="1$rogu" id="4KRMk4lFSsF" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWsn" id="4KRMk4lFSsg" role="1Duv9x">
                              <property role="TrG5h" value="thr" />
                              <node concept="3Tqbb2" id="4KRMk4lFSsh" role="1tU5fm">
                                <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4KRMk4lFSsi" role="1DdaDG">
                              <node concept="2OqwBi" id="4KRMk4lFSsj" role="2Oq$k0">
                                <node concept="37vLTw" id="3GM_nagTxS4" role="2Oq$k0">
                                  <ref role="3cqZAo" node="hLFMmZX" resolve="stmt" />
                                </node>
                                <node concept="2Rf3mk" id="4KRMk4lFSsl" role="2OqNvi">
                                  <node concept="1xMEDy" id="4KRMk4lFSsm" role="1xVPHs">
                                    <node concept="chp4Y" id="4KRMk4lFSsn" role="ri$Ld">
                                      <ref role="cht4Q" to="tpee:hxndl_i" resolve="IMethodCall" />
                                    </node>
                                  </node>
                                  <node concept="hTh3S" id="4KRMk4lFSso" role="1xVPHs">
                                    <node concept="3gn64h" id="4KRMk4lFSsp" role="hTh3Z">
                                      <ref role="3gnhBz" to="tpee:htgVS9_" resolve="IStatementListContainer" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3goQfb" id="4KRMk4lFSsq" role="2OqNvi">
                                <node concept="1bVj0M" id="4KRMk4lFSsr" role="23t8la">
                                  <node concept="3clFbS" id="4KRMk4lFSss" role="1bW5cS">
                                    <node concept="3clFbF" id="4KRMk4lFSst" role="3cqZAp">
                                      <node concept="2OqwBi" id="4KRMk4lFSsu" role="3clFbG">
                                        <node concept="2OqwBi" id="4KRMk4lFSsv" role="2Oq$k0">
                                          <node concept="37vLTw" id="2BHiRxghei9" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4KRMk4lFSsz" resolve="it" />
                                          </node>
                                          <node concept="3TrEf2" id="4KRMk4lFSsx" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpee:fz7wK6H" resolve="baseMethodDeclaration" />
                                          </node>
                                        </node>
                                        <node concept="2qgKlT" id="25sdewUNOLO" role="2OqNvi">
                                          <ref role="37wK5l" to="tpek:5op8ooRkkc7" resolve="getThrowableTypes" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="4KRMk4lFSsz" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="4KRMk4lFSs$" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3eNFk2" id="25sdewUNOKu" role="3eNLev">
                        <node concept="2OqwBi" id="25sdewUNOKy" role="3eO9$A">
                          <node concept="37vLTw" id="3GM_nagTwhu" role="2Oq$k0">
                            <ref role="3cqZAo" node="hLFMmZX" resolve="stmt" />
                          </node>
                          <node concept="1mIQ4w" id="25sdewUNOKA" role="2OqNvi">
                            <node concept="chp4Y" id="25sdewUNOKC" role="cj9EA">
                              <ref role="cht4Q" to="tpee:gMGUZlm" resolve="TryStatement" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="25sdewUNOKw" role="3eOfB_">
                          <node concept="1DcWWT" id="25sdewUNOLm" role="3cqZAp">
                            <node concept="3clFbS" id="25sdewUNOLn" role="2LFqv$">
                              <node concept="3clFbF" id="25sdewUNOLF" role="3cqZAp">
                                <node concept="2OqwBi" id="25sdewUNOLH" role="3clFbG">
                                  <node concept="37vLTw" id="3GM_nagT_oe" role="2Oq$k0">
                                    <ref role="3cqZAo" node="25sdewUNOKo" resolve="allCatches" />
                                  </node>
                                  <node concept="TSZUe" id="25sdewUNOLL" role="2OqNvi">
                                    <node concept="37vLTw" id="3GM_nagTzVg" role="25WWJ7">
                                      <ref role="3cqZAo" node="25sdewUNOLo" resolve="caught" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWsn" id="25sdewUNOLo" role="1Duv9x">
                              <property role="TrG5h" value="caught" />
                              <node concept="3Tqbb2" id="25sdewUNOLp" role="1tU5fm">
                                <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="25sdewUNOLq" role="1DdaDG">
                              <node concept="2OqwBi" id="25sdewUNSuS" role="2Oq$k0">
                                <node concept="2OqwBi" id="25sdewUNOLr" role="2Oq$k0">
                                  <node concept="1PxgMI" id="25sdewUNOLs" role="2Oq$k0">
                                    <node concept="37vLTw" id="3GM_nagTunH" role="1m5AlR">
                                      <ref role="3cqZAo" node="hLFMmZX" resolve="stmt" />
                                    </node>
                                    <node concept="chp4Y" id="714IaVdH09k" role="3oSUPX">
                                      <ref role="cht4Q" to="tpee:gMGUZlm" resolve="TryStatement" />
                                    </node>
                                  </node>
                                  <node concept="3Tsc0h" id="25sdewUNOLu" role="2OqNvi">
                                    <ref role="3TtcxE" to="tpee:gWTEX_W" resolve="catchClause" />
                                  </node>
                                </node>
                                <node concept="3zZkjj" id="25sdewUNSuW" role="2OqNvi">
                                  <node concept="1bVj0M" id="25sdewUNSuX" role="23t8la">
                                    <node concept="3clFbS" id="25sdewUNSuY" role="1bW5cS">
                                      <node concept="3clFbF" id="25sdewUNSv1" role="3cqZAp">
                                        <node concept="2OqwBi" id="25sdewUNSv8" role="3clFbG">
                                          <node concept="2OqwBi" id="25sdewUNSvf" role="2Oq$k0">
                                            <node concept="2OqwBi" id="25sdewUNSv3" role="2Oq$k0">
                                              <node concept="37vLTw" id="2BHiRxgmCMP" role="2Oq$k0">
                                                <ref role="3cqZAo" node="25sdewUNSuZ" resolve="it" />
                                              </node>
                                              <node concept="3TrEf2" id="25sdewUNSv7" role="2OqNvi">
                                                <ref role="3Tt5mk" to="tpee:gWTDEbL" resolve="throwable" />
                                              </node>
                                            </node>
                                            <node concept="3TrEf2" id="25sdewUNSvj" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                                            </node>
                                          </node>
                                          <node concept="1mIQ4w" id="25sdewUNSvc" role="2OqNvi">
                                            <node concept="chp4Y" id="25sdewUNSve" role="cj9EA">
                                              <ref role="cht4Q" to="tpee:g7uibYu" resolve="ClassifierType" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Rh6nW" id="25sdewUNSuZ" role="1bW2Oz">
                                      <property role="TrG5h" value="it" />
                                      <node concept="2jxLKc" id="25sdewUNSv0" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3$u5V9" id="25sdewUNOLv" role="2OqNvi">
                                <node concept="1bVj0M" id="25sdewUNOLw" role="23t8la">
                                  <node concept="3clFbS" id="25sdewUNOLx" role="1bW5cS">
                                    <node concept="3clFbF" id="25sdewUNOLy" role="3cqZAp">
                                      <node concept="1PxgMI" id="25sdewUNOLz" role="3clFbG">
                                        <property role="1BlNFB" value="true" />
                                        <node concept="2OqwBi" id="25sdewUNOL$" role="1m5AlR">
                                          <node concept="2OqwBi" id="25sdewUNOL_" role="2Oq$k0">
                                            <node concept="37vLTw" id="2BHiRxglJSZ" role="2Oq$k0">
                                              <ref role="3cqZAo" node="25sdewUNOLD" resolve="it" />
                                            </node>
                                            <node concept="3TrEf2" id="25sdewUNOLB" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpee:gWTDEbL" resolve="throwable" />
                                            </node>
                                          </node>
                                          <node concept="3TrEf2" id="25sdewUNOLC" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                                          </node>
                                        </node>
                                        <node concept="chp4Y" id="714IaVdH09o" role="3oSUPX">
                                          <ref role="cht4Q" to="tpee:g7uibYu" resolve="ClassifierType" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="25sdewUNOLD" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="25sdewUNOLE" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3eNFk2" id="47c85GApOr1" role="3eNLev">
                        <node concept="2OqwBi" id="47c85GApOr2" role="3eO9$A">
                          <node concept="37vLTw" id="3GM_nagTyWt" role="2Oq$k0">
                            <ref role="3cqZAo" node="hLFMmZX" resolve="stmt" />
                          </node>
                          <node concept="1mIQ4w" id="47c85GApOr4" role="2OqNvi">
                            <node concept="chp4Y" id="47c85GApOrK" role="cj9EA">
                              <ref role="cht4Q" to="tpee:gWSfAtL" resolve="TryCatchStatement" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="47c85GApOr6" role="3eOfB_">
                          <node concept="1DcWWT" id="47c85GApOr7" role="3cqZAp">
                            <node concept="3clFbS" id="47c85GApOr8" role="2LFqv$">
                              <node concept="3clFbF" id="47c85GApOr9" role="3cqZAp">
                                <node concept="2OqwBi" id="47c85GApOra" role="3clFbG">
                                  <node concept="37vLTw" id="3GM_nagTwx$" role="2Oq$k0">
                                    <ref role="3cqZAo" node="25sdewUNOKo" resolve="allCatches" />
                                  </node>
                                  <node concept="TSZUe" id="47c85GApOrc" role="2OqNvi">
                                    <node concept="37vLTw" id="3GM_nagTAz1" role="25WWJ7">
                                      <ref role="3cqZAo" node="47c85GApOre" resolve="caught" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWsn" id="47c85GApOre" role="1Duv9x">
                              <property role="TrG5h" value="caught" />
                              <node concept="3Tqbb2" id="47c85GApOrf" role="1tU5fm">
                                <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="47c85GApOrg" role="1DdaDG">
                              <node concept="2OqwBi" id="47c85GApOrh" role="2Oq$k0">
                                <node concept="2OqwBi" id="47c85GApOri" role="2Oq$k0">
                                  <node concept="1PxgMI" id="47c85GApOrj" role="2Oq$k0">
                                    <node concept="37vLTw" id="3GM_nagTB6l" role="1m5AlR">
                                      <ref role="3cqZAo" node="hLFMmZX" resolve="stmt" />
                                    </node>
                                    <node concept="chp4Y" id="714IaVdH08z" role="3oSUPX">
                                      <ref role="cht4Q" to="tpee:gWSfAtL" resolve="TryCatchStatement" />
                                    </node>
                                  </node>
                                  <node concept="3Tsc0h" id="47c85GApOrL" role="2OqNvi">
                                    <ref role="3TtcxE" to="tpee:gWTEbCv" resolve="catchClause" />
                                  </node>
                                </node>
                                <node concept="3zZkjj" id="47c85GApOrm" role="2OqNvi">
                                  <node concept="1bVj0M" id="47c85GApOrn" role="23t8la">
                                    <node concept="3clFbS" id="47c85GApOro" role="1bW5cS">
                                      <node concept="3clFbF" id="47c85GApOrp" role="3cqZAp">
                                        <node concept="2OqwBi" id="47c85GApOrq" role="3clFbG">
                                          <node concept="2OqwBi" id="47c85GApOrr" role="2Oq$k0">
                                            <node concept="2OqwBi" id="47c85GApOrs" role="2Oq$k0">
                                              <node concept="37vLTw" id="2BHiRxgmwW0" role="2Oq$k0">
                                                <ref role="3cqZAo" node="47c85GApOry" resolve="it" />
                                              </node>
                                              <node concept="3TrEf2" id="47c85GApOru" role="2OqNvi">
                                                <ref role="3Tt5mk" to="tpee:gWTDEbL" resolve="throwable" />
                                              </node>
                                            </node>
                                            <node concept="3TrEf2" id="47c85GApOrv" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                                            </node>
                                          </node>
                                          <node concept="1mIQ4w" id="47c85GApOrw" role="2OqNvi">
                                            <node concept="chp4Y" id="47c85GApOrx" role="cj9EA">
                                              <ref role="cht4Q" to="tpee:g7uibYu" resolve="ClassifierType" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Rh6nW" id="47c85GApOry" role="1bW2Oz">
                                      <property role="TrG5h" value="it" />
                                      <node concept="2jxLKc" id="47c85GApOrz" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3$u5V9" id="47c85GApOr$" role="2OqNvi">
                                <node concept="1bVj0M" id="47c85GApOr_" role="23t8la">
                                  <node concept="3clFbS" id="47c85GApOrA" role="1bW5cS">
                                    <node concept="3clFbF" id="47c85GApOrB" role="3cqZAp">
                                      <node concept="1PxgMI" id="47c85GApOrC" role="3clFbG">
                                        <property role="1BlNFB" value="true" />
                                        <node concept="2OqwBi" id="47c85GApOrD" role="1m5AlR">
                                          <node concept="2OqwBi" id="47c85GApOrE" role="2Oq$k0">
                                            <node concept="37vLTw" id="2BHiRxglqOK" role="2Oq$k0">
                                              <ref role="3cqZAo" node="47c85GApOrI" resolve="it" />
                                            </node>
                                            <node concept="3TrEf2" id="47c85GApOrG" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpee:gWTDEbL" resolve="throwable" />
                                            </node>
                                          </node>
                                          <node concept="3TrEf2" id="47c85GApOrH" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                                          </node>
                                        </node>
                                        <node concept="chp4Y" id="714IaVdH09p" role="3oSUPX">
                                          <ref role="cht4Q" to="tpee:g7uibYu" resolve="ClassifierType" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="47c85GApOrI" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="47c85GApOrJ" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="hLFMn0r" role="3clFbx">
                        <node concept="3clFbF" id="hLFMn0A" role="3cqZAp">
                          <node concept="2OqwBi" id="hLFMn0B" role="3clFbG">
                            <node concept="37vLTw" id="3GM_nagTvwL" role="2Oq$k0">
                              <ref role="3cqZAo" node="hLFMmYZ" resolve="allThrows" />
                            </node>
                            <node concept="TSZUe" id="i05w1Qu" role="2OqNvi">
                              <node concept="37vLTw" id="4S1mDSNUYS9" role="25WWJ7">
                                <ref role="3cqZAo" node="hLFMmZX" resolve="stmt" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="hLFMn0F" role="3clFbw">
                        <node concept="37vLTw" id="3GM_nagTsck" role="2Oq$k0">
                          <ref role="3cqZAo" node="hLFMmZX" resolve="stmt" />
                        </node>
                        <node concept="1mIQ4w" id="hLFMn0H" role="2OqNvi">
                          <node concept="chp4Y" id="hLFMn0I" role="cj9EA">
                            <ref role="cht4Q" to="tpee:gWYS8bo" resolve="ThrowStatement" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="4S1mDSNUYXw" role="3cqZAp" />
                    <node concept="3cpWs8" id="i0k7gEG" role="3cqZAp">
                      <node concept="3cpWsn" id="i0k7gEH" role="3cpWs9">
                        <property role="TrG5h" value="allChildren" />
                        <node concept="_YKpA" id="i0k7gEI" role="1tU5fm">
                          <node concept="3Tqbb2" id="i0k7ht5" role="_ZDj9" />
                        </node>
                        <node concept="2ShNRf" id="i0k7Syt" role="33vP2m">
                          <node concept="2Jqq0_" id="i0k7Syu" role="2ShVmc">
                            <node concept="3Tqbb2" id="i0k7Syv" role="HW$YZ" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="i0k8tdV" role="3cqZAp">
                      <node concept="2OqwBi" id="i0k8tF2" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTs9W" role="2Oq$k0">
                          <ref role="3cqZAo" node="i0k7gEH" resolve="allChildren" />
                        </node>
                        <node concept="X8dFx" id="i0k8ur_" role="2OqNvi">
                          <node concept="2OqwBi" id="i0k8xU6" role="25WWJ7">
                            <node concept="37vLTw" id="3GM_nagTtFi" role="2Oq$k0">
                              <ref role="3cqZAo" node="hLFMmZX" resolve="stmt" />
                            </node>
                            <node concept="32TBzR" id="i0k8y7I" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2$JKZl" id="i0k9oDE" role="3cqZAp">
                      <node concept="2OqwBi" id="i0k9qA_" role="2$JKZa">
                        <node concept="37vLTw" id="3GM_nagTzUC" role="2Oq$k0">
                          <ref role="3cqZAo" node="i0k7gEH" resolve="allChildren" />
                        </node>
                        <node concept="3GX2aA" id="i0k9rtC" role="2OqNvi" />
                      </node>
                      <node concept="3clFbS" id="i0k9oDG" role="2LFqv$">
                        <node concept="3cpWs8" id="i0k9trd" role="3cqZAp">
                          <node concept="3cpWsn" id="i0k9tre" role="3cpWs9">
                            <property role="TrG5h" value="c" />
                            <node concept="3Tqbb2" id="i0k9trf" role="1tU5fm" />
                            <node concept="2OqwBi" id="i0k9uGS" role="33vP2m">
                              <node concept="37vLTw" id="3GM_nagTsz$" role="2Oq$k0">
                                <ref role="3cqZAo" node="i0k7gEH" resolve="allChildren" />
                              </node>
                              <node concept="2Kt2Hk" id="i0k9vnn" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="hLFMn17" role="3cqZAp">
                          <node concept="3clFbS" id="hLFMn18" role="3clFbx">
                            <node concept="1DcWWT" id="hLFMn19" role="3cqZAp">
                              <node concept="3clFbS" id="hLFMn1a" role="2LFqv$">
                                <node concept="3clFbJ" id="hLFMn1b" role="3cqZAp">
                                  <node concept="3clFbS" id="hLFMn1c" role="3clFbx">
                                    <node concept="3clFbF" id="hLFMn1d" role="3cqZAp">
                                      <node concept="2OqwBi" id="hLFMn1e" role="3clFbG">
                                        <node concept="37vLTw" id="3GM_nagT$nd" role="2Oq$k0">
                                          <ref role="3cqZAo" node="hLFMmYS" resolve="allStmts" />
                                        </node>
                                        <node concept="2Ke9KJ" id="i05w2ww" role="2OqNvi">
                                          <node concept="37vLTw" id="3GM_nagTyFU" role="25WWJ7">
                                            <ref role="3cqZAo" node="hLFMn1x" resolve="cstmt" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3fqX7Q" id="hLFMn1o" role="3clFbw">
                                    <node concept="2OqwBi" id="hLFMn1p" role="3fr31v">
                                      <node concept="37vLTw" id="3GM_nagTs_A" role="2Oq$k0">
                                        <ref role="3cqZAo" node="hLFMn1x" resolve="cstmt" />
                                      </node>
                                      <node concept="1mIQ4w" id="hLFMn1r" role="2OqNvi">
                                        <node concept="chp4Y" id="hLFMn1s" role="cj9EA">
                                          <ref role="cht4Q" to="tpee:htgVS9_" resolve="IStatementListContainer" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="hLFMn1t" role="1DdaDG">
                                <node concept="1PxgMI" id="hLFMn1u" role="2Oq$k0">
                                  <node concept="37vLTw" id="3GM_nagTBS3" role="1m5AlR">
                                    <ref role="3cqZAo" node="i0k9tre" resolve="c" />
                                  </node>
                                  <node concept="chp4Y" id="714IaVdH08b" role="3oSUPX">
                                    <ref role="cht4Q" to="tpee:fzclF80" resolve="StatementList" />
                                  </node>
                                </node>
                                <node concept="3Tsc0h" id="hLFMn1w" role="2OqNvi">
                                  <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                                </node>
                              </node>
                              <node concept="3cpWsn" id="hLFMn1x" role="1Duv9x">
                                <property role="TrG5h" value="cstmt" />
                                <node concept="3Tqbb2" id="hLFMn1y" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="hLFMn1z" role="3clFbw">
                            <node concept="37vLTw" id="3GM_nagT_Z2" role="2Oq$k0">
                              <ref role="3cqZAo" node="i0k9tre" resolve="c" />
                            </node>
                            <node concept="1mIQ4w" id="hLFMn1_" role="2OqNvi">
                              <node concept="chp4Y" id="hLFMn1A" role="cj9EA">
                                <ref role="cht4Q" to="tpee:fzclF80" resolve="StatementList" />
                              </node>
                            </node>
                          </node>
                          <node concept="3eNFk2" id="i0p5okJ" role="3eNLev">
                            <node concept="3fqX7Q" id="i0p5zS$" role="3eO9$A">
                              <node concept="2OqwBi" id="i0p5$vf" role="3fr31v">
                                <node concept="37vLTw" id="3GM_nagT_Y5" role="2Oq$k0">
                                  <ref role="3cqZAo" node="i0k9tre" resolve="c" />
                                </node>
                                <node concept="1mIQ4w" id="i0p5_bS" role="2OqNvi">
                                  <node concept="chp4Y" id="i0p5EiC" role="cj9EA">
                                    <ref role="cht4Q" to="tpee:htgVS9_" resolve="IStatementListContainer" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="i0p5okL" role="3eOfB_">
                              <node concept="3clFbF" id="i0p5okM" role="3cqZAp">
                                <node concept="2OqwBi" id="i0p5okN" role="3clFbG">
                                  <node concept="37vLTw" id="3GM_nagTyaU" role="2Oq$k0">
                                    <ref role="3cqZAo" node="i0k7gEH" resolve="allChildren" />
                                  </node>
                                  <node concept="X8dFx" id="i0p5okP" role="2OqNvi">
                                    <node concept="2OqwBi" id="i0p5okQ" role="25WWJ7">
                                      <node concept="37vLTw" id="3GM_nagTyoy" role="2Oq$k0">
                                        <ref role="3cqZAo" node="i0k9tre" resolve="c" />
                                      </node>
                                      <node concept="32TBzR" id="i0p5okS" role="2OqNvi" />
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
        <node concept="3clFbH" id="4S1mDSNUJGh" role="3cqZAp" />
      </node>
      <node concept="3Tm1VV" id="4S1mDSNUxM3" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="4S1mDSNUxux" role="1B3o_S" />
  </node>
</model>

