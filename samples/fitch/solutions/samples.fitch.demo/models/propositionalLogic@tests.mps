<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:bbd46661-951f-4ac0-98b0-8d5304512807(samples.fitch.demo.propositionalLogic@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
  </languages>
  <imports>
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.coderules.typechecking.service)" />
    <import index="ctog" ref="r:ff7f5a29-d9b8-40f0-b446-35696305dff0(samples.fitch.demo.propositionalLogic)" />
    <import index="27wh" ref="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(samples.fitch.propositionalLogic.structure)" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1lH9Xt" id="2dF51l1ebh3">
    <property role="TrG5h" value="PropositionalLogic" />
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <node concept="1LZb2c" id="5s5QomKHHK1" role="1SL9yI">
      <property role="TrG5h" value="Contrapositive" />
      <node concept="3cqZAl" id="5s5QomKHHK2" role="3clF45" />
      <node concept="3clFbS" id="5s5QomKHHK6" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwKD" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwKE" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwKF" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwKG" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbXle" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbXlf" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbXlg" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbXlh" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbXli" role="2tJFKM">
                        <ref role="2aWVGs" to="ctog:2AfSc6Jv$28" resolve="Contrapositive" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbXnf" role="37wK5m" />
              </node>
              <node concept="liA8E" id="27bTNFfbwKJ" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaVLW" resolve="skipLocal" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwKK" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2dF51l1ebng" role="1SL9yI">
      <property role="TrG5h" value="Foo" />
      <node concept="3cqZAl" id="2dF51l1ebnh" role="3clF45" />
      <node concept="3clFbS" id="2dF51l1ebni" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwLj" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwLk" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwLl" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwLm" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbXQp" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbXQq" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbXQr" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbXQs" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbXQt" role="2tJFKM">
                        <ref role="2aWVGs" to="ctog:4wvktoXPtyv" resolve="Foo" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbXSq" role="37wK5m" />
              </node>
              <node concept="liA8E" id="27bTNFfbwLp" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaVLW" resolve="skipLocal" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwLq" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2dF51l1ebnU" role="1SL9yI">
      <property role="TrG5h" value="Implication" />
      <node concept="3cqZAl" id="2dF51l1ebnV" role="3clF45" />
      <node concept="3clFbS" id="2dF51l1ebnW" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwLX" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwLY" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwLZ" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwM0" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbXUj" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbXUk" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbXUl" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbXUm" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbXUn" role="2tJFKM">
                        <ref role="2aWVGs" to="ctog:5jVx7S230hl" resolve="Implication" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbXWk" role="37wK5m" />
              </node>
              <node concept="liA8E" id="27bTNFfbwM3" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaVLW" resolve="skipLocal" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwM4" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2dF51l1eboH" role="1SL9yI">
      <property role="TrG5h" value="Nonsense" />
      <node concept="3cqZAl" id="2dF51l1eboI" role="3clF45" />
      <node concept="3clFbS" id="2dF51l1eboJ" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwMB" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwMC" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwMD" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwME" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbXYd" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbXYe" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbXYf" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbXYg" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbXYh" role="2tJFKM">
                        <ref role="2aWVGs" to="ctog:3l440nVt5$e" resolve="Nonsense" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbY0e" role="37wK5m" />
              </node>
              <node concept="liA8E" id="27bTNFfbwMH" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaVLW" resolve="skipLocal" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwMI" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2dF51l1ebpG" role="1SL9yI">
      <property role="TrG5h" value="Sample" />
      <node concept="3cqZAl" id="2dF51l1ebpH" role="3clF45" />
      <node concept="3clFbS" id="2dF51l1ebpI" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwNh" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwNi" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwNj" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwNk" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbY27" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbY28" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbY29" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbY2a" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbY2b" role="2tJFKM">
                        <ref role="2aWVGs" to="ctog:5A8qZLXfUvB" resolve="Sample" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbY48" role="37wK5m" />
              </node>
              <node concept="liA8E" id="27bTNFfbwNn" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaVLW" resolve="skipLocal" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwNo" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2dF51l1ebBW" role="1SL9yI">
      <property role="TrG5h" value="Tautology" />
      <node concept="3cqZAl" id="2dF51l1ebBX" role="3clF45" />
      <node concept="3clFbS" id="2dF51l1ebBY" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwNV" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwNW" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwNX" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwNY" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbY_u" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbY_v" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbY_w" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbY_x" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbY_y" role="2tJFKM">
                        <ref role="2aWVGs" to="ctog:3JXBM6C4h$e" resolve="Tautology" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbYBv" role="37wK5m" />
              </node>
              <node concept="liA8E" id="27bTNFfbwO1" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaVLW" resolve="skipLocal" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwO2" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2dF51l1ebDj" role="1SL9yI">
      <property role="TrG5h" value="Test1" />
      <node concept="3cqZAl" id="2dF51l1ebDk" role="3clF45" />
      <node concept="3clFbS" id="2dF51l1ebDl" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwO_" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwOA" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwOB" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwOC" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbYDo" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbYDp" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbYDq" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbYDr" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbYDs" role="2tJFKM">
                        <ref role="2aWVGs" to="ctog:2AfSc6Jv_cR" resolve="Test1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbYFp" role="37wK5m" />
              </node>
              <node concept="liA8E" id="27bTNFfbwOF" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaVLW" resolve="skipLocal" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwOG" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2dF51l1ebEQ" role="1SL9yI">
      <property role="TrG5h" value="Test2" />
      <node concept="3cqZAl" id="2dF51l1ebER" role="3clF45" />
      <node concept="3clFbS" id="2dF51l1ebES" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwPf" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwPg" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwPh" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwPi" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbYHi" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbYHj" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbYHk" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbYHl" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbYHm" role="2tJFKM">
                        <ref role="2aWVGs" to="ctog:2AfSc6Jw7pl" resolve="Test2" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbYJj" role="37wK5m" />
              </node>
              <node concept="liA8E" id="27bTNFfbwPl" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaVLW" resolve="skipLocal" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwPm" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2dF51l1ebG_" role="1SL9yI">
      <property role="TrG5h" value="Test3" />
      <node concept="3cqZAl" id="2dF51l1ebGA" role="3clF45" />
      <node concept="3clFbS" id="2dF51l1ebGB" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwPT" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwPU" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwPV" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwPW" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbYLc" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbYLd" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbYLe" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbYLf" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbYLg" role="2tJFKM">
                        <ref role="2aWVGs" to="ctog:2AfSc6JxXEN" resolve="Test3" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbYNd" role="37wK5m" />
              </node>
              <node concept="liA8E" id="27bTNFfbwPZ" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaVLW" resolve="skipLocal" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwQ0" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2dF51l1ebIz" role="1SL9yI">
      <property role="TrG5h" value="Test4" />
      <node concept="3cqZAl" id="2dF51l1ebI$" role="3clF45" />
      <node concept="3clFbS" id="2dF51l1ebI_" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwQz" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwQ$" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwQ_" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwQA" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbYP6" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbYP7" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbYP8" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbYP9" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbYPa" role="2tJFKM">
                        <ref role="2aWVGs" to="ctog:3l440nVqpsF" resolve="Test4" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbYR7" role="37wK5m" />
              </node>
              <node concept="liA8E" id="27bTNFfbwQD" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaVLW" resolve="skipLocal" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwQE" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2dF51l1ebKE" role="1SL9yI">
      <property role="TrG5h" value="Test5" />
      <node concept="3cqZAl" id="2dF51l1ebKF" role="3clF45" />
      <node concept="3clFbS" id="2dF51l1ebKG" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwRd" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwRe" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwRf" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwRg" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbYT0" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbYT1" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbYT2" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbYT3" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbYT4" role="2tJFKM">
                        <ref role="2aWVGs" to="ctog:3l440nVrsN1" resolve="Test5" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbYV1" role="37wK5m" />
              </node>
              <node concept="liA8E" id="27bTNFfbwRj" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaVLW" resolve="skipLocal" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwRk" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2dF51l1ebMX" role="1SL9yI">
      <property role="TrG5h" value="Test6" />
      <node concept="3cqZAl" id="2dF51l1ebMY" role="3clF45" />
      <node concept="3clFbS" id="2dF51l1ebMZ" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwRR" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwRS" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwRT" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwRU" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbYWU" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbYWV" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbYWW" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbYWX" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbYWY" role="2tJFKM">
                        <ref role="2aWVGs" to="ctog:5A8qZLXfUwO" resolve="Test6" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbYYV" role="37wK5m" />
              </node>
              <node concept="liA8E" id="27bTNFfbwRX" role="2OqNvi">
                <ref role="37wK5l" to="tj24:27bTNFfaVLW" resolve="skipLocal" />
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwRY" role="2OqNvi">
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
        <ref role="ehGHo" to="27wh:3JXBM6C3Fs$" resolve="PropositionalProof" />
      </node>
      <node concept="3clFbS" id="35YJGAJTxCh" role="3clF47">
        <node concept="3cpWs8" id="35YJGAJT$34" role="3cqZAp">
          <node concept="3cpWsn" id="35YJGAJT$35" role="3cpWs9">
            <property role="TrG5h" value="cls" />
            <node concept="3Tqbb2" id="35YJGAJT$2Z" role="1tU5fm">
              <ref role="ehGHo" to="27wh:3JXBM6C3Fs$" resolve="PropositionalProof" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="35YJGAJTxLm" role="3cqZAp">
          <node concept="1QHqEC" id="35YJGAJTxLn" role="1QHqEI">
            <node concept="3clFbS" id="35YJGAJTxLo" role="1bW5cS">
              <node concept="3clFbF" id="35YJGAJT$eE" role="3cqZAp">
                <node concept="37vLTI" id="35YJGAJT$eG" role="3clFbG">
                  <node concept="1PxgMI" id="35YJGAJT$36" role="37vLTx">
                    <node concept="chp4Y" id="5RH_cL_9CJe" role="3oSUPX">
                      <ref role="cht4Q" to="27wh:3JXBM6C3Fs$" resolve="PropositionalProof" />
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
  </node>
</model>

