<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:38071b08-e9ac-4ec1-a326-62b7897beb22(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="18" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="69b8a993-9b87-4d96-bf0c-3559f4bb0c63" name="jetbrains.mps.lang.slanguage" version="0" />
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules" version="23" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="13" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.coderules.typechecking.service)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.coderules.structure)" />
    <import index="h103" ref="r:9c80bc3e-1982-4e7d-8fe4-1b25a1c02635(jetbrains.mps.lang.typechecking.behavior)" />
    <import index="zfi7" ref="r:39840d4e-f61c-4452-88c5-75b1eb10e892(jetbrains.mps.lang.typechecking.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpd4" ref="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="x5bw" ref="r:15ea4f4e-2f41-4ce3-b7e4-a4e0737f0171(jetbrains.mps.lang.coderules.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1510949579266781519" name="jetbrains.mps.lang.generator.structure.TemplateCallMacro" flags="ln" index="5jKBG" />
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1200911492601" name="mappingLabel" index="2rTMjI" />
        <child id="1167088157977" name="createRootRule" index="2VS0gm" />
        <child id="1167172143858" name="weavingMappingRule" index="30SoJX" />
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
      <concept id="1167087469898" name="jetbrains.mps.lang.generator.structure.CreateRootRule" flags="lg" index="2VPoh5">
        <reference id="1200923511980" name="label" index="2sBCQV" />
        <reference id="1167087469901" name="templateNode" index="2VPoh2" />
        <child id="1167087469900" name="conditionFunction" index="2VPoh3" />
      </concept>
      <concept id="1167087518662" name="jetbrains.mps.lang.generator.structure.CreateRootRule_Condition" flags="in" index="2VP$b9" />
      <concept id="5133195082121471908" name="jetbrains.mps.lang.generator.structure.LabelMacro" flags="ln" index="2ZBi8u" />
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1167171569011" name="jetbrains.mps.lang.generator.structure.Weaving_MappingRule" flags="lg" index="30QchW">
        <child id="1169570368028" name="ruleConsequence" index="1fOSGc" />
        <child id="1184616230853" name="contextNodeQuery" index="3gCiVm" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1225228973247" name="jetbrains.mps.lang.generator.structure.MapSrcMacro_PostMapperFunction" flags="in" index="15lBmy" />
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1087833466690" name="jetbrains.mps.lang.generator.structure.NodeMacro" flags="lg" index="17VmuZ">
        <reference id="1200912223215" name="mappingLabel" index="2rW$FS" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1184616041890" name="jetbrains.mps.lang.generator.structure.Weaving_MappingRule_ContextNodeQuery" flags="in" index="3gB$ML" />
      <concept id="1184690432998" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_outputNode" flags="nn" index="3l3mFP" />
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1169670156577" name="jetbrains.mps.lang.generator.structure.GeneratorMessage" flags="lg" index="1lLz0L">
        <property id="1169670173015" name="messageText" index="1lLB17" />
        <property id="1169670356567" name="messageType" index="1lMjX7" />
      </concept>
      <concept id="1131073187192" name="jetbrains.mps.lang.generator.structure.MapSrcNodeMacro" flags="ln" index="1pdMLZ">
        <child id="1225229330048" name="postMapperFunction" index="15mYut" />
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
      <concept id="1217884725453" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetCopiedOutputByInput" flags="nn" index="2f_y7m">
        <child id="1217884725459" name="inputNode" index="2f_y78" />
      </concept>
      <concept id="1216860049627" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput" flags="nn" index="1iwH70">
        <reference id="1216860049628" name="label" index="1iwH77" />
        <child id="1216860049632" name="inputNode" index="1iwH7V" />
      </concept>
      <concept id="1216860049622" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabel" flags="nn" index="1iwH7d">
        <reference id="1216860049623" name="label" index="1iwH7c" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
      <concept id="1217026863835" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalInputModel" flags="nn" index="1st3f0" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
        <child id="1595412875168045201" name="initValue" index="28ntcv" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="8169506320648805904" name="jetbrains.mps.logic.structure.LogicalVariableDeclarationContainer" flags="ng" index="29MRiA">
        <child id="6399471711045617306" name="dataType" index="3vLBG7" />
        <child id="3063948360254832884" name="declaration" index="3XD1gS" />
      </concept>
      <concept id="8829335963593820278" name="jetbrains.mps.logic.structure.LogicalVariable" flags="ng" index="a7P8L">
        <reference id="8829335963593822893" name="declaration" index="a7OzE" />
      </concept>
      <concept id="8829335963591572611" name="jetbrains.mps.logic.structure.LogicalVariableDeclaration" flags="ng" index="aZer4" />
      <concept id="8713947027062024097" name="jetbrains.mps.logic.structure.LogicalItemValueExpression" flags="ng" index="1Ft4W6">
        <child id="8713947027062064784" name="logical" index="1FtiSR" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU" />
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <child id="6750920497477046361" name="conceptArgument" index="3MHsoP" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
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
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="role_DebugInfo" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules">
      <concept id="1618328391714763069" name="jetbrains.mps.lang.coderules.structure.MacroTable" flags="ng" index="0oKg$">
        <child id="1618328391714763070" name="macro" index="0oKgB" />
        <child id="6097203247162410403" name="prototype" index="3iTdIJ" />
      </concept>
      <concept id="6928531011217292466" name="jetbrains.mps.lang.coderules.structure.IsfreeVariableConstraint" flags="ng" index="2aLmEc" />
      <concept id="6928531011217258898" name="jetbrains.mps.lang.coderules.structure.LogicVariableConstraint" flags="ng" index="2aLIYG">
        <child id="6928531011217290187" name="variable" index="2aLmnP" />
      </concept>
      <concept id="9035818301008609703" name="jetbrains.mps.lang.coderules.structure.QueryTemplate" flags="ng" index="2bWyPT">
        <reference id="6533016889631295418" name="queryType" index="KG3u5" />
        <child id="7871500063838282362" name="code" index="fHCRw" />
      </concept>
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
      <concept id="861509610434294982" name="jetbrains.mps.lang.coderules.structure.ValueFeature" flags="ng" index="nssqF" />
      <concept id="861509610434289827" name="jetbrains.mps.lang.coderules.structure.ChildFeature" flags="ng" index="nstbe" />
      <concept id="861509610434435669" name="jetbrains.mps.lang.coderules.structure.TermFeatureOverride" flags="ng" index="nsMwS">
        <reference id="861509610434435672" name="feature" index="nsMwP" />
        <child id="1149537088045275069" name="item" index="iSaTp" />
      </concept>
      <concept id="8335224865066015764" name="jetbrains.mps.lang.coderules.structure.RulesList" flags="ng" index="AVZre">
        <reference id="3541122455446356437" name="extends" index="2YbDB9" />
        <child id="1980609059185345194" name="constraint" index="8PkJo" />
        <child id="3575255234175157601" name="template" index="1nK1Vg" />
      </concept>
      <concept id="6856711987714624232" name="jetbrains.mps.lang.coderules.structure.LateExpressionItem" flags="ng" index="HKQnh">
        <child id="6856711987714624233" name="code" index="HKQng" />
      </concept>
      <concept id="6533016889632449861" name="jetbrains.mps.lang.coderules.structure.QueryParameter" flags="ng" index="KwDlU" />
      <concept id="6533016889629821361" name="jetbrains.mps.lang.coderules.structure.QueryTable" flags="ng" index="KEFAe">
        <child id="6533016889629824446" name="query" index="KEEm1" />
      </concept>
      <concept id="2381360340662937504" name="jetbrains.mps.lang.coderules.structure.TermType" flags="ig" index="32pEOW" />
      <concept id="6097203247164180547" name="jetbrains.mps.lang.coderules.structure.ExpandMacroParameterReference" flags="ng" index="3i2tpf">
        <reference id="6097203247164235646" name="declaration" index="3i285M" />
      </concept>
      <concept id="6097203247162979076" name="jetbrains.mps.lang.coderules.structure.ExpandMacroParameterDeclaration" flags="ng" index="3i76O8">
        <child id="6097203247163011497" name="type" index="3i7YY_" />
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
        <child id="6097203247156594418" name="variable" index="3iJhzY" />
        <child id="6097203247216428965" name="logical" index="3tb1AD" />
      </concept>
      <concept id="6097203247157857681" name="jetbrains.mps.lang.coderules.structure.ExpandMacroPrototype" flags="ng" index="3iF_et">
        <reference id="6097203247157932896" name="applicableConcept" index="3iEmPG" />
        <child id="6097203247163089308" name="parameter" index="3i7zYg" />
        <child id="6097203247159377803" name="logical" index="3iPQ67" />
      </concept>
      <concept id="6097203247183580433" name="jetbrains.mps.lang.coderules.structure.ExpandMacroInputReference" flags="ng" index="3j8tct">
        <reference id="6097203247183580434" name="declaration" index="3j8tcu" />
      </concept>
      <concept id="6097203247182936001" name="jetbrains.mps.lang.coderules.structure.ExpandMacroConstraint" flags="ng" index="3jbYBd">
        <reference id="6097203247182937177" name="template" index="3jbY9l" />
        <child id="6097203247182937145" name="input" index="3jbY8P" />
        <child id="6097203247182937143" name="logical" index="3jbY8V" />
        <child id="6097203247185615297" name="arglist" index="3jhGvd" />
      </concept>
      <concept id="6097203247185614706" name="jetbrains.mps.lang.coderules.structure.ExpandMacroConstraintArglist" flags="ng" index="3jhG_Y">
        <child id="6097203247185614855" name="binding" index="3jhGob" />
      </concept>
      <concept id="6097203247185614707" name="jetbrains.mps.lang.coderules.structure.ExpandMacroConstraintArgBinding" flags="ng" index="3jhG_Z">
        <reference id="6097203247185614710" name="declaration" index="3jhG_U" />
        <child id="6097203247185614708" name="argument" index="3jhG_S" />
      </concept>
      <concept id="3575255234174969639" name="jetbrains.mps.lang.coderules.structure.ConstraintRule" flags="ng" index="1nLNMm">
        <child id="4814011019633607808" name="parameter" index="0Rg$4" />
        <child id="3575255234174969659" name="guard" index="1nLNMa" />
        <child id="3575255234174969658" name="head" index="1nLNMb" />
        <child id="7674753015762572651" name="body" index="3xSepv" />
      </concept>
      <concept id="3575255234174969615" name="jetbrains.mps.lang.coderules.structure.RuleTemplate" flags="ng" index="1nLNMY">
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
      <concept id="7368070394770780974" name="jetbrains.mps.lang.coderules.structure.UnifiesConstraint" flags="ng" index="3A8Hvi">
        <child id="7368070394770793930" name="value" index="3A8w4Q" />
        <child id="7368070394770793388" name="assignee" index="3A8wtg" />
      </concept>
      <concept id="7368070394766963750" name="jetbrains.mps.lang.coderules.structure.Head" flags="ng" index="3Aq93q" />
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
      <concept id="5092612813123973086" name="jetbrains.mps.lang.coderules.structure.CustomSessionParameter" flags="ng" index="1ItZu1">
        <child id="5092612813124334287" name="key" index="1Ij6Eg" />
      </concept>
      <concept id="965748826975413063" name="jetbrains.mps.lang.coderules.structure.RulePartParameterDeclaration" flags="ng" index="3NuqgR" />
    </language>
  </registry>
  <node concept="bUwia" id="NKt6ynvIZQ">
    <property role="TrG5h" value="main" />
    <node concept="2rT7sh" id="1vAI4X$H91X" role="2rTMjI">
      <property role="TrG5h" value="recoverType" />
      <ref role="2rZz_L" to="wq2x:7eGEHDlgPKk" resolve="RulesList" />
    </node>
    <node concept="2rT7sh" id="4LE1vMPhNy4" role="2rTMjI">
      <property role="TrG5h" value="recoverTypeDefault" />
      <ref role="2rZz_L" to="wq2x:7eGEHDlgPKk" resolve="RulesList" />
    </node>
    <node concept="2rT7sh" id="4qGA5WCFyqy" role="2rTMjI">
      <property role="TrG5h" value="expectType" />
      <ref role="2rZz_L" to="wq2x:1pPth$m5B4X" resolve="MacroTable" />
    </node>
    <node concept="2rT7sh" id="1vAI4X$KFA0" role="2rTMjI">
      <property role="TrG5h" value="typeTerm_term" />
      <ref role="2rTdP9" to="zfi7:6wBZuQUFd0b" resolve="TypeTermDeclaration" />
      <ref role="2rZz_L" to="wq2x:JOGAOsxaC9" resolve="TermDeclaration" />
    </node>
    <node concept="2rT7sh" id="1vAI4X$KXom" role="2rTMjI">
      <property role="TrG5h" value="feature_logical" />
      <ref role="2rZz_L" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
      <ref role="2rTdP9" to="wq2x:JOGAOsxiL_" resolve="TermFeature" />
    </node>
    <node concept="30QchW" id="1vAI4X$GZWw" role="30SoJX">
      <ref role="30HIoZ" to="zfi7:6wBZuQUG1yn" resolve="TypeNodeBuilder" />
      <node concept="j$656" id="1vAI4X$H8JX" role="1fOSGc">
        <ref role="v9R2y" node="1vAI4X$GZYB" resolve="frag_recoverType" />
      </node>
      <node concept="3gB$ML" id="1vAI4X$GZWy" role="3gCiVm">
        <node concept="3clFbS" id="1vAI4X$GZWz" role="2VODD2">
          <node concept="3cpWs8" id="1vAI4X$HbxS" role="3cqZAp">
            <node concept="3cpWsn" id="1vAI4X$HbxT" role="3cpWs9">
              <property role="TrG5h" value="rt" />
              <node concept="3Tqbb2" id="1vAI4X$Hagq" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:7eGEHDlgPKk" resolve="RulesList" />
              </node>
              <node concept="2OqwBi" id="1vAI4X$HbxU" role="33vP2m">
                <node concept="1iwH7S" id="1vAI4X$HbxV" role="2Oq$k0" />
                <node concept="1iwH7d" id="1vAI4X$HbxW" role="2OqNvi">
                  <ref role="1iwH7c" node="1vAI4X$H91X" resolve="recoverType" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1vAI4X$HbUo" role="3cqZAp">
            <node concept="2OqwBi" id="1vAI4X$Hc3k" role="3clFbG">
              <node concept="1iwH7S" id="1vAI4X$HbUn" role="2Oq$k0" />
              <node concept="2f_y7m" id="1vAI4X$Hcjd" role="2OqNvi">
                <node concept="37vLTw" id="1vAI4X$Hclm" role="2f_y78">
                  <ref role="3cqZAo" node="1vAI4X$HbxT" resolve="rt" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2VPoh5" id="j$DTRidKt6" role="2VS0gm">
      <ref role="2VPoh2" node="7lmP5gAu4Fv" resolve="_TypeOf_" />
      <node concept="2VP$b9" id="j$DTRidKtb" role="2VPoh3">
        <node concept="3clFbS" id="j$DTRidKtc" role="2VODD2">
          <node concept="3clFbF" id="j$DTRidKxb" role="3cqZAp">
            <node concept="2OqwBi" id="j$DTRie15I" role="3clFbG">
              <node concept="2OqwBi" id="j$DTRidL4d" role="2Oq$k0">
                <node concept="2OqwBi" id="j$DTRidKHq" role="2Oq$k0">
                  <node concept="1iwH7S" id="j$DTRidKxa" role="2Oq$k0" />
                  <node concept="1st3f0" id="j$DTRidKR2" role="2OqNvi" />
                </node>
                <node concept="2RRcyG" id="j$DTRidLbS" role="2OqNvi">
                  <node concept="chp4Y" id="j$DTRidLDY" role="3MHsoP">
                    <ref role="cht4Q" to="zfi7:7lmP5gALJri" resolve="TypecheckingQueries" />
                  </node>
                </node>
              </node>
              <node concept="3GX2aA" id="j$DTRie4hd" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2VPoh5" id="j$DTRie5QM" role="2VS0gm">
      <ref role="2VPoh2" node="j$DTRidoLS" resolve="_RecoverType_Default_" />
      <ref role="2sBCQV" node="4LE1vMPhNy4" resolve="recoverTypeDefault" />
      <node concept="2VP$b9" id="j$DTRie5QN" role="2VPoh3">
        <node concept="3clFbS" id="j$DTRie5QO" role="2VODD2">
          <node concept="3clFbF" id="j$DTRie5QP" role="3cqZAp">
            <node concept="2OqwBi" id="j$DTRie5QQ" role="3clFbG">
              <node concept="2OqwBi" id="j$DTRie5QR" role="2Oq$k0">
                <node concept="2OqwBi" id="j$DTRie5QS" role="2Oq$k0">
                  <node concept="1iwH7S" id="j$DTRie5QT" role="2Oq$k0" />
                  <node concept="1st3f0" id="j$DTRie5QU" role="2OqNvi" />
                </node>
                <node concept="2RRcyG" id="j$DTRie5QV" role="2OqNvi">
                  <node concept="chp4Y" id="j$DTRie5QW" role="3MHsoP">
                    <ref role="cht4Q" to="zfi7:7lmP5gALJri" resolve="TypecheckingQueries" />
                  </node>
                </node>
              </node>
              <node concept="3GX2aA" id="j$DTRie5QX" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2VPoh5" id="1vAI4X$H1n0" role="2VS0gm">
      <ref role="2VPoh2" node="j$DTRidKsM" resolve="_RecoverType_" />
      <ref role="2sBCQV" node="1vAI4X$H91X" resolve="recoverType" />
      <node concept="2VP$b9" id="1vAI4X$H1nz" role="2VPoh3">
        <node concept="3clFbS" id="1vAI4X$H1n$" role="2VODD2">
          <node concept="3clFbF" id="1vAI4X$H1rz" role="3cqZAp">
            <node concept="2OqwBi" id="1vAI4X$H50t" role="3clFbG">
              <node concept="2OqwBi" id="1vAI4X$H1OQ" role="2Oq$k0">
                <node concept="2OqwBi" id="1vAI4X$H1$p" role="2Oq$k0">
                  <node concept="1iwH7S" id="1vAI4X$H1ry" role="2Oq$k0" />
                  <node concept="1st3f0" id="1vAI4X$H1Fj" role="2OqNvi" />
                </node>
                <node concept="2RRcyG" id="1vAI4X$H1Wx" role="2OqNvi">
                  <node concept="chp4Y" id="1vAI4X$H2uu" role="3MHsoP">
                    <ref role="cht4Q" to="zfi7:6wBZuQUF2vT" resolve="TypeTermTable" />
                  </node>
                </node>
              </node>
              <node concept="3GX2aA" id="1vAI4X$H8Eq" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2VPoh5" id="4qGA5WCFx$y" role="2VS0gm">
      <ref role="2VPoh2" node="7lmP5gAtYRF" resolve="_ExpectTypeMacro_" />
      <ref role="2sBCQV" node="4qGA5WCFyqy" resolve="expectType" />
      <node concept="2VP$b9" id="4qGA5WCFx$z" role="2VPoh3">
        <node concept="3clFbS" id="4qGA5WCFx$$" role="2VODD2">
          <node concept="3clFbF" id="4qGA5WCFx$_" role="3cqZAp">
            <node concept="2OqwBi" id="4qGA5WCHcnC" role="3clFbG">
              <node concept="2OqwBi" id="4qGA5WCHcnD" role="2Oq$k0">
                <node concept="2OqwBi" id="4qGA5WCHcnE" role="2Oq$k0">
                  <node concept="1iwH7S" id="4qGA5WCHcnF" role="2Oq$k0" />
                  <node concept="1st3f0" id="4qGA5WCHcnG" role="2OqNvi" />
                </node>
                <node concept="2RRcyG" id="4qGA5WCHcnH" role="2OqNvi">
                  <node concept="chp4Y" id="4qGA5WCHcnI" role="3MHsoP">
                    <ref role="cht4Q" to="zfi7:7lmP5gALJri" resolve="TypecheckingQueries" />
                  </node>
                </node>
              </node>
              <node concept="3GX2aA" id="4qGA5WCHcnJ" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7lmP5gAYBdz" role="3acgRq">
      <ref role="30HIoZ" to="zfi7:7lmP5gAYc5S" resolve="TypecheckingQueryParameter" />
      <node concept="gft3U" id="7lmP5gAYBdF" role="1lVwrX">
        <node concept="KwDlU" id="7lmP5gAYBe1" role="gfFT$" />
      </node>
    </node>
    <node concept="3aamgX" id="1vAI4X$NOyq" role="3acgRq">
      <ref role="30HIoZ" to="zfi7:1vAI4X$MkW8" resolve="FeatureReferenceExpression" />
      <node concept="1Koe21" id="1vAI4X$NOyZ" role="1lVwrX">
        <node concept="1nLNMm" id="1vAI4X$NP2E" role="1Koe22">
          <node concept="3NuqgR" id="1vAI4X$NP2L" role="0Rg$4">
            <node concept="aZer4" id="1vAI4X$NP2M" role="3XD1gS">
              <property role="TrG5h" value="Var" />
            </node>
            <node concept="3uibUv" id="1vAI4X$NP2Y" role="3vLBG7">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
          <node concept="3xSepi" id="1vAI4X$NP3f" role="3xSepv">
            <node concept="3Aq9E8" id="1vAI4X$NP3g" role="3xSepj">
              <node concept="3I6sU6" id="1vAI4X$NP3h" role="3Ip0Jz">
                <node concept="3I6s7M" id="1vAI4X$NP3m" role="3I6sU7">
                  <node concept="3wWvb2" id="1vAI4X$NP3l" role="3I6s78">
                    <node concept="1Ft4W6" id="1vAI4X$OKNZ" role="3wWo3s">
                      <node concept="a7P8L" id="1vAI4X$OKNY" role="1FtiSR">
                        <ref role="a7OzE" node="1vAI4X$NP2M" resolve="Var" />
                        <node concept="1ZhdrF" id="1vAI4X$OMx1" role="lGtFl">
                          <property role="2qtEX8" value="declaration" />
                          <property role="P3scX" value="35320f26-77cb-4c55-be9f-a97a27770af1/8829335963593820278/8829335963593822893" />
                          <node concept="3$xsQk" id="1vAI4X$OMx2" role="3$ytzL">
                            <node concept="3clFbS" id="1vAI4X$OMx3" role="2VODD2">
                              <node concept="3clFbF" id="1vAI4X$OMAJ" role="3cqZAp">
                                <node concept="2OqwBi" id="1vAI4X$OML5" role="3clFbG">
                                  <node concept="1iwH7S" id="1vAI4X$OMAI" role="2Oq$k0" />
                                  <node concept="1iwH70" id="1vAI4X$OMT2" role="2OqNvi">
                                    <ref role="1iwH77" node="1vAI4X$KXom" resolve="feature_logical" />
                                    <node concept="2OqwBi" id="1vAI4X$ONj1" role="1iwH7V">
                                      <node concept="30H73N" id="1vAI4X$ON49" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="1vAI4X$ONCg" role="2OqNvi">
                                        <ref role="3Tt5mk" to="zfi7:1vAI4X$MlAp" resolve="feature" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="raruj" id="1vAI4X$OM5W" role="lGtFl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="1vAI4X$O6lc" role="30HLyM">
        <node concept="3clFbS" id="1vAI4X$O6ld" role="2VODD2">
          <node concept="3clFbF" id="1vAI4X$O6tv" role="3cqZAp">
            <node concept="2OqwBi" id="1vAI4X$O7rs" role="3clFbG">
              <node concept="2OqwBi" id="1vAI4X$O6F8" role="2Oq$k0">
                <node concept="30H73N" id="1vAI4X$O6tu" role="2Oq$k0" />
                <node concept="3TrEf2" id="1vAI4X$O76A" role="2OqNvi">
                  <ref role="3Tt5mk" to="zfi7:1vAI4X$MlAp" resolve="feature" />
                </node>
              </node>
              <node concept="1mIQ4w" id="1vAI4X$O8DF" role="2OqNvi">
                <node concept="chp4Y" id="1vAI4X$O8R$" role="cj9EA">
                  <ref role="cht4Q" to="wq2x:JOGAOsxnj6" resolve="ValueFeature" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4qGA5WCJsFK" role="3acgRq">
      <ref role="30HIoZ" to="zfi7:1vAI4X$MkW8" resolve="FeatureReferenceExpression" />
      <node concept="30G5F_" id="4qGA5WCJsG8" role="30HLyM">
        <node concept="3clFbS" id="4qGA5WCJsG9" role="2VODD2">
          <node concept="3clFbF" id="4qGA5WCJsGa" role="3cqZAp">
            <node concept="3fqX7Q" id="4qGA5WCJt4e" role="3clFbG">
              <node concept="2OqwBi" id="4qGA5WCJt4g" role="3fr31v">
                <node concept="2OqwBi" id="4qGA5WCJt4h" role="2Oq$k0">
                  <node concept="30H73N" id="4qGA5WCJt4i" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4qGA5WCJt4j" role="2OqNvi">
                    <ref role="3Tt5mk" to="zfi7:1vAI4X$MlAp" resolve="feature" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="4qGA5WCJt4k" role="2OqNvi">
                  <node concept="chp4Y" id="4qGA5WCJt4l" role="cj9EA">
                    <ref role="cht4Q" to="wq2x:JOGAOsxnj6" resolve="ValueFeature" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="j$LIH" id="4qGA5WCJtmY" role="1lVwrX">
        <node concept="1lLz0L" id="4qGA5WCJtpi" role="1lHHLF">
          <property role="1lMjX7" value="h1lM37o/error" />
          <property role="1lLB17" value="not supported" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4qGA5WCG_7q" role="3acgRq">
      <ref role="30HIoZ" to="zfi7:4qGA5WCG3z$" resolve="AssignTypePseudoConstraint" />
      <node concept="1Koe21" id="4qGA5WCG_k_" role="1lVwrX">
        <node concept="3clFbS" id="4qGA5WCG_kF" role="1Koe22">
          <node concept="3cpWs8" id="4qGA5WCG_ms" role="3cqZAp">
            <node concept="3cpWsn" id="4qGA5WCG_mv" role="3cpWs9">
              <property role="TrG5h" value="location" />
              <node concept="3Tqbb2" id="4qGA5WCG_mq" role="1tU5fm" />
            </node>
          </node>
          <node concept="1nLNNL" id="4qGA5WCG_kM" role="3cqZAp">
            <node concept="1nLNMm" id="4qGA5WCG_kO" role="1nLNNK">
              <node concept="3NuqgR" id="4qGA5WCG_kU" role="0Rg$4">
                <node concept="aZer4" id="4qGA5WCG_kV" role="3XD1gS">
                  <property role="TrG5h" value="Type" />
                </node>
                <node concept="32pEOW" id="4qGA5WCG_l7" role="3vLBG7" />
              </node>
              <node concept="3xSepi" id="4qGA5WCG_lw" role="3xSepv">
                <node concept="3Aq9E8" id="4qGA5WCG_lx" role="3xSepj">
                  <node concept="3I6sU6" id="4qGA5WCG_ly" role="3Ip0Jz">
                    <node concept="3I6s7M" id="4qGA5WCG_lA" role="3I6sU7">
                      <node concept="3jbYBd" id="4qGA5WCG_lB" role="3I6s78">
                        <ref role="3jbY9l" node="7lmP5gAtYUr" resolve="_expectType_" />
                        <node concept="37vLTw" id="4qGA5WCG_mS" role="3jbY8P">
                          <ref role="3cqZAo" node="4qGA5WCG_mv" resolve="location" />
                          <node concept="29HgVG" id="4qGA5WCGAX3" role="lGtFl">
                            <node concept="3NFfHV" id="4qGA5WCGAX7" role="3NFExx">
                              <node concept="3clFbS" id="4qGA5WCGAX8" role="2VODD2">
                                <node concept="3clFbF" id="4qGA5WCGAXd" role="3cqZAp">
                                  <node concept="2OqwBi" id="4qGA5WCGB8H" role="3clFbG">
                                    <node concept="30H73N" id="4qGA5WCGAXc" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="4qGA5WCGBkz" role="2OqNvi">
                                      <ref role="3Tt5mk" to="zfi7:4qGA5WCG8eX" resolve="location" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="a7P8L" id="4qGA5WCG_lD" role="3jbY8V">
                          <ref role="a7OzE" node="4qGA5WCG_kV" resolve="Type" />
                          <node concept="29HgVG" id="4qGA5WCGA2E" role="lGtFl">
                            <node concept="3NFfHV" id="4qGA5WCGAww" role="3NFExx">
                              <node concept="3clFbS" id="4qGA5WCGAwx" role="2VODD2">
                                <node concept="3clFbF" id="4qGA5WCGAx4" role="3cqZAp">
                                  <node concept="2OqwBi" id="4qGA5WCGAGy" role="3clFbG">
                                    <node concept="30H73N" id="4qGA5WCGAx3" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="4qGA5WCGAT0" role="2OqNvi">
                                      <ref role="3Tt5mk" to="zfi7:4qGA5WCG9BX" resolve="type" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="raruj" id="4qGA5WCGT88" role="lGtFl" />
                        <node concept="3jhG_Y" id="4qGA5WCPInO" role="3jhGvd">
                          <node concept="3jhG_Z" id="4qGA5WCPIwI" role="3jhGob">
                            <ref role="3jhG_U" node="4qGA5WCPHa_" resolve="typeConsumer" />
                            <node concept="1ItZu1" id="4qGA5WCTmK6" role="3jhG_S">
                              <node concept="10M0yZ" id="4qGA5WCXIBP" role="1Ij6Eg">
                                <ref role="3cqZAo" to="tj24:4qGA5WCVux3" resolve="TYPES_COLLECTOR" />
                                <ref role="1PxDUh" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
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
    <node concept="3aamgX" id="4LE1vMPhMxi" role="3acgRq">
      <ref role="30HIoZ" to="zfi7:4LE1vMPhxmj" resolve="RecoverType" />
      <node concept="1Koe21" id="4LE1vMPhMAq" role="1lVwrX">
        <node concept="3clFbS" id="4LE1vMPhMAw" role="1Koe22">
          <node concept="1nLNNL" id="4LE1vMPhMAy" role="3cqZAp">
            <node concept="1nLNMm" id="4LE1vMPhMAz" role="1nLNNK">
              <node concept="3xSepi" id="4LE1vMPhMAA" role="3xSepv">
                <node concept="3Aq9E8" id="4LE1vMPhMAB" role="3xSepj">
                  <node concept="3I6sU6" id="4LE1vMPhMAC" role="3Ip0Jz">
                    <node concept="3I6s7M" id="4LE1vMPhMBO" role="3I6sU7">
                      <node concept="3Aqt3T" id="4LE1vMPhMBN" role="3I6s78">
                        <ref role="3AqCNq" node="7lmP5gAtUEL" resolve="__recoverType__" />
                        <node concept="a7P8L" id="4LE1vMPhMM2" role="3AunhB">
                          <ref role="a7OzE" node="4LE1vMPhMBc" resolve="Type" />
                          <node concept="29HgVG" id="4LE1vMPhVz4" role="lGtFl">
                            <node concept="3NFfHV" id="4LE1vMPhV_w" role="3NFExx">
                              <node concept="3clFbS" id="4LE1vMPhV_x" role="2VODD2">
                                <node concept="3clFbF" id="4LE1vMPhVDQ" role="3cqZAp">
                                  <node concept="2OqwBi" id="4LE1vMPhVPd" role="3clFbG">
                                    <node concept="30H73N" id="4LE1vMPhVDP" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="4LE1vMPhVZv" role="2OqNvi">
                                      <ref role="3Tt5mk" to="zfi7:4LE1vMPhyzS" resolve="type" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="a7P8L" id="4LE1vMPhMPq" role="3AunhB">
                          <ref role="a7OzE" node="4LE1vMPhMAI" resolve="Term" />
                          <node concept="29HgVG" id="4LE1vMPhWax" role="lGtFl">
                            <node concept="3NFfHV" id="4LE1vMPhWdw" role="3NFExx">
                              <node concept="3clFbS" id="4LE1vMPhWdx" role="2VODD2">
                                <node concept="3clFbF" id="4LE1vMPhWdA" role="3cqZAp">
                                  <node concept="2OqwBi" id="4LE1vMPhWuE" role="3clFbG">
                                    <node concept="30H73N" id="4LE1vMPhWd_" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="4LE1vMPhWUO" role="2OqNvi">
                                      <ref role="3Tt5mk" to="zfi7:4LE1vMPhyby" resolve="term" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1ZhdrF" id="4LE1vMPhMRp" role="lGtFl">
                          <property role="2qtEX8" value="template" />
                          <property role="P3scX" value="c4803b19-6d89-4a3b-bf82-390769514add/7368070394767045637/7368070394767091750" />
                          <node concept="3$xsQk" id="4LE1vMPhMRq" role="3$ytzL">
                            <node concept="3clFbS" id="4LE1vMPhMRr" role="2VODD2">
                              <node concept="3cpWs8" id="4LE1vMPhOXx" role="3cqZAp">
                                <node concept="3cpWsn" id="4LE1vMPhOXy" role="3cpWs9">
                                  <property role="TrG5h" value="rlist" />
                                  <node concept="3Tqbb2" id="4LE1vMPhOX5" role="1tU5fm">
                                    <ref role="ehGHo" to="wq2x:7eGEHDlgPKk" resolve="RulesList" />
                                  </node>
                                  <node concept="2OqwBi" id="4LE1vMPhOXz" role="33vP2m">
                                    <node concept="1iwH7S" id="4LE1vMPhOX$" role="2Oq$k0" />
                                    <node concept="1iwH7d" id="4LE1vMPhOX_" role="2OqNvi">
                                      <ref role="1iwH7c" node="4LE1vMPhNy4" resolve="recoverTypeDefault" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="4LE1vMPhOax" role="3cqZAp">
                                <node concept="2OqwBi" id="4LE1vMPhRS$" role="3clFbG">
                                  <node concept="2OqwBi" id="4LE1vMPhP9n" role="2Oq$k0">
                                    <node concept="37vLTw" id="4LE1vMPhOXA" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4LE1vMPhOXy" resolve="rlist" />
                                    </node>
                                    <node concept="3Tsc0h" id="4LE1vMPhPlj" role="2OqNvi">
                                      <ref role="3TtcxE" to="wq2x:1HWyn8jEsaE" resolve="constraint" />
                                    </node>
                                  </node>
                                  <node concept="1uHKPH" id="4LE1vMPhVpf" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="raruj" id="4LE1vMPi9iB" role="lGtFl" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3NuqgR" id="4LE1vMPhMAH" role="0Rg$4">
                <node concept="aZer4" id="4LE1vMPhMAI" role="3XD1gS">
                  <property role="TrG5h" value="Term" />
                </node>
                <node concept="32pEOW" id="4LE1vMPhMAU" role="3vLBG7" />
              </node>
              <node concept="3NuqgR" id="4LE1vMPhMBb" role="0Rg$4">
                <node concept="aZer4" id="4LE1vMPhMBc" role="3XD1gS">
                  <property role="TrG5h" value="Type" />
                </node>
                <node concept="3Tqbb2" id="4LE1vMPhMBr" role="3vLBG7" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3lhOvk" id="7lmP5gAM1D9" role="3lj3bC">
      <ref role="30HIoZ" to="zfi7:7lmP5gALJri" resolve="TypecheckingQueries" />
      <ref role="3lhOvi" node="7lmP5gAM25d" resolve="_Queries_" />
    </node>
    <node concept="3lhOvk" id="1vAI4X$GdRD" role="3lj3bC">
      <ref role="30HIoZ" to="zfi7:6wBZuQUF2vT" resolve="TypeTermTable" />
      <ref role="3lhOvi" node="1vAI4X$GeQv" resolve="_Terms_" />
    </node>
  </node>
  <node concept="KEFAe" id="7lmP5gAM25d">
    <property role="TrG5h" value="_Queries_" />
    <property role="3GE5qa" value="query" />
    <node concept="2bWyPT" id="7lmP5gAM25g" role="KEEm1">
      <property role="TrG5h" value="query" />
      <ref role="KG3u5" to="tj24:5EDW3XDYNPr" resolve="CheckQuery" />
      <node concept="3clFbS" id="7lmP5gAM25h" role="fHCRw">
        <node concept="3clFbH" id="7lmP5gAM5gL" role="3cqZAp">
          <node concept="2b32R4" id="7lmP5gAM5mc" role="lGtFl">
            <node concept="3JmXsc" id="7lmP5gAM5mf" role="2P8S$">
              <node concept="3clFbS" id="7lmP5gAM5mg" role="2VODD2">
                <node concept="3clFbF" id="7lmP5gAM5mm" role="3cqZAp">
                  <node concept="2OqwBi" id="7lmP5gAM7lZ" role="3clFbG">
                    <node concept="2OqwBi" id="7lmP5gAM5mh" role="2Oq$k0">
                      <node concept="3TrEf2" id="7lmP5gAM6Yv" role="2OqNvi">
                        <ref role="3Tt5mk" to="zfi7:7lmP5gALJP_" resolve="code" />
                      </node>
                      <node concept="30H73N" id="7lmP5gAM5ml" role="2Oq$k0" />
                    </node>
                    <node concept="3Tsc0h" id="7lmP5gAM7Ej" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1WS0z7" id="7lmP5gAM25l" role="lGtFl">
        <node concept="3JmXsc" id="7lmP5gAM25o" role="3Jn$fo">
          <node concept="3clFbS" id="7lmP5gAM25p" role="2VODD2">
            <node concept="3clFbF" id="7lmP5gAM25v" role="3cqZAp">
              <node concept="2OqwBi" id="7lmP5gAM25q" role="3clFbG">
                <node concept="30H73N" id="7lmP5gAM25u" role="2Oq$k0" />
                <node concept="3Tsc0h" id="7lmP5gAM6rr" role="2OqNvi">
                  <ref role="3TtcxE" to="zfi7:7lmP5gALKoA" resolve="template" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17Uvod" id="7lmP5gAM2iB" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="7lmP5gAM2iC" role="3zH0cK">
          <node concept="3clFbS" id="7lmP5gAM2iD" role="2VODD2">
            <node concept="3clFbF" id="7lmP5gAM2og" role="3cqZAp">
              <node concept="2OqwBi" id="7lmP5gAM3t3" role="3clFbG">
                <node concept="2OqwBi" id="7lmP5gAM2$t" role="2Oq$k0">
                  <node concept="30H73N" id="7lmP5gAM2of" role="2Oq$k0" />
                  <node concept="2yIwOk" id="7lmP5gAM39m" role="2OqNvi" />
                </node>
                <node concept="3n3YKJ" id="7lmP5gAM3U1" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1ZhdrF" id="7lmP5gAXR_0" role="lGtFl">
        <property role="2qtEX8" value="queryType" />
        <property role="P3scX" value="c4803b19-6d89-4a3b-bf82-390769514add/9035818301008609703/6533016889631295418" />
        <node concept="3$xsQk" id="7lmP5gAXR_1" role="3$ytzL">
          <node concept="3clFbS" id="7lmP5gAXR_2" role="2VODD2">
            <node concept="3clFbF" id="7lmP5gAXRSx" role="3cqZAp">
              <node concept="2OqwBi" id="7lmP5gAXS4n" role="3clFbG">
                <node concept="30H73N" id="7lmP5gAXRSw" role="2Oq$k0" />
                <node concept="2qgKlT" id="7lmP5gAXSi1" role="2OqNvi">
                  <ref role="37wK5l" to="h103:3vih52511I4" resolve="getQueryClassfier" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="7lmP5gAM25e" role="lGtFl">
      <ref role="n9lRv" to="zfi7:7lmP5gALJri" resolve="TypecheckingQueries" />
    </node>
  </node>
  <node concept="AVZre" id="j$DTRidoLS">
    <property role="TrG5h" value="_RecoverType_Default_" />
    <node concept="1nLNMY" id="12QmIo_7sgp" role="1nK1Vg">
      <property role="TrG5h" value="recover_catchall" />
      <node concept="3clFbS" id="12QmIo_7sgq" role="1nLNMH">
        <node concept="1nLNNL" id="12QmIo_7sgr" role="3cqZAp">
          <node concept="1nLNMm" id="12QmIo_7sgs" role="1nLNNK">
            <node concept="3Aq93q" id="5QftlvwZ25J" role="1nLNMb">
              <node concept="3I6sU6" id="5QftlvwZ25K" role="3Ip0Jz">
                <node concept="3I6s7M" id="5QftlvwZ25O" role="3I6sU7">
                  <node concept="3Aqt3T" id="5QftlvwZ25N" role="3I6s78">
                    <ref role="3AqCNq" node="7lmP5gAtUEL" resolve="__recoverType__" />
                    <node concept="a7P8L" id="5QftlvwZ262" role="3AunhB">
                      <ref role="a7OzE" node="5QftlvwZ25T" resolve="Node" />
                    </node>
                    <node concept="a7P8L" id="5QftlvwZ26n" role="3AunhB">
                      <ref role="a7OzE" node="5QftlvwZ269" resolve="Type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Aq9_M" id="27bTNFf1_W2" role="1nLNMa">
              <node concept="3I6sU6" id="27bTNFf1_W3" role="3Ip0Jz">
                <node concept="3I6s7M" id="27bTNFf1_Zj" role="3I6sU7">
                  <node concept="2aLmEc" id="27bTNFf1_Zi" role="3I6s78">
                    <node concept="a7P8L" id="27bTNFf1A0W" role="2aLmnP">
                      <ref role="a7OzE" node="5QftlvwZ269" resolve="Type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="5f6wxQ33YbC" role="0Rg$4">
              <node concept="3Tqbb2" id="5f6wxQ33YbM" role="3vLBG7" />
              <node concept="aZer4" id="7lmP5gAtZCW" role="3XD1gS">
                <property role="TrG5h" value="Location" />
              </node>
              <node concept="aZer4" id="5QftlvwZ25T" role="3XD1gS">
                <property role="TrG5h" value="Node" />
              </node>
            </node>
            <node concept="3NuqgR" id="5QftlvwZ25S" role="0Rg$4">
              <node concept="aZer4" id="5QftlvwZ269" role="3XD1gS">
                <property role="TrG5h" value="Type" />
              </node>
              <node concept="32pEOW" id="24ciDNzxNFj" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="6E2cNicdik$" role="3xSepv">
              <node concept="3Aq9E8" id="5QftlvwZ26t" role="3xSepj">
                <node concept="3I6sU6" id="5QftlvwZ26u" role="3Ip0Jz">
                  <node concept="3I6s7M" id="64CVkH5hcQf" role="3I6sU7">
                    <node concept="3A8Hvi" id="64CVkH5hcQg" role="3I6s78">
                      <node concept="a7P8L" id="64CVkH5hcQh" role="3A8wtg">
                        <ref role="a7OzE" node="5QftlvwZ25T" resolve="Node" />
                      </node>
                      <node concept="HKQnh" id="64CVkH5hcR5" role="3A8w4Q">
                        <node concept="2pJPEk" id="64CVkH5hcRa" role="HKQng">
                          <node concept="2pJPED" id="64CVkH5hcRb" role="2pJPEn">
                            <ref role="2pJxaS" to="tpd4:hfSilrT" resolve="RuntimeErrorType" />
                            <node concept="2pJxcG" id="64CVkH5hfN3" role="2pJxcM">
                              <ref role="2pJxcJ" to="tpd4:hfSilrU" resolve="errorText" />
                              <node concept="Xl_RD" id="64CVkH5hfNq" role="28ntcv">
                                <property role="Xl_RC" value="type is unknown" />
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
        <node concept="3clFbH" id="27bTNFf1_JE" role="3cqZAp" />
        <node concept="1nLNNL" id="27bTNFf1_GE" role="3cqZAp">
          <node concept="1nLNMm" id="27bTNFf1_GF" role="1nLNNK">
            <node concept="3Aq93q" id="27bTNFf1_GM" role="1nLNMb">
              <node concept="3I6sU6" id="27bTNFf1_GN" role="3Ip0Jz">
                <node concept="3I6s7M" id="27bTNFf1_GO" role="3I6sU7">
                  <node concept="3Aqt3T" id="27bTNFf1_GP" role="3I6s78">
                    <ref role="3AqCNq" node="7lmP5gAtUEL" resolve="__recoverType__" />
                    <node concept="a7P8L" id="27bTNFf1_SH" role="3AunhB">
                      <ref role="a7OzE" node="5TXeSYSHyVo" resolve="Node" />
                    </node>
                    <node concept="a7P8L" id="27bTNFf1_R3" role="3AunhB">
                      <ref role="a7OzE" node="5TXeSYSHyVq" resolve="Type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3NuqgR" id="5TXeSYSHyVm" role="0Rg$4">
              <node concept="3Tqbb2" id="5TXeSYSHyVn" role="3vLBG7" />
              <node concept="aZer4" id="7lmP5gAtZO0" role="3XD1gS">
                <property role="TrG5h" value="Location" />
              </node>
              <node concept="aZer4" id="5TXeSYSHyVo" role="3XD1gS">
                <property role="TrG5h" value="Node" />
              </node>
            </node>
            <node concept="3NuqgR" id="5TXeSYSHyVp" role="0Rg$4">
              <node concept="aZer4" id="5TXeSYSHyVq" role="3XD1gS">
                <property role="TrG5h" value="Type" />
              </node>
              <node concept="32pEOW" id="24ciDNzxNFk" role="3vLBG7" />
            </node>
            <node concept="3xSepi" id="6E2cNicdik_" role="3xSepv">
              <node concept="3Aq9E8" id="27bTNFf1_GS" role="3xSepj">
                <node concept="3I6sU6" id="27bTNFf1_GT" role="3Ip0Jz">
                  <node concept="3I6s7M" id="64CVkH5hfS2" role="3I6sU7">
                    <node concept="3A8Hvi" id="64CVkH5hfS3" role="3I6s78">
                      <node concept="a7P8L" id="64CVkH5hfS4" role="3A8wtg">
                        <ref role="a7OzE" node="5TXeSYSHyVo" resolve="Node" />
                      </node>
                      <node concept="HKQnh" id="64CVkH5hfS5" role="3A8w4Q">
                        <node concept="2pJPEk" id="64CVkH5hg6W" role="HKQng">
                          <node concept="2pJPED" id="64CVkH5hg6Y" role="2pJPEn">
                            <ref role="2pJxaS" to="tpd4:hfSilrT" resolve="RuntimeErrorType" />
                            <node concept="2pJxcG" id="64CVkH5hg7o" role="2pJxcM">
                              <ref role="2pJxcJ" to="tpd4:hfSilrU" resolve="errorText" />
                              <node concept="3cpWs3" id="64CVkH5hg7J" role="28ntcv">
                                <node concept="Xl_RD" id="64CVkH5hg7K" role="3uHU7w">
                                  <property role="Xl_RC" value="]" />
                                </node>
                                <node concept="3cpWs3" id="64CVkH5hg7L" role="3uHU7B">
                                  <node concept="Xl_RD" id="64CVkH5hg7M" role="3uHU7B">
                                    <property role="Xl_RC" value="unreifiable type [" />
                                  </node>
                                  <node concept="1Ft4W6" id="64CVkH5hg7N" role="3uHU7w">
                                    <node concept="a7P8L" id="64CVkH5hg7O" role="1FtiSR">
                                      <ref role="a7OzE" node="5TXeSYSHyVq" resolve="Type" />
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
    <node concept="3AqmO8" id="7lmP5gAtUEL" role="8PkJo">
      <property role="TrG5h" value="__recoverType__" />
      <node concept="1zAUYm" id="7lmP5gAtUEN" role="1zAUyy">
        <property role="TrG5h" value="typeNode" />
        <node concept="3Tqbb2" id="7lmP5gAtUES" role="3gTf24" />
      </node>
      <node concept="1zAUYm" id="7lmP5gAtUEV" role="1zAUyy">
        <property role="TrG5h" value="typeTerm" />
        <node concept="32pEOW" id="7lmP5gAtUF5" role="3gTf24" />
      </node>
    </node>
    <node concept="n94m4" id="j$DTRidoLT" role="lGtFl" />
  </node>
  <node concept="AVZre" id="7lmP5gAu4Fv">
    <property role="TrG5h" value="_TypeOf_" />
    <node concept="3AqmO8" id="7lmP5gAu4Gb" role="8PkJo">
      <property role="TrG5h" value="typeOf" />
      <node concept="1zAUYm" id="7lmP5gAu4Gd" role="1zAUyy">
        <property role="TrG5h" value="location" />
        <node concept="3Tqbb2" id="7lmP5gAu4Gi" role="3gTf24" />
      </node>
      <node concept="1zAUYm" id="7lmP5gAu4Gl" role="1zAUyy">
        <property role="TrG5h" value="type" />
        <node concept="32pEOW" id="7lmP5gAu4Gs" role="3gTf24" />
      </node>
    </node>
  </node>
  <node concept="AVZre" id="j$DTRidKsM">
    <property role="TrG5h" value="_RecoverType_" />
    <ref role="2YbDB9" node="j$DTRidoLS" resolve="_RecoverType_Default_" />
    <node concept="n94m4" id="j$DTRidKsN" role="lGtFl" />
  </node>
  <node concept="0oKg$" id="7lmP5gAtYRF">
    <property role="TrG5h" value="_ExpectTypeMacro_" />
    <node concept="3iyZe8" id="7lmP5gAtYUv" role="0oKgB">
      <ref role="3iRiWT" node="7lmP5gAtYUr" resolve="_expectType_" />
      <node concept="3clFbS" id="7lmP5gAtYUw" role="3iwQuN">
        <node concept="3Aqczg" id="7lmP5gAtYZ1" role="3cqZAp">
          <node concept="3Aqt3T" id="7lmP5gAtYYZ" role="3Aqpz8">
            <ref role="3AqCNq" node="7lmP5gAtUEL" resolve="__recoverType__" />
            <node concept="a7P8L" id="7lmP5gAu008" role="3AunhB">
              <ref role="a7OzE" node="7lmP5gAtZYI" resolve="TypeNode" />
            </node>
            <node concept="a7P8L" id="4qGA5WCPGBT" role="3AunhB">
              <ref role="a7OzE" node="4qGA5WCJneg" resolve="TypeTerm" />
            </node>
          </node>
        </node>
        <node concept="3Aqczg" id="7lmP5gAu0Ff" role="3cqZAp">
          <node concept="3wWvb2" id="7lmP5gAu0Fe" role="3Aqpz8">
            <node concept="2OqwBi" id="7lmP5gAu0FY" role="3wWo3s">
              <node concept="3i2tpf" id="4qGA5WCPHwd" role="2Oq$k0">
                <ref role="3i285M" node="4qGA5WCPHa_" resolve="typeConsumer" />
              </node>
              <node concept="liA8E" id="7lmP5gAu0Kd" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~BiConsumer.accept(java.lang.Object,java.lang.Object)" resolve="accept" />
                <node concept="2OqwBi" id="7lmP5gAu0Yc" role="37wK5m">
                  <node concept="3j8tct" id="7lmP5gAu0Pz" role="2Oq$k0">
                    <ref role="3j8tcu" node="7lmP5gAtYUy" resolve="location" />
                  </node>
                  <node concept="iZEcu" id="7lmP5gAu19b" role="2OqNvi" />
                </node>
                <node concept="1Ft4W6" id="7lmP5gAu1co" role="37wK5m">
                  <node concept="a7P8L" id="7lmP5gAu1cn" role="1FtiSR">
                    <ref role="a7OzE" node="7lmP5gAtZYI" resolve="TypeNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3ixlbQ" id="7lmP5gAtYUx" role="3iweTQ">
        <ref role="3ixz9q" to="tpck:gw2VY9q" resolve="BaseConcept" />
        <node concept="3ixQyH" id="7lmP5gAtYUy" role="3ix8rx">
          <property role="TrG5h" value="location" />
        </node>
      </node>
      <node concept="3uniRu" id="7lmP5gAtZYH" role="3iJhzY">
        <node concept="aZer4" id="7lmP5gAtZYI" role="3XD1gS">
          <property role="TrG5h" value="TypeNode" />
        </node>
        <node concept="3Tqbb2" id="7lmP5gAtZYU" role="3vLBG7" />
      </node>
      <node concept="3uniRu" id="4qGA5WCJnef" role="3tb1AD">
        <node concept="aZer4" id="4qGA5WCJneg" role="3XD1gS">
          <property role="TrG5h" value="TypeTerm" />
        </node>
        <node concept="32pEOW" id="4qGA5WCJniq" role="3vLBG7" />
      </node>
    </node>
    <node concept="3iF_et" id="7lmP5gAtYUr" role="3iTdIJ">
      <property role="TrG5h" value="_expectType_" />
      <ref role="3iEmPG" to="tpck:gw2VY9q" resolve="BaseConcept" />
      <node concept="3uniRu" id="4qGA5WCJlnO" role="3iPQ67">
        <node concept="aZer4" id="4qGA5WCJlnP" role="3XD1gS">
          <property role="TrG5h" value="TypeTerm" />
        </node>
        <node concept="32pEOW" id="4qGA5WCJlsa" role="3vLBG7" />
      </node>
      <node concept="3i76O8" id="4qGA5WCPHa_" role="3i7zYg">
        <property role="TrG5h" value="typeConsumer" />
        <node concept="3uibUv" id="4qGA5WCPHcN" role="3i7YY_">
          <ref role="3uigEE" to="82uw:~BiConsumer" resolve="BiConsumer" />
          <node concept="2sp9CU" id="4qGA5WCPHcO" role="11_B2D" />
          <node concept="3Tqbb2" id="4qGA5WCPHcP" role="11_B2D" />
        </node>
      </node>
    </node>
  </node>
  <node concept="ns1xd" id="1vAI4X$GeQv">
    <property role="TrG5h" value="_Terms_" />
    <property role="3GE5qa" value="typeTerm" />
    <node concept="n94m4" id="1vAI4X$GeQw" role="lGtFl">
      <ref role="n9lRv" to="zfi7:6wBZuQUF2vT" resolve="TypeTermTable" />
    </node>
    <node concept="ns1x$" id="1vAI4X$GmRR" role="ns1xc">
      <property role="TrG5h" value="term" />
      <node concept="nspSf" id="1vAI4X$GmRS" role="ns1xx" />
      <node concept="1WS0z7" id="1vAI4X$GmRX" role="lGtFl">
        <ref role="2rW$FS" node="1vAI4X$KFA0" resolve="typeTerm_term" />
        <node concept="3JmXsc" id="1vAI4X$GmRY" role="3Jn$fo">
          <node concept="3clFbS" id="1vAI4X$GmRZ" role="2VODD2">
            <node concept="3clFbF" id="1vAI4X$GmUI" role="3cqZAp">
              <node concept="2OqwBi" id="1vAI4X$Gn5A" role="3clFbG">
                <node concept="30H73N" id="1vAI4X$GmUH" role="2Oq$k0" />
                <node concept="3Tsc0h" id="1vAI4X$Gnn_" role="2OqNvi">
                  <ref role="3TtcxE" to="zfi7:6wBZuQUF99Q" resolve="contents" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="5jKBG" id="1vAI4X$JLM0" role="lGtFl">
        <ref role="v9R2y" node="1vAI4X$HrSa" resolve="frag_TermDeclaration" />
      </node>
    </node>
    <node concept="17Uvod" id="1vAI4X$GFKX" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="1vAI4X$GFKY" role="3zH0cK">
        <node concept="3clFbS" id="1vAI4X$GFKZ" role="2VODD2">
          <node concept="3clFbF" id="1vAI4X$GFV9" role="3cqZAp">
            <node concept="2OqwBi" id="1vAI4X$GGb1" role="3clFbG">
              <node concept="30H73N" id="1vAI4X$GFV8" role="2Oq$k0" />
              <node concept="3TrcHB" id="1vAI4X$GGon" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="1vAI4X$GZYB">
    <property role="TrG5h" value="frag_recoverType" />
    <property role="3GE5qa" value="typeTerm" />
    <ref role="3gUMe" to="zfi7:6wBZuQUG1yn" resolve="TypeNodeBuilder" />
    <node concept="AVZre" id="1vAI4X$H8Jp" role="13RCb5">
      <property role="TrG5h" value="_RecoverType_" />
      <ref role="2YbDB9" node="j$DTRidoLS" resolve="_RecoverType_Default_" />
      <node concept="1nLNMY" id="1vAI4X$H8Jr" role="1nK1Vg">
        <property role="TrG5h" value="recover" />
        <node concept="3clFbS" id="1vAI4X$H8Js" role="1nLNMH">
          <node concept="1nLNNL" id="1vAI4X$K7Kc" role="3cqZAp">
            <node concept="1nLNMm" id="1vAI4X$K7Kd" role="1nLNNK">
              <node concept="3Aq93q" id="1vAI4X$K7Mi" role="1nLNMb">
                <node concept="3I6sU6" id="1vAI4X$K7Mj" role="3Ip0Jz">
                  <node concept="3I6s7M" id="1vAI4X$K81p" role="3I6sU7">
                    <node concept="3Aqt3T" id="1vAI4X$K81o" role="3I6s78">
                      <ref role="3AqCNq" node="7lmP5gAtUEL" resolve="__recoverType__" />
                      <node concept="a7P8L" id="1vAI4X$K9$9" role="3AunhB">
                        <ref role="a7OzE" node="1vAI4X$K8l5" resolve="Type" />
                      </node>
                      <node concept="1HFMs5" id="1vAI4X$Kq5Y" role="3AunhB">
                        <node concept="a7P8L" id="1vAI4X$K9qE" role="1uarlU">
                          <ref role="a7OzE" node="1vAI4X$K8YE" resolve="Term" />
                        </node>
                        <node concept="ns1u0" id="1vAI4X$Kssm" role="1uarlW">
                          <ref role="ns1xF" node="1vAI4X$KrUZ" resolve="_sampleTerm" />
                          <node concept="nsMwS" id="1vAI4X$LTEG" role="ns1xD">
                            <ref role="nsMwP" node="1vAI4X$LUfn" resolve="_value" />
                            <node concept="a7P8L" id="1vAI4X$W2wL" role="iSaTp">
                              <ref role="a7OzE" node="1vAI4X$VNo6" resolve="Value" />
                              <node concept="1ZhdrF" id="1vAI4X$W2Nz" role="lGtFl">
                                <property role="2qtEX8" value="declaration" />
                                <property role="P3scX" value="35320f26-77cb-4c55-be9f-a97a27770af1/8829335963593820278/8829335963593822893" />
                                <node concept="3$xsQk" id="1vAI4X$W2N$" role="3$ytzL">
                                  <node concept="3clFbS" id="1vAI4X$W2N_" role="2VODD2">
                                    <node concept="3clFbF" id="1vAI4X$W33Y" role="3cqZAp">
                                      <node concept="2OqwBi" id="1vAI4X$W3f8" role="3clFbG">
                                        <node concept="1iwH7S" id="1vAI4X$W33X" role="2Oq$k0" />
                                        <node concept="1iwH70" id="1vAI4X$W3nT" role="2OqNvi">
                                          <ref role="1iwH77" node="1vAI4X$KXom" resolve="feature_logical" />
                                          <node concept="30H73N" id="1vAI4X$W3_s" role="1iwH7V" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1WS0z7" id="1vAI4X$LVax" role="lGtFl">
                              <node concept="3JmXsc" id="1vAI4X$LVay" role="3Jn$fo">
                                <node concept="3clFbS" id="1vAI4X$LVaz" role="2VODD2">
                                  <node concept="3clFbF" id="1vAI4X$LVh7" role="3cqZAp">
                                    <node concept="2OqwBi" id="1vAI4X$LVJX" role="3clFbG">
                                      <node concept="2OqwBi" id="1vAI4X$LVnl" role="2Oq$k0">
                                        <node concept="30H73N" id="1vAI4X$LVh6" role="2Oq$k0" />
                                        <node concept="2qgKlT" id="1vAI4X$LVve" role="2OqNvi">
                                          <ref role="37wK5l" to="h103:1vAI4X$KvKn" resolve="getTypeTermDeclaration" />
                                        </node>
                                      </node>
                                      <node concept="2qgKlT" id="1vAI4X$LVZL" role="2OqNvi">
                                        <ref role="37wK5l" to="x5bw:7c96q9tALRr" resolve="valueFeatures" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1ZhdrF" id="1vAI4X$Mdex" role="lGtFl">
                              <property role="2qtEX8" value="feature" />
                              <property role="P3scX" value="c4803b19-6d89-4a3b-bf82-390769514add/861509610434435669/861509610434435672" />
                              <node concept="3$xsQk" id="1vAI4X$Mdey" role="3$ytzL">
                                <node concept="3clFbS" id="1vAI4X$Mdez" role="2VODD2">
                                  <node concept="3clFbF" id="1vAI4X$MduW" role="3cqZAp">
                                    <node concept="30H73N" id="1vAI4X$MduV" role="3clFbG" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="nsMwS" id="1vAI4X$KTl7" role="ns1xD">
                            <ref role="nsMwP" node="1vAI4X$Ks2y" resolve="_child" />
                            <node concept="1WS0z7" id="1vAI4X$KTE$" role="lGtFl">
                              <node concept="3JmXsc" id="1vAI4X$KTE_" role="3Jn$fo">
                                <node concept="3clFbS" id="1vAI4X$KTEA" role="2VODD2">
                                  <node concept="3clFbF" id="1vAI4X$KTK_" role="3cqZAp">
                                    <node concept="2OqwBi" id="1vAI4X$KUze" role="3clFbG">
                                      <node concept="2OqwBi" id="1vAI4X$KTWf" role="2Oq$k0">
                                        <node concept="30H73N" id="1vAI4X$KTK$" role="2Oq$k0" />
                                        <node concept="2qgKlT" id="1vAI4X$KUgs" role="2OqNvi">
                                          <ref role="37wK5l" to="h103:1vAI4X$KvKn" resolve="getTypeTermDeclaration" />
                                        </node>
                                      </node>
                                      <node concept="2qgKlT" id="1vAI4X$KUNR" role="2OqNvi">
                                        <ref role="37wK5l" to="x5bw:7c96q9tCSX_" resolve="childFeatures" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1ZhdrF" id="1vAI4X$KVu3" role="lGtFl">
                              <property role="2qtEX8" value="feature" />
                              <property role="P3scX" value="c4803b19-6d89-4a3b-bf82-390769514add/861509610434435669/861509610434435672" />
                              <node concept="3$xsQk" id="1vAI4X$KVu4" role="3$ytzL">
                                <node concept="3clFbS" id="1vAI4X$KVu5" role="2VODD2">
                                  <node concept="3clFbF" id="1vAI4X$KVHF" role="3cqZAp">
                                    <node concept="30H73N" id="1vAI4X$KVHE" role="3clFbG" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="a7P8L" id="1vAI4X$LbVN" role="iSaTp">
                              <ref role="a7OzE" node="1vAI4X$L3S6" resolve="Child" />
                              <node concept="1ZhdrF" id="1vAI4X$LcaW" role="lGtFl">
                                <property role="2qtEX8" value="declaration" />
                                <property role="P3scX" value="35320f26-77cb-4c55-be9f-a97a27770af1/8829335963593820278/8829335963593822893" />
                                <node concept="3$xsQk" id="1vAI4X$LcaX" role="3$ytzL">
                                  <node concept="3clFbS" id="1vAI4X$LcaY" role="2VODD2">
                                    <node concept="3clFbF" id="1vAI4X$Ld6u" role="3cqZAp">
                                      <node concept="2OqwBi" id="1vAI4X$LdhC" role="3clFbG">
                                        <node concept="1iwH7S" id="1vAI4X$Ld6t" role="2Oq$k0" />
                                        <node concept="1iwH70" id="1vAI4X$LdxW" role="2OqNvi">
                                          <ref role="1iwH77" node="1vAI4X$KXom" resolve="feature_logical" />
                                          <node concept="30H73N" id="1vAI4X$LdJb" role="1iwH7V" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1ZhdrF" id="1vAI4X$KyZN" role="lGtFl">
                            <property role="2qtEX8" value="decl" />
                            <property role="P3scX" value="c4803b19-6d89-4a3b-bf82-390769514add/861509610434242029/861509610434243078" />
                            <node concept="3$xsQk" id="1vAI4X$KyZO" role="3$ytzL">
                              <node concept="3clFbS" id="1vAI4X$KyZP" role="2VODD2">
                                <node concept="3clFbF" id="1vAI4X$KGsy" role="3cqZAp">
                                  <node concept="2OqwBi" id="1vAI4X$KG_y" role="3clFbG">
                                    <node concept="1iwH7S" id="1vAI4X$KGsx" role="2Oq$k0" />
                                    <node concept="1iwH70" id="1vAI4X$KGJL" role="2OqNvi">
                                      <ref role="1iwH77" node="1vAI4X$KFA0" resolve="typeTerm_term" />
                                      <node concept="2OqwBi" id="1vAI4X$KH57" role="1iwH7V">
                                        <node concept="30H73N" id="1vAI4X$KH58" role="2Oq$k0" />
                                        <node concept="2qgKlT" id="1vAI4X$KH59" role="2OqNvi">
                                          <ref role="37wK5l" to="h103:1vAI4X$KvKn" resolve="getTypeTermDeclaration" />
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
              <node concept="3NuqgR" id="1vAI4X$K8l4" role="0Rg$4">
                <node concept="aZer4" id="1vAI4X$K8l5" role="3XD1gS">
                  <property role="TrG5h" value="Type" />
                </node>
                <node concept="3Tqbb2" id="1vAI4X$K8rL" role="3vLBG7" />
              </node>
              <node concept="3NuqgR" id="1vAI4X$K8YD" role="0Rg$4">
                <node concept="aZer4" id="1vAI4X$K8YE" role="3XD1gS">
                  <property role="TrG5h" value="Term" />
                </node>
                <node concept="32pEOW" id="1vAI4X$K91K" role="3vLBG7" />
              </node>
              <node concept="3NuqgR" id="1vAI4X$L3S5" role="0Rg$4">
                <node concept="aZer4" id="1vAI4X$L3S6" role="3XD1gS">
                  <property role="TrG5h" value="Child" />
                  <node concept="1WS0z7" id="1vAI4X$L4Bz" role="lGtFl">
                    <ref role="2rW$FS" node="1vAI4X$KXom" resolve="feature_logical" />
                    <node concept="3JmXsc" id="1vAI4X$L4B$" role="3Jn$fo">
                      <node concept="3clFbS" id="1vAI4X$L4B_" role="2VODD2">
                        <node concept="3clFbF" id="1vAI4X$L6dD" role="3cqZAp">
                          <node concept="2OqwBi" id="1vAI4X$L6dE" role="3clFbG">
                            <node concept="2OqwBi" id="1vAI4X$LGiG" role="2Oq$k0">
                              <node concept="30H73N" id="1vAI4X$LGfH" role="2Oq$k0" />
                              <node concept="2qgKlT" id="1vAI4X$LGrG" role="2OqNvi">
                                <ref role="37wK5l" to="h103:1vAI4X$KvKn" resolve="getTypeTermDeclaration" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="1vAI4X$L6dG" role="2OqNvi">
                              <ref role="37wK5l" to="x5bw:7c96q9tCSX_" resolve="childFeatures" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="17Uvod" id="1vAI4X$LHNM" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="1vAI4X$LHNN" role="3zH0cK">
                      <node concept="3clFbS" id="1vAI4X$LHNO" role="2VODD2">
                        <node concept="3clFbF" id="1vAI4X$LJ7X" role="3cqZAp">
                          <node concept="2OqwBi" id="1vAI4X$LJlA" role="3clFbG">
                            <node concept="30H73N" id="1vAI4X$LJ7W" role="2Oq$k0" />
                            <node concept="3TrcHB" id="1vAI4X$LKpO" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="32pEOW" id="1vAI4X$L4oV" role="3vLBG7" />
                <node concept="1W57fq" id="1vAI4X$LybC" role="lGtFl">
                  <node concept="3IZrLx" id="1vAI4X$LybD" role="3IZSJc">
                    <node concept="3clFbS" id="1vAI4X$LybE" role="2VODD2">
                      <node concept="3clFbF" id="1vAI4X$L_Fl" role="3cqZAp">
                        <node concept="2OqwBi" id="1vAI4X$L_ZQ" role="3clFbG">
                          <node concept="2OqwBi" id="1vAI4X$L_Fm" role="2Oq$k0">
                            <node concept="2OqwBi" id="1vAI4X$LE7h" role="2Oq$k0">
                              <node concept="30H73N" id="1vAI4X$LE4D" role="2Oq$k0" />
                              <node concept="2qgKlT" id="1vAI4X$LEoY" role="2OqNvi">
                                <ref role="37wK5l" to="h103:1vAI4X$KvKn" resolve="getTypeTermDeclaration" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="1vAI4X$L_Ft" role="2OqNvi">
                              <ref role="37wK5l" to="x5bw:7c96q9tCSX_" resolve="childFeatures" />
                            </node>
                          </node>
                          <node concept="3GX2aA" id="1vAI4X$LATj" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3NuqgR" id="1vAI4X$VNo5" role="0Rg$4">
                <node concept="aZer4" id="1vAI4X$VNo6" role="3XD1gS">
                  <property role="TrG5h" value="Value" />
                  <node concept="17Uvod" id="1vAI4X$VWFp" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="1vAI4X$VWFq" role="3zH0cK">
                      <node concept="3clFbS" id="1vAI4X$VWFr" role="2VODD2">
                        <node concept="3clFbF" id="1vAI4X$VWN7" role="3cqZAp">
                          <node concept="2OqwBi" id="1vAI4X$VX14" role="3clFbG">
                            <node concept="30H73N" id="1vAI4X$VWN6" role="2Oq$k0" />
                            <node concept="3TrcHB" id="1vAI4X$VYpM" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ZBi8u" id="1vAI4X$VZPu" role="lGtFl">
                    <ref role="2rW$FS" node="1vAI4X$KXom" resolve="feature_logical" />
                  </node>
                </node>
                <node concept="3uibUv" id="1vAI4X$VNK3" role="3vLBG7">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  <node concept="29HgVG" id="1vAI4X$VPA0" role="lGtFl">
                    <node concept="3NFfHV" id="1vAI4X$VPD5" role="3NFExx">
                      <node concept="3clFbS" id="1vAI4X$VPD6" role="2VODD2">
                        <node concept="3cpWs8" id="4qGA5WCIP33" role="3cqZAp">
                          <node concept="3cpWsn" id="4qGA5WCIP34" role="3cpWs9">
                            <property role="TrG5h" value="declaredType" />
                            <node concept="3Tqbb2" id="4qGA5WCINUi" role="1tU5fm">
                              <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                            </node>
                            <node concept="2OqwBi" id="4qGA5WCIP35" role="33vP2m">
                              <node concept="30H73N" id="4qGA5WCIP36" role="2Oq$k0" />
                              <node concept="3TrEf2" id="4qGA5WCIP37" role="2OqNvi">
                                <ref role="3Tt5mk" to="wq2x:1vAI4X$P8hj" resolve="type" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="4qGA5WCITI7" role="3cqZAp">
                          <node concept="3clFbS" id="4qGA5WCITIp" role="3clFbx">
                            <node concept="3clFbF" id="4qGA5WCIWmg" role="3cqZAp">
                              <node concept="37vLTI" id="4qGA5WCIWK3" role="3clFbG">
                                <node concept="2c44tf" id="4qGA5WCIWXZ" role="37vLTx">
                                  <node concept="3uibUv" id="4qGA5WCIXeu" role="2c44tc">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="4qGA5WCIWmf" role="37vLTJ">
                                  <ref role="3cqZAo" node="4qGA5WCIP34" resolve="declaredType" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="4qGA5WCITjo" role="3clFbw">
                            <node concept="10Nm6u" id="4qGA5WCITuz" role="3uHU7w" />
                            <node concept="37vLTw" id="4qGA5WCISYg" role="3uHU7B">
                              <ref role="3cqZAo" node="4qGA5WCIP34" resolve="declaredType" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4qGA5WCIXZL" role="3cqZAp">
                          <node concept="37vLTw" id="4qGA5WCIXZJ" role="3clFbG">
                            <ref role="3cqZAo" node="4qGA5WCIP34" resolve="declaredType" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1WS0z7" id="1vAI4X$VOms" role="lGtFl">
                  <node concept="3JmXsc" id="1vAI4X$VOmt" role="3Jn$fo">
                    <node concept="3clFbS" id="1vAI4X$VOmu" role="2VODD2">
                      <node concept="3clFbF" id="1vAI4X$VOyn" role="3cqZAp">
                        <node concept="2OqwBi" id="1vAI4X$VTFH" role="3clFbG">
                          <node concept="2OqwBi" id="1vAI4X$VOyo" role="2Oq$k0">
                            <node concept="2OqwBi" id="1vAI4X$VOyp" role="2Oq$k0">
                              <node concept="30H73N" id="1vAI4X$VOyq" role="2Oq$k0" />
                              <node concept="2qgKlT" id="1vAI4X$VOyr" role="2OqNvi">
                                <ref role="37wK5l" to="h103:1vAI4X$KvKn" resolve="getTypeTermDeclaration" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="1vAI4X$VOys" role="2OqNvi">
                              <ref role="37wK5l" to="x5bw:7c96q9tALRr" resolve="valueFeatures" />
                            </node>
                          </node>
                          <node concept="3$u5V9" id="1vAI4X$VUos" role="2OqNvi">
                            <node concept="1bVj0M" id="1vAI4X$VUou" role="23t8la">
                              <node concept="3clFbS" id="1vAI4X$VUov" role="1bW5cS">
                                <node concept="3clFbF" id="1vAI4X$VUAD" role="3cqZAp">
                                  <node concept="1PxgMI" id="1vAI4X$VV9n" role="3clFbG">
                                    <property role="1BlNFB" value="true" />
                                    <node concept="chp4Y" id="1vAI4X$VVjz" role="3oSUPX">
                                      <ref role="cht4Q" to="wq2x:JOGAOsxnj6" resolve="ValueFeature" />
                                    </node>
                                    <node concept="37vLTw" id="1vAI4X$VUAC" role="1m5AlR">
                                      <ref role="3cqZAo" node="1vAI4X$VUow" resolve="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="1vAI4X$VUow" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="1vAI4X$VUox" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3xSepi" id="1vAI4X$K9W$" role="3xSepv">
                <node concept="3Aq9E8" id="1vAI4X$K9W_" role="3xSepj">
                  <node concept="3I6sU6" id="1vAI4X$K9WA" role="3Ip0Jz">
                    <node concept="3I6s7M" id="1vAI4X$KaV1" role="3I6sU7">
                      <node concept="3A8Hvi" id="1vAI4X$KaV7" role="3I6s78">
                        <node concept="HKQnh" id="1vAI4X$Kb3I" role="3A8w4Q">
                          <node concept="10Nm6u" id="1vAI4X$Kc9k" role="HKQng">
                            <node concept="29HgVG" id="1vAI4X$KchP" role="lGtFl">
                              <node concept="3NFfHV" id="1vAI4X$KcnH" role="3NFExx">
                                <node concept="3clFbS" id="1vAI4X$KcnI" role="2VODD2">
                                  <node concept="3clFbF" id="1vAI4X$Kcrr" role="3cqZAp">
                                    <node concept="2OqwBi" id="1vAI4X$Kc$E" role="3clFbG">
                                      <node concept="30H73N" id="1vAI4X$Kcrq" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="1vAI4X$KcNr" role="2OqNvi">
                                        <ref role="3Tt5mk" to="zfi7:6wBZuQUG57q" resolve="body" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="a7P8L" id="1vAI4X$KaS0" role="3A8wtg">
                          <ref role="a7OzE" node="1vAI4X$K8l5" resolve="Type" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="1vAI4X$H8JV" role="lGtFl" />
        <node concept="17Uvod" id="1vAI4X$K3Ig" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="1vAI4X$K3Ih" role="3zH0cK">
            <node concept="3clFbS" id="1vAI4X$K3Ii" role="2VODD2">
              <node concept="3clFbF" id="1vAI4X$K3RB" role="3cqZAp">
                <node concept="3cpWs3" id="1vAI4X$K4F9" role="3clFbG">
                  <node concept="1eOMI4" id="1vAI4X$K4RM" role="3uHU7w">
                    <node concept="2OqwBi" id="1vAI4X$Kym1" role="1eOMHV">
                      <node concept="30H73N" id="1vAI4X$Ky5z" role="2Oq$k0" />
                      <node concept="2qgKlT" id="1vAI4X$KyGM" role="2OqNvi">
                        <ref role="37wK5l" to="h103:1vAI4X$KvKn" resolve="getTypeTermDeclaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs3" id="1vAI4X$K4g7" role="3uHU7B">
                    <node concept="3cpWs3" id="4qGA5WCIL1K" role="3uHU7B">
                      <node concept="Xl_RD" id="4qGA5WCILbH" role="3uHU7B">
                        <property role="Xl_RC" value="_" />
                      </node>
                      <node concept="3zGtF$" id="1vAI4X$K3RA" role="3uHU7w" />
                    </node>
                    <node concept="Xl_RD" id="1vAI4X$K4gb" role="3uHU7w">
                      <property role="Xl_RC" value="_" />
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
  <node concept="13MO4I" id="1vAI4X$HrSa">
    <property role="TrG5h" value="frag_TermDeclaration" />
    <property role="3GE5qa" value="typeTerm" />
    <ref role="3gUMe" to="zfi7:6wBZuQUFd0b" resolve="TypeTermDeclaration" />
    <node concept="ns1xd" id="1vAI4X$Hske" role="13RCb5">
      <property role="TrG5h" value="Context" />
      <node concept="ns1x$" id="1vAI4X$HssM" role="ns1xc">
        <property role="TrG5h" value="term1" />
        <property role="3uGXoX" value="true" />
        <node concept="nspSf" id="1vAI4X$HssN" role="ns1xx" />
      </node>
      <node concept="ns1x$" id="1vAI4X$HsBQ" role="ns1xc">
        <property role="TrG5h" value="term2" />
        <property role="3uGXoX" value="true" />
        <ref role="ns1xW" node="1vAI4X$HssM" resolve="term1" />
        <node concept="nspSf" id="1vAI4X$HsBR" role="ns1xx">
          <node concept="29HgVG" id="1vAI4X$Jx9U" role="lGtFl">
            <node concept="3NFfHV" id="1vAI4X$Jxco" role="3NFExx">
              <node concept="3clFbS" id="1vAI4X$Jxcp" role="2VODD2">
                <node concept="3clFbF" id="1vAI4X$JxfW" role="3cqZAp">
                  <node concept="2OqwBi" id="1vAI4X$Jxr9" role="3clFbG">
                    <node concept="30H73N" id="1vAI4X$JxfV" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1vAI4X$JxT1" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:JOGAOsxaCc" resolve="template" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="1vAI4X$JsFN" role="lGtFl" />
        <node concept="1ZhdrF" id="1vAI4X$Juua" role="lGtFl">
          <property role="2qtEX8" value="prototype" />
          <property role="P3scX" value="c4803b19-6d89-4a3b-bf82-390769514add/861509610434243081/861509610434243089" />
          <node concept="3$xsQk" id="1vAI4X$Juub" role="3$ytzL">
            <node concept="3clFbS" id="1vAI4X$Juuc" role="2VODD2">
              <node concept="3cpWs8" id="4qGA5WCJem$" role="3cqZAp">
                <node concept="3cpWsn" id="4qGA5WCJem_" role="3cpWs9">
                  <property role="TrG5h" value="mapped" />
                  <node concept="3Tqbb2" id="4qGA5WCJejx" role="1tU5fm">
                    <ref role="ehGHo" to="wq2x:JOGAOsxaC9" resolve="TermDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="4qGA5WCJemA" role="33vP2m">
                    <node concept="1iwH7S" id="4qGA5WCJemB" role="2Oq$k0" />
                    <node concept="1iwH70" id="4qGA5WCJemC" role="2OqNvi">
                      <ref role="1iwH77" node="1vAI4X$KFA0" resolve="typeTerm_term" />
                      <node concept="10QFUN" id="4qGA5WCJgsT" role="1iwH7V">
                        <node concept="2OqwBi" id="4qGA5WCJgsQ" role="10QFUP">
                          <node concept="30H73N" id="4qGA5WCJgsR" role="2Oq$k0" />
                          <node concept="3TrEf2" id="4qGA5WCJgsS" role="2OqNvi">
                            <ref role="3Tt5mk" to="wq2x:JOGAOsxaCh" resolve="prototype" />
                          </node>
                        </node>
                        <node concept="3Tqbb2" id="4qGA5WCJgzg" role="10QFUM">
                          <ref role="ehGHo" to="zfi7:6wBZuQUFd0b" resolve="TypeTermDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4qGA5WCJdvr" role="3cqZAp">
                <node concept="3K4zz7" id="4qGA5WCJh6P" role="3clFbG">
                  <node concept="37vLTw" id="4qGA5WCJhgr" role="3K4E3e">
                    <ref role="3cqZAo" node="4qGA5WCJem_" resolve="mapped" />
                  </node>
                  <node concept="3y3z36" id="4qGA5WCJgTe" role="3K4Cdx">
                    <node concept="10Nm6u" id="4qGA5WCJh2y" role="3uHU7w" />
                    <node concept="37vLTw" id="4qGA5WCJemG" role="3uHU7B">
                      <ref role="3cqZAo" node="4qGA5WCJem_" resolve="mapped" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4qGA5WCJhna" role="3K4GZi">
                    <node concept="30H73N" id="4qGA5WCJhnb" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4qGA5WCJhnc" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:JOGAOsxaCh" resolve="prototype" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17Uvod" id="1vAI4X$JuRf" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="1vAI4X$JuRg" role="3zH0cK">
            <node concept="3clFbS" id="1vAI4X$JuRh" role="2VODD2">
              <node concept="3clFbF" id="1vAI4X$Jv4e" role="3cqZAp">
                <node concept="2OqwBi" id="1vAI4X$Jvi2" role="3clFbG">
                  <node concept="30H73N" id="1vAI4X$Jv4d" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1vAI4X$Jvwo" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1pdMLZ" id="1vAI4X$Jz2m" role="lGtFl">
          <node concept="15lBmy" id="1vAI4X$Jzdg" role="15mYut">
            <node concept="3clFbS" id="1vAI4X$Jzdh" role="2VODD2">
              <node concept="3clFbF" id="1vAI4X$Jzo6" role="3cqZAp">
                <node concept="2OqwBi" id="1vAI4X$J$q2" role="3clFbG">
                  <node concept="2OqwBi" id="1vAI4X$JzxY" role="2Oq$k0">
                    <node concept="3l3mFP" id="1vAI4X$Jzo5" role="2Oq$k0" />
                    <node concept="3TrcHB" id="1vAI4X$J$3C" role="2OqNvi">
                      <ref role="3TsBF5" to="wq2x:4vr5SApqc6O" resolve="open" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="1vAI4X$J$D4" role="2OqNvi">
                    <node concept="2OqwBi" id="1vAI4X$J$QQ" role="tz02z">
                      <node concept="30H73N" id="1vAI4X$J$Hg" role="2Oq$k0" />
                      <node concept="3TrcHB" id="1vAI4X$J_e6" role="2OqNvi">
                        <ref role="3TsBF5" to="wq2x:4vr5SApqc6O" resolve="open" />
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
  <node concept="ns1xd" id="1vAI4X$KrQ4">
    <property role="TrG5h" value="_SampleTerms_" />
    <node concept="ns1x$" id="1vAI4X$KrUZ" role="ns1xc">
      <property role="TrG5h" value="_sampleTerm" />
      <node concept="nspSf" id="1vAI4X$KrV0" role="ns1xx">
        <node concept="nstbe" id="1vAI4X$Ks2y" role="nspSe">
          <property role="TrG5h" value="_child" />
        </node>
        <node concept="nsiOd" id="1vAI4X$Ks9c" role="nspSe">
          <property role="TrG5h" value="_children" />
        </node>
        <node concept="nssqF" id="1vAI4X$LUfn" role="nspSe">
          <property role="TrG5h" value="_value" />
        </node>
      </node>
    </node>
    <node concept="n94m4" id="1vAI4X$KrQ5" role="lGtFl" />
  </node>
</model>

