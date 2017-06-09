<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2b3e6804-bc6d-4927-bcda-d2c5bfc10d0b(jetbrains.mps.lang.typesystem2.samplechecker.test.type@tests)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="-1" />
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="-1" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="-1" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="0fda14cc-a416-4c81-869a-2175d8b3325d" name="jetbrains.mps.lang.typesystem2.sampleLang" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="fqlx" ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.typesystem2.aspect)" />
    <import index="t5kh" ref="r:1514c681-0724-461e-a435-315a6af4b3b4(jetbrains.mps.lang.typesystem2.sampleplugin.plugin)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.treeform)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" implicit="true" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="5097124989038916362" name="jetbrains.mps.lang.test.structure.TestInfo" flags="ng" index="2XOHcx">
        <property id="5097124989038916363" name="projectPath" index="2XOHcw" />
      </concept>
      <concept id="1225467090849" name="jetbrains.mps.lang.test.structure.ProjectExpression" flags="nn" index="1jxXqW" />
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <child id="1216993439383" name="methods" index="1qtyYc" />
        <child id="1217501822150" name="nodesToCheck" index="1SKRRt" />
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
      <concept id="1210673684636" name="jetbrains.mps.lang.test.structure.TestNodeAnnotation" flags="ng" index="3xLA65" />
      <concept id="1210674524691" name="jetbrains.mps.lang.test.structure.TestNodeReference" flags="nn" index="3xONca">
        <reference id="1210674534086" name="declaration" index="3xOPvv" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
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
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
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
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="7080278351417106679" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNotNull" flags="nn" index="2Hmddi">
        <child id="7080278351417106681" name="expression" index="2Hmdds" />
      </concept>
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171985735491" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertSame" flags="nn" index="3vMLTj" />
      <concept id="1172028177041" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNull" flags="nn" index="3ykFI1">
        <child id="1172028236559" name="expression" index="3ykU8v" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="1lH9Xt" id="4nxCIBqxR0M">
    <property role="TrG5h" value="SampleTypeAspect" />
    <node concept="2XrIbr" id="7y50OW6ZKyB" role="1qtyYc">
      <property role="TrG5h" value="typeTemplates" />
      <node concept="37vLTG" id="7y50OW6ZKKa" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="7y50OW6ZKLy" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7y50OW6ZKHy" role="3clF45">
        <ref role="3uigEE" to="fqlx:1hX44vNlSIA" resolve="TypeTemplateIndex" />
      </node>
      <node concept="3clFbS" id="7y50OW6ZKyD" role="3clF47">
        <node concept="3SKdUt" id="7y50OW707GY" role="3cqZAp">
          <node concept="3SKdUq" id="7y50OW707H0" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: assuming the model imports only one lang with types aspect" />
          </node>
        </node>
        <node concept="3cpWs8" id="7y50OW6ZLiA" role="3cqZAp">
          <node concept="3cpWsn" id="7y50OW6ZLiB" role="3cpWs9">
            <property role="TrG5h" value="typeAspect" />
            <node concept="3uibUv" id="7y50OW6ZLiC" role="1tU5fm">
              <ref role="3uigEE" to="fqlx:7km57Pkjxf4" resolve="TypeAspectDescriptor" />
            </node>
            <node concept="2OqwBi" id="7y50OW6ZLiD" role="33vP2m">
              <node concept="2WthIp" id="7y50OW6ZLiE" role="2Oq$k0" />
              <node concept="2XshWL" id="7y50OW6ZLiF" role="2OqNvi">
                <ref role="2WH_rO" node="4nxCIBqxS8B" resolve="firstTypeAspect" />
                <node concept="37vLTw" id="7y50OW6ZLut" role="2XxRq1">
                  <ref role="3cqZAo" node="7y50OW6ZKKa" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7y50OW6ZS1_" role="3cqZAp">
          <node concept="3cpWsn" id="7y50OW6ZS1A" role="3cpWs9">
            <property role="TrG5h" value="typeTemplates" />
            <node concept="3uibUv" id="7y50OW6ZS1r" role="1tU5fm">
              <ref role="3uigEE" to="fqlx:1hX44vNlSIA" resolve="TypeTemplateIndex" />
            </node>
            <node concept="2ShNRf" id="7y50OW6ZS1B" role="33vP2m">
              <node concept="1pGfFk" id="7y50OW6ZS1C" role="2ShVmc">
                <ref role="37wK5l" to="fqlx:1hX44vNlSOK" resolve="TypeTemplateIndex" />
                <node concept="2OqwBi" id="7y50OW6ZS1D" role="37wK5m">
                  <node concept="37vLTw" id="7y50OW6ZS1E" role="2Oq$k0">
                    <ref role="3cqZAo" node="7y50OW6ZLiB" resolve="typeAspect" />
                  </node>
                  <node concept="liA8E" id="7y50OW6ZS1F" role="2OqNvi">
                    <ref role="37wK5l" to="fqlx:2hteS6ClmbE" resolve="createTypeManifest" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7y50OW70aZa" role="3cqZAp">
          <node concept="3SKdUq" id="7y50OW70aZc" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: assuming the type aspect defines only single type table" />
          </node>
        </node>
        <node concept="3vMLTj" id="7y50OW6ZSAE" role="3cqZAp">
          <node concept="3cmrfG" id="7y50OW6ZSBN" role="3tpDZB">
            <property role="3cmrfH" value="1" />
          </node>
          <node concept="2OqwBi" id="7y50OW6ZUrY" role="3tpDZA">
            <node concept="2OqwBi" id="7y50OW6ZTd5" role="2Oq$k0">
              <node concept="37vLTw" id="7y50OW6ZT8n" role="2Oq$k0">
                <ref role="3cqZAo" node="7y50OW6ZS1A" resolve="typeTemplates" />
              </node>
              <node concept="liA8E" id="7y50OW6ZU4F" role="2OqNvi">
                <ref role="37wK5l" to="fqlx:4JJCDIn5F0n" resolve="typeTables" />
              </node>
            </node>
            <node concept="34oBXx" id="7y50OW6ZVmR" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="7y50OW6ZM3q" role="3cqZAp">
          <node concept="37vLTw" id="7y50OW6ZS1G" role="3clFbG">
            <ref role="3cqZAo" node="7y50OW6ZS1A" resolve="typeTemplates" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="7y50OW6TxjM" role="1SL9yI">
      <property role="TrG5h" value="typechecking" />
      <node concept="3cqZAl" id="7y50OW6TxjN" role="3clF45" />
      <node concept="3clFbS" id="7y50OW6TxjR" role="3clF47">
        <node concept="3cpWs8" id="7y50OW6ZE44" role="3cqZAp">
          <node concept="3cpWsn" id="7y50OW6ZE45" role="3cpWs9">
            <property role="TrG5h" value="checkTypes" />
            <node concept="3uibUv" id="7y50OW6ZE42" role="1tU5fm">
              <ref role="3uigEE" to="t5kh:7y50OW6XXpr" resolve="LaunchTypechecking.TypecheckingResult" />
            </node>
            <node concept="2YIFZM" id="7y50OW6ZE46" role="33vP2m">
              <ref role="37wK5l" to="t5kh:7y50OW6XU7p" resolve="checkTypes" />
              <ref role="1Pybhc" to="t5kh:1N_0WA5JxZO" resolve="LaunchTypechecking" />
              <node concept="3xONca" id="7y50OW6ZE47" role="37wK5m">
                <ref role="3xOPvv" node="4nxCIBqymjB" resolve="class" />
              </node>
              <node concept="1jxXqW" id="7y50OW6ZE48" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3ykFI1" id="7y50OW6U9jy" role="3cqZAp">
          <node concept="2OqwBi" id="7y50OW6ZEh5" role="3ykU8v">
            <node concept="37vLTw" id="7y50OW6ZE8H" role="2Oq$k0">
              <ref role="3cqZAo" node="7y50OW6ZE45" resolve="checkTypes" />
            </node>
            <node concept="liA8E" id="7y50OW6ZEtL" role="2OqNvi">
              <ref role="37wK5l" to="t5kh:7y50OW6Y0Sl" resolve="error" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7y50OW6ZGv$" role="3cqZAp" />
        <node concept="3cpWs8" id="52a_GfIM9UR" role="3cqZAp">
          <node concept="3cpWsn" id="52a_GfIM9US" role="3cpWs9">
            <property role="TrG5h" value="typeModel" />
            <node concept="3uibUv" id="52a_GfIM9UP" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="52a_GfIM9UT" role="33vP2m">
              <node concept="2YIFZM" id="52a_GfIM9UU" role="2Oq$k0">
                <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
                <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance():jetbrains.mps.smodel.tempmodel.TemporaryModels" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="52a_GfIM9UV" role="2OqNvi">
                <ref role="37wK5l" to="tqvn:~TemporaryModels.create(boolean,jetbrains.mps.smodel.tempmodel.TempModuleOptions):org.jetbrains.mps.openapi.model.SModel" resolve="create" />
                <node concept="3clFbT" id="52a_GfIM9UW" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="2YIFZM" id="52a_GfIM9UX" role="37wK5m">
                  <ref role="1Pybhc" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
                  <ref role="37wK5l" to="tqvn:~TempModuleOptions.forDefaultModule():jetbrains.mps.smodel.tempmodel.TempModuleOptions" resolve="forDefaultModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7y50OW700$V" role="3cqZAp" />
        <node concept="3cpWs8" id="7y50OW6ZH4l" role="3cqZAp">
          <node concept="3cpWsn" id="7y50OW6ZH4m" role="3cpWs9">
            <property role="TrG5h" value="termA" />
            <node concept="3uibUv" id="7y50OW6ZH4g" role="1tU5fm">
              <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
            </node>
            <node concept="2OqwBi" id="7y50OW6ZH4n" role="33vP2m">
              <node concept="37vLTw" id="7y50OW6ZH4o" role="2Oq$k0">
                <ref role="3cqZAo" node="7y50OW6ZE45" resolve="checkTypes" />
              </node>
              <node concept="liA8E" id="7y50OW6ZH4p" role="2OqNvi">
                <ref role="37wK5l" to="t5kh:7y50OW6XYoC" resolve="getType" />
                <node concept="3xONca" id="7y50OW6ZH4q" role="37wK5m">
                  <ref role="3xOPvv" node="1eKXYsjuWjw" resolve="fieldA" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7y50OW701J0" role="3cqZAp">
          <node concept="3cpWsn" id="7y50OW701J1" role="3cpWs9">
            <property role="TrG5h" value="termB" />
            <node concept="3uibUv" id="7y50OW701J2" role="1tU5fm">
              <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
            </node>
            <node concept="2OqwBi" id="7y50OW701J3" role="33vP2m">
              <node concept="37vLTw" id="7y50OW701J4" role="2Oq$k0">
                <ref role="3cqZAo" node="7y50OW6ZE45" resolve="checkTypes" />
              </node>
              <node concept="liA8E" id="7y50OW701J5" role="2OqNvi">
                <ref role="37wK5l" to="t5kh:7y50OW6XYoC" resolve="getType" />
                <node concept="3xONca" id="7y50OW701Tq" role="37wK5m">
                  <ref role="3xOPvv" node="7y50OW6ZXVj" resolve="fieldB" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Hmddi" id="7y50OW6ZIlS" role="3cqZAp">
          <node concept="37vLTw" id="7y50OW6ZISl" role="2Hmdds">
            <ref role="3cqZAo" node="7y50OW6ZH4m" resolve="termA" />
          </node>
        </node>
        <node concept="2Hmddi" id="7y50OW70203" role="3cqZAp">
          <node concept="37vLTw" id="7y50OW7026g" role="2Hmdds">
            <ref role="3cqZAo" node="7y50OW701J1" resolve="termB" />
          </node>
        </node>
        <node concept="3clFbH" id="52a_GfIMadO" role="3cqZAp" />
        <node concept="3clFbF" id="52a_GfIM6S5" role="3cqZAp">
          <node concept="2OqwBi" id="52a_GfIM72F" role="3clFbG">
            <node concept="2YIFZM" id="52a_GfIM6S7" role="2Oq$k0">
              <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance():jetbrains.mps.smodel.tempmodel.TemporaryModels" resolve="getInstance" />
              <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
            </node>
            <node concept="liA8E" id="52a_GfIM7aQ" role="2OqNvi">
              <ref role="37wK5l" to="tqvn:~TemporaryModels.dispose(org.jetbrains.mps.openapi.model.SModel):void" resolve="dispose" />
              <node concept="37vLTw" id="52a_GfIM7E$" role="37wK5m">
                <ref role="3cqZAo" node="52a_GfIM9US" resolve="typeModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="4nxCIBqxS8B" role="1qtyYc">
      <property role="TrG5h" value="firstTypeAspect" />
      <node concept="37vLTG" id="4nxCIBqxTLY" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="4nxCIBqxVB6" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4nxCIBqxS8S" role="3clF45">
        <ref role="3uigEE" to="fqlx:7km57Pkjxf4" resolve="TypeAspectDescriptor" />
      </node>
      <node concept="3clFbS" id="4nxCIBqxS8D" role="3clF47">
        <node concept="3cpWs8" id="4hh0cTRbUS6" role="3cqZAp">
          <node concept="3cpWsn" id="4hh0cTRbUS7" role="3cpWs9">
            <property role="TrG5h" value="typesAspect" />
            <node concept="3uibUv" id="4hh0cTRbURZ" role="1tU5fm">
              <ref role="3uigEE" to="fqlx:7km57Pkjxf4" resolve="TypeAspectDescriptor" />
            </node>
            <node concept="10Nm6u" id="4xTpErk1C4t" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="4xTpErk1pjs" role="3cqZAp">
          <node concept="3clFbS" id="4xTpErk1pju" role="2LFqv$">
            <node concept="3clFbF" id="4xTpErk1zEf" role="3cqZAp">
              <node concept="37vLTI" id="4xTpErk1zEh" role="3clFbG">
                <node concept="2YIFZM" id="4hh0cTRbUS8" role="37vLTx">
                  <ref role="37wK5l" to="fqlx:2hteS6Cndm6" resolve="forLanguage" />
                  <ref role="1Pybhc" to="fqlx:7km57Pkjxf4" resolve="TypeAspectDescriptor" />
                  <node concept="37vLTw" id="4xTpErk25DG" role="37wK5m">
                    <ref role="3cqZAo" node="4xTpErk1pjv" resolve="lang" />
                  </node>
                  <node concept="2OqwBi" id="3GlpCDS_oBV" role="37wK5m">
                    <node concept="1jxXqW" id="4nxCIBqypgi" role="2Oq$k0" />
                    <node concept="liA8E" id="3GlpCDS_pPw" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4xTpErk1zEl" role="37vLTJ">
                  <ref role="3cqZAo" node="4hh0cTRbUS7" resolve="typesAspect" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4xTpErk1MGG" role="3cqZAp">
              <node concept="3clFbS" id="4xTpErk1MGI" role="3clFbx">
                <node concept="3zACq4" id="4xTpErk1V4q" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="4xTpErk1S34" role="3clFbw">
                <node concept="10Nm6u" id="4xTpErk1SiT" role="3uHU7w" />
                <node concept="37vLTw" id="4xTpErk1PF$" role="3uHU7B">
                  <ref role="3cqZAo" node="4hh0cTRbUS7" resolve="typesAspect" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4xTpErk1pjv" role="1Duv9x">
            <property role="TrG5h" value="lang" />
            <node concept="3uibUv" id="4xTpErk1xEI" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
            </node>
          </node>
          <node concept="2YIFZM" id="4xTpErk1vp3" role="1DdaDG">
            <ref role="1Pybhc" to="w1kc:~SModelOperations" resolve="SModelOperations" />
            <ref role="37wK5l" to="w1kc:~SModelOperations.getAllLanguageImports(org.jetbrains.mps.openapi.model.SModel):java.util.Set" resolve="getAllLanguageImports" />
            <node concept="37vLTw" id="4nxCIBqxXz7" role="37wK5m">
              <ref role="3cqZAo" node="4nxCIBqxTLY" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4nxCIBqxY1M" role="3cqZAp">
          <node concept="37vLTw" id="4nxCIBqxYTl" role="3cqZAk">
            <ref role="3cqZAo" node="4hh0cTRbUS7" resolve="typesAspect" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="4nxCIBqyl_2" role="1SKRRt">
      <node concept="312cEu" id="4nxCIBqyl_d" role="1qenE9">
        <property role="TrG5h" value="Test" />
        <node concept="2tJIrI" id="1eKXYsjuV4O" role="jymVt" />
        <node concept="3HP615" id="4cKdPpqIRLR" role="jymVt">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="A" />
          <node concept="3Tm1VV" id="4cKdPpqIRLS" role="1B3o_S" />
        </node>
        <node concept="2tJIrI" id="7y50OW6ZXx0" role="jymVt" />
        <node concept="3HP615" id="7y50OW6ZXcE" role="jymVt">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="B" />
          <node concept="3Tm1VV" id="7y50OW6ZXcF" role="1B3o_S" />
          <node concept="16euLQ" id="7y50OW6ZXOs" role="16eVyc">
            <property role="TrG5h" value="T" />
          </node>
        </node>
        <node concept="2tJIrI" id="4cKdPpqKZY1" role="jymVt" />
        <node concept="312cEg" id="1eKXYsjuVRn" role="jymVt">
          <property role="TrG5h" value="fielda" />
          <node concept="3Tm6S6" id="1eKXYsjuVRo" role="1B3o_S" />
          <node concept="3uibUv" id="1eKXYsjuVYY" role="1tU5fm">
            <ref role="3uigEE" node="4cKdPpqIRLR" resolve="Test.A" />
            <node concept="3xLA65" id="1eKXYsjHW0A" role="lGtFl">
              <property role="TrG5h" value="typeA" />
            </node>
          </node>
          <node concept="3xLA65" id="1eKXYsjuWjw" role="lGtFl">
            <property role="TrG5h" value="fieldA" />
          </node>
        </node>
        <node concept="2tJIrI" id="7y50OW6ZYeS" role="jymVt" />
        <node concept="312cEg" id="7y50OW6ZXVf" role="jymVt">
          <property role="TrG5h" value="fieldb" />
          <node concept="3Tm6S6" id="7y50OW6ZXVg" role="1B3o_S" />
          <node concept="3uibUv" id="7y50OW6ZXVh" role="1tU5fm">
            <ref role="3uigEE" node="7y50OW6ZXcE" resolve="Test.B" />
            <node concept="3xLA65" id="7y50OW6ZXVi" role="lGtFl">
              <property role="TrG5h" value="typeB" />
            </node>
            <node concept="3uibUv" id="7y50OW6ZYzh" role="11_B2D">
              <ref role="3uigEE" node="4cKdPpqIRLR" resolve="Test.A" />
            </node>
          </node>
          <node concept="3xLA65" id="7y50OW6ZXVj" role="lGtFl">
            <property role="TrG5h" value="fieldB" />
          </node>
        </node>
        <node concept="3Tm1VV" id="4nxCIBqyl_e" role="1B3o_S" />
        <node concept="3xLA65" id="4nxCIBqymjB" role="lGtFl">
          <property role="TrG5h" value="class" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2XOHcx" id="7t5VLKGQVAO">
    <property role="2XOHcw" value="${logic_home}" />
  </node>
</model>

