<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5a1f4b5d-8f7a-49a1-a68a-49cfbbceb473(jetbrains.mps.lang.typesystem2.samplechecker.handle.test.util)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
  </languages>
  <imports>
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="4r4j" ref="r:94702bd0-f623-44e8-af0a-f2730f7d2518(jetbrains.mps.lang.typesystem2.samplechecker.handle.util)" />
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
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="2105510410850132386" name="jetbrains.mps.logic.structure.List" flags="ng" index="KCUsM">
        <child id="2105510410850136264" name="contents" index="KCVpo" />
      </concept>
      <concept id="7571593955706120730" name="jetbrains.mps.logic.structure.AtomExpression" flags="ng" index="1oi1Uc">
        <child id="7571593955706125526" name="root" index="1oi0x0" />
      </concept>
      <concept id="7571593955706137263" name="jetbrains.mps.logic.structure.ChildRole" flags="ng" index="1oi5ST">
        <child id="7571593955706137319" name="contents" index="1oi5TL" />
      </concept>
      <concept id="7571593955706137125" name="jetbrains.mps.logic.structure.Compound" flags="ng" index="1oi5UN">
        <child id="7571593955706284441" name="role" index="1ojpOf" />
      </concept>
      <concept id="7571593955706137472" name="jetbrains.mps.logic.structure.ValueRole" flags="ng" index="1oi5Wm">
        <child id="7571593955706137672" name="contents" index="1oi5zu" />
      </concept>
      <concept id="7571593955706137573" name="jetbrains.mps.logic.structure.Value" flags="ng" index="1oi5XN">
        <property id="7571593955706137638" name="value" index="1oi5yK" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3s_ewN" id="7t5VLKGALSG">
    <property role="3s_ewP" value="Lub" />
    <node concept="2tJIrI" id="7t5VLKGALSH" role="jymVt" />
    <node concept="312cEg" id="7t5VLKGALSI" role="jymVt">
      <property role="TrG5h" value="uni" />
      <node concept="3Tm6S6" id="7t5VLKGALSJ" role="1B3o_S" />
      <node concept="3uibUv" id="7t5VLKGALSK" role="1tU5fm">
        <ref role="3uigEE" to="oy3s:6njqcfQVO0n" resolve="UnificationSolver" />
      </node>
      <node concept="2ShNRf" id="7t5VLKGALSL" role="33vP2m">
        <node concept="1pGfFk" id="7t5VLKGALSM" role="2ShVmc">
          <ref role="37wK5l" to="oy3s:4U_yxogDDy9" resolve="UnificationSolverImpl" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7t5VLKGALSN" role="1B3o_S" />
    <node concept="3s_gsd" id="7t5VLKGALSO" role="3s_ewO">
      <node concept="3s$Bmu" id="7t5VLKGALSP" role="3s_gse">
        <property role="3s$Bm0" value="lub_no_lub" />
        <node concept="3cqZAl" id="7t5VLKGALSQ" role="3clF45" />
        <node concept="3Tm1VV" id="7t5VLKGALSR" role="1B3o_S" />
        <node concept="3clFbS" id="7t5VLKGALSS" role="3clF47">
          <node concept="3cpWs8" id="7t5VLKGALST" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALSU" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="7t5VLKGALSV" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALSW" role="33vP2m">
                <node concept="1oi5ST" id="7t5VLKGALSX" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgGVBb" role="1oi5TL">
                    <node concept="1oi5ST" id="7t5VLKGALT0" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgGVD5" role="1oi5TL">
                        <node concept="1oi5UN" id="4JRKVCv2hys" role="KCVpo">
                          <node concept="1oi5Wm" id="4JRKVCv2hyt" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4JRKVCv2hyu" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="4JRKVCv2hyv" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="4JRKVCv2hyw" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALT3" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALT4" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALT5" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALT6" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALT7" role="1oi5zu">
                              <property role="1oi5yK" value="Iterable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALT8" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALT9" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALTa" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALTb" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALTc" role="1oi5zu">
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
          <node concept="3cpWs8" id="7t5VLKGALTd" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALTe" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="7t5VLKGALTf" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALTg" role="33vP2m">
                <node concept="1oi5ST" id="7t5VLKGALTh" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgGVFg" role="1oi5TL">
                    <node concept="1oi5ST" id="7t5VLKGALTk" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgGVGG" role="1oi5TL">
                        <node concept="1oi5UN" id="4JRKVCv896o" role="KCVpo">
                          <node concept="1oi5Wm" id="4JRKVCv896p" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4JRKVCv896q" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="4JRKVCv896r" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="4JRKVCv896s" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALTn" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALTo" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALTp" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALTq" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALTr" role="1oi5zu">
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
          <node concept="3clFbH" id="7t5VLKGALTs" role="3cqZAp" />
          <node concept="3cpWs8" id="7t5VLKGALTt" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALTu" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="7t5VLKGALTv" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="7t5VLKGALTw" role="33vP2m">
                <node concept="1pGfFk" id="7t5VLKGALTx" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="AtomLogical" />
                  <node concept="Xl_RD" id="7t5VLKGALTy" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7t5VLKGALTz" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALT$" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="7t5VLKGALT_" role="1tU5fm" />
              <node concept="2YIFZM" id="7t5VLKGALTA" role="33vP2m">
                <ref role="1Pybhc" to="4r4j:5H6hZahmlon" resolve="LubSolver" />
                <ref role="37wK5l" to="4r4j:5H6hZahmloU" resolve="findLub" />
                <node concept="37vLTw" id="7t5VLKGALTB" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKGALTu" resolve="var" />
                </node>
                <node concept="2ShNRf" id="7t5VLKGALTC" role="37wK5m">
                  <node concept="1pGfFk" id="7t5VLKGALTD" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="7t5VLKGALTE" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALSU" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="7t5VLKGALTF" role="37wK5m">
                  <node concept="1pGfFk" id="7t5VLKGALTG" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="7t5VLKGALTH" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALTe" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4JRKVCv8abP" role="3cqZAp" />
          <node concept="3vwNmj" id="4JRKVCv8a67" role="3cqZAp">
            <node concept="37vLTw" id="4JRKVCv8a68" role="3vwVQn">
              <ref role="3cqZAo" node="7t5VLKGALT$" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="4JRKVCv8a69" role="3cqZAp">
            <node concept="2OqwBi" id="4JRKVCv8a6a" role="3vwVQn">
              <node concept="37vLTw" id="4JRKVCv8a6b" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGALTu" resolve="var" />
              </node>
              <node concept="liA8E" id="4JRKVCv8a6c" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4JRKVCv8a6d" role="3cqZAp" />
          <node concept="3cpWs8" id="4JRKVCv8a6e" role="3cqZAp">
            <node concept="3cpWsn" id="4JRKVCv8a6f" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="4JRKVCv8a6g" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="4JRKVCv8a6h" role="33vP2m">
                <node concept="1oi5ST" id="4JRKVCv8a6i" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgGVIc" role="1oi5TL">
                    <node concept="1oi5UN" id="4JRKVCv8a6l" role="KCVpo">
                      <node concept="1oi5Wm" id="4JRKVCv8a6m" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="4JRKVCv8a6n" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="4JRKVCv8a6o" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="4JRKVCv8a6p" role="1oi5zu">
                          <property role="1oi5yK" value="Object" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4JRKVCv8a6q" role="3cqZAp">
            <node concept="2OqwBi" id="4JRKVCv8a6r" role="3clFbG">
              <node concept="37vLTw" id="4JRKVCv8a6s" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGALSI" resolve="uni" />
              </node>
              <node concept="liA8E" id="4JRKVCv8a6t" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4U_yxogCcGI" resolve="tellUni" />
                <node concept="37vLTw" id="4JRKVCv8a6u" role="37wK5m">
                  <ref role="3cqZAo" node="4JRKVCv8a6f" resolve="expect" />
                </node>
                <node concept="37vLTw" id="4JRKVCv8a6v" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKGALTu" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7t5VLKGALTP" role="3s_gse">
        <property role="3s$Bm0" value="lub_list_list" />
        <node concept="3cqZAl" id="7t5VLKGALTQ" role="3clF45" />
        <node concept="3Tm1VV" id="7t5VLKGALTR" role="1B3o_S" />
        <node concept="3clFbS" id="7t5VLKGALTS" role="3clF47">
          <node concept="3cpWs8" id="7t5VLKGALTT" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALTU" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="7t5VLKGALTV" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALTW" role="33vP2m">
                <node concept="1oi5ST" id="3t7_2FgGZ_3" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgGZ_4" role="1oi5TL">
                    <node concept="1oi5ST" id="3t7_2FgGZ_5" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgGZ_6" role="1oi5TL">
                        <node concept="1oi5UN" id="3t7_2FgGZ_7" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgGZ_8" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgGZ_9" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgGZ_a" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgGZ_b" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgGZ_c" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgGZ_d" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgGZ_e" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgGZ_f" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgGZ_g" role="1oi5zu">
                              <property role="1oi5yK" value="Iterable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgGZ_h" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgGZ_i" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgGZ_j" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgGZ_k" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgGZ_l" role="1oi5zu">
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
          <node concept="3cpWs8" id="7t5VLKGALUd" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALUe" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="7t5VLKGALUf" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALUg" role="33vP2m">
                <node concept="1oi5ST" id="3t7_2FgGZG8" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgGZG9" role="1oi5TL">
                    <node concept="1oi5ST" id="3t7_2FgGZGa" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgGZGb" role="1oi5TL">
                        <node concept="1oi5UN" id="3t7_2FgGZGc" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgGZGd" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgGZGe" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgGZGf" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgGZGg" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgGZGh" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgGZGi" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgGZGj" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgGZGk" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgGZGl" role="1oi5zu">
                              <property role="1oi5yK" value="Iterable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgGZGm" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgGZGn" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgGZGo" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgGZGp" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgGZGq" role="1oi5zu">
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
          <node concept="3clFbH" id="7t5VLKGALUx" role="3cqZAp" />
          <node concept="3cpWs8" id="7t5VLKGALUy" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALUz" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="7t5VLKGALU$" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="7t5VLKGALU_" role="33vP2m">
                <node concept="1pGfFk" id="7t5VLKGALUA" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="AtomLogical" />
                  <node concept="Xl_RD" id="7t5VLKGALUB" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7t5VLKGALUC" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALUD" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="7t5VLKGALUE" role="1tU5fm" />
              <node concept="2YIFZM" id="7t5VLKGALUF" role="33vP2m">
                <ref role="1Pybhc" to="4r4j:5H6hZahmlon" resolve="LubSolver" />
                <ref role="37wK5l" to="4r4j:5H6hZahmloU" resolve="findLub" />
                <node concept="37vLTw" id="7t5VLKGALUG" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKGALUz" resolve="var" />
                </node>
                <node concept="2ShNRf" id="7t5VLKGALUH" role="37wK5m">
                  <node concept="1pGfFk" id="7t5VLKGALUI" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="7t5VLKGALUJ" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALTU" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="7t5VLKGALUK" role="37wK5m">
                  <node concept="1pGfFk" id="7t5VLKGALUL" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="7t5VLKGALUM" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALUe" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7t5VLKGALUN" role="3cqZAp" />
          <node concept="3vwNmj" id="7t5VLKGALUO" role="3cqZAp">
            <node concept="37vLTw" id="7t5VLKGALUP" role="3vwVQn">
              <ref role="3cqZAo" node="7t5VLKGALUD" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="7t5VLKGALUQ" role="3cqZAp">
            <node concept="2OqwBi" id="7t5VLKGALUR" role="3vwVQn">
              <node concept="37vLTw" id="7t5VLKGALUS" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGALUz" resolve="var" />
              </node>
              <node concept="liA8E" id="7t5VLKGALUT" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7t5VLKGALUU" role="3cqZAp" />
          <node concept="3cpWs8" id="7t5VLKGALUV" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALUW" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="7t5VLKGALUX" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALUY" role="33vP2m">
                <node concept="1oi5ST" id="7t5VLKGALUZ" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgGZHT" role="1oi5TL">
                    <node concept="1oi5UN" id="7t5VLKGALV2" role="KCVpo">
                      <node concept="1oi5Wm" id="7t5VLKGALV3" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="7t5VLKGALV4" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="7t5VLKGALV5" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="7t5VLKGALV6" role="1oi5zu">
                          <property role="1oi5yK" value="List" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7t5VLKGALV7" role="3cqZAp">
            <node concept="2OqwBi" id="7t5VLKGALV8" role="3clFbG">
              <node concept="37vLTw" id="7t5VLKGALV9" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGALSI" resolve="uni" />
              </node>
              <node concept="liA8E" id="7t5VLKGALVa" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4U_yxogCcGI" resolve="tellUni" />
                <node concept="37vLTw" id="7t5VLKGALVb" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKGALUW" resolve="expect" />
                </node>
                <node concept="37vLTw" id="7t5VLKGALVc" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKGALUz" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7t5VLKGALVd" role="3s_gse">
        <property role="3s$Bm0" value="lub_list_iterable" />
        <node concept="3cqZAl" id="7t5VLKGALVe" role="3clF45" />
        <node concept="3Tm1VV" id="7t5VLKGALVf" role="1B3o_S" />
        <node concept="3clFbS" id="7t5VLKGALVg" role="3clF47">
          <node concept="3cpWs8" id="7t5VLKGALVh" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALVi" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="7t5VLKGALVj" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALVk" role="33vP2m">
                <node concept="1oi5ST" id="3t7_2FgH1Hz" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgH1H$" role="1oi5TL">
                    <node concept="1oi5ST" id="3t7_2FgH1H_" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgH1HA" role="1oi5TL">
                        <node concept="1oi5UN" id="3t7_2FgH1HB" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH1HC" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH1HD" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH1HE" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH1HF" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgH1HG" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH1HH" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH1HI" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH1HJ" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH1HK" role="1oi5zu">
                              <property role="1oi5yK" value="Iterable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgH1HL" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH1HM" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH1HN" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH1HO" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH1HP" role="1oi5zu">
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
          <node concept="3cpWs8" id="7t5VLKGALV_" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALVA" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="7t5VLKGALVB" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALVC" role="33vP2m">
                <node concept="1oi5ST" id="3t7_2FgH1Jc" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgH1Jd" role="1oi5TL">
                    <node concept="1oi5ST" id="3t7_2FgH1Je" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgH1Jf" role="1oi5TL">
                        <node concept="1oi5UN" id="3t7_2FgH1Jg" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH1Jh" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH1Ji" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH1Jj" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH1Jk" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgH1Jl" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH1Jm" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH1Jn" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH1Jo" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH1Jp" role="1oi5zu">
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
          <node concept="3clFbH" id="7t5VLKGALVO" role="3cqZAp" />
          <node concept="3cpWs8" id="7t5VLKGALVP" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALVQ" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="7t5VLKGALVR" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="7t5VLKGALVS" role="33vP2m">
                <node concept="1pGfFk" id="7t5VLKGALVT" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="AtomLogical" />
                  <node concept="Xl_RD" id="7t5VLKGALVU" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7t5VLKGALVV" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALVW" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="7t5VLKGALVX" role="1tU5fm" />
              <node concept="2YIFZM" id="7t5VLKGALVY" role="33vP2m">
                <ref role="1Pybhc" to="4r4j:5H6hZahmlon" resolve="LubSolver" />
                <ref role="37wK5l" to="4r4j:5H6hZahmloU" resolve="findLub" />
                <node concept="37vLTw" id="7t5VLKGALVZ" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKGALVQ" resolve="var" />
                </node>
                <node concept="2ShNRf" id="7t5VLKGALW0" role="37wK5m">
                  <node concept="1pGfFk" id="7t5VLKGALW1" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="7t5VLKGALW2" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALVi" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="7t5VLKGALW3" role="37wK5m">
                  <node concept="1pGfFk" id="7t5VLKGALW4" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="7t5VLKGALW5" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALVA" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7t5VLKGALW6" role="3cqZAp" />
          <node concept="3vwNmj" id="7t5VLKGALW7" role="3cqZAp">
            <node concept="37vLTw" id="7t5VLKGALW8" role="3vwVQn">
              <ref role="3cqZAo" node="7t5VLKGALVW" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="7t5VLKGALW9" role="3cqZAp">
            <node concept="2OqwBi" id="7t5VLKGALWa" role="3vwVQn">
              <node concept="37vLTw" id="7t5VLKGALWb" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGALVQ" resolve="var" />
              </node>
              <node concept="liA8E" id="7t5VLKGALWc" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7t5VLKGALWd" role="3cqZAp" />
          <node concept="3cpWs8" id="7t5VLKGALWe" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALWf" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="7t5VLKGALWg" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALWh" role="33vP2m">
                <node concept="1oi5ST" id="7t5VLKGALWi" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgH1L7" role="1oi5TL">
                    <node concept="1oi5UN" id="7t5VLKGALWl" role="KCVpo">
                      <node concept="1oi5Wm" id="7t5VLKGALWm" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="7t5VLKGALWn" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="7t5VLKGALWo" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="7t5VLKGALWp" role="1oi5zu">
                          <property role="1oi5yK" value="Iterable" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7t5VLKGALWq" role="3cqZAp">
            <node concept="2OqwBi" id="7t5VLKGALWr" role="3clFbG">
              <node concept="37vLTw" id="7t5VLKGALWs" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGALSI" resolve="uni" />
              </node>
              <node concept="liA8E" id="7t5VLKGALWt" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4U_yxogCcGI" resolve="tellUni" />
                <node concept="37vLTw" id="7t5VLKGALWu" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKGALWf" resolve="expect" />
                </node>
                <node concept="37vLTw" id="7t5VLKGALWv" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKGALVQ" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7t5VLKGALWw" role="3s_gse">
        <property role="3s$Bm0" value="lub_list_abstractList" />
        <node concept="3cqZAl" id="7t5VLKGALWx" role="3clF45" />
        <node concept="3Tm1VV" id="7t5VLKGALWy" role="1B3o_S" />
        <node concept="3clFbS" id="7t5VLKGALWz" role="3clF47">
          <node concept="3cpWs8" id="7t5VLKGALW$" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALW_" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="7t5VLKGALWA" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALWB" role="33vP2m">
                <node concept="1oi5ST" id="3t7_2FgH3LN" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgH3LO" role="1oi5TL">
                    <node concept="1oi5ST" id="3t7_2FgH3LP" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgH3LQ" role="1oi5TL">
                        <node concept="1oi5UN" id="3t7_2FgH3LR" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH3LS" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH3LT" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH3LU" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH3LV" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgH3LW" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH3LX" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH3LY" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH3LZ" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH3M0" role="1oi5zu">
                              <property role="1oi5yK" value="Iterable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgH3M1" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH3M2" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH3M3" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH3M4" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH3M5" role="1oi5zu">
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
          <node concept="3cpWs8" id="7t5VLKGALWS" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALWT" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="7t5VLKGALWU" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALWV" role="33vP2m">
                <node concept="1oi5ST" id="3t7_2FgH3SN" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgH3SO" role="1oi5TL">
                    <node concept="1oi5ST" id="3t7_2FgH3SP" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgH3SQ" role="1oi5TL">
                        <node concept="1oi5UN" id="3t7_2FgH3SR" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH3SS" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH3ST" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH3SU" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH3SV" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgH3SW" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH3SX" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH3SY" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH3SZ" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH3T0" role="1oi5zu">
                              <property role="1oi5yK" value="Iterable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgH3T1" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH3T2" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH3T3" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH3T4" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH3T5" role="1oi5zu">
                              <property role="1oi5yK" value="List" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgH3T6" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH3T7" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH3T8" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH3T9" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH3Ta" role="1oi5zu">
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
          <node concept="3clFbH" id="7t5VLKGALXh" role="3cqZAp" />
          <node concept="3cpWs8" id="7t5VLKGALXi" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALXj" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="7t5VLKGALXk" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="7t5VLKGALXl" role="33vP2m">
                <node concept="1pGfFk" id="7t5VLKGALXm" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="AtomLogical" />
                  <node concept="Xl_RD" id="7t5VLKGALXn" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7t5VLKGALXo" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALXp" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="7t5VLKGALXq" role="1tU5fm" />
              <node concept="2YIFZM" id="7t5VLKGALXr" role="33vP2m">
                <ref role="1Pybhc" to="4r4j:5H6hZahmlon" resolve="LubSolver" />
                <ref role="37wK5l" to="4r4j:5H6hZahmloU" resolve="findLub" />
                <node concept="37vLTw" id="7t5VLKGALXs" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKGALXj" resolve="var" />
                </node>
                <node concept="2ShNRf" id="7t5VLKGALXt" role="37wK5m">
                  <node concept="1pGfFk" id="7t5VLKGALXu" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="7t5VLKGALXv" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALW_" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="7t5VLKGALXw" role="37wK5m">
                  <node concept="1pGfFk" id="7t5VLKGALXx" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="7t5VLKGALXy" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALWT" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7t5VLKGALXz" role="3cqZAp" />
          <node concept="3vwNmj" id="7t5VLKGALX$" role="3cqZAp">
            <node concept="37vLTw" id="7t5VLKGALX_" role="3vwVQn">
              <ref role="3cqZAo" node="7t5VLKGALXp" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="7t5VLKGALXA" role="3cqZAp">
            <node concept="2OqwBi" id="7t5VLKGALXB" role="3vwVQn">
              <node concept="37vLTw" id="7t5VLKGALXC" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGALXj" resolve="var" />
              </node>
              <node concept="liA8E" id="7t5VLKGALXD" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7t5VLKGALXE" role="3cqZAp" />
          <node concept="3cpWs8" id="7t5VLKGALXF" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALXG" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="7t5VLKGALXH" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALXI" role="33vP2m">
                <node concept="1oi5ST" id="7t5VLKGALXJ" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgH3YN" role="1oi5TL">
                    <node concept="1oi5UN" id="7t5VLKGALXM" role="KCVpo">
                      <node concept="1oi5Wm" id="7t5VLKGALXN" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="7t5VLKGALXO" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="7t5VLKGALXP" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="7t5VLKGALXQ" role="1oi5zu">
                          <property role="1oi5yK" value="List" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7t5VLKGALXR" role="3cqZAp">
            <node concept="2OqwBi" id="7t5VLKGALXS" role="3clFbG">
              <node concept="37vLTw" id="7t5VLKGALXT" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGALSI" resolve="uni" />
              </node>
              <node concept="liA8E" id="7t5VLKGALXU" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4U_yxogCcGI" resolve="tellUni" />
                <node concept="37vLTw" id="7t5VLKGALXV" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKGALXG" resolve="expect" />
                </node>
                <node concept="37vLTw" id="7t5VLKGALXW" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKGALXj" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7t5VLKGALXX" role="3s_gse">
        <property role="3s$Bm0" value="lub_string_integer" />
        <node concept="3cqZAl" id="7t5VLKGALXY" role="3clF45" />
        <node concept="3Tm1VV" id="7t5VLKGALXZ" role="1B3o_S" />
        <node concept="3clFbS" id="7t5VLKGALY0" role="3clF47">
          <node concept="3cpWs8" id="7t5VLKGALY1" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALY2" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="7t5VLKGALY3" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALY4" role="33vP2m">
                <node concept="1oi5ST" id="7t5VLKGALY5" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgH5ZX" role="1oi5TL">
                    <node concept="1oi5ST" id="3t7_2FgH60A" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="7t5VLKGALYa" role="1oi5TL">
                        <node concept="1oi5UN" id="4JRKVCv2hzS" role="KCVpo">
                          <node concept="1oi5Wm" id="4JRKVCv2hzT" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4JRKVCv2hzU" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="4JRKVCv2hzV" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="4JRKVCv2hzW" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALYb" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALYc" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALYd" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALYe" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALYf" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALYg" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALYh" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALYi" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALYj" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALYk" role="1oi5zu">
                              <property role="1oi5yK" value="String" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="7t5VLKGALYl" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="7t5VLKGALYn" role="1oi5TL">
                        <node concept="1oi5UN" id="4JRKVCv2h$c" role="KCVpo">
                          <node concept="1oi5Wm" id="4JRKVCv2h$d" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4JRKVCv2h$e" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="4JRKVCv2h$f" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="4JRKVCv2h$g" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALYo" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALYp" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALYq" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALYr" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALYs" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALYt" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALYu" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALYv" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALYw" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALYx" role="1oi5zu">
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
          <node concept="3cpWs8" id="7t5VLKGALYy" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALYz" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="7t5VLKGALY$" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALY_" role="33vP2m">
                <node concept="1oi5ST" id="7t5VLKGALYA" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="7t5VLKGALYC" role="1oi5TL">
                    <node concept="1oi5ST" id="7t5VLKGALYD" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="7t5VLKGALYF" role="1oi5TL">
                        <node concept="1oi5UN" id="4JRKVCv2h$w" role="KCVpo">
                          <node concept="1oi5Wm" id="4JRKVCv2h$x" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4JRKVCv2h$y" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="4JRKVCv2h$z" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="4JRKVCv2h$$" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALYG" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALYH" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALYI" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALYJ" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALYK" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALYL" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALYM" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALYN" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALYO" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALYP" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALYQ" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALYR" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALYS" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALYT" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALYU" role="1oi5zu">
                              <property role="1oi5yK" value="Integer" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="7t5VLKGALYV" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="7t5VLKGALYX" role="1oi5TL">
                        <node concept="1oi5UN" id="4JRKVCv2h$T" role="KCVpo">
                          <node concept="1oi5Wm" id="4JRKVCv2h$U" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4JRKVCv2h$V" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="4JRKVCv2h$W" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="4JRKVCv2h$X" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALYY" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALYZ" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALZ0" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALZ1" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALZ2" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALZ3" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALZ4" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALZ5" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALZ6" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALZ7" role="1oi5zu">
                              <property role="1oi5yK" value="Integer" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="7t5VLKGALZ8" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="7t5VLKGALZa" role="1oi5TL">
                        <node concept="1oi5UN" id="4JRKVCv2h_d" role="KCVpo">
                          <node concept="1oi5Wm" id="4JRKVCv2h_e" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4JRKVCv2h_f" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="4JRKVCv2h_g" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="4JRKVCv2h_h" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALZb" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALZc" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALZd" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALZe" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALZf" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALZg" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALZh" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALZi" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALZj" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALZk" role="1oi5zu">
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
          <node concept="3clFbH" id="7t5VLKGALZl" role="3cqZAp" />
          <node concept="3cpWs8" id="7t5VLKGALZm" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALZn" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="7t5VLKGALZo" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="7t5VLKGALZp" role="33vP2m">
                <node concept="1pGfFk" id="7t5VLKGALZq" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="AtomLogical" />
                  <node concept="Xl_RD" id="7t5VLKGALZr" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7t5VLKGALZs" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALZt" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="7t5VLKGALZu" role="1tU5fm" />
              <node concept="2YIFZM" id="7t5VLKGALZv" role="33vP2m">
                <ref role="1Pybhc" to="4r4j:5H6hZahmlon" resolve="LubSolver" />
                <ref role="37wK5l" to="4r4j:5H6hZahmloU" resolve="findLub" />
                <node concept="37vLTw" id="7t5VLKGALZw" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKGALZn" resolve="var" />
                </node>
                <node concept="2ShNRf" id="7t5VLKGALZx" role="37wK5m">
                  <node concept="1pGfFk" id="7t5VLKGALZy" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="7t5VLKGALZz" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALY2" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="7t5VLKGALZ$" role="37wK5m">
                  <node concept="1pGfFk" id="7t5VLKGALZ_" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="7t5VLKGALZA" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALYz" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7t5VLKGALZB" role="3cqZAp" />
          <node concept="3vwNmj" id="7t5VLKGALZC" role="3cqZAp">
            <node concept="37vLTw" id="7t5VLKGALZD" role="3vwVQn">
              <ref role="3cqZAo" node="7t5VLKGALZt" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="7t5VLKGALZE" role="3cqZAp">
            <node concept="2OqwBi" id="7t5VLKGALZF" role="3vwVQn">
              <node concept="37vLTw" id="7t5VLKGALZG" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGALZn" resolve="var" />
              </node>
              <node concept="liA8E" id="7t5VLKGALZH" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7t5VLKGALZI" role="3cqZAp" />
          <node concept="3cpWs8" id="7t5VLKGALZJ" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALZK" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="7t5VLKGALZL" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALZM" role="33vP2m">
                <node concept="1oi5ST" id="7t5VLKGALZN" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="7t5VLKGALZP" role="1oi5TL">
                    <node concept="1oi5UN" id="7t5VLKGALZQ" role="KCVpo">
                      <node concept="1oi5Wm" id="7t5VLKGALZR" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="7t5VLKGALZS" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="7t5VLKGALZT" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="7t5VLKGALZU" role="1oi5zu">
                          <property role="1oi5yK" value="Serializable" />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="7t5VLKGALZV" role="KCVpo">
                      <node concept="1oi5Wm" id="7t5VLKGALZW" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="7t5VLKGALZX" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="7t5VLKGALZY" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="7t5VLKGALZZ" role="1oi5zu">
                          <property role="1oi5yK" value="Comparable" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7t5VLKGAM00" role="3cqZAp">
            <node concept="2OqwBi" id="7t5VLKGAM01" role="3clFbG">
              <node concept="37vLTw" id="7t5VLKGAM02" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGALSI" resolve="uni" />
              </node>
              <node concept="liA8E" id="7t5VLKGAM03" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4U_yxogCcGI" resolve="tellUni" />
                <node concept="37vLTw" id="7t5VLKGAM04" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKGALZK" resolve="expect" />
                </node>
                <node concept="37vLTw" id="7t5VLKGAM05" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKGALZn" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

