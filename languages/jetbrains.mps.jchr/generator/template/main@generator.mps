<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e8d74388-7e06-420b-a967-873a2ce54d8c(jetbrains.mps.jchr.generator.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="-1" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="-1" />
    <use id="894463aa-8754-49c0-bf4b-6a32af66b376" name="jetbrains.mps.jchr" version="-1" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="-1" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="msyo" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(MPS.Core/jetbrains.mps.util@java_stub)" />
    <import index="vgt0" ref="r:f36c95e5-e428-4945-91ae-1005e20c7971(jetbrains.mps.jchr.structure)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="w2rx" ref="f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime(jetbrains.mps.jchr.runtime/runtime@java_stub)" />
    <import index="53gy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util.concurrent(JDK/java.util.concurrent@java_stub)" />
    <import index="tp68" ref="r:00000000-0000-4000-0000-011c895903ac(jetbrains.mps.baseLanguageInternal.structure)" />
    <import index="ec5l" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" />
    <import index="cu2c" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" implicit="true" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
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
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1195502100749" name="preMappingScript" index="1puA0r" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="5015072279636464462" name="jetbrains.mps.lang.generator.structure.VarMacro" flags="lg" index="2jeGV$">
        <child id="5015072279636624635" name="type" index="2jfP_h" />
        <child id="5015072279636624596" name="value" index="2jfP_Y" />
      </concept>
      <concept id="5015072279636592410" name="jetbrains.mps.lang.generator.structure.VarMacro_ValueQuery" flags="in" index="2jfdEK" />
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <child id="1168558750579" name="defaultConsequence" index="jxRDz" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
        <child id="1722980698497626405" name="actualArgument" index="v9R3O" />
      </concept>
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1195499912406" name="jetbrains.mps.lang.generator.structure.MappingScript" flags="lg" index="1pmfR0">
        <property id="1195595592106" name="scriptKind" index="1v3f2W" />
        <child id="1195501105008" name="codeBlock" index="1pqMTA" />
      </concept>
      <concept id="1195500722856" name="jetbrains.mps.lang.generator.structure.MappingScript_CodeBlock" flags="in" index="1pplIY" />
      <concept id="1195502151594" name="jetbrains.mps.lang.generator.structure.MappingScriptReference" flags="lg" index="1puMqW">
        <reference id="1195502167610" name="mappingScript" index="1puQsG" />
      </concept>
      <concept id="982871510064032177" name="jetbrains.mps.lang.generator.structure.IParameterizedTemplate" flags="ng" index="1s_3nv">
        <child id="982871510064032342" name="parameter" index="1s_3oS" />
      </concept>
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX" />
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1805153994415891174" name="jetbrains.mps.lang.generator.structure.TemplateParameterDeclaration" flags="ng" index="1N15co">
        <child id="1805153994415893199" name="type" index="1N15GL" />
      </concept>
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="4035562641222622437" name="jetbrains.mps.lang.generator.structure.TemplateArgumentQuery" flags="in" index="1UU6SM" />
      <concept id="4035562641222585520" name="jetbrains.mps.lang.generator.structure.TemplateArgumentQueryExpression" flags="nn" index="1UUvTB">
        <child id="4035562641222618754" name="query" index="1UU7Ll" />
      </concept>
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
      <concept id="1229477454423" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalCopiedInputByOutput" flags="nn" index="12$id9">
        <child id="1229477520175" name="outputNode" index="12$y8L" />
      </concept>
      <concept id="2721957369897614808" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_VarRef" flags="nn" index="1bhEwm">
        <reference id="2721957369897614810" name="varmacro" index="1bhEwk" />
      </concept>
      <concept id="5190093307972723402" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ParameterRef" flags="nn" index="3cR$yn">
        <reference id="5190093307972736266" name="parameter" index="3cRzXn" />
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
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1174914042989" name="jetbrains.mps.baseLanguageInternal.structure.InternalClassifierType" flags="in" index="2eloPW">
        <property id="1174914081067" name="fqClassName" index="2ely0U" />
      </concept>
      <concept id="1173990517731" name="jetbrains.mps.baseLanguageInternal.structure.InternalStaticMethodCall" flags="nn" index="1niqFM">
        <property id="1173992444083" name="methodName" index="1npL6y" />
        <property id="1173992483054" name="fqClassName" index="1npUBZ" />
        <child id="319021450862604085" name="actualArgument" index="2U24H$" />
        <child id="1175794062018" name="returnType" index="32Mpfj" />
      </concept>
      <concept id="1173996401517" name="jetbrains.mps.baseLanguageInternal.structure.InternalNewExpression" flags="nn" index="1nCR9W">
        <property id="1173996588177" name="fqClassName" index="1nD$Q0" />
        <child id="1179332974947" name="type" index="2lIhxL" />
        <child id="319021450862590135" name="actualArgument" index="2U2pNA" />
        <child id="1240934738108" name="parameter" index="3HumAs" />
      </concept>
      <concept id="1174294166120" name="jetbrains.mps.baseLanguageInternal.structure.InternalPartialInstanceMethodCall" flags="nn" index="1DoJHT">
        <property id="1174294288199" name="methodName" index="1Dpdpm" />
        <child id="1174313653259" name="returnType" index="1Ez5kq" />
        <child id="1174317636233" name="instance" index="1EMhIo" />
        <child id="1174318197094" name="actualArgument" index="1EOqxR" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7">
        <child id="1758937410080001570" name="conceptArgument" index="1dBWTz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1175845471038" name="jetbrains.mps.baseLanguage.collections.structure.ReverseOperation" flags="nn" index="35Qw8J" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="bUwia" id="pmDhvH6mAr">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="5lJXKmfS7" role="3acgRq">
      <ref role="30HIoZ" to="vgt0:5lJXKamzq" resolve="HandlerType" />
      <node concept="gft3U" id="5lJXKmgUu" role="1lVwrX">
        <node concept="2eloPW" id="35Lj3TiPjSV" role="gfFT$">
          <property role="2ely0U" value="handlerFqName" />
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
          <node concept="17Uvod" id="5lJXKmhgX" role="lGtFl">
            <property role="2qtEX9" value="fqClassName" />
            <property role="P4ACc" value="df345b11-b8c7-4213-ac66-48d2a9b75d88/1174914042989/1174914081067" />
            <node concept="3zFVjK" id="5lJXKmhgY" role="3zH0cK">
              <node concept="3clFbS" id="5lJXKmhgZ" role="2VODD2">
                <node concept="3cpWs8" id="5lJXKpesC" role="3cqZAp">
                  <node concept="3cpWsn" id="5lJXKpesD" role="3cpWs9">
                    <property role="TrG5h" value="handlerModel" />
                    <node concept="H_c77" id="5lJXKpesE" role="1tU5fm" />
                    <node concept="2OqwBi" id="5lJXKpesF" role="33vP2m">
                      <node concept="2OqwBi" id="5lJXKpesG" role="2Oq$k0">
                        <node concept="1iwH7S" id="5lJXKpesH" role="2Oq$k0" />
                        <node concept="12$id9" id="5lJXKpesI" role="2OqNvi">
                          <node concept="2OqwBi" id="5lJXKpesJ" role="12$y8L">
                            <node concept="30H73N" id="5lJXKpesK" role="2Oq$k0" />
                            <node concept="3TrEf2" id="5lJXKpm4q" role="2OqNvi">
                              <ref role="3Tt5mk" to="vgt0:5lJXKb74G" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="I4A8Y" id="5lJXKpesM" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lJXKpesN" role="3cqZAp">
                  <node concept="2YIFZM" id="5lJXKpesO" role="3clFbG">
                    <ref role="37wK5l" to="msyo:~JavaNameUtil.fqClassName(org.jetbrains.mps.openapi.model.SModel,java.lang.String):java.lang.String" resolve="fqClassName" />
                    <ref role="1Pybhc" to="msyo:~JavaNameUtil" resolve="JavaNameUtil" />
                    <node concept="37vLTw" id="5lJXKpesP" role="37wK5m">
                      <ref role="3cqZAo" node="5lJXKpesD" resolve="handlerModel" />
                    </node>
                    <node concept="2OqwBi" id="5lJXKpesQ" role="37wK5m">
                      <node concept="2OqwBi" id="5lJXKpesR" role="2Oq$k0">
                        <node concept="30H73N" id="5lJXKpesS" role="2Oq$k0" />
                        <node concept="3TrEf2" id="5lJXKpmKl" role="2OqNvi">
                          <ref role="3Tt5mk" to="vgt0:5lJXKb74G" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="5lJXKpesU" role="2OqNvi">
                        <ref role="3TsBF5" to="vgt0:5lJXKmiM$" resolve="classname" />
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
    <node concept="3aamgX" id="5lJXKmFOO" role="3acgRq">
      <ref role="30HIoZ" to="vgt0:5lJXKaBO1" resolve="HandlerCreator" />
      <node concept="gft3U" id="5lJXKmFUY" role="1lVwrX">
        <node concept="1nCR9W" id="35Lj3TiPjSW" role="gfFT$">
          <property role="1nD$Q0" value="handlerFqName" />
          <node concept="10Nm6u" id="5lJXKmGkw" role="2U2pNA">
            <node concept="2b32R4" id="2h41Ezbw4Jm" role="lGtFl">
              <node concept="3JmXsc" id="2h41Ezbw4Jq" role="2P8S$">
                <node concept="3clFbS" id="2h41Ezbw4Ju" role="2VODD2">
                  <node concept="3clFbJ" id="2h41EzbvSYc" role="3cqZAp">
                    <node concept="3clFbS" id="2h41EzbvSYe" role="3clFbx">
                      <node concept="3cpWs6" id="2h41EzbwrCP" role="3cqZAp">
                        <node concept="2OqwBi" id="2h41Ezbwt1u" role="3cqZAk">
                          <node concept="2OqwBi" id="2h41EzbwshS" role="2Oq$k0">
                            <node concept="3Tsc0h" id="2h41EzbwshT" role="2OqNvi">
                              <ref role="3TtcxE" to="vgt0:5lJXKlBV_" />
                            </node>
                            <node concept="30H73N" id="2h41EzbwshU" role="2Oq$k0" />
                          </node>
                          <node concept="35Qw8J" id="2h41EzbwufQ" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2h41EzbvTED" role="3clFbw">
                      <node concept="2YIFZM" id="2h41EzbvTgK" role="2Oq$k0">
                        <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                        <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                        <node concept="2YIFZM" id="2h41EzbwgFW" role="37wK5m">
                          <ref role="37wK5l" to="e2lb:~System.getProperty(java.lang.String):java.lang.String" resolve="getProperty" />
                          <ref role="1Pybhc" to="e2lb:~System" resolve="System" />
                          <node concept="Xl_RD" id="2h41EzbwgFX" role="37wK5m">
                            <property role="Xl_RC" value="java.version" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="2h41EzbvUD8" role="2OqNvi">
                        <ref role="37wK5l" to="e2lb:~String.startsWith(java.lang.String):boolean" resolve="startsWith" />
                        <node concept="Xl_RD" id="2h41EzbvUNg" role="37wK5m">
                          <property role="Xl_RC" value="1.8" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="2h41EzbwuL6" role="3cqZAp">
                    <node concept="2OqwBi" id="2h41EzbwuZa" role="3cqZAk">
                      <node concept="3Tsc0h" id="2h41EzbwuZb" role="2OqNvi">
                        <ref role="3TtcxE" to="vgt0:5lJXKlBV_" />
                      </node>
                      <node concept="30H73N" id="2h41EzbwuZc" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uibUv" id="5lJXKmGGp" role="2lIhxL">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
          </node>
          <node concept="17Uvod" id="5lJXKmHGz" role="lGtFl">
            <property role="2qtEX9" value="fqClassName" />
            <property role="P4ACc" value="df345b11-b8c7-4213-ac66-48d2a9b75d88/1173996401517/1173996588177" />
            <node concept="3zFVjK" id="5lJXKmHG$" role="3zH0cK">
              <node concept="3clFbS" id="5lJXKmHG_" role="2VODD2">
                <node concept="3cpWs8" id="5lJXKpcH9" role="3cqZAp">
                  <node concept="3cpWsn" id="5lJXKpcHa" role="3cpWs9">
                    <property role="TrG5h" value="handlerModel" />
                    <node concept="H_c77" id="5lJXKpcH8" role="1tU5fm" />
                    <node concept="2OqwBi" id="5lJXKpcHb" role="33vP2m">
                      <node concept="2OqwBi" id="5lJXKpcHc" role="2Oq$k0">
                        <node concept="1iwH7S" id="5lJXKpcHd" role="2Oq$k0" />
                        <node concept="12$id9" id="5lJXKpcHe" role="2OqNvi">
                          <node concept="2OqwBi" id="5lJXKpcHf" role="12$y8L">
                            <node concept="30H73N" id="5lJXKpcHg" role="2Oq$k0" />
                            <node concept="3TrEf2" id="5lJXKpcHh" role="2OqNvi">
                              <ref role="3Tt5mk" to="vgt0:5lJXKb68G" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="I4A8Y" id="5lJXKpcHi" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lJXKmIar" role="3cqZAp">
                  <node concept="2YIFZM" id="5lJXKp6Gd" role="3clFbG">
                    <ref role="37wK5l" to="msyo:~JavaNameUtil.fqClassName(org.jetbrains.mps.openapi.model.SModel,java.lang.String):java.lang.String" resolve="fqClassName" />
                    <ref role="1Pybhc" to="msyo:~JavaNameUtil" resolve="JavaNameUtil" />
                    <node concept="37vLTw" id="5lJXKpdCH" role="37wK5m">
                      <ref role="3cqZAo" node="5lJXKpcHa" resolve="handlerModel" />
                    </node>
                    <node concept="2OqwBi" id="5lJXKp6Gh" role="37wK5m">
                      <node concept="2OqwBi" id="5lJXKp6Gi" role="2Oq$k0">
                        <node concept="30H73N" id="5lJXKp6Gj" role="2Oq$k0" />
                        <node concept="3TrEf2" id="5lJXKp6Gk" role="2OqNvi">
                          <ref role="3Tt5mk" to="vgt0:5lJXKb68G" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="5lJXKp6Gl" role="2OqNvi">
                        <ref role="3TsBF5" to="vgt0:5lJXKmiM$" resolve="classname" />
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
    <node concept="3aamgX" id="5lJXKoI3$" role="3acgRq">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="vgt0:5lJXKanVr" resolve="ParameterizedConstraintOperation" />
      <node concept="gft3U" id="5lJXKoIJ_" role="1lVwrX">
        <node concept="1DoJHT" id="5lJXKoIJA" role="gfFT$">
          <property role="1Dpdpm" value="operation" />
          <node concept="10Nm6u" id="5lJXKs9t9" role="1EOqxR">
            <node concept="1WS0z7" id="5lJXKs9TC" role="lGtFl">
              <node concept="3JmXsc" id="5lJXKs9TE" role="3Jn$fo">
                <node concept="3clFbS" id="5lJXKs9TG" role="2VODD2">
                  <node concept="3clFbF" id="5lJXKsaka" role="3cqZAp">
                    <node concept="2OqwBi" id="5lJXKsapO" role="3clFbG">
                      <node concept="30H73N" id="5lJXKsak9" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="5lJXKsaFA" role="2OqNvi">
                        <ref role="3TtcxE" to="vgt0:5lJXKd_HC" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1sPUBX" id="5lJXKsaaI" role="lGtFl">
              <ref role="v9R2y" node="5lJXKrny4" resolve="Expression_wrapInLogical" />
              <node concept="1UUvTB" id="5lJXKsbrj" role="v9R3O">
                <node concept="1UU6SM" id="5lJXKsbrl" role="1UU7Ll">
                  <node concept="3clFbS" id="5lJXKsbrn" role="2VODD2">
                    <node concept="3clFbF" id="5lJXKsbBL" role="3cqZAp">
                      <node concept="2OqwBi" id="5lJXKskeB" role="3clFbG">
                        <node concept="1PxgMI" id="5lJXKsj7Q" role="2Oq$k0">
                          <ref role="1PxNhF" to="vgt0:5lJXKanVr" resolve="ParameterizedConstraintOperation" />
                          <node concept="2OqwBi" id="5lJXKsgMZ" role="1PxMeX">
                            <node concept="30H73N" id="5lJXKsbBK" role="2Oq$k0" />
                            <node concept="1mfA1w" id="5lJXKshnX" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="5lJXKskHr" role="2OqNvi">
                          <ref role="3Tt5mk" to="vgt0:5lJXKhNAq" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqZAl" id="5lJXKoIJM" role="1Ez5kq" />
          <node concept="10Nm6u" id="5lJXKoIJN" role="1EMhIo">
            <node concept="29HgVG" id="5lJXKoIJO" role="lGtFl">
              <node concept="3NFfHV" id="5lJXKoIJP" role="3NFExx">
                <node concept="3clFbS" id="5lJXKoIJQ" role="2VODD2">
                  <node concept="3clFbF" id="5lJXKoIJR" role="3cqZAp">
                    <node concept="2OqwBi" id="5lJXKoIJS" role="3clFbG">
                      <node concept="1PxgMI" id="5lJXKoJLn" role="2Oq$k0">
                        <ref role="1PxNhF" to="tpee:hqOqwz4" resolve="DotExpression" />
                        <node concept="2OqwBi" id="5lJXKoJhK" role="1PxMeX">
                          <node concept="30H73N" id="5lJXKoIJT" role="2Oq$k0" />
                          <node concept="1mfA1w" id="5lJXKoJwf" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="5lJXKoIJU" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:hqOq$gm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="17Uvod" id="5lJXKoIJV" role="lGtFl">
            <property role="2qtEX9" value="methodName" />
            <property role="P4ACc" value="df345b11-b8c7-4213-ac66-48d2a9b75d88/1174294166120/1174294288199" />
            <node concept="3zFVjK" id="5lJXKoIJW" role="3zH0cK">
              <node concept="3clFbS" id="5lJXKoIJX" role="2VODD2">
                <node concept="3clFbF" id="5lJXKoIJY" role="3cqZAp">
                  <node concept="2OqwBi" id="5lJXKoIJZ" role="3clFbG">
                    <node concept="30H73N" id="5lJXKoK8r" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5lJXKqS27" role="2OqNvi">
                      <ref role="3TsBF5" to="vgt0:5lJXKqzDG" resolve="methodname" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5lJXKoM0R" role="3acgRq">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="vgt0:5lJXKhI_g" resolve="ConstraintOperation" />
      <node concept="gft3U" id="5lJXKoMzG" role="1lVwrX">
        <node concept="1DoJHT" id="5lJXKoMzH" role="gfFT$">
          <property role="1Dpdpm" value="operation" />
          <node concept="3cqZAl" id="5lJXKoMzI" role="1Ez5kq" />
          <node concept="10Nm6u" id="5lJXKoMzJ" role="1EMhIo">
            <node concept="29HgVG" id="5lJXKoMzK" role="lGtFl">
              <node concept="3NFfHV" id="5lJXKoMzL" role="3NFExx">
                <node concept="3clFbS" id="5lJXKoMzM" role="2VODD2">
                  <node concept="3clFbF" id="5lJXKoMzN" role="3cqZAp">
                    <node concept="2OqwBi" id="5lJXKoMzO" role="3clFbG">
                      <node concept="1PxgMI" id="5lJXKoNhQ" role="2Oq$k0">
                        <ref role="1PxNhF" to="tpee:hqOqwz4" resolve="DotExpression" />
                        <node concept="2OqwBi" id="5lJXKoMRF" role="1PxMeX">
                          <node concept="30H73N" id="5lJXKoMzP" role="2Oq$k0" />
                          <node concept="1mfA1w" id="5lJXKoN4z" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="5lJXKoMzQ" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:hqOq$gm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="17Uvod" id="5lJXKoMzR" role="lGtFl">
            <property role="2qtEX9" value="methodName" />
            <property role="P4ACc" value="df345b11-b8c7-4213-ac66-48d2a9b75d88/1174294166120/1174294288199" />
            <node concept="3zFVjK" id="5lJXKoMzS" role="3zH0cK">
              <node concept="3clFbS" id="5lJXKoMzT" role="2VODD2">
                <node concept="3clFbF" id="5lJXKoMzU" role="3cqZAp">
                  <node concept="2OqwBi" id="5lJXKoMzV" role="3clFbG">
                    <node concept="30H73N" id="5lJXKoOCL" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5lJXKqSCa" role="2OqNvi">
                      <ref role="3TsBF5" to="vgt0:5lJXKqzDG" resolve="methodname" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5lJXKozBC" role="3acgRq">
      <ref role="30HIoZ" to="tpee:gEShNN5" resolve="GenericNewExpression" />
      <node concept="30G5F_" id="5lJXKozXQ" role="30HLyM">
        <node concept="3clFbS" id="5lJXKozXR" role="2VODD2">
          <node concept="3clFbF" id="5lJXKo$8R" role="3cqZAp">
            <node concept="2OqwBi" id="5lJXKo$RR" role="3clFbG">
              <node concept="2OqwBi" id="5lJXKo$dq" role="2Oq$k0">
                <node concept="30H73N" id="5lJXKo$8Q" role="2Oq$k0" />
                <node concept="3TrEf2" id="5lJXKo$wM" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:gEShVi6" />
                </node>
              </node>
              <node concept="1mIQ4w" id="5lJXKo_5m" role="2OqNvi">
                <node concept="chp4Y" id="5lJXKo_k0" role="cj9EA">
                  <ref role="cht4Q" to="vgt0:5lJXKaBO1" resolve="HandlerCreator" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="5lJXKoEc1" role="1lVwrX">
        <node concept="10Nm6u" id="5lJXKoG3J" role="gfFT$">
          <node concept="29HgVG" id="5lJXKoG6y" role="lGtFl">
            <node concept="3NFfHV" id="5lJXKoG7x" role="3NFExx">
              <node concept="3clFbS" id="5lJXKoG7y" role="2VODD2">
                <node concept="3clFbF" id="5lJXKoG8O" role="3cqZAp">
                  <node concept="2OqwBi" id="5lJXKoGaU" role="3clFbG">
                    <node concept="30H73N" id="5lJXKoG8N" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5lJXKoGlC" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:gEShVi6" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5lJXKmXjl" role="3acgRq">
      <ref role="30HIoZ" to="tpee:hqOqwz4" resolve="DotExpression" />
      <node concept="30G5F_" id="5lJXKmXTo" role="30HLyM">
        <node concept="3clFbS" id="5lJXKmXTp" role="2VODD2">
          <node concept="3clFbF" id="5lJXKmY7L" role="3cqZAp">
            <node concept="2OqwBi" id="5lJXKmYRg" role="3clFbG">
              <node concept="2OqwBi" id="5lJXKmYcJ" role="2Oq$k0">
                <node concept="30H73N" id="5lJXKmY7K" role="2Oq$k0" />
                <node concept="2qgKlT" id="5lJXKmYJt" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:7GulAc9z0dN" resolve="getOperandType" />
                </node>
              </node>
              <node concept="1mIQ4w" id="5lJXKmZ2T" role="2OqNvi">
                <node concept="chp4Y" id="5lJXKmZgB" role="cj9EA">
                  <ref role="cht4Q" to="vgt0:5lJXKamzq" resolve="HandlerType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="5lJXKoPei" role="1lVwrX">
        <node concept="10Nm6u" id="5lJXKoPtK" role="gfFT$">
          <node concept="29HgVG" id="5lJXKoPvH" role="lGtFl">
            <node concept="3NFfHV" id="5lJXKoPxy" role="3NFExx">
              <node concept="3clFbS" id="5lJXKoPxz" role="2VODD2">
                <node concept="3clFbF" id="5lJXKoPyP" role="3cqZAp">
                  <node concept="2OqwBi" id="5lJXKoP_i" role="3clFbG">
                    <node concept="30H73N" id="5lJXKoPyO" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5lJXKoPN5" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:hqOqNr4" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4EfgX2EtByi" role="3acgRq">
      <ref role="30HIoZ" to="vgt0:4EfgX2EshHC" resolve="StaticMethodCallConstraint" />
      <node concept="gft3U" id="4EfgX2EtJhj" role="1lVwrX">
        <node concept="1niqFM" id="4EfgX2EtJhp" role="gfFT$">
          <property role="1npUBZ" value="fqClassName" />
          <property role="1npL6y" value="methodName" />
          <node concept="10Nm6u" id="4EfgX2EtKC4" role="2U24H$">
            <node concept="2b32R4" id="4EfgX2EtKIh" role="lGtFl">
              <node concept="3JmXsc" id="4EfgX2EtKIk" role="2P8S$">
                <node concept="3clFbS" id="4EfgX2EtKIl" role="2VODD2">
                  <node concept="3clFbF" id="4EfgX2EtKIr" role="3cqZAp">
                    <node concept="2OqwBi" id="4EfgX2EtKIm" role="3clFbG">
                      <node concept="3Tsc0h" id="4EfgX2EtKIp" role="2OqNvi">
                        <ref role="3TtcxE" to="vgt0:hHp56YpiWP" />
                      </node>
                      <node concept="30H73N" id="4EfgX2EtKIq" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="10P_77" id="4EfgX2EtJhx" role="32Mpfj" />
          <node concept="17Uvod" id="4EfgX2EtJhG" role="lGtFl">
            <property role="P4ACc" value="df345b11-b8c7-4213-ac66-48d2a9b75d88/1173990517731/1173992483054" />
            <property role="2qtEX9" value="fqClassName" />
            <node concept="3zFVjK" id="4EfgX2EtJhJ" role="3zH0cK">
              <node concept="3clFbS" id="4EfgX2EtJhK" role="2VODD2">
                <node concept="3clFbF" id="4EfgX2EtJhQ" role="3cqZAp">
                  <node concept="2OqwBi" id="4EfgX2EtJhL" role="3clFbG">
                    <node concept="3TrcHB" id="4EfgX2EtJhO" role="2OqNvi">
                      <ref role="3TsBF5" to="vgt0:h5npUzI" resolve="fqClassName" />
                    </node>
                    <node concept="30H73N" id="4EfgX2EtJhP" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="17Uvod" id="4EfgX2EtJFr" role="lGtFl">
            <property role="P4ACc" value="df345b11-b8c7-4213-ac66-48d2a9b75d88/1173990517731/1173992444083" />
            <property role="2qtEX9" value="methodName" />
            <node concept="3zFVjK" id="4EfgX2EtJFu" role="3zH0cK">
              <node concept="3clFbS" id="4EfgX2EtJFv" role="2VODD2">
                <node concept="3clFbF" id="4EfgX2EtJF_" role="3cqZAp">
                  <node concept="2OqwBi" id="4EfgX2EtJFw" role="3clFbG">
                    <node concept="3TrcHB" id="4EfgX2EtJFz" role="2OqNvi">
                      <ref role="3TsBF5" to="vgt0:h5npL2N" resolve="methodName" />
                    </node>
                    <node concept="30H73N" id="4EfgX2EtJF$" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1H8E3iBd3bS" role="3acgRq">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="30G5F_" id="1H8E3iBd42X" role="30HLyM">
        <node concept="3clFbS" id="1H8E3iBd42Y" role="2VODD2">
          <node concept="3cpWs8" id="4oAgtl3T7s2" role="3cqZAp">
            <node concept="3cpWsn" id="4oAgtl3T7s3" role="3cpWs9">
              <property role="TrG5h" value="tagsMap" />
              <node concept="3uibUv" id="4oAgtl3T7KF" role="1tU5fm">
                <ref role="3uigEE" to="53gy:~ConcurrentHashMap" resolve="ConcurrentHashMap" />
                <node concept="3Tqbb2" id="4oAgtl3T8lj" role="11_B2D" />
                <node concept="3uibUv" id="4oAgtl3T8VB" role="11_B2D">
                  <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="10QFUN" id="4oAgtl3T9hG" role="33vP2m">
                <node concept="3uibUv" id="4oAgtl3T9h_" role="10QFUM">
                  <ref role="3uigEE" to="53gy:~ConcurrentHashMap" resolve="ConcurrentHashMap" />
                  <node concept="3Tqbb2" id="4oAgtl3T9hA" role="11_B2D" />
                  <node concept="3uibUv" id="4oAgtl3T9hB" role="11_B2D">
                    <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4oAgtl3T9hC" role="10QFUP">
                  <node concept="1iwH7S" id="4oAgtl3T9hD" role="2Oq$k0" />
                  <node concept="2fSANN" id="4oAgtl3T9hE" role="2OqNvi">
                    <node concept="Xl_RD" id="4oAgtl3T9hF" role="2fWi3N">
                      <property role="Xl_RC" value="TAGS" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4oAgtl42hoY" role="3cqZAp" />
          <node concept="3clFbF" id="1H8E3iBd4Qh" role="3cqZAp">
            <node concept="2OqwBi" id="4oAgtl42THB" role="3clFbG">
              <node concept="37vLTw" id="4oAgtl42THC" role="2Oq$k0">
                <ref role="3cqZAo" node="4oAgtl3T7s3" resolve="tagsMap" />
              </node>
              <node concept="liA8E" id="4oAgtl42THD" role="2OqNvi">
                <ref role="37wK5l" to="53gy:~ConcurrentHashMap.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                <node concept="30H73N" id="4oAgtl42THE" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="1H8E3iBdhHj" role="1lVwrX">
        <node concept="10Nm6u" id="1H8E3iBdhHk" role="gfFT$">
          <node concept="1sPUBX" id="1H8E3iBdhHl" role="lGtFl">
            <ref role="v9R2y" node="5lJXKrny4" resolve="Expression_wrapInLogical" />
            <node concept="1UUvTB" id="1H8E3iBdhHm" role="v9R3O">
              <node concept="1UU6SM" id="1H8E3iBdhHn" role="1UU7Ll">
                <node concept="3clFbS" id="1H8E3iBdhHo" role="2VODD2">
                  <node concept="3clFbF" id="1H8E3iBdhHq" role="3cqZAp">
                    <node concept="2OqwBi" id="1H8E3iBdhHr" role="3clFbG">
                      <node concept="1PxgMI" id="1H8E3iBdhHs" role="2Oq$k0">
                        <ref role="1PxNhF" to="vgt0:pmDhvH6uQ2" resolve="UserConstraint" />
                        <node concept="2OqwBi" id="1H8E3iBdhHt" role="1PxMeX">
                          <node concept="30H73N" id="1H8E3iBdhHu" role="2Oq$k0" />
                          <node concept="1mfA1w" id="1H8E3iBdhHv" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="1H8E3iBdhHw" role="2OqNvi">
                        <ref role="3Tt5mk" to="vgt0:pmDhvH6MRb" />
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
    <node concept="3aamgX" id="2q_78a8UjSR" role="3acgRq">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="vgt0:2q_78a8P9a7" resolve="WildcardLogicVariable" />
      <node concept="gft3U" id="2q_78a8URV2" role="1lVwrX">
        <node concept="10Nm6u" id="2q_78a8URYw" role="gfFT$">
          <node concept="1sPUBX" id="2q_78a8US0m" role="lGtFl">
            <ref role="v9R2y" node="2q_78a8UlXo" resolve="WildcardLocalVariable_wrapInLogical" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1puMqW" id="4oAgtl42a7Y" role="1puA0r">
      <ref role="1puQsG" node="4oAgtl41On0" resolve="tag_logical" />
    </node>
  </node>
  <node concept="jVnub" id="5lJXKrny4">
    <property role="TrG5h" value="Expression_wrapInLogical" />
    <node concept="1N15co" id="5lJXKrp00" role="1s_3oS">
      <property role="TrG5h" value="constraint" />
      <node concept="3Tqbb2" id="5lJXKrpas" role="1N15GL">
        <ref role="ehGHo" to="vgt0:pmDhvH6MQk" resolve="ConstraintDeclaration" />
      </node>
    </node>
    <node concept="3aamgX" id="5lJXKrO_9" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="gft3U" id="5lJXKrO_a" role="1lVwrX">
        <node concept="1nCR9W" id="5lJXKrP8c" role="gfFT$">
          <property role="1nD$Q0" value="fqName" />
          <node concept="10Nm6u" id="1GDBwhEEDQV" role="2U2pNA" />
          <node concept="10Nm6u" id="5lJXKstPy" role="2U2pNA">
            <node concept="29HgVG" id="5lJXKsucq" role="lGtFl" />
          </node>
          <node concept="3qTvmN" id="5lJXKs_K9" role="3HumAs">
            <node concept="2b32R4" id="5lJXKsA7F" role="lGtFl">
              <node concept="3JmXsc" id="5lJXKsA7H" role="2P8S$">
                <node concept="3clFbS" id="5lJXKsA7J" role="2VODD2">
                  <node concept="3clFbF" id="5lJXKsApy" role="3cqZAp">
                    <node concept="2OqwBi" id="5lJXKsB7t" role="3clFbG">
                      <node concept="2OqwBi" id="5lJXKsAAn" role="2Oq$k0">
                        <node concept="1iwH7S" id="5lJXKsApx" role="2Oq$k0" />
                        <node concept="1bhEwm" id="5lJXKsATl" role="2OqNvi">
                          <ref role="1bhEwk" node="5lJXKrPer" resolve="argType" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="5lJXKsBOj" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:g91_B6F" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2jeGV$" id="5lJXKrPer" role="lGtFl">
            <property role="TrG5h" value="argType" />
            <node concept="2jfdEK" id="5lJXKrPet" role="2jfP_Y">
              <node concept="3clFbS" id="5lJXKrPev" role="2VODD2">
                <node concept="3cpWs8" id="5lJXKrPn6" role="3cqZAp">
                  <node concept="3cpWsn" id="5lJXKrPn7" role="3cpWs9">
                    <property role="TrG5h" value="type" />
                    <node concept="3Tqbb2" id="5lJXKrPn8" role="1tU5fm">
                      <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                    </node>
                    <node concept="1y4W85" id="5lJXKrPn9" role="33vP2m">
                      <node concept="2OqwBi" id="5lJXKrPna" role="1y58nS">
                        <node concept="30H73N" id="5lJXKrPnb" role="2Oq$k0" />
                        <node concept="2bSWHS" id="5lJXKrPnc" role="2OqNvi" />
                      </node>
                      <node concept="2OqwBi" id="5lJXKrPnd" role="1y566C">
                        <node concept="2OqwBi" id="5lJXKrPne" role="2Oq$k0">
                          <node concept="1iwH7S" id="5lJXKrPnf" role="2Oq$k0" />
                          <node concept="3cR$yn" id="5lJXKrPng" role="2OqNvi">
                            <ref role="3cRzXn" node="5lJXKrp00" resolve="constraint" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="5lJXKrPnh" role="2OqNvi">
                          <ref role="3TtcxE" to="vgt0:pmDhvH6MQJ" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lJXKrPni" role="3cqZAp">
                  <node concept="1UaxmW" id="5lJXKrPnj" role="3clFbG">
                    <node concept="37vLTw" id="5lJXKrPnk" role="1Ub_4B">
                      <ref role="3cqZAo" node="5lJXKrPn7" resolve="type" />
                    </node>
                    <node concept="1YaCAy" id="5lJXKssuL" role="1Ub_4A">
                      <property role="TrG5h" value="classifierType" />
                      <ref role="1YaFvo" to="tpee:g7uibYu" resolve="ClassifierType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="5lJXKrPzG" role="2jfP_h">
              <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
            </node>
          </node>
          <node concept="17Uvod" id="5lJXKrPVl" role="lGtFl">
            <property role="2qtEX9" value="fqClassName" />
            <property role="P4ACc" value="df345b11-b8c7-4213-ac66-48d2a9b75d88/1173996401517/1173996588177" />
            <node concept="3zFVjK" id="5lJXKrPVm" role="3zH0cK">
              <node concept="3clFbS" id="5lJXKrPVn" role="2VODD2">
                <node concept="3cpWs8" id="5lJXKrVzF" role="3cqZAp">
                  <node concept="3cpWsn" id="5lJXKrVzG" role="3cpWs9">
                    <property role="TrG5h" value="clsModel" />
                    <node concept="3Tqbb2" id="5lJXKrVz$" role="1tU5fm" />
                    <node concept="2OqwBi" id="5lJXKrVzH" role="33vP2m">
                      <node concept="1iwH7S" id="5lJXKrVzI" role="2Oq$k0" />
                      <node concept="12$id9" id="5lJXKrVzJ" role="2OqNvi">
                        <node concept="2OqwBi" id="5lJXKrVzK" role="12$y8L">
                          <node concept="2OqwBi" id="5lJXKrVzL" role="2Oq$k0">
                            <node concept="1iwH7S" id="5lJXKrVzM" role="2Oq$k0" />
                            <node concept="1bhEwm" id="5lJXKrVzN" role="2OqNvi">
                              <ref role="1bhEwk" node="5lJXKrPer" resolve="argType" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="5lJXKrVzO" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:g7uigIF" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lJXKrS0S" role="3cqZAp">
                  <node concept="2YIFZM" id="5lJXKrShK" role="3clFbG">
                    <ref role="1Pybhc" to="msyo:~JavaNameUtil" resolve="JavaNameUtil" />
                    <ref role="37wK5l" to="msyo:~JavaNameUtil.fqClassName(org.jetbrains.mps.openapi.model.SNode,java.lang.String):java.lang.String" resolve="fqClassName" />
                    <node concept="37vLTw" id="5lJXKrWWY" role="37wK5m">
                      <ref role="3cqZAo" node="5lJXKrVzG" resolve="clsModel" />
                    </node>
                    <node concept="2OqwBi" id="5lJXKs2ma" role="37wK5m">
                      <node concept="2OqwBi" id="5lJXKrYj9" role="2Oq$k0">
                        <node concept="2OqwBi" id="5lJXKrXDk" role="2Oq$k0">
                          <node concept="1iwH7S" id="5lJXKrXv_" role="2Oq$k0" />
                          <node concept="1bhEwm" id="5lJXKrXUo" role="2OqNvi">
                            <ref role="1bhEwk" node="5lJXKrPer" resolve="argType" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="5lJXKs0Xi" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:g7uigIF" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="5lJXKs2V3" role="2OqNvi">
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
      <node concept="30G5F_" id="5lJXKrO_J" role="30HLyM">
        <node concept="3clFbS" id="5lJXKrO_K" role="2VODD2">
          <node concept="3cpWs8" id="5lJXKrO_L" role="3cqZAp">
            <node concept="3cpWsn" id="5lJXKrO_M" role="3cpWs9">
              <property role="TrG5h" value="type" />
              <node concept="3Tqbb2" id="5lJXKrO_N" role="1tU5fm">
                <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
              </node>
              <node concept="1y4W85" id="5lJXKrO_O" role="33vP2m">
                <node concept="2OqwBi" id="5lJXKrO_P" role="1y58nS">
                  <node concept="30H73N" id="5lJXKrO_Q" role="2Oq$k0" />
                  <node concept="2bSWHS" id="5lJXKrO_R" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="5lJXKrO_S" role="1y566C">
                  <node concept="2OqwBi" id="5lJXKrO_T" role="2Oq$k0">
                    <node concept="1iwH7S" id="5lJXKrO_U" role="2Oq$k0" />
                    <node concept="3cR$yn" id="5lJXKrO_V" role="2OqNvi">
                      <ref role="3cRzXn" node="5lJXKrp00" resolve="constraint" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="5lJXKrO_W" role="2OqNvi">
                    <ref role="3TtcxE" to="vgt0:pmDhvH6MQJ" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4oAgtl3Tsbz" role="3cqZAp">
            <node concept="3cpWsn" id="4oAgtl3Tsb$" role="3cpWs9">
              <property role="TrG5h" value="logical" />
              <node concept="10P_77" id="4oAgtl3Tsbj" role="1tU5fm" />
              <node concept="2OqwBi" id="4oAgtl3Tsb_" role="33vP2m">
                <node concept="1UaxmW" id="4oAgtl3TsbA" role="2Oq$k0">
                  <node concept="37vLTw" id="4oAgtl3TsbB" role="1Ub_4B">
                    <ref role="3cqZAo" node="5lJXKrO_M" resolve="type" />
                  </node>
                  <node concept="1Yb3XT" id="4oAgtl3TsbC" role="1Ub_4A">
                    <property role="TrG5h" value="logical" />
                    <node concept="2DMOqp" id="4oAgtl3TsbD" role="1YbcFS">
                      <node concept="3uibUv" id="4oAgtl3TsbE" role="2DMOqq">
                        <ref role="3uigEE" to="w2rx:~Logical" resolve="Logical" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3x8VRR" id="4oAgtl3TsbF" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4oAgtl3TsFr" role="3cqZAp" />
          <node concept="3clFbF" id="5lJXKrO_X" role="3cqZAp">
            <node concept="37vLTw" id="4oAgtl3TsbG" role="3clFbG">
              <ref role="3cqZAo" node="4oAgtl3Tsb$" resolve="logical" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="gft3U" id="6flDoy9NFzB" role="jxRDz">
      <node concept="10Nm6u" id="6flDoy9NFRg" role="gfFT$">
        <node concept="29HgVG" id="6flDoy9NFU3" role="lGtFl">
          <node concept="3NFfHV" id="6flDoy9NFX$" role="3NFExx">
            <node concept="3clFbS" id="6flDoy9NFX_" role="2VODD2">
              <node concept="3clFbF" id="6flDoy9NGhp" role="3cqZAp">
                <node concept="30H73N" id="6flDoy9NGho" role="3clFbG" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1pmfR0" id="4oAgtl41On0">
    <property role="TrG5h" value="tag_logical" />
    <property role="1v3f2W" value="pre_processing" />
    <node concept="1pplIY" id="4oAgtl41On1" role="1pqMTA">
      <node concept="3clFbS" id="4oAgtl41On2" role="2VODD2">
        <node concept="3clFbF" id="4oAgtl42e6V" role="3cqZAp">
          <node concept="37vLTI" id="4oAgtl42e6W" role="3clFbG">
            <node concept="2ShNRf" id="4oAgtl42e6X" role="37vLTx">
              <node concept="1pGfFk" id="4oAgtl42e6Y" role="2ShVmc">
                <ref role="37wK5l" to="53gy:~ConcurrentHashMap.&lt;init&gt;()" resolve="ConcurrentHashMap" />
                <node concept="3Tqbb2" id="4oAgtl42e6Z" role="1pMfVU" />
                <node concept="3uibUv" id="4oAgtl42e70" role="1pMfVU">
                  <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4oAgtl42e71" role="37vLTJ">
              <node concept="1iwH7S" id="4oAgtl42e72" role="2Oq$k0" />
              <node concept="2fSANN" id="4oAgtl42e73" role="2OqNvi">
                <node concept="Xl_RD" id="4oAgtl42e74" role="2fWi3N">
                  <property role="Xl_RC" value="TAGS" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4oAgtl42dYK" role="3cqZAp" />
        <node concept="3cpWs8" id="4oAgtl420kK" role="3cqZAp">
          <node concept="3cpWsn" id="4oAgtl420kL" role="3cpWs9">
            <property role="TrG5h" value="exprs" />
            <node concept="A3Dl8" id="4oAgtl420k9" role="1tU5fm">
              <node concept="3Tqbb2" id="4oAgtl420kc" role="A3Ik2">
                <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
              </node>
            </node>
            <node concept="2OqwBi" id="4oAgtl420kM" role="33vP2m">
              <node concept="2OqwBi" id="4oAgtl420kN" role="2Oq$k0">
                <node concept="1Q6Npb" id="4oAgtl42eZJ" role="2Oq$k0" />
                <node concept="2SmgA7" id="4oAgtl420kP" role="2OqNvi">
                  <node concept="chp4Y" id="3FW0VdE5SRF" role="1dBWTz">
                    <ref role="cht4Q" to="tpee:fz3vP1J" resolve="Expression" />
                  </node>
                </node>
              </node>
              <node concept="3zZkjj" id="4oAgtl420kQ" role="2OqNvi">
                <node concept="1bVj0M" id="4oAgtl420kR" role="23t8la">
                  <node concept="3clFbS" id="4oAgtl420kS" role="1bW5cS">
                    <node concept="3clFbF" id="4oAgtl420kT" role="3cqZAp">
                      <node concept="1Wc70l" id="4oAgtl420kU" role="3clFbG">
                        <node concept="2OqwBi" id="4oAgtl420kV" role="3uHU7w">
                          <node concept="1UaxmW" id="4oAgtl420kW" role="2Oq$k0">
                            <node concept="1Yb3XT" id="4oAgtl420kX" role="1Ub_4A">
                              <property role="TrG5h" value="logical" />
                              <node concept="2DMOqp" id="4oAgtl420kY" role="1YbcFS">
                                <node concept="3uibUv" id="4oAgtl420kZ" role="2DMOqq">
                                  <ref role="3uigEE" to="w2rx:~Logical" resolve="Logical" />
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4oAgtl420l0" role="1Ub_4B">
                              <node concept="37vLTw" id="4oAgtl420l1" role="2Oq$k0">
                                <ref role="3cqZAo" node="4oAgtl420lg" resolve="exp" />
                              </node>
                              <node concept="3JvlWi" id="4oAgtl420l2" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="3w_OXm" id="1GDBwhEDaZ_" role="2OqNvi" />
                        </node>
                        <node concept="1Wc70l" id="4oAgtl420l4" role="3uHU7B">
                          <node concept="1Wc70l" id="4oAgtl47s5Q" role="3uHU7B">
                            <node concept="3fqX7Q" id="4oAgtl47sjl" role="3uHU7B">
                              <node concept="2OqwBi" id="4oAgtl47sz7" role="3fr31v">
                                <node concept="37vLTw" id="4oAgtl47ssX" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4oAgtl420lg" resolve="exp" />
                                </node>
                                <node concept="1mIQ4w" id="4oAgtl47sZb" role="2OqNvi">
                                  <node concept="chp4Y" id="4oAgtl47tRs" role="cj9EA">
                                    <ref role="cht4Q" to="vgt0:pmDhvH6BD8" resolve="LogicVariable" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="4oAgtl420l5" role="3uHU7w">
                              <node concept="2OqwBi" id="4oAgtl420l6" role="3fr31v">
                                <node concept="37vLTw" id="4oAgtl420l7" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4oAgtl420lg" resolve="exp" />
                                </node>
                                <node concept="1mIQ4w" id="4oAgtl420l8" role="2OqNvi">
                                  <node concept="chp4Y" id="4oAgtl420l9" role="cj9EA">
                                    <ref role="cht4Q" to="tp68:h5nCRdH" resolve="InternalNewExpression" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="4oAgtl420la" role="3uHU7w">
                            <node concept="2OqwBi" id="4oAgtl420lb" role="2Oq$k0">
                              <node concept="37vLTw" id="4oAgtl420lc" role="2Oq$k0">
                                <ref role="3cqZAo" node="4oAgtl420lg" resolve="exp" />
                              </node>
                              <node concept="1mfA1w" id="4oAgtl420ld" role="2OqNvi" />
                            </node>
                            <node concept="1mIQ4w" id="4oAgtl420le" role="2OqNvi">
                              <node concept="chp4Y" id="4oAgtl420lf" role="cj9EA">
                                <ref role="cht4Q" to="vgt0:pmDhvH6uQ2" resolve="UserConstraint" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="4oAgtl420lg" role="1bW2Oz">
                    <property role="TrG5h" value="exp" />
                    <node concept="2jxLKc" id="4oAgtl420lh" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4oAgtl423ji" role="3cqZAp" />
        <node concept="3cpWs8" id="4oAgtl423d7" role="3cqZAp">
          <node concept="3cpWsn" id="4oAgtl423d8" role="3cpWs9">
            <property role="TrG5h" value="tagsMap" />
            <node concept="3uibUv" id="4oAgtl423d9" role="1tU5fm">
              <ref role="3uigEE" to="53gy:~ConcurrentHashMap" resolve="ConcurrentHashMap" />
              <node concept="3Tqbb2" id="4oAgtl423da" role="11_B2D" />
              <node concept="3uibUv" id="4oAgtl423db" role="11_B2D">
                <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="10QFUN" id="4oAgtl423dc" role="33vP2m">
              <node concept="3uibUv" id="4oAgtl423dd" role="10QFUM">
                <ref role="3uigEE" to="53gy:~ConcurrentHashMap" resolve="ConcurrentHashMap" />
                <node concept="3Tqbb2" id="4oAgtl423de" role="11_B2D" />
                <node concept="3uibUv" id="4oAgtl423df" role="11_B2D">
                  <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="2OqwBi" id="4oAgtl423dg" role="10QFUP">
                <node concept="1iwH7S" id="4oAgtl423dh" role="2Oq$k0" />
                <node concept="2fSANN" id="4oAgtl423di" role="2OqNvi">
                  <node concept="Xl_RD" id="4oAgtl423dj" role="2fWi3N">
                    <property role="Xl_RC" value="TAGS" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4oAgtl420Ng" role="3cqZAp" />
        <node concept="1DcWWT" id="4oAgtl420Sd" role="3cqZAp">
          <node concept="3clFbS" id="4oAgtl420Se" role="2LFqv$">
            <node concept="3clFbF" id="4oAgtl423OA" role="3cqZAp">
              <node concept="2OqwBi" id="4oAgtl424Cp" role="3clFbG">
                <node concept="37vLTw" id="4oAgtl423O_" role="2Oq$k0">
                  <ref role="3cqZAo" node="4oAgtl423d8" resolve="tagsMap" />
                </node>
                <node concept="liA8E" id="4oAgtl427Ah" role="2OqNvi">
                  <ref role="37wK5l" to="53gy:~ConcurrentHashMap.putIfAbsent(java.lang.Object,java.lang.Object):java.lang.Object" resolve="putIfAbsent" />
                  <node concept="37vLTw" id="4oAgtl427Js" role="37wK5m">
                    <ref role="3cqZAo" node="4oAgtl420Sh" resolve="exp" />
                  </node>
                  <node concept="Xl_RD" id="4oAgtl427TQ" role="37wK5m">
                    <property role="Xl_RC" value="TAG" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4oAgtl420Sh" role="1Duv9x">
            <property role="TrG5h" value="exp" />
            <node concept="3Tqbb2" id="4oAgtl420Sl" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
            </node>
          </node>
          <node concept="37vLTw" id="4oAgtl420Sm" role="1DdaDG">
            <ref role="3cqZAo" node="4oAgtl420kL" resolve="exprs" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="2q_78a8UlXo">
    <property role="TrG5h" value="WildcardLocalVariable_wrapInLogical" />
    <node concept="3aamgX" id="2q_78a8UnxI" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="vgt0:2q_78a8P9a7" resolve="WildcardLogicVariable" />
      <node concept="gft3U" id="2q_78a8UBcD" role="1lVwrX">
        <node concept="1nCR9W" id="2q_78a8UBsP" role="gfFT$">
          <property role="1nD$Q0" value="fqName" />
          <node concept="10Nm6u" id="2q_78a8UQk9" role="2U2pNA" />
          <node concept="10Nm6u" id="2q_78a8UQph" role="2U2pNA" />
          <node concept="17Uvod" id="2q_78a8UCbo" role="lGtFl">
            <property role="P4ACc" value="df345b11-b8c7-4213-ac66-48d2a9b75d88/1173996401517/1173996588177" />
            <property role="2qtEX9" value="fqClassName" />
            <node concept="3zFVjK" id="2q_78a8UCbp" role="3zH0cK">
              <node concept="3clFbS" id="2q_78a8UCbq" role="2VODD2">
                <node concept="3cpWs8" id="2q_78a8UHpt" role="3cqZAp">
                  <node concept="3cpWsn" id="2q_78a8UHpu" role="3cpWs9">
                    <property role="TrG5h" value="clsModel" />
                    <node concept="3Tqbb2" id="2q_78a8UHpv" role="1tU5fm" />
                    <node concept="2OqwBi" id="2q_78a8UHpw" role="33vP2m">
                      <node concept="1iwH7S" id="2q_78a8UHpx" role="2Oq$k0" />
                      <node concept="12$id9" id="2q_78a8UHpy" role="2OqNvi">
                        <node concept="2OqwBi" id="2q_78a8UHpz" role="12$y8L">
                          <node concept="2OqwBi" id="2q_78a8UHp$" role="2Oq$k0">
                            <node concept="1iwH7S" id="2q_78a8UHp_" role="2Oq$k0" />
                            <node concept="1bhEwm" id="2q_78a8UI1M" role="2OqNvi">
                              <ref role="1bhEwk" node="2q_78a8UCIp" resolve="varType" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="2q_78a8UHpB" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:g7uigIF" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2q_78a8UHpC" role="3cqZAp">
                  <node concept="2YIFZM" id="2q_78a8UHpD" role="3clFbG">
                    <ref role="37wK5l" to="msyo:~JavaNameUtil.fqClassName(org.jetbrains.mps.openapi.model.SNode,java.lang.String):java.lang.String" resolve="fqClassName" />
                    <ref role="1Pybhc" to="msyo:~JavaNameUtil" resolve="JavaNameUtil" />
                    <node concept="37vLTw" id="2q_78a8UHpE" role="37wK5m">
                      <ref role="3cqZAo" node="2q_78a8UHpu" resolve="clsModel" />
                    </node>
                    <node concept="2OqwBi" id="2q_78a8UHpF" role="37wK5m">
                      <node concept="2OqwBi" id="2q_78a8UHpG" role="2Oq$k0">
                        <node concept="2OqwBi" id="2q_78a8UHpH" role="2Oq$k0">
                          <node concept="1iwH7S" id="2q_78a8UHpI" role="2Oq$k0" />
                          <node concept="1bhEwm" id="2q_78a8UIt4" role="2OqNvi">
                            <ref role="1bhEwk" node="2q_78a8UCIp" resolve="varType" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2q_78a8UHpK" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:g7uigIF" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="2q_78a8UHpL" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2jeGV$" id="2q_78a8UCIp" role="lGtFl">
            <property role="TrG5h" value="varType" />
            <node concept="2jfdEK" id="2q_78a8UCIr" role="2jfP_Y">
              <node concept="3clFbS" id="2q_78a8UCIt" role="2VODD2">
                <node concept="3clFbF" id="2q_78a8UDus" role="3cqZAp">
                  <node concept="1UaxmW" id="2q_78a8UDup" role="3clFbG">
                    <node concept="1YaCAy" id="2q_78a8UDIz" role="1Ub_4A">
                      <property role="TrG5h" value="cltype" />
                      <ref role="1YaFvo" to="tpee:g7uibYu" resolve="ClassifierType" />
                    </node>
                    <node concept="2OqwBi" id="2q_78a8UDxM" role="1Ub_4B">
                      <node concept="30H73N" id="2q_78a8UDw4" role="2Oq$k0" />
                      <node concept="3JvlWi" id="2q_78a8UDGm" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="2q_78a8UMFT" role="2jfP_h">
              <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
            </node>
          </node>
          <node concept="3qTvmN" id="2q_78a8UOXk" role="3HumAs">
            <node concept="2b32R4" id="2q_78a8UP3P" role="lGtFl">
              <node concept="3JmXsc" id="2q_78a8UP3R" role="2P8S$">
                <node concept="3clFbS" id="2q_78a8UP3T" role="2VODD2">
                  <node concept="3clFbF" id="2q_78a8UPfG" role="3cqZAp">
                    <node concept="2OqwBi" id="2q_78a8UPfH" role="3clFbG">
                      <node concept="2OqwBi" id="2q_78a8UPfI" role="2Oq$k0">
                        <node concept="1iwH7S" id="2q_78a8UPfJ" role="2Oq$k0" />
                        <node concept="1bhEwm" id="2q_78a8UP$n" role="2OqNvi">
                          <ref role="1bhEwk" node="2q_78a8UCIp" resolve="varType" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="2q_78a8UPfL" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:g91_B6F" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="2q_78a8Uo2U" role="30HLyM">
        <node concept="3clFbS" id="2q_78a8Uo2V" role="2VODD2">
          <node concept="3cpWs8" id="2q_78a8U_6U" role="3cqZAp">
            <node concept="3cpWsn" id="2q_78a8U_6V" role="3cpWs9">
              <property role="TrG5h" value="logical" />
              <node concept="10P_77" id="2q_78a8U_6P" role="1tU5fm" />
              <node concept="2OqwBi" id="2q_78a8U_6W" role="33vP2m">
                <node concept="1UaxmW" id="2q_78a8U_6X" role="2Oq$k0">
                  <node concept="1Yb3XT" id="2q_78a8U_6Y" role="1Ub_4A">
                    <property role="TrG5h" value="logical" />
                    <node concept="2DMOqp" id="2q_78a8U_6Z" role="1YbcFS">
                      <node concept="3uibUv" id="2q_78a8U_70" role="2DMOqq">
                        <ref role="3uigEE" to="w2rx:~Logical" resolve="Logical" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2q_78a8U_71" role="1Ub_4B">
                    <node concept="30H73N" id="2q_78a8U_72" role="2Oq$k0" />
                    <node concept="3JvlWi" id="2q_78a8U_73" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3x8VRR" id="2q_78a8U_74" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2q_78a8U_K8" role="3cqZAp" />
          <node concept="3clFbF" id="2q_78a8Uy1T" role="3cqZAp">
            <node concept="37vLTw" id="2q_78a8U_75" role="3clFbG">
              <ref role="3cqZAo" node="2q_78a8U_6V" resolve="logical" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="gft3U" id="2q_78a8V7yj" role="jxRDz">
      <node concept="10Nm6u" id="2q_78a8V7Jg" role="gfFT$" />
    </node>
  </node>
</model>

