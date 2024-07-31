<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4f9bf647-c6f5-4a1b-b0bf-0f0c16f6c9d0(jetbrains.mps.coderules.aspect@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
  </languages>
  <imports>
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="pxw9" ref="r:e3417884-ba0a-4330-9cea-64f01ace2e9d(jetbrains.mps.lang.coderules.aspect)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="7080278351417106679" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNotNull" flags="nn" index="2Hmddi">
        <child id="7080278351417106681" name="expression" index="2Hmdds" />
      </concept>
      <concept id="1171931690126" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" flags="ig" index="3s$Bmu">
        <property id="1171931690128" name="methodName" index="3s$Bm0" />
      </concept>
      <concept id="1171931851043" name="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" flags="ig" index="3s_ewN">
        <property id="1171931851045" name="testCaseName" index="3s_ewP" />
        <child id="1171931851044" name="testMethodList" index="3s_ewO" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
      <concept id="1171983834376" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" flags="nn" index="3vFxKo">
        <child id="1171983854940" name="condition" index="3vFALc" />
      </concept>
      <concept id="1172028177041" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNull" flags="nn" index="3ykFI1">
        <child id="1172028236559" name="expression" index="3ykU8v" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="2526372162255441536" name="jetbrains.mps.baseLanguage.collections.structure.AsUnmodifiableOperation" flags="nn" index="26Dbio" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="3s_ewN" id="6nx4rRkXZjk">
    <property role="3s_ewP" value="AspectClique" />
    <node concept="3Tm1VV" id="6nx4rRkXZjl" role="1B3o_S" />
    <node concept="3s_gsd" id="6nx4rRkXZjm" role="3s_ewO">
      <node concept="3s$Bmu" id="6nx4rRkXZjZ" role="3s_gse">
        <property role="3s$Bm0" value="empty" />
        <node concept="3cqZAl" id="6nx4rRkXZk0" role="3clF45" />
        <node concept="3Tm1VV" id="6nx4rRkXZk1" role="1B3o_S" />
        <node concept="3clFbS" id="6nx4rRkXZk2" role="3clF47">
          <node concept="3cpWs8" id="6nx4rRkY0Rh" role="3cqZAp">
            <node concept="3cpWsn" id="6nx4rRkY0Ri" role="3cpWs9">
              <property role="TrG5h" value="discoverable" />
              <node concept="3uibUv" id="6nx4rRkY0R6" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZkf" resolve="MockAspectDiscoverable" />
              </node>
              <node concept="2ShNRf" id="6nx4rRkY0Rj" role="33vP2m">
                <node concept="HV5vD" id="6nx4rRkY0Rk" role="2ShVmc">
                  <ref role="HV5vE" node="6nx4rRkXZkf" resolve="MockAspectDiscoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4nDRG5_jcuG" role="3cqZAp">
            <node concept="3cpWsn" id="4nDRG5_jcuH" role="3cpWs9">
              <property role="TrG5h" value="clique" />
              <node concept="3uibUv" id="4nDRG5_jauo" role="1tU5fm">
                <ref role="3uigEE" to="pxw9:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="4nDRG5_jaur" role="11_B2D">
                  <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                </node>
              </node>
              <node concept="2YIFZM" id="4nDRG5_jcuI" role="33vP2m">
                <ref role="37wK5l" to="pxw9:3KN3A4uV0IR" resolve="discoverAspectClique" />
                <ref role="1Pybhc" to="pxw9:6nx4rRkNE1x" resolve="CliqueBuilder" />
                <node concept="2ShNRf" id="4nDRG5_jcuJ" role="37wK5m">
                  <node concept="Tc6Ow" id="4nDRG5_jcuK" role="2ShVmc">
                    <node concept="3uibUv" id="4nDRG5_jcuL" role="HW$YZ">
                      <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4nDRG5_jcuM" role="37wK5m">
                  <ref role="3cqZAo" node="6nx4rRkY0Ri" resolve="discoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="_tf6vyUTtY" role="3cqZAp">
            <node concept="2OqwBi" id="_tf6vyUVk8" role="3vwVQn">
              <node concept="37vLTw" id="4nDRG5_jdpl" role="2Oq$k0">
                <ref role="3cqZAo" node="4nDRG5_jcuH" resolve="clique" />
              </node>
              <node concept="liA8E" id="_tf6vyUVv_" role="2OqNvi">
                <ref role="37wK5l" to="pxw9:4ekZiHe4j$O" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3Vcd0Focyhd" role="3s_gse">
        <property role="3s$Bm0" value="aspectCycle" />
        <node concept="3cqZAl" id="3Vcd0Focyhe" role="3clF45" />
        <node concept="3Tm1VV" id="3Vcd0Focyhf" role="1B3o_S" />
        <node concept="3clFbS" id="3Vcd0Focyhg" role="3clF47">
          <node concept="3cpWs8" id="3Vcd0FocyNE" role="3cqZAp">
            <node concept="3cpWsn" id="3Vcd0FocyNF" role="3cpWs9">
              <property role="TrG5h" value="cycle1" />
              <node concept="3uibUv" id="3Vcd0FocyM6" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="3Vcd0FocyNG" role="33vP2m">
                <node concept="1pGfFk" id="3Vcd0FocyNH" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="3Vcd0FocyNI" role="37wK5m">
                    <property role="Xl_RC" value="cycle1" />
                  </node>
                  <node concept="2ShNRf" id="3Vcd0FocyNJ" role="37wK5m">
                    <node concept="HV5vD" id="3Vcd0FocyNK" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3Vcd0FocyPa" role="3cqZAp">
            <node concept="3cpWsn" id="3Vcd0FocyPb" role="3cpWs9">
              <property role="TrG5h" value="cycle2" />
              <node concept="3uibUv" id="3Vcd0FocyPc" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="3Vcd0FocyPd" role="33vP2m">
                <node concept="1pGfFk" id="3Vcd0FocyPe" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="3Vcd0FocyPf" role="37wK5m">
                    <property role="Xl_RC" value="cycle2" />
                  </node>
                  <node concept="2ShNRf" id="3Vcd0FocyPg" role="37wK5m">
                    <node concept="HV5vD" id="3Vcd0FocyPh" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3Vcd0FocD7V" role="3cqZAp">
            <node concept="2OqwBi" id="3Vcd0FocD8L" role="3clFbG">
              <node concept="37vLTw" id="3Vcd0FocD7N" role="2Oq$k0">
                <ref role="3cqZAo" node="3Vcd0FocyNF" resolve="cycle1" />
              </node>
              <node concept="liA8E" id="3Vcd0FocDdc" role="2OqNvi">
                <ref role="37wK5l" node="3Vcd0Foc_4D" resolve="addExtended" />
                <node concept="37vLTw" id="3Vcd0FocDf4" role="37wK5m">
                  <ref role="3cqZAo" node="3Vcd0FocyPb" resolve="cycle2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3Vcd0FocDhg" role="3cqZAp">
            <node concept="2OqwBi" id="3Vcd0FocDhh" role="3clFbG">
              <node concept="37vLTw" id="3Vcd0FocDj9" role="2Oq$k0">
                <ref role="3cqZAo" node="3Vcd0FocyPb" resolve="cycle2" />
              </node>
              <node concept="liA8E" id="3Vcd0FocDhj" role="2OqNvi">
                <ref role="37wK5l" node="3Vcd0Foc_4D" resolve="addExtended" />
                <node concept="37vLTw" id="3Vcd0FocDl_" role="37wK5m">
                  <ref role="3cqZAo" node="3Vcd0FocyNF" resolve="cycle1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3Vcd0FocyhE" role="3cqZAp" />
          <node concept="3cpWs8" id="3Vcd0FocD$R" role="3cqZAp">
            <node concept="3cpWsn" id="3Vcd0FocD$S" role="3cpWs9">
              <property role="TrG5h" value="discoverable" />
              <node concept="3uibUv" id="3Vcd0FocD$T" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZkf" resolve="MockAspectDiscoverable" />
              </node>
              <node concept="2ShNRf" id="3Vcd0FocD$U" role="33vP2m">
                <node concept="HV5vD" id="3Vcd0FocD$V" role="2ShVmc">
                  <ref role="HV5vE" node="6nx4rRkXZkf" resolve="MockAspectDiscoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4nDRG5_jdPp" role="3cqZAp">
            <node concept="3cpWsn" id="4nDRG5_jdPq" role="3cpWs9">
              <property role="TrG5h" value="clique" />
              <node concept="3uibUv" id="4nDRG5_jan9" role="1tU5fm">
                <ref role="3uigEE" to="pxw9:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="4nDRG5_janc" role="11_B2D">
                  <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                </node>
              </node>
              <node concept="2YIFZM" id="4nDRG5_jdPr" role="33vP2m">
                <ref role="37wK5l" to="pxw9:3KN3A4uV0IR" resolve="discoverAspectClique" />
                <ref role="1Pybhc" to="pxw9:6nx4rRkNE1x" resolve="CliqueBuilder" />
                <node concept="2ShNRf" id="4nDRG5_jdPs" role="37wK5m">
                  <node concept="Tc6Ow" id="4nDRG5_jdPt" role="2ShVmc">
                    <node concept="37vLTw" id="4nDRG5_jdPu" role="HW$Y0">
                      <ref role="3cqZAo" node="3Vcd0FocyNF" resolve="cycle1" />
                    </node>
                    <node concept="37vLTw" id="4nDRG5_jdPv" role="HW$Y0">
                      <ref role="3cqZAo" node="3Vcd0FocyPb" resolve="cycle2" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4nDRG5_jdPw" role="37wK5m">
                  <ref role="3cqZAo" node="3Vcd0FocD$S" resolve="discoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3Vcd0FocLiI" role="3cqZAp" />
          <node concept="2Hmddi" id="7u0sJ2133j2" role="3cqZAp">
            <node concept="37vLTw" id="4nDRG5_jhdi" role="2Hmdds">
              <ref role="3cqZAo" node="4nDRG5_jdPq" resolve="clique" />
            </node>
          </node>
          <node concept="3vFxKo" id="7u0sJ21345J" role="3cqZAp">
            <node concept="2OqwBi" id="7u0sJ2134ia" role="3vFALc">
              <node concept="37vLTw" id="4nDRG5_jhdh" role="2Oq$k0">
                <ref role="3cqZAo" node="4nDRG5_jdPq" resolve="clique" />
              </node>
              <node concept="liA8E" id="7u0sJ213UeH" role="2OqNvi">
                <ref role="37wK5l" to="pxw9:4ekZiHe4j$O" resolve="isEmpty" />
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="7u0sJ2134Df" role="3cqZAp">
            <node concept="2OqwBi" id="7u0sJ2135Mg" role="3tpDZB">
              <node concept="2OqwBi" id="7u0sJ2134R0" role="2Oq$k0">
                <node concept="37vLTw" id="4nDRG5_jhdg" role="2Oq$k0">
                  <ref role="3cqZAo" node="4nDRG5_jdPq" resolve="clique" />
                </node>
                <node concept="liA8E" id="7u0sJ21355X" role="2OqNvi">
                  <ref role="37wK5l" to="pxw9:3KN3A4uUhpW" resolve="aspects" />
                </node>
              </node>
              <node concept="34oBXx" id="7u0sJ2136HX" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="7u0sJ2136Mh" role="3tpDZA">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="_tf6vySlxu" role="3s_gse">
        <property role="3s$Bm0" value="twoCliques" />
        <node concept="3cqZAl" id="_tf6vySlxv" role="3clF45" />
        <node concept="3Tm1VV" id="_tf6vySlxw" role="1B3o_S" />
        <node concept="3clFbS" id="_tf6vySlxx" role="3clF47">
          <node concept="3cpWs8" id="_tf6vySmYH" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vySmYI" role="3cpWs9">
              <property role="TrG5h" value="foo" />
              <node concept="3uibUv" id="_tf6vySmYJ" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vySmYK" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vySmYL" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vySmYM" role="37wK5m">
                    <property role="Xl_RC" value="foo" />
                  </node>
                  <node concept="2ShNRf" id="_tf6vySmYN" role="37wK5m">
                    <node concept="HV5vD" id="_tf6vySmYO" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vySmWR" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vySmWS" role="3cpWs9">
              <property role="TrG5h" value="schmoo" />
              <node concept="3uibUv" id="_tf6vySmV8" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vySmWT" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vySmWU" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vySmWV" role="37wK5m">
                    <property role="Xl_RC" value="schmoo" />
                  </node>
                  <node concept="2ShNRf" id="_tf6vySmWW" role="37wK5m">
                    <node concept="HV5vD" id="_tf6vySmWX" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="_tf6vySl_y" role="3cqZAp">
            <node concept="2OqwBi" id="_tf6vySn7J" role="3clFbG">
              <node concept="37vLTw" id="_tf6vySmWY" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6vySmWS" resolve="schmoo" />
              </node>
              <node concept="liA8E" id="_tf6vySnc6" role="2OqNvi">
                <ref role="37wK5l" node="3Vcd0Foc_4D" resolve="addExtended" />
                <node concept="37vLTw" id="_tf6vySnd4" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vySmYI" resolve="foo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="_tf6vzkEX0" role="3cqZAp" />
          <node concept="3cpWs8" id="_tf6vySnhz" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vySnh$" role="3cpWs9">
              <property role="TrG5h" value="bar" />
              <node concept="3uibUv" id="_tf6vySnh_" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vySnhA" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vySnhB" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vySnhC" role="37wK5m">
                    <property role="Xl_RC" value="bar" />
                  </node>
                  <node concept="2ShNRf" id="_tf6vySnhD" role="37wK5m">
                    <node concept="HV5vD" id="_tf6vySnhE" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vySnt0" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vySnt1" role="3cpWs9">
              <property role="TrG5h" value="schmar" />
              <node concept="3uibUv" id="_tf6vySnt2" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vySnt3" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vySnt4" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vySnt5" role="37wK5m">
                    <property role="Xl_RC" value="schmar" />
                  </node>
                  <node concept="2ShNRf" id="_tf6vySnt6" role="37wK5m">
                    <node concept="HV5vD" id="_tf6vySnt7" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="_tf6vySnsV" role="3cqZAp">
            <node concept="2OqwBi" id="_tf6vySnsW" role="3clFbG">
              <node concept="37vLTw" id="_tf6vySqU9" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6vySnt1" resolve="schmar" />
              </node>
              <node concept="liA8E" id="_tf6vySnsY" role="2OqNvi">
                <ref role="37wK5l" node="3Vcd0Foc_4D" resolve="addExtended" />
                <node concept="37vLTw" id="_tf6vySnzD" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vySnh$" resolve="bar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="_tf6vySnfd" role="3cqZAp" />
          <node concept="3cpWs8" id="_tf6vySnAR" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vySnAS" role="3cpWs9">
              <property role="TrG5h" value="discoverable" />
              <node concept="3uibUv" id="_tf6vySnAT" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZkf" resolve="MockAspectDiscoverable" />
              </node>
              <node concept="2ShNRf" id="_tf6vySnAU" role="33vP2m">
                <node concept="HV5vD" id="_tf6vySnAV" role="2ShVmc">
                  <ref role="HV5vE" node="6nx4rRkXZkf" resolve="MockAspectDiscoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4nDRG5_jhyo" role="3cqZAp">
            <node concept="3cpWsn" id="4nDRG5_jhyp" role="3cpWs9">
              <property role="TrG5h" value="clique" />
              <node concept="3uibUv" id="4nDRG5_jazW" role="1tU5fm">
                <ref role="3uigEE" to="pxw9:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="4nDRG5_jazZ" role="11_B2D">
                  <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                </node>
              </node>
              <node concept="2YIFZM" id="4nDRG5_jhyq" role="33vP2m">
                <ref role="37wK5l" to="pxw9:3KN3A4uV0IR" resolve="discoverAspectClique" />
                <ref role="1Pybhc" to="pxw9:6nx4rRkNE1x" resolve="CliqueBuilder" />
                <node concept="2ShNRf" id="4nDRG5_jhyr" role="37wK5m">
                  <node concept="Tc6Ow" id="4nDRG5_jhys" role="2ShVmc">
                    <node concept="37vLTw" id="4nDRG5_jhyt" role="HW$Y0">
                      <ref role="3cqZAo" node="_tf6vySmWS" resolve="schmoo" />
                    </node>
                    <node concept="37vLTw" id="4nDRG5_jhyu" role="HW$Y0">
                      <ref role="3cqZAo" node="_tf6vySnt1" resolve="schmar" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4nDRG5_jhyv" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vySnAS" resolve="discoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="_tf6vySnA8" role="3cqZAp" />
          <node concept="3cpWs8" id="_tf6vySsqc" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vySsqd" role="3cpWs9">
              <property role="TrG5h" value="fooNS" />
              <node concept="2hMVRd" id="_tf6vySs5W" role="1tU5fm">
                <node concept="17QB3L" id="_tf6vyTLhj" role="2hN53Y" />
              </node>
              <node concept="2ShNRf" id="_tf6vySsqe" role="33vP2m">
                <node concept="2i4dXS" id="_tf6vySsqf" role="2ShVmc">
                  <node concept="Xl_RD" id="_tf6vySsqg" role="HW$Y0">
                    <property role="Xl_RC" value="foo" />
                  </node>
                  <node concept="Xl_RD" id="_tf6vySsqh" role="HW$Y0">
                    <property role="Xl_RC" value="schmoo" />
                  </node>
                  <node concept="17QB3L" id="_tf6vyTMXP" role="HW$YZ" />
                  <node concept="Xl_RD" id="_tf6vySsC1" role="HW$Y0">
                    <property role="Xl_RC" value="bar" />
                  </node>
                  <node concept="Xl_RD" id="_tf6vySsC2" role="HW$Y0">
                    <property role="Xl_RC" value="schmar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="_tf6vySrI7" role="3cqZAp">
            <node concept="2ShNRf" id="_tf6vyTLm8" role="3tpDZA">
              <node concept="2i4dXS" id="_tf6vyTLL7" role="2ShVmc">
                <node concept="2OqwBi" id="4nDRG5_jjT9" role="I$8f6">
                  <node concept="37vLTw" id="4nDRG5_jjCB" role="2Oq$k0">
                    <ref role="3cqZAo" node="4nDRG5_jhyp" resolve="clique" />
                  </node>
                  <node concept="liA8E" id="4nDRG5_jkj4" role="2OqNvi">
                    <ref role="37wK5l" to="pxw9:_tf6vySXzF" resolve="allNamespaces" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="_tf6vyTLfT" role="3tpDZB">
              <ref role="3cqZAo" node="_tf6vySsqd" resolve="fooNS" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="_tf6vzI3UA" role="3s_gse">
        <property role="3s$Bm0" value="commonRootNoAspect" />
        <node concept="3cqZAl" id="_tf6vzI3UB" role="3clF45" />
        <node concept="3Tm1VV" id="_tf6vzI3UC" role="1B3o_S" />
        <node concept="3clFbS" id="_tf6vzI3UD" role="3clF47">
          <node concept="3cpWs8" id="_tf6vzI4b$" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vzI4b_" role="3cpWs9">
              <property role="TrG5h" value="R" />
              <node concept="3uibUv" id="_tf6vzI4bA" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vzI4bB" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vzI4bC" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vzI4bD" role="37wK5m">
                    <property role="Xl_RC" value="R" />
                  </node>
                  <node concept="10Nm6u" id="_tf6vzI4bE" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vzI4jR" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vzI4jS" role="3cpWs9">
              <property role="TrG5h" value="A" />
              <node concept="3uibUv" id="_tf6vzI4jT" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vzI4jU" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vzI4jV" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vzI4jW" role="37wK5m">
                    <property role="Xl_RC" value="A" />
                  </node>
                  <node concept="10Nm6u" id="_tf6vzI4jX" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vzI4bF" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vzI4bG" role="3cpWs9">
              <property role="TrG5h" value="Ax" />
              <node concept="3uibUv" id="_tf6vzI4bH" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vzI4bI" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vzI4bJ" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vzI4bK" role="37wK5m">
                    <property role="Xl_RC" value="Ax" />
                  </node>
                  <node concept="2ShNRf" id="_tf6vzI4bL" role="37wK5m">
                    <node concept="HV5vD" id="_tf6vzI4bM" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vzI4bN" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vzI4bO" role="3cpWs9">
              <property role="TrG5h" value="B" />
              <node concept="3uibUv" id="_tf6vzI4bP" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vzI4bQ" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vzI4bR" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vzI4bS" role="37wK5m">
                    <property role="Xl_RC" value="B" />
                  </node>
                  <node concept="10Nm6u" id="_tf6vzI4bT" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vzI4bU" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vzI4bV" role="3cpWs9">
              <property role="TrG5h" value="Bx" />
              <node concept="3uibUv" id="_tf6vzI4bW" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vzI4bX" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vzI4bY" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vzI4bZ" role="37wK5m">
                    <property role="Xl_RC" value="Bx" />
                  </node>
                  <node concept="2ShNRf" id="_tf6vzI4c0" role="37wK5m">
                    <node concept="HV5vD" id="_tf6vzI4c1" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vzI4c2" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vzI4c3" role="3cpWs9">
              <property role="TrG5h" value="U" />
              <node concept="3uibUv" id="_tf6vzI4c4" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vzI4c5" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vzI4c6" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vzI4c7" role="37wK5m">
                    <property role="Xl_RC" value="U" />
                  </node>
                  <node concept="2ShNRf" id="_tf6vzI59G" role="37wK5m">
                    <node concept="HV5vD" id="_tf6vzI59H" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="_tf6vzI4ch" role="3cqZAp" />
          <node concept="3clFbF" id="_tf6vzI4xW" role="3cqZAp">
            <node concept="2OqwBi" id="_tf6vzI4_E" role="3clFbG">
              <node concept="37vLTw" id="_tf6vzI4xU" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6vzI4jS" resolve="A" />
              </node>
              <node concept="liA8E" id="_tf6vzI4H5" role="2OqNvi">
                <ref role="37wK5l" node="3Vcd0Foc_4D" resolve="addExtended" />
                <node concept="37vLTw" id="_tf6vzI4Jc" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vzI4b_" resolve="R" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="_tf6vzI4ci" role="3cqZAp">
            <node concept="2OqwBi" id="_tf6vzI4cj" role="3clFbG">
              <node concept="37vLTw" id="_tf6vzI4ck" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6vzI4bG" resolve="Ax" />
              </node>
              <node concept="liA8E" id="_tf6vzI4cl" role="2OqNvi">
                <ref role="37wK5l" node="_tf6vyYGnf" resolve="setAuthority" />
                <node concept="37vLTw" id="_tf6vzI4tw" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vzI4jS" resolve="A" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="_tf6vzI4TS" role="3cqZAp">
            <node concept="2OqwBi" id="_tf6vzI4XR" role="3clFbG">
              <node concept="37vLTw" id="_tf6vzILNh" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6vzI4bO" resolve="B" />
              </node>
              <node concept="liA8E" id="_tf6vzI55n" role="2OqNvi">
                <ref role="37wK5l" node="3Vcd0Foc_4D" resolve="addExtended" />
                <node concept="37vLTw" id="_tf6vzI57x" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vzI4jS" resolve="A" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="_tf6vzI4cn" role="3cqZAp">
            <node concept="2OqwBi" id="_tf6vzI4co" role="3clFbG">
              <node concept="37vLTw" id="_tf6vzI4cp" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6vzI4bV" resolve="Bx" />
              </node>
              <node concept="liA8E" id="_tf6vzI4cq" role="2OqNvi">
                <ref role="37wK5l" node="_tf6vyYGnf" resolve="setAuthority" />
                <node concept="37vLTw" id="_tf6vzI4cr" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vzI4bO" resolve="B" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="_tf6vzI5p6" role="3cqZAp">
            <node concept="2OqwBi" id="_tf6vzI5up" role="3clFbG">
              <node concept="37vLTw" id="_tf6vzI5p4" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6vzI4c3" resolve="U" />
              </node>
              <node concept="liA8E" id="_tf6vzI5A3" role="2OqNvi">
                <ref role="37wK5l" node="3Vcd0Foc_4D" resolve="addExtended" />
                <node concept="37vLTw" id="_tf6vzI5Cd" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vzI4b_" resolve="R" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="_tf6vzI5FJ" role="3cqZAp" />
          <node concept="3cpWs8" id="_tf6vzI5QI" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vzI5QJ" role="3cpWs9">
              <property role="TrG5h" value="discoverable" />
              <node concept="3uibUv" id="_tf6vzI5QK" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZkf" resolve="MockAspectDiscoverable" />
              </node>
              <node concept="2ShNRf" id="_tf6vzI5QL" role="33vP2m">
                <node concept="HV5vD" id="_tf6vzI5QM" role="2ShVmc">
                  <ref role="HV5vE" node="6nx4rRkXZkf" resolve="MockAspectDiscoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4nDRG5_jkHp" role="3cqZAp">
            <node concept="3cpWsn" id="4nDRG5_jkHq" role="3cpWs9">
              <property role="TrG5h" value="clique" />
              <node concept="3uibUv" id="4nDRG5_jas8" role="1tU5fm">
                <ref role="3uigEE" to="pxw9:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="4nDRG5_jasb" role="11_B2D">
                  <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                </node>
              </node>
              <node concept="2YIFZM" id="4nDRG5_jkHr" role="33vP2m">
                <ref role="37wK5l" to="pxw9:3KN3A4uV0IR" resolve="discoverAspectClique" />
                <ref role="1Pybhc" to="pxw9:6nx4rRkNE1x" resolve="CliqueBuilder" />
                <node concept="2ShNRf" id="4nDRG5_jkHs" role="37wK5m">
                  <node concept="Tc6Ow" id="4nDRG5_jkHt" role="2ShVmc">
                    <node concept="37vLTw" id="4nDRG5_jkHu" role="HW$Y0">
                      <ref role="3cqZAo" node="_tf6vzI4bO" resolve="B" />
                    </node>
                    <node concept="37vLTw" id="4nDRG5_jkHv" role="HW$Y0">
                      <ref role="3cqZAo" node="_tf6vzI4c3" resolve="U" />
                    </node>
                    <node concept="37vLTw" id="4nDRG5_jkHw" role="HW$Y0">
                      <ref role="3cqZAo" node="_tf6vzI4jS" resolve="A" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4nDRG5_jkHx" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vzI5QJ" resolve="discoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vzI5R5" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vzI5R6" role="3cpWs9">
              <property role="TrG5h" value="one" />
              <node concept="2hMVRd" id="_tf6vzI5R7" role="1tU5fm">
                <node concept="17QB3L" id="_tf6vzI5R8" role="2hN53Y" />
              </node>
              <node concept="2ShNRf" id="_tf6vzI5R9" role="33vP2m">
                <node concept="2i4dXS" id="_tf6vzI5Ra" role="2ShVmc">
                  <node concept="Xl_RD" id="_tf6vzI5Rb" role="HW$Y0">
                    <property role="Xl_RC" value="U" />
                  </node>
                  <node concept="17QB3L" id="_tf6vzI5Rd" role="HW$YZ" />
                  <node concept="Xl_RD" id="_tf6vzI5Rk" role="HW$Y0">
                    <property role="Xl_RC" value="A" />
                  </node>
                  <node concept="Xl_RD" id="_tf6vzI5Rl" role="HW$Y0">
                    <property role="Xl_RC" value="Ax" />
                  </node>
                  <node concept="Xl_RD" id="_tf6vzI5Rm" role="HW$Y0">
                    <property role="Xl_RC" value="B" />
                  </node>
                  <node concept="Xl_RD" id="_tf6vzI5Rn" role="HW$Y0">
                    <property role="Xl_RC" value="Bx" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="_tf6vzI5Rp" role="3cqZAp">
            <node concept="37vLTw" id="4nDRG5_IBJ_" role="3tpDZB">
              <ref role="3cqZAo" node="_tf6vzI5R6" resolve="one" />
            </node>
            <node concept="2ShNRf" id="_tf6vzI5Ru" role="3tpDZA">
              <node concept="2i4dXS" id="_tf6vzI5Rv" role="2ShVmc">
                <node concept="2OqwBi" id="4nDRG5_jo4X" role="I$8f6">
                  <node concept="37vLTw" id="4nDRG5_jnNb" role="2Oq$k0">
                    <ref role="3cqZAo" node="4nDRG5_jkHq" resolve="clique" />
                  </node>
                  <node concept="liA8E" id="4nDRG5_jow8" role="2OqNvi">
                    <ref role="37wK5l" to="pxw9:_tf6vySXzF" resolve="allNamespaces" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="2URzoKVns3Y" role="3s_gse">
        <property role="3s$Bm0" value="commonRootWithAspect" />
        <node concept="3cqZAl" id="2URzoKVns3Z" role="3clF45" />
        <node concept="3Tm1VV" id="2URzoKVns40" role="1B3o_S" />
        <node concept="3clFbS" id="2URzoKVns41" role="3clF47">
          <node concept="3cpWs8" id="2URzoKVns42" role="3cqZAp">
            <node concept="3cpWsn" id="2URzoKVns43" role="3cpWs9">
              <property role="TrG5h" value="R" />
              <node concept="3uibUv" id="2URzoKVns44" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="2URzoKVns45" role="33vP2m">
                <node concept="1pGfFk" id="2URzoKVns46" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="2URzoKVns47" role="37wK5m">
                    <property role="Xl_RC" value="R" />
                  </node>
                  <node concept="10Nm6u" id="2URzoKVns48" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2URzoKVnu1f" role="3cqZAp">
            <node concept="3cpWsn" id="2URzoKVnu1g" role="3cpWs9">
              <property role="TrG5h" value="Rx" />
              <node concept="3uibUv" id="2URzoKVnu1h" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="2URzoKVnu1i" role="33vP2m">
                <node concept="1pGfFk" id="2URzoKVnu1j" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="2URzoKVnu1k" role="37wK5m">
                    <property role="Xl_RC" value="Rx" />
                  </node>
                  <node concept="2ShNRf" id="2URzoKVnuoa" role="37wK5m">
                    <node concept="HV5vD" id="2URzoKVnuob" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2URzoKVns49" role="3cqZAp">
            <node concept="3cpWsn" id="2URzoKVns4a" role="3cpWs9">
              <property role="TrG5h" value="A" />
              <node concept="3uibUv" id="2URzoKVns4b" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="2URzoKVns4c" role="33vP2m">
                <node concept="1pGfFk" id="2URzoKVns4d" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="2URzoKVns4e" role="37wK5m">
                    <property role="Xl_RC" value="A" />
                  </node>
                  <node concept="10Nm6u" id="2URzoKVns4f" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2URzoKVns4g" role="3cqZAp">
            <node concept="3cpWsn" id="2URzoKVns4h" role="3cpWs9">
              <property role="TrG5h" value="Ax" />
              <node concept="3uibUv" id="2URzoKVns4i" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="2URzoKVns4j" role="33vP2m">
                <node concept="1pGfFk" id="2URzoKVns4k" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="2URzoKVns4l" role="37wK5m">
                    <property role="Xl_RC" value="Ax" />
                  </node>
                  <node concept="2ShNRf" id="2URzoKVns4m" role="37wK5m">
                    <node concept="HV5vD" id="2URzoKVns4n" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2URzoKVns4B" role="3cqZAp">
            <node concept="3cpWsn" id="2URzoKVns4C" role="3cpWs9">
              <property role="TrG5h" value="U" />
              <node concept="3uibUv" id="2URzoKVns4D" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="2URzoKVns4E" role="33vP2m">
                <node concept="1pGfFk" id="2URzoKVns4F" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="2URzoKVns4G" role="37wK5m">
                    <property role="Xl_RC" value="U" />
                  </node>
                  <node concept="10Nm6u" id="2URzoKVn$AF" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2URzoKVn$el" role="3cqZAp">
            <node concept="3cpWsn" id="2URzoKVn$em" role="3cpWs9">
              <property role="TrG5h" value="Ux" />
              <node concept="3uibUv" id="2URzoKVn$en" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="2URzoKVn$eo" role="33vP2m">
                <node concept="1pGfFk" id="2URzoKVn$ep" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="2URzoKVn$eq" role="37wK5m">
                    <property role="Xl_RC" value="Ux" />
                  </node>
                  <node concept="2ShNRf" id="2URzoKVn$er" role="37wK5m">
                    <node concept="HV5vD" id="2URzoKVn$es" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2URzoKVnRjn" role="3cqZAp">
            <node concept="3cpWsn" id="2URzoKVnRjo" role="3cpWs9">
              <property role="TrG5h" value="W" />
              <node concept="3uibUv" id="2URzoKVnRjp" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="2URzoKVnRjq" role="33vP2m">
                <node concept="1pGfFk" id="2URzoKVnRjr" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="2URzoKVnRjs" role="37wK5m">
                    <property role="Xl_RC" value="W" />
                  </node>
                  <node concept="10Nm6u" id="2URzoKVnRjt" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2URzoKVnv1K" role="3cqZAp" />
          <node concept="3clFbF" id="2URzoKVnuxD" role="3cqZAp">
            <node concept="2OqwBi" id="2URzoKVnuxE" role="3clFbG">
              <node concept="37vLTw" id="2URzoKVnvG5" role="2Oq$k0">
                <ref role="3cqZAo" node="2URzoKVnu1g" resolve="Rx" />
              </node>
              <node concept="liA8E" id="2URzoKVnuxG" role="2OqNvi">
                <ref role="37wK5l" node="_tf6vyYGnf" resolve="setAuthority" />
                <node concept="37vLTw" id="2URzoKVnvEb" role="37wK5m">
                  <ref role="3cqZAo" node="2URzoKVns43" resolve="R" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2URzoKVns4K" role="3cqZAp">
            <node concept="2OqwBi" id="2URzoKVns4L" role="3clFbG">
              <node concept="37vLTw" id="2URzoKVns4M" role="2Oq$k0">
                <ref role="3cqZAo" node="2URzoKVns4a" resolve="A" />
              </node>
              <node concept="liA8E" id="2URzoKVns4N" role="2OqNvi">
                <ref role="37wK5l" node="3Vcd0Foc_4D" resolve="addExtended" />
                <node concept="37vLTw" id="2URzoKVns4O" role="37wK5m">
                  <ref role="3cqZAo" node="2URzoKVns43" resolve="R" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2URzoKVns4P" role="3cqZAp">
            <node concept="2OqwBi" id="2URzoKVns4Q" role="3clFbG">
              <node concept="37vLTw" id="2URzoKVns4R" role="2Oq$k0">
                <ref role="3cqZAo" node="2URzoKVns4h" resolve="Ax" />
              </node>
              <node concept="liA8E" id="2URzoKVns4S" role="2OqNvi">
                <ref role="37wK5l" node="_tf6vyYGnf" resolve="setAuthority" />
                <node concept="37vLTw" id="2URzoKVns4T" role="37wK5m">
                  <ref role="3cqZAo" node="2URzoKVns4a" resolve="A" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2URzoKVnvJT" role="3cqZAp">
            <node concept="2OqwBi" id="2URzoKVnvJU" role="3clFbG">
              <node concept="37vLTw" id="2URzoKVnwhZ" role="2Oq$k0">
                <ref role="3cqZAo" node="2URzoKVns4h" resolve="Ax" />
              </node>
              <node concept="liA8E" id="2URzoKVnvJW" role="2OqNvi">
                <ref role="37wK5l" node="3Vcd0Foc_4D" resolve="addExtended" />
                <node concept="37vLTw" id="2URzoKVnwfo" role="37wK5m">
                  <ref role="3cqZAo" node="2URzoKVnu1g" resolve="Rx" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2URzoKVns54" role="3cqZAp">
            <node concept="2OqwBi" id="2URzoKVns55" role="3clFbG">
              <node concept="37vLTw" id="2URzoKVns56" role="2Oq$k0">
                <ref role="3cqZAo" node="2URzoKVns4C" resolve="U" />
              </node>
              <node concept="liA8E" id="2URzoKVns57" role="2OqNvi">
                <ref role="37wK5l" node="3Vcd0Foc_4D" resolve="addExtended" />
                <node concept="37vLTw" id="2URzoKVns58" role="37wK5m">
                  <ref role="3cqZAo" node="2URzoKVns43" resolve="R" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2URzoKVn$Cv" role="3cqZAp">
            <node concept="2OqwBi" id="2URzoKVn$Cw" role="3clFbG">
              <node concept="37vLTw" id="2URzoKVn_ag" role="2Oq$k0">
                <ref role="3cqZAo" node="2URzoKVn$em" resolve="Ux" />
              </node>
              <node concept="liA8E" id="2URzoKVn$Cy" role="2OqNvi">
                <ref role="37wK5l" node="_tf6vyYGnf" resolve="setAuthority" />
                <node concept="37vLTw" id="2URzoKVn_ci" role="37wK5m">
                  <ref role="3cqZAo" node="2URzoKVns4C" resolve="U" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2URzoKVn$C$" role="3cqZAp">
            <node concept="2OqwBi" id="2URzoKVn$C_" role="3clFbG">
              <node concept="37vLTw" id="2URzoKVn_g7" role="2Oq$k0">
                <ref role="3cqZAo" node="2URzoKVn$em" resolve="Ux" />
              </node>
              <node concept="liA8E" id="2URzoKVn$CB" role="2OqNvi">
                <ref role="37wK5l" node="3Vcd0Foc_4D" resolve="addExtended" />
                <node concept="37vLTw" id="2URzoKVn$CC" role="37wK5m">
                  <ref role="3cqZAo" node="2URzoKVnu1g" resolve="Rx" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2URzoKVnRIr" role="3cqZAp">
            <node concept="2OqwBi" id="2URzoKVnRIs" role="3clFbG">
              <node concept="liA8E" id="2URzoKVnRIu" role="2OqNvi">
                <ref role="37wK5l" node="3Vcd0Foc_4D" resolve="addExtended" />
                <node concept="37vLTw" id="2URzoKVnRIv" role="37wK5m">
                  <ref role="3cqZAo" node="2URzoKVns43" resolve="R" />
                </node>
              </node>
              <node concept="37vLTw" id="2URzoKVnT$U" role="2Oq$k0">
                <ref role="3cqZAo" node="2URzoKVnRjo" resolve="W" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2URzoKVns59" role="3cqZAp" />
          <node concept="3cpWs8" id="2URzoKVns5a" role="3cqZAp">
            <node concept="3cpWsn" id="2URzoKVns5b" role="3cpWs9">
              <property role="TrG5h" value="discoverable" />
              <node concept="3uibUv" id="2URzoKVns5c" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZkf" resolve="MockAspectDiscoverable" />
              </node>
              <node concept="2ShNRf" id="2URzoKVns5d" role="33vP2m">
                <node concept="HV5vD" id="2URzoKVns5e" role="2ShVmc">
                  <ref role="HV5vE" node="6nx4rRkXZkf" resolve="MockAspectDiscoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4nDRG5_joJ7" role="3cqZAp">
            <node concept="3cpWsn" id="4nDRG5_joJ8" role="3cpWs9">
              <property role="TrG5h" value="clique" />
              <node concept="3uibUv" id="4nDRG5_jaxY" role="1tU5fm">
                <ref role="3uigEE" to="pxw9:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="4nDRG5_jay1" role="11_B2D">
                  <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                </node>
              </node>
              <node concept="2YIFZM" id="4nDRG5_joJ9" role="33vP2m">
                <ref role="37wK5l" to="pxw9:3KN3A4uV0IR" resolve="discoverAspectClique" />
                <ref role="1Pybhc" to="pxw9:6nx4rRkNE1x" resolve="CliqueBuilder" />
                <node concept="2ShNRf" id="4nDRG5_joJa" role="37wK5m">
                  <node concept="Tc6Ow" id="4nDRG5_joJb" role="2ShVmc">
                    <node concept="37vLTw" id="4nDRG5_joJc" role="HW$Y0">
                      <ref role="3cqZAo" node="2URzoKVns4C" resolve="U" />
                    </node>
                    <node concept="37vLTw" id="4nDRG5_joJd" role="HW$Y0">
                      <ref role="3cqZAo" node="2URzoKVns4a" resolve="A" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4nDRG5_joJe" role="37wK5m">
                  <ref role="3cqZAo" node="2URzoKVns5b" resolve="discoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2URzoKVns5D" role="3cqZAp">
            <node concept="3cpWsn" id="2URzoKVns5E" role="3cpWs9">
              <property role="TrG5h" value="one" />
              <node concept="2hMVRd" id="2URzoKVns5F" role="1tU5fm">
                <node concept="17QB3L" id="2URzoKVns5G" role="2hN53Y" />
              </node>
              <node concept="2ShNRf" id="2URzoKVns5H" role="33vP2m">
                <node concept="2i4dXS" id="2URzoKVns5I" role="2ShVmc">
                  <node concept="Xl_RD" id="2URzoKVnA50" role="HW$Y0">
                    <property role="Xl_RC" value="R" />
                  </node>
                  <node concept="Xl_RD" id="2URzoKVnA7n" role="HW$Y0">
                    <property role="Xl_RC" value="Rx" />
                  </node>
                  <node concept="Xl_RD" id="2URzoKVns5J" role="HW$Y0">
                    <property role="Xl_RC" value="A" />
                  </node>
                  <node concept="Xl_RD" id="2URzoKVns5K" role="HW$Y0">
                    <property role="Xl_RC" value="Ax" />
                  </node>
                  <node concept="Xl_RD" id="2URzoKVns5L" role="HW$Y0">
                    <property role="Xl_RC" value="U" />
                  </node>
                  <node concept="Xl_RD" id="2URzoKVns5M" role="HW$Y0">
                    <property role="Xl_RC" value="Ux" />
                  </node>
                  <node concept="17QB3L" id="2URzoKVns5N" role="HW$YZ" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="2URzoKVns5O" role="3cqZAp">
            <node concept="37vLTw" id="4nDRG5_IC_4" role="3tpDZB">
              <ref role="3cqZAo" node="2URzoKVns5E" resolve="one" />
            </node>
            <node concept="2ShNRf" id="2URzoKVns5T" role="3tpDZA">
              <node concept="2i4dXS" id="2URzoKVns5U" role="2ShVmc">
                <node concept="2OqwBi" id="4nDRG5_jqIS" role="I$8f6">
                  <node concept="37vLTw" id="4nDRG5_jqua" role="2Oq$k0">
                    <ref role="3cqZAo" node="4nDRG5_joJ8" resolve="clique" />
                  </node>
                  <node concept="liA8E" id="4nDRG5_jrde" role="2OqNvi">
                    <ref role="37wK5l" to="pxw9:_tf6vySXzF" resolve="allNamespaces" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="_tf6vyYyWN" role="3s_gse">
        <property role="3s$Bm0" value="unrelated" />
        <node concept="3cqZAl" id="_tf6vyYyWO" role="3clF45" />
        <node concept="3Tm1VV" id="_tf6vyYyWP" role="1B3o_S" />
        <node concept="3clFbS" id="_tf6vyYyWQ" role="3clF47">
          <node concept="3cpWs8" id="_tf6vyY$ub" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vyY$uc" role="3cpWs9">
              <property role="TrG5h" value="A" />
              <node concept="3uibUv" id="_tf6vyY$ud" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vyY$ue" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vyY$uf" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vyY$ug" role="37wK5m">
                    <property role="Xl_RC" value="A" />
                  </node>
                  <node concept="10Nm6u" id="_tf6vyYJxF" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vyYJdj" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vyYJdk" role="3cpWs9">
              <property role="TrG5h" value="Ax" />
              <node concept="3uibUv" id="_tf6vyYJdl" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vyYJdm" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vyYJdn" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vyYJdo" role="37wK5m">
                    <property role="Xl_RC" value="Ax" />
                  </node>
                  <node concept="2ShNRf" id="_tf6vyYJdp" role="37wK5m">
                    <node concept="HV5vD" id="_tf6vyYJdq" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vyY$uj" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vyY$uk" role="3cpWs9">
              <property role="TrG5h" value="B" />
              <node concept="3uibUv" id="_tf6vyY$ul" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vyY$um" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vyY$un" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vyY$uo" role="37wK5m">
                    <property role="Xl_RC" value="B" />
                  </node>
                  <node concept="10Nm6u" id="_tf6vyYJGf" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vyYJz1" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vyYJz2" role="3cpWs9">
              <property role="TrG5h" value="Bx" />
              <node concept="3uibUv" id="_tf6vyYJz3" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vyYJz4" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vyYJz5" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vyYJz6" role="37wK5m">
                    <property role="Xl_RC" value="Bx" />
                  </node>
                  <node concept="2ShNRf" id="_tf6vyYJz7" role="37wK5m">
                    <node concept="HV5vD" id="_tf6vyYJz8" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vyY$Ca" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vyY$Cb" role="3cpWs9">
              <property role="TrG5h" value="U" />
              <node concept="3uibUv" id="_tf6vyY$Cc" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vyY$Cd" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vyY$Ce" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vyY$Cf" role="37wK5m">
                    <property role="Xl_RC" value="U" />
                  </node>
                  <node concept="10Nm6u" id="_tf6vyYJT3" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vyYJJw" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vyYJJx" role="3cpWs9">
              <property role="TrG5h" value="Ux" />
              <node concept="3uibUv" id="_tf6vyYJJy" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vyYJJz" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vyYJJ$" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vyYJJ_" role="37wK5m">
                    <property role="Xl_RC" value="Ux" />
                  </node>
                  <node concept="2ShNRf" id="_tf6vyYJJA" role="37wK5m">
                    <node concept="HV5vD" id="_tf6vyYJJB" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="_tf6vyY$ur" role="3cqZAp" />
          <node concept="3clFbF" id="_tf6vyYY$8" role="3cqZAp">
            <node concept="2OqwBi" id="_tf6vyYYJj" role="3clFbG">
              <node concept="37vLTw" id="_tf6vyYY$6" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6vyYJdk" resolve="Ax" />
              </node>
              <node concept="liA8E" id="_tf6vyYYPs" role="2OqNvi">
                <ref role="37wK5l" node="_tf6vyYGnf" resolve="setAuthority" />
                <node concept="37vLTw" id="_tf6vyYYQ$" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vyY$uc" resolve="A" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="_tf6vyYJV6" role="3cqZAp">
            <node concept="2OqwBi" id="_tf6vyYJV7" role="3clFbG">
              <node concept="37vLTw" id="_tf6vyYK4f" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6vyYJz2" resolve="Bx" />
              </node>
              <node concept="liA8E" id="_tf6vyYJV9" role="2OqNvi">
                <ref role="37wK5l" node="_tf6vyYGnf" resolve="setAuthority" />
                <node concept="37vLTw" id="_tf6vyYK6J" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vyY$uk" resolve="B" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="_tf6vyYK93" role="3cqZAp">
            <node concept="2OqwBi" id="_tf6vyYK94" role="3clFbG">
              <node concept="37vLTw" id="_tf6vyYKjW" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6vyYJJx" resolve="Ux" />
              </node>
              <node concept="liA8E" id="_tf6vyYK96" role="2OqNvi">
                <ref role="37wK5l" node="_tf6vyYGnf" resolve="setAuthority" />
                <node concept="37vLTw" id="_tf6vyYKmq" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vyY$Cb" resolve="U" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="_tf6vyZ1$J" role="3cqZAp" />
          <node concept="3clFbF" id="_tf6vyYPVU" role="3cqZAp">
            <node concept="2OqwBi" id="_tf6vyYPVV" role="3clFbG">
              <node concept="37vLTw" id="_tf6vyYPVW" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6vyY$uk" resolve="B" />
              </node>
              <node concept="liA8E" id="_tf6vyYPVX" role="2OqNvi">
                <ref role="37wK5l" node="3Vcd0Foc_4D" resolve="addExtended" />
                <node concept="37vLTw" id="_tf6vyYPVY" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vyY$uc" resolve="A" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="_tf6vyY$sW" role="3cqZAp" />
          <node concept="3cpWs8" id="_tf6vyY$S2" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vyY$S3" role="3cpWs9">
              <property role="TrG5h" value="discoverable" />
              <node concept="3uibUv" id="_tf6vyY$S4" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZkf" resolve="MockAspectDiscoverable" />
              </node>
              <node concept="2ShNRf" id="_tf6vyY$S5" role="33vP2m">
                <node concept="HV5vD" id="_tf6vyY$S6" role="2ShVmc">
                  <ref role="HV5vE" node="6nx4rRkXZkf" resolve="MockAspectDiscoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4nDRG5_jrt2" role="3cqZAp">
            <node concept="3cpWsn" id="4nDRG5_jrt3" role="3cpWs9">
              <property role="TrG5h" value="clique" />
              <node concept="3uibUv" id="4nDRG5_jaq7" role="1tU5fm">
                <ref role="3uigEE" to="pxw9:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="4nDRG5_jaqa" role="11_B2D">
                  <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                </node>
              </node>
              <node concept="2YIFZM" id="4nDRG5_jrt4" role="33vP2m">
                <ref role="37wK5l" to="pxw9:3KN3A4uV0IR" resolve="discoverAspectClique" />
                <ref role="1Pybhc" to="pxw9:6nx4rRkNE1x" resolve="CliqueBuilder" />
                <node concept="2ShNRf" id="4nDRG5_jrt5" role="37wK5m">
                  <node concept="Tc6Ow" id="4nDRG5_jrt6" role="2ShVmc">
                    <node concept="37vLTw" id="4nDRG5_jrt7" role="HW$Y0">
                      <ref role="3cqZAo" node="_tf6vyY$uk" resolve="B" />
                    </node>
                    <node concept="37vLTw" id="4nDRG5_jrt8" role="HW$Y0">
                      <ref role="3cqZAo" node="_tf6vyY$Cb" resolve="U" />
                    </node>
                    <node concept="37vLTw" id="4nDRG5_jrt9" role="HW$Y0">
                      <ref role="3cqZAo" node="_tf6vyY$uc" resolve="A" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4nDRG5_jrta" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vyY$S3" resolve="discoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vzr7ZX" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vzr7ZY" role="3cpWs9">
              <property role="TrG5h" value="one" />
              <node concept="2hMVRd" id="_tf6vzr7ZZ" role="1tU5fm">
                <node concept="17QB3L" id="_tf6vzr800" role="2hN53Y" />
              </node>
              <node concept="2ShNRf" id="_tf6vzr801" role="33vP2m">
                <node concept="2i4dXS" id="_tf6vzr802" role="2ShVmc">
                  <node concept="Xl_RD" id="_tf6vzr803" role="HW$Y0">
                    <property role="Xl_RC" value="U" />
                  </node>
                  <node concept="Xl_RD" id="_tf6vzr804" role="HW$Y0">
                    <property role="Xl_RC" value="Ux" />
                  </node>
                  <node concept="17QB3L" id="_tf6vzr805" role="HW$YZ" />
                  <node concept="Xl_RD" id="_tf6vzr80c" role="HW$Y0">
                    <property role="Xl_RC" value="A" />
                  </node>
                  <node concept="Xl_RD" id="_tf6vzr80d" role="HW$Y0">
                    <property role="Xl_RC" value="Ax" />
                  </node>
                  <node concept="Xl_RD" id="_tf6vzr8HD" role="HW$Y0">
                    <property role="Xl_RC" value="B" />
                  </node>
                  <node concept="Xl_RD" id="_tf6vzr8KY" role="HW$Y0">
                    <property role="Xl_RC" value="Bx" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="_tf6vzr80f" role="3cqZAp">
            <node concept="37vLTw" id="4nDRG5_ICL4" role="3tpDZB">
              <ref role="3cqZAo" node="_tf6vzr7ZY" resolve="one" />
            </node>
            <node concept="2ShNRf" id="_tf6vzr80k" role="3tpDZA">
              <node concept="2i4dXS" id="_tf6vzr80l" role="2ShVmc">
                <node concept="2OqwBi" id="4nDRG5_jtjO" role="I$8f6">
                  <node concept="37vLTw" id="4nDRG5_jt4y" role="2Oq$k0">
                    <ref role="3cqZAo" node="4nDRG5_jrt3" resolve="clique" />
                  </node>
                  <node concept="liA8E" id="4nDRG5_jtRO" role="2OqNvi">
                    <ref role="37wK5l" to="pxw9:_tf6vySXzF" resolve="allNamespaces" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="_tf6v$43$K" role="3s_gse">
        <property role="3s$Bm0" value="sidekickExtends" />
        <node concept="3cqZAl" id="_tf6v$43$L" role="3clF45" />
        <node concept="3Tm1VV" id="_tf6v$43$M" role="1B3o_S" />
        <node concept="3clFbS" id="_tf6v$43$N" role="3clF47">
          <node concept="3cpWs8" id="_tf6v$43$O" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6v$43$P" role="3cpWs9">
              <property role="TrG5h" value="A" />
              <node concept="3uibUv" id="_tf6v$43$Q" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6v$43$R" role="33vP2m">
                <node concept="1pGfFk" id="_tf6v$43$S" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6v$43$T" role="37wK5m">
                    <property role="Xl_RC" value="A" />
                  </node>
                  <node concept="10Nm6u" id="_tf6v$43$U" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6v$43$V" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6v$43$W" role="3cpWs9">
              <property role="TrG5h" value="Ax" />
              <node concept="3uibUv" id="_tf6v$43$X" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6v$43$Y" role="33vP2m">
                <node concept="1pGfFk" id="_tf6v$43$Z" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6v$43_0" role="37wK5m">
                    <property role="Xl_RC" value="Ax" />
                  </node>
                  <node concept="2ShNRf" id="_tf6v$43_1" role="37wK5m">
                    <node concept="HV5vD" id="_tf6v$43_2" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6v$43_3" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6v$43_4" role="3cpWs9">
              <property role="TrG5h" value="B" />
              <node concept="3uibUv" id="_tf6v$43_5" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6v$43_6" role="33vP2m">
                <node concept="1pGfFk" id="_tf6v$43_7" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6v$43_8" role="37wK5m">
                    <property role="Xl_RC" value="B" />
                  </node>
                  <node concept="10Nm6u" id="_tf6v$43_9" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6v$43_a" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6v$43_b" role="3cpWs9">
              <property role="TrG5h" value="Bx" />
              <node concept="3uibUv" id="_tf6v$43_c" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6v$43_d" role="33vP2m">
                <node concept="1pGfFk" id="_tf6v$43_e" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6v$43_f" role="37wK5m">
                    <property role="Xl_RC" value="Bx" />
                  </node>
                  <node concept="2ShNRf" id="_tf6v$43_g" role="37wK5m">
                    <node concept="HV5vD" id="_tf6v$43_h" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6v$43_i" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6v$43_j" role="3cpWs9">
              <property role="TrG5h" value="C" />
              <node concept="3uibUv" id="_tf6v$43_k" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6v$43_l" role="33vP2m">
                <node concept="1pGfFk" id="_tf6v$43_m" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6v$43_n" role="37wK5m">
                    <property role="Xl_RC" value="C" />
                  </node>
                  <node concept="2ShNRf" id="_tf6v$462R" role="37wK5m">
                    <node concept="HV5vD" id="_tf6v$462S" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="_tf6v$43_x" role="3cqZAp" />
          <node concept="3clFbF" id="_tf6v$43_y" role="3cqZAp">
            <node concept="2OqwBi" id="_tf6v$43_z" role="3clFbG">
              <node concept="37vLTw" id="_tf6v$43_$" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6v$43$W" resolve="Ax" />
              </node>
              <node concept="liA8E" id="_tf6v$43__" role="2OqNvi">
                <ref role="37wK5l" node="_tf6vyYGnf" resolve="setAuthority" />
                <node concept="37vLTw" id="_tf6v$43_A" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6v$43$P" resolve="A" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="_tf6v$43_B" role="3cqZAp">
            <node concept="2OqwBi" id="_tf6v$43_C" role="3clFbG">
              <node concept="37vLTw" id="_tf6v$43_D" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6v$43_b" resolve="Bx" />
              </node>
              <node concept="liA8E" id="_tf6v$43_E" role="2OqNvi">
                <ref role="37wK5l" node="_tf6vyYGnf" resolve="setAuthority" />
                <node concept="37vLTw" id="_tf6v$43_F" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6v$43_4" resolve="B" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="_tf6v$46Rh" role="3cqZAp">
            <node concept="2OqwBi" id="_tf6v$47iD" role="3clFbG">
              <node concept="37vLTw" id="_tf6v$46Rf" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6v$43_4" resolve="B" />
              </node>
              <node concept="liA8E" id="_tf6v$47ru" role="2OqNvi">
                <ref role="37wK5l" node="3Vcd0Foc_4D" resolve="addExtended" />
                <node concept="37vLTw" id="_tf6v$47uh" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6v$43$P" resolve="A" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="_tf6v$47XX" role="3cqZAp">
            <node concept="2OqwBi" id="_tf6v$48rN" role="3clFbG">
              <node concept="37vLTw" id="_tf6v$47XV" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6v$43_b" resolve="Bx" />
              </node>
              <node concept="liA8E" id="_tf6v$48yW" role="2OqNvi">
                <ref role="37wK5l" node="3Vcd0Foc_4D" resolve="addExtended" />
                <node concept="37vLTw" id="_tf6v$48_t" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6v$43_j" resolve="C" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="_tf6v$43_R" role="3cqZAp" />
          <node concept="3cpWs8" id="_tf6v$43_S" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6v$43_T" role="3cpWs9">
              <property role="TrG5h" value="discoverable" />
              <node concept="3uibUv" id="_tf6v$43_U" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZkf" resolve="MockAspectDiscoverable" />
              </node>
              <node concept="2ShNRf" id="_tf6v$43_V" role="33vP2m">
                <node concept="HV5vD" id="_tf6v$43_W" role="2ShVmc">
                  <ref role="HV5vE" node="6nx4rRkXZkf" resolve="MockAspectDiscoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4nDRG5_jyif" role="3cqZAp">
            <node concept="3cpWsn" id="4nDRG5_jyig" role="3cpWs9">
              <property role="TrG5h" value="clique" />
              <node concept="3uibUv" id="4nDRG5_jawZ" role="1tU5fm">
                <ref role="3uigEE" to="pxw9:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="4nDRG5_jax2" role="11_B2D">
                  <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                </node>
              </node>
              <node concept="2YIFZM" id="4nDRG5_jyih" role="33vP2m">
                <ref role="37wK5l" to="pxw9:3KN3A4uV0IR" resolve="discoverAspectClique" />
                <ref role="1Pybhc" to="pxw9:6nx4rRkNE1x" resolve="CliqueBuilder" />
                <node concept="2ShNRf" id="4nDRG5_jyii" role="37wK5m">
                  <node concept="Tc6Ow" id="4nDRG5_jyij" role="2ShVmc">
                    <node concept="37vLTw" id="4nDRG5_jyik" role="HW$Y0">
                      <ref role="3cqZAo" node="_tf6v$43_4" resolve="B" />
                    </node>
                    <node concept="37vLTw" id="4nDRG5_jyil" role="HW$Y0">
                      <ref role="3cqZAo" node="_tf6v$43$P" resolve="A" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4nDRG5_jyim" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6v$43_T" resolve="discoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6v$43Ao" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6v$43Ap" role="3cpWs9">
              <property role="TrG5h" value="one" />
              <node concept="2hMVRd" id="_tf6v$43Aq" role="1tU5fm">
                <node concept="17QB3L" id="_tf6v$43Ar" role="2hN53Y" />
              </node>
              <node concept="2ShNRf" id="_tf6v$43As" role="33vP2m">
                <node concept="2i4dXS" id="_tf6v$43At" role="2ShVmc">
                  <node concept="Xl_RD" id="_tf6v$43Au" role="HW$Y0">
                    <property role="Xl_RC" value="A" />
                  </node>
                  <node concept="Xl_RD" id="_tf6v$43Av" role="HW$Y0">
                    <property role="Xl_RC" value="Ax" />
                  </node>
                  <node concept="Xl_RD" id="_tf6v$43Aw" role="HW$Y0">
                    <property role="Xl_RC" value="B" />
                  </node>
                  <node concept="Xl_RD" id="_tf6v$43Ax" role="HW$Y0">
                    <property role="Xl_RC" value="Bx" />
                  </node>
                  <node concept="Xl_RD" id="_tf6v$4aHA" role="HW$Y0">
                    <property role="Xl_RC" value="C" />
                  </node>
                  <node concept="17QB3L" id="_tf6v$43Ay" role="HW$YZ" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="_tf6v$43Az" role="3cqZAp">
            <node concept="37vLTw" id="4nDRG5_ICVD" role="3tpDZB">
              <ref role="3cqZAo" node="_tf6v$43Ap" resolve="one" />
            </node>
            <node concept="2ShNRf" id="_tf6v$43AC" role="3tpDZA">
              <node concept="2i4dXS" id="_tf6v$43AD" role="2ShVmc">
                <node concept="2OqwBi" id="4nDRG5_j$EH" role="I$8f6">
                  <node concept="37vLTw" id="4nDRG5_j$pq" role="2Oq$k0">
                    <ref role="3cqZAo" node="4nDRG5_jyig" resolve="clique" />
                  </node>
                  <node concept="liA8E" id="4nDRG5_j_5p" role="2OqNvi">
                    <ref role="37wK5l" to="pxw9:_tf6vySXzF" resolve="allNamespaces" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="_tf6vzrf$X" role="3s_gse">
        <property role="3s$Bm0" value="langAndSidekick" />
        <node concept="3cqZAl" id="_tf6vzrf$Y" role="3clF45" />
        <node concept="3Tm1VV" id="_tf6vzrf$Z" role="1B3o_S" />
        <node concept="3clFbS" id="_tf6vzrf_0" role="3clF47">
          <node concept="3cpWs8" id="_tf6vzrfQm" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vzrfQn" role="3cpWs9">
              <property role="TrG5h" value="A" />
              <node concept="3uibUv" id="_tf6vzrfQo" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vzrfQp" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vzrfQq" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vzrfQr" role="37wK5m">
                    <property role="Xl_RC" value="A" />
                  </node>
                  <node concept="10Nm6u" id="_tf6vzrfQs" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vzrq5$" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vzrq5_" role="3cpWs9">
              <property role="TrG5h" value="ax" />
              <node concept="3uibUv" id="_tf6vzrfRw" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
              </node>
              <node concept="2ShNRf" id="_tf6vzrq5A" role="33vP2m">
                <node concept="HV5vD" id="_tf6vzrq5B" role="2ShVmc">
                  <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vzrfQt" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vzrfQu" role="3cpWs9">
              <property role="TrG5h" value="Ax" />
              <node concept="3uibUv" id="_tf6vzrfQv" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="_tf6vzrfQw" role="33vP2m">
                <node concept="1pGfFk" id="_tf6vzrfQx" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="MockLanguageRuntime" />
                  <node concept="Xl_RD" id="_tf6vzrfQy" role="37wK5m">
                    <property role="Xl_RC" value="Ax" />
                  </node>
                  <node concept="37vLTw" id="_tf6vzrq5C" role="37wK5m">
                    <ref role="3cqZAo" node="_tf6vzrq5_" resolve="ax" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="_tf6vzrfF6" role="3cqZAp" />
          <node concept="3clFbF" id="_tf6vzrfVu" role="3cqZAp">
            <node concept="2OqwBi" id="_tf6vzrfVv" role="3clFbG">
              <node concept="37vLTw" id="_tf6vzrfVw" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6vzrfQu" resolve="Ax" />
              </node>
              <node concept="liA8E" id="_tf6vzrfVx" role="2OqNvi">
                <ref role="37wK5l" node="_tf6vyYGnf" resolve="setAuthority" />
                <node concept="37vLTw" id="_tf6vzrfVy" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vzrfQn" resolve="A" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="_tf6vzrfUc" role="3cqZAp" />
          <node concept="3cpWs8" id="_tf6vzrfXW" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vzrfXX" role="3cpWs9">
              <property role="TrG5h" value="discoverable" />
              <node concept="3uibUv" id="_tf6vzrfXY" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZkf" resolve="MockAspectDiscoverable" />
              </node>
              <node concept="2ShNRf" id="_tf6vzrfXZ" role="33vP2m">
                <node concept="HV5vD" id="_tf6vzrfY0" role="2ShVmc">
                  <ref role="HV5vE" node="6nx4rRkXZkf" resolve="MockAspectDiscoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4nDRG5_j_j9" role="3cqZAp">
            <node concept="3cpWsn" id="4nDRG5_j_ja" role="3cpWs9">
              <property role="TrG5h" value="clique" />
              <node concept="3uibUv" id="4nDRG5_jayE" role="1tU5fm">
                <ref role="3uigEE" to="pxw9:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="4nDRG5_jayH" role="11_B2D">
                  <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
                </node>
              </node>
              <node concept="2YIFZM" id="4nDRG5_j_jb" role="33vP2m">
                <ref role="37wK5l" to="pxw9:3KN3A4uV0IR" resolve="discoverAspectClique" />
                <ref role="1Pybhc" to="pxw9:6nx4rRkNE1x" resolve="CliqueBuilder" />
                <node concept="2ShNRf" id="4nDRG5_j_jc" role="37wK5m">
                  <node concept="Tc6Ow" id="4nDRG5_j_jd" role="2ShVmc">
                    <node concept="37vLTw" id="4nDRG5_j_je" role="HW$Y0">
                      <ref role="3cqZAo" node="_tf6vzrfQu" resolve="Ax" />
                    </node>
                    <node concept="37vLTw" id="4nDRG5_j_jf" role="HW$Y0">
                      <ref role="3cqZAo" node="_tf6vzrfQn" resolve="A" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4nDRG5_j_jg" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vzrfXX" resolve="discoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vzrgAN" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vzrgAO" role="3cpWs9">
              <property role="TrG5h" value="one" />
              <node concept="2hMVRd" id="_tf6vzrgAP" role="1tU5fm">
                <node concept="17QB3L" id="_tf6vzrgAQ" role="2hN53Y" />
              </node>
              <node concept="2ShNRf" id="_tf6vzrgAR" role="33vP2m">
                <node concept="2i4dXS" id="_tf6vzrgAS" role="2ShVmc">
                  <node concept="Xl_RD" id="_tf6vzrgAT" role="HW$Y0">
                    <property role="Xl_RC" value="A" />
                  </node>
                  <node concept="Xl_RD" id="_tf6vzrgAU" role="HW$Y0">
                    <property role="Xl_RC" value="Ax" />
                  </node>
                  <node concept="17QB3L" id="_tf6vzrgAV" role="HW$YZ" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="_tf6vzrgB7" role="3cqZAp">
            <node concept="37vLTw" id="4nDRG5_ID66" role="3tpDZB">
              <ref role="3cqZAo" node="_tf6vzrgAO" resolve="one" />
            </node>
            <node concept="2ShNRf" id="_tf6vzrgBc" role="3tpDZA">
              <node concept="2i4dXS" id="_tf6vzrgBd" role="2ShVmc">
                <node concept="2OqwBi" id="4nDRG5_jBg$" role="I$8f6">
                  <node concept="37vLTw" id="4nDRG5_jAXD" role="2Oq$k0">
                    <ref role="3cqZAo" node="4nDRG5_j_ja" resolve="clique" />
                  </node>
                  <node concept="liA8E" id="4nDRG5_jBC0" role="2OqNvi">
                    <ref role="37wK5l" to="pxw9:_tf6vySXzF" resolve="allNamespaces" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="_tf6vzrqOC" role="3cqZAp">
            <node concept="2ShNRf" id="_tf6vzrrc_" role="3tpDZB">
              <node concept="Tc6Ow" id="_tf6vzrrmF" role="2ShVmc">
                <node concept="37vLTw" id="_tf6vzrryf" role="HW$Y0">
                  <ref role="3cqZAo" node="_tf6vzrq5_" resolve="ax" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="_tf6vzrsHB" role="3tpDZA">
              <node concept="37vLTw" id="4nDRG5_jBZB" role="2Oq$k0">
                <ref role="3cqZAo" node="4nDRG5_j_ja" resolve="clique" />
              </node>
              <node concept="liA8E" id="_tf6vzrsYU" role="2OqNvi">
                <ref role="37wK5l" to="pxw9:3KN3A4uUhpW" resolve="aspects" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6nx4rRkXZkf">
    <property role="TrG5h" value="MockAspectDiscoverable" />
    <node concept="2tJIrI" id="6nx4rRkXZmo" role="jymVt" />
    <node concept="3clFb_" id="IFW4V2y54C" role="jymVt">
      <property role="TrG5h" value="aspectClass" />
      <node concept="3uibUv" id="IFW4V2y54D" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3uibUv" id="IFW4V2y54H" role="11_B2D">
          <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
        </node>
      </node>
      <node concept="3Tm1VV" id="IFW4V2y54F" role="1B3o_S" />
      <node concept="3clFbS" id="IFW4V2y54I" role="3clF47">
        <node concept="3clFbF" id="IFW4V2y54L" role="3cqZAp">
          <node concept="10Nm6u" id="IFW4V2y54K" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="IFW4V2y54J" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="IFW4V2y4M_" role="jymVt" />
    <node concept="3clFb_" id="6nx4rRkXZ$Y" role="jymVt">
      <property role="TrG5h" value="discover" />
      <node concept="37vLTG" id="6nx4rRkXZ$Z" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="3uibUv" id="6nx4rRkXZ_5" role="1tU5fm">
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
        </node>
      </node>
      <node concept="3uibUv" id="6nx4rRkXZ_4" role="3clF45">
        <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
      </node>
      <node concept="3Tm1VV" id="6nx4rRkXZ_2" role="1B3o_S" />
      <node concept="3clFbS" id="6nx4rRkXZ_6" role="3clF47">
        <node concept="3clFbF" id="3Vcd0Focs1w" role="3cqZAp">
          <node concept="2OqwBi" id="3Vcd0Focs4$" role="3clFbG">
            <node concept="37vLTw" id="3Vcd0Focs1v" role="2Oq$k0">
              <ref role="3cqZAo" node="6nx4rRkXZ$Z" resolve="lang" />
            </node>
            <node concept="2OwXpG" id="3Vcd0FocsfR" role="2OqNvi">
              <ref role="2Oxat5" node="3Vcd0FocreF" resolve="aspect" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6nx4rRkXZ_7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6nx4rRkY0AD" role="jymVt" />
    <node concept="3clFb_" id="6nx4rRkXZ_8" role="jymVt">
      <property role="TrG5h" value="isSidekick" />
      <node concept="37vLTG" id="6nx4rRkXZ_9" role="3clF46">
        <property role="TrG5h" value="sidekick" />
        <node concept="3uibUv" id="6nx4rRkXZ_j" role="1tU5fm">
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
        </node>
      </node>
      <node concept="37vLTG" id="6nx4rRkXZ_b" role="3clF46">
        <property role="TrG5h" value="authority" />
        <node concept="3uibUv" id="6nx4rRkXZ_k" role="1tU5fm">
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
        </node>
      </node>
      <node concept="10P_77" id="6nx4rRkXZ_d" role="3clF45" />
      <node concept="3Tm1VV" id="6nx4rRkXZ_e" role="1B3o_S" />
      <node concept="3clFbS" id="6nx4rRkXZ_l" role="3clF47">
        <node concept="3clFbF" id="_tf6vyYQjU" role="3cqZAp">
          <node concept="3clFbC" id="_tf6vyYQBd" role="3clFbG">
            <node concept="37vLTw" id="_tf6vyYQIo" role="3uHU7w">
              <ref role="3cqZAo" node="6nx4rRkXZ_b" resolve="authority" />
            </node>
            <node concept="2OqwBi" id="_tf6vyYQoq" role="3uHU7B">
              <node concept="37vLTw" id="_tf6vyYQjT" role="2Oq$k0">
                <ref role="3cqZAo" node="6nx4rRkXZ_9" resolve="sidekick" />
              </node>
              <node concept="2OwXpG" id="_tf6vyYQ$5" role="2OqNvi">
                <ref role="2Oxat5" node="_tf6vyYFNn" resolve="authority" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6nx4rRkXZ_m" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6nx4rRkY0ur" role="jymVt" />
    <node concept="3clFb_" id="6nx4rRkXZ_p" role="jymVt">
      <property role="TrG5h" value="getExtending" />
      <node concept="3uibUv" id="6nx4rRkXZ_q" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="6nx4rRkXZ_x" role="11_B2D">
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6nx4rRkXZ_s" role="1B3o_S" />
      <node concept="37vLTG" id="6nx4rRkXZ_u" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="3uibUv" id="6nx4rRkXZ_w" role="1tU5fm">
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
        </node>
      </node>
      <node concept="3clFbS" id="6nx4rRkXZ_y" role="3clF47">
        <node concept="3clFbF" id="3Vcd0FocubZ" role="3cqZAp">
          <node concept="2OqwBi" id="3Vcd0FocuXw" role="3clFbG">
            <node concept="2OqwBi" id="3Vcd0Focufe" role="2Oq$k0">
              <node concept="37vLTw" id="3Vcd0FocubY" role="2Oq$k0">
                <ref role="3cqZAo" node="6nx4rRkXZ_u" resolve="lang" />
              </node>
              <node concept="2OwXpG" id="3Vcd0FocuqT" role="2OqNvi">
                <ref role="2Oxat5" node="3Vcd0Focsw1" resolve="extending" />
              </node>
            </node>
            <node concept="26Dbio" id="3Vcd0FocvED" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6nx4rRkXZ_z" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6nx4rRkY0me" role="jymVt" />
    <node concept="3clFb_" id="6nx4rRkXZ_A" role="jymVt">
      <property role="TrG5h" value="getExtended" />
      <node concept="3uibUv" id="6nx4rRkXZ_B" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="6nx4rRkXZ_I" role="11_B2D">
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6nx4rRkXZ_D" role="1B3o_S" />
      <node concept="37vLTG" id="6nx4rRkXZ_F" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="3uibUv" id="6nx4rRkXZ_H" role="1tU5fm">
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
        </node>
      </node>
      <node concept="3clFbS" id="6nx4rRkXZ_J" role="3clF47">
        <node concept="3clFbF" id="3Vcd0FocvJM" role="3cqZAp">
          <node concept="2OqwBi" id="3Vcd0FocwwV" role="3clFbG">
            <node concept="2OqwBi" id="3Vcd0FocvN1" role="2Oq$k0">
              <node concept="37vLTw" id="3Vcd0FocvJL" role="2Oq$k0">
                <ref role="3cqZAo" node="6nx4rRkXZ_F" resolve="lang" />
              </node>
              <node concept="2OwXpG" id="3Vcd0FocvYG" role="2OqNvi">
                <ref role="2Oxat5" node="3Vcd0FoctT1" resolve="extended" />
              </node>
            </node>
            <node concept="26Dbio" id="3Vcd0FocxjV" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6nx4rRkXZ_K" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6nx4rRkY0c1" role="jymVt" />
    <node concept="3clFb_" id="6nx4rRkXZ_N" role="jymVt">
      <property role="TrG5h" value="getNamespace" />
      <node concept="37vLTG" id="6nx4rRkXZ_O" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="3uibUv" id="6nx4rRkXZ_T" role="1tU5fm">
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
        </node>
      </node>
      <node concept="17QB3L" id="6nx4rRkXZ_Q" role="3clF45" />
      <node concept="3Tm1VV" id="6nx4rRkXZ_R" role="1B3o_S" />
      <node concept="3clFbS" id="6nx4rRkXZ_U" role="3clF47">
        <node concept="3clFbF" id="3Vcd0FocxUw" role="3cqZAp">
          <node concept="2OqwBi" id="3Vcd0FocxZ0" role="3clFbG">
            <node concept="37vLTw" id="3Vcd0FocxUv" role="2Oq$k0">
              <ref role="3cqZAo" node="6nx4rRkXZ_O" resolve="lang" />
            </node>
            <node concept="liA8E" id="_tf6vyR0vI" role="2OqNvi">
              <ref role="37wK5l" node="_tf6vyQYFd" resolve="namespace" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6nx4rRkXZ_V" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6nx4rRkXZmx" role="jymVt" />
    <node concept="3uibUv" id="6nx4rRkXZlB" role="EKbjA">
      <ref role="3uigEE" to="pxw9:NKt6ynom3d" resolve="AspectDiscoverable" />
      <node concept="3uibUv" id="6nx4rRkXZwZ" role="11_B2D">
        <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
      </node>
      <node concept="3uibUv" id="6nx4rRkXZxB" role="11_B2D">
        <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6nx4rRkXZtd">
    <property role="TrG5h" value="MockLanguageRuntime" />
    <node concept="2tJIrI" id="3Vcd0FocqPV" role="jymVt" />
    <node concept="3clFbW" id="3Vcd0FocqXh" role="jymVt">
      <node concept="37vLTG" id="3Vcd0Focxot" role="3clF46">
        <property role="TrG5h" value="ns" />
        <node concept="17QB3L" id="3Vcd0Focxri" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3Vcd0Focr4C" role="3clF46">
        <property role="TrG5h" value="aspect" />
        <node concept="3uibUv" id="3Vcd0Focr5L" role="1tU5fm">
          <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
        </node>
      </node>
      <node concept="3cqZAl" id="3Vcd0FocqXj" role="3clF45" />
      <node concept="3clFbS" id="3Vcd0FocqXk" role="3clF47">
        <node concept="3clFbF" id="3Vcd0Focxst" role="3cqZAp">
          <node concept="37vLTI" id="3Vcd0Focxsv" role="3clFbG">
            <node concept="2OqwBi" id="3Vcd0FocxK9" role="37vLTJ">
              <node concept="Xjq3P" id="3Vcd0FocxL0" role="2Oq$k0" />
              <node concept="2OwXpG" id="3Vcd0FocxKc" role="2OqNvi">
                <ref role="2Oxat5" node="3Vcd0Focxsp" resolve="ns" />
              </node>
            </node>
            <node concept="37vLTw" id="3Vcd0Focxsz" role="37vLTx">
              <ref role="3cqZAo" node="3Vcd0Focxot" resolve="ns" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Vcd0FocreJ" role="3cqZAp">
          <node concept="37vLTI" id="3Vcd0FocreL" role="3clFbG">
            <node concept="2OqwBi" id="3Vcd0FocrHJ" role="37vLTJ">
              <node concept="Xjq3P" id="3Vcd0FocrIl" role="2Oq$k0" />
              <node concept="2OwXpG" id="3Vcd0FocrHM" role="2OqNvi">
                <ref role="2Oxat5" node="3Vcd0FocreF" resolve="aspect" />
              </node>
            </node>
            <node concept="37vLTw" id="3Vcd0FocreP" role="37vLTx">
              <ref role="3cqZAo" node="3Vcd0Focr4C" resolve="aspect" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="_tf6vyQZhF" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="_tf6vyQY$$" role="jymVt" />
    <node concept="3clFb_" id="_tf6vyQYFd" role="jymVt">
      <property role="TrG5h" value="namespace" />
      <node concept="17QB3L" id="_tf6vyQYL5" role="3clF45" />
      <node concept="3clFbS" id="_tf6vyQYFg" role="3clF47">
        <node concept="3clFbF" id="_tf6vyQZ7g" role="3cqZAp">
          <node concept="37vLTw" id="_tf6vyQZ7f" role="3clFbG">
            <ref role="3cqZAo" node="3Vcd0Focxsp" resolve="ns" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="_tf6vyQZ7P" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3Vcd0FocqQ0" role="jymVt" />
    <node concept="3clFb_" id="3Vcd0Foc_4D" role="jymVt">
      <property role="TrG5h" value="addExtended" />
      <node concept="3cqZAl" id="3Vcd0Foc_4F" role="3clF45" />
      <node concept="3clFbS" id="3Vcd0Foc_4G" role="3clF47">
        <node concept="3vFxKo" id="_tf6vyYZiP" role="3cqZAp">
          <node concept="2OqwBi" id="_tf6vyYZRC" role="3vFALc">
            <node concept="2OqwBi" id="_tf6vyYZpy" role="2Oq$k0">
              <node concept="Xjq3P" id="_tf6vyYZmr" role="2Oq$k0" />
              <node concept="2OwXpG" id="_tf6vyYZtP" role="2OqNvi">
                <ref role="2Oxat5" node="3Vcd0FoctT1" resolve="extended" />
              </node>
            </node>
            <node concept="3JPx81" id="_tf6vyZ0pr" role="2OqNvi">
              <node concept="37vLTw" id="_tf6vyZ0vH" role="25WWJ7">
                <ref role="3cqZAo" node="3Vcd0Foc_WO" resolve="l" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vFxKo" id="_tf6vyZ0x3" role="3cqZAp">
          <node concept="2OqwBi" id="_tf6vyZ0x4" role="3vFALc">
            <node concept="2OqwBi" id="_tf6vyZ0x5" role="2Oq$k0">
              <node concept="37vLTw" id="_tf6vyZ0B8" role="2Oq$k0">
                <ref role="3cqZAo" node="3Vcd0Foc_WO" resolve="l" />
              </node>
              <node concept="2OwXpG" id="_tf6vyZ0G6" role="2OqNvi">
                <ref role="2Oxat5" node="3Vcd0Focsw1" resolve="extending" />
              </node>
            </node>
            <node concept="3JPx81" id="_tf6vyZ0x8" role="2OqNvi">
              <node concept="Xjq3P" id="_tf6vyZ0HA" role="25WWJ7" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="_tf6vyZ0IW" role="3cqZAp" />
        <node concept="3clFbF" id="3Vcd0FocApr" role="3cqZAp">
          <node concept="2OqwBi" id="3Vcd0FocAV8" role="3clFbG">
            <node concept="2OqwBi" id="3Vcd0FocAsI" role="2Oq$k0">
              <node concept="Xjq3P" id="3Vcd0FocApq" role="2Oq$k0" />
              <node concept="2OwXpG" id="3Vcd0FocAx1" role="2OqNvi">
                <ref role="2Oxat5" node="3Vcd0FoctT1" resolve="extended" />
              </node>
            </node>
            <node concept="TSZUe" id="3Vcd0FocByU" role="2OqNvi">
              <node concept="37vLTw" id="3Vcd0FocBAa" role="25WWJ7">
                <ref role="3cqZAo" node="3Vcd0Foc_WO" resolve="l" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Vcd0FocBLV" role="3cqZAp">
          <node concept="2OqwBi" id="3Vcd0FocCrO" role="3clFbG">
            <node concept="2OqwBi" id="3Vcd0FocBYf" role="2Oq$k0">
              <node concept="37vLTw" id="3Vcd0FocBLT" role="2Oq$k0">
                <ref role="3cqZAo" node="3Vcd0Foc_WO" resolve="l" />
              </node>
              <node concept="2OwXpG" id="3Vcd0FocC2g" role="2OqNvi">
                <ref role="2Oxat5" node="3Vcd0Focsw1" resolve="extending" />
              </node>
            </node>
            <node concept="TSZUe" id="3Vcd0FocCXy" role="2OqNvi">
              <node concept="Xjq3P" id="3Vcd0FocD2y" role="25WWJ7" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3Vcd0Foc_WO" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3uibUv" id="3Vcd0Foc_WN" role="1tU5fm">
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
        </node>
      </node>
      <node concept="3Tmbuc" id="_tf6vyQZcK" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="_tf6vyYG8A" role="jymVt" />
    <node concept="3clFb_" id="_tf6vyYGnf" role="jymVt">
      <property role="TrG5h" value="setAuthority" />
      <node concept="3cqZAl" id="_tf6vyYGnh" role="3clF45" />
      <node concept="3clFbS" id="_tf6vyYGni" role="3clF47">
        <node concept="3ykFI1" id="_tf6vyYHBG" role="3cqZAp">
          <node concept="2OqwBi" id="_tf6vyYHCp" role="3ykU8v">
            <node concept="Xjq3P" id="_tf6vyYHC2" role="2Oq$k0" />
            <node concept="2OwXpG" id="_tf6vyYHDG" role="2OqNvi">
              <ref role="2Oxat5" node="_tf6vyYFNn" resolve="authority" />
            </node>
          </node>
        </node>
        <node concept="3ykFI1" id="_tf6vyYHEj" role="3cqZAp">
          <node concept="2OqwBi" id="_tf6vyYHEk" role="3ykU8v">
            <node concept="Xjq3P" id="_tf6vyYHEl" role="2Oq$k0" />
            <node concept="2OwXpG" id="_tf6vyYHJb" role="2OqNvi">
              <ref role="2Oxat5" node="_tf6vyYFU4" resolve="sidekick" />
            </node>
          </node>
        </node>
        <node concept="3ykFI1" id="_tf6vyYHMU" role="3cqZAp">
          <node concept="2OqwBi" id="_tf6vyYHMV" role="3ykU8v">
            <node concept="37vLTw" id="_tf6vyYHOG" role="2Oq$k0">
              <ref role="3cqZAo" node="_tf6vyYH96" resolve="l" />
            </node>
            <node concept="2OwXpG" id="_tf6vyYHMX" role="2OqNvi">
              <ref role="2Oxat5" node="_tf6vyYFNn" resolve="authority" />
            </node>
          </node>
        </node>
        <node concept="3ykFI1" id="_tf6vyYHMQ" role="3cqZAp">
          <node concept="2OqwBi" id="_tf6vyYHMR" role="3ykU8v">
            <node concept="37vLTw" id="_tf6vyYHPv" role="2Oq$k0">
              <ref role="3cqZAo" node="_tf6vyYH96" resolve="l" />
            </node>
            <node concept="2OwXpG" id="_tf6vyYHMT" role="2OqNvi">
              <ref role="2Oxat5" node="_tf6vyYFU4" resolve="sidekick" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="_tf6vyYHQ5" role="3cqZAp" />
        <node concept="3clFbF" id="_tf6vyYHRG" role="3cqZAp">
          <node concept="37vLTI" id="_tf6vyYI84" role="3clFbG">
            <node concept="37vLTw" id="_tf6vyYI9f" role="37vLTx">
              <ref role="3cqZAo" node="_tf6vyYH96" resolve="l" />
            </node>
            <node concept="2OqwBi" id="_tf6vyYHWp" role="37vLTJ">
              <node concept="Xjq3P" id="_tf6vyYHRE" role="2Oq$k0" />
              <node concept="2OwXpG" id="_tf6vyYI0K" role="2OqNvi">
                <ref role="2Oxat5" node="_tf6vyYFNn" resolve="authority" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_tf6vyYIbP" role="3cqZAp">
          <node concept="37vLTI" id="_tf6vyYItt" role="3clFbG">
            <node concept="Xjq3P" id="_tf6vyYIuJ" role="37vLTx" />
            <node concept="2OqwBi" id="_tf6vyYId2" role="37vLTJ">
              <node concept="37vLTw" id="_tf6vyYIbN" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6vyYH96" resolve="l" />
              </node>
              <node concept="2OwXpG" id="_tf6vyYIeS" role="2OqNvi">
                <ref role="2Oxat5" node="_tf6vyYFU4" resolve="sidekick" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_tf6vyYYXT" role="3cqZAp">
          <node concept="1rXfSq" id="_tf6vyYYXR" role="3clFbG">
            <ref role="37wK5l" node="3Vcd0Foc_4D" resolve="addExtended" />
            <node concept="37vLTw" id="_tf6vyYZ1Q" role="37wK5m">
              <ref role="3cqZAo" node="_tf6vyYH96" resolve="l" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="_tf6vyYGyS" role="1B3o_S" />
      <node concept="37vLTG" id="_tf6vyYH96" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3uibUv" id="_tf6vyYH95" role="1tU5fm">
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Vcd0Foc$De" role="jymVt" />
    <node concept="312cEg" id="3Vcd0Focsw1" role="jymVt">
      <property role="TrG5h" value="extending" />
      <node concept="3Tmbuc" id="3Vcd0FocuaT" role="1B3o_S" />
      <node concept="_YKpA" id="3Vcd0FoctKI" role="1tU5fm">
        <node concept="3uibUv" id="3Vcd0FoctL4" role="_ZDj9">
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
        </node>
      </node>
      <node concept="2ShNRf" id="3Vcd0FocOyj" role="33vP2m">
        <node concept="Tc6Ow" id="3Vcd0FocOxp" role="2ShVmc">
          <node concept="3uibUv" id="3Vcd0FocOxq" role="HW$YZ">
            <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3Vcd0FoctT1" role="jymVt">
      <property role="TrG5h" value="extended" />
      <node concept="3Tmbuc" id="3Vcd0Focub8" role="1B3o_S" />
      <node concept="_YKpA" id="3Vcd0FoctT3" role="1tU5fm">
        <node concept="3uibUv" id="3Vcd0Focu2U" role="_ZDj9">
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
        </node>
      </node>
      <node concept="2ShNRf" id="3Vcd0FocOU6" role="33vP2m">
        <node concept="Tc6Ow" id="3Vcd0FocOTH" role="2ShVmc">
          <node concept="3uibUv" id="3Vcd0FocOTI" role="HW$YZ">
            <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3Vcd0FocreF" role="jymVt">
      <property role="TrG5h" value="aspect" />
      <node concept="3Tmbuc" id="3Vcd0Focrqk" role="1B3o_S" />
      <node concept="3uibUv" id="3Vcd0FocreI" role="1tU5fm">
        <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="MockLanguageAspect" />
      </node>
    </node>
    <node concept="312cEg" id="_tf6vyYFNn" role="jymVt">
      <property role="TrG5h" value="authority" />
      <node concept="3Tmbuc" id="_tf6vyYFTh" role="1B3o_S" />
      <node concept="3uibUv" id="_tf6vyYFTv" role="1tU5fm">
        <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
      </node>
    </node>
    <node concept="312cEg" id="_tf6vyYFU4" role="jymVt">
      <property role="TrG5h" value="sidekick" />
      <node concept="3Tmbuc" id="_tf6vyYFU5" role="1B3o_S" />
      <node concept="3uibUv" id="_tf6vyYFU6" role="1tU5fm">
        <ref role="3uigEE" node="6nx4rRkXZtd" resolve="MockLanguageRuntime" />
      </node>
    </node>
    <node concept="312cEg" id="3Vcd0Focxsp" role="jymVt">
      <property role="TrG5h" value="ns" />
      <node concept="3Tm6S6" id="3Vcd0Focxsq" role="1B3o_S" />
      <node concept="17QB3L" id="3Vcd0Focxss" role="1tU5fm" />
    </node>
  </node>
  <node concept="312cEu" id="6nx4rRkXZmQ">
    <property role="TrG5h" value="MockLanguageAspect" />
    <node concept="2tJIrI" id="3Vcd0Focq0f" role="jymVt" />
    <node concept="3uibUv" id="6nx4rRkXZre" role="EKbjA">
      <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
    </node>
  </node>
</model>

