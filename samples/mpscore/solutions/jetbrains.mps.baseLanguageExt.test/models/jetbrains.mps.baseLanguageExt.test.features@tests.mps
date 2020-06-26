<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1ded08f9-d5a9-4ce5-b762-96fe8abe4cec(jetbrains.mps.baseLanguageExt.test.features@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="5" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.coderules.typechecking.service)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="yg5v" ref="r:24bdfe1a-5c8f-4e02-bf75-2d22a609ac69(jetbrains.mps.baseLanguageExt.test.code.features)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="5097124989038916362" name="jetbrains.mps.lang.test.structure.TestInfo" flags="ng" index="2XOHcx">
        <property id="5097124989038916363" name="projectPath" index="2XOHcw" />
      </concept>
      <concept id="1225467090849" name="jetbrains.mps.lang.test.structure.ProjectExpression" flags="nn" index="1jxXqW" />
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="6339244025081158986" name="needsNoWriteAction" index="3OwPAg" />
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
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
  </registry>
  <node concept="2XOHcx" id="1N_0WA5DT60">
    <property role="2XOHcw" value="${mpscore_home}" />
  </node>
  <node concept="1lH9Xt" id="5s5QomKHHly">
    <property role="3OwPAg" value="true" />
    <property role="TrG5h" value="Features" />
    <node concept="2XrIbr" id="35YJGAJTxCf" role="1qtyYc">
      <property role="TrG5h" value="resolve" />
      <node concept="37vLTG" id="35YJGAJTxCF" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="2sp9CU" id="35YJGAJTxCR" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="35YJGAJTxCp" role="3clF45">
        <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
      </node>
      <node concept="3clFbS" id="35YJGAJTxCh" role="3clF47">
        <node concept="3cpWs8" id="35YJGAJT$34" role="3cqZAp">
          <node concept="3cpWsn" id="35YJGAJT$35" role="3cpWs9">
            <property role="TrG5h" value="cls" />
            <node concept="3Tqbb2" id="35YJGAJT$2Z" role="1tU5fm">
              <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="35YJGAJTxLm" role="3cqZAp">
          <node concept="1QHqEC" id="35YJGAJTxLn" role="1QHqEI">
            <node concept="3clFbS" id="35YJGAJTxLo" role="1bW5cS">
              <node concept="3clFbF" id="35YJGAJT$eE" role="3cqZAp">
                <node concept="37vLTI" id="35YJGAJT$eG" role="3clFbG">
                  <node concept="1PxgMI" id="35YJGAJT$36" role="37vLTx">
                    <node concept="chp4Y" id="35YJGAJT$37" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:g7pOWCK" resolve="Classifier" />
                    </node>
                    <node concept="2OqwBi" id="35YJGAJT$38" role="1m5AlR">
                      <node concept="37vLTw" id="35YJGAJT$39" role="2Oq$k0">
                        <ref role="3cqZAo" node="35YJGAJTxCF" resolve="ref" />
                      </node>
                      <node concept="Vyspw" id="35YJGAJT$3a" role="2OqNvi">
                        <node concept="2OqwBi" id="35YJGAJT$3b" role="Vysub">
                          <node concept="1jxXqW" id="35YJGAJT$3c" role="2Oq$k0" />
                          <node concept="liA8E" id="35YJGAJT$3d" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="35YJGAJT$eK" role="37vLTJ">
                    <ref role="3cqZAo" node="35YJGAJT$35" resolve="cls" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="35YJGAJTxW6" role="ukAjM">
            <node concept="1jxXqW" id="35YJGAJTxLs" role="2Oq$k0" />
            <node concept="liA8E" id="35YJGAJTy_W" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="35YJGAJTyJo" role="3cqZAp">
          <node concept="37vLTw" id="35YJGAJT$3e" role="3clFbG">
            <ref role="3cqZAo" node="35YJGAJT$35" resolve="cls" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="35YJGAJTxCl" role="1B3o_S" />
    </node>
    <node concept="1LZb2c" id="5s5QomKHHK1" role="1SL9yI">
      <property role="TrG5h" value="intByteConversion" />
      <node concept="3cqZAl" id="5s5QomKHHK2" role="3clF45" />
      <node concept="3clFbS" id="5s5QomKHHK6" role="3clF47">
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
        <node concept="2Hmddi" id="27bTNFfbxdu" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbxdv" role="2Hmdds">
            <node concept="2OqwBi" id="2Qsys8cXtjc" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbxdw" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <node concept="2OqwBi" id="27bTNFfc0ig" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfc0ih" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfc0ii" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfc0ij" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfc0ik" role="2tJFKM">
                        <ref role="2aWVGs" to="yg5v:5s5QomKHFub" resolve="IntByteConversion" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfc0kf" role="37wK5m" />
              </node>
              <node concept="liA8E" id="2Qsys8cXtrs" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbxdz" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2HYHa0WIt6Z" role="1SL9yI">
      <property role="TrG5h" value="charConversion" />
      <node concept="3cqZAl" id="2HYHa0WIt70" role="3clF45" />
      <node concept="3clFbS" id="2HYHa0WIt71" role="3clF47">
        <node concept="3SKdUt" id="2Qsys8cXtxB" role="3cqZAp">
          <node concept="1PaTwC" id="2Qsys8cXtxC" role="1aUNEU">
            <node concept="3oM_SD" id="2Qsys8cXtxD" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtxE" role="1PaTwD">
              <property role="3oM_SC" value="runtime" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtxF" role="1PaTwD">
              <property role="3oM_SC" value="errors" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtxG" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtxH" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtxI" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtxJ" role="1PaTwD">
              <property role="3oM_SC" value="ignored," />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtxK" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtxL" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtxM" role="1PaTwD">
              <property role="3oM_SC" value="temporary" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtxN" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtxO" role="1PaTwD">
              <property role="3oM_SC" value="fix" />
            </node>
          </node>
        </node>
        <node concept="2Hmddi" id="27bTNFfbxe0" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbxe1" role="2Hmdds">
            <node concept="2OqwBi" id="2Qsys8cXt$d" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbxe2" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <node concept="2OqwBi" id="27bTNFfc0DT" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfc0DU" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfc0DV" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfc0DW" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfc0DX" role="2tJFKM">
                        <ref role="2aWVGs" to="yg5v:3Cu2imBSO5x" resolve="CharConversion" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfc0FS" role="37wK5m" />
              </node>
              <node concept="liA8E" id="2Qsys8cXtGE" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbxe5" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2i6cuYQbqIS" role="1SL9yI">
      <property role="TrG5h" value="stringConversion" />
      <node concept="3cqZAl" id="2i6cuYQbqIT" role="3clF45" />
      <node concept="3clFbS" id="2i6cuYQbqIU" role="3clF47">
        <node concept="2Hmddi" id="2i6cuYQbqIV" role="3cqZAp">
          <node concept="2OqwBi" id="2i6cuYQbqIW" role="2Hmdds">
            <node concept="2YIFZM" id="2i6cuYQbqIX" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="2i6cuYQbqIY" role="37wK5m">
                <node concept="2WthIp" id="2i6cuYQbqIZ" role="2Oq$k0" />
                <node concept="2XshWL" id="2i6cuYQbqJ0" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="2i6cuYQbqJ1" role="2XxRq1">
                    <node concept="ZC_QK" id="2i6cuYQbsm4" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:2i6cuYQ8hzP" resolve="StringConversion" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="2i6cuYQbqJ3" role="37wK5m" />
            </node>
            <node concept="liA8E" id="2i6cuYQbqJ4" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6EY0p2ym72p" role="1SL9yI">
      <property role="TrG5h" value="shortConversion" />
      <node concept="3cqZAl" id="6EY0p2ym72q" role="3clF45" />
      <node concept="3clFbS" id="6EY0p2ym72r" role="3clF47">
        <node concept="3SKdUt" id="2Qsys8cXtNk" role="3cqZAp">
          <node concept="1PaTwC" id="2Qsys8cXtNl" role="1aUNEU">
            <node concept="3oM_SD" id="2Qsys8cXtNm" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtNn" role="1PaTwD">
              <property role="3oM_SC" value="runtime" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtNo" role="1PaTwD">
              <property role="3oM_SC" value="errors" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtNp" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtNq" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtNr" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtNs" role="1PaTwD">
              <property role="3oM_SC" value="ignored," />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtNt" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtNu" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtNv" role="1PaTwD">
              <property role="3oM_SC" value="temporary" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtNw" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXtNx" role="1PaTwD">
              <property role="3oM_SC" value="fix" />
            </node>
          </node>
        </node>
        <node concept="2Hmddi" id="27bTNFfbxey" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbxez" role="2Hmdds">
            <node concept="2OqwBi" id="2Qsys8cXtRe" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbxe$" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <node concept="2OqwBi" id="27bTNFfc0HJ" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfc0HK" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfc0HL" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfc0HM" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfc0HN" role="2tJFKM">
                        <ref role="2aWVGs" to="yg5v:6EY0p2ylujy" resolve="IntShortConversion" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfc0JI" role="37wK5m" />
              </node>
              <node concept="liA8E" id="2Qsys8cXu1T" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbxeB" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="5moyjRHyVvd" role="1SL9yI">
      <property role="TrG5h" value="genericNewExpression" />
      <node concept="3cqZAl" id="5moyjRHyVve" role="3clF45" />
      <node concept="3clFbS" id="5moyjRHyVvf" role="3clF47">
        <node concept="3SKdUt" id="2hrSdN96hGO" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYzfg" role="1aUNEU">
            <node concept="3oM_SD" id="589APehYzfh" role="1PaTwD">
              <property role="3oM_SC" value="error" />
            </node>
            <node concept="3oM_SD" id="589APehYzfi" role="1PaTwD">
              <property role="3oM_SC" value="types" />
            </node>
            <node concept="3oM_SD" id="589APehYzfj" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="589APehYzfk" role="1PaTwD">
              <property role="3oM_SC" value="ignored" />
            </node>
            <node concept="3oM_SD" id="589APehYzfl" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="589APehYzfm" role="1PaTwD">
              <property role="3oM_SC" value="purpose" />
            </node>
          </node>
        </node>
        <node concept="2Hmddi" id="27bTNFfbxf4" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbxf5" role="2Hmdds">
            <node concept="2OqwBi" id="2hrSdN96b_y" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbxf6" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <node concept="2OqwBi" id="27bTNFfc0L_" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfc0LA" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfc0LB" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfc0LC" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfc0LD" role="2tJFKM">
                        <ref role="2aWVGs" to="yg5v:2HYHa0WUDvm" resolve="GenericNewExpression" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfc0N$" role="37wK5m" />
              </node>
              <node concept="liA8E" id="2hrSdN96hEW" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbxf9" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6EY0p2x_00j" role="1SL9yI">
      <property role="TrG5h" value="instanceMethod" />
      <node concept="3cqZAl" id="6EY0p2x_00k" role="3clF45" />
      <node concept="3clFbS" id="6EY0p2x_00l" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbxfA" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbxfB" role="2Hmdds">
            <node concept="2YIFZM" id="27bTNFfbxfC" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="27bTNFfc0Pr" role="37wK5m">
                <node concept="2WthIp" id="27bTNFfc0Ps" role="2Oq$k0" />
                <node concept="2XshWL" id="27bTNFfc0Pt" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="27bTNFfc0Pu" role="2XxRq1">
                    <node concept="ZC_QK" id="27bTNFfc0Pv" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:6EY0p2wAiyu" resolve="InstanceMethod" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="27bTNFfc0Rq" role="37wK5m" />
            </node>
            <node concept="liA8E" id="27bTNFfbxfF" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6EY0p2yyMKo" role="1SL9yI">
      <property role="TrG5h" value="staticMethod" />
      <node concept="3cqZAl" id="6EY0p2yyMKp" role="3clF45" />
      <node concept="3clFbS" id="6EY0p2yyMKq" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbxg8" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbxg9" role="2Hmdds">
            <node concept="2YIFZM" id="27bTNFfbxga" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="27bTNFfc188" role="37wK5m">
                <node concept="2WthIp" id="27bTNFfc189" role="2Oq$k0" />
                <node concept="2XshWL" id="27bTNFfc18a" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="27bTNFfc18b" role="2XxRq1">
                    <node concept="ZC_QK" id="27bTNFfc18c" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:6EY0p2ymmj_" resolve="StaticMethod" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="27bTNFfc1a7" role="37wK5m" />
            </node>
            <node concept="liA8E" id="27bTNFfbxgd" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6KIXGIaSEhp" role="1SL9yI">
      <property role="TrG5h" value="loopAndConditionalStatements" />
      <node concept="3cqZAl" id="6KIXGIaSEhq" role="3clF45" />
      <node concept="3clFbS" id="6KIXGIaSEhr" role="3clF47">
        <node concept="2Hmddi" id="6KIXGIaSEhs" role="3cqZAp">
          <node concept="2OqwBi" id="6KIXGIaSEht" role="2Hmdds">
            <node concept="2YIFZM" id="6KIXGIaSEhu" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="6KIXGIaSEhv" role="37wK5m">
                <node concept="2WthIp" id="6KIXGIaSEhw" role="2Oq$k0" />
                <node concept="2XshWL" id="6KIXGIaSEhx" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="6KIXGIaSEhy" role="2XxRq1">
                    <node concept="ZC_QK" id="6KIXGIaSEHA" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:6KIXGIaNI5i" resolve="LoopAndConditionStatements" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="6KIXGIaSEh$" role="37wK5m" />
            </node>
            <node concept="liA8E" id="6KIXGIaSEh_" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="ZJPHcufCSq" role="1SL9yI">
      <property role="TrG5h" value="alternativeType" />
      <node concept="3cqZAl" id="ZJPHcufCSr" role="3clF45" />
      <node concept="3clFbS" id="ZJPHcufCSs" role="3clF47">
        <node concept="2Hmddi" id="ZJPHcufCSt" role="3cqZAp">
          <node concept="2OqwBi" id="ZJPHcufCSu" role="2Hmdds">
            <node concept="2YIFZM" id="ZJPHcufCSv" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="ZJPHcufCSw" role="37wK5m">
                <node concept="2WthIp" id="ZJPHcufCSx" role="2Oq$k0" />
                <node concept="2XshWL" id="ZJPHcufCSy" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="ZJPHcufCSz" role="2XxRq1">
                    <node concept="ZC_QK" id="ZJPHcufDg9" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:ZJPHcuc$ch" resolve="AltType" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="ZJPHcufCS_" role="37wK5m" />
            </node>
            <node concept="liA8E" id="ZJPHcufCSA" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2i6cuYQuHi8" role="1SL9yI">
      <property role="TrG5h" value="operators" />
      <node concept="3cqZAl" id="2i6cuYQuHi9" role="3clF45" />
      <node concept="3clFbS" id="2i6cuYQuHia" role="3clF47">
        <node concept="2Hmddi" id="2i6cuYQuHib" role="3cqZAp">
          <node concept="2OqwBi" id="2i6cuYQuHic" role="2Hmdds">
            <node concept="2YIFZM" id="2i6cuYQuHid" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="2i6cuYQuHie" role="37wK5m">
                <node concept="2WthIp" id="2i6cuYQuHif" role="2Oq$k0" />
                <node concept="2XshWL" id="2i6cuYQuHig" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="2i6cuYQuHih" role="2XxRq1">
                    <node concept="ZC_QK" id="2i6cuYQuHYu" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:2i6cuYQukZX" resolve="Operators" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="2i6cuYQuHij" role="37wK5m" />
            </node>
            <node concept="liA8E" id="2i6cuYQuHik" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="7AyqXCdNg6Z" role="1SL9yI">
      <property role="TrG5h" value="primitiveTypes" />
      <node concept="3cqZAl" id="7AyqXCdNg70" role="3clF45" />
      <node concept="3clFbS" id="7AyqXCdNg71" role="3clF47">
        <node concept="3SKdUt" id="2Qsys8cXu8x" role="3cqZAp">
          <node concept="1PaTwC" id="2Qsys8cXu8y" role="1aUNEU">
            <node concept="3oM_SD" id="2Qsys8cXu8z" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXu8$" role="1PaTwD">
              <property role="3oM_SC" value="runtime" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXu8_" role="1PaTwD">
              <property role="3oM_SC" value="errors" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXu8A" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXu8B" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXu8C" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXu8D" role="1PaTwD">
              <property role="3oM_SC" value="ignored," />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXu8E" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXu8F" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXu8G" role="1PaTwD">
              <property role="3oM_SC" value="temporary" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXu8H" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXu8I" role="1PaTwD">
              <property role="3oM_SC" value="fix" />
            </node>
          </node>
        </node>
        <node concept="2Hmddi" id="27bTNFfbxgE" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbxgF" role="2Hmdds">
            <node concept="2OqwBi" id="2Qsys8cXub7" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbxgG" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <node concept="2OqwBi" id="27bTNFfc1bY" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfc1bZ" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfc1c0" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfc1c1" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfc1c2" role="2tJFKM">
                        <ref role="2aWVGs" to="yg5v:5XJPBczwaPg" resolve="PrimitiveTypes" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfc1dX" role="37wK5m" />
              </node>
              <node concept="liA8E" id="2Qsys8cXujY" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbxgJ" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="3XUOzow_cBQ" role="1SL9yI">
      <property role="TrG5h" value="rawConversions" />
      <node concept="3cqZAl" id="3XUOzow_cBR" role="3clF45" />
      <node concept="3clFbS" id="3XUOzow_cBS" role="3clF47">
        <node concept="3SKdUt" id="2Qsys8cXuq0" role="3cqZAp">
          <node concept="1PaTwC" id="2Qsys8cXuq1" role="1aUNEU">
            <node concept="3oM_SD" id="2Qsys8cXuq2" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuq3" role="1PaTwD">
              <property role="3oM_SC" value="runtime" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuq4" role="1PaTwD">
              <property role="3oM_SC" value="errors" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuq5" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuq6" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuq7" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuq8" role="1PaTwD">
              <property role="3oM_SC" value="ignored," />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuq9" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuqa" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuqb" role="1PaTwD">
              <property role="3oM_SC" value="temporary" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuqc" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuqd" role="1PaTwD">
              <property role="3oM_SC" value="fix" />
            </node>
          </node>
        </node>
        <node concept="2Hmddi" id="3XUOzow_cBT" role="3cqZAp">
          <node concept="2OqwBi" id="3XUOzow_cBU" role="2Hmdds">
            <node concept="2OqwBi" id="2Qsys8cXuuc" role="2Oq$k0">
              <node concept="2YIFZM" id="3XUOzow_cBV" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <node concept="2OqwBi" id="3XUOzow_cBW" role="37wK5m">
                  <node concept="2WthIp" id="3XUOzow_cBX" role="2Oq$k0" />
                  <node concept="2XshWL" id="3XUOzow_cBY" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="3XUOzow_cBZ" role="2XxRq1">
                      <node concept="ZC_QK" id="3XUOzow_eOE" role="2tJFKM">
                        <ref role="2aWVGs" to="yg5v:3XUOzowrzqi" resolve="RawConversions" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="3XUOzow_cC1" role="37wK5m" />
              </node>
              <node concept="liA8E" id="2Qsys8cXuDh" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
            </node>
            <node concept="liA8E" id="3XUOzow_cC2" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="Or3zaY2HX" role="1SL9yI">
      <property role="TrG5h" value="arrayTypes" />
      <node concept="3cqZAl" id="Or3zaY2HY" role="3clF45" />
      <node concept="3clFbS" id="Or3zaY2HZ" role="3clF47">
        <node concept="2Hmddi" id="Or3zaY2I0" role="3cqZAp">
          <node concept="2OqwBi" id="Or3zaY2I1" role="2Hmdds">
            <node concept="2YIFZM" id="Or3zaY2I3" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="Or3zaY2I4" role="37wK5m">
                <node concept="2WthIp" id="Or3zaY2I5" role="2Oq$k0" />
                <node concept="2XshWL" id="Or3zaY2I6" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="Or3zaY2I7" role="2XxRq1">
                    <node concept="ZC_QK" id="Or3zaY35I" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:Or3zaY2v0" resolve="ArrayTypes" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="Or3zaY2I9" role="37wK5m" />
            </node>
            <node concept="liA8E" id="Or3zaY2Ib" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2i6cuYQszS0" role="1SL9yI">
      <property role="TrG5h" value="arraySubtyping" />
      <node concept="3cqZAl" id="2i6cuYQszS1" role="3clF45" />
      <node concept="3clFbS" id="2i6cuYQszS2" role="3clF47">
        <node concept="2Hmddi" id="2i6cuYQszS3" role="3cqZAp">
          <node concept="2OqwBi" id="2i6cuYQszS4" role="2Hmdds">
            <node concept="2YIFZM" id="2i6cuYQszS5" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="2i6cuYQszS6" role="37wK5m">
                <node concept="2WthIp" id="2i6cuYQszS7" role="2Oq$k0" />
                <node concept="2XshWL" id="2i6cuYQszS8" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="2i6cuYQszS9" role="2XxRq1">
                    <node concept="ZC_QK" id="2i6cuYQs$wm" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:2i6cuYQqrTM" resolve="ArraySubtyping" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="2i6cuYQszSb" role="37wK5m" />
            </node>
            <node concept="liA8E" id="2i6cuYQszSc" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1yt2T3T4T6U" role="1SL9yI">
      <property role="TrG5h" value="varargs" />
      <node concept="3cqZAl" id="1yt2T3T4T6V" role="3clF45" />
      <node concept="3clFbS" id="1yt2T3T4T6Z" role="3clF47">
        <node concept="2Hmddi" id="1yt2T3T4TB9" role="3cqZAp">
          <node concept="2OqwBi" id="1yt2T3T4TBa" role="2Hmdds">
            <node concept="2YIFZM" id="1yt2T3T4TBb" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="1yt2T3T4TBc" role="37wK5m">
                <node concept="2WthIp" id="1yt2T3T4TBd" role="2Oq$k0" />
                <node concept="2XshWL" id="1yt2T3T4TBe" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="1yt2T3T4TBf" role="2XxRq1">
                    <node concept="ZC_QK" id="1yt2T3T4TRz" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:1yt2T3T4FOh" resolve="Varargs" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="1yt2T3T4TBh" role="37wK5m" />
            </node>
            <node concept="liA8E" id="1yt2T3T4TBi" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="PltxfHwhDC" role="1SL9yI">
      <property role="TrG5h" value="LUB" />
      <node concept="3cqZAl" id="PltxfHwhDD" role="3clF45" />
      <node concept="3clFbS" id="PltxfHwhDH" role="3clF47">
        <node concept="3SKdUt" id="2Qsys8cXuKg" role="3cqZAp">
          <node concept="1PaTwC" id="2Qsys8cXuKh" role="1aUNEU">
            <node concept="3oM_SD" id="2Qsys8cXuKi" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuKj" role="1PaTwD">
              <property role="3oM_SC" value="runtime" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuKk" role="1PaTwD">
              <property role="3oM_SC" value="errors" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuKl" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuKm" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuKn" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuKo" role="1PaTwD">
              <property role="3oM_SC" value="ignored," />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuKp" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuKq" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuKr" role="1PaTwD">
              <property role="3oM_SC" value="temporary" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuKs" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="2Qsys8cXuKt" role="1PaTwD">
              <property role="3oM_SC" value="fix" />
            </node>
          </node>
        </node>
        <node concept="2Hmddi" id="PltxfHwhRP" role="3cqZAp">
          <node concept="2OqwBi" id="PltxfHwhRQ" role="2Hmdds">
            <node concept="2OqwBi" id="2Qsys8cXuMQ" role="2Oq$k0">
              <node concept="2YIFZM" id="PltxfHwhRR" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <node concept="2OqwBi" id="PltxfHwhRS" role="37wK5m">
                  <node concept="2WthIp" id="PltxfHwhRT" role="2Oq$k0" />
                  <node concept="2XshWL" id="PltxfHwhRU" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="PltxfHwhRV" role="2XxRq1">
                      <node concept="ZC_QK" id="PltxfHwhYE" role="2tJFKM">
                        <ref role="2aWVGs" to="yg5v:2VOKs1ArylV" resolve="Lub" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="PltxfHwhRX" role="37wK5m" />
              </node>
              <node concept="liA8E" id="2Qsys8cXuW7" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
            </node>
            <node concept="liA8E" id="PltxfHwhRY" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6EK6UBPqaQ3" role="1SL9yI">
      <property role="TrG5h" value="enums" />
      <node concept="3cqZAl" id="6EK6UBPqaQ4" role="3clF45" />
      <node concept="3clFbS" id="6EK6UBPqaQ5" role="3clF47">
        <node concept="2Hmddi" id="6EK6UBPqaQ6" role="3cqZAp">
          <node concept="2OqwBi" id="6EK6UBPqaQ7" role="2Hmdds">
            <node concept="2YIFZM" id="6EK6UBPqaQ8" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="6EK6UBPqaQ9" role="37wK5m">
                <node concept="2WthIp" id="6EK6UBPqaQa" role="2Oq$k0" />
                <node concept="2XshWL" id="6EK6UBPqaQb" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="6EK6UBPqaQc" role="2XxRq1">
                    <node concept="ZC_QK" id="6EK6UBPqbbP" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:6EK6UBPoUUz" resolve="Enums" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="6EK6UBPqaQe" role="37wK5m" />
            </node>
            <node concept="liA8E" id="6EK6UBPqaQf" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

