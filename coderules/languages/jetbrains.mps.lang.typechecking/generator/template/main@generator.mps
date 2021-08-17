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
    <import index="zfi7" ref="r:39840d4e-f61c-4452-88c5-75b1eb10e892(jetbrains.mps.lang.typechecking.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="h103" ref="r:9c80bc3e-1982-4e7d-8fe4-1b25a1c02635(jetbrains.mps.lang.typechecking.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167088157977" name="createRootRule" index="2VS0gm" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1167087469898" name="jetbrains.mps.lang.generator.structure.CreateRootRule" flags="lg" index="2VPoh5">
        <reference id="1167087469901" name="templateNode" index="2VPoh2" />
        <child id="1167087469900" name="conditionFunction" index="2VPoh3" />
      </concept>
      <concept id="1167087518662" name="jetbrains.mps.lang.generator.structure.CreateRootRule_Condition" flags="in" index="2VP$b9" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
      <concept id="1088761943574" name="jetbrains.mps.lang.generator.structure.ReferenceMacro" flags="ln" index="1ZhdrF">
        <child id="1167770376702" name="referentFunction" index="3$ytzL" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
      <concept id="1217026863835" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalInputModel" flags="nn" index="1st3f0" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ng" index="2c44t0">
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
      <concept id="4056363777117001481" name="jetbrains.mps.lang.quotation.structure.StringToTypedValueMigrationInfo" flags="ng" index="AAgTk">
        <property id="2173356959483005420" name="stringValueMigrated" index="3qcH_f" />
      </concept>
      <concept id="1196866233735" name="jetbrains.mps.lang.quotation.structure.PropertyAntiquotation" flags="ng" index="2EMmih" />
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185281562361" name="jetbrains.mps.lang.typesystem.structure.RuntimeErrorType" flags="in" index="3SilvE" />
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
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <child id="6750920497477046361" name="conceptArgument" index="3MHsoP" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
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
      <concept id="8335224865066015764" name="jetbrains.mps.lang.coderules.structure.RulesList" flags="ng" index="AVZre">
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
      </concept>
      <concept id="6097203247157857681" name="jetbrains.mps.lang.coderules.structure.ExpandMacroPrototype" flags="ng" index="3iF_et">
        <reference id="6097203247157932896" name="applicableConcept" index="3iEmPG" />
      </concept>
      <concept id="6097203247183580433" name="jetbrains.mps.lang.coderules.structure.ExpandMacroInputReference" flags="ng" index="3j8tct">
        <reference id="6097203247183580434" name="declaration" index="3j8tcu" />
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
      <concept id="2316688792938826204" name="jetbrains.mps.lang.coderules.structure.ConstraintLogicalClause" flags="ng" index="3I6s7M">
        <child id="2316688792938826214" name="constraint" index="3I6s78" />
      </concept>
      <concept id="2316688792938825384" name="jetbrains.mps.lang.coderules.structure.LogicalClauseList" flags="ng" index="3I6sU6">
        <child id="2316688792938825385" name="clauses" index="3I6sU7" />
      </concept>
      <concept id="965748826975413063" name="jetbrains.mps.lang.coderules.structure.RulePartParameterDeclaration" flags="ng" index="3NuqgR" />
    </language>
  </registry>
  <node concept="bUwia" id="NKt6ynvIZQ">
    <property role="TrG5h" value="main" />
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
      <ref role="2VPoh2" node="j$DTRidoLS" resolve="_RecoverType_" />
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
    <node concept="3aamgX" id="7lmP5gAYBdz" role="3acgRq">
      <ref role="30HIoZ" to="zfi7:7lmP5gAYc5S" resolve="TypecheckingQueryParameter" />
      <node concept="gft3U" id="7lmP5gAYBdF" role="1lVwrX">
        <node concept="KwDlU" id="7lmP5gAYBe1" role="gfFT$" />
      </node>
    </node>
    <node concept="3lhOvk" id="7lmP5gAM1D9" role="3lj3bC">
      <ref role="30HIoZ" to="zfi7:7lmP5gALJri" resolve="TypecheckingQueries" />
      <ref role="3lhOvi" node="7lmP5gAM25d" resolve="_Queries_" />
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
    <property role="TrG5h" value="_RecoverType_" />
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
                    <node concept="a7P8L" id="7lmP5gAtZGm" role="3AunhB">
                      <ref role="a7OzE" node="7lmP5gAtZCW" resolve="Location" />
                    </node>
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
                  <node concept="3I6s7M" id="7lt0LtQlvjt" role="3I6sU7">
                    <node concept="3A8Hvi" id="5TfjU0xvr7i" role="3I6s78">
                      <node concept="a7P8L" id="7lt0LtQlvqb" role="3A8wtg">
                        <ref role="a7OzE" node="5QftlvwZ25T" resolve="Node" />
                      </node>
                      <node concept="HKQnh" id="7lt0LtQlvqj" role="3A8w4Q">
                        <node concept="2c44tf" id="6EY0p2yN7hp" role="HKQng">
                          <node concept="3SilvE" id="6EY0p2yPlzE" role="2c44tc">
                            <node concept="2EMmih" id="6EY0p2yPlzG" role="lGtFl">
                              <property role="P4ACc" value="7a5dda62-9140-4668-ab76-d5ed1746f2b2/1185281562361/1185281562362" />
                              <property role="2qtEX9" value="errorText" />
                              <property role="3qcH_f" value="true" />
                              <node concept="Xl_RD" id="6EY0p2yN7iy" role="2c44t1">
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
                    <node concept="a7P8L" id="7lmP5gAtZR7" role="3AunhB">
                      <ref role="a7OzE" node="7lmP5gAtZO0" resolve="Location" />
                    </node>
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
                  <node concept="3I6s7M" id="27bTNFf1_GU" role="3I6sU7">
                    <node concept="3A8Hvi" id="5TfjU0xvr7j" role="3I6s78">
                      <node concept="a7P8L" id="27bTNFf1_Pq" role="3A8wtg">
                        <ref role="a7OzE" node="5TXeSYSHyVo" resolve="Node" />
                      </node>
                      <node concept="HKQnh" id="27bTNFf1_GX" role="3A8w4Q">
                        <node concept="2c44tf" id="27bTNFf1_GY" role="HKQng">
                          <node concept="3SilvE" id="27bTNFf1_GZ" role="2c44tc">
                            <node concept="2EMmih" id="27bTNFf1_H0" role="lGtFl">
                              <property role="P4ACc" value="7a5dda62-9140-4668-ab76-d5ed1746f2b2/1185281562361/1185281562362" />
                              <property role="2qtEX9" value="errorText" />
                              <property role="3qcH_f" value="true" />
                              <node concept="3cpWs3" id="27bTNFf1_H1" role="2c44t1">
                                <node concept="Xl_RD" id="27bTNFf1_H2" role="3uHU7w">
                                  <property role="Xl_RC" value="]" />
                                </node>
                                <node concept="3cpWs3" id="27bTNFf1_H3" role="3uHU7B">
                                  <node concept="Xl_RD" id="27bTNFf1_H4" role="3uHU7B">
                                    <property role="Xl_RC" value="unreifiable type [" />
                                  </node>
                                  <node concept="1Ft4W6" id="7zIaaskbYIr" role="3uHU7w">
                                    <node concept="a7P8L" id="27bTNFf1_Un" role="1FtiSR">
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
      <node concept="1zAUYm" id="7lmP5gAtZ8w" role="1zAUyy">
        <property role="TrG5h" value="location" />
        <node concept="3Tqbb2" id="7lmP5gAtZ_j" role="3gTf24" />
      </node>
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
    <property role="TrG5h" value="_Recover_" />
    <node concept="n94m4" id="j$DTRidKsN" role="lGtFl" />
  </node>
  <node concept="0oKg$" id="7lmP5gAtYRF">
    <property role="TrG5h" value="ExpectTypeMacro" />
    <node concept="3iyZe8" id="7lmP5gAtYUv" role="0oKgB">
      <ref role="3iRiWT" node="7lmP5gAtYUr" resolve="expectType" />
      <node concept="3clFbS" id="7lmP5gAtYUw" role="3iwQuN">
        <node concept="3SKdUt" id="7lmP5gAtYUB" role="3cqZAp">
          <node concept="1PaTwC" id="7lmP5gAtYUC" role="1aUNEU">
            <node concept="3oM_SD" id="7lmP5gAtYUG" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="7lmP5gAtYUI" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="7lmP5gAtYUL" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7lmP5gAtYUP" role="1PaTwD">
              <property role="3oM_SC" value="session" />
            </node>
            <node concept="3oM_SD" id="7lmP5gAtYUU" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="7lmP5gAtYV0" role="1PaTwD">
              <property role="3oM_SC" value="extract" />
            </node>
            <node concept="3oM_SD" id="7lmP5gAtYV7" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7lmP5gAtYVf" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="7lmP5gAtYVo" role="1PaTwD">
              <property role="3oM_SC" value="consumer" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7lmP5gAtYW4" role="3cqZAp">
          <node concept="3cpWsn" id="7lmP5gAtYW5" role="3cpWs9">
            <property role="TrG5h" value="typeConsumer" />
            <node concept="3uibUv" id="7lmP5gAtYW2" role="1tU5fm">
              <ref role="3uigEE" to="82uw:~BiConsumer" resolve="BiConsumer" />
              <node concept="2sp9CU" id="7lmP5gAtYWC" role="11_B2D" />
              <node concept="3Tqbb2" id="7lmP5gAtYXg" role="11_B2D" />
            </node>
            <node concept="10Nm6u" id="7lmP5gAtYYm" role="33vP2m" />
          </node>
        </node>
        <node concept="3Aqczg" id="7lmP5gAtYZ1" role="3cqZAp">
          <node concept="3Aqt3T" id="7lmP5gAtYYZ" role="3Aqpz8">
            <ref role="3AqCNq" node="7lmP5gAtUEL" resolve="__recoverType__" />
            <node concept="37jhX" id="7lmP5gAtZSY" role="3AunhB">
              <node concept="3j8tct" id="7lmP5gAtZSW" role="37jj2">
                <ref role="3j8tcu" node="7lmP5gAtYUy" resolve="location" />
              </node>
            </node>
            <node concept="a7P8L" id="7lmP5gAu008" role="3AunhB">
              <ref role="a7OzE" node="7lmP5gAtZYI" resolve="TypeNode" />
            </node>
            <node concept="a7P8L" id="7lmP5gAu02I" role="3AunhB">
              <ref role="a7OzE" node="7lmP5gAtZZj" resolve="TypeTerm" />
            </node>
          </node>
        </node>
        <node concept="3Aqczg" id="7lmP5gAu0Ff" role="3cqZAp">
          <node concept="3wWvb2" id="7lmP5gAu0Fe" role="3Aqpz8">
            <node concept="2OqwBi" id="7lmP5gAu0FY" role="3wWo3s">
              <node concept="37vLTw" id="7lmP5gAu0FH" role="2Oq$k0">
                <ref role="3cqZAo" node="7lmP5gAtYW5" resolve="typeConsumer" />
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
      <node concept="3uniRu" id="7lmP5gAtZZi" role="3iJhzY">
        <node concept="aZer4" id="7lmP5gAtZZj" role="3XD1gS">
          <property role="TrG5h" value="TypeTerm" />
        </node>
        <node concept="32pEOW" id="7lmP5gAtZZy" role="3vLBG7" />
      </node>
    </node>
    <node concept="3iF_et" id="7lmP5gAtYUr" role="3iTdIJ">
      <property role="TrG5h" value="expectType" />
      <ref role="3iEmPG" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
  </node>
</model>

