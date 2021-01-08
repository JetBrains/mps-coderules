<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b7d48b6b-72b6-4070-81f0-91a348d69e72(jetbrains.mps.baseLanguage.closuresExt.test.collections@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="5" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.coderules.typechecking.service)" />
    <import index="tp2c" ref="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" />
    <import index="kui3" ref="r:5da568ce-4965-4c3e-b8b4-edfc36d00b67(jetbrains.mps.baseLanguage.closuresExt.test.collections)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="5097124989038916362" name="jetbrains.mps.lang.test.structure.TestInfo" flags="ng" index="2XOHcx">
        <property id="5097124989038916363" name="projectPath" index="2XOHcw" />
      </concept>
      <concept id="1225467090849" name="jetbrains.mps.lang.test.structure.ProjectExpression" flags="nn" index="1jxXqW" />
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
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
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
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
      <concept id="7080278351417106679" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNotNull" flags="nn" index="2Hmddi">
        <child id="7080278351417106681" name="expression" index="2Hmdds" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU" />
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="4065387505485742749" name="jetbrains.mps.lang.smodel.structure.AbstractPointerResolveOperation" flags="ng" index="2yCiFS">
        <child id="3648723375513868575" name="repositoryArg" index="Vysub" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="3648723375513868532" name="jetbrains.mps.lang.smodel.structure.NodePointer_ResolveOperation" flags="ng" index="Vyspw" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
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
  </registry>
  <node concept="1lH9Xt" id="7u0sJ20Oy8r">
    <property role="TrG5h" value="ClosuresWithCollections" />
    <node concept="1LZb2c" id="7u0sJ20Oy8s" role="1SL9yI">
      <property role="TrG5h" value="closuresAndSequence" />
      <node concept="3cqZAl" id="7u0sJ20Oy8y" role="3clF45" />
      <node concept="3clFbS" id="7u0sJ20Oy8z" role="3clF47">
        <node concept="2Hmddi" id="7u0sJ20Oy8K" role="3cqZAp">
          <node concept="2OqwBi" id="7u0sJ20Oy8T" role="2Hmdds">
            <node concept="2YIFZM" id="7u0sJ20Oy92" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7u0sJ20Oy9g" role="37wK5m">
                <node concept="2WthIp" id="7u0sJ20Oy9r" role="2Oq$k0" />
                <node concept="2XshWL" id="7u0sJ20Oy9s" role="2OqNvi">
                  <ref role="2WH_rO" node="7u0sJ20Oy8x" resolve="resolve" />
                  <node concept="2tJFMh" id="7u0sJ20Oy9A" role="2XxRq1">
                    <node concept="ZC_QK" id="7u0sJ20OypT" role="2tJFKM">
                      <ref role="2aWVGs" to="kui3:4yZzE4kOzs1" resolve="ClosureSequence" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7u0sJ20Oy9h" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7u0sJ20Oy93" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="5pvXCF9sDdD" role="1SL9yI">
      <property role="TrG5h" value="closureParamInference" />
      <node concept="3cqZAl" id="5pvXCF9sDdE" role="3clF45" />
      <node concept="3clFbS" id="5pvXCF9sDdF" role="3clF47">
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
        <node concept="2Hmddi" id="5pvXCF9sDdG" role="3cqZAp">
          <node concept="2OqwBi" id="5pvXCF9sDdH" role="2Hmdds">
            <node concept="2OqwBi" id="2Qsys8cXsjI" role="2Oq$k0">
              <node concept="2YIFZM" id="5pvXCF9sDdI" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <node concept="2OqwBi" id="5pvXCF9sDdJ" role="37wK5m">
                  <node concept="2WthIp" id="5pvXCF9sDdK" role="2Oq$k0" />
                  <node concept="2XshWL" id="5pvXCF9sDdL" role="2OqNvi">
                    <ref role="2WH_rO" node="7u0sJ20Oy8x" resolve="resolve" />
                    <node concept="2tJFMh" id="5pvXCF9sDdM" role="2XxRq1">
                      <node concept="ZC_QK" id="5pvXCF9sETl" role="2tJFKM">
                        <ref role="2aWVGs" to="kui3:554EtBHyc2K" resolve="ClosureParamInference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="5pvXCF9sDdO" role="37wK5m" />
              </node>
              <node concept="liA8E" id="2Qsys8cXstB" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
            </node>
            <node concept="liA8E" id="5pvXCF9sDdP" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="7u0sJ20Oy8x" role="1qtyYc">
      <property role="TrG5h" value="resolve" />
      <node concept="37vLTG" id="7u0sJ20Oy8G" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="2sp9CU" id="7u0sJ20Oy8P" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="7u0sJ20Oy8H" role="3clF45">
        <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
      </node>
      <node concept="3clFbS" id="7u0sJ20Oy8I" role="3clF47">
        <node concept="3cpWs8" id="7u0sJ20Oy8Q" role="3cqZAp">
          <node concept="3cpWsn" id="7u0sJ20Oy8Y" role="3cpWs9">
            <property role="TrG5h" value="cls" />
            <node concept="3Tqbb2" id="7u0sJ20Oy9c" role="1tU5fm">
              <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="7u0sJ20Oy8R" role="3cqZAp">
          <node concept="1QHqEC" id="7u0sJ20Oy8Z" role="1QHqEI">
            <node concept="3clFbS" id="7u0sJ20Oy9d" role="1bW5cS">
              <node concept="3clFbF" id="7u0sJ20Oy9q" role="3cqZAp">
                <node concept="37vLTI" id="7u0sJ20Oy9_" role="3clFbG">
                  <node concept="1PxgMI" id="7u0sJ20Oy9F" role="37vLTx">
                    <node concept="chp4Y" id="7u0sJ20Oy9M" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:g7pOWCK" resolve="Classifier" />
                    </node>
                    <node concept="2OqwBi" id="7u0sJ20Oy9N" role="1m5AlR">
                      <node concept="37vLTw" id="7u0sJ20Oy9O" role="2Oq$k0">
                        <ref role="3cqZAo" node="7u0sJ20Oy8G" resolve="ref" />
                      </node>
                      <node concept="Vyspw" id="7u0sJ20Oy9P" role="2OqNvi">
                        <node concept="2OqwBi" id="7u0sJ20Oy9Q" role="Vysub">
                          <node concept="1jxXqW" id="7u0sJ20Oy9R" role="2Oq$k0" />
                          <node concept="liA8E" id="7u0sJ20Oy9S" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7u0sJ20Oy9G" role="37vLTJ">
                    <ref role="3cqZAo" node="7u0sJ20Oy8Y" resolve="cls" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7u0sJ20Oy90" role="ukAjM">
            <node concept="1jxXqW" id="7u0sJ20Oy9e" role="2Oq$k0" />
            <node concept="liA8E" id="7u0sJ20Oy9f" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7u0sJ20Oy8S" role="3cqZAp">
          <node concept="37vLTw" id="7u0sJ20Oy91" role="3clFbG">
            <ref role="3cqZAo" node="7u0sJ20Oy8Y" resolve="cls" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7u0sJ20Oy8J" role="1B3o_S" />
    </node>
  </node>
  <node concept="2XOHcx" id="7u0sJ20Oy9T">
    <property role="2XOHcw" value="${mpscore_home}" />
  </node>
</model>

