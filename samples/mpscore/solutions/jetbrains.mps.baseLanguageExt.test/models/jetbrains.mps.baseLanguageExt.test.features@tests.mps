<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1ded08f9-d5a9-4ce5-b762-96fe8abe4cec(jetbrains.mps.baseLanguageExt.test.features@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
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
      <concept id="1225467090849" name="jetbrains.mps.lang.test.structure.ProjectExpression" flags="nn" index="1jxXqW" />
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="2616911529524314943" name="accessMode" index="3DII0k" />
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
  <node concept="1lH9Xt" id="5s5QomKHHly">
    <property role="3OwPAg" value="true" />
    <property role="TrG5h" value="Features" />
    <property role="3DII0k" value="2hh8MJdVwqT/none" />
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
        <node concept="3vwNmj" id="7Aoa2yVGIi0" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGIll" role="3vwVQn">
            <node concept="2OqwBi" id="7Aoa2yVGIlm" role="2Oq$k0">
              <node concept="2YIFZM" id="7Aoa2yVGIln" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <node concept="2OqwBi" id="7Aoa2yVGIlo" role="37wK5m">
                  <node concept="2WthIp" id="7Aoa2yVGIlp" role="2Oq$k0" />
                  <node concept="2XshWL" id="7Aoa2yVGIlq" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="7Aoa2yVGIlr" role="2XxRq1">
                      <node concept="ZC_QK" id="7Aoa2yVGIls" role="2tJFKM">
                        <ref role="2aWVGs" to="yg5v:5s5QomKHFub" resolve="IntByteConversion" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="7Aoa2yVGIlt" role="37wK5m" />
              </node>
              <node concept="liA8E" id="7Aoa2yVGIlu" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
            </node>
            <node concept="liA8E" id="7Aoa2yVGIlv" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGINW" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGIRh" role="3vwVQn">
            <node concept="2OqwBi" id="7Aoa2yVGIRi" role="2Oq$k0">
              <node concept="2YIFZM" id="7Aoa2yVGIRj" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <node concept="2OqwBi" id="7Aoa2yVGIRk" role="37wK5m">
                  <node concept="2WthIp" id="7Aoa2yVGIRl" role="2Oq$k0" />
                  <node concept="2XshWL" id="7Aoa2yVGIRm" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="7Aoa2yVGIRn" role="2XxRq1">
                      <node concept="ZC_QK" id="7Aoa2yVGIRo" role="2tJFKM">
                        <ref role="2aWVGs" to="yg5v:3Cu2imBSO5x" resolve="CharConversion" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="7Aoa2yVGIRp" role="37wK5m" />
              </node>
              <node concept="liA8E" id="7Aoa2yVGIRq" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
            </node>
            <node concept="liA8E" id="7Aoa2yVGIRr" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGJks" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGJkw" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGJkx" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="7Aoa2yVGJky" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGJkz" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGJk$" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGJk_" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGJkA" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:2i6cuYQ8hzP" resolve="StringConversion" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGJkB" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGJkC" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGJI8" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGJLt" role="3vwVQn">
            <node concept="2OqwBi" id="7Aoa2yVGJLu" role="2Oq$k0">
              <node concept="2YIFZM" id="7Aoa2yVGJLv" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <node concept="2OqwBi" id="7Aoa2yVGJLw" role="37wK5m">
                  <node concept="2WthIp" id="7Aoa2yVGJLx" role="2Oq$k0" />
                  <node concept="2XshWL" id="7Aoa2yVGJLy" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="7Aoa2yVGJLz" role="2XxRq1">
                      <node concept="ZC_QK" id="7Aoa2yVGJL$" role="2tJFKM">
                        <ref role="2aWVGs" to="yg5v:6EY0p2ylujy" resolve="IntShortConversion" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="7Aoa2yVGJL_" role="37wK5m" />
              </node>
              <node concept="liA8E" id="7Aoa2yVGJLA" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
            </node>
            <node concept="liA8E" id="7Aoa2yVGJLB" role="2OqNvi">
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
        <node concept="3SKdUt" id="1uV2bz44u94" role="3cqZAp">
          <node concept="1PaTwC" id="1uV2bz44u95" role="1aUNEU">
            <node concept="3oM_SD" id="1uV2bz44u9v" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="1uV2bz44u9x" role="1PaTwD">
              <property role="3oM_SC" value="enable" />
            </node>
            <node concept="3oM_SD" id="1uV2bz44u9H" role="1PaTwD">
              <property role="3oM_SC" value="back" />
            </node>
            <node concept="3oM_SD" id="1uV2bz44_b7" role="1PaTwD">
              <property role="3oM_SC" value="tmp" />
            </node>
            <node concept="3oM_SD" id="1uV2bz44u9$" role="1PaTwD">
              <property role="3oM_SC" value="disabled" />
            </node>
            <node concept="3oM_SD" id="1uV2bz44u9C" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="7Aoa2yVGL4W" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3vwNmj" id="7Aoa2yVGKA_" role="8Wnug">
            <node concept="2OqwBi" id="7Aoa2yVGKDU" role="3vwVQn">
              <node concept="2OqwBi" id="7Aoa2yVGKDV" role="2Oq$k0">
                <node concept="2YIFZM" id="7Aoa2yVGKDW" role="2Oq$k0">
                  <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                  <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                  <node concept="2OqwBi" id="7Aoa2yVGKDX" role="37wK5m">
                    <node concept="2WthIp" id="7Aoa2yVGKDY" role="2Oq$k0" />
                    <node concept="2XshWL" id="7Aoa2yVGKDZ" role="2OqNvi">
                      <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                      <node concept="2tJFMh" id="7Aoa2yVGKE0" role="2XxRq1">
                        <node concept="ZC_QK" id="7Aoa2yVGKE1" role="2tJFKM">
                          <ref role="2aWVGs" to="yg5v:2HYHa0WUDvm" resolve="GenericNewExpression" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1jxXqW" id="7Aoa2yVGKE2" role="37wK5m" />
                </node>
                <node concept="liA8E" id="7Aoa2yVGKE3" role="2OqNvi">
                  <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
                </node>
              </node>
              <node concept="liA8E" id="7Aoa2yVGKE4" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6EY0p2x_00j" role="1SL9yI">
      <property role="TrG5h" value="instanceMethod" />
      <node concept="3cqZAl" id="6EY0p2x_00k" role="3clF45" />
      <node concept="3clFbS" id="6EY0p2x_00l" role="3clF47">
        <node concept="3vwNmj" id="7Aoa2yVGLro" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGLth" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGLti" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7Aoa2yVGLtj" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGLtk" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGLtl" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGLtm" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGLtn" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:6EY0p2wAiyu" resolve="InstanceMethod" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGLto" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGLtp" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGLOF" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGLQ$" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGLQ_" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7Aoa2yVGLQA" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGLQB" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGLQC" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGLQD" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGLQE" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:6EY0p2ymmj_" resolve="StaticMethod" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGLQF" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGLQG" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGMfT" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGMhM" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGMhN" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7Aoa2yVGMhO" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGMhP" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGMhQ" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGMhR" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGMhS" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:6KIXGIaNI5i" resolve="LoopAndConditionStatements" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGMhT" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGMhU" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGO9S" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGObL" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGObM" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="7Aoa2yVGObN" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGObO" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGObP" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGObQ" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGObR" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:ZJPHcuc$ch" resolve="AltType" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGObS" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGObT" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGP9$" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGPbt" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGPbu" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="7Aoa2yVGPbv" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGPbw" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGPbx" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGPby" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGPbz" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:2i6cuYQukZX" resolve="Operators" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGPb$" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGPb_" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGP$j" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGPBC" role="3vwVQn">
            <node concept="2OqwBi" id="7Aoa2yVGPBD" role="2Oq$k0">
              <node concept="2YIFZM" id="7Aoa2yVGPBE" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <node concept="2OqwBi" id="7Aoa2yVGPBF" role="37wK5m">
                  <node concept="2WthIp" id="7Aoa2yVGPBG" role="2Oq$k0" />
                  <node concept="2XshWL" id="7Aoa2yVGPBH" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="7Aoa2yVGPBI" role="2XxRq1">
                      <node concept="ZC_QK" id="7Aoa2yVGPBJ" role="2tJFKM">
                        <ref role="2aWVGs" to="yg5v:5XJPBczwaPg" resolve="PrimitiveTypes" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="7Aoa2yVGPBK" role="37wK5m" />
              </node>
              <node concept="liA8E" id="7Aoa2yVGPBL" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
            </node>
            <node concept="liA8E" id="7Aoa2yVGPBM" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGQ4A" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGQ7V" role="3vwVQn">
            <node concept="2OqwBi" id="7Aoa2yVGQ7W" role="2Oq$k0">
              <node concept="2YIFZM" id="7Aoa2yVGQ7X" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <node concept="2OqwBi" id="7Aoa2yVGQ7Y" role="37wK5m">
                  <node concept="2WthIp" id="7Aoa2yVGQ7Z" role="2Oq$k0" />
                  <node concept="2XshWL" id="7Aoa2yVGQ80" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="7Aoa2yVGQ81" role="2XxRq1">
                      <node concept="ZC_QK" id="7Aoa2yVGQ82" role="2tJFKM">
                        <ref role="2aWVGs" to="yg5v:3XUOzowrzqi" resolve="RawConversions" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="7Aoa2yVGQ83" role="37wK5m" />
              </node>
              <node concept="liA8E" id="7Aoa2yVGQ84" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
            </node>
            <node concept="liA8E" id="7Aoa2yVGQ85" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGQNO" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGQPH" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGQPI" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7Aoa2yVGQPJ" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGQPK" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGQPL" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGQPM" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGQPN" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:Or3zaY2v0" resolve="ArrayTypes" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGQPO" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGQPP" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGRd7" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGRf0" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGRf1" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7Aoa2yVGRf2" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGRf3" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGRf4" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGRf5" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGRf6" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:2i6cuYQqrTM" resolve="ArraySubtyping" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGRf7" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGRf8" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGRAq" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGRDs" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGRDt" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7Aoa2yVGRDu" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGRDv" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGRDw" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGRDx" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGRDy" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:1yt2T3T4FOh" resolve="Varargs" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGRDz" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGRD$" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGS3h" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGS40" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGS41" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7Aoa2yVGS42" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGS43" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGS44" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGS45" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGS46" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:2VOKs1ArylV" resolve="Lub" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGS47" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGS48" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGSsc" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGStj" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGStk" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7Aoa2yVGStl" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGStm" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGStn" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGSto" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGStp" role="2tJFKM">
                      <ref role="2aWVGs" to="yg5v:6EK6UBPoUUz" resolve="Enums" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGStq" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGStr" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

