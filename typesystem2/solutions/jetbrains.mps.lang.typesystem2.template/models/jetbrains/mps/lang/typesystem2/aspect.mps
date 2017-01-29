<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.typesystem2.aspect)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="4" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
  </languages>
  <imports>
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="psr6" ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.typesystem2.type)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.typesystem2.template)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="zx3l" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.core(jetbrains.mps.logic.reactor/)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.treeform)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
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
    <node concept="2tJIrI" id="7km57Pkjxhg" role="jymVt" />
    <node concept="3clFb_" id="2hteS6ClmbE" role="jymVt">
      <property role="TrG5h" value="createTypeManifest" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="2hteS6ClmeA" role="3clF45">
        <ref role="3uigEE" to="psr6:2N2MQGCMVqD" resolve="AbstractTypeManifest" />
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
  <node concept="312cEu" id="1hX44vNlSIA">
    <property role="TrG5h" value="TypeTemplateCollection" />
    <node concept="2tJIrI" id="1hX44vNlSNY" role="jymVt" />
    <node concept="3clFbW" id="1hX44vNlSOK" role="jymVt">
      <node concept="3cqZAl" id="1hX44vNlSOM" role="3clF45" />
      <node concept="3Tm1VV" id="1hX44vNlSON" role="1B3o_S" />
      <node concept="3clFbS" id="1hX44vNlSOO" role="3clF47">
        <node concept="3clFbF" id="1hX44vNniCn" role="3cqZAp">
          <node concept="37vLTI" id="1hX44vNniCp" role="3clFbG">
            <node concept="2OqwBi" id="1hX44vNniCt" role="37vLTJ">
              <node concept="Xjq3P" id="1hX44vNniCw" role="2Oq$k0" />
              <node concept="2OwXpG" id="1hX44vNniCs" role="2OqNvi">
                <ref role="2Oxat5" node="1hX44vNniCj" resolve="typeManifest" />
              </node>
            </node>
            <node concept="37vLTw" id="1hX44vNniCx" role="37vLTx">
              <ref role="3cqZAo" node="1hX44vNlSPE" resolve="typeManifest" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1hX44vNnpfY" role="3cqZAp">
          <node concept="1rXfSq" id="1hX44vNnpfX" role="3clFbG">
            <ref role="37wK5l" node="1hX44vNnpfT" resolve="collectTypes" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1hX44vNlSPE" role="3clF46">
        <property role="TrG5h" value="typeManifest" />
        <node concept="3uibUv" id="1hX44vNlSPD" role="1tU5fm">
          <ref role="3uigEE" to="psr6:2N2MQGCMVqD" resolve="AbstractTypeManifest" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4JJCDIn5EFu" role="jymVt" />
    <node concept="3clFb_" id="4JJCDIn5F0n" role="jymVt">
      <property role="TrG5h" value="typeTables" />
      <node concept="3vKaQO" id="4JJCDIn5Foj" role="3clF45">
        <node concept="3uibUv" id="4JJCDIn5FCm" role="3O5elw">
          <ref role="3uigEE" to="psr6:1pPth$m7IVF" resolve="AbstractTypeTable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4JJCDIn5F0q" role="1B3o_S" />
      <node concept="3clFbS" id="4JJCDIn5F0r" role="3clF47">
        <node concept="3clFbF" id="4JJCDIn5FW$" role="3cqZAp">
          <node concept="37vLTw" id="4JJCDIn5FWz" role="3clFbG">
            <ref role="3cqZAo" node="4JJCDImRYzW" resolve="typeTables" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1hX44vNlSO3" role="jymVt" />
    <node concept="3clFb_" id="4nxCIBqy$vr" role="jymVt">
      <property role="TrG5h" value="forConcept" />
      <node concept="37vLTG" id="4nxCIBqyARP" role="3clF46">
        <property role="TrG5h" value="typeConcept" />
        <node concept="3bZ5Sz" id="4nxCIBqyBgc" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4nxCIBqy_HE" role="3clF45">
        <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
        <node concept="16syzq" id="1eKXYsjIcB2" role="11_B2D">
          <ref role="16sUi3" node="1eKXYsjIb$d" resolve="Cfg" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4nxCIBqy$vu" role="1B3o_S" />
      <node concept="3clFbS" id="4nxCIBqy$vv" role="3clF47">
        <node concept="3SKdUt" id="1L74NXGis3H" role="3cqZAp">
          <node concept="3SKdUq" id="1L74NXGis3I" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: load the correct typetable!!!" />
          </node>
        </node>
        <node concept="3clFbF" id="1eKXYsjI8s4" role="3cqZAp">
          <node concept="2OqwBi" id="1eKXYsjIasl" role="3clFbG">
            <node concept="2OqwBi" id="1eKXYsjI99Y" role="2Oq$k0">
              <node concept="37vLTw" id="1eKXYsjI8s2" role="2Oq$k0">
                <ref role="3cqZAo" node="4JJCDImRYzW" resolve="typeTables" />
              </node>
              <node concept="1uHKPH" id="1eKXYsjIagV" role="2OqNvi" />
            </node>
            <node concept="liA8E" id="1eKXYsjIaC7" role="2OqNvi">
              <ref role="37wK5l" to="psr6:4KRwoelAtxl" resolve="typeTemplate" />
              <node concept="37vLTw" id="1eKXYsjIaXa" role="37wK5m">
                <ref role="3cqZAo" node="4nxCIBqyARP" resolve="typeConcept" />
              </node>
              <node concept="16syzq" id="1eKXYsjIddo" role="3PaCim">
                <ref role="16sUi3" node="1eKXYsjIb$d" resolve="Cfg" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="1eKXYsjIb$d" role="16eVyc">
        <property role="TrG5h" value="Cfg" />
        <node concept="3uibUv" id="1eKXYsjIcrC" role="3ztrMU">
          <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="TypeTemplate.Config" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4nxCIBqyBjc" role="jymVt" />
    <node concept="3clFb_" id="4nxCIBqyBNp" role="jymVt">
      <property role="TrG5h" value="forTerm" />
      <node concept="3uibUv" id="4nxCIBqyUm7" role="3clF45">
        <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
        <node concept="3qUE_q" id="1eKXYsjQg1a" role="11_B2D">
          <node concept="3uibUv" id="1eKXYsjQhae" role="3qUE_r">
            <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="TypeTemplate.Config" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4nxCIBqyBNt" role="1B3o_S" />
      <node concept="3clFbS" id="4nxCIBqyBNu" role="3clF47">
        <node concept="1DcWWT" id="4nxCIBqyHOI" role="3cqZAp">
          <node concept="3clFbS" id="4nxCIBqyHOL" role="2LFqv$">
            <node concept="1DcWWT" id="4nxCIBqyVLp" role="3cqZAp">
              <node concept="3clFbS" id="4nxCIBqyVLs" role="2LFqv$">
                <node concept="3cpWs6" id="4nxCIBqyVVm" role="3cqZAp">
                  <node concept="37vLTw" id="4nxCIBqyWNk" role="3cqZAk">
                    <ref role="3cqZAo" node="4nxCIBqyVLt" resolve="tpl" />
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="4nxCIBqyVLt" role="1Duv9x">
                <property role="TrG5h" value="tpl" />
                <node concept="3uibUv" id="4nxCIBqyVLx" role="1tU5fm">
                  <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
                  <node concept="3qUE_q" id="1eKXYsjQ4h3" role="11_B2D">
                    <node concept="3uibUv" id="1eKXYsjQ5oI" role="3qUE_r">
                      <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="TypeTemplate.Config" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4nxCIBqyVLy" role="1DdaDG">
                <node concept="37vLTw" id="4nxCIBqyVLz" role="2Oq$k0">
                  <ref role="3cqZAo" node="4nxCIBqyHOM" resolve="trie" />
                </node>
                <node concept="liA8E" id="4nxCIBqyVL$" role="2OqNvi">
                  <ref role="37wK5l" to="zx3l:~TermTrie.lookupValues(jetbrains.mps.unification.Term):java.lang.Iterable" resolve="lookupValues" />
                  <node concept="37vLTw" id="4nxCIBqyVL_" role="37wK5m">
                    <ref role="3cqZAo" node="4nxCIBqyFqj" resolve="typeTerm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4nxCIBqyHOM" role="1Duv9x">
            <property role="TrG5h" value="trie" />
            <node concept="3uibUv" id="4nxCIBqyHOQ" role="1tU5fm">
              <ref role="3uigEE" to="zx3l:~TermTrie" resolve="TermTrie" />
              <node concept="3uibUv" id="4nxCIBqyVdE" role="11_B2D">
                <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
                <node concept="3qUE_q" id="1eKXYsjQ1TG" role="11_B2D">
                  <node concept="3uibUv" id="1eKXYsjQ2x3" role="3qUE_r">
                    <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="TypeTemplate.Config" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4nxCIBqyHOR" role="1DdaDG">
            <ref role="3cqZAo" node="4nxCIBqsKrN" resolve="termTries" />
          </node>
        </node>
        <node concept="3cpWs6" id="4nxCIBqyYyi" role="3cqZAp">
          <node concept="10Nm6u" id="4nxCIBqz0dI" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="4nxCIBqyFqj" role="3clF46">
        <property role="TrG5h" value="typeTerm" />
        <node concept="3uibUv" id="4nxCIBqyFqi" role="1tU5fm">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4nxCIBqy$2g" role="jymVt" />
    <node concept="3clFb_" id="1hX44vNnpfT" role="jymVt">
      <property role="TrG5h" value="collectTypes" />
      <node concept="3Tm6S6" id="1hX44vNnpfU" role="1B3o_S" />
      <node concept="3cqZAl" id="1hX44vNnpfV" role="3clF45" />
      <node concept="3clFbS" id="1hX44vNnpfH" role="3clF47">
        <node concept="3SKdUt" id="1hX44vNnqZn" role="3cqZAp">
          <node concept="3SKdUq" id="1hX44vNnqZp" role="3SKWNk">
            <property role="3SKdUp" value="TODO: user code" />
          </node>
        </node>
        <node concept="3clFbF" id="1hX44vNnpfI" role="3cqZAp">
          <node concept="2OqwBi" id="1hX44vNnpfJ" role="3clFbG">
            <node concept="37vLTw" id="159_25Mmht6" role="2Oq$k0">
              <ref role="3cqZAo" node="1hX44vNniCj" resolve="typeManifest" />
            </node>
            <node concept="liA8E" id="1hX44vNnpfL" role="2OqNvi">
              <ref role="37wK5l" to="psr6:1pPth$m7IW6" resolve="collectTypeTables" />
              <node concept="2ShNRf" id="1hX44vNnpfM" role="37wK5m">
                <node concept="HV5vD" id="1hX44vNnpfN" role="2ShVmc">
                  <ref role="HV5vE" node="1hX44vNlSRx" resolve="TypeTemplateCollection.Collector" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1hX44vNnqaY" role="jymVt" />
    <node concept="312cEu" id="1hX44vNlSRx" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Collector" />
      <node concept="3Tm6S6" id="1hX44vNlSSd" role="1B3o_S" />
      <node concept="3uibUv" id="1hX44vNlSTo" role="EKbjA">
        <ref role="3uigEE" node="2N2MQGCMOyq" resolve="TypeTableCollector" />
      </node>
      <node concept="2tJIrI" id="4JJCDImP6rL" role="jymVt" />
      <node concept="3clFb_" id="4JJCDImP6AT" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="addTypeTable" />
        <node concept="37vLTG" id="4JJCDImP6AU" role="3clF46">
          <property role="TrG5h" value="typeTable" />
          <node concept="3uibUv" id="4JJCDImP6AV" role="1tU5fm">
            <ref role="3uigEE" to="psr6:1pPth$m7IVF" resolve="AbstractTypeTable" />
          </node>
        </node>
        <node concept="3cqZAl" id="4JJCDImP6AW" role="3clF45" />
        <node concept="3Tm1VV" id="4JJCDImP6AX" role="1B3o_S" />
        <node concept="3clFbS" id="4JJCDImP6AZ" role="3clF47">
          <node concept="3clFbF" id="4JJCDImRZbZ" role="3cqZAp">
            <node concept="2OqwBi" id="4JJCDImRZMw" role="3clFbG">
              <node concept="37vLTw" id="4JJCDImRZbY" role="2Oq$k0">
                <ref role="3cqZAo" node="4JJCDImRYzW" resolve="typeTables" />
              </node>
              <node concept="TSZUe" id="4JJCDImS0wq" role="2OqNvi">
                <node concept="37vLTw" id="4JJCDImS0FC" role="25WWJ7">
                  <ref role="3cqZAo" node="4JJCDImP6AU" resolve="typeTable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4nxCIBqsNiK" role="3cqZAp">
            <node concept="2OqwBi" id="4nxCIBqsO0d" role="3clFbG">
              <node concept="37vLTw" id="4nxCIBqsNiI" role="2Oq$k0">
                <ref role="3cqZAo" node="4nxCIBqsKrN" resolve="termTries" />
              </node>
              <node concept="TSZUe" id="4nxCIBqsP74" role="2OqNvi">
                <node concept="1rXfSq" id="4nxCIBqsPf$" role="25WWJ7">
                  <ref role="37wK5l" node="4nxCIBqsv9s" resolve="collectRecoveries" />
                  <node concept="37vLTw" id="4nxCIBqsPf_" role="37wK5m">
                    <ref role="3cqZAo" node="4JJCDImP6AU" resolve="typeTable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4JJCDImP6B0" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4nxCIBqsufG" role="jymVt" />
      <node concept="3clFb_" id="4nxCIBqsv9s" role="jymVt">
        <property role="TrG5h" value="collectRecoveries" />
        <node concept="37vLTG" id="4nxCIBqsydV" role="3clF46">
          <property role="TrG5h" value="typeTable" />
          <node concept="3uibUv" id="4nxCIBqsyRG" role="1tU5fm">
            <ref role="3uigEE" to="psr6:1pPth$m7IVF" resolve="AbstractTypeTable" />
          </node>
        </node>
        <node concept="3uibUv" id="4nxCIBqsGCb" role="3clF45">
          <ref role="3uigEE" to="zx3l:~TermTrie" resolve="TermTrie" />
          <node concept="3uibUv" id="1eKXYsjPS2T" role="11_B2D">
            <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
            <node concept="3qUE_q" id="1eKXYsjPS2U" role="11_B2D">
              <node concept="3uibUv" id="1eKXYsjPS2V" role="3qUE_r">
                <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="TypeTemplate.Config" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="4nxCIBqsv9u" role="1B3o_S" />
        <node concept="3clFbS" id="4nxCIBqsv9w" role="3clF47">
          <node concept="3cpWs8" id="4nxCIBqsCMk" role="3cqZAp">
            <node concept="3cpWsn" id="4nxCIBqsCMl" role="3cpWs9">
              <property role="TrG5h" value="trie" />
              <node concept="3uibUv" id="4nxCIBqsCMi" role="1tU5fm">
                <ref role="3uigEE" to="zx3l:~TermTrie" resolve="TermTrie" />
                <node concept="3uibUv" id="1eKXYsjPNbH" role="11_B2D">
                  <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
                  <node concept="3qUE_q" id="1eKXYsjPP6h" role="11_B2D">
                    <node concept="3uibUv" id="1eKXYsjPQ7m" role="3qUE_r">
                      <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="TypeTemplate.Config" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="4nxCIBqsCMm" role="33vP2m">
                <node concept="1pGfFk" id="4nxCIBqsCMn" role="2ShVmc">
                  <ref role="37wK5l" to="zx3l:~TermTrie.&lt;init&gt;()" resolve="TermTrie" />
                  <node concept="3uibUv" id="1eKXYsjPR4N" role="1pMfVU">
                    <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
                    <node concept="3qUE_q" id="1eKXYsjPR4O" role="11_B2D">
                      <node concept="3uibUv" id="1eKXYsjPR4P" role="3qUE_r">
                        <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="TypeTemplate.Config" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4nxCIBqsDxi" role="3cqZAp" />
          <node concept="1DcWWT" id="4nxCIBqqpIy" role="3cqZAp">
            <node concept="3clFbS" id="4nxCIBqqpI_" role="2LFqv$">
              <node concept="3cpWs8" id="1eKXYsjJ8_h" role="3cqZAp">
                <node concept="3cpWsn" id="1eKXYsjJ8_i" role="3cpWs9">
                  <property role="TrG5h" value="typeTemplate" />
                  <node concept="3uibUv" id="1eKXYsjJ8_5" role="1tU5fm">
                    <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
                    <node concept="3qUE_q" id="1eKXYsjPSWJ" role="11_B2D">
                      <node concept="3uibUv" id="1eKXYsjPT8c" role="3qUE_r">
                        <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="TypeTemplate.Config" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1eKXYsjJ8_j" role="33vP2m">
                    <node concept="37vLTw" id="1eKXYsjJ8_k" role="2Oq$k0">
                      <ref role="3cqZAo" node="4nxCIBqsydV" resolve="typeTable" />
                    </node>
                    <node concept="liA8E" id="1eKXYsjJ8_l" role="2OqNvi">
                      <ref role="37wK5l" to="psr6:4MEOIDEgpuf" resolve="typeTemplate" />
                      <node concept="37vLTw" id="1eKXYsjJ8_m" role="37wK5m">
                        <ref role="3cqZAo" node="4nxCIBqqpIA" resolve="id" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4nxCIBqsE0T" role="3cqZAp">
                <node concept="37vLTI" id="4nxCIBqsE9M" role="3clFbG">
                  <node concept="2OqwBi" id="4nxCIBqsEiw" role="37vLTx">
                    <node concept="37vLTw" id="4nxCIBqsEci" role="2Oq$k0">
                      <ref role="3cqZAo" node="4nxCIBqsCMl" resolve="trie" />
                    </node>
                    <node concept="liA8E" id="4nxCIBqsEpC" role="2OqNvi">
                      <ref role="37wK5l" to="zx3l:~TermTrie.put(jetbrains.mps.unification.Term,java.lang.Object):jetbrains.mps.logic.reactor.core.TermTrie" resolve="put" />
                      <node concept="2OqwBi" id="1eKXYsjQyev" role="37wK5m">
                        <node concept="37vLTw" id="1eKXYsjQyew" role="2Oq$k0">
                          <ref role="3cqZAo" node="1eKXYsjJ8_i" resolve="typeTemplate" />
                        </node>
                        <node concept="liA8E" id="1eKXYsjQyex" role="2OqNvi">
                          <ref role="37wK5l" to="psr6:1eKXYsjIChF" resolve="patternTypeTerm" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1eKXYsjJ8HM" role="37wK5m">
                        <ref role="3cqZAo" node="1eKXYsjJ8_i" resolve="typeTemplate" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4nxCIBqsE0R" role="37vLTJ">
                    <ref role="3cqZAo" node="4nxCIBqsCMl" resolve="trie" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4nxCIBqqpIA" role="1Duv9x">
              <property role="TrG5h" value="id" />
              <node concept="3uibUv" id="4MEOIDEXv7_" role="1tU5fm">
                <ref role="3uigEE" to="psr6:4MEOIDEhyPY" resolve="TypeTemplate.ID" />
              </node>
            </node>
            <node concept="2OqwBi" id="4nxCIBqqpIF" role="1DdaDG">
              <node concept="37vLTw" id="4nxCIBqqpIG" role="2Oq$k0">
                <ref role="3cqZAo" node="4nxCIBqsydV" resolve="typeTable" />
              </node>
              <node concept="liA8E" id="4nxCIBqqpIH" role="2OqNvi">
                <ref role="37wK5l" to="psr6:4MEOIDEWLkY" resolve="allTypeTemplateIds" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4nxCIBqsJtb" role="3cqZAp" />
          <node concept="3cpWs6" id="4nxCIBqsHDb" role="3cqZAp">
            <node concept="37vLTw" id="4nxCIBqsILK" role="3cqZAk">
              <ref role="3cqZAo" node="4nxCIBqsCMl" resolve="trie" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4JJCDImP6ss" role="jymVt" />
    </node>
    <node concept="2tJIrI" id="1hX44vNnjF5" role="jymVt" />
    <node concept="312cEg" id="4JJCDImRYzW" role="jymVt">
      <property role="TrG5h" value="typeTables" />
      <node concept="3Tm6S6" id="4JJCDImRYzX" role="1B3o_S" />
      <node concept="_YKpA" id="4JJCDImRYIM" role="1tU5fm">
        <node concept="3uibUv" id="4JJCDImRYZI" role="_ZDj9">
          <ref role="3uigEE" to="psr6:1pPth$m7IVF" resolve="AbstractTypeTable" />
        </node>
      </node>
      <node concept="2ShNRf" id="4JJCDImRZ41" role="33vP2m">
        <node concept="Tc6Ow" id="4JJCDImRZ3N" role="2ShVmc">
          <node concept="3uibUv" id="4JJCDImRZ3O" role="HW$YZ">
            <ref role="3uigEE" to="psr6:1pPth$m7IVF" resolve="AbstractTypeTable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4nxCIBqsKrN" role="jymVt">
      <property role="TrG5h" value="termTries" />
      <node concept="3Tm6S6" id="4nxCIBqsKrO" role="1B3o_S" />
      <node concept="_YKpA" id="4nxCIBqsKrP" role="1tU5fm">
        <node concept="3uibUv" id="4nxCIBqsKMk" role="_ZDj9">
          <ref role="3uigEE" to="zx3l:~TermTrie" resolve="TermTrie" />
          <node concept="3uibUv" id="4nxCIBqyPZU" role="11_B2D">
            <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
            <node concept="3qUE_q" id="1eKXYsjPDkz" role="11_B2D">
              <node concept="3uibUv" id="1eKXYsjPEeQ" role="3qUE_r">
                <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="TypeTemplate.Config" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="4nxCIBqsKrR" role="33vP2m">
        <node concept="Tc6Ow" id="4nxCIBqsKrS" role="2ShVmc">
          <node concept="3uibUv" id="4nxCIBqsLNa" role="HW$YZ">
            <ref role="3uigEE" to="zx3l:~TermTrie" resolve="TermTrie" />
            <node concept="3uibUv" id="4nxCIBqyQGX" role="11_B2D">
              <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
              <node concept="3qUE_q" id="1eKXYsjPG4_" role="11_B2D">
                <node concept="3uibUv" id="1eKXYsjPISA" role="3qUE_r">
                  <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="TypeTemplate.Config" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1hX44vNnj_J" role="jymVt">
      <property role="TrG5h" value="typeTemplates" />
      <node concept="3Tm6S6" id="1hX44vNnj_K" role="1B3o_S" />
      <node concept="3rvAFt" id="1hX44vNnj_L" role="1tU5fm">
        <node concept="3bZ5Sz" id="1hX44vNnj_M" role="3rvQeY" />
        <node concept="3vKaQO" id="1hX44vNnj_N" role="3rvSg0">
          <node concept="3uibUv" id="1hX44vNnjKk" role="3O5elw">
            <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="1hX44vNnj_P" role="33vP2m">
        <node concept="3rGOSV" id="1hX44vNnj_Q" role="2ShVmc">
          <node concept="3bZ5Sz" id="1hX44vNnj_R" role="3rHrn6" />
          <node concept="3vKaQO" id="1hX44vNnj_S" role="3rHtpV">
            <node concept="3uibUv" id="1hX44vNnjPS" role="3O5elw">
              <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1hX44vNlSIB" role="1B3o_S" />
    <node concept="312cEg" id="1hX44vNniCj" role="jymVt">
      <property role="TrG5h" value="typeManifest" />
      <node concept="3Tm6S6" id="1hX44vNniCk" role="1B3o_S" />
      <node concept="3uibUv" id="1hX44vNniCm" role="1tU5fm">
        <ref role="3uigEE" to="psr6:2N2MQGCMVqD" resolve="AbstractTypeManifest" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hX44vNnjHa" role="jymVt" />
  </node>
  <node concept="3HP615" id="2N2MQGCMOyq">
    <property role="TrG5h" value="TypeTableCollector" />
    <node concept="2tJIrI" id="4JJCDImP2S8" role="jymVt" />
    <node concept="3clFb_" id="4JJCDImP5xa" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="addTypeTable" />
      <node concept="37vLTG" id="4JJCDImP5Mm" role="3clF46">
        <property role="TrG5h" value="typeTable" />
        <node concept="3uibUv" id="4JJCDImP5Ok" role="1tU5fm">
          <ref role="3uigEE" to="psr6:1pPth$m7IVF" resolve="AbstractTypeTable" />
        </node>
      </node>
      <node concept="3cqZAl" id="4JJCDImP5xc" role="3clF45" />
      <node concept="3Tm1VV" id="4JJCDImP5xd" role="1B3o_S" />
      <node concept="3clFbS" id="4JJCDImP5xe" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4nxCIBqhZmR" role="jymVt" />
    <node concept="3Tm1VV" id="2N2MQGCMOyr" role="1B3o_S" />
  </node>
</model>

