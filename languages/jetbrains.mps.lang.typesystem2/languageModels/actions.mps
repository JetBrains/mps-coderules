<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:04847532-40d8-4c13-804f-12fbbdc25fa9(jetbrains.mps.lang.typesystem2.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="-1" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="ykok" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.constraints(MPS.Core/)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="inbo" ref="r:22db907b-8239-4180-8797-e91cea0b9573(jetbrains.mps.smodel.search)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1161622665029" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_model" flags="nn" index="1Q6Npb" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
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
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
      <concept id="1196433923911" name="jetbrains.mps.lang.actions.structure.SideTransform_SimpleString" flags="nn" index="2h1dTh">
        <property id="1196433942569" name="text" index="2h1i$Z" />
      </concept>
      <concept id="1177323996388" name="jetbrains.mps.lang.actions.structure.AddMenuPart" flags="ng" index="tYCnQ" />
      <concept id="1177327570013" name="jetbrains.mps.lang.actions.structure.QueryFunction_Substitute_Handler" flags="in" index="ucgPf" />
      <concept id="1177327666243" name="jetbrains.mps.lang.actions.structure.SimpleItemSubstitutePart" flags="ng" index="ucClh">
        <child id="1177327709106" name="handler" index="ucMEw" />
        <child id="1177336013307" name="matchingText" index="uGu3D" />
      </concept>
      <concept id="1177333529597" name="jetbrains.mps.lang.actions.structure.ConceptPart" flags="ng" index="uyZFJ">
        <reference id="1177333551023" name="concept" index="uz4UX" />
        <child id="1177333559040" name="part" index="uz6Si" />
      </concept>
      <concept id="1177335944525" name="jetbrains.mps.lang.actions.structure.QueryFunction_SubstituteString" flags="in" index="uGdhv" />
      <concept id="1177337641126" name="jetbrains.mps.lang.actions.structure.ParameterizedSubstituteMenuPart" flags="ng" index="uMFAO">
        <child id="1177337679534" name="type" index="uMOYW" />
        <child id="1177338017561" name="query" index="uO7ob" />
        <child id="1177339176647" name="matchingText" index="uSyvl" />
        <child id="1177339421668" name="handler" index="uTubQ" />
      </concept>
      <concept id="1177337833147" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_parameterObject" flags="nn" index="uNquD" />
      <concept id="1177337890340" name="jetbrains.mps.lang.actions.structure.QueryFunction_ParameterizedSubstitute_Query" flags="in" index="uNCsQ" />
      <concept id="1177339114370" name="jetbrains.mps.lang.actions.structure.QueryFunction_ParameterizedSubstitute_String" flags="in" index="uSjag" />
      <concept id="1177339225103" name="jetbrains.mps.lang.actions.structure.QueryFunction_ParameterizedSubstitute_Handler" flags="in" index="uSIkt" />
      <concept id="1177402519659" name="jetbrains.mps.lang.actions.structure.WrapperSubstituteMenuPart" flags="ng" index="yEb5T">
        <reference id="1177402731616" name="wrappedConcept" index="yEYPM" />
        <child id="1177402719158" name="wrapperBlock" index="yEVE$" />
      </concept>
      <concept id="1177402571666" name="jetbrains.mps.lang.actions.structure.QueryFunction_SubstituteWrapper" flags="in" index="yEnE0" />
      <concept id="1177402641904" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_nodeToWrap" flags="nn" index="yECNy" />
      <concept id="1177409831820" name="jetbrains.mps.lang.actions.structure.RemovePart" flags="ng" index="z64au">
        <reference id="1177409838946" name="conceptToRemove" index="z65TK" />
      </concept>
      <concept id="1177497140107" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_sourceNode" flags="nn" index="Cj7Ep" />
      <concept id="1177498013932" name="jetbrains.mps.lang.actions.structure.SimpleSideTransformMenuPart" flags="ng" index="Cmt7Y">
        <child id="1177498166690" name="matchingText" index="Cn2iK" />
        <child id="1177498207384" name="handler" index="Cncma" />
      </concept>
      <concept id="1177498227294" name="jetbrains.mps.lang.actions.structure.QueryFunction_SideTransform_Handler" flags="in" index="Cnhdc" />
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
      <concept id="5480835971642155304" name="jetbrains.mps.lang.actions.structure.NF_Model_CreateNewNodeOperation" flags="nn" index="15TzpJ" />
      <concept id="1158700664498" name="jetbrains.mps.lang.actions.structure.NodeFactories" flags="ng" index="37WguZ">
        <child id="1158700779049" name="nodeFactory" index="37WGs$" />
      </concept>
      <concept id="1158700725281" name="jetbrains.mps.lang.actions.structure.NodeFactory" flags="ig" index="37WvkG">
        <reference id="1158700943156" name="applicableConcept" index="37XkoT" />
        <child id="1158701448518" name="setupFunction" index="37ZfLb" />
      </concept>
      <concept id="1158701162220" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction" flags="in" index="37Y9Zx" />
      <concept id="1154465102724" name="jetbrains.mps.lang.actions.structure.NodeSubstitutePreconditionFunction" flags="in" index="3buRE8" />
      <concept id="1154465273778" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_parentNode" flags="nn" index="3bvxqY" />
      <concept id="1154622616118" name="jetbrains.mps.lang.actions.structure.SideTransformHintSubstitutePreconditionFunction" flags="in" index="3kRJcU" />
      <concept id="1214830969967" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_wrapped" flags="nn" index="3p$olP" />
      <concept id="5584396657084912703" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_NewNode" flags="nn" index="1r4Lsj" />
      <concept id="1112056943463" name="jetbrains.mps.lang.actions.structure.NodeSubstituteActions" flags="ng" index="3FK_9_">
        <child id="1112058057696" name="actionsBuilder" index="3FOPby" />
      </concept>
      <concept id="1112058030570" name="jetbrains.mps.lang.actions.structure.NodeSubstituteActionsBuilder" flags="ig" index="3FOIzC">
        <reference id="1112058088712" name="applicableConcept" index="3FOWKa" />
        <child id="1177324142645" name="part" index="tZc4B" />
        <child id="1154465386371" name="precondition" index="3bvWUf" />
      </concept>
      <concept id="1138079221458" name="jetbrains.mps.lang.actions.structure.SideTransformHintSubstituteActionsBuilder" flags="ig" index="3UNGvq">
        <property id="1140829165817" name="transformTag" index="2uHTBK" />
        <reference id="1138079221462" name="applicableConcept" index="3UNGvu" />
        <child id="1177442283389" name="part" index="_1QTJ" />
        <child id="1154622757656" name="precondition" index="3kShCk" />
      </concept>
      <concept id="1138079416598" name="jetbrains.mps.lang.actions.structure.SideTransformHintSubstituteActions" flags="ng" index="3UOs0u">
        <child id="1138079416599" name="actionsBuilder" index="3UOs0v" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="5253134957341697434" name="jetbrains.mps.lang.smodel.structure.LinkNameRefExpression" flags="nn" index="prKvN">
        <reference id="5253134957341833005" name="conceptDeclaration" index="prhl4" />
        <reference id="5253134957341833006" name="linkDeclaration" index="prhl7" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="1143235216708" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewNodeOperation" flags="nn" index="I8ghe">
        <reference id="1143235391024" name="concept" index="I8UWU" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt">
        <reference id="1139877738879" name="concept" index="1A0vxQ" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="5944356402132808754" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatementCase" flags="ng" index="1_3QMl">
        <child id="1163670677455" name="concept" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1219352745532" name="jetbrains.mps.lang.smodel.structure.NodeRefExpression" flags="nn" index="3B5_sB">
        <reference id="1219352800908" name="referentNode" index="3B5MYn" />
      </concept>
      <concept id="1172323065820" name="jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation" flags="nn" index="3NT_Vc" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
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
      <concept id="1172424058054" name="jetbrains.mps.lang.smodel.structure.ConceptRefExpression" flags="nn" index="3TUQnm">
        <reference id="1172424100906" name="conceptDeclaration" index="3TV0OU" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
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
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="3FK_9_" id="6p0DfM0ptZb">
    <property role="TrG5h" value="Statement_wrap_AbstractConstraint_EmitConstraintStatement" />
    <node concept="3FOIzC" id="6p0DfM0pu2x" role="3FOPby">
      <ref role="3FOWKa" to="tpee:fzclF8l" resolve="Statement" />
      <node concept="tYCnQ" id="6p0DfM0pu5V" role="tZc4B">
        <ref role="uz4UX" to="wq2x:6p0DfM0a6KG" resolve="EmitConstraintStatement" />
        <node concept="yEb5T" id="7ksQUDZnVz2" role="uz6Si">
          <ref role="yEYPM" to="wq2x:6p0DfM0ajMA" resolve="AbstractConstraint" />
          <node concept="yEnE0" id="7ksQUDZnVz4" role="yEVE$">
            <node concept="3clFbS" id="7ksQUDZnVz6" role="2VODD2">
              <node concept="3cpWs8" id="7ksQUDZnWXh" role="3cqZAp">
                <node concept="3cpWsn" id="7ksQUDZnWXi" role="3cpWs9">
                  <property role="TrG5h" value="ecs" />
                  <node concept="3Tqbb2" id="7ksQUDZnWXg" role="1tU5fm">
                    <ref role="ehGHo" to="wq2x:6p0DfM0a6KG" resolve="EmitConstraintStatement" />
                  </node>
                  <node concept="2ShNRf" id="7ksQUDZnWXj" role="33vP2m">
                    <node concept="3zrR0B" id="7ksQUDZnWXk" role="2ShVmc">
                      <node concept="3Tqbb2" id="7ksQUDZnWXl" role="3zrR0E">
                        <ref role="ehGHo" to="wq2x:6p0DfM0a6KG" resolve="EmitConstraintStatement" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7ksQUDZnVAO" role="3cqZAp">
                <node concept="2OqwBi" id="7ksQUDZo4uh" role="3clFbG">
                  <node concept="2OqwBi" id="7ksQUDZnX4a" role="2Oq$k0">
                    <node concept="37vLTw" id="7ksQUDZnWXm" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ksQUDZnWXi" resolve="ecs" />
                    </node>
                    <node concept="3TrEf2" id="7ksQUDZo41F" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:6p0DfM0ajKO" />
                    </node>
                  </node>
                  <node concept="2oxUTD" id="7ksQUDZo4GA" role="2OqNvi">
                    <node concept="yECNy" id="7ksQUDZo4Kn" role="2oxUTC" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7ksQUDZo4PF" role="3cqZAp">
                <node concept="37vLTw" id="7ksQUDZo4PD" role="3clFbG">
                  <ref role="3cqZAo" node="7ksQUDZnWXi" resolve="ecs" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3FK_9_" id="2E5lcNmZaq$">
    <property role="TrG5h" value="Expression_subst_LogicExpressionWrapper" />
    <node concept="3FOIzC" id="2E5lcNmZayb" role="3FOPby">
      <ref role="3FOWKa" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="tYCnQ" id="2E5lcNmZdbU" role="tZc4B">
        <ref role="uz4UX" to="wq2x:6p0DfM0pKSO" resolve="LogicalExpression" />
        <node concept="uMFAO" id="7ksQUDZs6LK" role="uz6Si">
          <node concept="3Tqbb2" id="7ksQUDZsaPa" role="uMOYW" />
          <node concept="uSIkt" id="7ksQUDZs6LO" role="uTubQ">
            <node concept="3clFbS" id="7ksQUDZs6LQ" role="2VODD2">
              <node concept="3cpWs8" id="7ksQUDZr_QJ" role="3cqZAp">
                <node concept="3cpWsn" id="7ksQUDZr_QK" role="3cpWs9">
                  <property role="TrG5h" value="lew" />
                  <node concept="3Tqbb2" id="7ksQUDZr_QI" role="1tU5fm">
                    <ref role="ehGHo" to="wq2x:6p0DfM0pKSO" resolve="LogicalExpression" />
                  </node>
                  <node concept="2OqwBi" id="7ksQUDZr_QL" role="33vP2m">
                    <node concept="1Q6Npb" id="7ksQUDZr_QM" role="2Oq$k0" />
                    <node concept="15TzpJ" id="7ksQUDZswYj" role="2OqNvi">
                      <ref role="I8UWU" to="wq2x:6p0DfM0pKSO" resolve="LogicalExpression" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7ksQUDZscxd" role="3cqZAp">
                <node concept="3cpWsn" id="7ksQUDZscxe" role="3cpWs9">
                  <property role="TrG5h" value="lvr" />
                  <node concept="3Tqbb2" id="7ksQUDZscxc" role="1tU5fm">
                    <ref role="ehGHo" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariableReference" />
                  </node>
                  <node concept="2OqwBi" id="7ksQUDZscxf" role="33vP2m">
                    <node concept="1Q6Npb" id="7ksQUDZscxg" role="2Oq$k0" />
                    <node concept="15TzpJ" id="7ksQUDZscxh" role="2OqNvi">
                      <ref role="I8UWU" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariableReference" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7ksQUDZr_Da" role="3cqZAp">
                <node concept="2OqwBi" id="7ksQUDZrAez" role="3clFbG">
                  <node concept="2OqwBi" id="7ksQUDZr_Vy" role="2Oq$k0">
                    <node concept="37vLTw" id="7ksQUDZr_QO" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ksQUDZr_QK" resolve="lew" />
                    </node>
                    <node concept="3TrEf2" id="7ksQUDZrA3Y" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:6p0DfM0pQge" />
                    </node>
                  </node>
                  <node concept="2oxUTD" id="7ksQUDZrAs8" role="2OqNvi">
                    <node concept="37vLTw" id="7ksQUDZscxi" role="2oxUTC">
                      <ref role="3cqZAo" node="7ksQUDZscxe" resolve="lvr" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7ksQUDZscFs" role="3cqZAp">
                <node concept="2OqwBi" id="7ksQUDZsdar" role="3clFbG">
                  <node concept="2OqwBi" id="7ksQUDZscJl" role="2Oq$k0">
                    <node concept="37vLTw" id="7ksQUDZscFq" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ksQUDZscxe" resolve="lvr" />
                    </node>
                    <node concept="3TrEf2" id="7ksQUDZscVI" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:7E86$tK_PaH" />
                    </node>
                  </node>
                  <node concept="2oxUTD" id="7ksQUDZsds9" role="2OqNvi">
                    <node concept="uNquD" id="7ksQUDZsdun" role="2oxUTC" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7ksQUDZrAzK" role="3cqZAp">
                <node concept="37vLTw" id="7ksQUDZrAzI" role="3clFbG">
                  <ref role="3cqZAo" node="7ksQUDZr_QK" resolve="lew" />
                </node>
              </node>
            </node>
          </node>
          <node concept="uNCsQ" id="7ksQUDZs6LS" role="uO7ob">
            <node concept="3clFbS" id="7ksQUDZs6LU" role="2VODD2">
              <node concept="3SKdUt" id="7ksQUDZszzQ" role="3cqZAp">
                <node concept="3SKdUq" id="7ksQUDZszDg" role="3SKWNk">
                  <property role="3SKdUp" value="see ChildSubstituteActionsHelper" />
                </node>
              </node>
              <node concept="3cpWs8" id="7ksQUDZstKV" role="3cqZAp">
                <node concept="3cpWsn" id="7ksQUDZstKW" role="3cpWs9">
                  <property role="TrG5h" value="srd" />
                  <node concept="3uibUv" id="7ksQUDZstKS" role="1tU5fm">
                    <ref role="3uigEE" to="ykok:~ReferenceDescriptor" resolve="ReferenceDescriptor" />
                  </node>
                  <node concept="2YIFZM" id="7ksQUDZstKX" role="33vP2m">
                    <ref role="37wK5l" to="ykok:~ModelConstraints.getSmartReferenceDescriptor(org.jetbrains.mps.openapi.model.SNode,java.lang.String,int,org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.smodel.constraints.ReferenceDescriptor" resolve="getSmartReferenceDescriptor" />
                    <ref role="1Pybhc" to="ykok:~ModelConstraints" resolve="ModelConstraints" />
                    <node concept="3bvxqY" id="7ksQUDZstKY" role="37wK5m" />
                    <node concept="prKvN" id="7ksQUDZstKZ" role="37wK5m">
                      <ref role="prhl4" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariableReference" />
                      <ref role="prhl7" to="5j4j:7E86$tK_PaH" />
                    </node>
                    <node concept="3cmrfG" id="7ksQUDZstL0" role="37wK5m">
                      <property role="3cmrfH" value="-1" />
                    </node>
                    <node concept="3TUQnm" id="7ksQUDZstL1" role="37wK5m">
                      <ref role="3TV0OU" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariableReference" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7ksQUDZs9GV" role="3cqZAp">
                <node concept="10QFUN" id="7ksQUDZsbed" role="3clFbG">
                  <node concept="A3Dl8" id="7ksQUDZsbne" role="10QFUM">
                    <node concept="3Tqbb2" id="7ksQUDZsbuk" role="A3Ik2" />
                  </node>
                  <node concept="2OqwBi" id="7ksQUDZsbei" role="10QFUP">
                    <node concept="2OqwBi" id="7ksQUDZsE0W" role="2Oq$k0">
                      <node concept="37vLTw" id="7ksQUDZsE0X" role="2Oq$k0">
                        <ref role="3cqZAo" node="7ksQUDZstKW" resolve="srd" />
                      </node>
                      <node concept="liA8E" id="7ksQUDZsE0Y" role="2OqNvi">
                        <ref role="37wK5l" to="ykok:~ReferenceDescriptor.getScope():jetbrains.mps.scope.Scope" resolve="getScope" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7ksQUDZsbek" role="2OqNvi">
                      <ref role="37wK5l" to="35tq:~Scope.getAvailableElements(java.lang.String):java.lang.Iterable" resolve="getAvailableElements" />
                      <node concept="Xl_RD" id="7ksQUDZsbel" role="37wK5m">
                        <property role="Xl_RC" value="" />
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
  <node concept="3UOs0u" id="2E5lcNn1a8i">
    <property role="TrG5h" value="Head_replace" />
    <property role="3GE5qa" value="rule.component" />
    <node concept="3UNGvq" id="2E5lcNn1af0" role="3UOs0v">
      <property role="2uHTBK" value="ext_1_RTransform" />
      <ref role="3UNGvu" to="wq2x:6p0DfM0a3gA" resolve="Head" />
      <node concept="3kRJcU" id="2E5lcNn1aAJ" role="3kShCk">
        <node concept="3clFbS" id="2E5lcNn1aAK" role="2VODD2">
          <node concept="3clFbF" id="2E5lcNn1aNs" role="3cqZAp">
            <node concept="2OqwBi" id="2E5lcNn1aVX" role="3clFbG">
              <node concept="Cj7Ep" id="2E5lcNn1aNr" role="2Oq$k0" />
              <node concept="3TrcHB" id="2E5lcNn1bgY" role="2OqNvi">
                <ref role="3TsBF5" to="wq2x:6p0DfM0bSv$" resolve="keep" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="tYCnQ" id="2E5lcNn1buB" role="_1QTJ">
        <ref role="uz4UX" to="wq2x:6p0DfM0a3gA" resolve="Head" />
        <node concept="Cmt7Y" id="2E5lcNn1bHF" role="uz6Si">
          <node concept="Cnhdc" id="2E5lcNn1bHG" role="Cncma">
            <node concept="3clFbS" id="2E5lcNn1bHH" role="2VODD2">
              <node concept="3clFbF" id="2E5lcNn1bRc" role="3cqZAp">
                <node concept="37vLTI" id="2E5lcNn1cut" role="3clFbG">
                  <node concept="3clFbT" id="2E5lcNn1cxI" role="37vLTx">
                    <property role="3clFbU" value="false" />
                  </node>
                  <node concept="2OqwBi" id="2E5lcNn1bUT" role="37vLTJ">
                    <node concept="Cj7Ep" id="2E5lcNn1bRb" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2E5lcNn1c5z" role="2OqNvi">
                      <ref role="3TsBF5" to="wq2x:6p0DfM0bSv$" resolve="keep" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2E5lcNn1cQO" role="3cqZAp">
                <node concept="Cj7Ep" id="2E5lcNn1cQM" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="2h1dTh" id="2E5lcNn1bNd" role="Cn2iK">
            <property role="2h1i$Z" value="and discard" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="37WguZ" id="2E5lcNn1UqB">
    <property role="3GE5qa" value="rule.component" />
    <property role="TrG5h" value="Head_createNew" />
    <node concept="37WvkG" id="2E5lcNn1UqC" role="37WGs$">
      <ref role="37XkoT" to="wq2x:6p0DfM0a3gA" resolve="Head" />
      <node concept="37Y9Zx" id="2E5lcNn1Uu1" role="37ZfLb">
        <node concept="3clFbS" id="2E5lcNn1Uu2" role="2VODD2">
          <node concept="3clFbF" id="2E5lcNn1U$0" role="3cqZAp">
            <node concept="37vLTI" id="2E5lcNn1Zvn" role="3clFbG">
              <node concept="3clFbT" id="2E5lcNn1ZDh" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="2E5lcNn1UAr" role="37vLTJ">
                <node concept="1r4Lsj" id="2E5lcNn1UzZ" role="2Oq$k0" />
                <node concept="3TrcHB" id="2E5lcNn1Z5M" role="2OqNvi">
                  <ref role="3TsBF5" to="wq2x:6p0DfM0bSv$" resolve="keep" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3UOs0u" id="3elRT3bEgyo">
    <property role="3GE5qa" value="constraint.typespecific" />
    <property role="TrG5h" value="NewTypeConstraint_anchor" />
    <node concept="3UNGvq" id="3elRT3bEgyp" role="3UOs0v">
      <property role="2uHTBK" value="ext_1_RTransform" />
      <ref role="3UNGvu" to="wq2x:7eGEHDlgPU1" resolve="NewTypeConstraint" />
      <node concept="3kRJcU" id="3elRT3bEgXe" role="3kShCk">
        <node concept="3clFbS" id="3elRT3bEgXf" role="2VODD2">
          <node concept="3clFbF" id="3elRT3bEhvX" role="3cqZAp">
            <node concept="2OqwBi" id="3elRT3bEirO" role="3clFbG">
              <node concept="2OqwBi" id="3elRT3bEhJ3" role="2Oq$k0">
                <node concept="Cj7Ep" id="3elRT3bEhvW" role="2Oq$k0" />
                <node concept="3TrEf2" id="3elRT3bEib8" role="2OqNvi">
                  <ref role="3Tt5mk" to="wq2x:6p0DfM0gvH4" />
                </node>
              </node>
              <node concept="3w_OXm" id="3elRT3bEiTL" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="tYCnQ" id="3elRT3bEjas" role="_1QTJ">
        <ref role="uz4UX" to="wq2x:7eGEHDlgPU1" resolve="NewTypeConstraint" />
        <node concept="Cmt7Y" id="3elRT3bEjqQ" role="uz6Si">
          <node concept="Cnhdc" id="3elRT3bEjqS" role="Cncma">
            <node concept="3clFbS" id="3elRT3bEjqU" role="2VODD2">
              <node concept="3clFbF" id="3elRT3bEjwc" role="3cqZAp">
                <node concept="2OqwBi" id="3elRT3bEk3J" role="3clFbG">
                  <node concept="2OqwBi" id="3elRT3bEjzL" role="2Oq$k0">
                    <node concept="Cj7Ep" id="3elRT3bEjwb" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3elRT3bEjRN" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:6p0DfM0gvH4" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="3elRT3bEko$" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="3elRT3bEkxn" role="3cqZAp">
                <node concept="Cj7Ep" id="3elRT3bEkxl" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="2h1dTh" id="3elRT3bEjt3" role="Cn2iK">
            <property role="2h1i$Z" value="@" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3FK_9_" id="1PFbZN6vSAM">
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="ExpressionConstraint_subst_Expression" />
    <node concept="3FOIzC" id="1PFbZN6vSAN" role="3FOPby">
      <ref role="3FOWKa" to="wq2x:4EfgX2EvF4i" resolve="ExpressionConstraint" />
      <node concept="z64au" id="7ksQUDZtc7u" role="tZc4B">
        <ref role="z65TK" to="wq2x:6p0DfM0pKSO" resolve="LogicalExpression" />
      </node>
      <node concept="tYCnQ" id="1PFbZN6vSB$" role="tZc4B">
        <ref role="uz4UX" to="wq2x:4EfgX2EvF4i" resolve="ExpressionConstraint" />
        <node concept="yEb5T" id="1PFbZN6vSBA" role="uz6Si">
          <ref role="yEYPM" to="tpee:fz3vP1J" resolve="Expression" />
          <node concept="yEnE0" id="1PFbZN6vSBB" role="yEVE$">
            <node concept="3clFbS" id="1PFbZN6vSBC" role="2VODD2">
              <node concept="3cpWs8" id="1PFbZN6vSRM" role="3cqZAp">
                <node concept="3cpWsn" id="1PFbZN6vSRN" role="3cpWs9">
                  <property role="TrG5h" value="ec" />
                  <node concept="3Tqbb2" id="1PFbZN6vSRK" role="1tU5fm">
                    <ref role="ehGHo" to="wq2x:4EfgX2EvF4i" resolve="ExpressionConstraint" />
                  </node>
                  <node concept="2ShNRf" id="1PFbZN6vSRO" role="33vP2m">
                    <node concept="3zrR0B" id="1PFbZN6vSRP" role="2ShVmc">
                      <node concept="3Tqbb2" id="1PFbZN6vSRQ" role="3zrR0E">
                        <ref role="ehGHo" to="wq2x:4EfgX2EvF4i" resolve="ExpressionConstraint" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1PFbZN6vSDL" role="3cqZAp">
                <node concept="2OqwBi" id="1PFbZN6vTzc" role="3clFbG">
                  <node concept="2OqwBi" id="1PFbZN6vT0I" role="2Oq$k0">
                    <node concept="37vLTw" id="1PFbZN6vSRR" role="2Oq$k0">
                      <ref role="3cqZAo" node="1PFbZN6vSRN" resolve="ec" />
                    </node>
                    <node concept="3TrEf2" id="1PFbZN6vTgn" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:4EfgX2EvGcc" />
                    </node>
                  </node>
                  <node concept="2oxUTD" id="1PFbZN6vTER" role="2OqNvi">
                    <node concept="yECNy" id="1PFbZN6vTHv" role="2oxUTC" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1PFbZN6vTLr" role="3cqZAp">
                <node concept="37vLTw" id="1PFbZN6vTLp" role="3clFbG">
                  <ref role="3cqZAo" node="1PFbZN6vSRN" resolve="ec" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3buRE8" id="2N2MQGCLtzb" role="3bvWUf">
        <node concept="3clFbS" id="2N2MQGCLtzc" role="2VODD2">
          <node concept="3clFbF" id="2N2MQGCLtCb" role="3cqZAp">
            <node concept="3fqX7Q" id="2N2MQGCLtC9" role="3clFbG">
              <node concept="3p$olP" id="2N2MQGCLtEY" role="3fr31v" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3FK_9_" id="7ksQUDZoqmc">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="Statement_subst_LogicVarDeclarationStatement" />
    <node concept="3FOIzC" id="7ksQUDZoqmd" role="3FOPby">
      <ref role="3FOWKa" to="tpee:fzclF8l" resolve="Statement" />
      <node concept="z64au" id="7ksQUDZp4FH" role="tZc4B">
        <ref role="z65TK" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
      </node>
      <node concept="tYCnQ" id="7ksQUDZoqmx" role="tZc4B">
        <ref role="uz4UX" to="wq2x:2E5lcNn5kn6" resolve="ParameterDeclarationStatement" />
        <node concept="ucClh" id="7ksQUDZoYjC" role="uz6Si">
          <node concept="ucgPf" id="7ksQUDZoYjE" role="ucMEw">
            <node concept="3clFbS" id="7ksQUDZoYjG" role="2VODD2">
              <node concept="3cpWs8" id="7ksQUDZp0fI" role="3cqZAp">
                <node concept="3cpWsn" id="7ksQUDZp0fJ" role="3cpWs9">
                  <property role="TrG5h" value="pds" />
                  <node concept="3Tqbb2" id="7ksQUDZp0fG" role="1tU5fm">
                    <ref role="ehGHo" to="wq2x:2E5lcNn5kn6" resolve="ParameterDeclarationStatement" />
                  </node>
                  <node concept="2OqwBi" id="7ksQUDZp0fK" role="33vP2m">
                    <node concept="1Q6Npb" id="7ksQUDZp0fL" role="2Oq$k0" />
                    <node concept="15TzpJ" id="7ksQUDZp0fM" role="2OqNvi">
                      <ref role="I8UWU" to="wq2x:2E5lcNn5kn6" resolve="ParameterDeclarationStatement" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7ksQUDZp4pt" role="3cqZAp">
                <node concept="37vLTw" id="7ksQUDZp4pr" role="3clFbG">
                  <ref role="3cqZAo" node="7ksQUDZp0fJ" resolve="pds" />
                </node>
              </node>
            </node>
          </node>
          <node concept="uGdhv" id="7ksQUDZoYt2" role="uGu3D">
            <node concept="3clFbS" id="7ksQUDZoYt3" role="2VODD2">
              <node concept="3clFbF" id="7ksQUDZoYzH" role="3cqZAp">
                <node concept="2OqwBi" id="7ksQUDZoZnv" role="3clFbG">
                  <node concept="3B5_sB" id="7ksQUDZoYzG" role="2Oq$k0">
                    <ref role="3B5MYn" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
                  </node>
                  <node concept="3TrcHB" id="7ksQUDZoZRJ" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3buRE8" id="7ksQUDZoqLc" role="3bvWUf">
        <node concept="3clFbS" id="7ksQUDZoqLd" role="2VODD2">
          <node concept="3clFbF" id="7ksQUDZoqQV" role="3cqZAp">
            <node concept="2OqwBi" id="7ksQUDZorjo" role="3clFbG">
              <node concept="2OqwBi" id="7ksQUDZoqWY" role="2Oq$k0">
                <node concept="3bvxqY" id="7ksQUDZoqQU" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7ksQUDZor6l" role="2OqNvi">
                  <node concept="1xMEDy" id="7ksQUDZor6n" role="1xVPHs">
                    <node concept="chp4Y" id="7ksQUDZorbP" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:6p0DfM0a3gA" resolve="Head" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="7ksQUDZossh" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="7ksQUDZor_9" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3FOIzC" id="7ksQUDZoqKi" role="3FOPby">
      <ref role="3FOWKa" to="tpee:fzclF8l" resolve="Statement" />
      <node concept="3buRE8" id="7ksQUDZorQ9" role="3bvWUf">
        <node concept="3clFbS" id="7ksQUDZorQa" role="2VODD2">
          <node concept="3clFbF" id="7ksQUDZorV5" role="3cqZAp">
            <node concept="2OqwBi" id="7ksQUDZosOx" role="3clFbG">
              <node concept="2OqwBi" id="7ksQUDZos18" role="2Oq$k0">
                <node concept="3bvxqY" id="7ksQUDZorV4" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7ksQUDZoseC" role="2OqNvi">
                  <node concept="1xMEDy" id="7ksQUDZoseE" role="1xVPHs">
                    <node concept="chp4Y" id="7ksQUDZos$C" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:6p0DfM0a3TO" resolve="Body" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="7ksQUDZosHx" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="7ksQUDZot6m" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="z64au" id="7ksQUDZp4VJ" role="tZc4B">
        <ref role="z65TK" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
      </node>
      <node concept="tYCnQ" id="7ksQUDZotcb" role="tZc4B">
        <ref role="uz4UX" to="wq2x:2E5lcNn5Ub2" resolve="LocalDeclarationStatement" />
        <node concept="ucClh" id="7ksQUDZp4VQ" role="uz6Si">
          <node concept="ucgPf" id="7ksQUDZp4VR" role="ucMEw">
            <node concept="3clFbS" id="7ksQUDZp4VS" role="2VODD2">
              <node concept="3cpWs8" id="7ksQUDZp69Z" role="3cqZAp">
                <node concept="3cpWsn" id="7ksQUDZp6a0" role="3cpWs9">
                  <property role="TrG5h" value="lds" />
                  <node concept="3Tqbb2" id="7ksQUDZp69X" role="1tU5fm">
                    <ref role="ehGHo" to="wq2x:2E5lcNn5Ub2" resolve="LocalDeclarationStatement" />
                  </node>
                  <node concept="2OqwBi" id="7ksQUDZp6a1" role="33vP2m">
                    <node concept="1Q6Npb" id="7ksQUDZp6a2" role="2Oq$k0" />
                    <node concept="15TzpJ" id="7ksQUDZp6a3" role="2OqNvi">
                      <ref role="I8UWU" to="wq2x:2E5lcNn5Ub2" resolve="LocalDeclarationStatement" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7ksQUDZp5T3" role="3cqZAp">
                <node concept="37vLTw" id="7ksQUDZp6a4" role="3clFbG">
                  <ref role="3cqZAo" node="7ksQUDZp6a0" resolve="lds" />
                </node>
              </node>
            </node>
          </node>
          <node concept="uGdhv" id="7ksQUDZp4XB" role="uGu3D">
            <node concept="3clFbS" id="7ksQUDZp4XC" role="2VODD2">
              <node concept="3clFbF" id="7ksQUDZp54i" role="3cqZAp">
                <node concept="2OqwBi" id="7ksQUDZp5iF" role="3clFbG">
                  <node concept="3B5_sB" id="7ksQUDZp54h" role="2Oq$k0">
                    <ref role="3B5MYn" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
                  </node>
                  <node concept="3TrcHB" id="7ksQUDZp5MV" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3UOs0u" id="5zfvpQ72pHF">
    <property role="3GE5qa" value="constraint.variable" />
    <property role="TrG5h" value="LogicVariableDeclarationStatement_specify_dataType" />
    <node concept="3UNGvq" id="5zfvpQ72pHG" role="3UOs0v">
      <ref role="3UNGvu" to="wq2x:2E5lcNn8iYG" resolve="LogicVariableDeclarationStatement" />
      <node concept="3kRJcU" id="5zfvpQ72pHL" role="3kShCk">
        <node concept="3clFbS" id="5zfvpQ72pHM" role="2VODD2">
          <node concept="3clFbF" id="5zfvpQ72pMH" role="3cqZAp">
            <node concept="2OqwBi" id="5zfvpQ72qDc" role="3clFbG">
              <node concept="2OqwBi" id="5zfvpQ72pSr" role="2Oq$k0">
                <node concept="Cj7Ep" id="5zfvpQ72pMG" role="2Oq$k0" />
                <node concept="3TrEf2" id="5zfvpQ72qlf" role="2OqNvi">
                  <ref role="3Tt5mk" to="wq2x:5zfvpQ72gqq" />
                </node>
              </node>
              <node concept="3w_OXm" id="5zfvpQ72r1c" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="tYCnQ" id="5zfvpQ72rag" role="_1QTJ">
        <ref role="uz4UX" to="tpee:fzcpWvK" resolve="LocalVariableDeclarationStatement" />
        <node concept="Cmt7Y" id="5zfvpQ72rnv" role="uz6Si">
          <node concept="Cnhdc" id="5zfvpQ72rnw" role="Cncma">
            <node concept="3clFbS" id="5zfvpQ72rnx" role="2VODD2">
              <node concept="3clFbF" id="5zfvpQ72row" role="3cqZAp">
                <node concept="2OqwBi" id="5zfvpQ72s31" role="3clFbG">
                  <node concept="2OqwBi" id="5zfvpQ72rs0" role="2Oq$k0">
                    <node concept="Cj7Ep" id="5zfvpQ72rov" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5zfvpQ72rOy" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:5zfvpQ72gqq" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="5zfvpQ72smI" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="5zfvpQ72srj" role="3cqZAp">
                <node concept="Cj7Ep" id="5zfvpQ72srh" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="2h1dTh" id="5zfvpQ72roa" role="Cn2iK">
            <property role="2h1i$Z" value="&lt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3FK_9_" id="2N2MQGCIMbe">
    <property role="TrG5h" value="Expression_subst_Type" />
    <node concept="3FOIzC" id="2N2MQGCIMbf" role="3FOPby">
      <ref role="3FOWKa" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="tYCnQ" id="2N2MQGCIMsI" role="tZc4B">
        <ref role="uz4UX" to="5j4j:6$jH9oLmUCq" resolve="Ast" />
        <node concept="uMFAO" id="2N2MQGCIMsK" role="uz6Si">
          <node concept="3Tqbb2" id="2N2MQGCJ4jR" role="uMOYW">
            <ref role="ehGHo" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
          </node>
          <node concept="uSIkt" id="2N2MQGCIMsM" role="uTubQ">
            <node concept="3clFbS" id="2N2MQGCIMsN" role="2VODD2">
              <node concept="3cpWs8" id="2N2MQGCKoj3" role="3cqZAp">
                <node concept="3cpWsn" id="2N2MQGCKoj4" role="3cpWs9">
                  <property role="TrG5h" value="ast" />
                  <node concept="3Tqbb2" id="2N2MQGCKoj1" role="1tU5fm">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmUCq" resolve="Ast" />
                  </node>
                  <node concept="2ShNRf" id="2N2MQGCKoj5" role="33vP2m">
                    <node concept="2fJWfE" id="2N2MQGCKoj6" role="2ShVmc">
                      <node concept="3Tqbb2" id="2N2MQGCKoj7" role="3zrR0E">
                        <ref role="ehGHo" to="5j4j:6$jH9oLmUCq" resolve="Ast" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCKo7N" role="3cqZAp">
                <node concept="2OqwBi" id="2N2MQGCKoHZ" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCKoqB" role="2Oq$k0">
                    <node concept="37vLTw" id="2N2MQGCKoj8" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCKoj4" resolve="ast" />
                    </node>
                    <node concept="3TrEf2" id="2N2MQGCKo$4" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" />
                    </node>
                  </node>
                  <node concept="2oxUTD" id="2N2MQGCKoWy" role="2OqNvi">
                    <node concept="2YIFZM" id="2N2MQGCKnCn" role="2oxUTC">
                      <ref role="1Pybhc" node="2N2MQGCJu8I" resolve="TypeFactory" />
                      <ref role="37wK5l" node="2N2MQGCJu99" resolve="createFromTemplate" />
                      <node concept="2OqwBi" id="2N2MQGCKsEz" role="37wK5m">
                        <node concept="uNquD" id="2N2MQGCKnGg" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2N2MQGCKsQ9" role="2OqNvi">
                          <ref role="3Tt5mk" to="wq2x:1pPth$m5BbA" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCKp8h" role="3cqZAp">
                <node concept="37vLTw" id="2N2MQGCKp8f" role="3clFbG">
                  <ref role="3cqZAo" node="2N2MQGCKoj4" resolve="ast" />
                </node>
              </node>
            </node>
          </node>
          <node concept="uNCsQ" id="2N2MQGCIMsO" role="uO7ob">
            <node concept="3clFbS" id="2N2MQGCIMsP" role="2VODD2">
              <node concept="3clFbF" id="2N2MQGCJdfQ" role="3cqZAp">
                <node concept="10QFUN" id="2N2MQGCJfFl" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCJfFd" role="10QFUP">
                    <node concept="2ShNRf" id="2N2MQGCJfFe" role="2Oq$k0">
                      <node concept="1pGfFk" id="2N2MQGCJfFf" role="2ShVmc">
                        <ref role="37wK5l" to="35tq:~ModelPlusImportedScope.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel,boolean,org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="ModelPlusImportedScope" />
                        <node concept="1Q6Npb" id="2N2MQGCJfFg" role="37wK5m" />
                        <node concept="3clFbT" id="2N2MQGCJfFh" role="37wK5m">
                          <property role="3clFbU" value="false" />
                        </node>
                        <node concept="35c_gC" id="2N2MQGCJfFi" role="37wK5m">
                          <ref role="35c_gD" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2N2MQGCJfFj" role="2OqNvi">
                      <ref role="37wK5l" to="35tq:~ModelsScope.getAvailableElements(java.lang.String):java.lang.Iterable" resolve="getAvailableElements" />
                      <node concept="Xl_RD" id="2N2MQGCJfFk" role="37wK5m">
                        <property role="Xl_RC" value="" />
                      </node>
                    </node>
                  </node>
                  <node concept="A3Dl8" id="2N2MQGCJfNn" role="10QFUM">
                    <node concept="3Tqbb2" id="2N2MQGCJfVa" role="A3Ik2">
                      <ref role="ehGHo" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="uSjag" id="2N2MQGCJgjn" role="uSyvl">
            <node concept="3clFbS" id="2N2MQGCJgjo" role="2VODD2">
              <node concept="3clFbF" id="2N2MQGCJgwV" role="3cqZAp">
                <node concept="2OqwBi" id="2N2MQGCJg_O" role="3clFbG">
                  <node concept="uNquD" id="2N2MQGCJgwU" role="2Oq$k0" />
                  <node concept="3TrcHB" id="2N2MQGCJgNO" role="2OqNvi">
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
  <node concept="312cEu" id="2N2MQGCJu8I">
    <property role="TrG5h" value="TypeFactory" />
    <node concept="2tJIrI" id="2N2MQGCJu8W" role="jymVt" />
    <node concept="2YIFZL" id="2N2MQGCJu99" role="jymVt">
      <property role="TrG5h" value="createFromTemplate" />
      <node concept="37vLTG" id="2N2MQGCJu9$" role="3clF46">
        <property role="TrG5h" value="term" />
        <node concept="3Tqbb2" id="2N2MQGCJu9W" role="1tU5fm">
          <ref role="ehGHo" to="wq2x:1pPth$m5o9D" resolve="TypeTerm" />
        </node>
      </node>
      <node concept="3Tqbb2" id="2N2MQGCJu9p" role="3clF45">
        <ref role="ehGHo" to="5j4j:6$jH9oLmYC_" resolve="Node" />
      </node>
      <node concept="3Tm1VV" id="2N2MQGCJu9c" role="1B3o_S" />
      <node concept="3clFbS" id="2N2MQGCJu9d" role="3clF47">
        <node concept="3SKdUt" id="2N2MQGCJvXx" role="3cqZAp">
          <node concept="3SKdUq" id="2N2MQGCJw0q" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: extract standard role IDs" />
          </node>
        </node>
        <node concept="3cpWs8" id="2N2MQGCK4IQ" role="3cqZAp">
          <node concept="3cpWsn" id="2N2MQGCK4IR" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="2N2MQGCK4IO" role="1tU5fm">
              <ref role="ehGHo" to="5j4j:6$jH9oLmYC_" resolve="Node" />
            </node>
            <node concept="2ShNRf" id="2N2MQGCK4IS" role="33vP2m">
              <node concept="2fJWfE" id="2N2MQGCK4IT" role="2ShVmc">
                <node concept="3Tqbb2" id="2N2MQGCK4IU" role="3zrR0E">
                  <ref role="ehGHo" to="5j4j:6$jH9oLmYC_" resolve="Node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2N2MQGCK3Cz" role="3cqZAp">
          <node concept="2OqwBi" id="2N2MQGCK5UG" role="3clFbG">
            <node concept="2OqwBi" id="2N2MQGCK4MS" role="2Oq$k0">
              <node concept="37vLTw" id="2N2MQGCK4IV" role="2Oq$k0">
                <ref role="3cqZAo" node="2N2MQGCK4IR" resolve="node" />
              </node>
              <node concept="3Tsc0h" id="2N2MQGCK51N" role="2OqNvi">
                <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" />
              </node>
            </node>
            <node concept="X8dFx" id="2N2MQGCK8Qw" role="2OqNvi">
              <node concept="1rXfSq" id="2N2MQGCK9DD" role="25WWJ7">
                <ref role="37wK5l" node="2N2MQGCJx48" resolve="features2roles" />
                <node concept="2OqwBi" id="2N2MQGCKaH$" role="37wK5m">
                  <node concept="37vLTw" id="2N2MQGCKaob" role="2Oq$k0">
                    <ref role="3cqZAo" node="2N2MQGCJu9$" resolve="term" />
                  </node>
                  <node concept="3Tsc0h" id="2N2MQGCKb$u" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:1pPth$m5oa9" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2N2MQGCKhWl" role="3cqZAp">
          <node concept="37vLTw" id="2N2MQGCKhWj" role="3clFbG">
            <ref role="3cqZAo" node="2N2MQGCK4IR" resolve="node" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2N2MQGCJx0i" role="jymVt" />
    <node concept="2YIFZL" id="2N2MQGCJx48" role="jymVt">
      <property role="TrG5h" value="features2roles" />
      <node concept="37vLTG" id="2N2MQGCJx6x" role="3clF46">
        <property role="TrG5h" value="features" />
        <node concept="2I9FWS" id="2N2MQGCJx6F" role="1tU5fm">
          <ref role="2I9WkF" to="wq2x:1pPth$m5oa5" resolve="TypeFeature" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2N2MQGCKnSp" role="1B3o_S" />
      <node concept="3clFbS" id="2N2MQGCJx4c" role="3clF47">
        <node concept="3clFbF" id="2N2MQGCJNlm" role="3cqZAp">
          <node concept="2OqwBi" id="2N2MQGCJRGT" role="3clFbG">
            <node concept="2OqwBi" id="2N2MQGCJO8g" role="2Oq$k0">
              <node concept="37vLTw" id="2N2MQGCJNlk" role="2Oq$k0">
                <ref role="3cqZAo" node="2N2MQGCJx6x" resolve="features" />
              </node>
              <node concept="3$u5V9" id="2N2MQGCJRl$" role="2OqNvi">
                <node concept="1bVj0M" id="2N2MQGCJRlA" role="23t8la">
                  <node concept="3clFbS" id="2N2MQGCJRlB" role="1bW5cS">
                    <node concept="3clFbF" id="2N2MQGCJRrI" role="3cqZAp">
                      <node concept="1rXfSq" id="2N2MQGCJRrH" role="3clFbG">
                        <ref role="37wK5l" node="2N2MQGCJ_lS" resolve="createFeature" />
                        <node concept="37vLTw" id="2N2MQGCJRx1" role="37wK5m">
                          <ref role="3cqZAo" node="2N2MQGCJRlC" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="2N2MQGCJRlC" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="2N2MQGCJRlD" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="2N2MQGCK3eT" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="2N2MQGCJCEB" role="3clF45">
        <ref role="2I9WkF" to="5j4j:6$jH9oLmYD_" resolve="Role" />
      </node>
    </node>
    <node concept="2tJIrI" id="2N2MQGCJx3v" role="jymVt" />
    <node concept="2YIFZL" id="2N2MQGCJ_lS" role="jymVt">
      <property role="TrG5h" value="createFeature" />
      <node concept="37vLTG" id="2N2MQGCJHIO" role="3clF46">
        <property role="TrG5h" value="feature" />
        <node concept="3Tqbb2" id="2N2MQGCJHIY" role="1tU5fm">
          <ref role="ehGHo" to="wq2x:1pPth$m5oa5" resolve="TypeFeature" />
        </node>
      </node>
      <node concept="3Tqbb2" id="2N2MQGCJHHb" role="3clF45">
        <ref role="ehGHo" to="5j4j:6$jH9oLmYD_" resolve="Role" />
      </node>
      <node concept="3Tm6S6" id="2N2MQGCJ_na" role="1B3o_S" />
      <node concept="3clFbS" id="2N2MQGCJ_lW" role="3clF47">
        <node concept="3SKdUt" id="2N2MQGCJ_WC" role="3cqZAp">
          <node concept="3SKdUq" id="2N2MQGCJ_WZ" role="3SKWNk">
            <property role="3SKdUp" value="using deprecated operation because of unresolved issue MPS-21969" />
          </node>
        </node>
        <node concept="1_3QMa" id="2N2MQGCJ_p1" role="3cqZAp">
          <node concept="1_3QMl" id="2N2MQGCJ_V1" role="1_3QMm">
            <node concept="3gn64h" id="2N2MQGCJ_X6" role="3Kbmr1">
              <ref role="3gnhBz" to="wq2x:1pPth$m5oae" resolve="StringTypeFeature" />
            </node>
            <node concept="3clFbS" id="2N2MQGCJ_V3" role="3Kbo56">
              <node concept="3cpWs8" id="2N2MQGCJDfH" role="3cqZAp">
                <node concept="3cpWsn" id="2N2MQGCJDfI" role="3cpWs9">
                  <property role="TrG5h" value="vr" />
                  <node concept="3Tqbb2" id="2N2MQGCJDfG" role="1tU5fm">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                  </node>
                  <node concept="2ShNRf" id="2N2MQGCJDfJ" role="33vP2m">
                    <node concept="2fJWfE" id="2N2MQGCJDfK" role="2ShVmc">
                      <node concept="3Tqbb2" id="2N2MQGCJDfL" role="3zrR0E">
                        <ref role="ehGHo" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCJSp$" role="3cqZAp">
                <node concept="37vLTI" id="2N2MQGCJSYy" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCJTdP" role="37vLTx">
                    <node concept="37vLTw" id="2N2MQGCJT5j" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJHIO" resolve="feature" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCJTnu" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2N2MQGCJSz9" role="37vLTJ">
                    <node concept="37vLTw" id="2N2MQGCJSpy" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJDfI" resolve="vr" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCJSIb" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2N2MQGCLkug" role="3cqZAp">
                <node concept="3cpWsn" id="2N2MQGCLkuh" role="3cpWs9">
                  <property role="TrG5h" value="val" />
                  <node concept="3Tqbb2" id="2N2MQGCLkue" role="1tU5fm">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
                  </node>
                  <node concept="2OqwBi" id="2N2MQGCLkui" role="33vP2m">
                    <node concept="2OqwBi" id="2N2MQGCLkuj" role="2Oq$k0">
                      <node concept="37vLTw" id="2N2MQGCLkuk" role="2Oq$k0">
                        <ref role="3cqZAo" node="2N2MQGCJDfI" resolve="vr" />
                      </node>
                      <node concept="3Tsc0h" id="2N2MQGCLkul" role="2OqNvi">
                        <ref role="3TtcxE" to="5j4j:6$jH9oLmYL8" />
                      </node>
                    </node>
                    <node concept="2DeJg1" id="2N2MQGCLkum" role="2OqNvi">
                      <ref role="1A0vxQ" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCJDyZ" role="3cqZAp">
                <node concept="2OqwBi" id="2N2MQGCLmNV" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCLmgd" role="2Oq$k0">
                    <node concept="37vLTw" id="2N2MQGCLkun" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCLkuh" resolve="val" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCLmod" role="2OqNvi">
                      <ref role="3TsBF5" to="5j4j:6$jH9oLmYKA" resolve="value" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="2N2MQGCLn3J" role="2OqNvi">
                    <node concept="2OqwBi" id="2N2MQGCLn4Z" role="tz02z">
                      <node concept="1PxgMI" id="2N2MQGCLn50" role="2Oq$k0">
                        <ref role="1PxNhF" to="wq2x:1pPth$m5oae" resolve="StringTypeFeature" />
                        <node concept="37vLTw" id="2N2MQGCLn51" role="1PxMeX">
                          <ref role="3cqZAo" node="2N2MQGCJHIO" resolve="feature" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="2N2MQGCLn52" role="2OqNvi">
                        <ref role="3TsBF5" to="wq2x:2N2MQGCKV7J" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2N2MQGCJI1a" role="3cqZAp">
                <node concept="37vLTw" id="2N2MQGCJI2R" role="3cqZAk">
                  <ref role="3cqZAo" node="2N2MQGCJDfI" resolve="vr" />
                </node>
              </node>
              <node concept="3clFbH" id="2N2MQGCJI3s" role="3cqZAp" />
            </node>
          </node>
          <node concept="1_3QMl" id="2N2MQGCJ_V7" role="1_3QMm">
            <node concept="3gn64h" id="2N2MQGCJ_Xe" role="3Kbmr1">
              <ref role="3gnhBz" to="wq2x:1pPth$m5oaG" resolve="ReferenceTypeFeature" />
            </node>
            <node concept="3clFbS" id="2N2MQGCJ_V9" role="3Kbo56">
              <node concept="3cpWs8" id="2N2MQGCJIbp" role="3cqZAp">
                <node concept="3cpWsn" id="2N2MQGCJIbq" role="3cpWs9">
                  <property role="TrG5h" value="vr" />
                  <node concept="3Tqbb2" id="2N2MQGCJIbr" role="1tU5fm">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                  </node>
                  <node concept="2ShNRf" id="2N2MQGCJIbs" role="33vP2m">
                    <node concept="2fJWfE" id="2N2MQGCJIbt" role="2ShVmc">
                      <node concept="3Tqbb2" id="2N2MQGCJIbu" role="3zrR0E">
                        <ref role="ehGHo" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCJTsc" role="3cqZAp">
                <node concept="37vLTI" id="2N2MQGCJTsd" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCJTse" role="37vLTx">
                    <node concept="37vLTw" id="2N2MQGCJTsf" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJHIO" resolve="feature" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCJTsg" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2N2MQGCJTsh" role="37vLTJ">
                    <node concept="37vLTw" id="2N2MQGCJTsi" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJIbq" resolve="vr" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCJTsj" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCJIbB" role="3cqZAp">
                <node concept="2OqwBi" id="2N2MQGCJIbC" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCJIbD" role="2Oq$k0">
                    <node concept="37vLTw" id="2N2MQGCJIbE" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJIbq" resolve="vr" />
                    </node>
                    <node concept="3Tsc0h" id="2N2MQGCJIbF" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLmYL8" />
                    </node>
                  </node>
                  <node concept="2DeJg1" id="2N2MQGCJIbG" role="2OqNvi">
                    <ref role="1A0vxQ" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2N2MQGCJIbH" role="3cqZAp">
                <node concept="37vLTw" id="2N2MQGCJIbI" role="3cqZAk">
                  <ref role="3cqZAo" node="2N2MQGCJIbq" resolve="vr" />
                </node>
              </node>
              <node concept="3clFbH" id="2N2MQGCJIeW" role="3cqZAp" />
            </node>
          </node>
          <node concept="1_3QMl" id="2N2MQGCJ_Vl" role="1_3QMm">
            <node concept="3gn64h" id="2N2MQGCJ_Xm" role="3Kbmr1">
              <ref role="3gnhBz" to="wq2x:1pPth$m5oaL" resolve="ChildTypeFeature" />
            </node>
            <node concept="3clFbS" id="2N2MQGCJ_Vn" role="3Kbo56">
              <node concept="3cpWs8" id="2N2MQGCJItd" role="3cqZAp">
                <node concept="3cpWsn" id="2N2MQGCJIte" role="3cpWs9">
                  <property role="TrG5h" value="cr" />
                  <node concept="3Tqbb2" id="2N2MQGCJItc" role="1tU5fm">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                  </node>
                  <node concept="2ShNRf" id="2N2MQGCJItf" role="33vP2m">
                    <node concept="2fJWfE" id="2N2MQGCJItg" role="2ShVmc">
                      <node concept="3Tqbb2" id="2N2MQGCJIth" role="3zrR0E">
                        <ref role="ehGHo" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCJUej" role="3cqZAp">
                <node concept="37vLTI" id="2N2MQGCJUek" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCJUel" role="37vLTx">
                    <node concept="37vLTw" id="2N2MQGCJUem" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJHIO" resolve="feature" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCJUen" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2N2MQGCJUeo" role="37vLTJ">
                    <node concept="37vLTw" id="2N2MQGCJV2g" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJIte" resolve="cr" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCJUeq" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCJIzq" role="3cqZAp">
                <node concept="2OqwBi" id="2N2MQGCJJI6" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCJIAc" role="2Oq$k0">
                    <node concept="37vLTw" id="2N2MQGCJIzo" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJIte" resolve="cr" />
                    </node>
                    <node concept="3Tsc0h" id="2N2MQGCJJ76" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLmYFB" />
                    </node>
                  </node>
                  <node concept="2DeJg1" id="2N2MQGCJLYf" role="2OqNvi">
                    <ref role="1A0vxQ" to="5j4j:6$jH9oLmYC_" resolve="Node" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2N2MQGCJIwv" role="3cqZAp">
                <node concept="37vLTw" id="2N2MQGCJIti" role="3cqZAk">
                  <ref role="3cqZAo" node="2N2MQGCJIte" resolve="cr" />
                </node>
              </node>
              <node concept="3clFbH" id="2N2MQGCJIsh" role="3cqZAp" />
            </node>
          </node>
          <node concept="1_3QMl" id="2N2MQGCJ_Xu" role="1_3QMm">
            <node concept="3gn64h" id="2N2MQGCJ_XM" role="3Kbmr1">
              <ref role="3gnhBz" to="wq2x:1pPth$m5oa6" resolve="ListFeature" />
            </node>
            <node concept="3clFbS" id="2N2MQGCJ_Xw" role="3Kbo56">
              <node concept="3cpWs8" id="2N2MQGCJM0w" role="3cqZAp">
                <node concept="3cpWsn" id="2N2MQGCJM0x" role="3cpWs9">
                  <property role="TrG5h" value="cr" />
                  <node concept="3Tqbb2" id="2N2MQGCJM0y" role="1tU5fm">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                  </node>
                  <node concept="2ShNRf" id="2N2MQGCJM0z" role="33vP2m">
                    <node concept="2fJWfE" id="2N2MQGCJM0$" role="2ShVmc">
                      <node concept="3Tqbb2" id="2N2MQGCJM0_" role="3zrR0E">
                        <ref role="ehGHo" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCJV9g" role="3cqZAp">
                <node concept="37vLTI" id="2N2MQGCJV9h" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCJV9i" role="37vLTx">
                    <node concept="37vLTw" id="2N2MQGCJV9j" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJHIO" resolve="feature" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCJV9k" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2N2MQGCJV9l" role="37vLTJ">
                    <node concept="37vLTw" id="2N2MQGCJV9m" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJM0x" resolve="cr" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCJV9n" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCJM0A" role="3cqZAp">
                <node concept="2OqwBi" id="2N2MQGCJM0B" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCJM0C" role="2Oq$k0">
                    <node concept="37vLTw" id="2N2MQGCJM0D" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJM0x" resolve="cr" />
                    </node>
                    <node concept="3Tsc0h" id="2N2MQGCJM0E" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLmYFB" />
                    </node>
                  </node>
                  <node concept="2DeJg1" id="2N2MQGCJM0F" role="2OqNvi">
                    <ref role="1A0vxQ" to="5j4j:1OShD0HAY6y" resolve="List" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2N2MQGCJM0G" role="3cqZAp">
                <node concept="37vLTw" id="2N2MQGCJM0H" role="3cqZAk">
                  <ref role="3cqZAo" node="2N2MQGCJM0x" resolve="cr" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2N2MQGCJ_r$" role="1_3QMn">
            <node concept="37vLTw" id="2N2MQGCJ_pM" role="2Oq$k0">
              <ref role="3cqZAo" node="2N2MQGCJHIO" resolve="feature" />
            </node>
            <node concept="3NT_Vc" id="2N2MQGCJ_TW" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="2N2MQGCJM8D" role="3cqZAp" />
        <node concept="YS8fn" id="2N2MQGCJMdC" role="3cqZAp">
          <node concept="2ShNRf" id="2N2MQGCJMgN" role="YScLw">
            <node concept="1pGfFk" id="2N2MQGCJMrp" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="3cpWs3" id="2N2MQGCJMJu" role="37wK5m">
                <node concept="2OqwBi" id="2N2MQGCJMQC" role="3uHU7w">
                  <node concept="37vLTw" id="2N2MQGCJML_" role="2Oq$k0">
                    <ref role="3cqZAo" node="2N2MQGCJHIO" resolve="feature" />
                  </node>
                  <node concept="2qgKlT" id="2N2MQGCJN9z" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="Xl_RD" id="2N2MQGCJMsU" role="3uHU7B">
                  <property role="Xl_RC" value="unknown feature: " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2N2MQGCJx2T" role="jymVt" />
    <node concept="3Tm1VV" id="2N2MQGCJu8J" role="1B3o_S" />
  </node>
</model>

