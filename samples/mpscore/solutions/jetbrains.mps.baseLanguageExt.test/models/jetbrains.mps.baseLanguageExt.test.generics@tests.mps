<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ecdbabcb-1e21-4cda-a151-ac712c4dd623(jetbrains.mps.baseLanguageExt.test.generics@tests)">
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
    <import index="wqtl" ref="r:3be3464b-7052-4e73-b8e9-dc5802b8d5a9(jetbrains.mps.baseLanguageExt.test.code.generics)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
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
  <node concept="1lH9Xt" id="1N_0WA5DT3k">
    <property role="TrG5h" value="Typechecking" />
    <property role="3OwPAg" value="true" />
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
    <node concept="1LZb2c" id="1N_0WA5DT8G" role="1SL9yI">
      <property role="TrG5h" value="SimpleGenerics" />
      <node concept="3cqZAl" id="1N_0WA5DT8H" role="3clF45" />
      <node concept="3clFbS" id="1N_0WA5DT8I" role="3clF47">
        <node concept="3vwNmj" id="7Aoa2yVGTfV" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGThR" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGThS" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7Aoa2yVGThT" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGThU" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGThV" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGThW" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGThX" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:3Qp4N06bAlL" resolve="SimpleGenerics" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGThY" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGThZ" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGT_c" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGT_g" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGT_h" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7Aoa2yVGT_i" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGT_j" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGT_k" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGT_l" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGT_m" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:623frvF_qs8" resolve="SimpleGenerics2" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGT_n" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGT_o" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGTSE" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGTUA" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGTUB" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7Aoa2yVGTUC" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGTUD" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGTUE" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGTUF" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGTUG" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:2i6cuYR5KJp" resolve="NestedGenerics" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGTUH" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGTUI" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
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
        <node concept="3vwNmj" id="7Aoa2yVGUci" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGUfE" role="3vwVQn">
            <node concept="liA8E" id="7Aoa2yVGUfF" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
            <node concept="2OqwBi" id="7Aoa2yVGUfG" role="2Oq$k0">
              <node concept="2YIFZM" id="7Aoa2yVGUfH" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="7Aoa2yVGUfI" role="37wK5m">
                  <node concept="2WthIp" id="7Aoa2yVGUfJ" role="2Oq$k0" />
                  <node concept="2XshWL" id="7Aoa2yVGUfK" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="7Aoa2yVGUfL" role="2XxRq1">
                      <node concept="ZC_QK" id="7Aoa2yVGUfM" role="2tJFKM">
                        <ref role="2aWVGs" to="wqtl:61vfVfpb5w1" resolve="ComplexTypeErasure" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="7Aoa2yVGUfN" role="37wK5m" />
              </node>
              <node concept="liA8E" id="7Aoa2yVGUfO" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
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
        <node concept="3vwNmj" id="7Aoa2yVGUAq" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGUAu" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGUAv" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7Aoa2yVGUAw" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGUAx" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGUAy" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGUAz" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGUA$" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:61vfVfp6EBu" resolve="GenericSubst" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGUA_" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGUAA" role="2OqNvi">
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
        <node concept="3SKdUt" id="4s_lMmHvKzt" role="3cqZAp">
          <node concept="1PaTwC" id="4s_lMmHvKzu" role="1aUNEU">
            <node concept="3oM_SD" id="4s_lMmHvKzv" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="4s_lMmHvKzw" role="1PaTwD">
              <property role="3oM_SC" value="runtime" />
            </node>
            <node concept="3oM_SD" id="4s_lMmHvKzx" role="1PaTwD">
              <property role="3oM_SC" value="errors" />
            </node>
            <node concept="3oM_SD" id="4s_lMmHvKzy" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="4s_lMmHvKzz" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="4s_lMmHvKz$" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="4s_lMmHvKz_" role="1PaTwD">
              <property role="3oM_SC" value="ignored," />
            </node>
            <node concept="3oM_SD" id="4s_lMmHvKzA" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="4s_lMmHvKzB" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4s_lMmHvKzC" role="1PaTwD">
              <property role="3oM_SC" value="temporary" />
            </node>
            <node concept="3oM_SD" id="4s_lMmHvKzD" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="4s_lMmHvKzE" role="1PaTwD">
              <property role="3oM_SC" value="fix" />
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="7Aoa2yVGUVk" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGUVo" role="3vwVQn">
            <node concept="2OqwBi" id="7Aoa2yVGUVp" role="2Oq$k0">
              <node concept="2YIFZM" id="7Aoa2yVGUVq" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="7Aoa2yVGUVr" role="37wK5m">
                  <node concept="2WthIp" id="7Aoa2yVGUVs" role="2Oq$k0" />
                  <node concept="2XshWL" id="7Aoa2yVGUVt" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="7Aoa2yVGUVu" role="2XxRq1">
                      <node concept="ZC_QK" id="7Aoa2yVGUVv" role="2tJFKM">
                        <ref role="2aWVGs" to="wqtl:2PEDwPSdaaD" resolve="Containment" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="7Aoa2yVGUVw" role="37wK5m" />
              </node>
              <node concept="liA8E" id="7Aoa2yVGUVx" role="2OqNvi">
                <ref role="37wK5l" to="tj24:2hrSdN96927" resolve="ignoreErrorTypes" />
              </node>
            </node>
            <node concept="liA8E" id="7Aoa2yVGUVy" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGVjB" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGVkO" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGVkP" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <node concept="2OqwBi" id="7Aoa2yVGVkQ" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGVkR" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGVkS" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGVkT" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGVkU" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:3yhgKRJ29Qs" resolve="Variance" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGVkV" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGVkW" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGVI$" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGVIC" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGVID" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="7Aoa2yVGVIE" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGVIF" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGVIG" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGVIH" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGVII" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:7w387SKGv4P" resolve="Recursion" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGVIJ" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGVIK" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGW6I" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGW6M" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGW6N" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="7Aoa2yVGW6O" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGW6P" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGW6Q" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGW6R" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGW6S" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:1TH_SRmEWFy" resolve="Bounds" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGW6T" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGW6U" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGWsy" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGWuu" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGWuv" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="7Aoa2yVGWuw" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGWux" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGWuy" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGWuz" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGWu$" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:3fECE2uQCW6" resolve="Capture" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGWu_" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGWuA" role="2OqNvi">
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
        <node concept="3vwNmj" id="7Aoa2yVGWL6" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGWN2" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGWN3" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="7Aoa2yVGWN4" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGWN5" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGWN6" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGWN7" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGWN8" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:7lCg3YbuczX" resolve="RetTyVariance" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGWN9" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGWNa" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="771syFLhdnR" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="1LZb2c" id="6_5E9TNFq_Y" role="1SL9yI">
      <property role="TrG5h" value="OverridingAndErasure" />
      <node concept="3cqZAl" id="6_5E9TNFq_Z" role="3clF45" />
      <node concept="3clFbS" id="6_5E9TNFqA0" role="3clF47">
        <node concept="3vwNmj" id="7Aoa2yVGX5E" role="3cqZAp">
          <node concept="2OqwBi" id="7Aoa2yVGX5I" role="3vwVQn">
            <node concept="2YIFZM" id="7Aoa2yVGX5J" role="2Oq$k0">
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
              <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
              <node concept="2OqwBi" id="7Aoa2yVGX5K" role="37wK5m">
                <node concept="2WthIp" id="7Aoa2yVGX5L" role="2Oq$k0" />
                <node concept="2XshWL" id="7Aoa2yVGX5M" role="2OqNvi">
                  <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                  <node concept="2tJFMh" id="7Aoa2yVGX5N" role="2XxRq1">
                    <node concept="ZC_QK" id="7Aoa2yVGX5O" role="2tJFKM">
                      <ref role="2aWVGs" to="wqtl:6_5E9TNDqeq" resolve="MethodOverridingAndErasure" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1jxXqW" id="7Aoa2yVGX5P" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7Aoa2yVGX5Q" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6_5E9TNFqAb" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
  </node>
</model>

