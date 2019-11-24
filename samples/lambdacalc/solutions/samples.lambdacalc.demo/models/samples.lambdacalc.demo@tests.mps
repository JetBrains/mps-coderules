<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f6344a84-a2b8-4892-8b2e-6291d7f50a97(samples.lambdacalc.demo@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="5" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="ysck" ref="r:64f472af-c4b1-4900-9ea3-aec5c51b6e6e(samples.lambdacalc.demo)" />
    <import index="8tt8" ref="r:e74c1bfc-387b-4b4b-abee-2eb77ee510ec(samples.lambdacalc.structure)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.coderules.typechecking.service)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
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
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
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
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="2XOHcx" id="6EwjVjWuXZY">
    <property role="2XOHcw" value="${lambdacalc_home}" />
  </node>
  <node concept="1lH9Xt" id="6EwjVjWuYhl">
    <property role="TrG5h" value="Demo" />
    <node concept="1LZb2c" id="5s5QomKHHK1" role="1SL9yI">
      <property role="TrG5h" value="Demo" />
      <node concept="3cqZAl" id="5s5QomKHHK2" role="3clF45" />
      <node concept="3clFbS" id="5s5QomKHHK6" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwSx" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwSy" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwSz" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwS$" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbVCh" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbVCi" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbVCj" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbVCk" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbVCl" role="2tJFKM">
                        <ref role="2aWVGs" to="ysck:4dPZ2m2jNim" resolve="Demo" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbVgO" role="37wK5m" />
              </node>
              <node concept="liA8E" id="4ZGicUZkED9" role="2OqNvi">
                <ref role="37wK5l" to="tj24:4ZGicUYVP43" resolve="customMatcher" />
                <node concept="1bVj0M" id="4ZGicUZkEDa" role="37wK5m">
                  <node concept="3clFbS" id="4ZGicUZkEDb" role="1bW5cS">
                    <node concept="3clFbF" id="4ZGicUZkEDc" role="3cqZAp">
                      <node concept="2OqwBi" id="4ZGicUZkEDd" role="3clFbG">
                        <node concept="2WthIp" id="4ZGicUZkEDe" role="2Oq$k0" />
                        <node concept="2XshWL" id="4ZGicUZkEDf" role="2OqNvi">
                          <ref role="2WH_rO" node="4ZGicUYXn0k" resolve="customMatcher" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwSC" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6EwjVjWv74z" role="1SL9yI">
      <property role="TrG5h" value="Fix" />
      <node concept="3cqZAl" id="6EwjVjWv74$" role="3clF45" />
      <node concept="3clFbS" id="6EwjVjWv74_" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbxw0" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbxw1" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbMeC" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbxw2" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <node concept="2OqwBi" id="27bTNFfbVHV" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbVHW" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbVHX" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbVHY" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbVHZ" role="2tJFKM">
                        <ref role="2aWVGs" to="ysck:G788z3ofcS" resolve="Fix" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbVEe" role="37wK5m" />
              </node>
              <node concept="liA8E" id="2BgB$z0LwU_" role="2OqNvi">
                <ref role="37wK5l" to="tj24:4ZGicUYVP43" resolve="customMatcher" />
                <node concept="1bVj0M" id="2BgB$z0LwUA" role="37wK5m">
                  <node concept="3clFbS" id="2BgB$z0LwUB" role="1bW5cS">
                    <node concept="3clFbF" id="2BgB$z0LwUC" role="3cqZAp">
                      <node concept="2OqwBi" id="2BgB$z0LwUD" role="3clFbG">
                        <node concept="2WthIp" id="2BgB$z0LwUE" role="2Oq$k0" />
                        <node concept="2XshWL" id="2BgB$z0LwUF" role="2OqNvi">
                          <ref role="2WH_rO" node="4ZGicUYXn0k" resolve="customMatcher" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbxw5" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6EwjVjWv0Y3" role="1SL9yI">
      <property role="TrG5h" value="Peculiar" />
      <node concept="3cqZAl" id="6EwjVjWv0Y4" role="3clF45" />
      <node concept="3clFbS" id="6EwjVjWv0Y5" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwTb" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwTc" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwTd" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwTe" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbW4I" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbW4J" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbW4K" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbW4L" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbW4M" role="2tJFKM">
                        <ref role="2aWVGs" to="ysck:oyq0R0e9lD" resolve="Peculiar" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbW6J" role="37wK5m" />
              </node>
              <node concept="liA8E" id="4ZGicUZkKZL" role="2OqNvi">
                <ref role="37wK5l" to="tj24:4ZGicUYVP43" resolve="customMatcher" />
                <node concept="1bVj0M" id="4ZGicUZkKZM" role="37wK5m">
                  <node concept="3clFbS" id="4ZGicUZkKZN" role="1bW5cS">
                    <node concept="3clFbF" id="4ZGicUZkKZO" role="3cqZAp">
                      <node concept="2OqwBi" id="4ZGicUZkKZP" role="3clFbG">
                        <node concept="2WthIp" id="4ZGicUZkKZQ" role="2Oq$k0" />
                        <node concept="2XshWL" id="4ZGicUZkKZR" role="2OqNvi">
                          <ref role="2WH_rO" node="4ZGicUYXn0k" resolve="customMatcher" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwTi" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6EwjVjWvpYG" role="1SL9yI">
      <property role="TrG5h" value="SKI" />
      <node concept="3cqZAl" id="6EwjVjWvpYH" role="3clF45" />
      <node concept="3clFbS" id="6EwjVjWvpYI" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwTP" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwTQ" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwTR" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwTS" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbW8C" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbW8D" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbW8E" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbW8F" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbW8G" role="2tJFKM">
                        <ref role="2aWVGs" to="ysck:7Et5j8uqHKT" resolve="SKI" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbWaD" role="37wK5m" />
              </node>
              <node concept="liA8E" id="2BgB$z0LEnt" role="2OqNvi">
                <ref role="37wK5l" to="tj24:4ZGicUYVP43" resolve="customMatcher" />
                <node concept="1bVj0M" id="2BgB$z0LEnu" role="37wK5m">
                  <node concept="3clFbS" id="2BgB$z0LEnv" role="1bW5cS">
                    <node concept="3clFbF" id="2BgB$z0LEnw" role="3cqZAp">
                      <node concept="2OqwBi" id="2BgB$z0LEnx" role="3clFbG">
                        <node concept="2WthIp" id="2BgB$z0LEny" role="2Oq$k0" />
                        <node concept="2XshWL" id="2BgB$z0LEnz" role="2OqNvi">
                          <ref role="2WH_rO" node="4ZGicUYXn0k" resolve="customMatcher" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwTW" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6EwjVjWvvH4" role="1SL9yI">
      <property role="TrG5h" value="Numerals" />
      <node concept="3cqZAl" id="6EwjVjWvvH5" role="3clF45" />
      <node concept="3clFbS" id="6EwjVjWvvH6" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwUv" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwUw" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwUx" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwUy" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbWvq" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbWvr" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbWvs" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbWvt" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbWvu" role="2tJFKM">
                        <ref role="2aWVGs" to="ysck:7_8aRkgE06U" resolve="Numerals" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbWxr" role="37wK5m" />
              </node>
              <node concept="liA8E" id="4ZGicUZkV9_" role="2OqNvi">
                <ref role="37wK5l" to="tj24:4ZGicUYVP43" resolve="customMatcher" />
                <node concept="1bVj0M" id="4ZGicUZkV9A" role="37wK5m">
                  <node concept="3clFbS" id="4ZGicUZkV9B" role="1bW5cS">
                    <node concept="3clFbF" id="4ZGicUZkV9C" role="3cqZAp">
                      <node concept="2OqwBi" id="4ZGicUZkV9D" role="3clFbG">
                        <node concept="2WthIp" id="4ZGicUZkV9E" role="2Oq$k0" />
                        <node concept="2XshWL" id="4ZGicUZkV9F" role="2OqNvi">
                          <ref role="2WH_rO" node="4ZGicUYXn0k" resolve="customMatcher" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwUA" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6EwjVjWvydR" role="1SL9yI">
      <property role="TrG5h" value="Omega" />
      <node concept="3cqZAl" id="6EwjVjWvydS" role="3clF45" />
      <node concept="3clFbS" id="6EwjVjWvydT" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwV9" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwVa" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwVb" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwVc" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbWzk" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbWzl" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbWzm" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbWzn" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbWzo" role="2tJFKM">
                        <ref role="2aWVGs" to="ysck:nOeFRaGxm_" resolve="Omega" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbW_l" role="37wK5m" />
              </node>
              <node concept="liA8E" id="2BgB$z0LLkJ" role="2OqNvi">
                <ref role="37wK5l" to="tj24:4ZGicUYVP43" resolve="customMatcher" />
                <node concept="1bVj0M" id="2BgB$z0LLkK" role="37wK5m">
                  <node concept="3clFbS" id="2BgB$z0LLkL" role="1bW5cS">
                    <node concept="3clFbF" id="2BgB$z0LLkM" role="3cqZAp">
                      <node concept="2OqwBi" id="2BgB$z0LLkN" role="3clFbG">
                        <node concept="2WthIp" id="2BgB$z0LLkO" role="2Oq$k0" />
                        <node concept="2XshWL" id="2BgB$z0LLkP" role="2OqNvi">
                          <ref role="2WH_rO" node="4ZGicUYXn0k" resolve="customMatcher" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwVg" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6EwjVjWvyrW" role="1SL9yI">
      <property role="TrG5h" value="Y_combinator" />
      <node concept="3cqZAl" id="6EwjVjWvyrX" role="3clF45" />
      <node concept="3clFbS" id="6EwjVjWvyrY" role="3clF47">
        <node concept="2Hmddi" id="27bTNFfbwVN" role="3cqZAp">
          <node concept="2OqwBi" id="27bTNFfbwVO" role="2Hmdds">
            <node concept="2OqwBi" id="27bTNFfbwVP" role="2Oq$k0">
              <node concept="2YIFZM" id="27bTNFfbwVQ" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="27bTNFfbWBe" role="37wK5m">
                  <node concept="2WthIp" id="27bTNFfbWBf" role="2Oq$k0" />
                  <node concept="2XshWL" id="27bTNFfbWBg" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="27bTNFfbWBh" role="2XxRq1">
                      <node concept="ZC_QK" id="27bTNFfbWBi" role="2tJFKM">
                        <ref role="2aWVGs" to="ysck:1PL$JmLA85j" resolve="Y_combinator" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="27bTNFfbWDf" role="37wK5m" />
              </node>
              <node concept="liA8E" id="2BgB$z0LMIC" role="2OqNvi">
                <ref role="37wK5l" to="tj24:4ZGicUYVP43" resolve="customMatcher" />
                <node concept="1bVj0M" id="2BgB$z0LMID" role="37wK5m">
                  <node concept="3clFbS" id="2BgB$z0LMIE" role="1bW5cS">
                    <node concept="3clFbF" id="2BgB$z0LMIF" role="3cqZAp">
                      <node concept="2OqwBi" id="2BgB$z0LMIG" role="3clFbG">
                        <node concept="2WthIp" id="2BgB$z0LMIH" role="2Oq$k0" />
                        <node concept="2XshWL" id="2BgB$z0LMII" role="2OqNvi">
                          <ref role="2WH_rO" node="4ZGicUYXn0k" resolve="customMatcher" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="27bTNFfbwVU" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1IKbs5XIs8G" role="1SL9yI">
      <property role="TrG5h" value="DemoScopes" />
      <node concept="3cqZAl" id="1IKbs5XIs8H" role="3clF45" />
      <node concept="3clFbS" id="1IKbs5XIs8L" role="3clF47">
        <node concept="2Hmddi" id="RcyXiSVPlH" role="3cqZAp">
          <node concept="2OqwBi" id="RcyXiSVPlI" role="2Hmdds">
            <node concept="2OqwBi" id="RcyXiSVPlJ" role="2Oq$k0">
              <node concept="2YIFZM" id="RcyXiSVPlK" role="2Oq$k0">
                <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                <node concept="2OqwBi" id="RcyXiSVPlL" role="37wK5m">
                  <node concept="2WthIp" id="RcyXiSVPlM" role="2Oq$k0" />
                  <node concept="2XshWL" id="RcyXiSVPlN" role="2OqNvi">
                    <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                    <node concept="2tJFMh" id="RcyXiSVPlO" role="2XxRq1">
                      <node concept="ZC_QK" id="RcyXiSVPvg" role="2tJFKM">
                        <ref role="2aWVGs" to="ysck:JqEP$8t9fh" resolve="DemoScopes" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1jxXqW" id="RcyXiSVPlQ" role="37wK5m" />
              </node>
              <node concept="liA8E" id="73aHugggP6K" role="2OqNvi">
                <ref role="37wK5l" to="tj24:4ZGicUYVP43" resolve="customMatcher" />
                <node concept="1bVj0M" id="73aHugggP6L" role="37wK5m">
                  <node concept="3clFbS" id="73aHugggP6M" role="1bW5cS">
                    <node concept="3clFbF" id="73aHugggP6N" role="3cqZAp">
                      <node concept="2OqwBi" id="73aHugggP6O" role="3clFbG">
                        <node concept="2WthIp" id="73aHugggP6P" role="2Oq$k0" />
                        <node concept="2XshWL" id="73aHugggP6Q" role="2OqNvi">
                          <ref role="2WH_rO" node="4ZGicUYXn0k" resolve="customMatcher" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="RcyXiSVPlS" role="2OqNvi">
              <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="47tET_Xohmr" role="1SL9yI">
      <property role="TrG5h" value="DemoTypeclasses" />
      <node concept="3cqZAl" id="47tET_Xohms" role="3clF45" />
      <node concept="3clFbS" id="47tET_Xohmt" role="3clF47">
        <node concept="3SKdUt" id="1QFIy$K7Qjj" role="3cqZAp">
          <node concept="1PaTwC" id="1QFIy$K7Qjk" role="3ndbpf">
            <node concept="3oM_SD" id="1QFIy$K7Qjl" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="1QFIy$K7Qjm" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1QFIy$K7Qjn" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="1QFIy$K7Qjo" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1QFIy$K7Qjp" role="1PaTwD">
              <property role="3oM_SC" value="ignored" />
            </node>
          </node>
        </node>
        <node concept="RRSsy" id="1QFIy$K7Qjq" role="3cqZAp">
          <property role="RRSoG" value="gZ5fksE/warn" />
          <node concept="Xl_RD" id="1QFIy$K7Qjr" role="RRSoy">
            <property role="Xl_RC" value="Test is ignored" />
          </node>
        </node>
        <node concept="3clFbJ" id="1QFIy$K7QlU" role="3cqZAp">
          <node concept="3clFbS" id="1QFIy$K7QlW" role="3clFbx">
            <node concept="2Hmddi" id="47tET_Xohmu" role="3cqZAp">
              <node concept="2OqwBi" id="47tET_Xohmv" role="2Hmdds">
                <node concept="2OqwBi" id="47tET_Xohmw" role="2Oq$k0">
                  <node concept="2YIFZM" id="47tET_Xohmx" role="2Oq$k0">
                    <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                    <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                    <node concept="2OqwBi" id="47tET_Xohmy" role="37wK5m">
                      <node concept="2WthIp" id="47tET_Xohmz" role="2Oq$k0" />
                      <node concept="2XshWL" id="47tET_Xohm$" role="2OqNvi">
                        <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                        <node concept="2tJFMh" id="47tET_Xohm_" role="2XxRq1">
                          <node concept="ZC_QK" id="47tET_XohUr" role="2tJFKM">
                            <ref role="2aWVGs" to="ysck:47tET_WGoBb" resolve="DemoTypeclasses" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1jxXqW" id="47tET_XohmB" role="37wK5m" />
                  </node>
                  <node concept="liA8E" id="73aHuggheTU" role="2OqNvi">
                    <ref role="37wK5l" to="tj24:4ZGicUYVP43" resolve="customMatcher" />
                    <node concept="1bVj0M" id="73aHuggheTV" role="37wK5m">
                      <node concept="3clFbS" id="73aHuggheTW" role="1bW5cS">
                        <node concept="3clFbF" id="73aHuggheTX" role="3cqZAp">
                          <node concept="2OqwBi" id="73aHuggheTY" role="3clFbG">
                            <node concept="2WthIp" id="73aHuggheTZ" role="2Oq$k0" />
                            <node concept="2XshWL" id="73aHuggheU0" role="2OqNvi">
                              <ref role="2WH_rO" node="4ZGicUYXn0k" resolve="customMatcher" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="47tET_XohmD" role="2OqNvi">
                  <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbT" id="1QFIy$K7Qoi" role="3clFbw" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="47tET_XoiCv" role="1SL9yI">
      <property role="TrG5h" value="DemoConstraints" />
      <node concept="3cqZAl" id="47tET_XoiCw" role="3clF45" />
      <node concept="3clFbS" id="47tET_XoiCx" role="3clF47">
        <node concept="3SKdUt" id="1QFIy$K7Nu2" role="3cqZAp">
          <node concept="1PaTwC" id="1QFIy$K7Nu3" role="3ndbpf">
            <node concept="3oM_SD" id="1QFIy$K7Nu5" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="1QFIy$K7NuZ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1QFIy$K7Nv2" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="1QFIy$K7Nv6" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1QFIy$K7Nvb" role="1PaTwD">
              <property role="3oM_SC" value="ignored" />
            </node>
          </node>
        </node>
        <node concept="RRSsy" id="2rIdnPuCRgJ" role="3cqZAp">
          <property role="RRSoG" value="gZ5fksE/warn" />
          <node concept="Xl_RD" id="2rIdnPuCRgL" role="RRSoy">
            <property role="Xl_RC" value="Test is ignored" />
          </node>
        </node>
        <node concept="3clFbJ" id="1QFIy$K7PSg" role="3cqZAp">
          <node concept="3clFbS" id="1QFIy$K7PSi" role="3clFbx">
            <node concept="2Hmddi" id="47tET_XoiCy" role="3cqZAp">
              <node concept="2OqwBi" id="47tET_XoiCz" role="2Hmdds">
                <node concept="2OqwBi" id="47tET_XoiC$" role="2Oq$k0">
                  <node concept="2YIFZM" id="47tET_XoiC_" role="2Oq$k0">
                    <ref role="37wK5l" to="tj24:27bTNFfaOo$" resolve="ofNode" />
                    <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TypecheckingTestHelper" />
                    <node concept="2OqwBi" id="47tET_XoiCA" role="37wK5m">
                      <node concept="2WthIp" id="47tET_XoiCB" role="2Oq$k0" />
                      <node concept="2XshWL" id="47tET_XoiCC" role="2OqNvi">
                        <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                        <node concept="2tJFMh" id="47tET_XoiCD" role="2XxRq1">
                          <node concept="ZC_QK" id="47tET_Xoj9p" role="2tJFKM">
                            <ref role="2aWVGs" to="ysck:2O9ahh6x9Cb" resolve="DemoConstraints" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1jxXqW" id="47tET_XoiCF" role="37wK5m" />
                  </node>
                  <node concept="liA8E" id="73aHugghosD" role="2OqNvi">
                    <ref role="37wK5l" to="tj24:4ZGicUYVP43" resolve="customMatcher" />
                    <node concept="1bVj0M" id="73aHugghosE" role="37wK5m">
                      <node concept="3clFbS" id="73aHugghosF" role="1bW5cS">
                        <node concept="3clFbF" id="73aHugghosG" role="3cqZAp">
                          <node concept="2OqwBi" id="73aHugghosH" role="3clFbG">
                            <node concept="2WthIp" id="73aHugghosI" role="2Oq$k0" />
                            <node concept="2XshWL" id="73aHugghosJ" role="2OqNvi">
                              <ref role="2WH_rO" node="4ZGicUYXn0k" resolve="customMatcher" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="47tET_XoiCH" role="2OqNvi">
                  <ref role="37wK5l" to="tj24:27bTNFfaYS2" resolve="checkTypes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbT" id="1QFIy$K7PUC" role="3clFbw" />
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
        <ref role="ehGHo" to="8tt8:7_8aRkgDGQC" resolve="Doc" />
      </node>
      <node concept="3clFbS" id="35YJGAJTxCh" role="3clF47">
        <node concept="3cpWs8" id="35YJGAJT$34" role="3cqZAp">
          <node concept="3cpWsn" id="35YJGAJT$35" role="3cpWs9">
            <property role="TrG5h" value="cls" />
            <node concept="3Tqbb2" id="35YJGAJT$2Z" role="1tU5fm">
              <ref role="ehGHo" to="8tt8:7_8aRkgDGQC" resolve="Doc" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="35YJGAJTxLm" role="3cqZAp">
          <node concept="1QHqEC" id="35YJGAJTxLn" role="1QHqEI">
            <node concept="3clFbS" id="35YJGAJTxLo" role="1bW5cS">
              <node concept="3clFbF" id="35YJGAJT$eE" role="3cqZAp">
                <node concept="37vLTI" id="35YJGAJT$eG" role="3clFbG">
                  <node concept="1PxgMI" id="35YJGAJT$36" role="37vLTx">
                    <node concept="chp4Y" id="6EwjVjWv0_k" role="3oSUPX">
                      <ref role="cht4Q" to="8tt8:7_8aRkgDGQC" resolve="Doc" />
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
    <node concept="2XrIbr" id="4ZGicUYXn0k" role="1qtyYc">
      <property role="TrG5h" value="customMatcher" />
      <node concept="3uibUv" id="4ZGicUYXn8R" role="3clF45">
        <ref role="3uigEE" to="tj24:4ZGicUYVz9J" resolve="TypecheckingTestHelper.CustomMatcher" />
      </node>
      <node concept="3clFbS" id="4ZGicUYXn0m" role="3clF47">
        <node concept="3SKdUt" id="4ZGicUYXqIW" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYyJo" role="3ndbpf">
            <node concept="3oM_SD" id="589APehYyJp" role="1PaTwD">
              <property role="3oM_SC" value="ensure" />
            </node>
            <node concept="3oM_SD" id="589APehYyJq" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="589APehYyJr" role="1PaTwD">
              <property role="3oM_SC" value="vars" />
            </node>
            <node concept="3oM_SD" id="589APehYyJs" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="589APehYyJt" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="589APehYyJu" role="1PaTwD">
              <property role="3oM_SC" value="renamed" />
            </node>
            <node concept="3oM_SD" id="589APehYyJv" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="589APehYyJw" role="1PaTwD">
              <property role="3oM_SC" value="corresponding" />
            </node>
            <node concept="3oM_SD" id="589APehYyJx" role="1PaTwD">
              <property role="3oM_SC" value="refs" />
            </node>
            <node concept="3oM_SD" id="589APehYyJy" role="1PaTwD">
              <property role="3oM_SC" value="match" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4ZGicUYXnuf" role="3cqZAp">
          <node concept="2ShNRf" id="4ZGicUYXnud" role="3clFbG">
            <node concept="YeOm9" id="4ZGicUYXnBR" role="2ShVmc">
              <node concept="1Y3b0j" id="4ZGicUYXnBU" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="tj24:4ZGicUYVz9J" resolve="TypecheckingTestHelper.CustomMatcher" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="312cEg" id="4ZGicUYXsNi" role="jymVt">
                  <property role="TrG5h" value="typeNames" />
                  <node concept="3Tm6S6" id="4ZGicUYXsNj" role="1B3o_S" />
                  <node concept="3rvAFt" id="4ZGicUYXsRG" role="1tU5fm">
                    <node concept="17QB3L" id="4ZGicUYZr5z" role="3rvQeY" />
                    <node concept="17QB3L" id="4ZGicUYZrnM" role="3rvSg0" />
                  </node>
                  <node concept="2ShNRf" id="4ZGicUYXtE7" role="33vP2m">
                    <node concept="3rGOSV" id="4ZGicUYXtgO" role="2ShVmc">
                      <node concept="17QB3L" id="4ZGicUYZs45" role="3rHrn6" />
                      <node concept="17QB3L" id="4ZGicUYZsqr" role="3rHtpV" />
                    </node>
                  </node>
                </node>
                <node concept="3Tm1VV" id="4ZGicUYXnBV" role="1B3o_S" />
                <node concept="3clFb_" id="4ZGicUYXnBX" role="jymVt">
                  <property role="TrG5h" value="matching" />
                  <node concept="37vLTG" id="4ZGicUYXnBY" role="3clF46">
                    <property role="TrG5h" value="a" />
                    <node concept="3Tqbb2" id="4ZGicUYXnBZ" role="1tU5fm" />
                  </node>
                  <node concept="37vLTG" id="4ZGicUYXnC0" role="3clF46">
                    <property role="TrG5h" value="b" />
                    <node concept="3Tqbb2" id="4ZGicUYXnC1" role="1tU5fm" />
                  </node>
                  <node concept="10P_77" id="4ZGicUYXnC2" role="3clF45" />
                  <node concept="3Tm1VV" id="4ZGicUYXnC3" role="1B3o_S" />
                  <node concept="3clFbS" id="4ZGicUYXnCc" role="3clF47">
                    <node concept="3clFbH" id="4ZGicUZ0_cQ" role="3cqZAp" />
                    <node concept="3clFbJ" id="4ZGicUYXtHn" role="3cqZAp">
                      <node concept="3clFbS" id="4ZGicUYXtHp" role="3clFbx">
                        <node concept="3clFbJ" id="4ZGicUYXx8e" role="3cqZAp">
                          <node concept="3clFbS" id="4ZGicUYXx8g" role="3clFbx">
                            <node concept="3clFbJ" id="4ZGicUYXHMq" role="3cqZAp">
                              <node concept="3clFbS" id="4ZGicUYXHMs" role="3clFbx">
                                <node concept="3clFbH" id="4ZGicUZ0p_t" role="3cqZAp" />
                                <node concept="YS8fn" id="4ZGicUYXXmh" role="3cqZAp">
                                  <node concept="2ShNRf" id="4ZGicUYXYar" role="YScLw">
                                    <node concept="1pGfFk" id="4ZGicUYXYgP" role="2ShVmc">
                                      <ref role="37wK5l" to="tj24:4ZGicUYXVqN" resolve="TypecheckingTestHelper.CustomMatchException" />
                                      <node concept="3cpWs3" id="4ZGicUZ2pEX" role="37wK5m">
                                        <node concept="37vLTw" id="4ZGicUZ2pPs" role="3uHU7w">
                                          <ref role="3cqZAo" node="4ZGicUYXnC0" resolve="b" />
                                        </node>
                                        <node concept="3cpWs3" id="4ZGicUZ2oSA" role="3uHU7B">
                                          <node concept="3cpWs3" id="4ZGicUZ2nHl" role="3uHU7B">
                                            <node concept="Xl_RD" id="4ZGicUYXYk1" role="3uHU7B">
                                              <property role="Xl_RC" value="mismatched VarType: " />
                                            </node>
                                            <node concept="37vLTw" id="4ZGicUZ2owa" role="3uHU7w">
                                              <ref role="3cqZAo" node="4ZGicUYXnBY" resolve="a" />
                                            </node>
                                          </node>
                                          <node concept="Xl_RD" id="4ZGicUZ2p2R" role="3uHU7w">
                                            <property role="Xl_RC" value=" and " />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3fqX7Q" id="4ZGicUYXIjU" role="3clFbw">
                                <node concept="1eOMI4" id="4ZGicUYXIjW" role="3fr31v">
                                  <node concept="17R0WA" id="4ZGicUZ0mYr" role="1eOMHV">
                                    <node concept="2OqwBi" id="4ZGicUZ0fzw" role="3uHU7B">
                                      <node concept="1PxgMI" id="4ZGicUZ0eih" role="2Oq$k0">
                                        <property role="1BlNFB" value="true" />
                                        <node concept="chp4Y" id="4ZGicUZ0fkR" role="3oSUPX">
                                          <ref role="cht4Q" to="8tt8:3g9UT2j9I06" resolve="VarType" />
                                        </node>
                                        <node concept="37vLTw" id="4ZGicUYXIkD" role="1m5AlR">
                                          <ref role="3cqZAo" node="4ZGicUYXnC0" resolve="b" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="4ZGicUZ0gPq" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                    <node concept="3EllGN" id="4ZGicUYXKhx" role="3uHU7w">
                                      <node concept="2OqwBi" id="4ZGicUZ0cAs" role="3ElVtu">
                                        <node concept="1PxgMI" id="4ZGicUZ0bo6" role="2Oq$k0">
                                          <property role="1BlNFB" value="true" />
                                          <node concept="chp4Y" id="4ZGicUZ0co9" role="3oSUPX">
                                            <ref role="cht4Q" to="8tt8:3g9UT2j9I06" resolve="VarType" />
                                          </node>
                                          <node concept="37vLTw" id="4ZGicUYXKGs" role="1m5AlR">
                                            <ref role="3cqZAo" node="4ZGicUYXnBY" resolve="a" />
                                          </node>
                                        </node>
                                        <node concept="3TrcHB" id="4ZGicUZ0dZH" role="2OqNvi">
                                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="4ZGicUYXJTU" role="3ElQJh">
                                        <ref role="3cqZAo" node="4ZGicUYXsNi" resolve="typeNames" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="4ZGicUYYvcx" role="3cqZAp" />
                          </node>
                          <node concept="2OqwBi" id="4ZGicUYXx$q" role="3clFbw">
                            <node concept="37vLTw" id="4ZGicUYXx9f" role="2Oq$k0">
                              <ref role="3cqZAo" node="4ZGicUYXsNi" resolve="typeNames" />
                            </node>
                            <node concept="2Nt0df" id="4ZGicUYXAWL" role="2OqNvi">
                              <node concept="2OqwBi" id="4ZGicUZ09OZ" role="38cxEo">
                                <node concept="1PxgMI" id="4ZGicUZ08Lz" role="2Oq$k0">
                                  <property role="1BlNFB" value="true" />
                                  <node concept="chp4Y" id="4ZGicUZ09F3" role="3oSUPX">
                                    <ref role="cht4Q" to="8tt8:3g9UT2j9I06" resolve="VarType" />
                                  </node>
                                  <node concept="37vLTw" id="4ZGicUYXAYX" role="1m5AlR">
                                    <ref role="3cqZAo" node="4ZGicUYXnBY" resolve="a" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="4ZGicUZ0b9T" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="9aQIb" id="4ZGicUYYw6c" role="9aQIa">
                            <node concept="3clFbS" id="4ZGicUYYw6d" role="9aQI4">
                              <node concept="3clFbF" id="4ZGicUYYwOQ" role="3cqZAp">
                                <node concept="37vLTI" id="4ZGicUYYxhX" role="3clFbG">
                                  <node concept="2OqwBi" id="4ZGicUZ0uvC" role="37vLTx">
                                    <node concept="1PxgMI" id="4ZGicUZ0toj" role="2Oq$k0">
                                      <property role="1BlNFB" value="true" />
                                      <node concept="chp4Y" id="4ZGicUZ0uls" role="3oSUPX">
                                        <ref role="cht4Q" to="8tt8:3g9UT2j9I06" resolve="VarType" />
                                      </node>
                                      <node concept="37vLTw" id="4ZGicUYYxkb" role="1m5AlR">
                                        <ref role="3cqZAo" node="4ZGicUYXnC0" resolve="b" />
                                      </node>
                                    </node>
                                    <node concept="3TrcHB" id="4ZGicUZ0vQE" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                  <node concept="3EllGN" id="4ZGicUYYx8b" role="37vLTJ">
                                    <node concept="2OqwBi" id="4ZGicUZ0rJW" role="3ElVtu">
                                      <node concept="1PxgMI" id="4ZGicUZ0qAX" role="2Oq$k0">
                                        <property role="1BlNFB" value="true" />
                                        <node concept="chp4Y" id="4ZGicUZ0r$$" role="3oSUPX">
                                          <ref role="cht4Q" to="8tt8:3g9UT2j9I06" resolve="VarType" />
                                        </node>
                                        <node concept="37vLTw" id="4ZGicUYYx8H" role="1m5AlR">
                                          <ref role="3cqZAo" node="4ZGicUYXnBY" resolve="a" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="4ZGicUZ0t6o" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="4ZGicUYYwOP" role="3ElQJh">
                                      <ref role="3cqZAo" node="4ZGicUYXsNi" resolve="typeNames" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="4ZGicUZ0DXQ" role="3cqZAp" />
                        <node concept="3cpWs6" id="4ZGicUYYzmm" role="3cqZAp">
                          <node concept="3clFbT" id="4ZGicUYYz$7" role="3cqZAk">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                      <node concept="1Wc70l" id="4ZGicUYXvn$" role="3clFbw">
                        <node concept="2OqwBi" id="4ZGicUYXvCt" role="3uHU7w">
                          <node concept="37vLTw" id="4ZGicUYXvvc" role="2Oq$k0">
                            <ref role="3cqZAo" node="4ZGicUYXnC0" resolve="b" />
                          </node>
                          <node concept="1mIQ4w" id="4ZGicUYXwwj" role="2OqNvi">
                            <node concept="chp4Y" id="4ZGicUYXw_1" role="cj9EA">
                              <ref role="cht4Q" to="8tt8:3g9UT2j9I06" resolve="VarType" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4ZGicUYXugU" role="3uHU7B">
                          <node concept="37vLTw" id="4ZGicUYXu7w" role="2Oq$k0">
                            <ref role="3cqZAo" node="4ZGicUYXnBY" resolve="a" />
                          </node>
                          <node concept="1mIQ4w" id="4ZGicUYXv3m" role="2OqNvi">
                            <node concept="chp4Y" id="4ZGicUYXv5d" role="cj9EA">
                              <ref role="cht4Q" to="8tt8:3g9UT2j9I06" resolve="VarType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="4ZGicUYXtGQ" role="3cqZAp" />
                    <node concept="3cpWs6" id="4ZGicUYZ04k" role="3cqZAp">
                      <node concept="3clFbT" id="4ZGicUYZ04l" role="3cqZAk" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4ZGicUYXn8N" role="1B3o_S" />
    </node>
  </node>
</model>

