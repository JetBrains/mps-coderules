<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:28baff8f-bd3d-4350-a982-aa620545bf9a(jetbrains.mps.lang.typesystem2.samplechecker.test.lub)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" />
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.lang.typesystem2.samplechecker.template)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="4r4j" ref="r:94702bd0-f623-44e8-af0a-f2730f7d2518(jetbrains.mps.lang.typesystem2.samplechecker.handler.util)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171931690126" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" flags="ig" index="3s$Bmu">
        <property id="1171931690128" name="methodName" index="3s$Bm0" />
      </concept>
      <concept id="1171931851043" name="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" flags="ig" index="3s_ewN">
        <property id="1171931851045" name="testCaseName" index="3s_ewP" />
        <child id="1171931851044" name="testMethodList" index="3s_ewO" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
      <concept id="1171983834376" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" flags="nn" index="3vFxKo">
        <child id="1171983854940" name="condition" index="3vFALc" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="2105510410850132386" name="jetbrains.mps.logic.structure.ListNode" flags="ng" index="KCUsM">
        <child id="2105510410850136264" name="contents" index="KCVpo" />
      </concept>
      <concept id="7571593955706120730" name="jetbrains.mps.logic.structure.Ast" flags="ng" index="1oi1Uc">
        <child id="7571593955706125526" name="root" index="1oi0x0" />
      </concept>
      <concept id="7571593955706137263" name="jetbrains.mps.logic.structure.ChildRole" flags="ng" index="1oi5ST">
        <child id="7571593955706137319" name="contents" index="1oi5TL" />
      </concept>
      <concept id="7571593955706137125" name="jetbrains.mps.logic.structure.Node" flags="ng" index="1oi5UN">
        <child id="7571593955706284441" name="role" index="1ojpOf" />
      </concept>
      <concept id="7571593955706137472" name="jetbrains.mps.logic.structure.ValueRole" flags="ng" index="1oi5Wm">
        <child id="7571593955706137672" name="contents" index="1oi5zu" />
      </concept>
      <concept id="7571593955706137573" name="jetbrains.mps.logic.structure.ValueHolder" flags="ng" index="1oi5XN">
        <property id="7571593955706137638" name="value" index="1oi5yK" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3s_ewN" id="5H6hZahq1dl">
    <property role="3s_ewP" value="Lub" />
    <node concept="2tJIrI" id="5H6hZahqVEG" role="jymVt" />
    <node concept="312cEg" id="5H6hZahqVG$" role="jymVt">
      <property role="TrG5h" value="uni" />
      <node concept="3Tm6S6" id="5H6hZahqVG_" role="1B3o_S" />
      <node concept="3uibUv" id="5H6hZahqVHd" role="1tU5fm">
        <ref role="3uigEE" to="oy3s:6njqcfQVO0n" resolve="UnificationSolver" />
      </node>
      <node concept="2ShNRf" id="5H6hZahqVHJ" role="33vP2m">
        <node concept="1pGfFk" id="5H6hZahr4pE" role="2ShVmc">
          <ref role="37wK5l" to="oy3s:4U_yxogDDy9" resolve="UnificationSolverImpl" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5H6hZahq1dm" role="1B3o_S" />
    <node concept="3s_gsd" id="5H6hZahq1dn" role="3s_ewO">
      <node concept="3s$Bmu" id="5H6hZahq1oC" role="3s_gse">
        <property role="3s$Bm0" value="lub_no_lub" />
        <node concept="3cqZAl" id="5H6hZahq1oE" role="3clF45" />
        <node concept="3Tm1VV" id="5H6hZahq1oG" role="1B3o_S" />
        <node concept="3clFbS" id="5H6hZahq1oH" role="3clF47">
          <node concept="3cpWs8" id="5H6hZahq2yi" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahq2yj" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="5H6hZahq2ye" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="5H6hZahq2yk" role="33vP2m">
                <node concept="1oi5ST" id="5H6hZahqAE_" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="1oi5ST" id="5H6hZahqAFF" role="1oi5TL">
                    <property role="TrG5h" value="contents" />
                    <node concept="KCUsM" id="5H6hZahqO9G" role="1oi5TL">
                      <node concept="1oi5ST" id="5H6hZahqAGx" role="KCVpo">
                        <property role="TrG5h" value="list" />
                        <node concept="1oi5ST" id="5H6hZahq2X4" role="1oi5TL">
                          <property role="TrG5h" value="contents" />
                          <node concept="KCUsM" id="5H6hZahq2yn" role="1oi5TL">
                            <node concept="1oi5UN" id="5H6hZahqfBn" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahqfBo" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahqfBp" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahqfBq" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahqfBr" role="1oi5zu">
                                  <property role="1oi5yK" value="Iterable" />
                                </node>
                              </node>
                            </node>
                            <node concept="1oi5UN" id="5H6hZahqfBL" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahqfBM" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahqfBN" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahqfBO" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahqfBP" role="1oi5zu">
                                  <property role="1oi5yK" value="List" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5H6hZahqAGX" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahqAGY" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="5H6hZahqAGZ" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="5H6hZahqAH0" role="33vP2m">
                <node concept="1oi5ST" id="5H6hZahqAH1" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="1oi5ST" id="5H6hZahqAH2" role="1oi5TL">
                    <property role="TrG5h" value="contents" />
                    <node concept="KCUsM" id="5H6hZahqO9V" role="1oi5TL">
                      <node concept="1oi5ST" id="5H6hZahqAH3" role="KCVpo">
                        <property role="TrG5h" value="list" />
                        <node concept="1oi5ST" id="5H6hZahqAH4" role="1oi5TL">
                          <property role="TrG5h" value="contents" />
                          <node concept="KCUsM" id="5H6hZahqAH5" role="1oi5TL">
                            <node concept="1oi5UN" id="5H6hZahqAH6" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahqAH7" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahqAH8" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahqAH9" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahqAHa" role="1oi5zu">
                                  <property role="1oi5yK" value="Serializable" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5H6hZahrpqw" role="3cqZAp" />
          <node concept="3cpWs8" id="5H6hZahqafq" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahqafr" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="5H6hZahqafp" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
              </node>
              <node concept="2ShNRf" id="5H6hZahqafs" role="33vP2m">
                <node concept="1pGfFk" id="5H6hZahqaft" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="TreeLogical" />
                  <node concept="Xl_RD" id="5H6hZahqafu" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5H6hZahqaTz" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahqaT$" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="5H6hZahqaTk" role="1tU5fm" />
              <node concept="2YIFZM" id="5H6hZahqaT_" role="33vP2m">
                <ref role="1Pybhc" to="4r4j:5H6hZahmlon" resolve="LubSolver" />
                <ref role="37wK5l" to="4r4j:5H6hZahmloU" resolve="findLub" />
                <node concept="37vLTw" id="5H6hZahqaTA" role="37wK5m">
                  <ref role="3cqZAo" node="5H6hZahqafr" resolve="var" />
                </node>
                <node concept="2ShNRf" id="5H6hZahqaTB" role="37wK5m">
                  <node concept="1pGfFk" id="5H6hZahqaTC" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="TreeLogical" />
                    <node concept="37vLTw" id="5H6hZahqaTD" role="37wK5m">
                      <ref role="3cqZAo" node="5H6hZahq2yj" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="5H6hZahqaTE" role="37wK5m">
                  <node concept="1pGfFk" id="5H6hZahqaTF" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="TreeLogical" />
                    <node concept="37vLTw" id="5H6hZahqASC" role="37wK5m">
                      <ref role="3cqZAo" node="5H6hZahqAGY" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5H6hZahqaX0" role="3cqZAp" />
          <node concept="3vFxKo" id="5H6hZahsskl" role="3cqZAp">
            <node concept="37vLTw" id="5H6hZahsso1" role="3vFALc">
              <ref role="3cqZAo" node="5H6hZahqaT$" resolve="success" />
            </node>
          </node>
          <node concept="3vFxKo" id="5H6hZahsstk" role="3cqZAp">
            <node concept="2OqwBi" id="5H6hZahssFZ" role="3vFALc">
              <node concept="37vLTw" id="5H6hZahsswQ" role="2Oq$k0">
                <ref role="3cqZAo" node="5H6hZahqafr" resolve="var" />
              </node>
              <node concept="liA8E" id="5H6hZahstOI" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="5H6hZahsuWD" role="3s_gse">
        <property role="3s$Bm0" value="lub_list_list" />
        <node concept="3cqZAl" id="5H6hZahsuWE" role="3clF45" />
        <node concept="3Tm1VV" id="5H6hZahsuWF" role="1B3o_S" />
        <node concept="3clFbS" id="5H6hZahsuWG" role="3clF47">
          <node concept="3cpWs8" id="5H6hZahsuWH" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahsuWI" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="5H6hZahsuWJ" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="5H6hZahsuWK" role="33vP2m">
                <node concept="1oi5ST" id="5H6hZahsuWL" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="1oi5ST" id="5H6hZahsuWM" role="1oi5TL">
                    <property role="TrG5h" value="contents" />
                    <node concept="KCUsM" id="5H6hZahsuWN" role="1oi5TL">
                      <node concept="1oi5ST" id="5H6hZahsuWO" role="KCVpo">
                        <property role="TrG5h" value="list" />
                        <node concept="1oi5ST" id="5H6hZahsuWP" role="1oi5TL">
                          <property role="TrG5h" value="contents" />
                          <node concept="KCUsM" id="5H6hZahsuWQ" role="1oi5TL">
                            <node concept="1oi5UN" id="5H6hZahsuWR" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahsuWS" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahsuWT" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahsuWU" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahsuWV" role="1oi5zu">
                                  <property role="1oi5yK" value="Iterable" />
                                </node>
                              </node>
                            </node>
                            <node concept="1oi5UN" id="5H6hZahsuWW" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahsuWX" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahsuWY" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahsuWZ" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahsuX0" role="1oi5zu">
                                  <property role="1oi5yK" value="List" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5H6hZahsvnd" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahsvne" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="5H6hZahsvnf" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="5H6hZahsvng" role="33vP2m">
                <node concept="1oi5ST" id="5H6hZahsvnh" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="1oi5ST" id="5H6hZahsvni" role="1oi5TL">
                    <property role="TrG5h" value="contents" />
                    <node concept="KCUsM" id="5H6hZahsvnj" role="1oi5TL">
                      <node concept="1oi5ST" id="5H6hZahsvnk" role="KCVpo">
                        <property role="TrG5h" value="list" />
                        <node concept="1oi5ST" id="5H6hZahsvnl" role="1oi5TL">
                          <property role="TrG5h" value="contents" />
                          <node concept="KCUsM" id="5H6hZahsvnm" role="1oi5TL">
                            <node concept="1oi5UN" id="5H6hZahsvnn" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahsvno" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahsvnp" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahsvnq" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahsvnr" role="1oi5zu">
                                  <property role="1oi5yK" value="Iterable" />
                                </node>
                              </node>
                            </node>
                            <node concept="1oi5UN" id="5H6hZahsvns" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahsvnt" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahsvnu" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahsvnv" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahsvnw" role="1oi5zu">
                                  <property role="1oi5yK" value="List" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5H6hZahsuXg" role="3cqZAp" />
          <node concept="3cpWs8" id="5H6hZahsuXh" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahsuXi" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="5H6hZahsuXj" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
              </node>
              <node concept="2ShNRf" id="5H6hZahsuXk" role="33vP2m">
                <node concept="1pGfFk" id="5H6hZahsuXl" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="TreeLogical" />
                  <node concept="Xl_RD" id="5H6hZahsuXm" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5H6hZahsuXn" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahsuXo" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="5H6hZahsuXp" role="1tU5fm" />
              <node concept="2YIFZM" id="5H6hZahsuXq" role="33vP2m">
                <ref role="1Pybhc" to="4r4j:5H6hZahmlon" resolve="LubSolver" />
                <ref role="37wK5l" to="4r4j:5H6hZahmloU" resolve="findLub" />
                <node concept="37vLTw" id="5H6hZahsuXr" role="37wK5m">
                  <ref role="3cqZAo" node="5H6hZahsuXi" resolve="var" />
                </node>
                <node concept="2ShNRf" id="5H6hZahsuXs" role="37wK5m">
                  <node concept="1pGfFk" id="5H6hZahsuXt" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="TreeLogical" />
                    <node concept="37vLTw" id="5H6hZahsuXu" role="37wK5m">
                      <ref role="3cqZAo" node="5H6hZahsuWI" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="5H6hZahsuXv" role="37wK5m">
                  <node concept="1pGfFk" id="5H6hZahsuXw" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="TreeLogical" />
                    <node concept="37vLTw" id="5H6hZahsvyf" role="37wK5m">
                      <ref role="3cqZAo" node="5H6hZahsvne" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5H6hZahsuXy" role="3cqZAp" />
          <node concept="3vwNmj" id="5H6hZahsvzx" role="3cqZAp">
            <node concept="37vLTw" id="5H6hZahsvzy" role="3vwVQn">
              <ref role="3cqZAo" node="5H6hZahsuXo" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="5H6hZahsvzz" role="3cqZAp">
            <node concept="2OqwBi" id="5H6hZahsvz$" role="3vwVQn">
              <node concept="37vLTw" id="5H6hZahsvz_" role="2Oq$k0">
                <ref role="3cqZAo" node="5H6hZahsuXi" resolve="var" />
              </node>
              <node concept="liA8E" id="5H6hZahsvzA" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5H6hZahsvzB" role="3cqZAp" />
          <node concept="3cpWs8" id="5H6hZahsFlr" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahsFls" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="5H6hZahsFlt" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="5H6hZahsFlu" role="33vP2m">
                <node concept="1oi5ST" id="5H6hZahsFlv" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="1oi5ST" id="5H6hZahsFlw" role="1oi5TL">
                    <property role="TrG5h" value="contents" />
                    <node concept="KCUsM" id="5H6hZahsFlx" role="1oi5TL">
                      <node concept="1oi5UN" id="5H6hZahsFly" role="KCVpo">
                        <node concept="1oi5Wm" id="5H6hZahsFlz" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="5H6hZahsFl$" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="5H6hZahsFl_" role="1ojpOf">
                          <property role="TrG5h" value="classifier" />
                          <node concept="1oi5XN" id="5H6hZahsFlA" role="1oi5zu">
                            <property role="1oi5yK" value="List" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5H6hZahsvzL" role="3cqZAp">
            <node concept="2OqwBi" id="5H6hZahsvzM" role="3clFbG">
              <node concept="37vLTw" id="5H6hZahsvzN" role="2Oq$k0">
                <ref role="3cqZAo" node="5H6hZahqVG$" resolve="uni" />
              </node>
              <node concept="liA8E" id="5H6hZahsvzO" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4U_yxogCcGI" resolve="tellUni" />
                <node concept="37vLTw" id="5H6hZahsvzP" role="37wK5m">
                  <ref role="3cqZAo" node="5H6hZahsFls" resolve="expect" />
                </node>
                <node concept="37vLTw" id="5H6hZahsvzQ" role="37wK5m">
                  <ref role="3cqZAo" node="5H6hZahsuXi" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="5H6hZahsixl" role="3s_gse">
        <property role="3s$Bm0" value="lub_list_iterable" />
        <node concept="3cqZAl" id="5H6hZahsixm" role="3clF45" />
        <node concept="3Tm1VV" id="5H6hZahsixn" role="1B3o_S" />
        <node concept="3clFbS" id="5H6hZahsixo" role="3clF47">
          <node concept="3cpWs8" id="5H6hZahsixp" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahsixq" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="5H6hZahsixr" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="5H6hZahsixs" role="33vP2m">
                <node concept="1oi5ST" id="5H6hZahsixt" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="1oi5ST" id="5H6hZahsixu" role="1oi5TL">
                    <property role="TrG5h" value="contents" />
                    <node concept="KCUsM" id="5H6hZahsixv" role="1oi5TL">
                      <node concept="1oi5ST" id="5H6hZahsixw" role="KCVpo">
                        <property role="TrG5h" value="list" />
                        <node concept="1oi5ST" id="5H6hZahsixx" role="1oi5TL">
                          <property role="TrG5h" value="contents" />
                          <node concept="KCUsM" id="5H6hZahsixy" role="1oi5TL">
                            <node concept="1oi5UN" id="5H6hZahsixz" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahsix$" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahsix_" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahsixA" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahsixB" role="1oi5zu">
                                  <property role="1oi5yK" value="Iterable" />
                                </node>
                              </node>
                            </node>
                            <node concept="1oi5UN" id="5H6hZahsixC" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahsixD" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahsixE" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahsixF" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahsixG" role="1oi5zu">
                                  <property role="1oi5yK" value="List" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5H6hZahsixH" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahsixI" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="5H6hZahsixJ" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="5H6hZahsixK" role="33vP2m">
                <node concept="1oi5ST" id="5H6hZahsixL" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="1oi5ST" id="5H6hZahsixM" role="1oi5TL">
                    <property role="TrG5h" value="contents" />
                    <node concept="KCUsM" id="5H6hZahsixN" role="1oi5TL">
                      <node concept="1oi5ST" id="5H6hZahsixO" role="KCVpo">
                        <property role="TrG5h" value="list" />
                        <node concept="1oi5ST" id="5H6hZahsixP" role="1oi5TL">
                          <property role="TrG5h" value="contents" />
                          <node concept="KCUsM" id="5H6hZahsixQ" role="1oi5TL">
                            <node concept="1oi5UN" id="5H6hZahsixR" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahsixS" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahsixT" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahsixU" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahsixV" role="1oi5zu">
                                  <property role="1oi5yK" value="Iterable" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5H6hZahsixW" role="3cqZAp" />
          <node concept="3cpWs8" id="5H6hZahsixX" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahsixY" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="5H6hZahsixZ" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
              </node>
              <node concept="2ShNRf" id="5H6hZahsiy0" role="33vP2m">
                <node concept="1pGfFk" id="5H6hZahsiy1" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="TreeLogical" />
                  <node concept="Xl_RD" id="5H6hZahsiy2" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5H6hZahsiy3" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahsiy4" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="5H6hZahsiy5" role="1tU5fm" />
              <node concept="2YIFZM" id="5H6hZahsiy6" role="33vP2m">
                <ref role="1Pybhc" to="4r4j:5H6hZahmlon" resolve="LubSolver" />
                <ref role="37wK5l" to="4r4j:5H6hZahmloU" resolve="findLub" />
                <node concept="37vLTw" id="5H6hZahsiy7" role="37wK5m">
                  <ref role="3cqZAo" node="5H6hZahsixY" resolve="var" />
                </node>
                <node concept="2ShNRf" id="5H6hZahsiy8" role="37wK5m">
                  <node concept="1pGfFk" id="5H6hZahsiy9" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="TreeLogical" />
                    <node concept="37vLTw" id="5H6hZahsiya" role="37wK5m">
                      <ref role="3cqZAo" node="5H6hZahsixq" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="5H6hZahsiyb" role="37wK5m">
                  <node concept="1pGfFk" id="5H6hZahsiyc" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="TreeLogical" />
                    <node concept="37vLTw" id="5H6hZahsiyd" role="37wK5m">
                      <ref role="3cqZAo" node="5H6hZahsixI" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5H6hZahsiye" role="3cqZAp" />
          <node concept="3vwNmj" id="5H6hZahsiyf" role="3cqZAp">
            <node concept="37vLTw" id="5H6hZahsiyg" role="3vwVQn">
              <ref role="3cqZAo" node="5H6hZahsiy4" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="5H6hZahsiyh" role="3cqZAp">
            <node concept="2OqwBi" id="5H6hZahsiyi" role="3vwVQn">
              <node concept="37vLTw" id="5H6hZahsiyj" role="2Oq$k0">
                <ref role="3cqZAo" node="5H6hZahsixY" resolve="var" />
              </node>
              <node concept="liA8E" id="5H6hZahsiyk" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5H6hZahsiyl" role="3cqZAp" />
          <node concept="3cpWs8" id="5H6hZahsiym" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahsiyn" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="5H6hZahsiyo" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="5H6hZahsiyp" role="33vP2m">
                <node concept="1oi5ST" id="5H6hZahsEku" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="1oi5ST" id="5H6hZahsElc" role="1oi5TL">
                    <property role="TrG5h" value="contents" />
                    <node concept="KCUsM" id="5H6hZahsElf" role="1oi5TL">
                      <node concept="1oi5UN" id="5H6hZahsiyq" role="KCVpo">
                        <node concept="1oi5Wm" id="5H6hZahsiyr" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="5H6hZahsiys" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="5H6hZahsiyt" role="1ojpOf">
                          <property role="TrG5h" value="classifier" />
                          <node concept="1oi5XN" id="5H6hZahsiyu" role="1oi5zu">
                            <property role="1oi5yK" value="Iterable" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5H6hZahsiyv" role="3cqZAp">
            <node concept="2OqwBi" id="5H6hZahsiyw" role="3clFbG">
              <node concept="37vLTw" id="5H6hZahsiyx" role="2Oq$k0">
                <ref role="3cqZAo" node="5H6hZahqVG$" resolve="uni" />
              </node>
              <node concept="liA8E" id="5H6hZahsiyy" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4U_yxogCcGI" resolve="tellUni" />
                <node concept="37vLTw" id="5H6hZahsiyz" role="37wK5m">
                  <ref role="3cqZAo" node="5H6hZahsiyn" resolve="expect" />
                </node>
                <node concept="37vLTw" id="5H6hZahsiy$" role="37wK5m">
                  <ref role="3cqZAo" node="5H6hZahsixY" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="5H6hZahr83l" role="3s_gse">
        <property role="3s$Bm0" value="lub_list_abstractList" />
        <node concept="3cqZAl" id="5H6hZahr83m" role="3clF45" />
        <node concept="3Tm1VV" id="5H6hZahr83n" role="1B3o_S" />
        <node concept="3clFbS" id="5H6hZahr83o" role="3clF47">
          <node concept="3cpWs8" id="5H6hZahr83p" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahr83q" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="5H6hZahr83r" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="5H6hZahr83s" role="33vP2m">
                <node concept="1oi5ST" id="5H6hZahr83t" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="1oi5ST" id="5H6hZahr83u" role="1oi5TL">
                    <property role="TrG5h" value="contents" />
                    <node concept="KCUsM" id="5H6hZahr83v" role="1oi5TL">
                      <node concept="1oi5ST" id="5H6hZahr83w" role="KCVpo">
                        <property role="TrG5h" value="list" />
                        <node concept="1oi5ST" id="5H6hZahr83x" role="1oi5TL">
                          <property role="TrG5h" value="contents" />
                          <node concept="KCUsM" id="5H6hZahr83y" role="1oi5TL">
                            <node concept="1oi5UN" id="5H6hZahr83z" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahr83$" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahr83_" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahr83A" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahr83B" role="1oi5zu">
                                  <property role="1oi5yK" value="Iterable" />
                                </node>
                              </node>
                            </node>
                            <node concept="1oi5UN" id="5H6hZahr83C" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahr83D" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahr83E" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahr83F" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahr83G" role="1oi5zu">
                                  <property role="1oi5yK" value="List" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5H6hZahr83H" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahr83I" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="5H6hZahr83J" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="5H6hZahr83K" role="33vP2m">
                <node concept="1oi5ST" id="5H6hZahr83L" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="1oi5ST" id="5H6hZahr83M" role="1oi5TL">
                    <property role="TrG5h" value="contents" />
                    <node concept="KCUsM" id="5H6hZahr83N" role="1oi5TL">
                      <node concept="1oi5ST" id="5H6hZahr83O" role="KCVpo">
                        <property role="TrG5h" value="list" />
                        <node concept="1oi5ST" id="5H6hZahr83P" role="1oi5TL">
                          <property role="TrG5h" value="contents" />
                          <node concept="KCUsM" id="5H6hZahr83Q" role="1oi5TL">
                            <node concept="1oi5UN" id="5H6hZahr83R" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahr83S" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahr83T" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahr83U" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahr83V" role="1oi5zu">
                                  <property role="1oi5yK" value="Iterable" />
                                </node>
                              </node>
                            </node>
                            <node concept="1oi5UN" id="5H6hZahr8cy" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahr8cz" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahr8c$" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahr8c_" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahr8cA" role="1oi5zu">
                                  <property role="1oi5yK" value="List" />
                                </node>
                              </node>
                            </node>
                            <node concept="1oi5UN" id="5H6hZahr8cL" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahr8cM" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahr8cN" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahr8cO" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahr8cP" role="1oi5zu">
                                  <property role="1oi5yK" value="AbstractList" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5H6hZahr83W" role="3cqZAp" />
          <node concept="3cpWs8" id="5H6hZahr83X" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahr83Y" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="5H6hZahr83Z" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
              </node>
              <node concept="2ShNRf" id="5H6hZahr840" role="33vP2m">
                <node concept="1pGfFk" id="5H6hZahr841" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="TreeLogical" />
                  <node concept="Xl_RD" id="5H6hZahr842" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5H6hZahr843" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahr844" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="5H6hZahr845" role="1tU5fm" />
              <node concept="2YIFZM" id="5H6hZahr846" role="33vP2m">
                <ref role="1Pybhc" to="4r4j:5H6hZahmlon" resolve="LubSolver" />
                <ref role="37wK5l" to="4r4j:5H6hZahmloU" resolve="findLub" />
                <node concept="37vLTw" id="5H6hZahr847" role="37wK5m">
                  <ref role="3cqZAo" node="5H6hZahr83Y" resolve="var" />
                </node>
                <node concept="2ShNRf" id="5H6hZahr848" role="37wK5m">
                  <node concept="1pGfFk" id="5H6hZahr849" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="TreeLogical" />
                    <node concept="37vLTw" id="5H6hZahr84a" role="37wK5m">
                      <ref role="3cqZAo" node="5H6hZahr83q" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="5H6hZahr84b" role="37wK5m">
                  <node concept="1pGfFk" id="5H6hZahr84c" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="TreeLogical" />
                    <node concept="37vLTw" id="5H6hZahr84d" role="37wK5m">
                      <ref role="3cqZAo" node="5H6hZahr83I" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5H6hZahr84e" role="3cqZAp" />
          <node concept="3vwNmj" id="5H6hZahr84f" role="3cqZAp">
            <node concept="37vLTw" id="5H6hZahr84g" role="3vwVQn">
              <ref role="3cqZAo" node="5H6hZahr844" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="5H6hZahr8Hy" role="3cqZAp">
            <node concept="2OqwBi" id="5H6hZahr8Vb" role="3vwVQn">
              <node concept="37vLTw" id="5H6hZahr8KA" role="2Oq$k0">
                <ref role="3cqZAo" node="5H6hZahr83Y" resolve="var" />
              </node>
              <node concept="liA8E" id="5H6hZahra3t" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5H6hZahra4l" role="3cqZAp" />
          <node concept="3cpWs8" id="5H6hZahsFei" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahsFej" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="5H6hZahsFek" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="5H6hZahsFel" role="33vP2m">
                <node concept="1oi5ST" id="5H6hZahsFem" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="1oi5ST" id="5H6hZahsFen" role="1oi5TL">
                    <property role="TrG5h" value="contents" />
                    <node concept="KCUsM" id="5H6hZahsFeo" role="1oi5TL">
                      <node concept="1oi5UN" id="5H6hZahsFep" role="KCVpo">
                        <node concept="1oi5Wm" id="5H6hZahsFeq" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="5H6hZahsFer" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="5H6hZahsFes" role="1ojpOf">
                          <property role="TrG5h" value="classifier" />
                          <node concept="1oi5XN" id="5H6hZahsFet" role="1oi5zu">
                            <property role="1oi5yK" value="List" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5H6hZahra7L" role="3cqZAp">
            <node concept="2OqwBi" id="5H6hZahra7N" role="3clFbG">
              <node concept="37vLTw" id="5H6hZahra7O" role="2Oq$k0">
                <ref role="3cqZAo" node="5H6hZahqVG$" resolve="uni" />
              </node>
              <node concept="liA8E" id="5H6hZahra7P" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4U_yxogCcGI" resolve="tellUni" />
                <node concept="37vLTw" id="5H6hZahra7Q" role="37wK5m">
                  <ref role="3cqZAo" node="5H6hZahsFej" resolve="expect" />
                </node>
                <node concept="37vLTw" id="5H6hZahra7R" role="37wK5m">
                  <ref role="3cqZAo" node="5H6hZahr83Y" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="5H6hZahrZUD" role="3s_gse">
        <property role="3s$Bm0" value="lub_string_integer" />
        <node concept="3cqZAl" id="5H6hZahrZUE" role="3clF45" />
        <node concept="3Tm1VV" id="5H6hZahrZUF" role="1B3o_S" />
        <node concept="3clFbS" id="5H6hZahrZUG" role="3clF47">
          <node concept="3cpWs8" id="5H6hZahrZUH" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahrZUI" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="5H6hZahrZUJ" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="5H6hZahrZUK" role="33vP2m">
                <node concept="1oi5ST" id="5H6hZahrZUL" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="1oi5ST" id="5H6hZahrZUM" role="1oi5TL">
                    <property role="TrG5h" value="contents" />
                    <node concept="KCUsM" id="5H6hZahrZUN" role="1oi5TL">
                      <node concept="1oi5ST" id="5H6hZahrZUO" role="KCVpo">
                        <property role="TrG5h" value="list" />
                        <node concept="1oi5ST" id="5H6hZahrZUP" role="1oi5TL">
                          <property role="TrG5h" value="contents" />
                          <node concept="KCUsM" id="5H6hZahrZUQ" role="1oi5TL">
                            <node concept="1oi5UN" id="5H6hZahrZUR" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahrZUS" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahrZUT" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahrZUU" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahrZUV" role="1oi5zu">
                                  <property role="1oi5yK" value="Serializable" />
                                </node>
                              </node>
                            </node>
                            <node concept="1oi5UN" id="5H6hZahrZUW" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahrZUX" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahrZUY" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahrZUZ" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahrZV0" role="1oi5zu">
                                  <property role="1oi5yK" value="String" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5ST" id="5H6hZahs166" role="KCVpo">
                        <property role="TrG5h" value="list" />
                        <node concept="1oi5ST" id="5H6hZahs167" role="1oi5TL">
                          <property role="TrG5h" value="contents" />
                          <node concept="KCUsM" id="5H6hZahs168" role="1oi5TL">
                            <node concept="1oi5UN" id="5H6hZahs18p" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahs18q" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahs18r" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahs18s" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahs18t" role="1oi5zu">
                                  <property role="1oi5yK" value="Comparable" />
                                </node>
                              </node>
                            </node>
                            <node concept="1oi5UN" id="5H6hZahs18u" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahs18v" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahs18w" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahs18x" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahs18y" role="1oi5zu">
                                  <property role="1oi5yK" value="String" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5H6hZahs08q" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahs08r" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="5H6hZahs08s" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="5H6hZahs08t" role="33vP2m">
                <node concept="1oi5ST" id="5H6hZahs08u" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="1oi5ST" id="5H6hZahs08v" role="1oi5TL">
                    <property role="TrG5h" value="contents" />
                    <node concept="KCUsM" id="5H6hZahs08w" role="1oi5TL">
                      <node concept="1oi5ST" id="5H6hZahs08x" role="KCVpo">
                        <property role="TrG5h" value="list" />
                        <node concept="1oi5ST" id="5H6hZahs08y" role="1oi5TL">
                          <property role="TrG5h" value="contents" />
                          <node concept="KCUsM" id="5H6hZahs08z" role="1oi5TL">
                            <node concept="1oi5UN" id="5H6hZahs08$" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahs08_" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahs08A" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahs08B" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahs08C" role="1oi5zu">
                                  <property role="1oi5yK" value="Serializable" />
                                </node>
                              </node>
                            </node>
                            <node concept="1oi5UN" id="5H6hZahs0hx" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahs0hy" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahs0hz" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahs0h$" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahs0h_" role="1oi5zu">
                                  <property role="1oi5yK" value="Number" />
                                </node>
                              </node>
                            </node>
                            <node concept="1oi5UN" id="5H6hZahs08D" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahs08E" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahs08F" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahs08G" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahs08H" role="1oi5zu">
                                  <property role="1oi5yK" value="Integer" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5ST" id="5H6hZahs18S" role="KCVpo">
                        <property role="TrG5h" value="list" />
                        <node concept="1oi5ST" id="5H6hZahs18T" role="1oi5TL">
                          <property role="TrG5h" value="contents" />
                          <node concept="KCUsM" id="5H6hZahs18U" role="1oi5TL">
                            <node concept="1oi5UN" id="5H6hZahs19b" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahs19c" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahs19d" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahs19e" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahs19f" role="1oi5zu">
                                  <property role="1oi5yK" value="Comparable" />
                                </node>
                              </node>
                            </node>
                            <node concept="1oi5UN" id="5H6hZahs19g" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahs19h" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahs19i" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahs19j" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahs19k" role="1oi5zu">
                                  <property role="1oi5yK" value="Integer" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5ST" id="5H6hZahs1bg" role="KCVpo">
                        <property role="TrG5h" value="list" />
                        <node concept="1oi5ST" id="5H6hZahs1bh" role="1oi5TL">
                          <property role="TrG5h" value="contents" />
                          <node concept="KCUsM" id="5H6hZahs1bi" role="1oi5TL">
                            <node concept="1oi5UN" id="5H6hZahs1bu" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahs1bv" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahs1bw" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahs1bx" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahs1by" role="1oi5zu">
                                  <property role="1oi5yK" value="Serializable" />
                                </node>
                              </node>
                            </node>
                            <node concept="1oi5UN" id="5H6hZahs1bz" role="KCVpo">
                              <node concept="1oi5Wm" id="5H6hZahs1b$" role="1ojpOf">
                                <property role="TrG5h" value="concept" />
                                <node concept="1oi5XN" id="5H6hZahs1b_" role="1oi5zu">
                                  <property role="1oi5yK" value="ClassifierType" />
                                </node>
                              </node>
                              <node concept="1oi5Wm" id="5H6hZahs1bA" role="1ojpOf">
                                <property role="TrG5h" value="classifier" />
                                <node concept="1oi5XN" id="5H6hZahs1bB" role="1oi5zu">
                                  <property role="1oi5yK" value="Integer" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5H6hZahrZVq" role="3cqZAp" />
          <node concept="3cpWs8" id="5H6hZahrZVr" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahrZVs" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="5H6hZahrZVt" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
              </node>
              <node concept="2ShNRf" id="5H6hZahrZVu" role="33vP2m">
                <node concept="1pGfFk" id="5H6hZahrZVv" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="TreeLogical" />
                  <node concept="Xl_RD" id="5H6hZahrZVw" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5H6hZahrZVx" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahrZVy" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="5H6hZahrZVz" role="1tU5fm" />
              <node concept="2YIFZM" id="5H6hZahrZV$" role="33vP2m">
                <ref role="1Pybhc" to="4r4j:5H6hZahmlon" resolve="LubSolver" />
                <ref role="37wK5l" to="4r4j:5H6hZahmloU" resolve="findLub" />
                <node concept="37vLTw" id="5H6hZahrZV_" role="37wK5m">
                  <ref role="3cqZAo" node="5H6hZahrZVs" resolve="var" />
                </node>
                <node concept="2ShNRf" id="5H6hZahrZVA" role="37wK5m">
                  <node concept="1pGfFk" id="5H6hZahrZVB" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="TreeLogical" />
                    <node concept="37vLTw" id="5H6hZahrZVC" role="37wK5m">
                      <ref role="3cqZAo" node="5H6hZahrZUI" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="5H6hZahrZVD" role="37wK5m">
                  <node concept="1pGfFk" id="5H6hZahrZVE" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="TreeLogical" />
                    <node concept="37vLTw" id="5H6hZahs0iP" role="37wK5m">
                      <ref role="3cqZAo" node="5H6hZahs08r" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5H6hZahrZVG" role="3cqZAp" />
          <node concept="3vwNmj" id="5H6hZahrZVH" role="3cqZAp">
            <node concept="37vLTw" id="5H6hZahrZVI" role="3vwVQn">
              <ref role="3cqZAo" node="5H6hZahrZVy" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="5H6hZahrZVJ" role="3cqZAp">
            <node concept="2OqwBi" id="5H6hZahrZVK" role="3vwVQn">
              <node concept="37vLTw" id="5H6hZahrZVL" role="2Oq$k0">
                <ref role="3cqZAo" node="5H6hZahrZVs" resolve="var" />
              </node>
              <node concept="liA8E" id="5H6hZahrZVM" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5H6hZahrZVN" role="3cqZAp" />
          <node concept="3cpWs8" id="5H6hZahrZVO" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahrZVP" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="5H6hZahrZVQ" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="5H6hZahrZVR" role="33vP2m">
                <node concept="1oi5ST" id="5H6hZahsFGh" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="1oi5ST" id="5H6hZahsFGY" role="1oi5TL">
                    <property role="TrG5h" value="contents" />
                    <node concept="KCUsM" id="5H6hZahsFH0" role="1oi5TL">
                      <node concept="1oi5UN" id="5H6hZahsh88" role="KCVpo">
                        <node concept="1oi5Wm" id="5H6hZahsh89" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="5H6hZahsh8a" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="5H6hZahsh8b" role="1ojpOf">
                          <property role="TrG5h" value="classifier" />
                          <node concept="1oi5XN" id="5H6hZahsh8c" role="1oi5zu">
                            <property role="1oi5yK" value="Serializable" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="5H6hZahsh8i" role="KCVpo">
                        <node concept="1oi5Wm" id="5H6hZahsh8j" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="5H6hZahsh8k" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="5H6hZahsh8l" role="1ojpOf">
                          <property role="TrG5h" value="classifier" />
                          <node concept="1oi5XN" id="5H6hZahsh8m" role="1oi5zu">
                            <property role="1oi5yK" value="Comparable" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5H6hZahrZVX" role="3cqZAp">
            <node concept="2OqwBi" id="5H6hZahrZVY" role="3clFbG">
              <node concept="37vLTw" id="5H6hZahrZVZ" role="2Oq$k0">
                <ref role="3cqZAo" node="5H6hZahqVG$" resolve="uni" />
              </node>
              <node concept="liA8E" id="5H6hZahrZW0" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4U_yxogCcGI" resolve="tellUni" />
                <node concept="37vLTw" id="5H6hZahrZW1" role="37wK5m">
                  <ref role="3cqZAo" node="5H6hZahrZVP" resolve="expect" />
                </node>
                <node concept="37vLTw" id="5H6hZahrZW2" role="37wK5m">
                  <ref role="3cqZAo" node="5H6hZahrZVs" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

