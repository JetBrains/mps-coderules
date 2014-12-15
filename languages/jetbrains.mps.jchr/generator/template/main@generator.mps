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
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="msyo" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(MPS.Core/jetbrains.mps.util@java_stub)" />
    <import index="vgt0" ref="r:f36c95e5-e428-4945-91ae-1005e20c7971(jetbrains.mps.jchr.structure)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="w2rx" ref="f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime(jetbrains.mps.jchr.runtime/runtime@java_stub)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
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
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
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
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
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
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
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
            <node concept="2b32R4" id="5lJXKmGoa" role="lGtFl">
              <node concept="3JmXsc" id="5lJXKmGod" role="2P8S$">
                <node concept="3clFbS" id="5lJXKmGoe" role="2VODD2">
                  <node concept="3clFbF" id="5lJXKmGok" role="3cqZAp">
                    <node concept="2OqwBi" id="5lJXKmGof" role="3clFbG">
                      <node concept="3Tsc0h" id="5lJXKmGoi" role="2OqNvi">
                        <ref role="3TtcxE" to="vgt0:5lJXKlBV_" />
                      </node>
                      <node concept="30H73N" id="5lJXKmGoj" role="2Oq$k0" />
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
          <node concept="10Nm6u" id="5lJXKstPy" role="2U2pNA">
            <node concept="29HgVG" id="5lJXKsucq" role="lGtFl" />
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
          <node concept="3clFbF" id="5lJXKrO_X" role="3cqZAp">
            <node concept="2OqwBi" id="5lJXKrO_Y" role="3clFbG">
              <node concept="1UaxmW" id="5lJXKrO_Z" role="2Oq$k0">
                <node concept="37vLTw" id="5lJXKrOA0" role="1Ub_4B">
                  <ref role="3cqZAo" node="5lJXKrO_M" resolve="type" />
                </node>
                <node concept="1Yb3XT" id="5lJXKrOA1" role="1Ub_4A">
                  <property role="TrG5h" value="logical" />
                  <node concept="2DMOqp" id="5lJXKrOA2" role="1YbcFS">
                    <node concept="3uibUv" id="5lJXKrOA3" role="2DMOqq">
                      <ref role="3uigEE" to="w2rx:~Logical" resolve="Logical" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="5lJXKrOA4" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

