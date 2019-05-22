<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:38071b08-e9ac-4ec1-a326-62b7897beb22(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="2" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="69b8a993-9b87-4d96-bf0c-3559f4bb0c63" name="jetbrains.mps.lang.slanguage" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="zfi7" ref="r:39840d4e-f61c-4452-88c5-75b1eb10e892(jetbrains.mps.lang.typechecking.structure)" />
    <import index="psr6" ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.coderules.macro)" />
    <import index="ogv8" ref="r:c0702ee3-be79-48ac-aa39-b7cd0d895de6(jetbrains.mps.lang.coderules.generator.template.main@generator)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.coderules.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="fqlx" ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.coderules.aspect)" />
    <import index="cmcw" ref="r:def76fd6-1aa7-4c6c-9d77-632f565496a5(jetbrains.mps.lang.typechecking.plugin)" />
    <import index="ucur" ref="r:1dfaf07d-c77a-451e-91d3-b6f80f0f8508(jetbrains.mps.lang.descriptor.generator.template.main@generator)" />
    <import index="hypd" ref="r:aa31e43e-9240-4f4d-b6db-5c1c9a86c59e(jetbrains.mps.lang.project.structure)" />
    <import index="ba7m" ref="r:4c5ac278-3ad7-4902-ab86-6c60b350f168(jetbrains.mps.lang.aspect.generator.template.main@generator)" />
    <import index="u46i" ref="r:c2760840-3210-4ad4-9e64-a2dfd53620e1(jetbrains.mps.lang.typechecking.aspect)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="z8tp" ref="r:5bfbd177-208e-4d27-b74c-2ebd2a92eb80(jetbrains.mps.lang.smodel.types.structure)" />
    <import index="9x2e" ref="r:0730b0d1-7e2f-4982-aac3-8069c5060a9c(jetbrains.mps.lang.typesystem2.reporting)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="1g4i" ref="r:102178da-67ba-49f6-ba73-eb29fa352fe7(jetbrains.mps.coderules.typechecking)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.coderules.typechecking.service)" />
  </imports>
  <registry>
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
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
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1202776937179" name="jetbrains.mps.lang.generator.structure.AbandonInput_RuleConsequence" flags="lg" index="b5Tf3" />
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167088157977" name="createRootRule" index="2VS0gm" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <reference id="1112820671508" name="modifiedSwitch" index="phYkn" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="5005282049925926521" name="jetbrains.mps.lang.generator.structure.TemplateArgumentParameterExpression" flags="nn" index="v3LJS">
        <reference id="5005282049925926522" name="parameter" index="v3LJV" />
      </concept>
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
        <child id="1722980698497626405" name="actualArgument" index="v9R3O" />
      </concept>
      <concept id="1167087469898" name="jetbrains.mps.lang.generator.structure.CreateRootRule" flags="lg" index="2VPoh5">
        <reference id="1167087469901" name="templateNode" index="2VPoh2" />
        <child id="1167087469900" name="conditionFunction" index="2VPoh3" />
      </concept>
      <concept id="1167087518662" name="jetbrains.mps.lang.generator.structure.CreateRootRule_Condition" flags="in" index="2VP$b9" />
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
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
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="982871510064032177" name="jetbrains.mps.lang.generator.structure.IParameterizedTemplate" flags="ng" index="1s_3nv">
        <child id="982871510064032342" name="parameter" index="1s_3oS" />
      </concept>
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
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
    <language id="69b8a993-9b87-4d96-bf0c-3559f4bb0c63" name="jetbrains.mps.lang.slanguage">
      <concept id="2030416617761226491" name="jetbrains.mps.lang.slanguage.structure.Model_IsAspectOperation" flags="nn" index="3zA4fs">
        <reference id="2030416617761226680" name="aspect" index="3zA4av" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1217889960776" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_UserObjectAccessBase" flags="nn" index="2fTw9j">
        <child id="1217890689512" name="userKey" index="2fWi3N" />
      </concept>
      <concept id="1217894033795" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_TransientObjectAccess" flags="nn" index="2g92yo" />
      <concept id="1229477454423" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalCopiedInputByOutput" flags="nn" index="12$id9">
        <child id="1229477520175" name="outputNode" index="12$y8L" />
      </concept>
      <concept id="1216860049627" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput" flags="nn" index="1iwH70">
        <reference id="1216860049628" name="label" index="1iwH77" />
        <child id="1216860049632" name="inputNode" index="1iwH7V" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
      <concept id="1217026863835" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalInputModel" flags="nn" index="1st3f0" />
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1219352745532" name="jetbrains.mps.lang.smodel.structure.NodeRefExpression" flags="nn" index="3B5_sB">
        <reference id="1219352800908" name="referentNode" index="3B5MYn" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="role_DebugInfo" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="NKt6ynvIZQ">
    <property role="TrG5h" value="main" />
  </node>
  <node concept="jVnub" id="7km57PkguX9">
    <property role="TrG5h" value="instantiate_aspect_descriptor" />
    <property role="3GE5qa" value="aspect" />
    <ref role="phYkn" to="ucur:1KHvivZJsL7" resolve="InstantiateAspectDescriptor" />
    <node concept="3aamgX" id="7km57PkgvmN" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="hypd:5xDtKQA7vSB" resolve="ModelReference" />
      <node concept="j$656" id="7km57Pkgww4" role="1lVwrX">
        <ref role="v9R2y" to="ba7m:4WrOGsLZ$AX" resolve="GeneratedClassInstantiation" />
        <node concept="3cpWs3" id="2aiW7BvqBQ" role="v9R3O">
          <node concept="2OqwBi" id="7km57Pkgw_v" role="3uHU7B">
            <node concept="v3LJS" id="7km57Pkgwwc" role="2Oq$k0">
              <ref role="v3LJV" node="7km57Pkgvk2" resolve="model" />
            </node>
            <node concept="LkI2h" id="7km57PkgwKW" role="2OqNvi" />
          </node>
          <node concept="Xl_RD" id="2aiW7Bvrvo" role="3uHU7w">
            <property role="Xl_RC" value=".TypesAspectDescriptor" />
          </node>
        </node>
        <node concept="3B5_sB" id="2hteS6Cje6U" role="v9R3O">
          <ref role="3B5MYn" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
        </node>
      </node>
      <node concept="30G5F_" id="7km57PkgvmR" role="30HLyM">
        <node concept="3clFbS" id="7km57PkgvmS" role="2VODD2">
          <node concept="3clFbF" id="2hteS6CjfwK" role="3cqZAp">
            <node concept="2OqwBi" id="7km57PkuzZJ" role="3clFbG">
              <node concept="v3LJS" id="7km57PkuzZK" role="2Oq$k0">
                <ref role="v3LJV" node="7km57Pkgvk2" resolve="model" />
              </node>
              <node concept="3zA4fs" id="7km57PkuzZL" role="2OqNvi">
                <ref role="3zA4av" to="cmcw:7km57PkcIgQ" resolve="types" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N15co" id="7km57Pkgvk2" role="1s_3oS">
      <property role="TrG5h" value="model" />
      <node concept="H_c77" id="7km57PkgvmI" role="1N15GL" />
    </node>
  </node>
  <node concept="bUwia" id="7km57PkeXwx">
    <property role="TrG5h" value="aspect" />
    <property role="3GE5qa" value="aspect" />
    <node concept="2VPoh5" id="7km57PkeXwI" role="2VS0gm">
      <ref role="2VPoh2" to="ogv8:7km57PkeUQV" resolve="AspectDescriptor" />
      <node concept="2VP$b9" id="7km57PkeXwK" role="2VPoh3">
        <node concept="3clFbS" id="7km57PkeXwL" role="2VODD2">
          <node concept="3clFbF" id="78H58odLysS" role="3cqZAp">
            <node concept="37vLTI" id="78H58odL$5P" role="3clFbG">
              <node concept="2OqwBi" id="78H58odLyFa" role="37vLTJ">
                <node concept="1iwH7S" id="78H58odLysQ" role="2Oq$k0" />
                <node concept="2g92yo" id="78H58odLyR4" role="2OqNvi">
                  <node concept="Xl_RD" id="78H58odLvyN" role="2fWi3N">
                    <property role="Xl_RC" value="CODERULES_ASPECT_RUNTIME" />
                  </node>
                </node>
              </node>
              <node concept="2tJFMh" id="78H58odQ5Tl" role="37vLTx">
                <node concept="ZC_QK" id="78H58odQ61O" role="2tJFKM">
                  <ref role="2aWVGs" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7km57PkeXBU" role="3cqZAp">
            <node concept="2OqwBi" id="7km57PkeYm$" role="3clFbG">
              <node concept="2OqwBi" id="7km57PkeXPH" role="2Oq$k0">
                <node concept="1iwH7S" id="7km57PkeXBT" role="2Oq$k0" />
                <node concept="1st3f0" id="7km57PkeY4N" role="2OqNvi" />
              </node>
              <node concept="3zA4fs" id="7km57PkeZxH" role="2OqNvi">
                <ref role="3zA4av" to="cmcw:7km57PkcIgQ" resolve="types" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="bUwia" id="oI9YrdoXd">
    <property role="TrG5h" value="reporting" />
    <node concept="3aamgX" id="oI9YrDh3R" role="3acgRq">
      <ref role="30HIoZ" to="z8tp:6nJA6bpveD5" resolve="SNodeTypeOperation" />
      <node concept="b5Tf3" id="oI9YrDhNx" role="1lVwrX" />
    </node>
    <node concept="3aamgX" id="oI9YrdoXe" role="3acgRq">
      <ref role="30HIoZ" to="tpee:hqOqwz4" resolve="DotExpression" />
      <node concept="1Koe21" id="oI9YrdoXi" role="1lVwrX">
        <node concept="3clFb_" id="oI9YrdoXo" role="1Koe22">
          <property role="TrG5h" value="context" />
          <node concept="3Tm6S6" id="oI9YrdoXy" role="1B3o_S" />
          <node concept="3cqZAl" id="oI9YrdoXG" role="3clF45" />
          <node concept="3clFbS" id="oI9YrdoYk" role="3clF47">
            <node concept="3clFbF" id="oI9Yrdp0J" role="3cqZAp">
              <node concept="2OqwBi" id="oI9YrdpxT" role="3clFbG">
                <node concept="2OqwBi" id="oI9Yrdpd3" role="2Oq$k0">
                  <node concept="2YIFZM" id="oI9Yrdpd4" role="2Oq$k0">
                    <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                    <ref role="37wK5l" to="w7la:~EvaluationSession.current()" resolve="current" />
                  </node>
                  <node concept="liA8E" id="3GEs5q_3xVx" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationSession.parameter(jetbrains.mps.logic.reactor.evaluation.EvaluationSession$ParameterKey)" resolve="parameter" />
                    <node concept="2YIFZM" id="3GEs5q_3C7H" role="37wK5m">
                      <ref role="37wK5l" to="w7la:~EvaluationSession$ParameterKey.of(java.lang.String,java.lang.Class)" resolve="of" />
                      <ref role="1Pybhc" to="w7la:~EvaluationSession$ParameterKey" resolve="EvaluationSession.ParameterKey" />
                      <node concept="Xl_RD" id="3GEs5q_3Qp$" role="37wK5m">
                        <property role="Xl_RC" value="reporting" />
                      </node>
                      <node concept="3VsKOn" id="3GEs5q_3JtQ" role="37wK5m">
                        <ref role="3VsUkX" to="9x2e:oI9YrIZeS" resolve="Reporting" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="oI9YrdpMV" role="2OqNvi">
                  <ref role="37wK5l" to="9x2e:oI9YrIZnU" resolve="assignType" />
                  <node concept="10Nm6u" id="oI9YrdpSj" role="37wK5m">
                    <node concept="29HgVG" id="oI9Yrdq5a" role="lGtFl">
                      <node concept="3NFfHV" id="oI9Yrdq6g" role="3NFExx">
                        <node concept="3clFbS" id="oI9Yrdq6h" role="2VODD2">
                          <node concept="3clFbF" id="oI9Yrdqga" role="3cqZAp">
                            <node concept="2OqwBi" id="oI9YrDiN5" role="3clFbG">
                              <node concept="1PxgMI" id="oI9YrDis6" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="oI9YrDiyk" role="3oSUPX">
                                  <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                                </node>
                                <node concept="2OqwBi" id="oI9YrdqqW" role="1m5AlR">
                                  <node concept="30H73N" id="oI9Yrdqg9" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="oI9YrhRpO" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3TrEf2" id="oI9YrDjih" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="oI9YrdpWG" role="37wK5m">
                    <node concept="29HgVG" id="oI9YrdqWM" role="lGtFl">
                      <node concept="3NFfHV" id="oI9Yrdr5Y" role="3NFExx">
                        <node concept="3clFbS" id="oI9Yrdr5Z" role="2VODD2">
                          <node concept="3clFbF" id="oI9Yrdrm8" role="3cqZAp">
                            <node concept="2OqwBi" id="oI9YrdrAN" role="3clFbG">
                              <node concept="1PxgMI" id="oI9YrhSPv" role="2Oq$k0">
                                <node concept="chp4Y" id="oI9YrhSWB" role="3oSUPX">
                                  <ref role="cht4Q" to="zfi7:oI9Yrc9wC" resolve="SNodeSetTypeOperation" />
                                </node>
                                <node concept="2OqwBi" id="oI9YrhRJa" role="1m5AlR">
                                  <node concept="30H73N" id="oI9Yrdrm7" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="oI9YrhSca" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3TrEf2" id="oI9YrhTh$" role="2OqNvi">
                                <ref role="3Tt5mk" to="zfi7:oI9Yrc9Ch" resolve="typeExpr" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="oI9Yrdq3d" role="lGtFl" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="oI9YrhOAg" role="30HLyM">
        <node concept="3clFbS" id="oI9YrhOAh" role="2VODD2">
          <node concept="3clFbF" id="oI9YrhOQs" role="3cqZAp">
            <node concept="2OqwBi" id="oI9YrhPLM" role="3clFbG">
              <node concept="2OqwBi" id="oI9YrhP4Z" role="2Oq$k0">
                <node concept="30H73N" id="oI9YrhOQr" role="2Oq$k0" />
                <node concept="3TrEf2" id="oI9YrhPmb" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                </node>
              </node>
              <node concept="1mIQ4w" id="oI9YrhQ9K" role="2OqNvi">
                <node concept="chp4Y" id="oI9YrhQl5" role="cj9EA">
                  <ref role="cht4Q" to="zfi7:oI9Yrc9wC" resolve="SNodeSetTypeOperation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="oI9YrWegi" role="3acgRq">
      <ref role="30HIoZ" to="tpee:hqOqwz4" resolve="DotExpression" />
      <node concept="14YyZ8" id="oI9YrWeEj" role="1lVwrX">
        <node concept="14ZrTv" id="oI9YrWeRH" role="14ZwWg">
          <node concept="30G5F_" id="oI9YrWeRI" role="150hEN">
            <node concept="3clFbS" id="oI9YrWeRJ" role="2VODD2">
              <node concept="3clFbF" id="oI9YrWgo$" role="3cqZAp">
                <node concept="2OqwBi" id="oI9YrWhEN" role="3clFbG">
                  <node concept="2OqwBi" id="oI9YrWgB7" role="2Oq$k0">
                    <node concept="2Xjw5R" id="oI9YrWh21" role="2OqNvi">
                      <node concept="3gmYPX" id="oI9YrWhba" role="1xVPHs">
                        <node concept="3gn64h" id="oI9YrWhnj" role="3gmYPZ">
                          <ref role="3gnhBz" to="wq2x:36tQV5AmIsB" resolve="ConstraintRule" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="oI9Ys7DNw" role="2Oq$k0">
                      <node concept="1iwH7S" id="oI9Ys7DNx" role="2Oq$k0" />
                      <node concept="12$id9" id="oI9Ys7DNy" role="2OqNvi">
                        <node concept="30H73N" id="oI9Ys7DNz" role="12$y8L" />
                      </node>
                    </node>
                  </node>
                  <node concept="3x8VRR" id="oI9YrWi3M" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Koe21" id="oI9YrWf2l" role="150oIE">
            <node concept="3clFb_" id="oI9YrWf2m" role="1Koe22">
              <property role="TrG5h" value="context" />
              <node concept="3Tm6S6" id="oI9YrWf2n" role="1B3o_S" />
              <node concept="3cqZAl" id="oI9YrWf2o" role="3clF45" />
              <node concept="3clFbS" id="oI9YrWf2p" role="3clF47">
                <node concept="3clFbF" id="oI9YrWf2q" role="3cqZAp">
                  <node concept="2OqwBi" id="oI9YrWf2r" role="3clFbG">
                    <node concept="liA8E" id="oI9YrWf2y" role="2OqNvi">
                      <ref role="37wK5l" to="9x2e:oI9YrIZnU" resolve="assignType" />
                      <node concept="10Nm6u" id="oI9YrWf2z" role="37wK5m">
                        <node concept="29HgVG" id="oI9YrWf2$" role="lGtFl">
                          <node concept="3NFfHV" id="oI9YrWf2_" role="3NFExx">
                            <node concept="3clFbS" id="oI9YrWf2A" role="2VODD2">
                              <node concept="3clFbF" id="oI9YrWf2B" role="3cqZAp">
                                <node concept="2OqwBi" id="oI9YrWf2C" role="3clFbG">
                                  <node concept="1PxgMI" id="oI9YrWf2D" role="2Oq$k0">
                                    <property role="1BlNFB" value="true" />
                                    <node concept="chp4Y" id="oI9YrWf2E" role="3oSUPX">
                                      <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                                    </node>
                                    <node concept="2OqwBi" id="oI9YrWf2F" role="1m5AlR">
                                      <node concept="30H73N" id="oI9YrWf2G" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="oI9YrWf2H" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="oI9YrWf2I" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="10Nm6u" id="oI9YrWf2J" role="37wK5m">
                        <node concept="29HgVG" id="oI9YrWf2K" role="lGtFl">
                          <node concept="3NFfHV" id="oI9YrWf2L" role="3NFExx">
                            <node concept="3clFbS" id="oI9YrWf2M" role="2VODD2">
                              <node concept="3clFbF" id="oI9YrWf2N" role="3cqZAp">
                                <node concept="2OqwBi" id="oI9YrWf2O" role="3clFbG">
                                  <node concept="1PxgMI" id="oI9YrWf2P" role="2Oq$k0">
                                    <node concept="chp4Y" id="oI9YrWf2Q" role="3oSUPX">
                                      <ref role="cht4Q" to="zfi7:oI9Yrc9wC" resolve="SNodeSetTypeOperation" />
                                    </node>
                                    <node concept="2OqwBi" id="oI9YrWf2R" role="1m5AlR">
                                      <node concept="30H73N" id="oI9YrWf2S" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="oI9YrWf2T" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="oI9YrWf2U" role="2OqNvi">
                                    <ref role="3Tt5mk" to="zfi7:oI9Yrc9Ch" resolve="typeExpr" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="raruj" id="oI9YrWf2V" role="lGtFl" />
                    <node concept="2OqwBi" id="oI9YrWf2v" role="2Oq$k0">
                      <node concept="2YIFZM" id="oI9YrWf2w" role="2Oq$k0">
                        <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                        <ref role="37wK5l" to="w7la:~EvaluationSession.current()" resolve="current" />
                      </node>
                      <node concept="liA8E" id="3GEs5q_4fTI" role="2OqNvi">
                        <ref role="37wK5l" to="w7la:~EvaluationSession.parameter(jetbrains.mps.logic.reactor.evaluation.EvaluationSession$ParameterKey)" resolve="parameter" />
                        <node concept="2YIFZM" id="3GEs5q_4fTJ" role="37wK5m">
                          <ref role="1Pybhc" to="w7la:~EvaluationSession$ParameterKey" resolve="EvaluationSession.ParameterKey" />
                          <ref role="37wK5l" to="w7la:~EvaluationSession$ParameterKey.of(java.lang.String,java.lang.Class)" resolve="of" />
                          <node concept="Xl_RD" id="3GEs5q_4fTK" role="37wK5m">
                            <property role="Xl_RC" value="reporting" />
                          </node>
                          <node concept="3VsKOn" id="3GEs5q_4fTL" role="37wK5m">
                            <ref role="3VsUkX" to="9x2e:oI9YrIZeS" resolve="Reporting" />
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
        <node concept="1Koe21" id="oI9YrWidk" role="14YRTM">
          <node concept="3clFb_" id="oI9YrWidl" role="1Koe22">
            <property role="TrG5h" value="context" />
            <node concept="37vLTG" id="oI9YrWqaC" role="3clF46">
              <property role="TrG5h" value="session" />
              <node concept="3uibUv" id="oI9YrWqaD" role="1tU5fm">
                <ref role="3uigEE" to="i348:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
              </node>
            </node>
            <node concept="3Tm6S6" id="oI9YrWidm" role="1B3o_S" />
            <node concept="3cqZAl" id="oI9YrWidn" role="3clF45" />
            <node concept="3clFbS" id="oI9YrWido" role="3clF47">
              <node concept="3clFbF" id="oI9YrWidp" role="3cqZAp">
                <node concept="2OqwBi" id="oI9YrWidq" role="3clFbG">
                  <node concept="2YIFZM" id="oI9YrWiD0" role="2Oq$k0">
                    <ref role="1Pybhc" to="9x2e:oI9YrIZTG" resolve="ReportingFrom" />
                    <ref role="37wK5l" to="9x2e:oI9YrJ1oq" resolve="application" />
                    <node concept="37vLTw" id="oI9YrWqx1" role="37wK5m">
                      <ref role="3cqZAo" node="oI9YrWqaC" resolve="session" />
                      <node concept="1ZhdrF" id="oI9YrWqGh" role="lGtFl">
                        <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                        <property role="2qtEX8" value="variableDeclaration" />
                        <node concept="3$xsQk" id="oI9YrWqGi" role="3$ytzL">
                          <node concept="3clFbS" id="oI9YrWqGj" role="2VODD2">
                            <node concept="3clFbF" id="oI9YrWsWU" role="3cqZAp">
                              <node concept="2OqwBi" id="oI9YrWsWV" role="3clFbG">
                                <node concept="1iwH7S" id="oI9YrWsWW" role="2Oq$k0" />
                                <node concept="1iwH70" id="oI9YrWsWX" role="2OqNvi">
                                  <ref role="1iwH77" to="ogv8:429xoypVg6q" resolve="apply_session_parameter" />
                                  <node concept="2OqwBi" id="oI9YrWsWY" role="1iwH7V">
                                    <node concept="30H73N" id="oI9YrWsWZ" role="2Oq$k0" />
                                    <node concept="2Xjw5R" id="oI9YrWsX0" role="2OqNvi">
                                      <node concept="1xMEDy" id="oI9YrWsX1" role="1xVPHs">
                                        <node concept="chp4Y" id="oI9YrWsX2" role="ri$Ld">
                                          <ref role="cht4Q" to="wq2x:36tQV5AmIsf" resolve="RuleTemplate" />
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
                  <node concept="liA8E" id="oI9YrWidv" role="2OqNvi">
                    <ref role="37wK5l" to="9x2e:oI9YrIZnU" resolve="assignType" />
                    <node concept="10Nm6u" id="oI9YrWidw" role="37wK5m">
                      <node concept="29HgVG" id="oI9YrWidx" role="lGtFl">
                        <node concept="3NFfHV" id="oI9YrWidy" role="3NFExx">
                          <node concept="3clFbS" id="oI9YrWidz" role="2VODD2">
                            <node concept="3clFbF" id="oI9YrWid$" role="3cqZAp">
                              <node concept="2OqwBi" id="oI9YrWid_" role="3clFbG">
                                <node concept="1PxgMI" id="oI9YrWidA" role="2Oq$k0">
                                  <property role="1BlNFB" value="true" />
                                  <node concept="chp4Y" id="oI9YrWidB" role="3oSUPX">
                                    <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                                  </node>
                                  <node concept="2OqwBi" id="oI9YrWidC" role="1m5AlR">
                                    <node concept="30H73N" id="oI9YrWidD" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="oI9YrWidE" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="oI9YrWidF" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="10Nm6u" id="oI9YrWidG" role="37wK5m">
                      <node concept="29HgVG" id="oI9YrWidH" role="lGtFl">
                        <node concept="3NFfHV" id="oI9YrWidI" role="3NFExx">
                          <node concept="3clFbS" id="oI9YrWidJ" role="2VODD2">
                            <node concept="3clFbF" id="oI9YrWidK" role="3cqZAp">
                              <node concept="2OqwBi" id="oI9YrWidL" role="3clFbG">
                                <node concept="1PxgMI" id="oI9YrWidM" role="2Oq$k0">
                                  <node concept="chp4Y" id="oI9YrWidN" role="3oSUPX">
                                    <ref role="cht4Q" to="zfi7:oI9Yrc9wC" resolve="SNodeSetTypeOperation" />
                                  </node>
                                  <node concept="2OqwBi" id="oI9YrWidO" role="1m5AlR">
                                    <node concept="30H73N" id="oI9YrWidP" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="oI9YrWidQ" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="oI9YrWidR" role="2OqNvi">
                                  <ref role="3Tt5mk" to="zfi7:oI9Yrc9Ch" resolve="typeExpr" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="raruj" id="oI9YrWidS" role="lGtFl" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="oI9YrWegU" role="30HLyM">
        <node concept="3clFbS" id="oI9YrWegV" role="2VODD2">
          <node concept="3clFbF" id="oI9YrWegW" role="3cqZAp">
            <node concept="2OqwBi" id="oI9YrWegX" role="3clFbG">
              <node concept="2OqwBi" id="oI9YrWegY" role="2Oq$k0">
                <node concept="30H73N" id="oI9YrWegZ" role="2Oq$k0" />
                <node concept="3TrEf2" id="oI9YrWeh0" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                </node>
              </node>
              <node concept="1mIQ4w" id="oI9YrWeh1" role="2OqNvi">
                <node concept="chp4Y" id="oI9YrWeh2" role="cj9EA">
                  <ref role="cht4Q" to="zfi7:oI9Yrc9wC" resolve="SNodeSetTypeOperation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

