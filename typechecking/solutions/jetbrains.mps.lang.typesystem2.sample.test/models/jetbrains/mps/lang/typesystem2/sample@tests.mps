<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:dfdbef38-4e11-48e8-9622-22e284fc6feb(jetbrains.mps.lang.typesystem2.sample@tests)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="4" />
  </languages>
  <imports>
    <import index="t5kh" ref="r:1514c681-0724-461e-a435-315a6af4b3b4(jetbrains.mps.lang.typesystem2.sampleplugin.plugin)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
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
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="1N_0WA5JxZO">
    <property role="TrG5h" value="LaunchTypechecking" />
    <node concept="2tJIrI" id="1N_0WA5Jy0e" role="jymVt" />
    <node concept="2YIFZL" id="1N_0WA5Jy0j" role="jymVt">
      <property role="TrG5h" value="typecheckingErrors" />
      <node concept="37vLTG" id="1N_0WA5IKi9" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="1N_0WA5IKpS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1N_0WA5Jqq8" role="3clF46">
        <property role="TrG5h" value="prj" />
        <node concept="3uibUv" id="1N_0WA5JqJ0" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="17QB3L" id="1N_0WA5Jypk" role="3clF45" />
      <node concept="3Tm1VV" id="1N_0WA5Jy0m" role="1B3o_S" />
      <node concept="3clFbS" id="1N_0WA5Jy0n" role="3clF47">
        <node concept="3cpWs8" id="1N_0WA5IICh" role="3cqZAp">
          <node concept="3cpWsn" id="1N_0WA5IICk" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <property role="3TUv4t" value="true" />
            <node concept="10Q1$e" id="1N_0WA5IJaH" role="1tU5fm">
              <node concept="17QB3L" id="1N_0WA5IICf" role="10Q1$1" />
            </node>
            <node concept="2BsdOp" id="1N_0WA5IJbE" role="33vP2m">
              <node concept="10Nm6u" id="1N_0WA5IJhy" role="2BsfMF" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1N_0WA5IHu6" role="3cqZAp" />
        <node concept="3cpWs8" id="1pPth$lNMX3" role="3cqZAp">
          <node concept="3cpWsn" id="1pPth$lNMX4" role="3cpWs9">
            <property role="TrG5h" value="helper" />
            <node concept="3uibUv" id="1pPth$lNMX2" role="1tU5fm">
              <ref role="3uigEE" to="t5kh:1pPth$l_TFV" resolve="TypecheckingHelper" />
            </node>
            <node concept="2ShNRf" id="1pPth$lNMX5" role="33vP2m">
              <node concept="YeOm9" id="1pPth$lNMX6" role="2ShVmc">
                <node concept="1Y3b0j" id="1pPth$lNMX7" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="t5kh:1pPth$l_TFV" resolve="TypecheckingHelper" />
                  <ref role="37wK5l" to="t5kh:1pPth$lK1ZL" resolve="TypecheckingHelper" />
                  <node concept="3Tm1VV" id="1pPth$lNMXb" role="1B3o_S" />
                  <node concept="3clFb_" id="1pPth$lNMXc" role="jymVt">
                    <property role="TrG5h" value="finished" />
                    <property role="1EzhhJ" value="false" />
                    <property role="IEkAT" value="false" />
                    <node concept="37vLTG" id="1pPth$lNMXd" role="3clF46">
                      <property role="TrG5h" value="message" />
                      <node concept="17QB3L" id="1pPth$lNMXe" role="1tU5fm" />
                    </node>
                    <node concept="3cqZAl" id="1pPth$lNMXf" role="3clF45" />
                    <node concept="3Tm1VV" id="1pPth$lNMXg" role="1B3o_S" />
                    <node concept="3clFbS" id="1pPth$lNMXh" role="3clF47" />
                  </node>
                  <node concept="3clFb_" id="1pPth$lNMXi" role="jymVt">
                    <property role="TrG5h" value="failed" />
                    <property role="1EzhhJ" value="false" />
                    <node concept="37vLTG" id="1pPth$lNMXj" role="3clF46">
                      <property role="TrG5h" value="message" />
                      <node concept="17QB3L" id="1pPth$lNMXk" role="1tU5fm" />
                    </node>
                    <node concept="3cqZAl" id="1pPth$lNMXl" role="3clF45" />
                    <node concept="3Tm1VV" id="1pPth$lNMXm" role="1B3o_S" />
                    <node concept="3clFbS" id="1pPth$lNMXn" role="3clF47">
                      <node concept="3clFbF" id="1N_0WA5IIXc" role="3cqZAp">
                        <node concept="37vLTI" id="1N_0WA5IJ4p" role="3clFbG">
                          <node concept="37vLTw" id="1N_0WA5IJwr" role="37vLTx">
                            <ref role="3cqZAo" node="1pPth$lNMXj" resolve="message" />
                          </node>
                          <node concept="AH0OO" id="1N_0WA5IJlP" role="37vLTJ">
                            <node concept="3cmrfG" id="1N_0WA5IJoA" role="AHEQo">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="37vLTw" id="1N_0WA5IIXa" role="AHHXb">
                              <ref role="3cqZAo" node="1N_0WA5IICk" resolve="errors" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="1N_0WA5JrWv" role="37wK5m">
                    <node concept="37vLTw" id="1N_0WA5Jsmm" role="10QFUP">
                      <ref role="3cqZAo" node="1N_0WA5Jqq8" resolve="prj" />
                    </node>
                    <node concept="3uibUv" id="1N_0WA5Jsc8" role="10QFUM">
                      <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1N_0WA5E0sj" role="3cqZAp" />
        <node concept="3clFbF" id="1pPth$lN9Sg" role="3cqZAp">
          <node concept="2OqwBi" id="1pPth$lNNLl" role="3clFbG">
            <node concept="37vLTw" id="1pPth$lNMXo" role="2Oq$k0">
              <ref role="3cqZAo" node="1pPth$lNMX4" resolve="helper" />
            </node>
            <node concept="liA8E" id="1pPth$lNNUb" role="2OqNvi">
              <ref role="37wK5l" to="t5kh:1pPth$lNtBJ" resolve="withSteps" />
              <node concept="2OqwBi" id="1pPth$lNO07" role="37wK5m">
                <node concept="37vLTw" id="1pPth$lNNYn" role="2Oq$k0">
                  <ref role="3cqZAo" node="1pPth$lNMX4" resolve="helper" />
                </node>
                <node concept="liA8E" id="1pPth$lNO5j" role="2OqNvi">
                  <ref role="37wK5l" to="t5kh:1pPth$lBvOo" resolve="collectRules" />
                  <node concept="2YIFZM" id="1pPth$lNOu_" role="37wK5m">
                    <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                    <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                    <node concept="37vLTw" id="1N_0WA5ILeF" role="37wK5m">
                      <ref role="3cqZAo" node="1N_0WA5IKi9" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1pPth$lNQc0" role="37wK5m">
                <node concept="37vLTw" id="1pPth$lNQ6_" role="2Oq$k0">
                  <ref role="3cqZAo" node="1pPth$lNMX4" resolve="helper" />
                </node>
                <node concept="liA8E" id="1pPth$lNQpZ" role="2OqNvi">
                  <ref role="37wK5l" to="t5kh:1pPth$lDhou" resolve="runTypechecking" />
                  <node concept="2YIFZM" id="1pPth$lNQAI" role="37wK5m">
                    <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                    <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                    <node concept="37vLTw" id="1N_0WA5ILn_" role="37wK5m">
                      <ref role="3cqZAo" node="1N_0WA5IKi9" resolve="root" />
                    </node>
                  </node>
                  <node concept="3clFbT" id="6OUp3PsW9eS" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                  <node concept="3clFbT" id="1N_0WA5HTzS" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1pPth$lO8Nq" role="3cqZAp">
          <node concept="2OqwBi" id="1pPth$lO8WY" role="3clFbG">
            <node concept="37vLTw" id="1pPth$lO8No" role="2Oq$k0">
              <ref role="3cqZAo" node="1pPth$lNMX4" resolve="helper" />
            </node>
            <node concept="liA8E" id="1pPth$lO9dC" role="2OqNvi">
              <ref role="37wK5l" to="t5kh:1pPth$lNVW2" resolve="execute" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1N_0WA5IKrd" role="3cqZAp" />
        <node concept="3clFbF" id="1N_0WA5IKaz" role="3cqZAp">
          <node concept="AH0OO" id="1N_0WA5IKfm" role="3clFbG">
            <node concept="3cmrfG" id="1N_0WA5IKfT" role="AHEQo">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="1N_0WA5IKax" role="AHHXb">
              <ref role="3cqZAo" node="1N_0WA5IICk" resolve="errors" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1N_0WA5Jy0_" role="jymVt" />
    <node concept="3Tm1VV" id="1N_0WA5JxZP" role="1B3o_S" />
  </node>
</model>

