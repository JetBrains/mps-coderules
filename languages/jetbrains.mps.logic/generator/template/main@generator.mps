<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:727775a3-16ae-4b9f-80a6-9ef3207ffa6a(jetbrains.mps.logic.generator.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="-1" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="-1" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="-1" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="vgt0" ref="r:f36c95e5-e428-4945-91ae-1005e20c7971(jetbrains.mps.jchr.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="xq5w" ref="r:729bada4-05fa-458f-8bf8-28b9cb978726(jetbrains.mps.logic.builtin.var)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="45ys" ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="ha02" ref="r:09e53496-6477-45e7-abd5-eaf3fac3b360(jetbrains.mps.logic.behavior)" implicit="true" />
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
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
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
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
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
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1200911316486" name="jetbrains.mps.lang.generator.structure.MappingLabelDeclaration" flags="lg" index="2rT7sh">
        <reference id="1200911342686" name="sourceConcept" index="2rTdP9" />
        <reference id="1200913004646" name="targetConcept" index="2rZz_L" />
      </concept>
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1194565793557" name="jetbrains.mps.lang.generator.structure.IncludeMacro" flags="ln" index="xERo3">
        <reference id="1194566366375" name="includeTemplate" index="xH3mL" />
      </concept>
      <concept id="5133195082121471908" name="jetbrains.mps.lang.generator.structure.LabelMacro" flags="ln" index="2ZBi8u" />
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1200917515464" name="labelDeclaration" index="2sgKRv" />
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
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="8900764248744213868" name="jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence" flags="lg" index="1Koe21">
        <child id="8900764248744213871" name="contentNode" index="1Koe22" />
      </concept>
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="ln" index="1W57fq">
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
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
      <concept id="1218047638031" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_CreateUniqueName" flags="nn" index="2piZGk">
        <child id="1218047638032" name="baseName" index="2piZGb" />
        <child id="1218049772449" name="contextNode" index="2pr8EU" />
      </concept>
      <concept id="1229477454423" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalCopiedInputByOutput" flags="nn" index="12$id9">
        <child id="1229477520175" name="outputNode" index="12$y8L" />
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
      <concept id="1174642900584" name="jetbrains.mps.lang.typesystem.structure.PatternCondition" flags="ig" index="1Yb3XT">
        <child id="1174642936809" name="pattern" index="1YbcFS" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="2105510410850132386" name="jetbrains.mps.logic.structure.List" flags="ng" index="KCUsM" />
      <concept id="7571593955706120730" name="jetbrains.mps.logic.structure.AtomExpression" flags="ng" index="1oi1Uc">
        <child id="7571593955706125526" name="root" index="1oi0x0" />
      </concept>
      <concept id="7571593955706137263" name="jetbrains.mps.logic.structure.ChildRole" flags="ng" index="1oi5ST" />
      <concept id="7571593955706137125" name="jetbrains.mps.logic.structure.Compound" flags="ng" index="1oi5UN" />
      <concept id="7571593955706137472" name="jetbrains.mps.logic.structure.ValueRole" flags="ng" index="1oi5Wm" />
      <concept id="7571593955706137573" name="jetbrains.mps.logic.structure.Value" flags="ng" index="1oi5XN">
        <property id="7571593955706137638" name="value" index="1oi5yK" />
      </concept>
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
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
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
      <concept id="1219352745532" name="jetbrains.mps.lang.smodel.structure.NodeRefExpression" flags="nn" index="3B5_sB">
        <reference id="1219352800908" name="referentNode" index="3B5MYn" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
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
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="bUwia" id="5JQSuNswW1q">
    <property role="TrG5h" value="ast" />
    <property role="3GE5qa" value="" />
    <node concept="2rT7sh" id="35Lj3TiRogF" role="2rTMjI">
      <property role="TrG5h" value="Handler_AstHelper" />
      <ref role="2rTdP9" to="vgt0:pmDhvH6q87" resolve="Handler" />
      <ref role="2rZz_L" to="tpee:fz12cDA" resolve="ClassConcept" />
    </node>
    <node concept="2rT7sh" id="35Lj3TiRCeh" role="2rTMjI">
      <property role="TrG5h" value="Ast_Method" />
      <ref role="2rTdP9" to="5j4j:6$jH9oLmUCq" resolve="AtomExpression" />
      <ref role="2rZz_L" to="tpee:fIYIFWa" resolve="StaticMethodDeclaration" />
    </node>
    <node concept="3lhOvk" id="35Lj3TiRdbZ" role="3lj3bC">
      <property role="13Pg2o" value="true" />
      <ref role="30HIoZ" to="vgt0:pmDhvH6q87" resolve="Handler" />
      <ref role="3lhOvi" node="35Lj3TiR8No" resolve="Stuff" />
      <ref role="2sgKRv" node="35Lj3TiRogF" resolve="Handler_AstHelper" />
    </node>
    <node concept="3aamgX" id="1pt0VTMwlBi" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:6$jH9oLmUCq" resolve="AtomExpression" />
      <node concept="14YyZ8" id="35Lj3TiR1cg" role="1lVwrX">
        <node concept="14ZrTv" id="35Lj3TiR1hN" role="14ZwWg">
          <node concept="30G5F_" id="35Lj3TiR1hO" role="150hEN">
            <node concept="3clFbS" id="35Lj3TiR1hP" role="2VODD2">
              <node concept="3clFbF" id="35Lj3TiR1xw" role="3cqZAp">
                <node concept="2OqwBi" id="35Lj3TiR2c_" role="3clFbG">
                  <node concept="2OqwBi" id="35Lj3TiR1A3" role="2Oq$k0">
                    <node concept="30H73N" id="35Lj3TiR1xv" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="6eERcOeDMou" role="2OqNvi">
                      <node concept="1xMEDy" id="6eERcOeDMow" role="1xVPHs">
                        <node concept="chp4Y" id="5dz6b5419MW" role="ri$Ld">
                          <ref role="cht4Q" to="vgt0:5dz6b540Jzm" resolve="AbstractConstraint" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3x8VRR" id="6eERcOeDNmZ" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="35Lj3TiR81W" role="150oIE">
            <node concept="2YIFZM" id="35Lj3TiSCY2" role="gfFT$">
              <ref role="37wK5l" node="35Lj3TiRjRb" resolve="atom" />
              <ref role="1Pybhc" node="35Lj3TiR8No" resolve="Stuff" />
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
              <node concept="1ZhdrF" id="35Lj3TiSD6Y" role="lGtFl">
                <property role="2qtEX8" value="classConcept" />
                <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1081236700937/1144433194310" />
                <node concept="3$xsQk" id="35Lj3TiSD6Z" role="3$ytzL">
                  <node concept="3clFbS" id="35Lj3TiSD70" role="2VODD2">
                    <node concept="3clFbF" id="35Lj3TiSDfG" role="3cqZAp">
                      <node concept="2OqwBi" id="35Lj3TiSDhZ" role="3clFbG">
                        <node concept="1iwH7S" id="35Lj3TiSDfF" role="2Oq$k0" />
                        <node concept="1iwH70" id="35Lj3TiSDwt" role="2OqNvi">
                          <ref role="1iwH77" node="35Lj3TiRogF" resolve="Handler_AstHelper" />
                          <node concept="2OqwBi" id="35Lj3TiSDHn" role="1iwH7V">
                            <node concept="30H73N" id="35Lj3TiSDEz" role="2Oq$k0" />
                            <node concept="2Xjw5R" id="35Lj3TiSE37" role="2OqNvi">
                              <node concept="1xMEDy" id="35Lj3TiSE39" role="1xVPHs">
                                <node concept="chp4Y" id="35Lj3TiSE7S" role="ri$Ld">
                                  <ref role="cht4Q" to="vgt0:pmDhvH6q87" resolve="Handler" />
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
              <node concept="1ZhdrF" id="35Lj3TiSEiQ" role="lGtFl">
                <property role="2qtEX8" value="baseMethodDeclaration" />
                <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
                <node concept="3$xsQk" id="35Lj3TiSEiR" role="3$ytzL">
                  <node concept="3clFbS" id="35Lj3TiSEiS" role="2VODD2">
                    <node concept="3clFbF" id="35Lj3TiSEtU" role="3cqZAp">
                      <node concept="2OqwBi" id="35Lj3TiSEwd" role="3clFbG">
                        <node concept="1iwH7S" id="35Lj3TiSEtT" role="2Oq$k0" />
                        <node concept="1iwH70" id="35Lj3TiSEFj" role="2OqNvi">
                          <ref role="1iwH77" node="35Lj3TiRCeh" resolve="Ast_Method" />
                          <node concept="30H73N" id="35Lj3TiSEMR" role="1iwH7V" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="j$656" id="35Lj3TiT73t" role="14YRTM">
          <ref role="v9R2y" node="35Lj3TiT1Wl" resolve="Ast_Builder" />
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
            <node concept="2OqwBi" id="4OKkcneWbT4" role="gfFT$">
              <node concept="2YIFZM" id="2DKqMqOjkyf" role="2Oq$k0">
                <ref role="37wK5l" to="yg8f:2DKqMqOjiQ4" resolve="wildcardString" />
                <ref role="1Pybhc" to="yg8f:5JTOzCR38s8" resolve="LogicalFactory" />
              </node>
              <node concept="liA8E" id="4OKkcneWc22" role="2OqNvi">
                <ref role="37wK5l" to="yg8f:7jC45Kci98e" resolve="asAtom" />
              </node>
            </node>
          </node>
        </node>
        <node concept="gft3U" id="4OKkcneWczK" role="14YRTM">
          <node concept="2OqwBi" id="4OKkcneWczL" role="gfFT$">
            <node concept="2YIFZM" id="2DKqMqOjiwZ" role="2Oq$k0">
              <ref role="37wK5l" to="yg8f:2DKqMqOike0" resolve="wildcardAtom" />
              <ref role="1Pybhc" to="yg8f:5JTOzCR38s8" resolve="LogicalFactory" />
            </node>
            <node concept="liA8E" id="4OKkcneWczN" role="2OqNvi">
              <ref role="37wK5l" to="yg8f:7jC45Kci98e" resolve="asAtom" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="dfChU1CJoS" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:dfChU1zo4B" resolve="Splice" />
      <node concept="gft3U" id="677NV56tE1X" role="1lVwrX">
        <node concept="10Nm6u" id="677NV56tFm_" role="gfFT$">
          <node concept="1sPUBX" id="677NV56tFmJ" role="lGtFl">
            <ref role="v9R2y" node="677NV56thjr" resolve="Expression_logical2atom" />
            <node concept="3NFfHV" id="1aeprBOrUNM" role="1sPUBK">
              <node concept="3clFbS" id="1aeprBOrUNN" role="2VODD2">
                <node concept="3clFbF" id="1aeprBOrVrk" role="3cqZAp">
                  <node concept="2OqwBi" id="1aeprBOrVu7" role="3clFbG">
                    <node concept="30H73N" id="1aeprBOrVrj" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1aeprBOrVKx" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:dfChU1zo4I" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1OShD0H_kUK" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
      <node concept="gft3U" id="1OShD0H_nFb" role="1lVwrX">
        <node concept="1oi5UN" id="1OShD0H_nFh" role="gfFT$">
          <node concept="1sPUBX" id="1OShD0H_nFl" role="lGtFl">
            <ref role="v9R2y" node="1OShD0H_ejR" resolve="Node" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1OShD0H_454" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
      <node concept="gft3U" id="1OShD0H_7yP" role="1lVwrX">
        <node concept="1oi5Wm" id="1OShD0H_7LN" role="gfFT$">
          <property role="TrG5h" value="value" />
          <node concept="1sPUBX" id="1OShD0H_7LR" role="lGtFl">
            <ref role="v9R2y" node="1OShD0H$K$J" resolve="ValueRole" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1OShD0H$Ege" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
      <node concept="gft3U" id="1OShD0H$IiL" role="1lVwrX">
        <node concept="1oi5ST" id="1OShD0H$I_c" role="gfFT$">
          <property role="TrG5h" value="role" />
          <node concept="1sPUBX" id="1OShD0H$I_g" role="lGtFl">
            <ref role="v9R2y" node="1OShD0H$ohx" resolve="ChildRole" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1pt0VTMwUQ$" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
      <node concept="gft3U" id="1OShD0H_tef" role="1lVwrX">
        <node concept="1oi5XN" id="1OShD0H_tel" role="gfFT$">
          <property role="1oi5yK" value="value" />
          <node concept="1sPUBX" id="1OShD0H_tep" role="lGtFl">
            <ref role="v9R2y" node="1OShD0H_ppr" resolve="Value" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1OShD0HSv5l" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:1OShD0HAY6y" resolve="List" />
      <node concept="gft3U" id="1OShD0HSxdO" role="1lVwrX">
        <node concept="KCUsM" id="1OShD0HSxdU" role="gfFT$">
          <node concept="1sPUBX" id="1OShD0HSxdY" role="lGtFl">
            <ref role="v9R2y" node="1OShD0HRO_l" resolve="List" />
          </node>
        </node>
      </node>
    </node>
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
                <node concept="3clFbF" id="35Lj3TiSgFt" role="3cqZAp">
                  <node concept="2OqwBi" id="35Lj3TiSiCY" role="3clFbG">
                    <node concept="30H73N" id="35Lj3TiSgFs" role="2Oq$k0" />
                    <node concept="3JvlWi" id="35Lj3TiSlGr" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1WS0z7" id="35Lj3TiRYjY" role="lGtFl">
          <node concept="3JmXsc" id="35Lj3TiRYk0" role="3Jn$fo">
            <node concept="3clFbS" id="35Lj3TiRYk2" role="2VODD2">
              <node concept="3clFbF" id="35Lj3TiRYE3" role="3cqZAp">
                <node concept="2OqwBi" id="35Lj3TiRYJj" role="3clFbG">
                  <node concept="30H73N" id="35Lj3TiRYE2" role="2Oq$k0" />
                  <node concept="2Rf3mk" id="35Lj3TiS02r" role="2OqNvi">
                    <node concept="1xMEDy" id="35Lj3TiS02t" role="1xVPHs">
                      <node concept="chp4Y" id="35Lj3TiS0m3" role="ri$Ld">
                        <ref role="cht4Q" to="vgt0:pmDhvH6BD8" resolve="LogicVariable" />
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
        <node concept="3clFbF" id="35Lj3TiSoNN" role="3cqZAp">
          <node concept="1oi1Uc" id="35Lj3TiSoNH" role="3clFbG">
            <node concept="1oi5UN" id="35Lj3TiSoNJ" role="1oi0x0" />
            <node concept="xERo3" id="35Lj3TiT8Id" role="lGtFl">
              <ref role="xH3mL" node="35Lj3TiT1Wl" resolve="Ast_Builder" />
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
                    <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" />
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
    <node concept="3aamgX" id="7E86$tKtNCi" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
      <node concept="1Koe21" id="7E86$tKtXBK" role="1lVwrX">
        <node concept="3clFbS" id="7E86$tKtXRw" role="1Koe22">
          <node concept="3cpWs8" id="7E86$tKuXZF" role="3cqZAp">
            <node concept="3cpWsn" id="7E86$tKuXZG" role="3cpWs9">
              <property role="TrG5h" value="$_card" />
              <node concept="10Oyi0" id="7E86$tKuXYO" role="1tU5fm" />
              <node concept="3cmrfG" id="7E86$tKuXZH" role="33vP2m">
                <property role="3cmrfH" value="1" />
                <node concept="29HgVG" id="7E86$tKuZuC" role="lGtFl">
                  <node concept="3NFfHV" id="7E86$tKuZuD" role="3NFExx">
                    <node concept="3clFbS" id="7E86$tKuZuE" role="2VODD2">
                      <node concept="3clFbF" id="7E86$tKuZuK" role="3cqZAp">
                        <node concept="2OqwBi" id="7E86$tKuZTn" role="3clFbG">
                          <node concept="2OqwBi" id="7E86$tKuZuF" role="2Oq$k0">
                            <node concept="3TrEf2" id="7E86$tKuZuI" role="2OqNvi">
                              <ref role="3Tt5mk" to="5j4j:7E86$tKtioV" />
                            </node>
                            <node concept="30H73N" id="7E86$tKuZuJ" role="2Oq$k0" />
                          </node>
                          <node concept="3TrEf2" id="7E86$tKv0dh" role="2OqNvi">
                            <ref role="3Tt5mk" to="5j4j:7E86$tKsqnr" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17Uvod" id="7E86$tK_oYS" role="lGtFl">
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <property role="2qtEX9" value="name" />
                <node concept="3zFVjK" id="7E86$tK_oYT" role="3zH0cK">
                  <node concept="3clFbS" id="7E86$tK_oYU" role="2VODD2">
                    <node concept="3clFbF" id="7E86$tK_q2n" role="3cqZAp">
                      <node concept="2OqwBi" id="7E86$tK_q2o" role="3clFbG">
                        <node concept="1iwH7S" id="7E86$tK_q2p" role="2Oq$k0" />
                        <node concept="2piZGk" id="7E86$tK_q2q" role="2OqNvi">
                          <node concept="3zGtF$" id="7E86$tK_q2r" role="2piZGb" />
                          <node concept="2OqwBi" id="7E86$tK_q2s" role="2pr8EU">
                            <node concept="30H73N" id="7E86$tK_q2t" role="2Oq$k0" />
                            <node concept="2Xjw5R" id="7E86$tK_q2u" role="2OqNvi">
                              <node concept="3gmYPX" id="7E86$tK_q2v" role="1xVPHs">
                                <node concept="3gn64h" id="7E86$tK_q2w" role="3gmYPZ">
                                  <ref role="3gnhBz" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
                                </node>
                                <node concept="3gn64h" id="7E86$tK_q2x" role="3gmYPZ">
                                  <ref role="3gnhBz" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
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
            <node concept="raruj" id="7E86$tKuZDT" role="lGtFl" />
          </node>
          <node concept="3cpWs8" id="7E86$tKuE1r" role="3cqZAp">
            <node concept="3cpWsn" id="7E86$tKuE1s" role="3cpWs9">
              <property role="TrG5h" value="$_T" />
              <node concept="10Q1$e" id="7E86$tKuE1t" role="1tU5fm">
                <node concept="3uibUv" id="7E86$tKuE1u" role="10Q1$1">
                  <ref role="3uigEE" to="xq5w:7E86$tKu5$t" resolve="IndexedVar" />
                </node>
              </node>
              <node concept="2ShNRf" id="7E86$tKuK02" role="33vP2m">
                <node concept="3$_iS1" id="7E86$tKuJZa" role="2ShVmc">
                  <node concept="3$GHV9" id="7E86$tKuKaz" role="3$GQph">
                    <node concept="37vLTw" id="7E86$tKv1hz" role="3$I4v7">
                      <ref role="3cqZAo" node="7E86$tKuXZG" resolve="$_card" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="7E86$tKuJZb" role="3$_nBY">
                    <ref role="3uigEE" to="xq5w:7E86$tKu5$t" resolve="IndexedVar" />
                  </node>
                </node>
              </node>
              <node concept="2ZBi8u" id="7E86$tKuNtn" role="lGtFl">
                <ref role="2rW$FS" node="7E86$tKuvNp" resolve="logicalvar_declaration" />
              </node>
              <node concept="17Uvod" id="7E86$tK_qPr" role="lGtFl">
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <property role="2qtEX9" value="name" />
                <node concept="3zFVjK" id="7E86$tK_qPs" role="3zH0cK">
                  <node concept="3clFbS" id="7E86$tK_qPt" role="2VODD2">
                    <node concept="3clFbF" id="7E86$tK_riP" role="3cqZAp">
                      <node concept="2OqwBi" id="7E86$tK_riQ" role="3clFbG">
                        <node concept="1iwH7S" id="7E86$tK_riR" role="2Oq$k0" />
                        <node concept="2piZGk" id="7E86$tK_riS" role="2OqNvi">
                          <node concept="2OqwBi" id="7E86$tK_riU" role="2pr8EU">
                            <node concept="30H73N" id="7E86$tK_riV" role="2Oq$k0" />
                            <node concept="2Xjw5R" id="7E86$tK_riW" role="2OqNvi">
                              <node concept="3gmYPX" id="7E86$tK_riX" role="1xVPHs">
                                <node concept="3gn64h" id="7E86$tK_riY" role="3gmYPZ">
                                  <ref role="3gnhBz" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
                                </node>
                                <node concept="3gn64h" id="7E86$tK_riZ" role="3gmYPZ">
                                  <ref role="3gnhBz" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs3" id="104EUzFpLgc" role="2piZGb">
                            <node concept="2OqwBi" id="104EUzFpL$d" role="3uHU7w">
                              <node concept="30H73N" id="104EUzFpLth" role="2Oq$k0" />
                              <node concept="3TrcHB" id="104EUzFpLNh" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="104EUzFpKAo" role="3uHU7B">
                              <property role="Xl_RC" value="$_" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1W57fq" id="3sttX4FvMf9" role="lGtFl">
                <node concept="3IZrLx" id="3sttX4FvMfb" role="3IZSJc">
                  <node concept="3clFbS" id="3sttX4FvMfd" role="2VODD2">
                    <node concept="34ab3g" id="3sttX4FvMvg" role="3cqZAp">
                      <property role="35gtTG" value="warn" />
                      <node concept="3cpWs3" id="3sttX4FvObZ" role="34bqiv">
                        <node concept="2OqwBi" id="3sttX4FvP0Q" role="3uHU7w">
                          <node concept="2JrnkZ" id="3sttX4FvOSq" role="2Oq$k0">
                            <node concept="30H73N" id="3sttX4FvOrF" role="2JrQYb" />
                          </node>
                          <node concept="liA8E" id="3sttX4FvPgj" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                          </node>
                        </node>
                        <node concept="3cpWs3" id="3sttX4FvNtw" role="3uHU7B">
                          <node concept="3cpWs3" id="3sttX4FvN85" role="3uHU7B">
                            <node concept="Xl_RD" id="3sttX4FvMvi" role="3uHU7B">
                              <property role="Xl_RC" value="----&gt; [" />
                            </node>
                            <node concept="30H73N" id="3sttX4FvNdg" role="3uHU7w" />
                          </node>
                          <node concept="Xl_RD" id="3sttX4FvNtA" role="3uHU7w">
                            <property role="Xl_RC" value="]@" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3sttX4FvQvh" role="3cqZAp">
                      <node concept="3clFbT" id="3sttX4FvQvg" role="3clFbG">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="7E86$tKuN9$" role="lGtFl" />
          </node>
          <node concept="1Dw8fO" id="4vbeH84FyqP" role="3cqZAp">
            <node concept="3clFbS" id="4vbeH84FyqS" role="2LFqv$">
              <node concept="3clFbF" id="4vbeH84FzLa" role="3cqZAp">
                <node concept="37vLTI" id="4vbeH84FzOn" role="3clFbG">
                  <node concept="2ShNRf" id="4vbeH84FzPE" role="37vLTx">
                    <node concept="1pGfFk" id="4vbeH84F$1u" role="2ShVmc">
                      <ref role="37wK5l" to="xq5w:5k_shARNZ68" resolve="IndexedVar" />
                      <node concept="3cpWs3" id="4vbeH84G8TY" role="37wK5m">
                        <node concept="Xl_RD" id="4vbeH84F$2Q" role="3uHU7B">
                          <property role="Xl_RC" value="T_" />
                          <node concept="17Uvod" id="4vbeH84GaVp" role="lGtFl">
                            <property role="2qtEX9" value="value" />
                            <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                            <node concept="3zFVjK" id="4vbeH84GaVq" role="3zH0cK">
                              <node concept="3clFbS" id="4vbeH84GaVr" role="2VODD2">
                                <node concept="3clFbF" id="4vbeH84Gbcu" role="3cqZAp">
                                  <node concept="3cpWs3" id="4vbeH84GbZR" role="3clFbG">
                                    <node concept="Xl_RD" id="4vbeH84GbZW" role="3uHU7w">
                                      <property role="Xl_RC" value="_" />
                                    </node>
                                    <node concept="2OqwBi" id="4vbeH84GbgG" role="3uHU7B">
                                      <node concept="30H73N" id="4vbeH84Gbct" role="2Oq$k0" />
                                      <node concept="3TrcHB" id="4vbeH84Gb$g" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1eOMI4" id="6f8Yfqd9pT" role="3uHU7w">
                          <node concept="3cpWs3" id="6f8Yfqd9hX" role="1eOMHV">
                            <node concept="37vLTw" id="4vbeH84G9b4" role="3uHU7B">
                              <ref role="3cqZAo" node="4vbeH84FyqV" resolve="$_i" />
                            </node>
                            <node concept="3cmrfG" id="6f8Yfqd9i0" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="AH0OO" id="4vbeH84FzLI" role="37vLTJ">
                    <node concept="37vLTw" id="4vbeH84FzMD" role="AHEQo">
                      <ref role="3cqZAo" node="4vbeH84FyqV" resolve="$_i" />
                    </node>
                    <node concept="37vLTw" id="4vbeH84FzL9" role="AHHXb">
                      <ref role="3cqZAo" node="7E86$tKuE1s" resolve="$_T" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4vbeH84FyqV" role="1Duv9x">
              <property role="TrG5h" value="$_i" />
              <node concept="10Oyi0" id="4vbeH84Fywf" role="1tU5fm" />
              <node concept="3cmrfG" id="4vbeH84FywM" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="17Uvod" id="4vbeH84GyfU" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="4vbeH84GyfV" role="3zH0cK">
                  <node concept="3clFbS" id="4vbeH84GyfW" role="2VODD2">
                    <node concept="3clFbF" id="4vbeH84GyC_" role="3cqZAp">
                      <node concept="2OqwBi" id="4vbeH84Gzvz" role="3clFbG">
                        <node concept="1iwH7S" id="4vbeH84Gzkz" role="2Oq$k0" />
                        <node concept="2piZGk" id="4vbeH84GzMl" role="2OqNvi">
                          <node concept="3zGtF$" id="4vbeH84G$2l" role="2piZGb" />
                          <node concept="2OqwBi" id="4vbeH84GB8N" role="2pr8EU">
                            <node concept="30H73N" id="4vbeH84GB1W" role="2Oq$k0" />
                            <node concept="2Xjw5R" id="4vbeH84GBEB" role="2OqNvi">
                              <node concept="3gmYPX" id="7E86$tK$Q_t" role="1xVPHs">
                                <node concept="3gn64h" id="7E86$tK$QNA" role="3gmYPZ">
                                  <ref role="3gnhBz" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
                                </node>
                                <node concept="3gn64h" id="7E86$tK_plg" role="3gmYPZ">
                                  <ref role="3gnhBz" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
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
            <node concept="3eOVzh" id="6f8Yfqd8U0" role="1Dwp0S">
              <node concept="37vLTw" id="4vbeH84G943" role="3uHU7B">
                <ref role="3cqZAo" node="4vbeH84FyqV" resolve="$_i" />
              </node>
              <node concept="37vLTw" id="7E86$tKv2sc" role="3uHU7w">
                <ref role="3cqZAo" node="7E86$tKuXZG" resolve="$_card" />
              </node>
            </node>
            <node concept="3uNrnE" id="4vbeH84FzEm" role="1Dwrff">
              <node concept="37vLTw" id="4vbeH84FzEo" role="2$L3a6">
                <ref role="3cqZAo" node="4vbeH84FyqV" resolve="$_i" />
              </node>
            </node>
            <node concept="raruj" id="4vbeH84F$8D" role="lGtFl" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7E86$tKtVcj" role="30HLyM">
        <node concept="3clFbS" id="7E86$tKtVck" role="2VODD2">
          <node concept="3clFbF" id="7E86$tKtVvz" role="3cqZAp">
            <node concept="2OqwBi" id="7E86$tKtWp6" role="3clFbG">
              <node concept="2OqwBi" id="7E86$tKtV$9" role="2Oq$k0">
                <node concept="30H73N" id="7E86$tKtVvy" role="2Oq$k0" />
                <node concept="3TrEf2" id="7E86$tKtVZy" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:7E86$tKtioV" />
                </node>
              </node>
              <node concept="3x8VRR" id="7E86$tKtWTu" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7E86$tKv5Jk" role="3acgRq">
      <ref role="30HIoZ" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
      <node concept="1Koe21" id="7E86$tKv5Jl" role="1lVwrX">
        <node concept="3clFbS" id="7E86$tKv5Jm" role="1Koe22">
          <node concept="3cpWs8" id="7E86$tKv5J_" role="3cqZAp">
            <node concept="3cpWsn" id="7E86$tKv5JA" role="3cpWs9">
              <property role="TrG5h" value="$_T" />
              <node concept="3uibUv" id="7E86$tKv5JC" role="1tU5fm">
                <ref role="3uigEE" to="xq5w:7E86$tKu5$t" resolve="IndexedVar" />
              </node>
              <node concept="2ShNRf" id="7E86$tKv5JD" role="33vP2m">
                <node concept="1pGfFk" id="7E86$tKv8Y7" role="2ShVmc">
                  <ref role="37wK5l" to="xq5w:5k_shARNZ68" resolve="IndexedVar" />
                  <node concept="Xl_RD" id="7E86$tKv9Sm" role="37wK5m">
                    <property role="Xl_RC" value="T" />
                    <node concept="17Uvod" id="7E86$tKvd79" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="7E86$tKvd7a" role="3zH0cK">
                        <node concept="3clFbS" id="7E86$tKvd7b" role="2VODD2">
                          <node concept="3clFbF" id="7E86$tKvdF_" role="3cqZAp">
                            <node concept="2OqwBi" id="7E86$tKvdKe" role="3clFbG">
                              <node concept="30H73N" id="7E86$tKvdF$" role="2Oq$k0" />
                              <node concept="3TrcHB" id="7E86$tKvdYS" role="2OqNvi">
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
              <node concept="2ZBi8u" id="7E86$tKv5JI" role="lGtFl">
                <ref role="2rW$FS" node="7E86$tKuvNp" resolve="logicalvar_declaration" />
              </node>
              <node concept="17Uvod" id="7E86$tKviB$" role="lGtFl">
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <property role="2qtEX9" value="name" />
                <node concept="3zFVjK" id="7E86$tKviB_" role="3zH0cK">
                  <node concept="3clFbS" id="7E86$tKviBA" role="2VODD2">
                    <node concept="3clFbF" id="4vbeH84LghI" role="3cqZAp">
                      <node concept="2OqwBi" id="4vbeH84LghJ" role="3clFbG">
                        <node concept="1iwH7S" id="4vbeH84LghK" role="2Oq$k0" />
                        <node concept="2piZGk" id="4vbeH84LghL" role="2OqNvi">
                          <node concept="2OqwBi" id="4vbeH84LghN" role="2pr8EU">
                            <node concept="30H73N" id="4vbeH84LghO" role="2Oq$k0" />
                            <node concept="2Xjw5R" id="4vbeH84LghP" role="2OqNvi">
                              <node concept="3gmYPX" id="7E86$tK__KK" role="1xVPHs">
                                <node concept="3gn64h" id="7E86$tK_Anz" role="3gmYPZ">
                                  <ref role="3gnhBz" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
                                </node>
                                <node concept="3gn64h" id="7E86$tK_ASy" role="3gmYPZ">
                                  <ref role="3gnhBz" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs3" id="104EUzFpNwX" role="2piZGb">
                            <node concept="2OqwBi" id="104EUzFpNCV" role="3uHU7w">
                              <node concept="30H73N" id="104EUzFpNxW" role="2Oq$k0" />
                              <node concept="3TrcHB" id="104EUzFpNS2" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="104EUzFpN2Q" role="3uHU7B">
                              <property role="Xl_RC" value="$_" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1W57fq" id="3sttX4FvRao" role="lGtFl">
                <node concept="3IZrLx" id="3sttX4FvRaq" role="3IZSJc">
                  <node concept="3clFbS" id="3sttX4FvRas" role="2VODD2">
                    <node concept="34ab3g" id="3sttX4FvRog" role="3cqZAp">
                      <property role="35gtTG" value="warn" />
                      <node concept="3cpWs3" id="3sttX4FvRoh" role="34bqiv">
                        <node concept="2OqwBi" id="3sttX4FvRoi" role="3uHU7w">
                          <node concept="2JrnkZ" id="3sttX4FvRoj" role="2Oq$k0">
                            <node concept="30H73N" id="3sttX4FvRok" role="2JrQYb" />
                          </node>
                          <node concept="liA8E" id="3sttX4FvRol" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                          </node>
                        </node>
                        <node concept="3cpWs3" id="3sttX4FvRom" role="3uHU7B">
                          <node concept="3cpWs3" id="3sttX4FvRon" role="3uHU7B">
                            <node concept="Xl_RD" id="3sttX4FvRoo" role="3uHU7B">
                              <property role="Xl_RC" value="----&gt; [" />
                            </node>
                            <node concept="30H73N" id="3sttX4FvRop" role="3uHU7w" />
                          </node>
                          <node concept="Xl_RD" id="3sttX4FvRoq" role="3uHU7w">
                            <property role="Xl_RC" value="]@" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3sttX4FvRor" role="3cqZAp">
                      <node concept="3clFbT" id="3sttX4FvRos" role="3clFbG">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="7E86$tKv5JJ" role="lGtFl" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7E86$tKv5Kt" role="30HLyM">
        <node concept="3clFbS" id="7E86$tKv5Ku" role="2VODD2">
          <node concept="3clFbF" id="7E86$tKv5Kv" role="3cqZAp">
            <node concept="2OqwBi" id="7E86$tKv5Kw" role="3clFbG">
              <node concept="2OqwBi" id="7E86$tKv5Kx" role="2Oq$k0">
                <node concept="30H73N" id="7E86$tKv5Ky" role="2Oq$k0" />
                <node concept="3TrEf2" id="7E86$tKv5Kz" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:7E86$tKtioV" />
                </node>
              </node>
              <node concept="3w_OXm" id="7E86$tKv6Jn" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
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
                      <ref role="3Tt5mk" to="5j4j:7E86$tKsqnr" />
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
                      <ref role="3Tt5mk" to="5j4j:7E86$tKt5BI" />
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
                <ref role="3uigEE" to="yg8f:qubcdt1pkm" resolve="ILogicalExt" />
                <node concept="raruj" id="dfChU1koS6" role="lGtFl" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="1OShD0H$ohx">
    <property role="TrG5h" value="ChildRole" />
    <property role="3GE5qa" value="switch" />
    <node concept="3aamgX" id="3t7_2FgvfJ1" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
      <node concept="14YyZ8" id="3t7_2Fgvg4m" role="1lVwrX">
        <node concept="14ZrTv" id="3t7_2Fgvg4s" role="14ZwWg">
          <node concept="30G5F_" id="3t7_2Fgvg4t" role="150hEN">
            <node concept="3clFbS" id="3t7_2Fgvg4u" role="2VODD2">
              <node concept="3clFbF" id="3t7_2Fgvg5_" role="3cqZAp">
                <node concept="2OqwBi" id="3t7_2Fgvg5A" role="3clFbG">
                  <node concept="2OqwBi" id="3t7_2Fgvg5B" role="2Oq$k0">
                    <node concept="30H73N" id="3t7_2Fgvg5C" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="3t7_2Fgvg5D" role="2OqNvi">
                      <node concept="3CFYIy" id="3t7_2Fgvg5E" role="3CFYIz">
                        <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
                      </node>
                    </node>
                  </node>
                  <node concept="3x8VRR" id="3t7_2Fgvg5F" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="3t7_2Fgvg8_" role="150oIE">
            <node concept="10Nm6u" id="3t7_2Fgvg8A" role="gfFT$">
              <node concept="29HgVG" id="3t7_2Fgvg8B" role="lGtFl">
                <node concept="3NFfHV" id="3t7_2Fgvg8C" role="3NFExx">
                  <node concept="3clFbS" id="3t7_2Fgvg8D" role="2VODD2">
                    <node concept="3clFbF" id="3t7_2Fgvg8E" role="3cqZAp">
                      <node concept="2OqwBi" id="3t7_2Fgvg8F" role="3clFbG">
                        <node concept="30H73N" id="3t7_2Fgvg8G" role="2Oq$k0" />
                        <node concept="3CFZ6_" id="3t7_2Fgvg8H" role="2OqNvi">
                          <node concept="3CFYIy" id="3t7_2Fgvg8I" role="3CFYIz">
                            <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
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
        <node concept="gft3U" id="3t7_2FgvgtM" role="14YRTM">
          <node concept="2YIFZM" id="3t7_2FgvgtN" role="gfFT$">
            <ref role="1Pybhc" to="ie8e:5JQSuNswOXL" resolve="StemFunc" />
            <ref role="37wK5l" to="ie8e:5JQSuNsxhfn" resolve="create" />
            <node concept="Xl_RD" id="3t7_2FgvgtO" role="37wK5m">
              <property role="Xl_RC" value="name" />
              <node concept="17Uvod" id="3t7_2FgvgtP" role="lGtFl">
                <property role="2qtEX9" value="value" />
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                <node concept="3zFVjK" id="3t7_2FgvgtQ" role="3zH0cK">
                  <node concept="3clFbS" id="3t7_2FgvgtR" role="2VODD2">
                    <node concept="3clFbF" id="3t7_2FgvgtS" role="3cqZAp">
                      <node concept="2OqwBi" id="3t7_2FgvgtT" role="3clFbG">
                        <node concept="30H73N" id="3t7_2FgvgtU" role="2Oq$k0" />
                        <node concept="3TrcHB" id="3t7_2FgvgtV" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="10Nm6u" id="3t7_2FgvgtW" role="37wK5m">
              <node concept="2b32R4" id="3t7_2FgvgtX" role="lGtFl">
                <node concept="3JmXsc" id="3t7_2FgvgtY" role="2P8S$">
                  <node concept="3clFbS" id="3t7_2FgvgtZ" role="2VODD2">
                    <node concept="3clFbF" id="3t7_2Fgvgu0" role="3cqZAp">
                      <node concept="2OqwBi" id="3t7_2Fgvgu1" role="3clFbG">
                        <node concept="3Tsc0h" id="3t7_2Fgvgu2" role="2OqNvi">
                          <ref role="3TtcxE" to="5j4j:6$jH9oLmYFB" />
                        </node>
                        <node concept="30H73N" id="3t7_2Fgvgu3" role="2Oq$k0" />
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
    <node concept="j$LIH" id="1OShD0H$BUA" role="jxRDz">
      <node concept="1lLz0L" id="1OShD0H$CM8" role="1lHHLF">
        <property role="1lMjX7" value="error" />
        <property role="1lLB17" value="unsupported construct" />
      </node>
    </node>
  </node>
  <node concept="jVnub" id="1OShD0H$K$J">
    <property role="TrG5h" value="ValueRole" />
    <property role="3GE5qa" value="switch" />
    <node concept="3aamgX" id="3t7_2Fgvf7M" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
      <node concept="14YyZ8" id="3t7_2FgvflF" role="1lVwrX">
        <node concept="14ZrTv" id="3t7_2FgvflL" role="14ZwWg">
          <node concept="30G5F_" id="3t7_2FgvflM" role="150hEN">
            <node concept="3clFbS" id="3t7_2FgvflN" role="2VODD2">
              <node concept="3clFbF" id="3t7_2FgvfmU" role="3cqZAp">
                <node concept="2OqwBi" id="3t7_2FgvfmV" role="3clFbG">
                  <node concept="2OqwBi" id="3t7_2FgvfmW" role="2Oq$k0">
                    <node concept="30H73N" id="3t7_2FgvfmX" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="3t7_2FgvfmY" role="2OqNvi">
                      <node concept="3CFYIy" id="3t7_2FgvfmZ" role="3CFYIz">
                        <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
                      </node>
                    </node>
                  </node>
                  <node concept="3x8VRR" id="3t7_2Fgvfn0" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="3t7_2Fgvfq0" role="150oIE">
            <node concept="10Nm6u" id="3t7_2Fgvfq1" role="gfFT$">
              <node concept="29HgVG" id="3t7_2Fgvfq2" role="lGtFl">
                <node concept="3NFfHV" id="3t7_2Fgvfq3" role="3NFExx">
                  <node concept="3clFbS" id="3t7_2Fgvfq4" role="2VODD2">
                    <node concept="3clFbF" id="3t7_2Fgvfq5" role="3cqZAp">
                      <node concept="2OqwBi" id="3t7_2Fgvfq6" role="3clFbG">
                        <node concept="30H73N" id="3t7_2Fgvfq7" role="2Oq$k0" />
                        <node concept="3CFZ6_" id="3t7_2Fgvfq8" role="2OqNvi">
                          <node concept="3CFYIy" id="3t7_2Fgvfq9" role="3CFYIz">
                            <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
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
        <node concept="gft3U" id="3t7_2Fgvfu6" role="14YRTM">
          <node concept="2YIFZM" id="3t7_2Fgvfu7" role="gfFT$">
            <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
            <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
            <node concept="Xl_RD" id="3t7_2Fgvfu8" role="37wK5m">
              <property role="Xl_RC" value="name" />
              <node concept="17Uvod" id="3t7_2Fgvfu9" role="lGtFl">
                <property role="2qtEX9" value="value" />
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                <node concept="3zFVjK" id="3t7_2Fgvfua" role="3zH0cK">
                  <node concept="3clFbS" id="3t7_2Fgvfub" role="2VODD2">
                    <node concept="3clFbF" id="3t7_2Fgvfuc" role="3cqZAp">
                      <node concept="2OqwBi" id="3t7_2Fgvfud" role="3clFbG">
                        <node concept="30H73N" id="3t7_2Fgvfue" role="2Oq$k0" />
                        <node concept="3TrcHB" id="3t7_2Fgvfuf" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="10Nm6u" id="3t7_2Fgvfug" role="37wK5m">
              <node concept="2b32R4" id="3t7_2Fgvfuh" role="lGtFl">
                <node concept="3JmXsc" id="3t7_2Fgvfui" role="2P8S$">
                  <node concept="3clFbS" id="3t7_2Fgvfuj" role="2VODD2">
                    <node concept="3clFbF" id="3t7_2Fgvfuk" role="3cqZAp">
                      <node concept="2OqwBi" id="3t7_2Fgvful" role="3clFbG">
                        <node concept="3Tsc0h" id="3t7_2Fgvfum" role="2OqNvi">
                          <ref role="3TtcxE" to="5j4j:6$jH9oLmYL8" />
                        </node>
                        <node concept="30H73N" id="3t7_2Fgvfun" role="2Oq$k0" />
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
    <node concept="j$LIH" id="1OShD0H_2fF" role="jxRDz">
      <node concept="1lLz0L" id="1OShD0H_2fG" role="1lHHLF">
        <property role="1lMjX7" value="error" />
        <property role="1lLB17" value="unsupported construct" />
      </node>
    </node>
  </node>
  <node concept="jVnub" id="1OShD0H_ejR">
    <property role="TrG5h" value="Node" />
    <property role="3GE5qa" value="switch" />
    <node concept="3aamgX" id="1OShD0H_fcx" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
      <node concept="30G5F_" id="1OShD0H_fWS" role="30HLyM">
        <node concept="3clFbS" id="1OShD0H_fWT" role="2VODD2">
          <node concept="3clFbF" id="1OShD0H_g7v" role="3cqZAp">
            <node concept="2OqwBi" id="1OShD0H_g7w" role="3clFbG">
              <node concept="2OqwBi" id="1OShD0H_g7x" role="2Oq$k0">
                <node concept="30H73N" id="1OShD0H_g7y" role="2Oq$k0" />
                <node concept="3CFZ6_" id="1OShD0H_g7z" role="2OqNvi">
                  <node concept="3CFYIy" id="6dMt3c55oQJ" role="3CFYIz">
                    <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="1OShD0H_g7_" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="1OShD0H_hay" role="1lVwrX">
        <node concept="10Nm6u" id="1OShD0H_haz" role="gfFT$">
          <node concept="29HgVG" id="1OShD0H_ha$" role="lGtFl">
            <node concept="3NFfHV" id="1OShD0H_ha_" role="3NFExx">
              <node concept="3clFbS" id="1OShD0H_haA" role="2VODD2">
                <node concept="3clFbF" id="1OShD0H_haB" role="3cqZAp">
                  <node concept="2OqwBi" id="1OShD0H_haC" role="3clFbG">
                    <node concept="30H73N" id="1OShD0H_haD" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="1OShD0H_haE" role="2OqNvi">
                      <node concept="3CFYIy" id="6dMt3c55oZi" role="3CFYIz">
                        <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
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
    <node concept="3aamgX" id="6SZa6nhEX$a" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
      <node concept="gft3U" id="6SZa6nhEX$b" role="1lVwrX">
        <node concept="2YIFZM" id="6SZa6nhEZg2" role="gfFT$">
          <ref role="37wK5l" to="ie8e:5JQSuNsxhfn" resolve="create" />
          <ref role="1Pybhc" to="ie8e:5JQSuNswOXL" resolve="StemFunc" />
          <node concept="Xl_RD" id="6SZa6nhEZg3" role="37wK5m">
            <property role="Xl_RC" value="node" />
          </node>
          <node concept="10Nm6u" id="6SZa6nhEZg4" role="37wK5m">
            <node concept="2b32R4" id="6SZa6nhEZg5" role="lGtFl">
              <node concept="3JmXsc" id="6SZa6nhEZg6" role="2P8S$">
                <node concept="3clFbS" id="6SZa6nhEZg7" role="2VODD2">
                  <node concept="3clFbF" id="6SZa6nhEZg8" role="3cqZAp">
                    <node concept="2OqwBi" id="6SZa6nhEZg9" role="3clFbG">
                      <node concept="2OqwBi" id="6SZa6nhEZga" role="2Oq$k0">
                        <node concept="2OqwBi" id="6SZa6nhEZgb" role="2Oq$k0">
                          <node concept="3Tsc0h" id="6SZa6nhEZgc" role="2OqNvi">
                            <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" />
                          </node>
                          <node concept="30H73N" id="6SZa6nhEZgd" role="2Oq$k0" />
                        </node>
                        <node concept="3zZkjj" id="6SZa6nhEZge" role="2OqNvi">
                          <node concept="1bVj0M" id="6SZa6nhEZgf" role="23t8la">
                            <node concept="3clFbS" id="6SZa6nhEZgg" role="1bW5cS">
                              <node concept="3clFbF" id="6SZa6nhEZgh" role="3cqZAp">
                                <node concept="2OqwBi" id="6SZa6nhEZgi" role="3clFbG">
                                  <node concept="37vLTw" id="6SZa6nhEZgj" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6SZa6nhEZgm" resolve="it" />
                                  </node>
                                  <node concept="1mIQ4w" id="6SZa6nhEZgk" role="2OqNvi">
                                    <node concept="chp4Y" id="6SZa6nhEZgl" role="cj9EA">
                                      <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="6SZa6nhEZgm" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="6SZa6nhEZgn" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3QWeyG" id="6SZa6nhEZgo" role="2OqNvi">
                        <node concept="2OqwBi" id="6SZa6nhEZgp" role="576Qk">
                          <node concept="2OqwBi" id="6SZa6nhEZgq" role="2Oq$k0">
                            <node concept="30H73N" id="6SZa6nhEZgr" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="6SZa6nhEZgs" role="2OqNvi">
                              <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="6SZa6nhEZgt" role="2OqNvi">
                            <node concept="1bVj0M" id="6SZa6nhEZgu" role="23t8la">
                              <node concept="3clFbS" id="6SZa6nhEZgv" role="1bW5cS">
                                <node concept="3clFbF" id="6SZa6nhEZgw" role="3cqZAp">
                                  <node concept="2OqwBi" id="6SZa6nhEZgx" role="3clFbG">
                                    <node concept="37vLTw" id="6SZa6nhEZgy" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6SZa6nhEZg_" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="6SZa6nhEZgz" role="2OqNvi">
                                      <node concept="chp4Y" id="6SZa6nhEZg$" role="cj9EA">
                                        <ref role="cht4Q" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="6SZa6nhEZg_" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="6SZa6nhEZgA" role="1tU5fm" />
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
    <node concept="j$LIH" id="677NV56tuNj" role="jxRDz">
      <node concept="1lLz0L" id="677NV56tuNk" role="1lHHLF">
        <property role="1lMjX7" value="error" />
        <property role="1lLB17" value="unsupported construct" />
      </node>
    </node>
  </node>
  <node concept="jVnub" id="1OShD0H_ppr">
    <property role="TrG5h" value="Value" />
    <property role="3GE5qa" value="switch" />
    <node concept="3aamgX" id="1OShD0H_pps" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
      <node concept="30G5F_" id="1OShD0H_ppw" role="30HLyM">
        <node concept="3clFbS" id="1OShD0H_ppx" role="2VODD2">
          <node concept="3clFbF" id="1OShD0H_q3l" role="3cqZAp">
            <node concept="1Wc70l" id="1OShD0HAdY7" role="3clFbG">
              <node concept="2OqwBi" id="1OShD0H_q3m" role="3uHU7B">
                <node concept="2OqwBi" id="1OShD0H_q3n" role="2Oq$k0">
                  <node concept="30H73N" id="1OShD0H_q3o" role="2Oq$k0" />
                  <node concept="3CFZ6_" id="1OShD0H_q3p" role="2OqNvi">
                    <node concept="3CFYIy" id="6dMt3c55pIE" role="3CFYIz">
                      <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
                    </node>
                  </node>
                </node>
                <node concept="3x8VRR" id="1OShD0H_q3r" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="1OShD0HAe50" role="3uHU7w">
                <node concept="2OqwBi" id="1OShD0HAe51" role="2Oq$k0">
                  <node concept="30H73N" id="1OShD0HAe52" role="2Oq$k0" />
                  <node concept="1mfA1w" id="1OShD0HAe53" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="1OShD0HAe54" role="2OqNvi">
                  <node concept="chp4Y" id="1OShD0HAe55" role="cj9EA">
                    <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="53iOybEHUhf" role="1lVwrX">
        <node concept="10Nm6u" id="53iOybEHUhg" role="gfFT$">
          <node concept="29HgVG" id="53iOybEHUhh" role="lGtFl">
            <node concept="3NFfHV" id="53iOybEHUhi" role="3NFExx">
              <node concept="3clFbS" id="53iOybEHUhj" role="2VODD2">
                <node concept="3clFbF" id="53iOybEHUhk" role="3cqZAp">
                  <node concept="2OqwBi" id="53iOybEHUhl" role="3clFbG">
                    <node concept="30H73N" id="53iOybEHUhm" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="53iOybEHUhn" role="2OqNvi">
                      <node concept="3CFYIy" id="6dMt3c55pSB" role="3CFYIz">
                        <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
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
    <node concept="3aamgX" id="1OShD0HAcxF" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
      <node concept="30G5F_" id="1OShD0HAcxG" role="30HLyM">
        <node concept="3clFbS" id="1OShD0HAcxH" role="2VODD2">
          <node concept="3clFbF" id="1OShD0HAcxI" role="3cqZAp">
            <node concept="1Wc70l" id="1OShD0HAdlC" role="3clFbG">
              <node concept="2OqwBi" id="1OShD0HAcxJ" role="3uHU7B">
                <node concept="2OqwBi" id="1OShD0HAcxK" role="2Oq$k0">
                  <node concept="30H73N" id="1OShD0HAcxL" role="2Oq$k0" />
                  <node concept="3CFZ6_" id="1OShD0HAcxM" role="2OqNvi">
                    <node concept="3CFYIy" id="6dMt3c55q3v" role="3CFYIz">
                      <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
                    </node>
                  </node>
                </node>
                <node concept="3x8VRR" id="1OShD0HAcxO" role="2OqNvi" />
              </node>
              <node concept="3fqX7Q" id="1OShD0HAdsw" role="3uHU7w">
                <node concept="2OqwBi" id="1OShD0HAdsx" role="3fr31v">
                  <node concept="2OqwBi" id="1OShD0HAdsy" role="2Oq$k0">
                    <node concept="30H73N" id="1OShD0HAdsz" role="2Oq$k0" />
                    <node concept="1mfA1w" id="1OShD0HAds$" role="2OqNvi" />
                  </node>
                  <node concept="1mIQ4w" id="1OShD0HAds_" role="2OqNvi">
                    <node concept="chp4Y" id="1OShD0HAdsA" role="cj9EA">
                      <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="1OShD0HAcxP" role="1lVwrX">
        <node concept="10Nm6u" id="1OShD0HAcxQ" role="gfFT$">
          <node concept="29HgVG" id="1OShD0HAcxR" role="lGtFl">
            <node concept="3NFfHV" id="1OShD0HAcxS" role="3NFExx">
              <node concept="3clFbS" id="1OShD0HAcxT" role="2VODD2">
                <node concept="3clFbF" id="1OShD0HAcxU" role="3cqZAp">
                  <node concept="2OqwBi" id="1OShD0HAcxV" role="3clFbG">
                    <node concept="30H73N" id="1OShD0HAcxW" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="1OShD0HAcxX" role="2OqNvi">
                      <node concept="3CFYIy" id="6dMt3c55qkA" role="3CFYIz">
                        <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
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
    <node concept="3aamgX" id="1OShD0H_r2V" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
      <node concept="gft3U" id="1OShD0H_scb" role="1lVwrX">
        <node concept="Xl_RD" id="1OShD0H_scc" role="gfFT$">
          <property role="Xl_RC" value="value" />
          <node concept="17Uvod" id="1OShD0H_scd" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
            <node concept="3zFVjK" id="1OShD0H_sce" role="3zH0cK">
              <node concept="3clFbS" id="1OShD0H_scf" role="2VODD2">
                <node concept="3clFbF" id="1OShD0H_scg" role="3cqZAp">
                  <node concept="2OqwBi" id="1OShD0H_sch" role="3clFbG">
                    <node concept="3TrcHB" id="1OShD0H_sci" role="2OqNvi">
                      <ref role="3TsBF5" to="5j4j:6$jH9oLmYKA" resolve="value" />
                    </node>
                    <node concept="30H73N" id="1OShD0H_scj" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="1OShD0H_G7N" role="30HLyM">
        <node concept="3clFbS" id="1OShD0H_G7O" role="2VODD2">
          <node concept="3clFbF" id="1OShD0H_Gty" role="3cqZAp">
            <node concept="2OqwBi" id="1OShD0H_RFX" role="3clFbG">
              <node concept="2OqwBi" id="1OShD0H_Hu$" role="2Oq$k0">
                <node concept="30H73N" id="1OShD0H_Gtx" role="2Oq$k0" />
                <node concept="1mfA1w" id="1OShD0H_Rvb" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="1OShD0H_RWX" role="2OqNvi">
                <node concept="chp4Y" id="1OShD0H_S8K" role="cj9EA">
                  <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1OShD0H_SC3" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
      <node concept="gft3U" id="1OShD0H_T7k" role="1lVwrX">
        <node concept="2YIFZM" id="1OShD0H_UPR" role="gfFT$">
          <ref role="37wK5l" to="ie8e:5JQSuNsxb_I" resolve="create" />
          <ref role="1Pybhc" to="ie8e:2xQ7eRAD2dj" resolve="Value" />
          <node concept="Xl_RD" id="1OShD0H_USg" role="37wK5m">
            <property role="Xl_RC" value="value" />
            <node concept="17Uvod" id="1OShD0H_UVa" role="lGtFl">
              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
              <property role="2qtEX9" value="value" />
              <node concept="3zFVjK" id="1OShD0H_UVd" role="3zH0cK">
                <node concept="3clFbS" id="1OShD0H_UVe" role="2VODD2">
                  <node concept="3clFbF" id="1OShD0H_UVk" role="3cqZAp">
                    <node concept="2OqwBi" id="1OShD0H_UVf" role="3clFbG">
                      <node concept="3TrcHB" id="1OShD0H_UVi" role="2OqNvi">
                        <ref role="3TsBF5" to="5j4j:6$jH9oLmYKA" resolve="value" />
                      </node>
                      <node concept="30H73N" id="1OShD0H_UVj" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="1OShD0H_V9b" role="30HLyM">
        <node concept="3clFbS" id="1OShD0H_V9c" role="2VODD2">
          <node concept="3clFbF" id="1OShD0H_Vl$" role="3cqZAp">
            <node concept="3fqX7Q" id="1OShD0H_VCm" role="3clFbG">
              <node concept="2OqwBi" id="1OShD0H_VCn" role="3fr31v">
                <node concept="2OqwBi" id="1OShD0H_VCo" role="2Oq$k0">
                  <node concept="30H73N" id="1OShD0H_VCp" role="2Oq$k0" />
                  <node concept="1mfA1w" id="1OShD0H_VCq" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="1OShD0H_VCr" role="2OqNvi">
                  <node concept="chp4Y" id="1OShD0H_VCs" role="cj9EA">
                    <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="j$LIH" id="677NV56twuX" role="jxRDz">
      <node concept="1lLz0L" id="677NV56twuY" role="1lHHLF">
        <property role="1lMjX7" value="error" />
        <property role="1lLB17" value="unsupported construct" />
      </node>
    </node>
  </node>
  <node concept="jVnub" id="1OShD0HRO_l">
    <property role="3GE5qa" value="switch" />
    <property role="TrG5h" value="List" />
    <node concept="3aamgX" id="1OShD0HTfRQ" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="5j4j:1OShD0HAY6y" resolve="List" />
      <node concept="30G5F_" id="1OShD0HTgtU" role="30HLyM">
        <node concept="3clFbS" id="1OShD0HTgtV" role="2VODD2">
          <node concept="3clFbF" id="1OShD0HTi9Y" role="3cqZAp">
            <node concept="2OqwBi" id="1OShD0HTi9Z" role="3clFbG">
              <node concept="2OqwBi" id="1OShD0HTia0" role="2Oq$k0">
                <node concept="30H73N" id="1OShD0HTia1" role="2Oq$k0" />
                <node concept="3CFZ6_" id="1OShD0HTia2" role="2OqNvi">
                  <node concept="3CFYIy" id="6dMt3c55oc7" role="3CFYIz">
                    <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="1OShD0HTia4" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="1OShD0HTjxQ" role="1lVwrX">
        <node concept="10Nm6u" id="1OShD0HTjxR" role="gfFT$">
          <node concept="29HgVG" id="1OShD0HTjxS" role="lGtFl">
            <node concept="3NFfHV" id="1OShD0HTjxT" role="3NFExx">
              <node concept="3clFbS" id="1OShD0HTjxU" role="2VODD2">
                <node concept="3clFbF" id="1OShD0HTjxV" role="3cqZAp">
                  <node concept="2OqwBi" id="1OShD0HTjxW" role="3clFbG">
                    <node concept="30H73N" id="1OShD0HTjxX" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="1OShD0HTjxY" role="2OqNvi">
                      <node concept="3CFYIy" id="6dMt3c55okE" role="3CFYIz">
                        <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
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
    <node concept="3aamgX" id="1OShD0HRO_m" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="5j4j:1OShD0HAY6y" resolve="List" />
      <node concept="gft3U" id="1OShD0HSnMP" role="1lVwrX">
        <node concept="2YIFZM" id="1OShD0HSnMZ" role="gfFT$">
          <ref role="37wK5l" to="ie8e:1OShD0HS45f" resolve="createList" />
          <ref role="1Pybhc" to="ie8e:3OPtF03lco4" resolve="ListFunc" />
          <node concept="10Nm6u" id="1OShD0HSoP5" role="37wK5m">
            <node concept="2b32R4" id="1OShD0HSoRm" role="lGtFl">
              <node concept="3JmXsc" id="1OShD0HSoRp" role="2P8S$">
                <node concept="3clFbS" id="1OShD0HSoRq" role="2VODD2">
                  <node concept="3clFbF" id="1OShD0HSoRw" role="3cqZAp">
                    <node concept="2OqwBi" id="1OShD0HSoRr" role="3clFbG">
                      <node concept="3Tsc0h" id="1OShD0HSoRu" role="2OqNvi">
                        <ref role="3TtcxE" to="5j4j:1OShD0HAZ38" />
                      </node>
                      <node concept="30H73N" id="1OShD0HSoRv" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="j$LIH" id="677NV56ttWW" role="jxRDz">
      <node concept="1lLz0L" id="677NV56ttWX" role="1lHHLF">
        <property role="1lMjX7" value="error" />
        <property role="1lLB17" value="unsupported construct" />
      </node>
    </node>
  </node>
  <node concept="jVnub" id="677NV56thjr">
    <property role="3GE5qa" value="switch" />
    <property role="TrG5h" value="Expression_logical2atom" />
    <node concept="3aamgX" id="677NV56tiIG" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="1Koe21" id="677NV56tBI4" role="1lVwrX">
        <node concept="3clFbS" id="677NV56tBVM" role="1Koe22">
          <node concept="3cpWs8" id="677NV56tBWy" role="3cqZAp">
            <node concept="3cpWsn" id="677NV56tBWz" role="3cpWs9">
              <property role="TrG5h" value="tla" />
              <node concept="10Q1$e" id="677NV56tBW$" role="1tU5fm">
                <node concept="3uibUv" id="qubcdthaen" role="10Q1$1">
                  <ref role="3uigEE" to="yg8f:qubcdt1pkm" resolve="ILogicalExt" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="677NV56tBWA" role="3cqZAp">
            <node concept="2YIFZM" id="677NV56tBWB" role="3clFbG">
              <ref role="37wK5l" to="yg8f:677NV565VC2" resolve="asAtomArray" />
              <ref role="1Pybhc" to="yg8f:677NV565N1x" resolve="LogicalUtil" />
              <node concept="37vLTw" id="677NV56tBWC" role="37wK5m">
                <ref role="3cqZAo" node="677NV56tBWz" resolve="tla" />
                <node concept="29HgVG" id="677NV56tBWD" role="lGtFl">
                  <node concept="3NFfHV" id="677NV56tBWE" role="3NFExx">
                    <node concept="3clFbS" id="677NV56tBWF" role="2VODD2">
                      <node concept="3clFbF" id="677NV56tBWG" role="3cqZAp">
                        <node concept="30H73N" id="677NV56tBWJ" role="3clFbG" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="raruj" id="677NV56tBWK" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="677NV56tjai" role="30HLyM">
        <node concept="3clFbS" id="677NV56tjaj" role="2VODD2">
          <node concept="3clFbF" id="2S_ORi36b$8" role="3cqZAp">
            <node concept="2OqwBi" id="2S_ORi36b$9" role="3clFbG">
              <node concept="1UaxmW" id="2S_ORi36b$a" role="2Oq$k0">
                <node concept="1Yb3XT" id="2S_ORi36b$b" role="1Ub_4A">
                  <property role="TrG5h" value="at" />
                  <node concept="2DMOqp" id="2S_ORi36b$c" role="1YbcFS">
                    <node concept="10Q1$e" id="2S_ORi36b$d" role="2DMOqq">
                      <node concept="3uibUv" id="qubcdthabH" role="10Q1$1">
                        <ref role="3uigEE" to="yg8f:qubcdt1pkm" resolve="ILogicalExt" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2S_ORi36b$f" role="1Ub_4B">
                  <node concept="30H73N" id="2S_ORi36b$h" role="2Oq$k0" />
                  <node concept="3JvlWi" id="2S_ORi36b$j" role="2OqNvi" />
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
              <property role="TrG5h" value="tl" />
              <node concept="3uibUv" id="7jC45Kckh1C" role="1tU5fm">
                <ref role="3uigEE" to="yg8f:qubcdt1pkm" resolve="ILogicalExt" />
                <node concept="3qTvmN" id="7jC45Kckh6r" role="11_B2D" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="677NV56tAlo" role="3cqZAp">
            <node concept="2OqwBi" id="677NV56tAlp" role="3clFbG">
              <node concept="2OqwBi" id="677NV56tAlq" role="2Oq$k0">
                <node concept="37vLTw" id="677NV56tAlr" role="2Oq$k0">
                  <ref role="3cqZAo" node="677NV56tAlm" resolve="tl" />
                  <node concept="29HgVG" id="677NV56tAls" role="lGtFl">
                    <node concept="3NFfHV" id="677NV56tAlt" role="3NFExx">
                      <node concept="3clFbS" id="677NV56tAlu" role="2VODD2">
                        <node concept="3clFbF" id="677NV56tAlv" role="3cqZAp">
                          <node concept="30H73N" id="677NV56tAlx" role="3clFbG" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="677NV56tAlz" role="2OqNvi">
                  <ref role="37wK5l" to="yg8f:7MlQDeOy9SE" resolve="asAtom" />
                  <node concept="3VsKOn" id="7MlQDeOyGD2" role="37wK5m">
                    <ref role="3VsUkX" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    <node concept="1ZhdrF" id="7MlQDeOyGYn" role="lGtFl">
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1116615150612/1116615189566" />
                      <property role="2qtEX8" value="classifier" />
                      <node concept="3$xsQk" id="7MlQDeOyGYo" role="3$ytzL">
                        <node concept="3clFbS" id="7MlQDeOyGYp" role="2VODD2">
                          <node concept="3SKdUt" id="6Sag3Ks$h_v" role="3cqZAp">
                            <node concept="3SKdUq" id="6Sag3Ks$hCP" role="3SKWNk">
                              <property role="3SKdUp" value="TODO: need to pass splice as a parameter to the switch" />
                            </node>
                          </node>
                          <node concept="3cpWs8" id="7MlQDeOyRAL" role="3cqZAp">
                            <node concept="3cpWsn" id="7MlQDeOyRAM" role="3cpWs9">
                              <property role="TrG5h" value="splice" />
                              <node concept="3Tqbb2" id="7MlQDeOyRAK" role="1tU5fm">
                                <ref role="ehGHo" to="5j4j:dfChU1zo4B" resolve="Splice" />
                              </node>
                              <node concept="2OqwBi" id="7MlQDeOyRAN" role="33vP2m">
                                <node concept="30H73N" id="7MlQDeOyRAO" role="2Oq$k0" />
                                <node concept="2Xjw5R" id="7MlQDeOyRAP" role="2OqNvi">
                                  <node concept="1xMEDy" id="7MlQDeOyRAQ" role="1xVPHs">
                                    <node concept="chp4Y" id="7MlQDeOyRAR" role="ri$Ld">
                                      <ref role="cht4Q" to="5j4j:dfChU1zo4B" resolve="Splice" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="7MlQDeOyRc2" role="3cqZAp">
                            <node concept="3K4zz7" id="7MlQDeOyRU1" role="3clFbG">
                              <node concept="2OqwBi" id="7MlQDeOySZY" role="3K4E3e">
                                <node concept="37vLTw" id="7MlQDeOySI6" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7MlQDeOyRAM" resolve="splice" />
                                </node>
                                <node concept="2qgKlT" id="7MlQDeOyZf_" role="2OqNvi">
                                  <ref role="37wK5l" to="ha02:7MlQDeOyT3S" resolve="prototype" />
                                </node>
                              </node>
                              <node concept="3B5_sB" id="7MlQDeOySlV" role="3K4GZi">
                                <ref role="3B5MYn" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                              </node>
                              <node concept="3y3z36" id="7MlQDeOyRIt" role="3K4Cdx">
                                <node concept="10Nm6u" id="7MlQDeOyRO8" role="3uHU7w" />
                                <node concept="37vLTw" id="7MlQDeOyRAS" role="3uHU7B">
                                  <ref role="3cqZAo" node="7MlQDeOyRAM" resolve="splice" />
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
              <node concept="liA8E" id="677NV56tAl$" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:2QE4RCGndD7" resolve="asRoot" />
              </node>
              <node concept="raruj" id="677NV56tAl_" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="2S_ORi36mJS" role="30HLyM">
        <node concept="3clFbS" id="2S_ORi36mJT" role="2VODD2">
          <node concept="3clFbF" id="2S_ORi36mS8" role="3cqZAp">
            <node concept="2OqwBi" id="2S_ORi36mS9" role="3clFbG">
              <node concept="1UaxmW" id="2S_ORi36mSa" role="2Oq$k0">
                <node concept="2OqwBi" id="2S_ORi36mSb" role="1Ub_4B">
                  <node concept="30H73N" id="2S_ORi36mSd" role="2Oq$k0" />
                  <node concept="3JvlWi" id="2S_ORi36mSf" role="2OqNvi" />
                </node>
                <node concept="1Yb3XT" id="2S_ORi36mSg" role="1Ub_4A">
                  <property role="TrG5h" value="il" />
                  <node concept="2DMOqp" id="2S_ORi36mSh" role="1YbcFS">
                    <node concept="3uibUv" id="qubcdthagw" role="2DMOqq">
                      <ref role="3uigEE" to="yg8f:qubcdt1pkm" resolve="ILogicalExt" />
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
    <property role="3GE5qa" value="switch" />
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
                  <ref role="3Tt5mk" to="5j4j:7E86$tKsJfa" />
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
              <property role="TrG5h" value="logical" />
              <node concept="10Q1$e" id="6dMt3c5appI" role="1tU5fm">
                <node concept="3uibUv" id="6dMt3c5appJ" role="10Q1$1">
                  <ref role="3uigEE" to="xq5w:7E86$tKu5$t" resolve="IndexedVar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6dMt3c5appK" role="3cqZAp">
            <node concept="AH0OO" id="6dMt3c5appL" role="3clFbG">
              <node concept="3cmrfG" id="6dMt3c5appO" role="AHEQo">
                <property role="3cmrfH" value="0" />
                <node concept="29HgVG" id="6dMt3c5appP" role="lGtFl">
                  <node concept="3NFfHV" id="6dMt3c5appQ" role="3NFExx">
                    <node concept="3clFbS" id="6dMt3c5appR" role="2VODD2">
                      <node concept="3clFbF" id="6dMt3c5appS" role="3cqZAp">
                        <node concept="2OqwBi" id="6dMt3c5appT" role="3clFbG">
                          <node concept="3TrEf2" id="6dMt3c5appU" role="2OqNvi">
                            <ref role="3Tt5mk" to="5j4j:7E86$tKsJfa" />
                          </node>
                          <node concept="30H73N" id="6dMt3c5appV" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6dMt3c5appW" role="AHHXb">
                <ref role="3cqZAo" node="6dMt3c5appH" resolve="logical" />
                <node concept="1ZhdrF" id="6dMt3c5appX" role="lGtFl">
                  <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                  <property role="2qtEX8" value="variableDeclaration" />
                  <node concept="3$xsQk" id="6dMt3c5appY" role="3$ytzL">
                    <node concept="3clFbS" id="6dMt3c5appZ" role="2VODD2">
                      <node concept="3cpWs8" id="3sttX4FrM0J" role="3cqZAp">
                        <node concept="3cpWsn" id="3sttX4FrM0K" role="3cpWs9">
                          <property role="TrG5h" value="lvd" />
                          <node concept="3Tqbb2" id="3sttX4FrM0C" role="1tU5fm">
                            <ref role="ehGHo" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
                          </node>
                          <node concept="1PxgMI" id="3sttX4FrM0L" role="33vP2m">
                            <ref role="1PxNhF" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
                            <node concept="2OqwBi" id="3sttX4FrM0M" role="1PxMeX">
                              <node concept="1iwH7S" id="3sttX4FrM0N" role="2Oq$k0" />
                              <node concept="12$id9" id="3sttX4FrM0O" role="2OqNvi">
                                <node concept="2OqwBi" id="3sttX4FrM0P" role="12$y8L">
                                  <node concept="30H73N" id="3sttX4FrM0Q" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="3sttX4FrM0R" role="2OqNvi">
                                    <ref role="3Tt5mk" to="5j4j:7E86$tK_PaH" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="3sttX4FrN2x" role="3cqZAp">
                        <node concept="3cpWsn" id="3sttX4FrN2y" role="3cpWs9">
                          <property role="TrG5h" value="localvar" />
                          <node concept="3Tqbb2" id="3sttX4FrN2n" role="1tU5fm">
                            <ref role="ehGHo" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
                          </node>
                          <node concept="2OqwBi" id="3sttX4FrN2z" role="33vP2m">
                            <node concept="1iwH7S" id="3sttX4FrN2$" role="2Oq$k0" />
                            <node concept="1iwH70" id="3sttX4FrN2_" role="2OqNvi">
                              <ref role="1iwH77" node="7E86$tKuvNp" resolve="logicalvar_declaration" />
                              <node concept="37vLTw" id="3sttX4FrN2A" role="1iwH7V">
                                <ref role="3cqZAo" node="3sttX4FrM0K" resolve="lvd" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="6dMt3c5apq0" role="3cqZAp">
                        <node concept="37vLTw" id="3sttX4FrN2B" role="3clFbG">
                          <ref role="3cqZAo" node="3sttX4FrN2y" resolve="localvar" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="raruj" id="6dMt3c5apq7" role="lGtFl" />
            </node>
            <node concept="15s5l7" id="6dMt3c5apq8" role="lGtFl" />
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
                  <ref role="3Tt5mk" to="5j4j:7E86$tKsJfa" />
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
              <property role="TrG5h" value="logical" />
              <node concept="3uibUv" id="6dMt3c5aqjq" role="1tU5fm">
                <ref role="3uigEE" to="xq5w:7E86$tKu5$t" resolve="IndexedVar" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6dMt3c5aqjr" role="3cqZAp">
            <node concept="37vLTw" id="6dMt3c5aqjs" role="3clFbG">
              <ref role="3cqZAo" node="6dMt3c5aqjp" resolve="logical" />
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
                          <ref role="1PxNhF" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
                          <node concept="2OqwBi" id="3sttX4FrOBP" role="1PxMeX">
                            <node concept="1iwH7S" id="3sttX4FrOBQ" role="2Oq$k0" />
                            <node concept="12$id9" id="3sttX4FrOBR" role="2OqNvi">
                              <node concept="2OqwBi" id="3sttX4FrOBS" role="12$y8L">
                                <node concept="30H73N" id="3sttX4FrOBT" role="2Oq$k0" />
                                <node concept="3TrEf2" id="3sttX4FrOBU" role="2OqNvi">
                                  <ref role="3Tt5mk" to="5j4j:7E86$tK_PaH" />
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

