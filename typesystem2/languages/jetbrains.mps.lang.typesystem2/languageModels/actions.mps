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
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
        <child id="1177498207384" name="handler" index="Cncma" />
      </concept>
      <concept id="1177498227294" name="jetbrains.mps.lang.actions.structure.QueryFunction_SideTransform_Handler" flags="in" index="Cnhdc" />
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
      <concept id="1143235216708" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewNodeOperation" flags="nn" index="I8ghe">
        <reference id="1143235391024" name="concept" index="I8UWU" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
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
      <concept id="1219352745532" name="jetbrains.mps.lang.smodel.structure.NodeRefExpression" flags="nn" index="3B5_sB">
        <reference id="1219352800908" name="referentNode" index="3B5MYn" />
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
                  <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" />
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
                      <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" />
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
                      <ref role="3Tt5mk" to="wq2x:2CEQDIDTdBu" />
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
                      <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" />
                    </node>
                  </node>
                  <node concept="2oxUTD" id="2N2MQGCKoWy" role="2OqNvi">
                    <node concept="2YIFZM" id="2N2MQGCKnCn" role="2oxUTC">
                      <ref role="37wK5l" to="hy7p:2N2MQGCJu99" resolve="createFromTemplate" />
                      <ref role="1Pybhc" to="hy7p:2N2MQGCJu8I" resolve="TypeTermUtil" />
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
</model>

