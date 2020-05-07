<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4f9bf647-c6f5-4a1b-b0bf-0f0c16f6c9d0(jetbrains.mps.coderules.aspect@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="5" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
  </languages>
  <imports>
    <import index="fqlx" ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.coderules.aspect)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
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
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
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
      <concept id="1171983834376" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" flags="nn" index="3vFxKo">
        <child id="1171983854940" name="condition" index="3vFALc" />
      </concept>
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
      <concept id="2526372162255441536" name="jetbrains.mps.baseLanguage.collections.structure.AsUnmodifiableOperation" flags="nn" index="26Dbio" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="3s_ewN" id="6nx4rRkXZjk">
    <property role="3s_ewP" value="AspectClique" />
    <node concept="3Tm1VV" id="6nx4rRkXZjl" role="1B3o_S" />
    <node concept="3s_gsd" id="6nx4rRkXZjm" role="3s_ewO">
      <node concept="3s$Bmu" id="6nx4rRkXZjZ" role="3s_gse">
        <property role="3s$Bm0" value="foo" />
        <node concept="3cqZAl" id="6nx4rRkXZk0" role="3clF45" />
        <node concept="3Tm1VV" id="6nx4rRkXZk1" role="1B3o_S" />
        <node concept="3clFbS" id="6nx4rRkXZk2" role="3clF47">
          <node concept="3cpWs8" id="6nx4rRkY0Rh" role="3cqZAp">
            <node concept="3cpWsn" id="6nx4rRkY0Ri" role="3cpWs9">
              <property role="TrG5h" value="discoverable" />
              <node concept="3uibUv" id="6nx4rRkY0R6" role="1tU5fm">
                <ref role="3uigEE" node="6nx4rRkXZkf" resolve="TestAspectDiscoverable" />
              </node>
              <node concept="2ShNRf" id="6nx4rRkY0Rj" role="33vP2m">
                <node concept="HV5vD" id="6nx4rRkY0Rk" role="2ShVmc">
                  <ref role="HV5vE" node="6nx4rRkXZkf" resolve="TestAspectDiscoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6nx4rRkY1pE" role="3cqZAp">
            <node concept="3cpWsn" id="6nx4rRkY1pF" role="3cpWs9">
              <property role="TrG5h" value="discoverAspects" />
              <node concept="_YKpA" id="6nx4rRkY1ng" role="1tU5fm">
                <node concept="3uibUv" id="6nx4rRkY1nn" role="_ZDj9">
                  <ref role="3uigEE" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                  <node concept="3uibUv" id="6nx4rRkY1no" role="11_B2D">
                    <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="TestAspectDiscoverable.TestLanguageAspect" />
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="6nx4rRkY1pG" role="33vP2m">
                <ref role="37wK5l" to="fqlx:3KN3A4uV0IR" resolve="discoverAspects" />
                <ref role="1Pybhc" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="2ShNRf" id="3Vcd0FocJVX" role="37wK5m">
                  <node concept="Tc6Ow" id="3Vcd0FocKc2" role="2ShVmc">
                    <node concept="3uibUv" id="3Vcd0FocKsy" role="HW$YZ">
                      <ref role="3uigEE" node="6nx4rRkXZtd" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6nx4rRkY1pI" role="37wK5m">
                  <ref role="3cqZAo" node="6nx4rRkY0Ri" resolve="discoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2Hmddi" id="6nx4rRkY1KC" role="3cqZAp">
            <node concept="37vLTw" id="6nx4rRkY1QB" role="2Hmdds">
              <ref role="3cqZAo" node="6nx4rRkY1pF" resolve="discoverAspects" />
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
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="3Vcd0FocyNG" role="33vP2m">
                <node concept="1pGfFk" id="3Vcd0FocyNH" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
                  <node concept="Xl_RD" id="3Vcd0FocyNI" role="37wK5m">
                    <property role="Xl_RC" value="cycle1" />
                  </node>
                  <node concept="2ShNRf" id="3Vcd0FocyNJ" role="37wK5m">
                    <node concept="HV5vD" id="3Vcd0FocyNK" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="TestAspectDiscoverable.TestLanguageAspect" />
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
                <ref role="3uigEE" node="6nx4rRkXZtd" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
              </node>
              <node concept="2ShNRf" id="3Vcd0FocyPd" role="33vP2m">
                <node concept="1pGfFk" id="3Vcd0FocyPe" role="2ShVmc">
                  <ref role="37wK5l" node="3Vcd0FocqXh" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
                  <node concept="Xl_RD" id="3Vcd0FocyPf" role="37wK5m">
                    <property role="Xl_RC" value="cycle2" />
                  </node>
                  <node concept="2ShNRf" id="3Vcd0FocyPg" role="37wK5m">
                    <node concept="HV5vD" id="3Vcd0FocyPh" role="2ShVmc">
                      <ref role="HV5vE" node="6nx4rRkXZmQ" resolve="TestAspectDiscoverable.TestLanguageAspect" />
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
                <ref role="3uigEE" node="6nx4rRkXZkf" resolve="TestAspectDiscoverable" />
              </node>
              <node concept="2ShNRf" id="3Vcd0FocD$U" role="33vP2m">
                <node concept="HV5vD" id="3Vcd0FocD$V" role="2ShVmc">
                  <ref role="HV5vE" node="6nx4rRkXZkf" resolve="TestAspectDiscoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3Vcd0FocDAR" role="3cqZAp">
            <node concept="3cpWsn" id="3Vcd0FocDAS" role="3cpWs9">
              <property role="TrG5h" value="acs" />
              <node concept="3vKaQO" id="3Vcd0FocL9Y" role="1tU5fm">
                <node concept="3uibUv" id="3Vcd0FocLa0" role="3O5elw">
                  <ref role="3uigEE" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                  <node concept="3uibUv" id="3Vcd0FocLa1" role="11_B2D">
                    <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="TestAspectDiscoverable.TestLanguageAspect" />
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="3Vcd0FocDAW" role="33vP2m">
                <ref role="37wK5l" to="fqlx:3KN3A4uV0IR" resolve="discoverAspects" />
                <ref role="1Pybhc" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="2ShNRf" id="3Vcd0FocIAX" role="37wK5m">
                  <node concept="Tc6Ow" id="3Vcd0FocIQ0" role="2ShVmc">
                    <node concept="37vLTw" id="3Vcd0FocJ5Y" role="HW$Y0">
                      <ref role="3cqZAo" node="3Vcd0FocyNF" resolve="cycle1" />
                    </node>
                    <node concept="37vLTw" id="3Vcd0FocJhb" role="HW$Y0">
                      <ref role="3cqZAo" node="3Vcd0FocyPb" resolve="cycle2" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3Vcd0FocDAY" role="37wK5m">
                  <ref role="3cqZAo" node="3Vcd0FocD$S" resolve="discoverable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2Hmddi" id="3Vcd0FocDAZ" role="3cqZAp">
            <node concept="37vLTw" id="3Vcd0FocDB0" role="2Hmdds">
              <ref role="3cqZAo" node="3Vcd0FocDAS" resolve="acs" />
            </node>
          </node>
          <node concept="3clFbH" id="3Vcd0FocLiI" role="3cqZAp" />
          <node concept="3vlDli" id="7u0sJ213Puc" role="3cqZAp">
            <node concept="2OqwBi" id="7u0sJ213Q8d" role="3tpDZB">
              <node concept="37vLTw" id="7u0sJ213P_X" role="2Oq$k0">
                <ref role="3cqZAo" node="3Vcd0FocDAS" resolve="acs" />
              </node>
              <node concept="34oBXx" id="7u0sJ213QAg" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="7u0sJ213QI3" role="3tpDZA">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
          <node concept="3cpWs8" id="7u0sJ213RgA" role="3cqZAp">
            <node concept="3cpWsn" id="7u0sJ213RgB" role="3cpWs9">
              <property role="TrG5h" value="ac" />
              <node concept="3uibUv" id="7u0sJ213Rg$" role="1tU5fm">
                <ref role="3uigEE" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="3Vcd0FocLGH" role="11_B2D">
                  <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="TestAspectDiscoverable.TestLanguageAspect" />
                </node>
              </node>
              <node concept="2OqwBi" id="7u0sJ213Td_" role="33vP2m">
                <node concept="37vLTw" id="7u0sJ213SUo" role="2Oq$k0">
                  <ref role="3cqZAo" node="3Vcd0FocDAS" resolve="acs" />
                </node>
                <node concept="1uHKPH" id="7u0sJ213TvW" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="2Hmddi" id="7u0sJ2133j2" role="3cqZAp">
            <node concept="37vLTw" id="7u0sJ213TEh" role="2Hmdds">
              <ref role="3cqZAo" node="7u0sJ213RgB" resolve="ac" />
            </node>
          </node>
          <node concept="3vFxKo" id="7u0sJ21345J" role="3cqZAp">
            <node concept="2OqwBi" id="7u0sJ2134ia" role="3vFALc">
              <node concept="37vLTw" id="7u0sJ213TOx" role="2Oq$k0">
                <ref role="3cqZAo" node="7u0sJ213RgB" resolve="ac" />
              </node>
              <node concept="liA8E" id="7u0sJ213UeH" role="2OqNvi">
                <ref role="37wK5l" to="fqlx:4ekZiHe4j$O" resolve="isEmpty" />
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="7u0sJ2134Df" role="3cqZAp">
            <node concept="2OqwBi" id="7u0sJ2135Mg" role="3tpDZB">
              <node concept="2OqwBi" id="7u0sJ2134R0" role="2Oq$k0">
                <node concept="37vLTw" id="7u0sJ213UoW" role="2Oq$k0">
                  <ref role="3cqZAo" node="7u0sJ213RgB" resolve="ac" />
                </node>
                <node concept="liA8E" id="7u0sJ21355X" role="2OqNvi">
                  <ref role="37wK5l" to="fqlx:3KN3A4uUhpW" resolve="aspects" />
                </node>
              </node>
              <node concept="34oBXx" id="7u0sJ2136HX" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="7u0sJ2136Mh" role="3tpDZA">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
          <node concept="3clFbH" id="3Vcd0FocLju" role="3cqZAp" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6nx4rRkXZkf">
    <property role="TrG5h" value="TestAspectDiscoverable" />
    <node concept="2tJIrI" id="6nx4rRkXZmo" role="jymVt" />
    <node concept="312cEu" id="6nx4rRkXZtd" role="jymVt">
      <property role="TrG5h" value="TestLanguageRuntime" />
      <node concept="2tJIrI" id="3Vcd0FocqPV" role="jymVt" />
      <node concept="3clFbW" id="3Vcd0FocqXh" role="jymVt">
        <node concept="37vLTG" id="3Vcd0Focxot" role="3clF46">
          <property role="TrG5h" value="ns" />
          <node concept="17QB3L" id="3Vcd0Focxri" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="3Vcd0Focr4C" role="3clF46">
          <property role="TrG5h" value="aspect" />
          <node concept="3uibUv" id="3Vcd0Focr5L" role="1tU5fm">
            <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="TestAspectDiscoverable.TestLanguageAspect" />
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
      </node>
      <node concept="2tJIrI" id="3Vcd0FocqQ0" role="jymVt" />
      <node concept="3clFb_" id="3Vcd0Foc_4D" role="jymVt">
        <property role="TrG5h" value="addExtended" />
        <node concept="3cqZAl" id="3Vcd0Foc_4F" role="3clF45" />
        <node concept="3clFbS" id="3Vcd0Foc_4G" role="3clF47">
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
                  <ref role="3cqZAo" node="3Vcd0Foc_WO" resolve="tlr" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3Vcd0FocBLV" role="3cqZAp">
            <node concept="2OqwBi" id="3Vcd0FocCrO" role="3clFbG">
              <node concept="2OqwBi" id="3Vcd0FocBYf" role="2Oq$k0">
                <node concept="37vLTw" id="3Vcd0FocBLT" role="2Oq$k0">
                  <ref role="3cqZAo" node="3Vcd0Foc_WO" resolve="tlr" />
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
          <property role="TrG5h" value="tlr" />
          <node concept="3uibUv" id="3Vcd0Foc_WN" role="1tU5fm">
            <ref role="3uigEE" node="6nx4rRkXZtd" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3Vcd0Foc$De" role="jymVt" />
      <node concept="312cEg" id="3Vcd0Focsw1" role="jymVt">
        <property role="TrG5h" value="extending" />
        <node concept="3Tmbuc" id="3Vcd0FocuaT" role="1B3o_S" />
        <node concept="_YKpA" id="3Vcd0FoctKI" role="1tU5fm">
          <node concept="3uibUv" id="3Vcd0FoctL4" role="_ZDj9">
            <ref role="3uigEE" node="6nx4rRkXZtd" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
          </node>
        </node>
        <node concept="2ShNRf" id="3Vcd0FocOyj" role="33vP2m">
          <node concept="Tc6Ow" id="3Vcd0FocOxp" role="2ShVmc">
            <node concept="3uibUv" id="3Vcd0FocOxq" role="HW$YZ">
              <ref role="3uigEE" node="6nx4rRkXZtd" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="3Vcd0FoctT1" role="jymVt">
        <property role="TrG5h" value="extended" />
        <node concept="3Tmbuc" id="3Vcd0Focub8" role="1B3o_S" />
        <node concept="_YKpA" id="3Vcd0FoctT3" role="1tU5fm">
          <node concept="3uibUv" id="3Vcd0Focu2U" role="_ZDj9">
            <ref role="3uigEE" node="6nx4rRkXZtd" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
          </node>
        </node>
        <node concept="2ShNRf" id="3Vcd0FocOU6" role="33vP2m">
          <node concept="Tc6Ow" id="3Vcd0FocOTH" role="2ShVmc">
            <node concept="3uibUv" id="3Vcd0FocOTI" role="HW$YZ">
              <ref role="3uigEE" node="6nx4rRkXZtd" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="3Vcd0FocreF" role="jymVt">
        <property role="TrG5h" value="aspect" />
        <node concept="3Tmbuc" id="3Vcd0Focrqk" role="1B3o_S" />
        <node concept="3uibUv" id="3Vcd0FocreI" role="1tU5fm">
          <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="TestAspectDiscoverable.TestLanguageAspect" />
        </node>
      </node>
      <node concept="312cEg" id="3Vcd0Focxsp" role="jymVt">
        <property role="TrG5h" value="ns" />
        <node concept="3Tm6S6" id="3Vcd0Focxsq" role="1B3o_S" />
        <node concept="17QB3L" id="3Vcd0Focxss" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6nx4rRkXZsB" role="jymVt" />
    <node concept="312cEu" id="6nx4rRkXZmQ" role="jymVt">
      <property role="TrG5h" value="TestLanguageAspect" />
      <node concept="2tJIrI" id="3Vcd0Focq0f" role="jymVt" />
      <node concept="3uibUv" id="6nx4rRkXZre" role="EKbjA">
        <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
      </node>
    </node>
    <node concept="2tJIrI" id="6nx4rRkXZ$4" role="jymVt" />
    <node concept="3clFb_" id="6nx4rRkXZ$Y" role="jymVt">
      <property role="TrG5h" value="discover" />
      <node concept="37vLTG" id="6nx4rRkXZ$Z" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="3uibUv" id="6nx4rRkXZ_5" role="1tU5fm">
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
        </node>
      </node>
      <node concept="3uibUv" id="6nx4rRkXZ_4" role="3clF45">
        <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="TestAspectDiscoverable.TestLanguageAspect" />
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
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
        </node>
      </node>
      <node concept="37vLTG" id="6nx4rRkXZ_b" role="3clF46">
        <property role="TrG5h" value="authority" />
        <node concept="3uibUv" id="6nx4rRkXZ_k" role="1tU5fm">
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
        </node>
      </node>
      <node concept="10P_77" id="6nx4rRkXZ_d" role="3clF45" />
      <node concept="3Tm1VV" id="6nx4rRkXZ_e" role="1B3o_S" />
      <node concept="3clFbS" id="6nx4rRkXZ_l" role="3clF47">
        <node concept="3clFbF" id="3Vcd0FocskS" role="3cqZAp">
          <node concept="3clFbT" id="3Vcd0FocskR" role="3clFbG" />
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
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6nx4rRkXZ_s" role="1B3o_S" />
      <node concept="37vLTG" id="6nx4rRkXZ_u" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="3uibUv" id="6nx4rRkXZ_w" role="1tU5fm">
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
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
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6nx4rRkXZ_D" role="1B3o_S" />
      <node concept="37vLTG" id="6nx4rRkXZ_F" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="3uibUv" id="6nx4rRkXZ_H" role="1tU5fm">
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
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
          <ref role="3uigEE" node="6nx4rRkXZtd" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
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
            <node concept="2OwXpG" id="3Vcd0Focyad" role="2OqNvi">
              <ref role="2Oxat5" node="3Vcd0Focxsp" resolve="ns" />
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
      <ref role="3uigEE" to="fqlx:NKt6ynom3d" resolve="AspectDiscoverable" />
      <node concept="3uibUv" id="6nx4rRkXZwZ" role="11_B2D">
        <ref role="3uigEE" node="6nx4rRkXZtd" resolve="TestAspectDiscoverable.TestLanguageRuntime" />
      </node>
      <node concept="3uibUv" id="6nx4rRkXZxB" role="11_B2D">
        <ref role="3uigEE" node="6nx4rRkXZmQ" resolve="TestAspectDiscoverable.TestLanguageAspect" />
      </node>
    </node>
  </node>
</model>

