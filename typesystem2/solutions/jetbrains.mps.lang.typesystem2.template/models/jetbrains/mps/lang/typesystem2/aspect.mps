<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.typesystem2.aspect)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
  </languages>
  <imports>
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="psr6" ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.typesystem2.macro)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.typesystem2.rule)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="7km57Pkjxf4">
    <property role="TrG5h" value="TypeAspectDescriptor" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="2hteS6CndfK" role="jymVt" />
    <node concept="2YIFZL" id="2hteS6Cndm6" role="jymVt">
      <property role="TrG5h" value="forLanguage" />
      <node concept="37vLTG" id="2hteS6Cndm7" role="3clF46">
        <property role="TrG5h" value="slang" />
        <node concept="3uibUv" id="2hteS6Cndm8" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="37vLTG" id="2hteS6Cndm9" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3GlpCDS_m$F" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3uibUv" id="2hteS6Cndt5" role="3clF45">
        <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
      </node>
      <node concept="3Tm1VV" id="2hteS6Cndmc" role="1B3o_S" />
      <node concept="3clFbS" id="2hteS6Cndmd" role="3clF47">
        <node concept="3cpWs8" id="2hteS6Cndme" role="3cqZAp">
          <node concept="3cpWsn" id="2hteS6Cndmf" role="3cpWs9">
            <property role="TrG5h" value="langrt" />
            <node concept="3uibUv" id="2hteS6Cndmg" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
            <node concept="2OqwBi" id="2hteS6Cndmh" role="33vP2m">
              <node concept="2YIFZM" id="2hteS6Cndmi" role="2Oq$k0">
                <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository):jetbrains.mps.smodel.language.LanguageRegistry" resolve="getInstance" />
                <node concept="37vLTw" id="2hteS6Cndmk" role="37wK5m">
                  <ref role="3cqZAo" node="2hteS6Cndm9" resolve="repository" />
                </node>
              </node>
              <node concept="liA8E" id="2hteS6Cndmm" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage):jetbrains.mps.smodel.language.LanguageRuntime" resolve="getLanguage" />
                <node concept="37vLTw" id="2hteS6Cndmn" role="37wK5m">
                  <ref role="3cqZAo" node="2hteS6Cndm7" resolve="slang" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2hteS6Cndmo" role="3cqZAp">
          <node concept="3clFbS" id="2hteS6Cndmp" role="3clFbx">
            <node concept="3cpWs6" id="2hteS6Cndmq" role="3cqZAp">
              <node concept="10Nm6u" id="2hteS6Cndmr" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="2hteS6Cndms" role="3clFbw">
            <node concept="10Nm6u" id="2hteS6Cndmt" role="3uHU7w" />
            <node concept="37vLTw" id="2hteS6Cndmu" role="3uHU7B">
              <ref role="3cqZAo" node="2hteS6Cndmf" resolve="langrt" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2hteS6CndyK" role="3cqZAp">
          <node concept="2OqwBi" id="2hteS6CndB7" role="3clFbG">
            <node concept="37vLTw" id="2hteS6CndB8" role="2Oq$k0">
              <ref role="3cqZAo" node="2hteS6Cndmf" resolve="langrt" />
            </node>
            <node concept="liA8E" id="2hteS6CndB9" role="2OqNvi">
              <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class):jetbrains.mps.smodel.runtime.ILanguageAspect" resolve="getAspect" />
              <node concept="3VsKOn" id="2hteS6CndBa" role="37wK5m">
                <ref role="3VsUkX" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6UWSvq5bjXg" role="jymVt" />
    <node concept="2YIFZL" id="6UWSvq5bk3i" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="forLanguageDesc" />
      <node concept="37vLTG" id="6UWSvq5bk7O" role="3clF46">
        <property role="TrG5h" value="langrt" />
        <node concept="3uibUv" id="6UWSvq5bk8e" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="3clFbS" id="6UWSvq5bk0u" role="3clF47">
        <node concept="3clFbF" id="6UWSvq5bk8J" role="3cqZAp">
          <node concept="2OqwBi" id="6UWSvq5bk8K" role="3clFbG">
            <node concept="37vLTw" id="6UWSvq5bkfV" role="2Oq$k0">
              <ref role="3cqZAo" node="6UWSvq5bk7O" resolve="langrt" />
            </node>
            <node concept="liA8E" id="6UWSvq5bk8M" role="2OqNvi">
              <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class):jetbrains.mps.smodel.runtime.ILanguageAspect" resolve="getAspect" />
              <node concept="3VsKOn" id="6UWSvq5bk8N" role="37wK5m">
                <ref role="3VsUkX" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6UWSvq5bk65" role="3clF45">
        <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
      </node>
      <node concept="3Tm1VV" id="6UWSvq5bk0t" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7km57Pkjxhg" role="jymVt" />
    <node concept="3clFb_" id="2hteS6ClmbE" role="jymVt">
      <property role="TrG5h" value="createMacroManifest" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="2hteS6ClmeA" role="3clF45">
        <ref role="3uigEE" to="psr6:2N2MQGCMVqD" resolve="AbstractMacroManifest" />
      </node>
      <node concept="3Tm1VV" id="2hteS6ClmbH" role="1B3o_S" />
      <node concept="3clFbS" id="2hteS6ClmbI" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2hteS6Clmfw" role="jymVt" />
    <node concept="3clFb_" id="2hteS6ClmfS" role="jymVt">
      <property role="TrG5h" value="createRuleManifest" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="2hteS6Clmgy" role="3clF45">
        <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
      </node>
      <node concept="3Tm1VV" id="2hteS6ClmfV" role="1B3o_S" />
      <node concept="3clFbS" id="2hteS6ClmfW" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2hteS6Cleqc" role="jymVt" />
    <node concept="3Tm1VV" id="7km57Pkjxf5" role="1B3o_S" />
    <node concept="3uibUv" id="7km57PkjxgV" role="EKbjA">
      <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
    </node>
  </node>
</model>

