<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d41e6e4e-dc07-45a8-bf02-65bd041c2454(samples.fitch.demo.firstOrderLogic@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="2" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
  </languages>
  <imports>
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="yhz9" ref="r:72b177ed-1924-4265-b8f3-64e062fd2eed(samples.fitch.firstOrderLogic.structure)" />
    <import index="ious" ref="r:2deee13f-4a3d-4229-ad45-9e5b85327419(samples.fitch.demo.firstOrderLogic)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.typechecking.service)" implicit="true" />
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
  </registry>
  <node concept="2XOHcx" id="2dF51l1ebl4">
    <property role="2XOHcw" value="${fitch_home}" />
  </node>
  <node concept="1lH9Xt" id="5RH_cL_9FQL">
    <property role="TrG5h" value="Check" />
    <node concept="1LZb2c" id="5s5QomKHHK1" role="1SL9yI">
      <property role="TrG5h" value="Test1" />
      <node concept="3cqZAl" id="5s5QomKHHK2" role="3clF45" />
      <node concept="3clFbS" id="5s5QomKHHK6" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwI1" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwI2" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwI3" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwI4" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TestLaunchTypechecking" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbZPj" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbZPk" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbZPl" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbZPm" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbZPn" role="2tJFKM">
                        <ref role="2aWVGs" to="ious:3w0n0hzkQZ9" resolve="Test1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbZRk" role="37wK5m" />
              </node>
              <node concept="liA8E" id="27bTNFfbwI7" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaVLW" resolve="skipLocal" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwI8" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="5RH_cL_9G1v" role="1SL9yI">
      <property role="TrG5h" value="Test2" />
      <node concept="3cqZAl" id="5RH_cL_9G1w" role="3clF45" />
      <node concept="3clFbS" id="5RH_cL_9G1x" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwIF" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwIG" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwIH" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwII" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TestLaunchTypechecking" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfc04W" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfc04X" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfc04Y" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfc04Z" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfc050" role="2tJFKM">
                        <ref role="2aWVGs" to="ious:3w0n0hznGEq" resolve="Test2" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfc06X" role="37wK5m" />
              </node>
              <node concept="liA8E" id="27bTNFfbwIL" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaVLW" resolve="skipLocal" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwIM" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="5RH_cL_9G26" role="1SL9yI">
      <property role="TrG5h" value="Test3" />
      <node concept="3cqZAl" id="5RH_cL_9G27" role="3clF45" />
      <node concept="3clFbS" id="5RH_cL_9G28" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwJl" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwJm" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwJn" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwJo" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TestLaunchTypechecking" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfc08Q" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfc08R" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfc08S" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfc08T" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfc08U" role="2tJFKM">
                        <ref role="2aWVGs" to="ious:3w0n0hznGIK" resolve="Test3" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfc0aR" role="37wK5m" />
              </node>
              <node concept="liA8E" id="27bTNFfbwJr" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaVLW" resolve="skipLocal" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwJs" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="5RH_cL_9G2T" role="1SL9yI">
      <property role="TrG5h" value="Test4" />
      <node concept="3cqZAl" id="5RH_cL_9G2U" role="3clF45" />
      <node concept="3clFbS" id="5RH_cL_9G2V" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwJZ" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwK0" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwK1" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwK2" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TestLaunchTypechecking" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfc0cK" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfc0cL" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfc0cM" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfc0cN" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfc0cO" role="2tJFKM">
                        <ref role="2aWVGs" to="ious:3w0n0hznGNm" resolve="Test4" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfc0eL" role="37wK5m" />
              </node>
              <node concept="liA8E" id="27bTNFfbwK5" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaVLW" resolve="skipLocal" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwK6" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="35YJGAJTxCf" role="1qtyYc">
      <property role="TrG5h" value="resolve" />
      <node concept="37vLTG" id="35YJGAJTxCF" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="2sp9CU" id="35YJGAJTxCR" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="35YJGAJTxCp" role="3clF45">
        <ref role="ehGHo" to="yhz9:3w0n0hzkN6G" resolve="FirstOrderProof" />
      </node>
      <node concept="3clFbS" id="35YJGAJTxCh" role="3clF47">
        <node concept="3cpWs8" id="35YJGAJT$34" role="3cqZAp">
          <node concept="3cpWsn" id="35YJGAJT$35" role="3cpWs9">
            <property role="TrG5h" value="cls" />
            <node concept="3Tqbb2" id="35YJGAJT$2Z" role="1tU5fm">
              <ref role="ehGHo" to="yhz9:3w0n0hzkN6G" resolve="FirstOrderProof" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="35YJGAJTxLm" role="3cqZAp">
          <node concept="1QHqEC" id="35YJGAJTxLn" role="1QHqEI">
            <node concept="3clFbS" id="35YJGAJTxLo" role="1bW5cS">
              <node concept="3clFbF" id="35YJGAJT$eE" role="3cqZAp">
                <node concept="37vLTI" id="35YJGAJT$eG" role="3clFbG">
                  <node concept="1PxgMI" id="35YJGAJT$36" role="37vLTx">
                    <node concept="chp4Y" id="5RH_cL_9G1a" role="3oSUPX">
                      <ref role="cht4Q" to="yhz9:3w0n0hzkN6G" resolve="FirstOrderProof" />
                    </node>
                    <node concept="2OqwBi" id="35YJGAJT$38" role="1m5AlR">
                      <node concept="37vLTw" id="35YJGAJT$39" role="2Oq$k0">
                        <ref role="3cqZAo" node="35YJGAJTxCF" resolve="ref" />
                      </node>
                      <node concept="Vyspw" id="35YJGAJT$3a" role="2OqNvi">
                        <node concept="2OqwBi" id="35YJGAJT$3b" role="Vysub">
                          <node concept="1jxXqW" id="35YJGAJT$3c" role="2Oq$k0" />
                          <node concept="liA8E" id="35YJGAJT$3d" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
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
              <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
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
  </node>
</model>

