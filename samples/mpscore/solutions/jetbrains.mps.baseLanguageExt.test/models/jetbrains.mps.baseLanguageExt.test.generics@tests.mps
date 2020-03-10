<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ecdbabcb-1e21-4cda-a151-ac712c4dd623(jetbrains.mps.baseLanguageExt.test.generics@tests)">
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
    <import index="wqtl" ref="r:3be3464b-7052-4e73-b8e9-dc5802b8d5a9(jetbrains.mps.baseLanguageExt.test.code.generics)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
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
  <node concept="1lH9Xt" id="1N_0WA5DT3k">
    <property role="TrG5h" value="Typechecking" />
    <property role="3OwPAg" value="true" />
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
    <node concept="1LZb2c" id="1N_0WA5DT8G" role="1SL9yI">
      <property role="TrG5h" value="SimpleGenerics" />
      <node concept="3cqZAl" id="1N_0WA5DT8H" role="3clF45" />
      <node concept="3clFbS" id="1N_0WA5DT8I" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbxhc" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbxhd" role="2Hmdds">
            <node concept="2YIFZM" id="27bTNFfbxhe" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="27bTNFfbX4L" role="37wK5m">
                <node concept="2WthIp" id="27bTNFfbX4M" role="2Oq$k0" />
                <node concept="2XshWL" id="27bTNFfbX4N" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="27bTNFfbX4O" role="2XxRq1">
                    <node concept="ZC_QK" id="27bTNFfbX4P" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:3Qp4N06bAlL" resolve="SimpleGenerics" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="27bTNFfbX6K" role="37wK5m" />
            </node>
            <node concept="liA8E" id="27bTNFfbxhh" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4BHjwwGPCTZ" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="1LZb2c" id="1N_0WA5JFrN" role="1SL9yI">
      <property role="TrG5h" value="SimpleGenerics2" />
      <node concept="3cqZAl" id="1N_0WA5JFrO" role="3clF45" />
      <node concept="3clFbS" id="1N_0WA5JFrP" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbxhI" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbxhJ" role="2Hmdds">
            <node concept="2YIFZM" id="27bTNFfbxhK" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="27bTNFfbX8B" role="37wK5m">
                <node concept="2WthIp" id="27bTNFfbX8C" role="2Oq$k0" />
                <node concept="2XshWL" id="27bTNFfbX8D" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="27bTNFfbX8E" role="2XxRq1">
                    <node concept="ZC_QK" id="27bTNFfbX8F" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:623frvF_qs8" resolve="SimpleGenerics2" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="27bTNFfbXaA" role="37wK5m" />
            </node>
            <node concept="liA8E" id="27bTNFfbxhN" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4BHjwwGPDri" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="1LZb2c" id="2i6cuYR69K3" role="1SL9yI">
      <property role="TrG5h" value="NestedGenerics" />
      <node concept="3cqZAl" id="2i6cuYR69K4" role="3clF45" />
      <node concept="3clFbS" id="2i6cuYR69K5" role="3clF47">
        <node concept="3SKdUt" id="2i6cuYR65wY" role="3cqZAp">
          <node concept="1PaTwC" id="2i6cuYR65wZ" role="3ndbpf">
            <node concept="3oM_SD" id="2i6cuYR65x1" role="1PaTwD">
              <property role="3oM_SC" value="todo:" />
            </node>
            <node concept="3oM_SD" id="2i6cuYR65yP" role="1PaTwD">
              <property role="3oM_SC" value="typecheck" />
            </node>
            <node concept="3oM_SD" id="2i6cuYR66qu" role="1PaTwD">
              <property role="3oM_SC" value="nested" />
            </node>
            <node concept="3oM_SD" id="2i6cuYR66vl" role="1PaTwD">
              <property role="3oM_SC" value="generics" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="2i6cuYR6bPF" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="2Hmddi" id="2i6cuYR69K6" role="8Wnug">
            <node concept="2OqwBi" id="2i6cuYR69K7" role="2Hmdds">
              <node concept="2YIFZM" id="2i6cuYR69K8" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <node concept="2OqwBi" id="2i6cuYR69K9" role="37wK5m">
                  <node concept="2WthIp" id="2i6cuYR69Ka" role="2Oq$k0" />
                  <node concept="2XshWL" id="2i6cuYR69Kb" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="2i6cuYR69Kc" role="2XxRq1">
                      <node concept="ZC_QK" id="2i6cuYR6ai2" role="2tJFKM">
                        <ref role="2aWVGs" to="wqtl:2i6cuYR5KJp" resolve="NestedGenerics" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="2i6cuYR69Ke" role="37wK5m" />
              </node>
              <node concept="liA8E" id="2i6cuYR69Kf" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2i6cuYR69Kg" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="1LZb2c" id="1TH_SRmAKUM" role="1SL9yI">
      <property role="TrG5h" value="ComplexTypeErasure" />
      <node concept="3cqZAl" id="1TH_SRmAKUN" role="3clF45" />
      <node concept="3clFbS" id="1TH_SRmAKUO" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbxig" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbxih" role="2Hmdds">
            <node concept="2YIFZM" id="27bTNFfbxii" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="27bTNFfc4Cj" role="37wK5m">
                <node concept="2WthIp" id="27bTNFfc4Ck" role="2Oq$k0" />
                <node concept="2XshWL" id="27bTNFfc4Cl" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="27bTNFfc4Cm" role="2XxRq1">
                    <node concept="ZC_QK" id="27bTNFfc4Cn" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:61vfVfpb5w1" resolve="ComplexTypeErasure" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="27bTNFfc4Ei" role="37wK5m" />
            </node>
            <node concept="liA8E" id="27bTNFfbxil" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4BHjwwGPE2J" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="1LZb2c" id="1N_0WA5JGiv" role="1SL9yI">
      <property role="TrG5h" value="GenericSubst" />
      <node concept="3cqZAl" id="1N_0WA5JGiw" role="3clF45" />
      <node concept="3clFbS" id="1N_0WA5JGix" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbxiM" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbxiN" role="2Hmdds">
            <node concept="2YIFZM" id="27bTNFfbxiO" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="27bTNFfc4G9" role="37wK5m">
                <node concept="2WthIp" id="27bTNFfc4Ga" role="2Oq$k0" />
                <node concept="2XshWL" id="27bTNFfc4Gb" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="27bTNFfc4Gc" role="2XxRq1">
                    <node concept="ZC_QK" id="27bTNFfc4Gd" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:61vfVfp6EBu" resolve="GenericSubst" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="27bTNFfc4I8" role="37wK5m" />
            </node>
            <node concept="liA8E" id="27bTNFfbxiR" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4BHjwwGPEzc" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="1LZb2c" id="2PEDwPSdjJh" role="1SL9yI">
      <property role="TrG5h" value="Containment" />
      <node concept="3cqZAl" id="2PEDwPSdjJi" role="3clF45" />
      <node concept="3clFbS" id="2PEDwPSdjJj" role="3clF47">
        <node concept="2Hmddi" id="2PEDwPSdjJk" role="3cqZAp">
          <node concept="2OqwBi" id="2PEDwPSdjJl" role="2Hmdds">
            <node concept="2YIFZM" id="2PEDwPSdjJm" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="2PEDwPSdjJn" role="37wK5m">
                <node concept="2WthIp" id="2PEDwPSdjJo" role="2Oq$k0" />
                <node concept="2XshWL" id="2PEDwPSdjJp" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="2PEDwPSdjJq" role="2XxRq1">
                    <node concept="ZC_QK" id="2PEDwPSdkaa" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:2PEDwPSdaaD" resolve="Containment" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="2PEDwPSdjJs" role="37wK5m" />
            </node>
            <node concept="liA8E" id="2PEDwPSdjJt" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="5DSQNPPS8E8" role="1SL9yI">
      <property role="TrG5h" value="Variance" />
      <node concept="3cqZAl" id="5DSQNPPS8E9" role="3clF45" />
      <node concept="3clFbS" id="5DSQNPPS8Ea" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbxnq" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbxnr" role="2Hmdds">
            <node concept="2YIFZM" id="27bTNFfbxns" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="27bTNFfc3Qp" role="37wK5m">
                <node concept="2WthIp" id="27bTNFfc3Qq" role="2Oq$k0" />
                <node concept="2XshWL" id="27bTNFfc3Qr" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="27bTNFfc3Qs" role="2XxRq1">
                    <node concept="ZC_QK" id="27bTNFfc3Qt" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:3yhgKRJ29Qs" resolve="Variance" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="27bTNFfc3So" role="37wK5m" />
            </node>
            <node concept="liA8E" id="27bTNFfbxnv" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4BHjwwGPB3e" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="1LZb2c" id="19nQ_7V2D9U" role="1SL9yI">
      <property role="TrG5h" value="Recursion" />
      <node concept="3cqZAl" id="19nQ_7V2D9V" role="3clF45" />
      <node concept="3clFbS" id="19nQ_7V2D9W" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbxnW" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbxnX" role="2Hmdds">
            <node concept="2YIFZM" id="27bTNFfbxnY" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="27bTNFfc3Uf" role="37wK5m">
                <node concept="2WthIp" id="27bTNFfc3Ug" role="2Oq$k0" />
                <node concept="2XshWL" id="27bTNFfc3Uh" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="27bTNFfc3Ui" role="2XxRq1">
                    <node concept="ZC_QK" id="27bTNFfc3Uj" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:7w387SKGv4P" resolve="Recursion" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="27bTNFfc3We" role="37wK5m" />
            </node>
            <node concept="liA8E" id="27bTNFfbxo1" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="19nQ_7V2Dal" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="1LZb2c" id="1TH_SRmLuzi" role="1SL9yI">
      <property role="TrG5h" value="Bounds" />
      <node concept="3cqZAl" id="1TH_SRmLuzj" role="3clF45" />
      <node concept="3clFbS" id="1TH_SRmLuzk" role="3clF47">
        <node concept="3SKdUt" id="5o9$c3zUci1" role="3cqZAp">
          <node concept="1PaTwC" id="5o9$c3zUci2" role="3ndbpf">
            <node concept="3oM_SD" id="5o9$c3zUci4" role="1PaTwD">
              <property role="3oM_SC" value="error" />
            </node>
            <node concept="3oM_SD" id="5o9$c3zUcnb" role="1PaTwD">
              <property role="3oM_SC" value="types" />
            </node>
            <node concept="3oM_SD" id="5o9$c3zUcne" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="5o9$c3zUcr5" role="1PaTwD">
              <property role="3oM_SC" value="ignored" />
            </node>
            <node concept="3oM_SD" id="5o9$c3zUcyK" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="5o9$c3zUcAD" role="1PaTwD">
              <property role="3oM_SC" value="purpose:" />
            </node>
            <node concept="3oM_SD" id="5o9$c3zUcAK" role="1PaTwD">
              <property role="3oM_SC" value="they" />
            </node>
            <node concept="3oM_SD" id="5o9$c3zUcEF" role="1PaTwD">
              <property role="3oM_SC" value="arise" />
            </node>
            <node concept="3oM_SD" id="5o9$c3zUcMJ" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="5o9$c3zUcUv" role="1PaTwD">
              <property role="3oM_SC" value="expected" />
            </node>
            <node concept="3oM_SD" id="5o9$c3zUd63" role="1PaTwD">
              <property role="3oM_SC" value="typechecking" />
            </node>
            <node concept="3oM_SD" id="5o9$c3zUddP" role="1PaTwD">
              <property role="3oM_SC" value="errors" />
            </node>
          </node>
        </node>
        <node concept="2Hmddi" id="1TH_SRmLuzl" role="3cqZAp">
          <node concept="2OqwBi" id="1TH_SRmLuzm" role="2Hmdds">
            <node concept="2OqwBi" id="5o9$c3zUbSC" role="2Oq$k0">
              <node concept="2YIFZM" id="1TH_SRmLuzn" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="1TH_SRmLuzo" role="37wK5m">
                  <node concept="2WthIp" id="1TH_SRmLuzp" role="2Oq$k0" />
                  <node concept="2XshWL" id="1TH_SRmLuzq" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="1TH_SRmLuzr" role="2XxRq1">
                      <node concept="ZC_QK" id="1TH_SRmLvZX" role="2tJFKM">
                        <ref role="2aWVGs" to="wqtl:1TH_SRmEWFy" resolve="Bounds" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="1TH_SRmLuzt" role="37wK5m" />
              </node>
              <node concept="liA8E" id="5o9$c3zUc8X" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
            </node>
            <node concept="liA8E" id="1TH_SRmLuzu" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1TH_SRmLuzv" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="1LZb2c" id="3fECE2uRocv" role="1SL9yI">
      <property role="TrG5h" value="Capture" />
      <node concept="3cqZAl" id="3fECE2uRocw" role="3clF45" />
      <node concept="3clFbS" id="3fECE2uRocx" role="3clF47">
        <node concept="2Hmddi" id="3fECE2uRocy" role="3cqZAp">
          <node concept="2OqwBi" id="3fECE2uRocz" role="2Hmdds">
            <node concept="2YIFZM" id="3fECE2uRoc$" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="3fECE2uRoc_" role="37wK5m">
                <node concept="2WthIp" id="3fECE2uRocA" role="2Oq$k0" />
                <node concept="2XshWL" id="3fECE2uRocB" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="3fECE2uRocC" role="2XxRq1">
                    <node concept="ZC_QK" id="3fECE2uRoD3" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:3fECE2uQCW6" resolve="Capture" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="3fECE2uRocE" role="37wK5m" />
            </node>
            <node concept="liA8E" id="3fECE2uRocF" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3fECE2uRocG" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="1LZb2c" id="771syFLhdnE" role="1SL9yI">
      <property role="TrG5h" value="ReturnTypeVariance" />
      <node concept="3cqZAl" id="771syFLhdnF" role="3clF45" />
      <node concept="3clFbS" id="771syFLhdnG" role="3clF47">
        <node concept="2Hmddi" id="771syFLhdnH" role="3cqZAp">
          <node concept="2OqwBi" id="771syFLhdnI" role="2Hmdds">
            <node concept="2YIFZM" id="771syFLhdnJ" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="771syFLhdnK" role="37wK5m">
                <node concept="2WthIp" id="771syFLhdnL" role="2Oq$k0" />
                <node concept="2XshWL" id="771syFLhdnM" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="771syFLhdnN" role="2XxRq1">
                    <node concept="ZC_QK" id="771syFLhdGD" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:7lCg3YbuczX" resolve="RetTyVariance" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="771syFLhdnP" role="37wK5m" />
            </node>
            <node concept="liA8E" id="771syFLhdnQ" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="771syFLhdnR" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
  </node>
</model>

