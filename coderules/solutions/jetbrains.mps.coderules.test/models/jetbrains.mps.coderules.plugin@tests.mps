<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:06d67375-00a3-4eaf-9299-622ca6878fe0(jetbrains.mps.coderules.plugin@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="31yc" ref="r:0c18ff61-1cb9-4ff0-a899-c949ad03f97c(jetbrains.mps.coderules.plugin)" />
    <import index="m7o5" ref="r:835f8ea3-a800-4588-a80b-1de6d47c2098(jetbrains.mps.coderules.ideaplugin)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171931690126" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" flags="ig" index="3s$Bmu">
        <property id="1171931690128" name="methodName" index="3s$Bm0" />
      </concept>
      <concept id="1171931851043" name="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" flags="ig" index="3s_ewN">
        <property id="1171931851045" name="testCaseName" index="3s_ewP" />
        <child id="1171931851044" name="testMethodList" index="3s_ewO" />
        <child id="8243879142738613220" name="afterTest" index="1KhZu3" />
        <child id="8243879142738613219" name="beforeTest" index="1KhZu4" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
      <concept id="1172028177041" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNull" flags="nn" index="3ykFI1">
        <child id="1172028236559" name="expression" index="3ykU8v" />
      </concept>
      <concept id="8243879142738608185" name="jetbrains.mps.baseLanguage.unitTest.structure.BeforeTest" flags="in" index="1KhYhu" />
      <concept id="8243879142738613213" name="jetbrains.mps.baseLanguage.unitTest.structure.AfterTest" flags="in" index="1KhZuU" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3s_ewN" id="7iCybvTtZhR">
    <property role="3s_ewP" value="Options" />
    <node concept="2tJIrI" id="6hpwxwiHMWS" role="jymVt" />
    <node concept="312cEg" id="6hpwxwiHN82" role="jymVt">
      <property role="TrG5h" value="config" />
      <node concept="3Tm6S6" id="6hpwxwiHN83" role="1B3o_S" />
      <node concept="3uibUv" id="6hpwxwiHNaT" role="1tU5fm">
        <ref role="3uigEE" to="m7o5:7iCybvToiT5" resolve="Config" />
      </node>
      <node concept="2YIFZM" id="2CPBoDBWNuY" role="33vP2m">
        <ref role="37wK5l" to="m7o5:6hpwxwiHYr2" resolve="create" />
        <ref role="1Pybhc" to="m7o5:7iCybvToiT5" resolve="Config" />
      </node>
    </node>
    <node concept="3Tm1VV" id="7iCybvTtZhS" role="1B3o_S" />
    <node concept="3s_gsd" id="7iCybvTtZhT" role="3s_ewO">
      <node concept="3s$Bmu" id="7iCybvTtZkQ" role="3s_gse">
        <property role="3s$Bm0" value="defaultOptions" />
        <node concept="3cqZAl" id="7iCybvTtZkR" role="3clF45" />
        <node concept="3Tm1VV" id="7iCybvTtZkS" role="1B3o_S" />
        <node concept="3clFbS" id="7iCybvTtZkT" role="3clF47">
          <node concept="3clFbF" id="7iCybvTuN5t" role="3cqZAp">
            <node concept="2OqwBi" id="7iCybvTuN9B" role="3clFbG">
              <node concept="37vLTw" id="6hpwxwiIbQi" role="2Oq$k0">
                <ref role="3cqZAo" node="6hpwxwiHN82" resolve="config" />
              </node>
              <node concept="liA8E" id="7iCybvTuNei" role="2OqNvi">
                <ref role="37wK5l" to="m7o5:7iCybvTszk9" resolve="registerProvider" />
                <node concept="Rm8GO" id="7iCybvTuNiA" role="37wK5m">
                  <ref role="Rm8GQ" to="m7o5:7iCybvToDv4" resolve="DEFAULT" />
                  <ref role="1Px2BO" to="m7o5:7iCybvToD3Z" resolve="Config.Level" />
                </node>
                <node concept="Xl_RD" id="7iCybvTuNA8" role="37wK5m">
                  <property role="Xl_RC" value="a.b." />
                </node>
                <node concept="1bVj0M" id="7iCybvTuNpt" role="37wK5m">
                  <node concept="37vLTG" id="7iCybvTuNSj" role="1bW2Oz">
                    <property role="TrG5h" value="key" />
                    <node concept="17QB3L" id="7iCybvTuO3B" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="7iCybvTuNpv" role="1bW5cS">
                    <node concept="3clFbJ" id="7iCybvTuPEl" role="3cqZAp">
                      <node concept="3clFbS" id="7iCybvTuPEn" role="3clFbx">
                        <node concept="3cpWs6" id="7iCybvTuQ8J" role="3cqZAp">
                          <node concept="Xl_RD" id="7iCybvTuQdl" role="3cqZAk">
                            <property role="Xl_RC" value="foo" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="7iCybvTuPZJ" role="3clFbw">
                        <node concept="37vLTw" id="7iCybvTuQ4f" role="3uHU7w">
                          <ref role="3cqZAo" node="7iCybvTuNSj" resolve="key" />
                        </node>
                        <node concept="Xl_RD" id="7iCybvTuPIN" role="3uHU7B">
                          <property role="Xl_RC" value="a.b.c" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7iCybvTuQG3" role="3cqZAp">
                      <node concept="10Nm6u" id="7iCybvTuQG1" role="3clFbG" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7iCybvTuN42" role="3cqZAp" />
          <node concept="3vlDli" id="7iCybvTwv5l" role="3cqZAp">
            <node concept="Xl_RD" id="7iCybvTwvgo" role="3tpDZB">
              <property role="Xl_RC" value="foo" />
            </node>
            <node concept="2OqwBi" id="7iCybvTwvqW" role="3tpDZA">
              <node concept="37vLTw" id="6hpwxwiIbTF" role="2Oq$k0">
                <ref role="3cqZAo" node="6hpwxwiHN82" resolve="config" />
              </node>
              <node concept="liA8E" id="7iCybvTwvqY" role="2OqNvi">
                <ref role="37wK5l" to="m7o5:7iCybvToiWV" resolve="getOption" />
                <node concept="Xl_RD" id="7iCybvTwvqZ" role="37wK5m">
                  <property role="Xl_RC" value="a.b.c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3ykFI1" id="7iCybvTwvMo" role="3cqZAp">
            <node concept="2OqwBi" id="7iCybvTu0uX" role="3ykU8v">
              <node concept="37vLTw" id="6hpwxwiIc0C" role="2Oq$k0">
                <ref role="3cqZAo" node="6hpwxwiHN82" resolve="config" />
              </node>
              <node concept="liA8E" id="7iCybvTu0uZ" role="2OqNvi">
                <ref role="37wK5l" to="m7o5:7iCybvToiWV" resolve="getOption" />
                <node concept="Xl_RD" id="7iCybvTuQrv" role="37wK5m">
                  <property role="Xl_RC" value="a.b.d" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3ykFI1" id="7iCybvTwyqE" role="3cqZAp">
            <node concept="2OqwBi" id="7iCybvTwyqF" role="3ykU8v">
              <node concept="37vLTw" id="6hpwxwiIc2G" role="2Oq$k0">
                <ref role="3cqZAo" node="6hpwxwiHN82" resolve="config" />
              </node>
              <node concept="liA8E" id="7iCybvTwyqH" role="2OqNvi">
                <ref role="37wK5l" to="m7o5:7iCybvToiWV" resolve="getOption" />
                <node concept="Xl_RD" id="7iCybvTwyqI" role="37wK5m">
                  <property role="Xl_RC" value="a.e" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7iCybvTw$7E" role="3s_gse">
        <property role="3s$Bm0" value="systemOptions" />
        <node concept="3cqZAl" id="7iCybvTw$7F" role="3clF45" />
        <node concept="3Tm1VV" id="7iCybvTw$7G" role="1B3o_S" />
        <node concept="3clFbS" id="7iCybvTw$7H" role="3clF47">
          <node concept="3clFbF" id="7iCybvTw$7I" role="3cqZAp">
            <node concept="2OqwBi" id="7iCybvTw$7J" role="3clFbG">
              <node concept="37vLTw" id="6hpwxwiIc9v" role="2Oq$k0">
                <ref role="3cqZAo" node="6hpwxwiHN82" resolve="config" />
              </node>
              <node concept="liA8E" id="7iCybvTw$7L" role="2OqNvi">
                <ref role="37wK5l" to="m7o5:7iCybvTszk9" resolve="registerProvider" />
                <node concept="Rm8GO" id="7iCybvTw$7M" role="37wK5m">
                  <ref role="Rm8GQ" to="m7o5:7iCybvToDv4" resolve="DEFAULT" />
                  <ref role="1Px2BO" to="m7o5:7iCybvToD3Z" resolve="Config.Level" />
                </node>
                <node concept="Xl_RD" id="7iCybvTw$7N" role="37wK5m">
                  <property role="Xl_RC" value="a.b." />
                </node>
                <node concept="1bVj0M" id="7iCybvTw$7O" role="37wK5m">
                  <node concept="37vLTG" id="7iCybvTw$7P" role="1bW2Oz">
                    <property role="TrG5h" value="key" />
                    <node concept="17QB3L" id="7iCybvTw$7Q" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="7iCybvTw$7R" role="1bW5cS">
                    <node concept="3clFbJ" id="7iCybvTw$7S" role="3cqZAp">
                      <node concept="3clFbS" id="7iCybvTw$7T" role="3clFbx">
                        <node concept="3cpWs6" id="7iCybvTw$7U" role="3cqZAp">
                          <node concept="Xl_RD" id="7iCybvTw$7V" role="3cqZAk">
                            <property role="Xl_RC" value="foo" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="7iCybvTw$7W" role="3clFbw">
                        <node concept="37vLTw" id="7iCybvTw$7X" role="3uHU7w">
                          <ref role="3cqZAo" node="7iCybvTw$7P" resolve="key" />
                        </node>
                        <node concept="Xl_RD" id="7iCybvTw$7Y" role="3uHU7B">
                          <property role="Xl_RC" value="a.b.c" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7iCybvTw$7Z" role="3cqZAp">
                      <node concept="10Nm6u" id="7iCybvTw$80" role="3clFbG" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7iCybvTwD5t" role="3cqZAp" />
          <node concept="3ykFI1" id="7iCybvTwCSA" role="3cqZAp">
            <node concept="2OqwBi" id="7iCybvTwCSB" role="3ykU8v">
              <node concept="37vLTw" id="6hpwxwiIcf3" role="2Oq$k0">
                <ref role="3cqZAo" node="6hpwxwiHN82" resolve="config" />
              </node>
              <node concept="liA8E" id="7iCybvTwCSD" role="2OqNvi">
                <ref role="37wK5l" to="m7o5:7iCybvToiWV" resolve="getOption" />
                <node concept="Xl_RD" id="7iCybvTwCSE" role="37wK5m">
                  <property role="Xl_RC" value="a.b.d.e" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7iCybvTwCCP" role="3cqZAp" />
          <node concept="3clFbF" id="7iCybvTw$yQ" role="3cqZAp">
            <node concept="2OqwBi" id="7iCybvTw$yR" role="3clFbG">
              <node concept="37vLTw" id="6hpwxwiIcg_" role="2Oq$k0">
                <ref role="3cqZAo" node="6hpwxwiHN82" resolve="config" />
              </node>
              <node concept="liA8E" id="7iCybvTw$yT" role="2OqNvi">
                <ref role="37wK5l" to="m7o5:7iCybvTszk9" resolve="registerProvider" />
                <node concept="Rm8GO" id="7iCybvTw$Ko" role="37wK5m">
                  <ref role="Rm8GQ" to="m7o5:7iCybvToFr9" resolve="SYSTEM" />
                  <ref role="1Px2BO" to="m7o5:7iCybvToD3Z" resolve="Config.Level" />
                </node>
                <node concept="Xl_RD" id="7iCybvTw$yV" role="37wK5m">
                  <property role="Xl_RC" value="a.b.d." />
                </node>
                <node concept="1bVj0M" id="7iCybvTw$yW" role="37wK5m">
                  <node concept="37vLTG" id="7iCybvTw$yX" role="1bW2Oz">
                    <property role="TrG5h" value="key" />
                    <node concept="17QB3L" id="7iCybvTw$yY" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="7iCybvTw$yZ" role="1bW5cS">
                    <node concept="3clFbJ" id="7iCybvTw$z0" role="3cqZAp">
                      <node concept="3clFbS" id="7iCybvTw$z1" role="3clFbx">
                        <node concept="3cpWs6" id="7iCybvTw$z2" role="3cqZAp">
                          <node concept="Xl_RD" id="7iCybvTw$z3" role="3cqZAk">
                            <property role="Xl_RC" value="bar" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="7iCybvTw$z4" role="3clFbw">
                        <node concept="37vLTw" id="7iCybvTw$z5" role="3uHU7w">
                          <ref role="3cqZAo" node="7iCybvTw$yX" resolve="key" />
                        </node>
                        <node concept="Xl_RD" id="7iCybvTw$z6" role="3uHU7B">
                          <property role="Xl_RC" value="a.b.d.e" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7iCybvTw$z7" role="3cqZAp">
                      <node concept="10Nm6u" id="7iCybvTw$z8" role="3clFbG" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7iCybvTw$81" role="3cqZAp" />
          <node concept="3vlDli" id="7iCybvTw$82" role="3cqZAp">
            <node concept="Xl_RD" id="7iCybvTw$83" role="3tpDZB">
              <property role="Xl_RC" value="foo" />
            </node>
            <node concept="2OqwBi" id="7iCybvTw$84" role="3tpDZA">
              <node concept="37vLTw" id="6hpwxwiIckK" role="2Oq$k0">
                <ref role="3cqZAo" node="6hpwxwiHN82" resolve="config" />
              </node>
              <node concept="liA8E" id="7iCybvTw$86" role="2OqNvi">
                <ref role="37wK5l" to="m7o5:7iCybvToiWV" resolve="getOption" />
                <node concept="Xl_RD" id="7iCybvTw$87" role="37wK5m">
                  <property role="Xl_RC" value="a.b.c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3ykFI1" id="7iCybvTw$88" role="3cqZAp">
            <node concept="2OqwBi" id="7iCybvTw$89" role="3ykU8v">
              <node concept="37vLTw" id="6hpwxwiIcqL" role="2Oq$k0">
                <ref role="3cqZAo" node="6hpwxwiHN82" resolve="config" />
              </node>
              <node concept="liA8E" id="7iCybvTw$8b" role="2OqNvi">
                <ref role="37wK5l" to="m7o5:7iCybvToiWV" resolve="getOption" />
                <node concept="Xl_RD" id="7iCybvTw$8c" role="37wK5m">
                  <property role="Xl_RC" value="a.b.d" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="7iCybvTw_ju" role="3cqZAp">
            <node concept="Xl_RD" id="7iCybvTw_jv" role="3tpDZB">
              <property role="Xl_RC" value="bar" />
            </node>
            <node concept="2OqwBi" id="7iCybvTw_jw" role="3tpDZA">
              <node concept="37vLTw" id="6hpwxwiIcsj" role="2Oq$k0">
                <ref role="3cqZAo" node="6hpwxwiHN82" resolve="config" />
              </node>
              <node concept="liA8E" id="7iCybvTw_jy" role="2OqNvi">
                <ref role="37wK5l" to="m7o5:7iCybvToiWV" resolve="getOption" />
                <node concept="Xl_RD" id="7iCybvTw_jz" role="37wK5m">
                  <property role="Xl_RC" value="a.b.d.e" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7iCybvTwF0m" role="3s_gse">
        <property role="3s$Bm0" value="overridingUserOptions" />
        <node concept="3cqZAl" id="7iCybvTwF0n" role="3clF45" />
        <node concept="3Tm1VV" id="7iCybvTwF0o" role="1B3o_S" />
        <node concept="3clFbS" id="7iCybvTwF0p" role="3clF47">
          <node concept="3clFbF" id="7iCybvTwFnq" role="3cqZAp">
            <node concept="2OqwBi" id="7iCybvTwFnr" role="3clFbG">
              <node concept="37vLTw" id="6hpwxwiIcwm" role="2Oq$k0">
                <ref role="3cqZAo" node="6hpwxwiHN82" resolve="config" />
              </node>
              <node concept="liA8E" id="7iCybvTwFnt" role="2OqNvi">
                <ref role="37wK5l" to="m7o5:7iCybvTszk9" resolve="registerProvider" />
                <node concept="Rm8GO" id="7iCybvTwFnu" role="37wK5m">
                  <ref role="1Px2BO" to="m7o5:7iCybvToD3Z" resolve="Config.Level" />
                  <ref role="Rm8GQ" to="m7o5:7iCybvToDv4" resolve="DEFAULT" />
                </node>
                <node concept="Xl_RD" id="7iCybvTwFnv" role="37wK5m">
                  <property role="Xl_RC" value="a.b." />
                </node>
                <node concept="1bVj0M" id="7iCybvTwFnw" role="37wK5m">
                  <node concept="37vLTG" id="7iCybvTwFnx" role="1bW2Oz">
                    <property role="TrG5h" value="key" />
                    <node concept="17QB3L" id="7iCybvTwFny" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="7iCybvTwFnz" role="1bW5cS">
                    <node concept="3clFbJ" id="7iCybvTwFn$" role="3cqZAp">
                      <node concept="3clFbS" id="7iCybvTwFn_" role="3clFbx">
                        <node concept="3cpWs6" id="7iCybvTwFnA" role="3cqZAp">
                          <node concept="Xl_RD" id="7iCybvTwFnB" role="3cqZAk">
                            <property role="Xl_RC" value="foo" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="7iCybvTwFnC" role="3clFbw">
                        <node concept="37vLTw" id="7iCybvTwFnD" role="3uHU7w">
                          <ref role="3cqZAo" node="7iCybvTwFnx" resolve="key" />
                        </node>
                        <node concept="Xl_RD" id="7iCybvTwFnE" role="3uHU7B">
                          <property role="Xl_RC" value="a.b.c" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7iCybvTwFnF" role="3cqZAp">
                      <node concept="10Nm6u" id="7iCybvTwFnG" role="3clFbG" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7iCybvTwFnH" role="3cqZAp" />
          <node concept="3vlDli" id="7iCybvTwFnI" role="3cqZAp">
            <node concept="Xl_RD" id="7iCybvTwFnJ" role="3tpDZB">
              <property role="Xl_RC" value="foo" />
            </node>
            <node concept="2OqwBi" id="7iCybvTwFnK" role="3tpDZA">
              <node concept="37vLTw" id="6hpwxwiIcBe" role="2Oq$k0">
                <ref role="3cqZAo" node="6hpwxwiHN82" resolve="config" />
              </node>
              <node concept="liA8E" id="7iCybvTwFnM" role="2OqNvi">
                <ref role="37wK5l" to="m7o5:7iCybvToiWV" resolve="getOption" />
                <node concept="Xl_RD" id="7iCybvTwFnN" role="37wK5m">
                  <property role="Xl_RC" value="a.b.c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7iCybvTwFnf" role="3cqZAp" />
          <node concept="3clFbF" id="7iCybvTwFyv" role="3cqZAp">
            <node concept="2OqwBi" id="7iCybvTwFyw" role="3clFbG">
              <node concept="37vLTw" id="6hpwxwiIcCS" role="2Oq$k0">
                <ref role="3cqZAo" node="6hpwxwiHN82" resolve="config" />
              </node>
              <node concept="liA8E" id="7iCybvTwFyy" role="2OqNvi">
                <ref role="37wK5l" to="m7o5:7iCybvTszk9" resolve="registerProvider" />
                <node concept="Rm8GO" id="7iCybvTwFFT" role="37wK5m">
                  <ref role="Rm8GQ" to="m7o5:7iCybvToHsq" resolve="USER" />
                  <ref role="1Px2BO" to="m7o5:7iCybvToD3Z" resolve="Config.Level" />
                </node>
                <node concept="Xl_RD" id="7iCybvTwFy$" role="37wK5m">
                  <property role="Xl_RC" value="a.b." />
                </node>
                <node concept="1bVj0M" id="7iCybvTwFy_" role="37wK5m">
                  <node concept="37vLTG" id="7iCybvTwFyA" role="1bW2Oz">
                    <property role="TrG5h" value="key" />
                    <node concept="17QB3L" id="7iCybvTwFyB" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="7iCybvTwFyC" role="1bW5cS">
                    <node concept="3clFbJ" id="7iCybvTwFyD" role="3cqZAp">
                      <node concept="3clFbS" id="7iCybvTwFyE" role="3clFbx">
                        <node concept="3cpWs6" id="7iCybvTwFyF" role="3cqZAp">
                          <node concept="Xl_RD" id="7iCybvTwFyG" role="3cqZAk">
                            <property role="Xl_RC" value="bazz" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="7iCybvTwFyH" role="3clFbw">
                        <node concept="37vLTw" id="7iCybvTwFyI" role="3uHU7w">
                          <ref role="3cqZAo" node="7iCybvTwFyA" resolve="key" />
                        </node>
                        <node concept="Xl_RD" id="7iCybvTwFyJ" role="3uHU7B">
                          <property role="Xl_RC" value="a.b.c" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7iCybvTwFyK" role="3cqZAp">
                      <node concept="10Nm6u" id="7iCybvTwFyL" role="3clFbG" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7iCybvTwFyu" role="3cqZAp" />
          <node concept="3vlDli" id="7iCybvTwFyo" role="3cqZAp">
            <node concept="Xl_RD" id="7iCybvTwFyp" role="3tpDZB">
              <property role="Xl_RC" value="bazz" />
            </node>
            <node concept="2OqwBi" id="7iCybvTwFyq" role="3tpDZA">
              <node concept="37vLTw" id="6hpwxwiIcG_" role="2Oq$k0">
                <ref role="3cqZAo" node="6hpwxwiHN82" resolve="config" />
              </node>
              <node concept="liA8E" id="7iCybvTwFys" role="2OqNvi">
                <ref role="37wK5l" to="m7o5:7iCybvToiWV" resolve="getOption" />
                <node concept="Xl_RD" id="7iCybvTwFyt" role="37wK5m">
                  <property role="Xl_RC" value="a.b.c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7iCybvTwF29" role="3cqZAp" />
        </node>
      </node>
    </node>
    <node concept="1KhYhu" id="7iCybvTuq8W" role="1KhZu4">
      <node concept="3clFbS" id="7iCybvTuq8X" role="2VODD2">
        <node concept="3clFbF" id="xqbf82kUv5" role="3cqZAp">
          <node concept="2OqwBi" id="xqbf82kUBT" role="3clFbG">
            <node concept="37vLTw" id="6hpwxwiIbGZ" role="2Oq$k0">
              <ref role="3cqZAo" node="6hpwxwiHN82" resolve="config" />
            </node>
            <node concept="liA8E" id="xqbf82kUJC" role="2OqNvi">
              <ref role="37wK5l" to="m7o5:xqbf82kuzw" resolve="reset" />
              <node concept="Rm8GO" id="2vm2iDVlIfV" role="37wK5m">
                <ref role="Rm8GQ" to="m7o5:7iCybvToDv4" resolve="DEFAULT" />
                <ref role="1Px2BO" to="m7o5:7iCybvToD3Z" resolve="Config.Level" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KhZuU" id="7iCybvTuuHp" role="1KhZu3">
      <node concept="3clFbS" id="7iCybvTuuHq" role="2VODD2">
        <node concept="3clFbF" id="xqbf82kUXr" role="3cqZAp">
          <node concept="2OqwBi" id="xqbf82kUXs" role="3clFbG">
            <node concept="37vLTw" id="6hpwxwiIbIN" role="2Oq$k0">
              <ref role="3cqZAo" node="6hpwxwiHN82" resolve="config" />
            </node>
            <node concept="liA8E" id="xqbf82kUXu" role="2OqNvi">
              <ref role="37wK5l" to="m7o5:xqbf82kuzw" resolve="reset" />
              <node concept="Rm8GO" id="xqbf82kUXv" role="37wK5m">
                <ref role="Rm8GQ" to="m7o5:7iCybvToDv4" resolve="DEFAULT" />
                <ref role="1Px2BO" to="m7o5:7iCybvToD3Z" resolve="Config.Level" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

