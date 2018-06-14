<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7be25111-db66-40e7-be84-6d98fca6b94a(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="69b8a993-9b87-4d96-bf0c-3559f4bb0c63" name="jetbrains.mps.lang.slanguage" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="z0r2" ref="r:9d6fe210-6699-4ffe-b3e4-567da3cd1f1d(jetbrains.mps.lang.controlflow.structure)" />
    <import index="ba7m" ref="r:4c5ac278-3ad7-4902-ab86-6c60b350f168(jetbrains.mps.lang.aspect.generator.template.main@generator)" />
    <import index="ogv8" ref="r:c0702ee3-be79-48ac-aa39-b7cd0d895de6(jetbrains.mps.lang.coderules.generator.template.main@generator)" />
    <import index="hypd" ref="r:aa31e43e-9240-4f4d-b6db-5c1c9a86c59e(jetbrains.mps.lang.project.structure)" />
    <import index="ucur" ref="r:1dfaf07d-c77a-451e-91d3-b6f80f0f8508(jetbrains.mps.lang.descriptor.generator.template.main@generator)" />
    <import index="vrzs" ref="r:bf5143f7-9856-43e8-8ae7-57cecc1fe6a9(jetbrains.mps.lang.controlflow.aspect)" />
    <import index="w57s" ref="r:1e2f03b6-f778-4cc1-92d4-edb9161f4aa6(jetbrains.mps.lang.controlflow.plugin)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
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
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167088157977" name="createRootRule" index="2VS0gm" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <reference id="1112820671508" name="modifiedSwitch" index="phYkn" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
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
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="982871510064032177" name="jetbrains.mps.lang.generator.structure.IParameterizedTemplate" flags="ng" index="1s_3nv">
        <child id="982871510064032342" name="parameter" index="1s_3oS" />
      </concept>
      <concept id="1805153994415891174" name="jetbrains.mps.lang.generator.structure.TemplateParameterDeclaration" flags="ng" index="1N15co">
        <child id="1805153994415893199" name="type" index="1N15GL" />
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
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
      <concept id="1217026863835" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalInputModel" flags="nn" index="1st3f0" />
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
      <concept id="1219352745532" name="jetbrains.mps.lang.smodel.structure.NodeRefExpression" flags="nn" index="3B5_sB">
        <reference id="1219352800908" name="referentNode" index="3B5MYn" />
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
  </registry>
  <node concept="bUwia" id="78H58oe2rze">
    <property role="TrG5h" value="main" />
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
                <node concept="ZC_QK" id="78H58oe2APM" role="2tJFKM">
                  <ref role="2aWVGs" to="vrzs:7km57Pkjxf4" resolve="ControlflowAspect" />
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
                <ref role="3zA4av" to="w57s:7km57PkcIgQ" resolve="controlflow" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
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
          <ref role="3B5MYn" to="vrzs:7km57Pkjxf4" resolve="ControlflowAspect" />
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
                <ref role="3zA4av" to="w57s:7km57PkcIgQ" resolve="controlflow" />
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
</model>

