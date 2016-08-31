<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:727775a3-16ae-4b9f-80a6-9ef3207ffa6a(jetbrains.mps.logic.generator.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="0" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="0" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="4" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="45ys" ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.treeform)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="d4615e3b-d671-4ba9-af01-2b78369b0ba7" name="jetbrains.mps.lang.pattern">
      <concept id="1136720037777" name="jetbrains.mps.lang.pattern.structure.PatternExpression" flags="in" index="2DMOqp">
        <child id="1136720037778" name="patternNode" index="2DMOqq" />
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
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1168559512253" name="jetbrains.mps.lang.generator.structure.DismissTopMappingRule" flags="lg" index="j$LIH">
        <child id="1169669152123" name="generatorMessage" index="1lHHLF" />
      </concept>
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <child id="1168558750579" name="defaultConsequence" index="jxRDz" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1200911316486" name="jetbrains.mps.lang.generator.structure.MappingLabelDeclaration" flags="lg" index="2rT7sh">
        <reference id="1200911342686" name="sourceConcept" index="2rTdP9" />
        <reference id="1200913004646" name="targetConcept" index="2rZz_L" />
      </concept>
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
        <child id="1722980698497626405" name="actualArgument" index="v9R3O" />
      </concept>
      <concept id="7473026166162297915" name="jetbrains.mps.lang.generator.structure.DropAttributeRule" flags="lg" index="CY16f">
        <reference id="7473026166162297918" name="applicableConcept" index="CY16a" />
      </concept>
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
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
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1169670156577" name="jetbrains.mps.lang.generator.structure.GeneratorMessage" flags="lg" index="1lLz0L">
        <property id="1169670173015" name="messageText" index="1lLB17" />
        <property id="1169670356567" name="messageType" index="1lMjX7" />
      </concept>
      <concept id="982871510064032177" name="jetbrains.mps.lang.generator.structure.IParameterizedTemplate" flags="ng" index="1s_3nv">
        <child id="982871510064032342" name="parameter" index="1s_3oS" />
      </concept>
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX">
        <child id="982871510068000158" name="sourceNodeQuery" index="1sPUBK" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="8900764248744213868" name="jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence" flags="lg" index="1Koe21">
        <child id="8900764248744213871" name="contentNode" index="1Koe22" />
      </concept>
      <concept id="1805153994415891174" name="jetbrains.mps.lang.generator.structure.TemplateParameterDeclaration" flags="ng" index="1N15co">
        <child id="1805153994415893199" name="type" index="1N15GL" />
      </concept>
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1088761943574" name="jetbrains.mps.lang.generator.structure.ReferenceMacro" flags="ln" index="1ZhdrF">
        <child id="1167770376702" name="referentFunction" index="3$ytzL" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1229477454423" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalCopiedInputByOutput" flags="nn" index="12$id9">
        <child id="1229477520175" name="outputNode" index="12$y8L" />
      </concept>
      <concept id="5190093307972723402" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ParameterRef" flags="nn" index="3cR$yn">
        <reference id="5190093307972736266" name="parameter" index="3cRzXn" />
      </concept>
      <concept id="1216860049627" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput" flags="nn" index="1iwH70">
        <reference id="1216860049628" name="label" index="1iwH77" />
        <child id="1216860049632" name="inputNode" index="1iwH7V" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
      <concept id="1178870617262" name="jetbrains.mps.lang.typesystem.structure.CoerceExpression" flags="nn" index="1UaxmW">
        <child id="1178870894644" name="pattern" index="1Ub_4A" />
        <child id="1178870894645" name="nodeToCoerce" index="1Ub_4B" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174642900584" name="jetbrains.mps.lang.typesystem.structure.PatternCondition" flags="ig" index="1Yb3XT">
        <child id="1174642936809" name="pattern" index="1YbcFS" />
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
        <reference id="6733348108486823428" name="concept" index="1m5ApE" />
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
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
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="linkRole" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7" />
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
  <node concept="bUwia" id="5JQSuNswW1q">
    <property role="TrG5h" value="ast" />
    <property role="3GE5qa" value="" />
    <node concept="3aamgX" id="1pt0VTMwlBi" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:6$jH9oLmUCq" resolve="AtomExpression" />
      <node concept="j$656" id="6yEjedms87m" role="1lVwrX">
        <ref role="v9R2y" node="35Lj3TiT1Wl" resolve="Ast_Builder" />
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
              <ref role="37wK5l" to="yg8f:7HUwyZb7chj" resolve="asTreeForm" />
              <ref role="1Pybhc" to="yg8f:677NV565N1x" resolve="LogicalUtil" />
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
            <ref role="37wK5l" to="yg8f:7HUwyZb7chj" resolve="asTreeForm" />
            <ref role="1Pybhc" to="yg8f:677NV565N1x" resolve="LogicalUtil" />
            <node concept="2ShNRf" id="2Dg5bSg3RdY" role="37wK5m">
              <node concept="1pGfFk" id="2Dg5bSg3RdZ" role="2ShVmc">
                <ref role="37wK5l" to="45ys:7nPD14NON$Y" resolve="MetaLogical" />
                <node concept="3VsKOn" id="2Dg5bSg3Rjh" role="37wK5m">
                  <ref role="3VsUkX" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
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
            <ref role="v9R2y" node="677NV56thjr" resolve="Expression_logical2atom" />
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
          <ref role="1Pybhc" to="6exd:5JQSuNswOXL" resolve="CompositeNode" />
          <ref role="37wK5l" to="6exd:5JQSuNsxhfn" resolve="create" />
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
          <ref role="37wK5l" to="6exd:5JQSuNsx4I5" resolve="value" />
          <ref role="1Pybhc" to="6exd:5JQSuNsx4Gq" resolve="Builder" />
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
          <ref role="1Pybhc" to="6exd:5JQSuNswOXL" resolve="CompositeNode" />
          <ref role="37wK5l" to="6exd:5JQSuNsxhfn" resolve="create" />
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
              <ref role="37wK5l" to="6exd:5JQSuNsxb_I" resolve="create" />
              <ref role="1Pybhc" to="6exd:2xQ7eRAD2dj" resolve="Value" />
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
          <ref role="1Pybhc" to="6exd:3OPtF03lco4" resolve="ListNode" />
          <ref role="37wK5l" to="6exd:1OShD0HS45f" resolve="createList" />
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
  </node>
  <node concept="13MO4I" id="35Lj3TiT1Wl">
    <property role="TrG5h" value="Ast_Builder" />
    <ref role="3gUMe" to="5j4j:6$jH9oLmUCq" resolve="AtomExpression" />
    <node concept="1eOMI4" id="6r6omRldwEj" role="13RCb5">
      <node concept="10Nm6u" id="4peSo3CLCDx" role="1eOMHV">
        <node concept="29HgVG" id="4peSo3CLCDy" role="lGtFl">
          <node concept="3NFfHV" id="4peSo3CLCDz" role="3NFExx">
            <node concept="3clFbS" id="4peSo3CLCD$" role="2VODD2">
              <node concept="3clFbF" id="4peSo3CLCD_" role="3cqZAp">
                <node concept="2OqwBi" id="4peSo3CLCDA" role="3clFbG">
                  <node concept="3TrEf2" id="4peSo3CLCDB" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" resolve="root" />
                  </node>
                  <node concept="30H73N" id="4peSo3CLCDC" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="6r6omRldwG9" role="lGtFl" />
    </node>
  </node>
  <node concept="bUwia" id="7E86$tKtJwT">
    <property role="TrG5h" value="logical" />
    <node concept="2rT7sh" id="7E86$tKuvNp" role="2rTMjI">
      <property role="TrG5h" value="logicalvar_declaration" />
      <ref role="2rTdP9" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
      <ref role="2rZz_L" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
    </node>
    <node concept="3aamgX" id="6dMt3c5atGl" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariableReference" />
      <node concept="gft3U" id="6dMt3c5au09" role="1lVwrX">
        <node concept="10Nm6u" id="6dMt3c5au0f" role="gfFT$">
          <node concept="1sPUBX" id="6dMt3c5au0m" role="lGtFl">
            <ref role="v9R2y" node="6dMt3c5aoZZ" resolve="LogicalVariable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1mP5b6jMGjF" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:7E86$tKskWj" resolve="LogicalValue" />
      <node concept="gft3U" id="1mP5b6jMWqe" role="1lVwrX">
        <node concept="10Nm6u" id="1mP5b6jMWs0" role="gfFT$">
          <node concept="29HgVG" id="1mP5b6jMWt0" role="lGtFl">
            <node concept="3NFfHV" id="1mP5b6jMWt1" role="3NFExx">
              <node concept="3clFbS" id="1mP5b6jMWt2" role="2VODD2">
                <node concept="3clFbF" id="1mP5b6jMWt8" role="3cqZAp">
                  <node concept="2OqwBi" id="1mP5b6jMWt3" role="3clFbG">
                    <node concept="3TrEf2" id="1mP5b6jMWt6" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:7E86$tKsqnr" resolve="code" />
                    </node>
                    <node concept="30H73N" id="1mP5b6jMWt7" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1mP5b6jMx78" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:7E86$tKt5sV" resolve="ExpressionLogicalVariable" />
      <node concept="gft3U" id="1mP5b6jMxSQ" role="1lVwrX">
        <node concept="10Nm6u" id="1mP5b6jMxUC" role="gfFT$">
          <node concept="29HgVG" id="1mP5b6jMxXk" role="lGtFl">
            <node concept="3NFfHV" id="1mP5b6jMxXl" role="3NFExx">
              <node concept="3clFbS" id="1mP5b6jMxXm" role="2VODD2">
                <node concept="3clFbF" id="1mP5b6jMxXs" role="3cqZAp">
                  <node concept="2OqwBi" id="1mP5b6jMxXn" role="3clFbG">
                    <node concept="3TrEf2" id="1mP5b6jMxXq" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:7E86$tKt5BI" resolve="expression" />
                    </node>
                    <node concept="30H73N" id="1mP5b6jMxXr" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1mP5b6jO$89" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
      <node concept="1Koe21" id="1mP5b6jOPxk" role="1lVwrX">
        <node concept="3clFbS" id="1mP5b6jOPD0" role="1Koe22">
          <node concept="3cpWs8" id="1mP5b6jOPFS" role="3cqZAp">
            <node concept="3cpWsn" id="1mP5b6jOPFT" role="3cpWs9">
              <property role="TrG5h" value="lv" />
              <node concept="3uibUv" id="dfChU1kjs$" role="1tU5fm">
                <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="MetaLogical" />
                <node concept="raruj" id="dfChU1koS6" role="lGtFl" />
                <node concept="29HgVG" id="1sCZQVfbz8D" role="lGtFl">
                  <node concept="3NFfHV" id="1sCZQVfbz8E" role="3NFExx">
                    <node concept="3clFbS" id="1sCZQVfbz8F" role="2VODD2">
                      <node concept="3clFbF" id="1sCZQVfbzSC" role="3cqZAp">
                        <node concept="1UaxmW" id="1sCZQVfbzS_" role="3clFbG">
                          <node concept="30H73N" id="1sCZQVfbzUq" role="1Ub_4B" />
                          <node concept="1YaCAy" id="1sCZQVfb$2l" role="1Ub_4A">
                            <property role="TrG5h" value="classifierType" />
                            <ref role="1YaFvo" to="tpee:g7uibYu" resolve="ClassifierType" />
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
    <node concept="3aamgX" id="7HUwyZb1JwU" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:7HUwyZb1HXL" resolve="MultiLogicalType" />
      <node concept="1Koe21" id="7HUwyZb1KbF" role="1lVwrX">
        <node concept="3clFbS" id="7HUwyZb1KbG" role="1Koe22">
          <node concept="3cpWs8" id="7HUwyZb1KbH" role="3cqZAp">
            <node concept="3cpWsn" id="7HUwyZb1KbI" role="3cpWs9">
              <property role="TrG5h" value="lv" />
              <node concept="3uibUv" id="7HUwyZb1KbJ" role="1tU5fm">
                <ref role="3uigEE" to="45ys:7HUwyZaNIC5" resolve="MultiMetaLogical" />
                <node concept="raruj" id="7HUwyZb1KbK" role="lGtFl" />
                <node concept="29HgVG" id="7HUwyZb1KbL" role="lGtFl">
                  <node concept="3NFfHV" id="7HUwyZb1KbM" role="3NFExx">
                    <node concept="3clFbS" id="7HUwyZb1KbN" role="2VODD2">
                      <node concept="3clFbF" id="7HUwyZb1KbO" role="3cqZAp">
                        <node concept="1UaxmW" id="7HUwyZb1KbP" role="3clFbG">
                          <node concept="30H73N" id="7HUwyZb1KbQ" role="1Ub_4B" />
                          <node concept="1YaCAy" id="7HUwyZb1KbR" role="1Ub_4A">
                            <property role="TrG5h" value="classifierType" />
                            <ref role="1YaFvo" to="tpee:g7uibYu" resolve="ClassifierType" />
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
  <node concept="jVnub" id="677NV56thjr">
    <property role="TrG5h" value="Expression_logical2atom" />
    <node concept="1N15co" id="7FFmDVALe4e" role="1s_3oS">
      <property role="TrG5h" value="atom" />
      <node concept="3Tqbb2" id="7FFmDVALe9X" role="1N15GL">
        <ref role="ehGHo" to="5j4j:5lJXKARS0" resolve="Atom" />
      </node>
    </node>
    <node concept="3aamgX" id="677NV56tiIG" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="1Koe21" id="677NV56tBI4" role="1lVwrX">
        <node concept="3clFbS" id="677NV56tBVM" role="1Koe22">
          <node concept="3cpWs8" id="677NV56tBWy" role="3cqZAp">
            <node concept="3cpWsn" id="677NV56tBWz" role="3cpWs9">
              <property role="TrG5h" value="mlp" />
              <node concept="3uibUv" id="7HUwyZb7bp_" role="1tU5fm">
                <ref role="3uigEE" to="45ys:7HUwyZaNIC5" resolve="MultiMetaLogical" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="677NV56tBWA" role="3cqZAp">
            <node concept="2YIFZM" id="7HUwyZb7btr" role="3clFbG">
              <ref role="37wK5l" to="yg8f:7HUwyZb7b7C" resolve="asTreeFormArray" />
              <ref role="1Pybhc" to="yg8f:677NV565N1x" resolve="LogicalUtil" />
              <node concept="37vLTw" id="7HUwyZb7bts" role="37wK5m">
                <ref role="3cqZAo" node="677NV56tBWz" resolve="mlp" />
                <node concept="29HgVG" id="7HUwyZb7btt" role="lGtFl">
                  <node concept="3NFfHV" id="7HUwyZb7btu" role="3NFExx">
                    <node concept="3clFbS" id="7HUwyZb7btv" role="2VODD2">
                      <node concept="3clFbF" id="7HUwyZb7btw" role="3cqZAp">
                        <node concept="30H73N" id="7HUwyZb7btx" role="3clFbG" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="raruj" id="7HUwyZb7bty" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="677NV56tjai" role="30HLyM">
        <node concept="3clFbS" id="677NV56tjaj" role="2VODD2">
          <node concept="3cpWs8" id="2AXhyOGXxAA" role="3cqZAp">
            <node concept="3cpWsn" id="2AXhyOGXxAB" role="3cpWs9">
              <property role="TrG5h" value="type" />
              <node concept="3Tqbb2" id="2AXhyOGXxA$" role="1tU5fm" />
              <node concept="2OqwBi" id="2AXhyOGXxAC" role="33vP2m">
                <node concept="2OqwBi" id="6UqNvvALoZl" role="2Oq$k0">
                  <node concept="1iwH7S" id="6UqNvvALo$I" role="2Oq$k0" />
                  <node concept="12$id9" id="6UqNvvALp5y" role="2OqNvi">
                    <node concept="30H73N" id="6UqNvvALpaV" role="12$y8L" />
                  </node>
                </node>
                <node concept="3JvlWi" id="2AXhyOGXxAE" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2S_ORi36b$8" role="3cqZAp">
            <node concept="2OqwBi" id="2S_ORi36b$9" role="3clFbG">
              <node concept="1UaxmW" id="7HUwyZb7b4d" role="2Oq$k0">
                <node concept="1Yb3XT" id="7HUwyZb7b4e" role="1Ub_4A">
                  <property role="TrG5h" value="dummy" />
                  <node concept="2DMOqp" id="7HUwyZb7b4f" role="1YbcFS">
                    <node concept="3uibUv" id="7HUwyZb7b4g" role="2DMOqq">
                      <ref role="3uigEE" to="45ys:7HUwyZaNIC5" resolve="MultiMetaLogical" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7HUwyZb7b4h" role="1Ub_4B">
                  <ref role="3cqZAo" node="2AXhyOGXxAB" resolve="type" />
                </node>
              </node>
              <node concept="3x8VRR" id="2S_ORi36b$k" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="677NV56thjs" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="1Koe21" id="677NV56tAlj" role="1lVwrX">
        <node concept="3clFbS" id="677NV56tAlk" role="1Koe22">
          <node concept="3cpWs8" id="677NV56tAll" role="3cqZAp">
            <node concept="3cpWsn" id="677NV56tAlm" role="3cpWs9">
              <property role="TrG5h" value="logical" />
              <node concept="3uibUv" id="7HUwyZb7bYW" role="1tU5fm">
                <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="MetaLogical" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7HUwyZb7cpf" role="3cqZAp">
            <node concept="2YIFZM" id="7HUwyZb7cuU" role="3clFbG">
              <ref role="37wK5l" to="yg8f:7HUwyZb7chj" resolve="asTreeForm" />
              <ref role="1Pybhc" to="yg8f:677NV565N1x" resolve="LogicalUtil" />
              <node concept="37vLTw" id="7HUwyZb7cvj" role="37wK5m">
                <ref role="3cqZAo" node="677NV56tAlm" resolve="logical" />
                <node concept="29HgVG" id="7HUwyZb7cBP" role="lGtFl" />
              </node>
              <node concept="raruj" id="7HUwyZb7cBm" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="2S_ORi36mJS" role="30HLyM">
        <node concept="3clFbS" id="2S_ORi36mJT" role="2VODD2">
          <node concept="3cpWs8" id="6UqNvvALpwa" role="3cqZAp">
            <node concept="3cpWsn" id="6UqNvvALpwb" role="3cpWs9">
              <property role="TrG5h" value="type" />
              <node concept="3Tqbb2" id="6UqNvvALpwc" role="1tU5fm" />
              <node concept="2OqwBi" id="6UqNvvALpwd" role="33vP2m">
                <node concept="2OqwBi" id="6UqNvvALpwe" role="2Oq$k0">
                  <node concept="1iwH7S" id="6UqNvvALpwf" role="2Oq$k0" />
                  <node concept="12$id9" id="6UqNvvALpwg" role="2OqNvi">
                    <node concept="30H73N" id="6UqNvvALpwh" role="12$y8L" />
                  </node>
                </node>
                <node concept="3JvlWi" id="6UqNvvALpwi" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2S_ORi36mS8" role="3cqZAp">
            <node concept="2OqwBi" id="2S_ORi36mS9" role="3clFbG">
              <node concept="1UaxmW" id="7HUwyZb7bxO" role="2Oq$k0">
                <node concept="37vLTw" id="7HUwyZb7bxP" role="1Ub_4B">
                  <ref role="3cqZAo" node="6UqNvvALpwb" resolve="type" />
                </node>
                <node concept="1Yb3XT" id="7HUwyZb7bxQ" role="1Ub_4A">
                  <property role="TrG5h" value="dummy" />
                  <node concept="2DMOqp" id="7HUwyZb7bxR" role="1YbcFS">
                    <node concept="3uibUv" id="7HUwyZb7bxS" role="2DMOqq">
                      <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="MetaLogical" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="2S_ORi36mSj" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="514BAS_YArp" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="30G5F_" id="514BAS_YAG$" role="30HLyM">
        <node concept="3clFbS" id="514BAS_YAG_" role="2VODD2">
          <node concept="3cpWs8" id="514BAS_YAHb" role="3cqZAp">
            <node concept="3cpWsn" id="514BAS_YAHc" role="3cpWs9">
              <property role="TrG5h" value="type" />
              <node concept="3Tqbb2" id="514BAS_YAHd" role="1tU5fm" />
              <node concept="2OqwBi" id="514BAS_YAHe" role="33vP2m">
                <node concept="2OqwBi" id="514BAS_YAHf" role="2Oq$k0">
                  <node concept="1iwH7S" id="514BAS_YAHg" role="2Oq$k0" />
                  <node concept="12$id9" id="514BAS_YAHh" role="2OqNvi">
                    <node concept="30H73N" id="514BAS_YAHi" role="12$y8L" />
                  </node>
                </node>
                <node concept="3JvlWi" id="514BAS_YAHj" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="514BAS_YAHk" role="3cqZAp">
            <node concept="2OqwBi" id="514BAS_YAHl" role="3clFbG">
              <node concept="1UaxmW" id="514BAS_YAHm" role="2Oq$k0">
                <node concept="37vLTw" id="514BAS_YAHn" role="1Ub_4B">
                  <ref role="3cqZAo" node="514BAS_YAHc" resolve="type" />
                </node>
                <node concept="1Yb3XT" id="514BAS_YAHo" role="1Ub_4A">
                  <property role="TrG5h" value="dummy" />
                  <node concept="2DMOqp" id="514BAS_YAHp" role="1YbcFS">
                    <node concept="3uibUv" id="3mz2_dYrgHu" role="2DMOqq">
                      <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="514BAS_YAHr" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1Koe21" id="514BAS_YBDs" role="1lVwrX">
        <node concept="3clFbS" id="514BAS_YBDt" role="1Koe22">
          <node concept="3cpWs8" id="514BAS_YBDu" role="3cqZAp">
            <node concept="3cpWsn" id="514BAS_YBDv" role="3cpWs9">
              <property role="TrG5h" value="logical" />
              <node concept="3uibUv" id="3mz2_dYuqQi" role="1tU5fm">
                <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="514BAS_YBDx" role="3cqZAp">
            <node concept="2YIFZM" id="514BAS_YBDy" role="3clFbG">
              <ref role="1Pybhc" to="yg8f:677NV565N1x" resolve="LogicalUtil" />
              <ref role="37wK5l" to="yg8f:4TCblo5YI1H" resolve="asTreeForm" />
              <node concept="37vLTw" id="514BAS_YBDz" role="37wK5m">
                <ref role="3cqZAo" node="514BAS_YBDv" resolve="logical" />
                <node concept="29HgVG" id="514BAS_YBD$" role="lGtFl" />
              </node>
              <node concept="raruj" id="514BAS_YBD_" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="6MYr6Jxl_xE" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="30G5F_" id="6MYr6JxlA6Y" role="30HLyM">
        <node concept="3clFbS" id="6MYr6JxlA6Z" role="2VODD2">
          <node concept="3clFbF" id="6MYr6JxlA87" role="3cqZAp">
            <node concept="1Wc70l" id="6MYr6JxlArm" role="3clFbG">
              <node concept="3fqX7Q" id="6MYr6JxlB0k" role="3uHU7w">
                <node concept="2OqwBi" id="6MYr6JxlB0m" role="3fr31v">
                  <node concept="2OqwBi" id="6MYr6JxlB0n" role="2Oq$k0">
                    <node concept="2OqwBi" id="6MYr6JxlB0o" role="2Oq$k0">
                      <node concept="1iwH7S" id="6MYr6JxlB0p" role="2Oq$k0" />
                      <node concept="3cR$yn" id="6MYr6JxlB0q" role="2OqNvi">
                        <ref role="3cRzXn" node="7FFmDVALe4e" resolve="atom" />
                      </node>
                    </node>
                    <node concept="1mfA1w" id="6MYr6JxlB0r" role="2OqNvi" />
                  </node>
                  <node concept="1mIQ4w" id="6MYr6JxlB0s" role="2OqNvi">
                    <node concept="chp4Y" id="6MYr6JxlB0t" role="cj9EA">
                      <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6MYr6JxlAei" role="3uHU7B">
                <node concept="2OqwBi" id="6MYr6JxlA9q" role="2Oq$k0">
                  <node concept="1iwH7S" id="6MYr6JxlA86" role="2Oq$k0" />
                  <node concept="3cR$yn" id="6MYr6JxlAb9" role="2OqNvi">
                    <ref role="3cRzXn" node="7FFmDVALe4e" resolve="atom" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="6MYr6JxlAkD" role="2OqNvi">
                  <node concept="chp4Y" id="6MYr6JxlAn0" role="cj9EA">
                    <ref role="cht4Q" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="6MYr6JxlB4t" role="1lVwrX">
        <node concept="2YIFZM" id="6MYr6JxlB4u" role="gfFT$">
          <ref role="1Pybhc" to="6exd:2xQ7eRAD2dj" resolve="Value" />
          <ref role="37wK5l" to="6exd:5JQSuNsxb_I" resolve="create" />
          <node concept="Xl_RD" id="6MYr6JxlBmV" role="37wK5m">
            <property role="Xl_RC" value="" />
            <node concept="29HgVG" id="6MYr6JxlBoF" role="lGtFl">
              <node concept="3NFfHV" id="6MYr6JxlBpz" role="3NFExx">
                <node concept="3clFbS" id="6MYr6JxlBp$" role="2VODD2">
                  <node concept="3clFbF" id="6MYr6JxlBqz" role="3cqZAp">
                    <node concept="30H73N" id="6MYr6JxlBqy" role="3clFbG" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="2S_ORi36nh6" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="gft3U" id="2S_ORi36nE8" role="1lVwrX">
        <node concept="10Nm6u" id="2S_ORi36nEe" role="gfFT$">
          <node concept="29HgVG" id="2S_ORi36nEl" role="lGtFl">
            <node concept="3NFfHV" id="2S_ORi36nEm" role="3NFExx">
              <node concept="3clFbS" id="2S_ORi36nEn" role="2VODD2">
                <node concept="3clFbF" id="2S_ORi36nEt" role="3cqZAp">
                  <node concept="30H73N" id="2S_ORi36nEs" role="3clFbG" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="j$LIH" id="677NV56tvCh" role="jxRDz">
      <node concept="1lLz0L" id="677NV56tvCi" role="1lHHLF">
        <property role="1lMjX7" value="error" />
        <property role="1lLB17" value="unsupported construct" />
      </node>
    </node>
  </node>
  <node concept="jVnub" id="6dMt3c5aoZZ">
    <property role="TrG5h" value="LogicalVariable" />
    <node concept="3aamgX" id="6dMt3c5ap00" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariableReference" />
      <node concept="30G5F_" id="6dMt3c5ap7i" role="30HLyM">
        <node concept="3clFbS" id="6dMt3c5ap7j" role="2VODD2">
          <node concept="3clFbF" id="6dMt3c5apcd" role="3cqZAp">
            <node concept="2OqwBi" id="6dMt3c5apce" role="3clFbG">
              <node concept="2OqwBi" id="6dMt3c5apcf" role="2Oq$k0">
                <node concept="30H73N" id="6dMt3c5apcg" role="2Oq$k0" />
                <node concept="3TrEf2" id="6dMt3c5apch" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:7E86$tKsJfa" resolve="index" />
                </node>
              </node>
              <node concept="3x8VRR" id="6dMt3c5apci" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1Koe21" id="6dMt3c5appE" role="1lVwrX">
        <node concept="3clFbS" id="6dMt3c5appF" role="1Koe22">
          <node concept="3cpWs8" id="6dMt3c5appG" role="3cqZAp">
            <node concept="3cpWsn" id="6dMt3c5appH" role="3cpWs9">
              <property role="TrG5h" value="multiMetaLogical" />
              <node concept="3uibUv" id="7HUwyZaNQoy" role="1tU5fm">
                <ref role="3uigEE" to="45ys:7HUwyZaNIC5" resolve="MultiMetaLogical" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7HUwyZaNIxw" role="3cqZAp">
            <node concept="2OqwBi" id="7HUwyZaNQAR" role="3clFbG">
              <node concept="37vLTw" id="7HUwyZaNIxu" role="2Oq$k0">
                <ref role="3cqZAo" node="6dMt3c5appH" resolve="multiMetaLogical" />
                <node concept="1ZhdrF" id="7HUwyZaNQLD" role="lGtFl">
                  <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                  <property role="2qtEX8" value="variableDeclaration" />
                  <node concept="3$xsQk" id="7HUwyZaNQLE" role="3$ytzL">
                    <node concept="3clFbS" id="7HUwyZaNQLF" role="2VODD2">
                      <node concept="3cpWs8" id="7HUwyZaNQV7" role="3cqZAp">
                        <node concept="3cpWsn" id="7HUwyZaNQV8" role="3cpWs9">
                          <property role="TrG5h" value="lvd" />
                          <node concept="3Tqbb2" id="7HUwyZaNQV9" role="1tU5fm">
                            <ref role="ehGHo" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
                          </node>
                          <node concept="1PxgMI" id="7HUwyZaNQVa" role="33vP2m">
                            <ref role="1m5ApE" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
                            <node concept="2OqwBi" id="7HUwyZaNQVb" role="1m5AlR">
                              <node concept="1iwH7S" id="7HUwyZaNQVc" role="2Oq$k0" />
                              <node concept="12$id9" id="7HUwyZaNQVd" role="2OqNvi">
                                <node concept="2OqwBi" id="7HUwyZaNQVe" role="12$y8L">
                                  <node concept="30H73N" id="7HUwyZaNQVf" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="7HUwyZaNQVg" role="2OqNvi">
                                    <ref role="3Tt5mk" to="5j4j:7E86$tK_PaH" resolve="declaration" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="7HUwyZaNQVh" role="3cqZAp">
                        <node concept="3cpWsn" id="7HUwyZaNQVi" role="3cpWs9">
                          <property role="TrG5h" value="localvar" />
                          <node concept="3Tqbb2" id="7HUwyZaNQVj" role="1tU5fm">
                            <ref role="ehGHo" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
                          </node>
                          <node concept="2OqwBi" id="7HUwyZaNQVk" role="33vP2m">
                            <node concept="1iwH7S" id="7HUwyZaNQVl" role="2Oq$k0" />
                            <node concept="1iwH70" id="7HUwyZaNQVm" role="2OqNvi">
                              <ref role="1iwH77" node="7E86$tKuvNp" resolve="logicalvar_declaration" />
                              <node concept="37vLTw" id="7HUwyZaNQVn" role="1iwH7V">
                                <ref role="3cqZAo" node="7HUwyZaNQV8" resolve="lvd" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7HUwyZaNQVo" role="3cqZAp">
                        <node concept="37vLTw" id="7HUwyZaNQVp" role="3clFbG">
                          <ref role="3cqZAo" node="7HUwyZaNQVi" resolve="localvar" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7HUwyZaNQGE" role="2OqNvi">
                <ref role="37wK5l" to="45ys:7HUwyZaNHY_" resolve="logicalAt" />
                <node concept="3cmrfG" id="7HUwyZaNQHA" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                  <node concept="29HgVG" id="7HUwyZaNQHB" role="lGtFl">
                    <node concept="3NFfHV" id="7HUwyZaNQHC" role="3NFExx">
                      <node concept="3clFbS" id="7HUwyZaNQHD" role="2VODD2">
                        <node concept="3clFbF" id="7HUwyZaNQHE" role="3cqZAp">
                          <node concept="2OqwBi" id="7HUwyZaNQHF" role="3clFbG">
                            <node concept="3TrEf2" id="7HUwyZaNQHG" role="2OqNvi">
                              <ref role="3Tt5mk" to="5j4j:7E86$tKsJfa" resolve="index" />
                            </node>
                            <node concept="30H73N" id="7HUwyZaNQHH" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="raruj" id="7HUwyZaNQJO" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="6dMt3c5apH0" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariableReference" />
      <node concept="30G5F_" id="6dMt3c5apH1" role="30HLyM">
        <node concept="3clFbS" id="6dMt3c5apH2" role="2VODD2">
          <node concept="3clFbF" id="6dMt3c5apH3" role="3cqZAp">
            <node concept="2OqwBi" id="6dMt3c5apH4" role="3clFbG">
              <node concept="2OqwBi" id="6dMt3c5apH5" role="2Oq$k0">
                <node concept="30H73N" id="6dMt3c5apH6" role="2Oq$k0" />
                <node concept="3TrEf2" id="6dMt3c5apH7" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:7E86$tKsJfa" resolve="index" />
                </node>
              </node>
              <node concept="3w_OXm" id="6dMt3c5aq2r" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1Koe21" id="6dMt3c5aqjm" role="1lVwrX">
        <node concept="3clFbS" id="6dMt3c5aqjn" role="1Koe22">
          <node concept="3cpWs8" id="6dMt3c5aqjo" role="3cqZAp">
            <node concept="3cpWsn" id="6dMt3c5aqjp" role="3cpWs9">
              <property role="TrG5h" value="metaLogical" />
              <node concept="3uibUv" id="7HUwyZaNHmx" role="1tU5fm">
                <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="MetaLogical" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6dMt3c5aqjr" role="3cqZAp">
            <node concept="37vLTw" id="6dMt3c5aqjs" role="3clFbG">
              <ref role="3cqZAo" node="6dMt3c5aqjp" resolve="metaLogical" />
              <node concept="raruj" id="6dMt3c5aqjt" role="lGtFl" />
              <node concept="1ZhdrF" id="6dMt3c5aqju" role="lGtFl">
                <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                <property role="2qtEX8" value="variableDeclaration" />
                <node concept="3$xsQk" id="6dMt3c5aqjv" role="3$ytzL">
                  <node concept="3clFbS" id="6dMt3c5aqjw" role="2VODD2">
                    <node concept="3cpWs8" id="3sttX4FrOBL" role="3cqZAp">
                      <node concept="3cpWsn" id="3sttX4FrOBM" role="3cpWs9">
                        <property role="TrG5h" value="lvd" />
                        <node concept="3Tqbb2" id="3sttX4FrOBN" role="1tU5fm">
                          <ref role="ehGHo" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
                        </node>
                        <node concept="1PxgMI" id="3sttX4FrOBO" role="33vP2m">
                          <ref role="1m5ApE" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
                          <node concept="2OqwBi" id="3sttX4FrOBP" role="1m5AlR">
                            <node concept="1iwH7S" id="3sttX4FrOBQ" role="2Oq$k0" />
                            <node concept="12$id9" id="3sttX4FrOBR" role="2OqNvi">
                              <node concept="2OqwBi" id="3sttX4FrOBS" role="12$y8L">
                                <node concept="30H73N" id="3sttX4FrOBT" role="2Oq$k0" />
                                <node concept="3TrEf2" id="3sttX4FrOBU" role="2OqNvi">
                                  <ref role="3Tt5mk" to="5j4j:7E86$tK_PaH" resolve="declaration" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="3sttX4FrOBV" role="3cqZAp">
                      <node concept="3cpWsn" id="3sttX4FrOBW" role="3cpWs9">
                        <property role="TrG5h" value="localvar" />
                        <node concept="3Tqbb2" id="3sttX4FrOBX" role="1tU5fm">
                          <ref role="ehGHo" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
                        </node>
                        <node concept="2OqwBi" id="3sttX4FrOBY" role="33vP2m">
                          <node concept="1iwH7S" id="3sttX4FrOBZ" role="2Oq$k0" />
                          <node concept="1iwH70" id="3sttX4FrOC0" role="2OqNvi">
                            <ref role="1iwH77" node="7E86$tKuvNp" resolve="logicalvar_declaration" />
                            <node concept="37vLTw" id="3sttX4FrOC1" role="1iwH7V">
                              <ref role="3cqZAo" node="3sttX4FrOBM" resolve="lvd" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3sttX4FrOCe" role="3cqZAp">
                      <node concept="37vLTw" id="3sttX4FrOCf" role="3clFbG">
                        <ref role="3cqZAo" node="3sttX4FrOBW" resolve="localvar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="15s5l7" id="6dMt3c5aqjC" role="lGtFl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="j$LIH" id="6dMt3c5aqRs" role="jxRDz">
      <node concept="1lLz0L" id="6dMt3c5aqRt" role="1lHHLF">
        <property role="1lMjX7" value="error" />
        <property role="1lLB17" value="unsupported construct" />
      </node>
    </node>
  </node>
</model>

