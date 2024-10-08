<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:55a38ad7-2d84-411a-a248-c10802aff872(jetbrains.mps.baseLanguage.collectionsExt.test.containers@tests)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.coderules.typechecking.service)" />
    <import index="ymzf" ref="r:fdff7d46-8046-4462-af08-894b74d498b4(jetbrains.mps.baseLanguage.collectionsExt.test.sequence)" />
    <import index="a4lx" ref="r:fb28aa49-ee7b-436d-9e34-ba42a84da7b3(jetbrains.mps.baseLanguage.collectionsExt.test.collections)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1225467090849" name="jetbrains.mps.lang.test.structure.ProjectExpression" flags="nn" index="1jxXqW" />
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="2616911529524314943" name="accessMode" index="3DII0k" />
        <child id="1216993439383" name="methods" index="1qtyYc" />
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU" />
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="4065387505485742749" name="jetbrains.mps.lang.smodel.structure.AbstractPointerResolveOperation" flags="ng" index="2yCiFS">
        <child id="3648723375513868575" name="repositoryArg" index="Vysub" />
      </concept>
      <concept id="3648723375513868532" name="jetbrains.mps.lang.smodel.structure.NodePointer_ResolveOperation" flags="ng" index="Vyspw" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
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
  </registry>
  <node concept="1lH9Xt" id="1oUE7CX3Xkd">
    <property role="TrG5h" value="Containers" />
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <node concept="1LZb2c" id="1oUE7CX3Xke" role="1SL9yI">
      <property role="TrG5h" value="creators" />
      <node concept="3cqZAl" id="1oUE7CX3Xkg" role="3clF45" />
      <node concept="3clFbS" id="1oUE7CX3Xkh" role="3clF47">
        <node concept="3vwNmj" id="7Aoa2yVGBY0" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGBY4" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGBY5" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7Aoa2yVGBY6" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGBY7" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGBY8" role="2OqNvi">
                  <ref role="2WH_rO" node="1oUE7CX3Xkf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGBY9" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGBYa" role="2tJFKM">
                      <ref role="2aWVGs" to="a4lx:6BFOg89J450" resolve="CollectionCreators" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGBYb" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGBYc" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1oUE7CX3XYB" role="1SL9yI">
      <property role="TrG5h" value="conversions" />
      <node concept="3cqZAl" id="1oUE7CX3XYC" role="3clF45" />
      <node concept="3clFbS" id="1oUE7CX3XYD" role="3clF47">
        <node concept="3vwNmj" id="7Aoa2yVGCfN" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGCfR" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGCfS" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7Aoa2yVGCfT" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGCfU" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGCfV" role="2OqNvi">
                  <ref role="2WH_rO" node="1oUE7CX3Xkf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGCfW" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGCfX" role="2tJFKM">
                      <ref role="2aWVGs" to="a4lx:1oUE7CX3XS4" resolve="CollectionConversions" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGCfY" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGCfZ" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1oUE7CXgDhh" role="1SL9yI">
      <property role="TrG5h" value="runimeTypes" />
      <node concept="3cqZAl" id="1oUE7CXgDhi" role="3clF45" />
      <node concept="3clFbS" id="1oUE7CXgDhj" role="3clF47">
        <node concept="3vwNmj" id="7Aoa2yVGCyU" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGC$N" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGC$O" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="7Aoa2yVGC$P" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGC$Q" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGC$R" role="2OqNvi">
                  <ref role="2WH_rO" node="1oUE7CX3Xkf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGC$S" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGC$T" role="2tJFKM">
                      <ref role="2aWVGs" to="a4lx:1oUE7CXdFUn" resolve="CollectionRuntimeTypes" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGC$U" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGC$V" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="3Z1xyIw63GX" role="1SL9yI">
      <property role="TrG5h" value="operationsSequence" />
      <node concept="3cqZAl" id="3Z1xyIw63GY" role="3clF45" />
      <node concept="3clFbS" id="3Z1xyIw63GZ" role="3clF47">
        <node concept="3SKdUt" id="2Qsys8cXswZ" role="3cqZAp">
          <node concept="1PaTwC" id="2Qsys8cXsx0" role="1aUNEU">
            <node concept="3oM_SD" id="2Qsys8cXsx1" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXsyt" role="1PaTwD">
              <property role="3oM_SC" value="runtime" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXsyw" role="1PaTwD">
              <property role="3oM_SC" value="errors" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXsy$" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXsyD" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXsyJ" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXsyQ" role="1PaTwD">
              <property role="3oM_SC" value="ignored," />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXszA" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXszJ" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXszT" role="1PaTwD">
              <property role="3oM_SC" value="temporary" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXs$4" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXs$g" role="1PaTwD">
              <property role="3oM_SC" value="fix" />
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="7Aoa2yVGCSz" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGCVS" role="3vwVQn">
            <node concept="2OqwBi" id="7Aoa2yVGCVT" role="2Oq$k0">
              <node concept="2YIFZM" id="7Aoa2yVGCVU" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="7Aoa2yVGCVV" role="37wK5m">
                  <node concept="2WthIp" id="7Aoa2yVGCVW" role="2Oq$k0" />
                  <node concept="2XshWL" id="7Aoa2yVGCVX" role="2OqNvi">
                    <ref role="2WH_rO" node="1oUE7CX3Xkf" resolve="resolve" />
                    <node concept="2tJFMh" id="7Aoa2yVGCVY" role="2XxRq1">
                      <node concept="ZC_QK" id="7Aoa2yVGCVZ" role="2tJFKM">
                        <ref role="2aWVGs" to="a4lx:3Z1xyIvNBmG" resolve="SequenceOperations" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="7Aoa2yVGCW0" role="37wK5m" />
              </node>
              <node concept="liA8E" id="7Aoa2yVGCW1" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
            </node>
            <node concept="liA8E" id="7Aoa2yVGCW2" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="3Z1xyIwvJI9" role="1SL9yI">
      <property role="TrG5h" value="operationsIterator" />
      <node concept="3cqZAl" id="3Z1xyIwvJIa" role="3clF45" />
      <node concept="3clFbS" id="3Z1xyIwvJIb" role="3clF47">
        <node concept="3vwNmj" id="7Aoa2yVGDgX" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGDiQ" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGDiR" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7Aoa2yVGDiS" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGDiT" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGDiU" role="2OqNvi">
                  <ref role="2WH_rO" node="1oUE7CX3Xkf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGDiV" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGDiW" role="2tJFKM">
                      <ref role="2aWVGs" to="a4lx:3Z1xyIwv_hr" resolve="IteratorOperations" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGDiX" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGDiY" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="3Z1xyIwome5" role="1SL9yI">
      <property role="TrG5h" value="operationsSequenceInternal" />
      <node concept="3cqZAl" id="3Z1xyIwome6" role="3clF45" />
      <node concept="3clFbS" id="3Z1xyIwome7" role="3clF47">
        <node concept="3vwNmj" id="7Aoa2yVGD_f" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGD_j" role="3vwVQn">
            <node concept="2OqwBi" id="7Aoa2yVGD_k" role="2Oq$k0">
              <node concept="2YIFZM" id="7Aoa2yVGD_l" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <node concept="2OqwBi" id="7Aoa2yVGD_m" role="37wK5m">
                  <node concept="2WthIp" id="7Aoa2yVGD_n" role="2Oq$k0" />
                  <node concept="2XshWL" id="7Aoa2yVGD_o" role="2OqNvi">
                    <ref role="2WH_rO" node="1oUE7CX3Xkf" resolve="resolve" />
                    <node concept="2tJFMh" id="7Aoa2yVGD_p" role="2XxRq1">
                      <node concept="ZC_QK" id="7Aoa2yVGD_q" role="2tJFKM">
                        <ref role="2aWVGs" to="a4lx:3Z1xyIwnLzW" resolve="InternalSequenceOperations" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="7Aoa2yVGD_r" role="37wK5m" />
              </node>
              <node concept="liA8E" id="7Aoa2yVGD_s" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
            </node>
            <node concept="liA8E" id="7Aoa2yVGD_t" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="3Z1xyIwvJnN" role="1SL9yI">
      <property role="TrG5h" value="operationsMapAndSet" />
      <node concept="3cqZAl" id="3Z1xyIwvJnO" role="3clF45" />
      <node concept="3clFbS" id="3Z1xyIwvJnP" role="3clF47">
        <node concept="3vwNmj" id="7Aoa2yVGDW3" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGDXW" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGDXX" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7Aoa2yVGDXY" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGDXZ" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGDY0" role="2OqNvi">
                  <ref role="2WH_rO" node="1oUE7CX3Xkf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGDY1" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGDY2" role="2tJFKM">
                      <ref role="2aWVGs" to="a4lx:3Z1xyIwoUdh" resolve="MapAndSetOperations" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGDY3" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGDY4" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="3Z1xyIwzPlr" role="1SL9yI">
      <property role="TrG5h" value="forEachStatements" />
      <node concept="3cqZAl" id="3Z1xyIwzPls" role="3clF45" />
      <node concept="3clFbS" id="3Z1xyIwzPlt" role="3clF47">
        <node concept="3vwNmj" id="7Aoa2yVGEd3" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGEeW" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGEeX" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="7Aoa2yVGEeY" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGEeZ" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGEf0" role="2OqNvi">
                  <ref role="2WH_rO" node="1oUE7CX3Xkf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGEf1" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGEf2" role="2tJFKM">
                      <ref role="2aWVGs" to="a4lx:3Z1xyIwzHo9" resolve="ForEachStatements" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGEf3" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGEf4" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1BcUSjg7f5y" role="1SL9yI">
      <property role="TrG5h" value="customContainers" />
      <node concept="3cqZAl" id="1BcUSjg7f5z" role="3clF45" />
      <node concept="3clFbS" id="1BcUSjg7f5$" role="3clF47">
        <node concept="3vwNmj" id="7Aoa2yVGEvS" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGExL" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGExM" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="7Aoa2yVGExN" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGExO" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGExP" role="2OqNvi">
                  <ref role="2WH_rO" node="1oUE7CX3Xkf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGExQ" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGExR" role="2tJFKM">
                      <ref role="2aWVGs" to="a4lx:1oUE7CXdweh" resolve="CustomContainersBasic" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGExS" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGExT" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1BcUSjg7fF3" role="1SL9yI">
      <property role="TrG5h" value="customContainerDecls" />
      <node concept="3cqZAl" id="1BcUSjg7fF4" role="3clF45" />
      <node concept="3clFbS" id="1BcUSjg7fF5" role="3clF47">
        <node concept="3vwNmj" id="7Aoa2yVGEKS" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGENH" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGENI" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="7Aoa2yVGENJ" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGENK" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGENL" role="2OqNvi">
                  <ref role="2WH_rO" node="1oUE7CX3Xkf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGENM" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGENN" role="2tJFKM">
                      <ref role="2aWVGs" to="a4lx:1oUE7CXdF0A" resolve="TestCustomContainers" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGENO" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGENP" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1BcUSjg7Iq9" role="1SL9yI">
      <property role="TrG5h" value="downcastExpr" />
      <node concept="3cqZAl" id="1BcUSjg7Iqa" role="3clF45" />
      <node concept="3clFbS" id="1BcUSjg7Iqb" role="3clF47">
        <node concept="3SKdUt" id="1BcUSjg7IGu" role="3cqZAp">
          <node concept="1PaTwC" id="1BcUSjg7IGv" role="1aUNEU">
            <node concept="3oM_SD" id="1BcUSjg7IGw" role="1PaTwD">
              <property role="3oM_SC" value="todo:" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="7Aoa2yVGFEn" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3vwNmj" id="7Aoa2yVGFbO" role="8Wnug">
            <node concept="2OqwBi" id="7Aoa2yVGFdH" role="3vwVQn">
              <node concept="2YIFZM" id="7Aoa2yVGFdI" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <node concept="2OqwBi" id="7Aoa2yVGFdJ" role="37wK5m">
                  <node concept="2WthIp" id="7Aoa2yVGFdK" role="2Oq$k0" />
                  <node concept="2XshWL" id="7Aoa2yVGFdL" role="2OqNvi">
                    <ref role="2WH_rO" node="1oUE7CX3Xkf" resolve="resolve" />
                    <node concept="2tJFMh" id="7Aoa2yVGFdM" role="2XxRq1">
                      <node concept="ZC_QK" id="7Aoa2yVGFdN" role="2tJFKM">
                        <ref role="2aWVGs" to="a4lx:1BcUSjg7Ap9" resolve="DowncastExpr" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="7Aoa2yVGFdO" role="37wK5m" />
              </node>
              <node concept="liA8E" id="7Aoa2yVGFdP" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="1oUE7CX3Xkf" role="1qtyYc">
      <property role="TrG5h" value="resolve" />
      <node concept="37vLTG" id="1oUE7CX3Xki" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="2sp9CU" id="1oUE7CX3Xkn" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="1oUE7CX3Xkj" role="3clF45" />
      <node concept="3clFbS" id="1oUE7CX3Xkk" role="3clF47">
        <node concept="3cpWs8" id="1oUE7CX3Xko" role="3cqZAp">
          <node concept="3cpWsn" id="1oUE7CX3Xks" role="3cpWs9">
            <property role="TrG5h" value="cls" />
            <node concept="3Tqbb2" id="1oUE7CX3Xky" role="1tU5fm" />
          </node>
        </node>
        <node concept="1QHqEK" id="1oUE7CX3Xkp" role="3cqZAp">
          <node concept="1QHqEC" id="1oUE7CX3Xkt" role="1QHqEI">
            <node concept="3clFbS" id="1oUE7CX3Xkz" role="1bW5cS">
              <node concept="3clFbF" id="1oUE7CX3XkC" role="3cqZAp">
                <node concept="37vLTI" id="1oUE7CX3XkF" role="3clFbG">
                  <node concept="2OqwBi" id="1oUE7CX3XkL" role="37vLTx">
                    <node concept="37vLTw" id="1oUE7CX3XkM" role="2Oq$k0">
                      <ref role="3cqZAo" node="1oUE7CX3Xki" resolve="ref" />
                    </node>
                    <node concept="Vyspw" id="1oUE7CX3XkN" role="2OqNvi">
                      <node concept="2OqwBi" id="1oUE7CX3XkO" role="Vysub">
                        <node concept="1jxXqW" id="1oUE7CX3XkP" role="2Oq$k0" />
                        <node concept="liA8E" id="1oUE7CX3XkQ" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1oUE7CX3XkI" role="37vLTJ">
                    <ref role="3cqZAo" node="1oUE7CX3Xks" resolve="cls" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1oUE7CX3Xku" role="ukAjM">
            <node concept="1jxXqW" id="1oUE7CX3Xk$" role="2Oq$k0" />
            <node concept="liA8E" id="1oUE7CX3Xk_" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1oUE7CX3Xkq" role="3cqZAp">
          <node concept="37vLTw" id="1oUE7CX3Xkv" role="3clFbG">
            <ref role="3cqZAo" node="1oUE7CX3Xks" resolve="cls" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1oUE7CX3Xkl" role="1B3o_S" />
    </node>
  </node>
</model>

