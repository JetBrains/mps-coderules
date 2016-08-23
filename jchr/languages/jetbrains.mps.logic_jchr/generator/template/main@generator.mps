<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:beeea4e2-afd1-4e2b-beb7-17f38ef04a5e(jetbrains.mps.logic_jchr.generator.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="0" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="0" />
    <use id="cd9dfc9b-6796-491f-83c8-b3448018e7f5" name="jetbrains.mps.logic_jchr" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="4" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="vgt0" ref="r:f36c95e5-e428-4945-91ae-1005e20c7971(jetbrains.mps.jchr.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="ouxx" ref="r:727775a3-16ae-4b9f-80a6-9ef3207ffa6a(jetbrains.mps.logic.generator.template.main@generator)" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="45ys" ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)" />
  </imports>
  <registry>
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1200911492601" name="mappingLabel" index="2rTMjI" />
        <child id="7473026166162327259" name="dropAttrubuteRule" index="CYSdJ" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1168559512253" name="jetbrains.mps.lang.generator.structure.DismissTopMappingRule" flags="lg" index="j$LIH">
        <child id="1169669152123" name="generatorMessage" index="1lHHLF" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1200911316486" name="jetbrains.mps.lang.generator.structure.MappingLabelDeclaration" flags="lg" index="2rT7sh">
        <reference id="1200911342686" name="sourceConcept" index="2rTdP9" />
        <reference id="1200913004646" name="targetConcept" index="2rZz_L" />
      </concept>
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
        <child id="1722980698497626405" name="actualArgument" index="v9R3O" />
      </concept>
      <concept id="1194565793557" name="jetbrains.mps.lang.generator.structure.IncludeMacro" flags="ln" index="xERo3">
        <reference id="1194566366375" name="includeTemplate" index="xH3mL" />
      </concept>
      <concept id="7473026166162297915" name="jetbrains.mps.lang.generator.structure.DropAttributeRule" flags="lg" index="CY16f">
        <reference id="7473026166162297918" name="applicableConcept" index="CY16a" />
      </concept>
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1200917515464" name="labelDeclaration" index="2sgKRv" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1195158154974" name="jetbrains.mps.lang.generator.structure.InlineSwitch_RuleConsequence" flags="lg" index="14YyZ8">
        <child id="1195158241124" name="defaultConsequence" index="14YRTM" />
        <child id="1195158408710" name="case" index="14ZwWg" />
      </concept>
      <concept id="1195158388553" name="jetbrains.mps.lang.generator.structure.InlineSwitch_Case" flags="ng" index="14ZrTv">
        <child id="1195158608805" name="conditionFunction" index="150hEN" />
        <child id="1195158637244" name="caseConsequence" index="150oIE" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1087833466690" name="jetbrains.mps.lang.generator.structure.NodeMacro" flags="lg" index="17VmuZ">
        <reference id="1200912223215" name="mappingLabel" index="2rW$FS" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <property id="1177959072138" name="keepSourceRoot" index="13Pg2o" />
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1169670156577" name="jetbrains.mps.lang.generator.structure.GeneratorMessage" flags="lg" index="1lLz0L">
        <property id="1169670173015" name="messageText" index="1lLB17" />
        <property id="1169670356567" name="messageType" index="1lMjX7" />
      </concept>
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX">
        <child id="982871510068000158" name="sourceNodeQuery" index="1sPUBK" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167756221419" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_templatePropertyValue" flags="nn" index="3zGtF$" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1217889725928" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_SessionObjectAccess" flags="nn" index="2fSANN" />
      <concept id="1217889960776" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_UserObjectAccessBase" flags="nn" index="2fTw9j">
        <child id="1217890689512" name="userKey" index="2fWi3N" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1803469493727536395" name="jetbrains.mps.lang.smodel.structure.OperationParm_StopConceptList" flags="ng" index="hTh3S">
        <child id="1803469493727536396" name="concept" index="hTh3Z" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="bUwia" id="6yEjedmrN_Y">
    <property role="TrG5h" value="main" />
  </node>
  <node concept="312cEu" id="35Lj3TiR8No">
    <property role="TrG5h" value="Stuff" />
    <node concept="2tJIrI" id="35Lj3TiRjxl" role="jymVt" />
    <node concept="2YIFZL" id="35Lj3TiRjRb" role="jymVt">
      <property role="TrG5h" value="atom" />
      <node concept="37vLTG" id="35Lj3TiRke1" role="3clF46">
        <property role="TrG5h" value="param" />
        <node concept="3uibUv" id="35Lj3TiRkkj" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <node concept="29HgVG" id="35Lj3TiSfZe" role="lGtFl">
            <node concept="3NFfHV" id="35Lj3TiSgqy" role="3NFExx">
              <node concept="3clFbS" id="35Lj3TiSgqz" role="2VODD2">
                <node concept="3cpWs8" id="2AXhyOGXrUf" role="3cqZAp">
                  <node concept="3cpWsn" id="2AXhyOGXrUg" role="3cpWs9">
                    <property role="TrG5h" value="type" />
                    <node concept="3Tqbb2" id="2AXhyOGXrU8" role="1tU5fm" />
                    <node concept="2OqwBi" id="2AXhyOGXrUh" role="33vP2m">
                      <node concept="30H73N" id="2AXhyOGXrUi" role="2Oq$k0" />
                      <node concept="3JvlWi" id="2AXhyOGXrUj" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="1X3_iC" id="6UqNvvALqpw" role="lGtFl">
                  <property role="3V$3am" value="statement" />
                  <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                  <node concept="3SKdUt" id="2AXhyOGXzgm" role="8Wnug">
                    <node concept="3SKdUq" id="2AXhyOGXzgo" role="3SKWNk">
                      <property role="3SKdUp" value="FIXME hack!" />
                    </node>
                  </node>
                </node>
                <node concept="1X3_iC" id="6UqNvvALqpx" role="lGtFl">
                  <property role="3V$3am" value="statement" />
                  <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                  <node concept="3cpWs8" id="2AXhyOGXvid" role="8Wnug">
                    <node concept="3cpWsn" id="2AXhyOGXvie" role="3cpWs9">
                      <property role="TrG5h" value="key" />
                      <node concept="17QB3L" id="2AXhyOGXvia" role="1tU5fm" />
                      <node concept="3cpWs3" id="2AXhyOGXvif" role="33vP2m">
                        <node concept="Xl_RD" id="2AXhyOGXvig" role="3uHU7w">
                          <property role="Xl_RC" value=")" />
                        </node>
                        <node concept="3cpWs3" id="2AXhyOGXvih" role="3uHU7B">
                          <node concept="Xl_RD" id="2AXhyOGXvii" role="3uHU7B">
                            <property role="Xl_RC" value="typeOf(" />
                          </node>
                          <node concept="2OqwBi" id="2AXhyOGXvij" role="3uHU7w">
                            <node concept="2JrnkZ" id="2AXhyOGXvik" role="2Oq$k0">
                              <node concept="30H73N" id="2AXhyOGXvil" role="2JrQYb" />
                            </node>
                            <node concept="liA8E" id="2AXhyOGXvim" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1X3_iC" id="6UqNvvALqpy" role="lGtFl">
                  <property role="3V$3am" value="statement" />
                  <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                  <node concept="3clFbF" id="2AXhyOGXsaw" role="8Wnug">
                    <node concept="37vLTI" id="2AXhyOGXwSY" role="3clFbG">
                      <node concept="37vLTw" id="2AXhyOGXx6G" role="37vLTx">
                        <ref role="3cqZAo" node="2AXhyOGXrUg" resolve="type" />
                      </node>
                      <node concept="2OqwBi" id="2AXhyOGXsh8" role="37vLTJ">
                        <node concept="1iwH7S" id="2AXhyOGXsau" role="2Oq$k0" />
                        <node concept="2fSANN" id="2AXhyOGXsqd" role="2OqNvi">
                          <node concept="37vLTw" id="2AXhyOGXvin" role="2fWi3N">
                            <ref role="3cqZAo" node="2AXhyOGXvie" resolve="key" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1X3_iC" id="6UqNvvALqpz" role="lGtFl">
                  <property role="3V$3am" value="statement" />
                  <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                  <node concept="3clFbH" id="2AXhyOGXGie" role="8Wnug" />
                </node>
                <node concept="1X3_iC" id="6UqNvvALqp$" role="lGtFl">
                  <property role="3V$3am" value="statement" />
                  <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                  <node concept="34ab3g" id="2AXhyOGXGFi" role="8Wnug">
                    <property role="35gtTG" value="warn" />
                    <node concept="3cpWs3" id="2AXhyOGXJ4L" role="34bqiv">
                      <node concept="37vLTw" id="2AXhyOGXJlq" role="3uHU7w">
                        <ref role="3cqZAo" node="2AXhyOGXrUg" resolve="type" />
                      </node>
                      <node concept="3cpWs3" id="2AXhyOGXI4J" role="3uHU7B">
                        <node concept="3cpWs3" id="2AXhyOGXH$R" role="3uHU7B">
                          <node concept="Xl_RD" id="2AXhyOGXGFk" role="3uHU7B">
                            <property role="Xl_RC" value="*** set " />
                          </node>
                          <node concept="37vLTw" id="2AXhyOGXHLT" role="3uHU7w">
                            <ref role="3cqZAo" node="2AXhyOGXvie" resolve="key" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="2AXhyOGXIkC" role="3uHU7w">
                          <property role="Xl_RC" value=" = " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2AXhyOGXJ_E" role="3cqZAp" />
                <node concept="3clFbF" id="35Lj3TiSgFt" role="3cqZAp">
                  <node concept="37vLTw" id="2AXhyOGXrUk" role="3clFbG">
                    <ref role="3cqZAo" node="2AXhyOGXrUg" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1WS0z7" id="35Lj3TiRYjY" role="lGtFl">
          <node concept="3JmXsc" id="35Lj3TiRYk0" role="3Jn$fo">
            <node concept="3clFbS" id="35Lj3TiRYk2" role="2VODD2">
              <node concept="3SKdUt" id="514BAS_QPhQ" role="3cqZAp">
                <node concept="3SKdUq" id="514BAS_QPhS" role="3SKWNk">
                  <property role="3SKdUp" value="FIXME: using the type information to derive unrelated property" />
                </node>
              </node>
              <node concept="3clFbF" id="35Lj3TiRYE3" role="3cqZAp">
                <node concept="2OqwBi" id="514BAS_QITw" role="3clFbG">
                  <node concept="2OqwBi" id="35Lj3TiRYJj" role="2Oq$k0">
                    <node concept="30H73N" id="35Lj3TiRYE2" role="2Oq$k0" />
                    <node concept="2Rf3mk" id="35Lj3TiS02r" role="2OqNvi">
                      <node concept="1xMEDy" id="35Lj3TiS02t" role="1xVPHs">
                        <node concept="chp4Y" id="35Lj3TiS0m3" role="ri$Ld">
                          <ref role="cht4Q" to="vgt0:pmDhvH6BD8" resolve="LogicVariable" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="514BAS_QKlY" role="2OqNvi">
                    <node concept="1bVj0M" id="514BAS_QKm0" role="23t8la">
                      <node concept="3clFbS" id="514BAS_QKm1" role="1bW5cS">
                        <node concept="3clFbF" id="514BAS_QL$3" role="3cqZAp">
                          <node concept="2OqwBi" id="514BAS_QO6m" role="3clFbG">
                            <node concept="2OqwBi" id="514BAS_QLQ$" role="2Oq$k0">
                              <node concept="37vLTw" id="514BAS_QL$2" role="2Oq$k0">
                                <ref role="3cqZAo" node="514BAS_QKm2" resolve="it" />
                              </node>
                              <node concept="3JvlWi" id="514BAS_QMei" role="2OqNvi" />
                            </node>
                            <node concept="3x8VRR" id="514BAS_QOox" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="514BAS_QKm2" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="514BAS_QKm3" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17Uvod" id="35Lj3TiSmUq" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="35Lj3TiSmUr" role="3zH0cK">
            <node concept="3clFbS" id="35Lj3TiSmUs" role="2VODD2">
              <node concept="3clFbF" id="35Lj3TiSnv4" role="3cqZAp">
                <node concept="2OqwBi" id="35Lj3TiSn$v" role="3clFbG">
                  <node concept="30H73N" id="35Lj3TiSnv3" role="2Oq$k0" />
                  <node concept="3TrcHB" id="35Lj3TiSoj0" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="35Lj3TiSq77" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
      <node concept="3Tm1VV" id="35Lj3TiRjRe" role="1B3o_S" />
      <node concept="3clFbS" id="35Lj3TiRjRf" role="3clF47">
        <node concept="3clFbF" id="4pNU3yqbFhP" role="3cqZAp">
          <node concept="10Nm6u" id="4pNU3yqbFhN" role="3clFbG">
            <node concept="xERo3" id="4pNU3yqbFnX" role="lGtFl">
              <ref role="xH3mL" to="ouxx:35Lj3TiT1Wl" resolve="Ast_Builder" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1WS0z7" id="35Lj3TiRKla" role="lGtFl">
        <ref role="2rW$FS" node="35Lj3TiRCeh" resolve="Ast_Method" />
        <node concept="3JmXsc" id="35Lj3TiRKlc" role="3Jn$fo">
          <node concept="3clFbS" id="35Lj3TiRKle" role="2VODD2">
            <node concept="3clFbF" id="35Lj3TiRKyw" role="3cqZAp">
              <node concept="2OqwBi" id="35Lj3TiRKIX" role="3clFbG">
                <node concept="30H73N" id="35Lj3TiRKyv" role="2Oq$k0" />
                <node concept="2Rf3mk" id="35Lj3TiRM7X" role="2OqNvi">
                  <node concept="1xMEDy" id="35Lj3TiRM7Z" role="1xVPHs">
                    <node concept="chp4Y" id="35Lj3TiRMkw" role="ri$Ld">
                      <ref role="cht4Q" to="5j4j:6$jH9oLmUCq" resolve="AtomExpression" />
                    </node>
                  </node>
                  <node concept="hTh3S" id="35Lj3TiRMJO" role="1xVPHs">
                    <node concept="3gn64h" id="35Lj3TiRN1c" role="hTh3Z">
                      <ref role="3gnhBz" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17Uvod" id="35Lj3TiROzp" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="35Lj3TiROzq" role="3zH0cK">
          <node concept="3clFbS" id="35Lj3TiROzr" role="2VODD2">
            <node concept="3clFbF" id="35Lj3TiROZV" role="3cqZAp">
              <node concept="3cpWs3" id="35Lj3TiRPXV" role="3clFbG">
                <node concept="2OqwBi" id="35Lj3TiRTNs" role="3uHU7w">
                  <node concept="2OqwBi" id="35Lj3TiRSV6" role="2Oq$k0">
                    <node concept="2JrnkZ" id="35Lj3TiRSCu" role="2Oq$k0">
                      <node concept="30H73N" id="35Lj3TiRQeB" role="2JrQYb" />
                    </node>
                    <node concept="liA8E" id="35Lj3TiRTum" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                    </node>
                  </node>
                  <node concept="liA8E" id="35Lj3TiRViR" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                  </node>
                </node>
                <node concept="3cpWs3" id="35Lj3TiRPh_" role="3uHU7B">
                  <node concept="3zGtF$" id="35Lj3TiROZU" role="3uHU7B" />
                  <node concept="Xl_RD" id="35Lj3TiRPhE" role="3uHU7w">
                    <property role="Xl_RC" value="_" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="35Lj3TiRm6B" role="jymVt" />
    <node concept="3Tm1VV" id="35Lj3TiR8Np" role="1B3o_S" />
    <node concept="n94m4" id="35Lj3TiR8Nq" role="lGtFl">
      <ref role="n9lRv" to="vgt0:pmDhvH6q87" resolve="Handler" />
    </node>
    <node concept="17Uvod" id="35Lj3TiR923" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="35Lj3TiR924" role="3zH0cK">
        <node concept="3clFbS" id="35Lj3TiR925" role="2VODD2">
          <node concept="3clFbF" id="35Lj3TiR9kh" role="3cqZAp">
            <node concept="3cpWs3" id="35Lj3TiSzIF" role="3clFbG">
              <node concept="3zGtF$" id="35Lj3TiS$4Z" role="3uHU7w" />
              <node concept="3cpWs3" id="35Lj3TiSyG0" role="3uHU7B">
                <node concept="2OqwBi" id="35Lj3TiRb5d" role="3uHU7B">
                  <node concept="30H73N" id="35Lj3TiRaS4" role="2Oq$k0" />
                  <node concept="3TrcHB" id="35Lj3TiRbQV" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="Xl_RD" id="35Lj3TiSyRq" role="3uHU7w">
                  <property role="Xl_RC" value="_" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="bUwia" id="5JQSuNswW1q">
    <property role="TrG5h" value="ast" />
    <property role="3GE5qa" value="" />
    <node concept="2rT7sh" id="35Lj3TiRogF" role="2rTMjI">
      <property role="TrG5h" value="Handler_AstHelper" />
      <ref role="2rZz_L" to="tpee:fz12cDA" resolve="ClassConcept" />
      <ref role="2rTdP9" to="vgt0:pmDhvH6q87" resolve="Handler" />
    </node>
    <node concept="2rT7sh" id="35Lj3TiRCeh" role="2rTMjI">
      <property role="TrG5h" value="Ast_Method" />
      <ref role="2rTdP9" to="5j4j:6$jH9oLmUCq" resolve="AtomExpression" />
      <ref role="2rZz_L" to="tpee:fIYIFWa" resolve="StaticMethodDeclaration" />
    </node>
    <node concept="3aamgX" id="1pt0VTMwlBi" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:6$jH9oLmUCq" resolve="AtomExpression" />
      <node concept="30G5F_" id="6yEjedms0FZ" role="30HLyM">
        <node concept="3clFbS" id="6yEjedms0G0" role="2VODD2">
          <node concept="3clFbF" id="6yEjedms0G6" role="3cqZAp">
            <node concept="2OqwBi" id="6yEjedms0G8" role="3clFbG">
              <node concept="2OqwBi" id="6yEjedms0G9" role="2Oq$k0">
                <node concept="30H73N" id="6yEjedms0Ga" role="2Oq$k0" />
                <node concept="2Xjw5R" id="6yEjedms0Gb" role="2OqNvi">
                  <node concept="1xMEDy" id="6yEjedms0Gc" role="1xVPHs">
                    <node concept="chp4Y" id="6yEjedms0Gd" role="ri$Ld">
                      <ref role="cht4Q" to="vgt0:5dz6b540Jzm" resolve="AbstractConstraint" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="6yEjedms0Ge" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="35Lj3TiR81W" role="1lVwrX">
        <node concept="2YIFZM" id="6yEjedmrPFl" role="gfFT$">
          <ref role="1Pybhc" node="35Lj3TiR8No" resolve="Stuff" />
          <ref role="37wK5l" node="35Lj3TiRjRb" resolve="atom" />
          <node concept="10Nm6u" id="35Lj3TiSD25" role="37wK5m">
            <node concept="2b32R4" id="35Lj3TiSFbs" role="lGtFl">
              <node concept="3JmXsc" id="35Lj3TiSFbu" role="2P8S$">
                <node concept="3clFbS" id="35Lj3TiSFbw" role="2VODD2">
                  <node concept="3clFbF" id="35Lj3TiSFvI" role="3cqZAp">
                    <node concept="2OqwBi" id="35Lj3TiSF$y" role="3clFbG">
                      <node concept="30H73N" id="35Lj3TiSFvH" role="2Oq$k0" />
                      <node concept="2Rf3mk" id="35Lj3TiSG24" role="2OqNvi">
                        <node concept="1xMEDy" id="35Lj3TiSG26" role="1xVPHs">
                          <node concept="chp4Y" id="35Lj3TiSGh9" role="ri$Ld">
                            <ref role="cht4Q" to="vgt0:pmDhvH6BD8" resolve="LogicVariable" />
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
    <node concept="3aamgX" id="4OKkcneVYzR" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:2q_78a8W4yS" resolve="Wildcard" />
      <node concept="14YyZ8" id="4OKkcneVZCA" role="1lVwrX">
        <node concept="14ZrTv" id="4OKkcneVZCG" role="14ZwWg">
          <node concept="30G5F_" id="4OKkcneVZCH" role="150hEN">
            <node concept="3clFbS" id="4OKkcneVZCI" role="2VODD2">
              <node concept="3clFbF" id="1aeprBOt4Tp" role="3cqZAp">
                <node concept="2OqwBi" id="1aeprBOt5B4" role="3clFbG">
                  <node concept="2OqwBi" id="1aeprBOt4Z2" role="2Oq$k0">
                    <node concept="30H73N" id="1aeprBOt4Tn" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="1aeprBOt5n8" role="2OqNvi">
                      <node concept="1xMEDy" id="1aeprBOt5na" role="1xVPHs">
                        <node concept="chp4Y" id="1aeprBOt5tR" role="ri$Ld">
                          <ref role="cht4Q" to="5j4j:6$jH9oLmYD_" resolve="Role" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1mIQ4w" id="1aeprBOt5Z_" role="2OqNvi">
                    <node concept="chp4Y" id="1aeprBOt69d" role="cj9EA">
                      <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="4OKkcneWb1C" role="150oIE">
            <node concept="2YIFZM" id="7HUwyZbd5nK" role="gfFT$">
              <ref role="1Pybhc" to="yg8f:677NV565N1x" resolve="LogicalUtil" />
              <ref role="37wK5l" to="yg8f:7HUwyZb7chj" resolve="asAtom" />
              <node concept="2ShNRf" id="7nPD14NOHH4" role="37wK5m">
                <node concept="1pGfFk" id="7nPD14NOHH5" role="2ShVmc">
                  <ref role="37wK5l" to="45ys:7nPD14NON$Y" resolve="MetaLogical" />
                  <node concept="3VsKOn" id="2Dg5bSg3QiY" role="37wK5m">
                    <ref role="3VsUkX" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="gft3U" id="4OKkcneWczK" role="14YRTM">
          <node concept="2YIFZM" id="7HUwyZbd5Au" role="gfFT$">
            <ref role="37wK5l" to="yg8f:7HUwyZb7chj" resolve="asAtom" />
            <ref role="1Pybhc" to="yg8f:677NV565N1x" resolve="LogicalUtil" />
            <node concept="2ShNRf" id="2Dg5bSg3RdY" role="37wK5m">
              <node concept="1pGfFk" id="2Dg5bSg3RdZ" role="2ShVmc">
                <ref role="37wK5l" to="45ys:7nPD14NON$Y" resolve="MetaLogical" />
                <node concept="3VsKOn" id="2Dg5bSg3Rjh" role="37wK5m">
                  <ref role="3VsUkX" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4lNgnaL7Fky" role="3acgRq">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="5j4j:5lJXKARS0" resolve="Atom" />
      <node concept="30G5F_" id="4lNgnaL7FI9" role="30HLyM">
        <node concept="3clFbS" id="4lNgnaL7FIa" role="2VODD2">
          <node concept="3clFbF" id="4lNgnaL7FJf" role="3cqZAp">
            <node concept="2OqwBi" id="4lNgnaL7FVj" role="3clFbG">
              <node concept="2OqwBi" id="4lNgnaL7FLq" role="2Oq$k0">
                <node concept="30H73N" id="4lNgnaL7FJe" role="2Oq$k0" />
                <node concept="3CFZ6_" id="4lNgnaL7FPd" role="2OqNvi">
                  <node concept="3CFYIy" id="4lNgnaL7FRg" role="3CFYIz">
                    <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="4lNgnaL7G6i" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="4lNgnaL7G96" role="1lVwrX">
        <node concept="10Nm6u" id="4lNgnaL7G97" role="gfFT$">
          <node concept="1sPUBX" id="4lNgnaL7G98" role="lGtFl">
            <ref role="v9R2y" to="ouxx:677NV56thjr" resolve="Expression_logical2atom" />
            <node concept="30H73N" id="7FFmDVALefy" role="v9R3O" />
            <node concept="3NFfHV" id="4lNgnaL7G99" role="1sPUBK">
              <node concept="3clFbS" id="4lNgnaL7G9a" role="2VODD2">
                <node concept="3clFbF" id="4lNgnaL7G9b" role="3cqZAp">
                  <node concept="2OqwBi" id="4lNgnaL7G9c" role="3clFbG">
                    <node concept="2OqwBi" id="4lNgnaL7Gq4" role="2Oq$k0">
                      <node concept="30H73N" id="4lNgnaL7G9d" role="2Oq$k0" />
                      <node concept="3CFZ6_" id="4lNgnaL7Gtn" role="2OqNvi">
                        <node concept="3CFYIy" id="4lNgnaL7Gvi" role="3CFYIz">
                          <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4lNgnaL7G9e" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:dfChU1zo4I" resolve="expression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="29_L5zQWy8j" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
      <node concept="gft3U" id="29_L5zQWy8k" role="1lVwrX">
        <node concept="2YIFZM" id="29_L5zQWy8l" role="gfFT$">
          <ref role="37wK5l" to="ie8e:5JQSuNsxhfn" resolve="create" />
          <ref role="1Pybhc" to="ie8e:5JQSuNswOXL" resolve="StemFunc" />
          <node concept="Xl_RD" id="29_L5zQWy8m" role="37wK5m">
            <property role="Xl_RC" value="node" />
            <node concept="17Uvod" id="29_L5zQWJXC" role="lGtFl">
              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
              <property role="2qtEX9" value="value" />
              <node concept="3zFVjK" id="29_L5zQWJXD" role="3zH0cK">
                <node concept="3clFbS" id="29_L5zQWJXE" role="2VODD2">
                  <node concept="3clFbF" id="29_L5zR7re$" role="3cqZAp">
                    <node concept="3cpWs3" id="29_L5zR7tnq" role="3clFbG">
                      <node concept="Xl_RD" id="29_L5zR7rez" role="3uHU7B">
                        <property role="Xl_RC" value="node_" />
                      </node>
                      <node concept="2OqwBi" id="29_L5zR7u3T" role="3uHU7w">
                        <node concept="2OqwBi" id="29_L5zR7u3U" role="2Oq$k0">
                          <node concept="30H73N" id="29_L5zR7u3V" role="2Oq$k0" />
                          <node concept="3Tsc0h" id="29_L5zR7u3W" role="2OqNvi">
                            <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" resolve="role" />
                          </node>
                        </node>
                        <node concept="34oBXx" id="29_L5zR7u3X" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="10Nm6u" id="29_L5zQWy8n" role="37wK5m">
            <node concept="2b32R4" id="29_L5zQWy8o" role="lGtFl">
              <node concept="3JmXsc" id="29_L5zQWy8p" role="2P8S$">
                <node concept="3clFbS" id="29_L5zQWy8q" role="2VODD2">
                  <node concept="3clFbF" id="29_L5zQWy8r" role="3cqZAp">
                    <node concept="2OqwBi" id="29_L5zQWy8s" role="3clFbG">
                      <node concept="2OqwBi" id="29_L5zQWy8t" role="2Oq$k0">
                        <node concept="2OqwBi" id="29_L5zQWy8u" role="2Oq$k0">
                          <node concept="3Tsc0h" id="29_L5zQWy8v" role="2OqNvi">
                            <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" resolve="role" />
                          </node>
                          <node concept="30H73N" id="29_L5zQWy8w" role="2Oq$k0" />
                        </node>
                        <node concept="3zZkjj" id="29_L5zQWy8x" role="2OqNvi">
                          <node concept="1bVj0M" id="29_L5zQWy8y" role="23t8la">
                            <node concept="3clFbS" id="29_L5zQWy8z" role="1bW5cS">
                              <node concept="3clFbF" id="29_L5zQWy8$" role="3cqZAp">
                                <node concept="2OqwBi" id="29_L5zQWy8_" role="3clFbG">
                                  <node concept="37vLTw" id="29_L5zQWy8A" role="2Oq$k0">
                                    <ref role="3cqZAo" node="29_L5zQWy8D" resolve="it" />
                                  </node>
                                  <node concept="1mIQ4w" id="29_L5zQWy8B" role="2OqNvi">
                                    <node concept="chp4Y" id="29_L5zQWy8C" role="cj9EA">
                                      <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="29_L5zQWy8D" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="29_L5zQWy8E" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3QWeyG" id="29_L5zQWy8F" role="2OqNvi">
                        <node concept="2OqwBi" id="29_L5zQWy8G" role="576Qk">
                          <node concept="2OqwBi" id="29_L5zQWy8H" role="2Oq$k0">
                            <node concept="30H73N" id="29_L5zQWy8I" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="29_L5zQWy8J" role="2OqNvi">
                              <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" resolve="role" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="29_L5zQWy8K" role="2OqNvi">
                            <node concept="1bVj0M" id="29_L5zQWy8L" role="23t8la">
                              <node concept="3clFbS" id="29_L5zQWy8M" role="1bW5cS">
                                <node concept="3clFbF" id="29_L5zQWy8N" role="3cqZAp">
                                  <node concept="2OqwBi" id="29_L5zQWy8O" role="3clFbG">
                                    <node concept="37vLTw" id="29_L5zQWy8P" role="2Oq$k0">
                                      <ref role="3cqZAo" node="29_L5zQWy8S" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="29_L5zQWy8Q" role="2OqNvi">
                                      <node concept="chp4Y" id="29_L5zQWy8R" role="cj9EA">
                                        <ref role="cht4Q" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="29_L5zQWy8S" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="29_L5zQWy8T" role="1tU5fm" />
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
      <node concept="30G5F_" id="29_L5zQWy8U" role="30HLyM">
        <node concept="3clFbS" id="29_L5zQWy8V" role="2VODD2">
          <node concept="3clFbF" id="29_L5zQWy8W" role="3cqZAp">
            <node concept="2OqwBi" id="29_L5zQWy8X" role="3clFbG">
              <node concept="2OqwBi" id="29_L5zQWy8Y" role="2Oq$k0">
                <node concept="30H73N" id="29_L5zQWy8Z" role="2Oq$k0" />
                <node concept="3CFZ6_" id="29_L5zQWy90" role="2OqNvi">
                  <node concept="3CFYIy" id="29_L5zQWy91" role="3CFYIz">
                    <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
                  </node>
                </node>
              </node>
              <node concept="3w_OXm" id="29_L5zQWy92" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1OShD0H_454" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
      <node concept="gft3U" id="6UqNvvALIUa" role="1lVwrX">
        <node concept="2YIFZM" id="6UqNvvALIUb" role="gfFT$">
          <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
          <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
          <node concept="Xl_RD" id="6UqNvvALIUc" role="37wK5m">
            <property role="Xl_RC" value="name" />
            <node concept="17Uvod" id="6UqNvvALIUd" role="lGtFl">
              <property role="2qtEX9" value="value" />
              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
              <node concept="3zFVjK" id="6UqNvvALIUe" role="3zH0cK">
                <node concept="3clFbS" id="6UqNvvALIUf" role="2VODD2">
                  <node concept="3clFbF" id="6UqNvvALIUg" role="3cqZAp">
                    <node concept="2OqwBi" id="6UqNvvALIUh" role="3clFbG">
                      <node concept="30H73N" id="6UqNvvALIUi" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6UqNvvALIUj" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="10Nm6u" id="6UqNvvALIUk" role="37wK5m">
            <node concept="2b32R4" id="6UqNvvALIUl" role="lGtFl">
              <node concept="3JmXsc" id="6UqNvvALIUm" role="2P8S$">
                <node concept="3clFbS" id="6UqNvvALIUn" role="2VODD2">
                  <node concept="3clFbF" id="6UqNvvALIUo" role="3cqZAp">
                    <node concept="2OqwBi" id="6UqNvvALIUp" role="3clFbG">
                      <node concept="3Tsc0h" id="6UqNvvALIUq" role="2OqNvi">
                        <ref role="3TtcxE" to="5j4j:6$jH9oLmYL8" resolve="contents" />
                      </node>
                      <node concept="30H73N" id="6UqNvvALIUr" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="3ec9Qj4MdW3" role="30HLyM">
        <node concept="3clFbS" id="3ec9Qj4MdW4" role="2VODD2">
          <node concept="3clFbF" id="7HUwyZb79Tq" role="3cqZAp">
            <node concept="2OqwBi" id="7HUwyZb79Tr" role="3clFbG">
              <node concept="2OqwBi" id="7HUwyZb79Ts" role="2Oq$k0">
                <node concept="30H73N" id="7HUwyZb79Tt" role="2Oq$k0" />
                <node concept="3CFZ6_" id="7HUwyZb79Tu" role="2OqNvi">
                  <node concept="3CFYIy" id="7HUwyZb79Tv" role="3CFYIz">
                    <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
                  </node>
                </node>
              </node>
              <node concept="3w_OXm" id="7HUwyZb79Tw" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1OShD0H$Ege" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
      <node concept="gft3U" id="6UqNvvALIHq" role="1lVwrX">
        <node concept="2YIFZM" id="6UqNvvALIHr" role="gfFT$">
          <ref role="1Pybhc" to="ie8e:5JQSuNswOXL" resolve="StemFunc" />
          <ref role="37wK5l" to="ie8e:5JQSuNsxhfn" resolve="create" />
          <node concept="Xl_RD" id="6UqNvvALIHs" role="37wK5m">
            <property role="Xl_RC" value="name" />
            <node concept="17Uvod" id="6UqNvvALIHt" role="lGtFl">
              <property role="2qtEX9" value="value" />
              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
              <node concept="3zFVjK" id="6UqNvvALIHu" role="3zH0cK">
                <node concept="3clFbS" id="6UqNvvALIHv" role="2VODD2">
                  <node concept="3clFbF" id="6UqNvvALIHw" role="3cqZAp">
                    <node concept="2OqwBi" id="6UqNvvALIHx" role="3clFbG">
                      <node concept="30H73N" id="6UqNvvALIHy" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6UqNvvALIHz" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="10Nm6u" id="6UqNvvALIH$" role="37wK5m">
            <node concept="2b32R4" id="6UqNvvALIH_" role="lGtFl">
              <node concept="3JmXsc" id="6UqNvvALIHA" role="2P8S$">
                <node concept="3clFbS" id="6UqNvvALIHB" role="2VODD2">
                  <node concept="3clFbF" id="6UqNvvALIHC" role="3cqZAp">
                    <node concept="2OqwBi" id="6UqNvvALIHD" role="3clFbG">
                      <node concept="3Tsc0h" id="6UqNvvALIHE" role="2OqNvi">
                        <ref role="3TtcxE" to="5j4j:6$jH9oLmYFB" resolve="contents" />
                      </node>
                      <node concept="30H73N" id="6UqNvvALIHF" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="3ec9Qj4Me8A" role="30HLyM">
        <node concept="3clFbS" id="3ec9Qj4Me8B" role="2VODD2">
          <node concept="3clFbF" id="7HUwyZb79WY" role="3cqZAp">
            <node concept="2OqwBi" id="7HUwyZb79WZ" role="3clFbG">
              <node concept="2OqwBi" id="7HUwyZb79X0" role="2Oq$k0">
                <node concept="30H73N" id="7HUwyZb79X1" role="2Oq$k0" />
                <node concept="3CFZ6_" id="7HUwyZb79X2" role="2OqNvi">
                  <node concept="3CFYIy" id="7HUwyZb79X3" role="3CFYIz">
                    <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
                  </node>
                </node>
              </node>
              <node concept="3w_OXm" id="7HUwyZb79X4" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1pt0VTMwUQ$" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
      <node concept="14YyZ8" id="6UqNvvALHEz" role="1lVwrX">
        <node concept="14ZrTv" id="6UqNvvALHED" role="14ZwWg">
          <node concept="30G5F_" id="6UqNvvALHEE" role="150hEN">
            <node concept="3clFbS" id="6UqNvvALHEF" role="2VODD2">
              <node concept="3SKdUt" id="6MYr6Jxl_rL" role="3cqZAp">
                <node concept="3SKdUq" id="6MYr6Jxl_rN" role="3SKWNk">
                  <property role="3SKdUp" value="FIXME: stop using Builder.value" />
                </node>
              </node>
              <node concept="3clFbF" id="6UqNvvALHGg" role="3cqZAp">
                <node concept="2OqwBi" id="6UqNvvALHGh" role="3clFbG">
                  <node concept="2OqwBi" id="6UqNvvALHGi" role="2Oq$k0">
                    <node concept="30H73N" id="6UqNvvALHGj" role="2Oq$k0" />
                    <node concept="1mfA1w" id="6UqNvvALHGk" role="2OqNvi" />
                  </node>
                  <node concept="1mIQ4w" id="6UqNvvALHGl" role="2OqNvi">
                    <node concept="chp4Y" id="6UqNvvALHGm" role="cj9EA">
                      <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="6UqNvvALHJa" role="150oIE">
            <node concept="Xl_RD" id="6UqNvvALHJb" role="gfFT$">
              <property role="Xl_RC" value="value" />
              <node concept="17Uvod" id="6UqNvvALHJc" role="lGtFl">
                <property role="2qtEX9" value="value" />
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                <node concept="3zFVjK" id="6UqNvvALHJd" role="3zH0cK">
                  <node concept="3clFbS" id="6UqNvvALHJe" role="2VODD2">
                    <node concept="3clFbF" id="6UqNvvALHJf" role="3cqZAp">
                      <node concept="2OqwBi" id="6UqNvvALHJg" role="3clFbG">
                        <node concept="3TrcHB" id="6UqNvvALHJh" role="2OqNvi">
                          <ref role="3TsBF5" to="5j4j:6$jH9oLmYKA" resolve="value" />
                        </node>
                        <node concept="30H73N" id="6UqNvvALHJi" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="14ZrTv" id="6UqNvvALHNf" role="14ZwWg">
          <node concept="30G5F_" id="6UqNvvALHNg" role="150hEN">
            <node concept="3clFbS" id="6UqNvvALHNh" role="2VODD2">
              <node concept="3clFbF" id="6UqNvvALHRZ" role="3cqZAp">
                <node concept="3fqX7Q" id="6UqNvvALHS0" role="3clFbG">
                  <node concept="2OqwBi" id="6UqNvvALHS1" role="3fr31v">
                    <node concept="2OqwBi" id="6UqNvvALHS2" role="2Oq$k0">
                      <node concept="30H73N" id="6UqNvvALHS3" role="2Oq$k0" />
                      <node concept="1mfA1w" id="6UqNvvALHS4" role="2OqNvi" />
                    </node>
                    <node concept="1mIQ4w" id="6UqNvvALHS5" role="2OqNvi">
                      <node concept="chp4Y" id="6UqNvvALHS6" role="cj9EA">
                        <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="6UqNvvALHUZ" role="150oIE">
            <node concept="2YIFZM" id="6UqNvvALHV0" role="gfFT$">
              <ref role="37wK5l" to="ie8e:5JQSuNsxb_I" resolve="create" />
              <ref role="1Pybhc" to="ie8e:2xQ7eRAD2dj" resolve="Value" />
              <node concept="Xl_RD" id="6UqNvvALHV1" role="37wK5m">
                <property role="Xl_RC" value="value" />
                <node concept="17Uvod" id="6UqNvvALHV2" role="lGtFl">
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <property role="2qtEX9" value="value" />
                  <node concept="3zFVjK" id="6UqNvvALHV3" role="3zH0cK">
                    <node concept="3clFbS" id="6UqNvvALHV4" role="2VODD2">
                      <node concept="3clFbF" id="6UqNvvALHV5" role="3cqZAp">
                        <node concept="2OqwBi" id="6UqNvvALHV6" role="3clFbG">
                          <node concept="3TrcHB" id="6UqNvvALHV7" role="2OqNvi">
                            <ref role="3TsBF5" to="5j4j:6$jH9oLmYKA" resolve="value" />
                          </node>
                          <node concept="30H73N" id="6UqNvvALHV8" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="j$LIH" id="6UqNvvALI01" role="14YRTM">
          <node concept="1lLz0L" id="6UqNvvALI02" role="1lHHLF">
            <property role="1lMjX7" value="error" />
            <property role="1lLB17" value="unsupported construct" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="3ec9Qj4MejB" role="30HLyM">
        <node concept="3clFbS" id="3ec9Qj4MejC" role="2VODD2">
          <node concept="3clFbF" id="7HUwyZb7a02" role="3cqZAp">
            <node concept="2OqwBi" id="7HUwyZb7a03" role="3clFbG">
              <node concept="2OqwBi" id="7HUwyZb7a04" role="2Oq$k0">
                <node concept="30H73N" id="7HUwyZb7a05" role="2Oq$k0" />
                <node concept="3CFZ6_" id="7HUwyZb7a06" role="2OqNvi">
                  <node concept="3CFYIy" id="7HUwyZb7a07" role="3CFYIz">
                    <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
                  </node>
                </node>
              </node>
              <node concept="3w_OXm" id="7HUwyZb7a08" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1OShD0HSv5l" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:1OShD0HAY6y" resolve="List" />
      <node concept="gft3U" id="6UqNvvALHva" role="1lVwrX">
        <node concept="2YIFZM" id="6UqNvvALHvb" role="gfFT$">
          <ref role="1Pybhc" to="ie8e:3OPtF03lco4" resolve="ListFunc" />
          <ref role="37wK5l" to="ie8e:1OShD0HS45f" resolve="createList" />
          <node concept="10Nm6u" id="7HUwyZb7cIG" role="37wK5m">
            <node concept="2b32R4" id="7HUwyZb7cIH" role="lGtFl">
              <node concept="3JmXsc" id="7HUwyZb7cII" role="2P8S$">
                <node concept="3clFbS" id="7HUwyZb7cIJ" role="2VODD2">
                  <node concept="3clFbF" id="7HUwyZb7cIK" role="3cqZAp">
                    <node concept="2OqwBi" id="7HUwyZb7cIL" role="3clFbG">
                      <node concept="3Tsc0h" id="7HUwyZb7cIM" role="2OqNvi">
                        <ref role="3TtcxE" to="5j4j:1OShD0HAZ38" resolve="contents" />
                      </node>
                      <node concept="30H73N" id="7HUwyZb7cIN" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="3ec9Qj4Mevn" role="30HLyM">
        <node concept="3clFbS" id="3ec9Qj4Mevo" role="2VODD2">
          <node concept="3clFbF" id="3ec9Qj4Mez7" role="3cqZAp">
            <node concept="3fqX7Q" id="3ec9Qj4MeA_" role="3clFbG">
              <node concept="2OqwBi" id="3ec9Qj4MeAB" role="3fr31v">
                <node concept="2OqwBi" id="3ec9Qj4MeAC" role="2Oq$k0">
                  <node concept="30H73N" id="3ec9Qj4MeAD" role="2Oq$k0" />
                  <node concept="3CFZ6_" id="3ec9Qj4MeAE" role="2OqNvi">
                    <node concept="3CFYIy" id="3ec9Qj4MeAF" role="3CFYIz">
                      <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
                    </node>
                  </node>
                </node>
                <node concept="3x8VRR" id="3ec9Qj4MeAG" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="CY16f" id="4lNgnaL7HgZ" role="CYSdJ">
      <ref role="CY16a" to="5j4j:dfChU1zo4B" resolve="Splice" />
    </node>
    <node concept="3lhOvk" id="35Lj3TiRdbZ" role="3lj3bC">
      <property role="13Pg2o" value="true" />
      <ref role="2sgKRv" node="35Lj3TiRogF" resolve="Handler_AstHelper" />
      <ref role="30HIoZ" to="vgt0:pmDhvH6q87" resolve="Handler" />
      <ref role="3lhOvi" node="35Lj3TiR8No" resolve="Stuff" />
      <node concept="30G5F_" id="6yEjedmifNI" role="30HLyM">
        <node concept="3clFbS" id="6yEjedmifNJ" role="2VODD2">
          <node concept="3clFbF" id="6yEjedmigDJ" role="3cqZAp">
            <node concept="3clFbT" id="6yEjedmigDI" role="3clFbG">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2rT7sh" id="2AXhyOGWQ20" role="2rTMjI">
      <property role="TrG5h" value="LogicVariable" />
      <ref role="2rZz_L" to="tpee:fz7vLUk" resolve="ParameterDeclaration" />
      <ref role="2rTdP9" to="vgt0:pmDhvH6BD8" resolve="LogicVariable" />
    </node>
  </node>
</model>

