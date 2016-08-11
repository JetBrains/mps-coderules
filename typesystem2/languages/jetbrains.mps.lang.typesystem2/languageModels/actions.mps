<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:04847532-40d8-4c13-804f-12fbbdc25fa9(jetbrains.mps.lang.typesystem2.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="0" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
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
    <import index="hy7p" ref="r:01ee26d6-df00-4ffb-931c-1ddec5984886(jetbrains.mps.lang.typesystem2.util)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.typesystem2.template)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1161622665029" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_model" flags="nn" index="1Q6Npb" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
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
        <child id="1177498182537" name="descriptionText" index="Cn6ar" />
        <child id="1177498207384" name="handler" index="Cncma" />
      </concept>
      <concept id="1177498227294" name="jetbrains.mps.lang.actions.structure.QueryFunction_SideTransform_Handler" flags="in" index="Cnhdc" />
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
      <concept id="1180134965967" name="jetbrains.mps.lang.actions.structure.ConceptSubstitutePart" flags="ng" index="35xCft">
        <reference id="1180135092669" name="concept" index="35y72J" />
      </concept>
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
      <concept id="1143235216708" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewNodeOperation" flags="nn" index="I8ghe">
        <reference id="1143235391024" name="concept" index="I8UWU" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
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
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
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
                      <ref role="3Tt5mk" to="wq2x:6p0DfM0ajKO" resolve="constraint" />
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
                      <ref role="3Tt5mk" to="wq2x:6p0DfM0pQge" resolve="clause" />
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
                      <ref role="3Tt5mk" to="5j4j:7E86$tK_PaH" resolve="declaration" />
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
                      <ref role="prhl7" to="5j4j:7E86$tK_PaH" resolve="declaration" />
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
                      <ref role="3Tt5mk" to="wq2x:4EfgX2EvGcc" resolve="expression" />
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
              <node concept="3clFbF" id="746Sd4ujsrJ" role="3cqZAp">
                <node concept="2OqwBi" id="746Sd4ujsrK" role="3clFbG">
                  <node concept="35c_gC" id="746Sd4ujsrL" role="2Oq$k0">
                    <ref role="35c_gD" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
                  </node>
                  <node concept="3n3YKJ" id="746Sd4ujsrM" role="2OqNvi" />
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
          <node concept="3cpWs8" id="746Sd4ujx0q" role="3cqZAp">
            <node concept="3cpWsn" id="746Sd4ujx0r" role="3cpWs9">
              <property role="TrG5h" value="smd" />
              <node concept="3Tqbb2" id="746Sd4ujx0p" role="1tU5fm">
                <ref role="ehGHo" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
              </node>
              <node concept="2OqwBi" id="746Sd4ujx0s" role="33vP2m">
                <node concept="3bvxqY" id="746Sd4ujx0t" role="2Oq$k0" />
                <node concept="2Xjw5R" id="746Sd4ujx0u" role="2OqNvi">
                  <node concept="1xMEDy" id="746Sd4ujx0v" role="1xVPHs">
                    <node concept="chp4Y" id="3yhgKRJ20Aj" role="ri$Ld">
                      <ref role="cht4Q" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7ksQUDZorV5" role="3cqZAp">
            <node concept="22lmx$" id="746Sd4ujt2O" role="3clFbG">
              <node concept="2OqwBi" id="7ksQUDZosOx" role="3uHU7B">
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
              <node concept="3y3z36" id="746Sd4ukCk6" role="3uHU7w">
                <node concept="10Nm6u" id="746Sd4ukCu4" role="3uHU7w" />
                <node concept="2YIFZM" id="746Sd4ukA7l" role="3uHU7B">
                  <ref role="37wK5l" to="hy7p:746Sd4ujSOx" resolve="templateMethodKind" />
                  <ref role="1Pybhc" to="hy7p:746Sd4ujSKb" resolve="RuleTemplateUtil" />
                  <node concept="37vLTw" id="746Sd4ukAlN" role="37wK5m">
                    <ref role="3cqZAo" node="746Sd4ujx0r" resolve="smd" />
                  </node>
                </node>
              </node>
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
              <node concept="3clFbF" id="746Sd4ujqCr" role="3cqZAp">
                <node concept="2OqwBi" id="746Sd4ujrh1" role="3clFbG">
                  <node concept="35c_gC" id="746Sd4ujqCp" role="2Oq$k0">
                    <ref role="35c_gD" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
                  </node>
                  <node concept="3n3YKJ" id="746Sd4ujrV$" role="2OqNvi" />
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
    <property role="TrG5h" value="LogicVariableDeclaration_specify_dataType" />
    <node concept="3UNGvq" id="5zfvpQ72pHG" role="3UOs0v">
      <ref role="3UNGvu" to="wq2x:2E5lcNn8iYG" resolve="LogicVariableDeclarationStatement" />
      <node concept="3kRJcU" id="5zfvpQ72pHL" role="3kShCk">
        <node concept="3clFbS" id="5zfvpQ72pHM" role="2VODD2">
          <node concept="3clFbF" id="5zfvpQ72pMH" role="3cqZAp">
            <node concept="2OqwBi" id="5zfvpQ72qDc" role="3clFbG">
              <node concept="2OqwBi" id="5zfvpQ72pSr" role="2Oq$k0">
                <node concept="Cj7Ep" id="5zfvpQ72pMG" role="2Oq$k0" />
                <node concept="3TrEf2" id="5zfvpQ72qlf" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
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
                      <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
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
    <node concept="3UNGvq" id="1iWwVK2CC2i" role="3UOs0v">
      <ref role="3UNGvu" to="wq2x:PB1R3Y7Ed7" resolve="RulePartParameterDeclaration" />
      <node concept="3kRJcU" id="1iWwVK2CC31" role="3kShCk">
        <node concept="3clFbS" id="1iWwVK2CC32" role="2VODD2">
          <node concept="3clFbF" id="1iWwVK2CCab" role="3cqZAp">
            <node concept="2OqwBi" id="1iWwVK2CD25" role="3clFbG">
              <node concept="2OqwBi" id="1iWwVK2CCpo" role="2Oq$k0">
                <node concept="Cj7Ep" id="1iWwVK2CCaa" role="2Oq$k0" />
                <node concept="3TrEf2" id="1iWwVK2CCIJ" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
                </node>
              </node>
              <node concept="3w_OXm" id="1iWwVK2CDuY" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="tYCnQ" id="1iWwVK2CDHD" role="_1QTJ">
        <ref role="uz4UX" to="wq2x:PB1R3Y7Ed7" resolve="RulePartParameterDeclaration" />
        <node concept="Cmt7Y" id="1iWwVK2CE3T" role="uz6Si">
          <node concept="Cnhdc" id="1iWwVK2CE3U" role="Cncma">
            <node concept="3clFbS" id="1iWwVK2CE3V" role="2VODD2">
              <node concept="3clFbF" id="1iWwVK2CE9A" role="3cqZAp">
                <node concept="2OqwBi" id="1iWwVK2CEQy" role="3clFbG">
                  <node concept="2OqwBi" id="1iWwVK2CEhH" role="2Oq$k0">
                    <node concept="Cj7Ep" id="1iWwVK2CE9_" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1iWwVK2CEzg" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="1iWwVK2CFfE" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="1iWwVK2CFrt" role="3cqZAp">
                <node concept="Cj7Ep" id="1iWwVK2CFrr" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="2h1dTh" id="1iWwVK2CE7g" role="Cn2iK">
            <property role="2h1i$Z" value="&lt;" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3UNGvq" id="1iWwVK2CFXE" role="3UOs0v">
      <ref role="3UNGvu" to="wq2x:7IysFe_ZPXH" resolve="TypeInitializerLogicalDeclaration" />
      <node concept="3kRJcU" id="1iWwVK2CFZn" role="3kShCk">
        <node concept="3clFbS" id="1iWwVK2CFZo" role="2VODD2">
          <node concept="3clFbF" id="1iWwVK2CGkH" role="3cqZAp">
            <node concept="2OqwBi" id="1iWwVK2CHJW" role="3clFbG">
              <node concept="2OqwBi" id="1iWwVK2CGFF" role="2Oq$k0">
                <node concept="Cj7Ep" id="1iWwVK2CGkG" role="2Oq$k0" />
                <node concept="3TrEf2" id="1iWwVK2CH12" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
                </node>
              </node>
              <node concept="3w_OXm" id="1iWwVK2CIcS" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="tYCnQ" id="1iWwVK2CIo8" role="_1QTJ">
        <ref role="uz4UX" to="wq2x:7IysFe_ZPXH" resolve="TypeInitializerLogicalDeclaration" />
        <node concept="Cmt7Y" id="1iWwVK2CIIo" role="uz6Si">
          <node concept="Cnhdc" id="1iWwVK2CIIp" role="Cncma">
            <node concept="3clFbS" id="1iWwVK2CIIq" role="2VODD2">
              <node concept="3clFbF" id="1iWwVK2CILO" role="3cqZAp">
                <node concept="2OqwBi" id="1iWwVK2CJpw" role="3clFbG">
                  <node concept="2OqwBi" id="1iWwVK2CIVC" role="2Oq$k0">
                    <node concept="Cj7Ep" id="1iWwVK2CILN" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1iWwVK2CJ6e" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="1iWwVK2CJMC" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="1iWwVK2CJYr" role="3cqZAp">
                <node concept="Cj7Ep" id="1iWwVK2CJYp" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="2h1dTh" id="1iWwVK2CILJ" role="Cn2iK">
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
        <ref role="uz4UX" to="wq2x:2CEQDIDRX6M" resolve="TypeTermExpression" />
        <node concept="uMFAO" id="2N2MQGCIMsK" role="uz6Si">
          <node concept="3Tqbb2" id="2N2MQGCJ4jR" role="uMOYW">
            <ref role="ehGHo" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
          </node>
          <node concept="uSIkt" id="2N2MQGCIMsM" role="uTubQ">
            <node concept="3clFbS" id="2N2MQGCIMsN" role="2VODD2">
              <node concept="3cpWs8" id="2CEQDIDTvVJ" role="3cqZAp">
                <node concept="3cpWsn" id="2CEQDIDTvVK" role="3cpWs9">
                  <property role="TrG5h" value="term" />
                  <node concept="3Tqbb2" id="2CEQDIDTvVH" role="1tU5fm">
                    <ref role="ehGHo" to="wq2x:2CEQDIDRX6M" resolve="TypeTermExpression" />
                  </node>
                  <node concept="2ShNRf" id="2CEQDIDTvVL" role="33vP2m">
                    <node concept="2fJWfE" id="2CEQDIDTvVM" role="2ShVmc">
                      <node concept="3Tqbb2" id="2CEQDIDTvVN" role="3zrR0E">
                        <ref role="ehGHo" to="wq2x:2CEQDIDRX6M" resolve="TypeTermExpression" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2CEQDIDTuFk" role="3cqZAp">
                <node concept="2OqwBi" id="2CEQDIDTwBj" role="3clFbG">
                  <node concept="2OqwBi" id="2CEQDIDTw3H" role="2Oq$k0">
                    <node concept="37vLTw" id="2CEQDIDTvVO" role="2Oq$k0">
                      <ref role="3cqZAo" node="2CEQDIDTvVK" resolve="term" />
                    </node>
                    <node concept="3TrEf2" id="2CEQDIDTwfa" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:2CEQDIDTdBu" resolve="template" />
                    </node>
                  </node>
                  <node concept="2oxUTD" id="2CEQDIDTwWx" role="2OqNvi">
                    <node concept="uNquD" id="2CEQDIDTwZR" role="2oxUTC" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCKo7N" role="3cqZAp">
                <node concept="2OqwBi" id="2N2MQGCKoHZ" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCKoqB" role="2Oq$k0">
                    <node concept="37vLTw" id="2CEQDIDTx34" role="2Oq$k0">
                      <ref role="3cqZAo" node="2CEQDIDTvVK" resolve="term" />
                    </node>
                    <node concept="3TrEf2" id="2N2MQGCKo$4" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" resolve="root" />
                    </node>
                  </node>
                  <node concept="2oxUTD" id="2N2MQGCKoWy" role="2OqNvi">
                    <node concept="2YIFZM" id="2N2MQGCKnCn" role="2oxUTC">
                      <ref role="37wK5l" to="hy7p:2N2MQGCJu99" resolve="createFromTemplate" />
                      <ref role="1Pybhc" to="hy7p:2N2MQGCJu8I" resolve="TypeTermUtil" />
                      <node concept="2OqwBi" id="2N2MQGCKsEz" role="37wK5m">
                        <node concept="uNquD" id="2N2MQGCKnGg" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2N2MQGCKsQ9" role="2OqNvi">
                          <ref role="3Tt5mk" to="wq2x:1pPth$m5BbA" resolve="term" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2CEQDIDTxpb" role="3cqZAp">
                <node concept="37vLTw" id="2CEQDIDTxp9" role="3clFbG">
                  <ref role="3cqZAo" node="2CEQDIDTvVK" resolve="term" />
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
  <node concept="3FK_9_" id="1hX44vMLjek">
    <property role="3GE5qa" value="type.code" />
    <property role="TrG5h" value="TypeNode_Expression" />
    <node concept="3FOIzC" id="1hX44vMLjel" role="3FOPby">
      <ref role="3FOWKa" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="3buRE8" id="1hX44vMLjem" role="3bvWUf">
        <node concept="3clFbS" id="1hX44vMLjen" role="2VODD2">
          <node concept="3clFbF" id="1hX44vMLjlw" role="3cqZAp">
            <node concept="2OqwBi" id="1hX44vMLkds" role="3clFbG">
              <node concept="2OqwBi" id="1hX44vMLjzf" role="2Oq$k0">
                <node concept="3bvxqY" id="1hX44vMLjlv" role="2Oq$k0" />
                <node concept="2Xjw5R" id="1hX44vMLjNy" role="2OqNvi">
                  <node concept="3gmYPX" id="7IysFeA8rA$" role="1xVPHs">
                    <node concept="3gn64h" id="7IysFeA8rNw" role="3gmYPZ">
                      <ref role="3gnhBz" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
                    </node>
                    <node concept="3gn64h" id="7IysFeA8s9N" role="3gmYPZ">
                      <ref role="3gnhBz" to="wq2x:7IysFeA0yb0" resolve="TypeDeclarationParameter" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="7IysFeA8tDh" role="1xVPHs" />
                </node>
              </node>
              <node concept="1mIQ4w" id="7IysFeA8ueU" role="2OqNvi">
                <node concept="chp4Y" id="7IysFeA8urF" role="cj9EA">
                  <ref role="cht4Q" to="wq2x:7IysFeA0yb0" resolve="TypeDeclarationParameter" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="tYCnQ" id="1hX44vMLmzJ" role="tZc4B">
        <ref role="uz4UX" to="wq2x:1hX44vMEjQr" resolve="TypeNodeExpression" />
        <node concept="ucClh" id="1hX44vMLmWI" role="uz6Si">
          <node concept="ucgPf" id="1hX44vMLmWJ" role="ucMEw">
            <node concept="3clFbS" id="1hX44vMLmWK" role="2VODD2">
              <node concept="3cpWs8" id="1hX44vMLpir" role="3cqZAp">
                <node concept="3cpWsn" id="1hX44vMLpis" role="3cpWs9">
                  <property role="TrG5h" value="node" />
                  <node concept="3Tqbb2" id="1hX44vMLpiq" role="1tU5fm">
                    <ref role="ehGHo" to="wq2x:1hX44vMEjQr" resolve="TypeNodeExpression" />
                  </node>
                  <node concept="2ShNRf" id="1hX44vMLpit" role="33vP2m">
                    <node concept="3zrR0B" id="1hX44vMLpiu" role="2ShVmc">
                      <node concept="3Tqbb2" id="1hX44vMLpiv" role="3zrR0E">
                        <ref role="ehGHo" to="wq2x:1hX44vMEjQr" resolve="TypeNodeExpression" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1hX44vMLpro" role="3cqZAp">
                <node concept="2OqwBi" id="1hX44vMLq6I" role="3clFbG">
                  <node concept="2OqwBi" id="1hX44vMLp$k" role="2Oq$k0">
                    <node concept="37vLTw" id="1hX44vMLprm" role="2Oq$k0">
                      <ref role="3cqZAo" node="1hX44vMLpis" resolve="node" />
                    </node>
                    <node concept="3TrEf2" id="1hX44vMLpLg" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:1hX44vMIQ6F" resolve="declaration" />
                    </node>
                  </node>
                  <node concept="2oxUTD" id="1hX44vMLqx4" role="2OqNvi">
                    <node concept="2OqwBi" id="1hX44vMLqSx" role="2oxUTC">
                      <node concept="3bvxqY" id="1hX44vMLqBE" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="1hX44vMLr88" role="2OqNvi">
                        <node concept="1xMEDy" id="1hX44vMLr8a" role="1xVPHs">
                          <node concept="chp4Y" id="1hX44vMLreW" role="ri$Ld">
                            <ref role="cht4Q" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1hX44vMLoW5" role="3cqZAp">
                <node concept="37vLTw" id="1hX44vMLpiw" role="3clFbG">
                  <ref role="3cqZAo" node="1hX44vMLpis" resolve="node" />
                </node>
              </node>
            </node>
          </node>
          <node concept="uGdhv" id="1hX44vMLnk5" role="uGu3D">
            <node concept="3clFbS" id="1hX44vMLnk7" role="2VODD2">
              <node concept="3clFbF" id="1hX44vMLnwy" role="3cqZAp">
                <node concept="2OqwBi" id="1hX44vMLo9l" role="3clFbG">
                  <node concept="35c_gC" id="1hX44vMLnwx" role="2Oq$k0">
                    <ref role="35c_gD" to="wq2x:1hX44vMEjQr" resolve="TypeNodeExpression" />
                  </node>
                  <node concept="3n3YKJ" id="1hX44vMLoMA" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3UOs0u" id="18kNIl0OXSX">
    <property role="3GE5qa" value="constraint.typespecific" />
    <property role="TrG5h" value="NewTypeConstraint_substitution" />
    <node concept="3UNGvq" id="18kNIl0OXSY" role="3UOs0v">
      <property role="2uHTBK" value="ext_2_RTransform" />
      <ref role="3UNGvu" to="wq2x:7eGEHDlgPU1" resolve="NewTypeConstraint" />
      <node concept="3kRJcU" id="18kNIl0OXU_" role="3kShCk">
        <node concept="3clFbS" id="18kNIl0OXUA" role="2VODD2">
          <node concept="3clFbF" id="18kNIl0OY1J" role="3cqZAp">
            <node concept="2OqwBi" id="18kNIl0P01v" role="3clFbG">
              <node concept="2OqwBi" id="18kNIl0OYhF" role="2Oq$k0">
                <node concept="Cj7Ep" id="18kNIl0OY1I" role="2Oq$k0" />
                <node concept="3TrEf2" id="18kNIl0OZB6" role="2OqNvi">
                  <ref role="3Tt5mk" to="wq2x:18kNIl0OYEq" resolve="substitution" />
                </node>
              </node>
              <node concept="3w_OXm" id="18kNIl0P0pj" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="tYCnQ" id="18kNIl0P0_g" role="_1QTJ">
        <ref role="uz4UX" to="wq2x:7eGEHDlgPU1" resolve="NewTypeConstraint" />
        <node concept="Cmt7Y" id="18kNIl0P0Vs" role="uz6Si">
          <node concept="Cnhdc" id="18kNIl0P0Vu" role="Cncma">
            <node concept="3clFbS" id="18kNIl0P0Vw" role="2VODD2">
              <node concept="3clFbF" id="18kNIl0P0YV" role="3cqZAp">
                <node concept="2OqwBi" id="18kNIl0P20F" role="3clFbG">
                  <node concept="2OqwBi" id="18kNIl0P1hZ" role="2Oq$k0">
                    <node concept="Cj7Ep" id="18kNIl0P0YU" role="2Oq$k0" />
                    <node concept="3TrEf2" id="18kNIl0P1A1" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:18kNIl0OYEq" resolve="substitution" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="18kNIl0P2kI" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="18kNIl0P2yE" role="3cqZAp">
                <node concept="Cj7Ep" id="18kNIl0P2yC" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="2h1dTh" id="18kNIl0P0YQ" role="Cn2iK">
            <property role="2h1i$Z" value="[" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3UOs0u" id="18kNIl0PReP">
    <property role="3GE5qa" value="constraint.typespecific" />
    <property role="TrG5h" value="AsTypeConstraint_substitution" />
    <node concept="3UNGvq" id="18kNIl0PReQ" role="3UOs0v">
      <ref role="3UNGvu" to="wq2x:18kNIl0jL2T" resolve="AsTypeConstraint" />
      <node concept="tYCnQ" id="18kNIl0PT4H" role="_1QTJ">
        <ref role="uz4UX" to="wq2x:18kNIl0jL2T" resolve="AsTypeConstraint" />
        <node concept="Cmt7Y" id="18kNIl0PTqU" role="uz6Si">
          <node concept="Cnhdc" id="18kNIl0PTqW" role="Cncma">
            <node concept="3clFbS" id="18kNIl0PTqY" role="2VODD2">
              <node concept="3clFbF" id="18kNIl0PTup" role="3cqZAp">
                <node concept="2OqwBi" id="18kNIl0PU8m" role="3clFbG">
                  <node concept="2OqwBi" id="18kNIl0PTCU" role="2Oq$k0">
                    <node concept="Cj7Ep" id="18kNIl0PTuo" role="2Oq$k0" />
                    <node concept="3TrEf2" id="18kNIl0PTOL" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:18kNIl0PNUA" resolve="substitution" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="18kNIl0PUsp" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="18kNIl0PUCG" role="3cqZAp">
                <node concept="Cj7Ep" id="18kNIl0PUCE" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="2h1dTh" id="18kNIl0PTuk" role="Cn2iK">
            <property role="2h1i$Z" value="[" />
          </node>
        </node>
      </node>
      <node concept="3kRJcU" id="18kNIl0PReR" role="3kShCk">
        <node concept="3clFbS" id="18kNIl0PReS" role="2VODD2">
          <node concept="3clFbF" id="18kNIl0PRm1" role="3cqZAp">
            <node concept="2OqwBi" id="18kNIl0PSmz" role="3clFbG">
              <node concept="2OqwBi" id="18kNIl0PR_X" role="2Oq$k0">
                <node concept="Cj7Ep" id="18kNIl0PRm0" role="2Oq$k0" />
                <node concept="3TrEf2" id="18kNIl0PRXN" role="2OqNvi">
                  <ref role="3Tt5mk" to="wq2x:18kNIl0PNUA" resolve="substitution" />
                </node>
              </node>
              <node concept="3w_OXm" id="18kNIl0PSBk" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3FK_9_" id="7IysFeA3quv">
    <property role="3GE5qa" value="type.decl" />
    <property role="TrG5h" value="TypeDeclaration_parameter" />
    <node concept="3FOIzC" id="7IysFeA3quw" role="3FOPby">
      <ref role="3FOWKa" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="3buRE8" id="7IysFeA3qJp" role="3bvWUf">
        <node concept="3clFbS" id="7IysFeA3qJq" role="2VODD2">
          <node concept="3clFbF" id="7IysFeA3qQz" role="3cqZAp">
            <node concept="2OqwBi" id="7IysFeA3s14" role="3clFbG">
              <node concept="2OqwBi" id="7IysFeA3r4i" role="2Oq$k0">
                <node concept="3bvxqY" id="7IysFeA3qQy" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7IysFeA3rk_" role="2OqNvi">
                  <node concept="1xMEDy" id="7IysFeA3rkB" role="1xVPHs">
                    <node concept="chp4Y" id="7IysFeA3rtB" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="7IysFeA3rL1" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="7IysFeA3sqf" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="35xCft" id="7IysFeA3szP" role="tZc4B">
        <ref role="35y72J" to="wq2x:7IysFeA1uPa" resolve="TypeDeclarationParameterReference" />
      </node>
    </node>
  </node>
  <node concept="3FK_9_" id="7IysFeA80Ug">
    <property role="3GE5qa" value="type.code" />
    <property role="TrG5h" value="TypeConcept_Expression" />
    <node concept="3FOIzC" id="7IysFeA80Uh" role="3FOPby">
      <ref role="3FOWKa" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="3buRE8" id="7IysFeA80Uj" role="3bvWUf">
        <node concept="3clFbS" id="7IysFeA80Uk" role="2VODD2">
          <node concept="3clFbF" id="7IysFeA811t" role="3cqZAp">
            <node concept="2OqwBi" id="7IysFeA82bY" role="3clFbG">
              <node concept="2OqwBi" id="7IysFeA81fc" role="2Oq$k0">
                <node concept="3bvxqY" id="7IysFeA811s" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7IysFeA81vv" role="2OqNvi">
                  <node concept="1xMEDy" id="7IysFeA81vx" role="1xVPHs">
                    <node concept="chp4Y" id="7IysFeA81Cx" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="7IysFeA81VV" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="7IysFeA82_6" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="35xCft" id="7IysFeA82J4" role="tZc4B">
        <ref role="35y72J" to="wq2x:7IysFeA7WUr" resolve="TypeConceptExpression" />
      </node>
    </node>
  </node>
  <node concept="3FK_9_" id="7IysFeA99pw">
    <property role="3GE5qa" value="type.code" />
    <property role="TrG5h" value="TypeLogical_Expression" />
    <node concept="3FOIzC" id="7IysFeA99px" role="3FOPby">
      <ref role="3FOWKa" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="3buRE8" id="7IysFeA99pz" role="3bvWUf">
        <node concept="3clFbS" id="7IysFeA99p$" role="2VODD2">
          <node concept="3clFbF" id="7IysFeA99wH" role="3cqZAp">
            <node concept="2OqwBi" id="7IysFeA9aJk" role="3clFbG">
              <node concept="2OqwBi" id="7IysFeA99Is" role="2Oq$k0">
                <node concept="3bvxqY" id="7IysFeA99wG" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7IysFeA99YJ" role="2OqNvi">
                  <node concept="1xMEDy" id="7IysFeA99YL" role="1xVPHs">
                    <node concept="chp4Y" id="7IysFeA9_6e" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:7IysFe_ZPX_" resolve="TypeInitializer" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="7IysFeA9atN" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="7IysFeA9bdv" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="35xCft" id="7IysFeA9bnG" role="tZc4B">
        <ref role="35y72J" to="wq2x:7IysFeA99oR" resolve="TypeLogicalExpression" />
      </node>
    </node>
  </node>
  <node concept="3FK_9_" id="3TnYLtqg$O4">
    <property role="3GE5qa" value="type.code" />
    <property role="TrG5h" value="ContextParameter_Expression" />
    <node concept="3FOIzC" id="3TnYLtqg$O5" role="3FOPby">
      <ref role="3FOWKa" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="3buRE8" id="3TnYLtqg$O7" role="3bvWUf">
        <node concept="3clFbS" id="3TnYLtqg$O8" role="2VODD2">
          <node concept="3clFbF" id="3TnYLtqg$Vh" role="3cqZAp">
            <node concept="2OqwBi" id="3TnYLtqg_WB" role="3clFbG">
              <node concept="2OqwBi" id="3TnYLtqg_90" role="2Oq$k0">
                <node concept="3bvxqY" id="3TnYLtqg$Vg" role="2Oq$k0" />
                <node concept="2Xjw5R" id="3TnYLtqg_pj" role="2OqNvi">
                  <node concept="1xMEDy" id="3TnYLtqg_pl" role="1xVPHs">
                    <node concept="chp4Y" id="3TnYLtqg_yl" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:1pPth$m5B4X" resolve="TypeTable" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="3TnYLtqg_G$" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="3TnYLtqgAlJ" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="tYCnQ" id="3TnYLtqgAvD" role="tZc4B">
        <ref role="uz4UX" to="wq2x:3TnYLtqfh$J" resolve="ContextParameterReference" />
        <node concept="uMFAO" id="3TnYLtqgAvL" role="uz6Si">
          <node concept="3Tqbb2" id="3TnYLtqgACF" role="uMOYW">
            <ref role="ehGHo" to="wq2x:3TnYLtqfhzx" resolve="ContextParameterDeclaration" />
          </node>
          <node concept="uNCsQ" id="3TnYLtqgAvN" role="uO7ob">
            <node concept="3clFbS" id="3TnYLtqgAvO" role="2VODD2">
              <node concept="3clFbF" id="3TnYLtqgAU7" role="3cqZAp">
                <node concept="2OqwBi" id="3TnYLtqgAU8" role="3clFbG">
                  <node concept="2OqwBi" id="3TnYLtqgAU9" role="2Oq$k0">
                    <node concept="3bvxqY" id="3TnYLtqgAUa" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="3TnYLtqgAUb" role="2OqNvi">
                      <node concept="1xMEDy" id="3TnYLtqgAUc" role="1xVPHs">
                        <node concept="chp4Y" id="3TnYLtqgAUd" role="ri$Ld">
                          <ref role="cht4Q" to="wq2x:1pPth$m5B4X" resolve="TypeTable" />
                        </node>
                      </node>
                      <node concept="1xIGOp" id="3TnYLtqgAUe" role="1xVPHs" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="3TnYLtqgB_l" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:3TnYLtqfp9N" resolve="parameter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="uSIkt" id="3TnYLtqgAvP" role="uTubQ">
            <node concept="3clFbS" id="3TnYLtqgAvQ" role="2VODD2">
              <node concept="3cpWs8" id="3TnYLtqgFLh" role="3cqZAp">
                <node concept="3cpWsn" id="3TnYLtqgFLi" role="3cpWs9">
                  <property role="TrG5h" value="cpr" />
                  <node concept="3Tqbb2" id="3TnYLtqgFLg" role="1tU5fm">
                    <ref role="ehGHo" to="wq2x:3TnYLtqfh$J" resolve="ContextParameterReference" />
                  </node>
                  <node concept="2ShNRf" id="3TnYLtqgFLj" role="33vP2m">
                    <node concept="3zrR0B" id="3TnYLtqgFLk" role="2ShVmc">
                      <node concept="3Tqbb2" id="3TnYLtqgFLl" role="3zrR0E">
                        <ref role="ehGHo" to="wq2x:3TnYLtqfh$J" resolve="ContextParameterReference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3TnYLtqgFiH" role="3cqZAp">
                <node concept="37vLTI" id="3TnYLtqgI_O" role="3clFbG">
                  <node concept="uNquD" id="3TnYLtqgIKG" role="37vLTx" />
                  <node concept="2OqwBi" id="3TnYLtqgG3e" role="37vLTJ">
                    <node concept="37vLTw" id="3TnYLtqgFLm" role="2Oq$k0">
                      <ref role="3cqZAo" node="3TnYLtqgFLi" resolve="cpr" />
                    </node>
                    <node concept="3TrEf2" id="3TnYLtqgGo2" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:3TnYLtqfh$T" resolve="parameter" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3TnYLtqgJ1X" role="3cqZAp">
                <node concept="37vLTw" id="3TnYLtqgJ1V" role="3clFbG">
                  <ref role="3cqZAo" node="3TnYLtqgFLi" resolve="cpr" />
                </node>
              </node>
            </node>
          </node>
          <node concept="uSjag" id="3TnYLtqgEdP" role="uSyvl">
            <node concept="3clFbS" id="3TnYLtqgEdQ" role="2VODD2">
              <node concept="3clFbF" id="3TnYLtqgExq" role="3cqZAp">
                <node concept="2OqwBi" id="3TnYLtqgEOa" role="3clFbG">
                  <node concept="uNquD" id="3TnYLtqgExp" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3TnYLtqgF7M" role="2OqNvi">
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
  <node concept="3UOs0u" id="1L74NXFO1Dj">
    <property role="3GE5qa" value="type.term" />
    <property role="TrG5h" value="TypeTerm_addOverride" />
    <node concept="3UNGvq" id="1L74NXFO1Dk" role="3UOs0v">
      <property role="2uHTBK" value="ext_1_RTransform" />
      <ref role="3UNGvu" to="wq2x:1L74NXElX0R" resolve="TypeTerm" />
      <node concept="3kRJcU" id="1L74NXFO1Dl" role="3kShCk">
        <node concept="3clFbS" id="1L74NXFO1Dm" role="2VODD2">
          <node concept="3clFbF" id="1L74NXFO1Kv" role="3cqZAp">
            <node concept="2OqwBi" id="1L74NXFO3X1" role="3clFbG">
              <node concept="2OqwBi" id="1L74NXFO20k" role="2Oq$k0">
                <node concept="Cj7Ep" id="1L74NXFO1Ku" role="2Oq$k0" />
                <node concept="3Tsc0h" id="1L74NXFO2nJ" role="2OqNvi">
                  <ref role="3TtcxE" to="wq2x:1L74NXFNj2L" resolve="override" />
                </node>
              </node>
              <node concept="1v1jN8" id="1L74NXFO6fV" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="tYCnQ" id="1L74NXFOc9r" role="_1QTJ">
        <ref role="uz4UX" to="wq2x:1L74NXElX0R" resolve="TypeTerm" />
        <node concept="Cmt7Y" id="1L74NXFOctf" role="uz6Si">
          <node concept="Cnhdc" id="1L74NXFOcth" role="Cncma">
            <node concept="3clFbS" id="1L74NXFOctj" role="2VODD2">
              <node concept="3clFbF" id="1L74NXFOcwR" role="3cqZAp">
                <node concept="2OqwBi" id="1L74NXFOews" role="3clFbG">
                  <node concept="2OqwBi" id="1L74NXFOcFq" role="2Oq$k0">
                    <node concept="Cj7Ep" id="1L74NXFOcwQ" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="1L74NXFOcYY" role="2OqNvi">
                      <ref role="3TtcxE" to="wq2x:1L74NXFNj2L" resolve="override" />
                    </node>
                  </node>
                  <node concept="2DeJg1" id="1L74NXFOgPd" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="1L74NXFOh1C" role="3cqZAp">
                <node concept="Cj7Ep" id="1L74NXFOh1A" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="2h1dTh" id="1L74NXFOcwD" role="Cn2iK">
            <property role="2h1i$Z" value="[" />
          </node>
          <node concept="2h1dTh" id="1L74NXFOcwL" role="Cn6ar">
            <property role="2h1i$Z" value="specify overrides" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

