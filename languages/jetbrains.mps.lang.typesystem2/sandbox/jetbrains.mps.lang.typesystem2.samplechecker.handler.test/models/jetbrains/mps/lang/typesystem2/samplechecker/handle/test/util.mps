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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
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
      <node concept="3s$Bmu" id="3hfdu5cNgqx" role="3s_gse">
        <property role="3s$Bm0" value="lub_boxed_boxed" />
        <node concept="3cqZAl" id="3hfdu5cNgqy" role="3clF45" />
        <node concept="3Tm1VV" id="3hfdu5cNgqz" role="1B3o_S" />
        <node concept="3clFbS" id="3hfdu5cNgq$" role="3clF47">
          <node concept="3SKdUt" id="4kzL_z3qz1z" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qz6r" role="3SKWNk">
              <property role="3SKdUp" value="the tests boxed_boxed, boxed_prim, and prim_prim are in fact identical for now" />
            </node>
          </node>
          <node concept="3SKdUt" id="4kzL_z3qzd1" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qzi4" role="3SKWNk">
              <property role="3SKdUp" value="this is because the boxed types behave differently from ordinary classifier types" />
            </node>
          </node>
          <node concept="3SKdUt" id="4kzL_z3qzoG" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qztL" role="3SKWNk">
              <property role="3SKdUp" value="for example, lub(Long,Double)=double" />
            </node>
          </node>
          <node concept="3clFbH" id="4kzL_z3qzDL" role="3cqZAp" />
          <node concept="3cpWs8" id="3hfdu5cNgq_" role="3cqZAp">
            <node concept="3cpWsn" id="3hfdu5cNgqA" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="3hfdu5cNgqB" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3hfdu5cNgqC" role="33vP2m">
                <node concept="1oi5ST" id="3hfdu5cNgqD" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3hfdu5cNgqE" role="1oi5TL">
                    <node concept="1oi5ST" id="3KV3FXk2m2G" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2m2H" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXk2m2I" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2m2J" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2m2K" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2m2L" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2m2M" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2m2N" role="1oi5zu">
                              <property role="1oi5yK" value="FloatType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2m2O" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2m2P" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2m2Q" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3hfdu5cNgZy" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cNgVC" role="1oi5TL">
                        <node concept="1oi5UN" id="3hfdu5cNgVD" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNgVE" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNgVF" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cNgVG" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cNgVH" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNgVI" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNgVJ" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNgVK" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cNgVL" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cNgVM" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNgVN" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNgVO" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNgVP" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cNgVQ" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cNgVR" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="4kzL_z3qyf$" role="KCVpo">
                          <node concept="1oi5Wm" id="4kzL_z3qyf_" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4kzL_z3qyfA" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3hfdu5cNgqF" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cNgqG" role="1oi5TL">
                        <node concept="1oi5UN" id="3hfdu5cNgqH" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNgqI" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNgqJ" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cNgqK" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cNgqL" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNgqM" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNgqN" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNgqO" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cNgqP" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cNgqQ" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNgqR" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNgqS" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNgqT" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cNgqU" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cNgqV" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNgTf" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNgTg" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNgTh" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cNgTi" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cNgTj" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="4kzL_z3qyfT" role="KCVpo">
                          <node concept="1oi5Wm" id="4kzL_z3qyfU" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4kzL_z3qyfV" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
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
          <node concept="3cpWs8" id="3hfdu5cNgrd" role="3cqZAp">
            <node concept="3cpWsn" id="3hfdu5cNgre" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="3hfdu5cNgrf" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3hfdu5cNgrg" role="33vP2m">
                <node concept="1oi5ST" id="3hfdu5cNgrh" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3hfdu5cNgri" role="1oi5TL">
                    <node concept="1oi5ST" id="3hfdu5cNhaJ" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cNhbE" role="1oi5TL">
                        <node concept="1oi5UN" id="3hfdu5cNAgM" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNAgN" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNAgO" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNAil" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNAim" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNAin" role="1oi5zu">
                              <property role="1oi5yK" value="FloatType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNhbV" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNhbW" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNhbX" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNhc4" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNhc5" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNhc6" role="1oi5zu">
                              <property role="1oi5yK" value="IntegerType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2pms" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2pmt" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2pmu" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2pmv" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2pmw" role="1oi5zu">
                              <property role="1oi5yK" value="Integer" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3KV3FXk2mIQ" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2mIR" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXk2mIS" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2mIT" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2mIU" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2mIV" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2mIW" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2mIX" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2mIY" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2mIZ" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2mJ0" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2mJ1" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2mJ2" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2mJ3" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2mJ4" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2mJ5" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2mJ6" role="1oi5zu">
                              <property role="1oi5yK" value="Integer" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3KV3FXk2mJo" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2mJp" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXk2mJq" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2mJr" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2mJs" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2mJt" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2mJu" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2mJv" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2mJw" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2mJx" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2mJy" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2mJz" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2mJ$" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2mJ_" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2mJA" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2mJB" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2mJC" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2mJD" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2mJE" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2mJF" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2mJG" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2mJH" role="1oi5zu">
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
          <node concept="3clFbH" id="3hfdu5cNgsb" role="3cqZAp" />
          <node concept="3cpWs8" id="3hfdu5cNgsc" role="3cqZAp">
            <node concept="3cpWsn" id="3hfdu5cNgsd" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="3hfdu5cNgse" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="3hfdu5cNgsf" role="33vP2m">
                <node concept="1pGfFk" id="3hfdu5cNgsg" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="AtomLogical" />
                  <node concept="Xl_RD" id="3hfdu5cNgsh" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3hfdu5cNgsi" role="3cqZAp">
            <node concept="3cpWsn" id="3hfdu5cNgsj" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="3hfdu5cNgsk" role="1tU5fm" />
              <node concept="2YIFZM" id="3hfdu5cNgsl" role="33vP2m">
                <ref role="1Pybhc" to="4r4j:5H6hZahmlon" resolve="LubSolver" />
                <ref role="37wK5l" to="4r4j:5H6hZahmloU" resolve="findLub" />
                <node concept="37vLTw" id="3hfdu5cNgsm" role="37wK5m">
                  <ref role="3cqZAo" node="3hfdu5cNgsd" resolve="var" />
                </node>
                <node concept="2ShNRf" id="3hfdu5cNgsn" role="37wK5m">
                  <node concept="1pGfFk" id="3hfdu5cNgso" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="3hfdu5cNgsp" role="37wK5m">
                      <ref role="3cqZAo" node="3hfdu5cNgqA" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="3hfdu5cNgsq" role="37wK5m">
                  <node concept="1pGfFk" id="3hfdu5cNgsr" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="3hfdu5cNgss" role="37wK5m">
                      <ref role="3cqZAo" node="3hfdu5cNgre" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3hfdu5cNgst" role="3cqZAp" />
          <node concept="3vwNmj" id="3hfdu5cNgsu" role="3cqZAp">
            <node concept="37vLTw" id="3hfdu5cNgsv" role="3vwVQn">
              <ref role="3cqZAo" node="3hfdu5cNgsj" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="3hfdu5cNgsw" role="3cqZAp">
            <node concept="2OqwBi" id="3hfdu5cNgsx" role="3vwVQn">
              <node concept="37vLTw" id="3hfdu5cNgsy" role="2Oq$k0">
                <ref role="3cqZAo" node="3hfdu5cNgsd" resolve="var" />
              </node>
              <node concept="liA8E" id="3hfdu5cNgsz" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3hfdu5cNgs$" role="3cqZAp" />
          <node concept="3cpWs8" id="3hfdu5cNgs_" role="3cqZAp">
            <node concept="3cpWsn" id="3hfdu5cNgsA" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="3hfdu5cNgsB" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3hfdu5cNgsC" role="33vP2m">
                <node concept="1oi5ST" id="3hfdu5cNgsD" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3hfdu5cNgsE" role="1oi5TL">
                    <node concept="1oi5UN" id="3KV3FXk2o5M" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXk2o5N" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXk2o5O" role="1oi5zu">
                          <property role="1oi5yK" value="LongType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3hfdu5cNgsP" role="3cqZAp">
            <node concept="2OqwBi" id="3hfdu5cNgsQ" role="3clFbG">
              <node concept="37vLTw" id="3hfdu5cNgsR" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGALSI" resolve="uni" />
              </node>
              <node concept="liA8E" id="3hfdu5cNgsS" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4U_yxogCcGI" resolve="tellUni" />
                <node concept="37vLTw" id="3hfdu5cNgsT" role="37wK5m">
                  <ref role="3cqZAo" node="3hfdu5cNgsA" resolve="expect" />
                </node>
                <node concept="37vLTw" id="3hfdu5cNgsU" role="37wK5m">
                  <ref role="3cqZAo" node="3hfdu5cNgsd" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3KV3FXk2oHI" role="3s_gse">
        <property role="3s$Bm0" value="lub_boxed_prim" />
        <node concept="3cqZAl" id="3KV3FXk2oHJ" role="3clF45" />
        <node concept="3Tm1VV" id="3KV3FXk2oHK" role="1B3o_S" />
        <node concept="3clFbS" id="3KV3FXk2oHL" role="3clF47">
          <node concept="3SKdUt" id="4kzL_z3qz$g" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qz$h" role="3SKWNk">
              <property role="3SKdUp" value="the tests boxed_boxed, boxed_prim, and prim_prim are in fact identical for now" />
            </node>
          </node>
          <node concept="3SKdUt" id="4kzL_z3qz$i" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qz$j" role="3SKWNk">
              <property role="3SKdUp" value="this is because the boxed types behave differently from ordinary classifier types" />
            </node>
          </node>
          <node concept="3SKdUt" id="4kzL_z3qz$k" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qz$l" role="3SKWNk">
              <property role="3SKdUp" value="for example, lub(Long,Double)=double" />
            </node>
          </node>
          <node concept="3clFbH" id="4kzL_z3qzv8" role="3cqZAp" />
          <node concept="3cpWs8" id="3KV3FXk2oHM" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk2oHN" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="3KV3FXk2oHO" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk2oHP" role="33vP2m">
                <node concept="1oi5ST" id="3KV3FXk2oHQ" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXk2oHR" role="1oi5TL">
                    <node concept="1oi5ST" id="3KV3FXk2oHS" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2oHT" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXk2oHU" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oHV" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oHW" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oHX" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oHY" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oHZ" role="1oi5zu">
                              <property role="1oi5yK" value="FloatType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oI0" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oI1" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oI2" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3KV3FXk2oI8" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2oI9" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXk2oIa" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIb" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIc" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oId" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oIe" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oIf" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIg" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIh" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIi" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oIj" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oIk" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIl" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIm" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIn" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oIo" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="4kzL_z3q$$G" role="KCVpo">
                          <node concept="1oi5Wm" id="4kzL_z3q$$H" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4kzL_z3q$$I" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3KV3FXk2oIp" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2oIq" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXk2oIr" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIs" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIt" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIu" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oIv" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oIw" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIx" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIy" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIz" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oI$" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oI_" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIA" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIB" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIC" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oID" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="4kzL_z3q$_1" role="KCVpo">
                          <node concept="1oi5Wm" id="4kzL_z3q$_2" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4kzL_z3q$_3" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3KV3FXk2oIE" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2oIF" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXk2oIG" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIH" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oII" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIJ" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oIK" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oIL" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIM" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIN" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIO" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oIP" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oIQ" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIR" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIS" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIT" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oIU" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oIV" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIW" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIX" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIY" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oIZ" role="1oi5zu">
                              <property role="1oi5yK" value="Double" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="4kzL_z3q$_m" role="KCVpo">
                          <node concept="1oi5Wm" id="4kzL_z3q$_n" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4kzL_z3q$_o" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
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
          <node concept="3cpWs8" id="3KV3FXk2oJ0" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk2oJ1" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="3KV3FXk2oJ2" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk2oJ3" role="33vP2m">
                <node concept="1oi5ST" id="3KV3FXk2oJ4" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXk2oJ5" role="1oi5TL">
                    <node concept="1oi5ST" id="3KV3FXk2oJ6" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2oJ7" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXk2oJ8" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJ9" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJa" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJb" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJc" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJd" role="1oi5zu">
                              <property role="1oi5yK" value="FloatType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJe" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJf" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJg" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJh" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJi" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJj" role="1oi5zu">
                              <property role="1oi5yK" value="IntegerType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3KV3FXk2oJk" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2oJl" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXk2oJm" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJn" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJo" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oJp" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oJq" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJr" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJs" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJt" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oJu" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oJv" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJw" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJx" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJy" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oJz" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oJ$" role="1oi5zu">
                              <property role="1oi5yK" value="Integer" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJ_" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJA" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJB" role="1oi5zu">
                              <property role="1oi5yK" value="IntegerType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3KV3FXk2oJC" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2oJD" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXk2oJE" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJF" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJG" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oJH" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oJI" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJJ" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJK" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJL" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oJM" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oJN" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJO" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJP" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJQ" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oJR" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oJS" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJT" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJU" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJV" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oJW" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oJX" role="1oi5zu">
                              <property role="1oi5yK" value="Integer" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJY" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJZ" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oK0" role="1oi5zu">
                              <property role="1oi5yK" value="IntegerType" />
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
          <node concept="3clFbH" id="3KV3FXk2oK1" role="3cqZAp" />
          <node concept="3cpWs8" id="3KV3FXk2oK2" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk2oK3" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="3KV3FXk2oK4" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="3KV3FXk2oK5" role="33vP2m">
                <node concept="1pGfFk" id="3KV3FXk2oK6" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="AtomLogical" />
                  <node concept="Xl_RD" id="3KV3FXk2oK7" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3KV3FXk2oK8" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk2oK9" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="3KV3FXk2oKa" role="1tU5fm" />
              <node concept="2YIFZM" id="3KV3FXk2oKb" role="33vP2m">
                <ref role="1Pybhc" to="4r4j:5H6hZahmlon" resolve="LubSolver" />
                <ref role="37wK5l" to="4r4j:5H6hZahmloU" resolve="findLub" />
                <node concept="37vLTw" id="3KV3FXk2oKc" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXk2oK3" resolve="var" />
                </node>
                <node concept="2ShNRf" id="3KV3FXk2oKd" role="37wK5m">
                  <node concept="1pGfFk" id="3KV3FXk2oKe" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="3KV3FXk2oKf" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXk2oHN" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="3KV3FXk2oKg" role="37wK5m">
                  <node concept="1pGfFk" id="3KV3FXk2oKh" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="3KV3FXk2oKi" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXk2oJ1" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXk2oKj" role="3cqZAp" />
          <node concept="3vwNmj" id="3KV3FXk2oKk" role="3cqZAp">
            <node concept="37vLTw" id="3KV3FXk2oKl" role="3vwVQn">
              <ref role="3cqZAo" node="3KV3FXk2oK9" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="3KV3FXk2oKm" role="3cqZAp">
            <node concept="2OqwBi" id="3KV3FXk2oKn" role="3vwVQn">
              <node concept="37vLTw" id="3KV3FXk2oKo" role="2Oq$k0">
                <ref role="3cqZAo" node="3KV3FXk2oK3" resolve="var" />
              </node>
              <node concept="liA8E" id="3KV3FXk2oKp" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXk2oKq" role="3cqZAp" />
          <node concept="3cpWs8" id="3KV3FXk2oKr" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk2oKs" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="3KV3FXk2oKt" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk2oKu" role="33vP2m">
                <node concept="1oi5ST" id="3KV3FXk2oKv" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXk2oKw" role="1oi5TL">
                    <node concept="1oi5UN" id="3KV3FXk2oKx" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXk2oKy" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXk2oKz" role="1oi5zu">
                          <property role="1oi5yK" value="LongType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3KV3FXk2oK$" role="3cqZAp">
            <node concept="2OqwBi" id="3KV3FXk2oK_" role="3clFbG">
              <node concept="37vLTw" id="3KV3FXk2oKA" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGALSI" resolve="uni" />
              </node>
              <node concept="liA8E" id="3KV3FXk2oKB" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4U_yxogCcGI" resolve="tellUni" />
                <node concept="37vLTw" id="3KV3FXk2oKC" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXk2oKs" resolve="expect" />
                </node>
                <node concept="37vLTw" id="3KV3FXk2oKD" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXk2oK3" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3hfdu5cN_JR" role="3s_gse">
        <property role="3s$Bm0" value="lub_primitive_primitive" />
        <node concept="3cqZAl" id="3hfdu5cN_JS" role="3clF45" />
        <node concept="3Tm1VV" id="3hfdu5cN_JT" role="1B3o_S" />
        <node concept="3clFbS" id="3hfdu5cN_JU" role="3clF47">
          <node concept="3SKdUt" id="4kzL_z3qzNA" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qzNB" role="3SKWNk">
              <property role="3SKdUp" value="the tests boxed_boxed, boxed_prim, and prim_prim are in fact identical for now" />
            </node>
          </node>
          <node concept="3SKdUt" id="4kzL_z3qzNC" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qzND" role="3SKWNk">
              <property role="3SKdUp" value="this is because the boxed types behave differently from ordinary classifier types" />
            </node>
          </node>
          <node concept="3SKdUt" id="4kzL_z3qzNE" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qzNF" role="3SKWNk">
              <property role="3SKdUp" value="for example, lub(Long,Double)=double" />
            </node>
          </node>
          <node concept="3clFbH" id="4kzL_z3qzIR" role="3cqZAp" />
          <node concept="3cpWs8" id="3hfdu5cN_JV" role="3cqZAp">
            <node concept="3cpWsn" id="3hfdu5cN_JW" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="3hfdu5cN_JX" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3hfdu5cN_JY" role="33vP2m">
                <node concept="1oi5ST" id="3hfdu5cN_JZ" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3hfdu5cN_K0" role="1oi5TL">
                    <node concept="1oi5ST" id="3hfdu5cNAeo" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cNAep" role="1oi5TL">
                        <node concept="1oi5UN" id="3hfdu5cNAgi" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNAgj" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNAgk" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNAhR" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNAhS" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNAhT" role="1oi5zu">
                              <property role="1oi5yK" value="FloatType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNAet" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNAeu" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNAev" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3hfdu5cN_K1" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cN_K2" role="1oi5TL">
                        <node concept="1oi5UN" id="3hfdu5cN_K3" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_K4" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_K5" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_K6" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_K7" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_K8" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_K9" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Ka" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_Kb" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_Kc" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_Kd" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_Ke" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Kf" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_Kg" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_Kh" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjZ5jx" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjZ5jy" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjZ5jz" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3hfdu5cN_Kz" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cN_K$" role="1oi5TL">
                        <node concept="1oi5UN" id="3hfdu5cN_K_" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_KA" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_KB" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_KC" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_KD" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_KE" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_KF" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_KG" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_KH" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_KI" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_KJ" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_KK" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_KL" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_KM" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_KN" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_KO" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_KP" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_KQ" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_KR" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_KS" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjZ5k$" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjZ5k_" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjZ5kA" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
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
          <node concept="3cpWs8" id="3hfdu5cN_KT" role="3cqZAp">
            <node concept="3cpWsn" id="3hfdu5cN_KU" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="3hfdu5cN_KV" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3hfdu5cN_KW" role="33vP2m">
                <node concept="1oi5ST" id="3hfdu5cN_KX" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3hfdu5cN_KY" role="1oi5TL">
                    <node concept="1oi5ST" id="3hfdu5cN_KZ" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cN_L0" role="1oi5TL">
                        <node concept="1oi5UN" id="3hfdu5cN_L4" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_L5" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_L6" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3hfdu5cN_La" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cN_Lb" role="1oi5TL">
                        <node concept="1oi5UN" id="3hfdu5cN_Lc" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_Ld" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Le" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_Lf" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_Lg" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_Lh" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_Li" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Lj" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_Lk" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_Ll" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_Lm" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_Ln" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Lo" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_Lp" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_Lq" role="1oi5zu">
                              <property role="1oi5yK" value="Double" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_Lw" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_Lx" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Ly" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3hfdu5cN_LW" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cN_LX" role="1oi5TL">
                        <node concept="1oi5UN" id="3hfdu5cN_LY" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_LZ" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_M0" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_M1" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_M2" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_M3" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_M4" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_M5" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_M6" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_M7" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_M8" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_M9" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Ma" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_Mb" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_Mc" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_Md" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_Me" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Mf" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_Mg" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_Mh" role="1oi5zu">
                              <property role="1oi5yK" value="Double" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_Mn" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_Mo" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Mp" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
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
          <node concept="3clFbH" id="3hfdu5cN_Mq" role="3cqZAp" />
          <node concept="3cpWs8" id="3hfdu5cN_Mr" role="3cqZAp">
            <node concept="3cpWsn" id="3hfdu5cN_Ms" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="3hfdu5cN_Mt" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="3hfdu5cN_Mu" role="33vP2m">
                <node concept="1pGfFk" id="3hfdu5cN_Mv" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="AtomLogical" />
                  <node concept="Xl_RD" id="3hfdu5cN_Mw" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3hfdu5cN_Mx" role="3cqZAp">
            <node concept="3cpWsn" id="3hfdu5cN_My" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="3hfdu5cN_Mz" role="1tU5fm" />
              <node concept="2YIFZM" id="3hfdu5cN_M$" role="33vP2m">
                <ref role="1Pybhc" to="4r4j:5H6hZahmlon" resolve="LubSolver" />
                <ref role="37wK5l" to="4r4j:5H6hZahmloU" resolve="findLub" />
                <node concept="37vLTw" id="3hfdu5cN_M_" role="37wK5m">
                  <ref role="3cqZAo" node="3hfdu5cN_Ms" resolve="var" />
                </node>
                <node concept="2ShNRf" id="3hfdu5cN_MA" role="37wK5m">
                  <node concept="1pGfFk" id="3hfdu5cN_MB" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="3hfdu5cN_MC" role="37wK5m">
                      <ref role="3cqZAo" node="3hfdu5cN_JW" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="3hfdu5cN_MD" role="37wK5m">
                  <node concept="1pGfFk" id="3hfdu5cN_ME" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="3hfdu5cN_MF" role="37wK5m">
                      <ref role="3cqZAo" node="3hfdu5cN_KU" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3hfdu5cN_MG" role="3cqZAp" />
          <node concept="3vwNmj" id="3hfdu5cN_MH" role="3cqZAp">
            <node concept="37vLTw" id="3hfdu5cN_MI" role="3vwVQn">
              <ref role="3cqZAo" node="3hfdu5cN_My" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="3hfdu5cN_MJ" role="3cqZAp">
            <node concept="2OqwBi" id="3hfdu5cN_MK" role="3vwVQn">
              <node concept="37vLTw" id="3hfdu5cN_ML" role="2Oq$k0">
                <ref role="3cqZAo" node="3hfdu5cN_Ms" resolve="var" />
              </node>
              <node concept="liA8E" id="3hfdu5cN_MM" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3hfdu5cN_MN" role="3cqZAp" />
          <node concept="3cpWs8" id="3hfdu5cN_MO" role="3cqZAp">
            <node concept="3cpWsn" id="3hfdu5cN_MP" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="3hfdu5cN_MQ" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3hfdu5cN_MR" role="33vP2m">
                <node concept="1oi5ST" id="3hfdu5cN_MS" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3hfdu5cN_MT" role="1oi5TL">
                    <node concept="1oi5UN" id="3hfdu5cN_MU" role="KCVpo">
                      <node concept="1oi5Wm" id="3hfdu5cN_MV" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3hfdu5cN_MW" role="1oi5zu">
                          <property role="1oi5yK" value="DoubleType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3hfdu5cN_MZ" role="3cqZAp">
            <node concept="2OqwBi" id="3hfdu5cN_N0" role="3clFbG">
              <node concept="37vLTw" id="3hfdu5cN_N1" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGALSI" resolve="uni" />
              </node>
              <node concept="liA8E" id="3hfdu5cN_N2" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4U_yxogCcGI" resolve="tellUni" />
                <node concept="37vLTw" id="3hfdu5cN_N3" role="37wK5m">
                  <ref role="3cqZAo" node="3hfdu5cN_MP" resolve="expect" />
                </node>
                <node concept="37vLTw" id="3hfdu5cN_N4" role="37wK5m">
                  <ref role="3cqZAo" node="3hfdu5cN_Ms" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3KV3FXjXcp7" role="3s_gse">
        <property role="3s$Bm0" value="lub_primitive_string" />
        <node concept="3cqZAl" id="3KV3FXjXcp8" role="3clF45" />
        <node concept="3Tm1VV" id="3KV3FXjXcp9" role="1B3o_S" />
        <node concept="3clFbS" id="3KV3FXjXcpa" role="3clF47">
          <node concept="3cpWs8" id="3KV3FXjXcpb" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXjXcpc" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="3KV3FXjXcpd" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXjXcpe" role="33vP2m">
                <node concept="1oi5ST" id="3KV3FXjXcpf" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXjXcpg" role="1oi5TL">
                    <node concept="1oi5ST" id="3KV3FXjXcph" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXjXcpi" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXjXcpm" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpn" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpo" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcpp" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpq" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpr" role="1oi5zu">
                              <property role="1oi5yK" value="FloatType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcps" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpt" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpu" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3KV3FXjXcpv" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXjXcpw" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXjXcpx" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpy" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpz" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcp$" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcp_" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcpA" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpB" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpC" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcpD" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcpE" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcpF" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpG" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpH" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcpI" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcpJ" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2lnv" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2lnw" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2lnx" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3KV3FXjXcpK" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXjXcpL" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXjXcpM" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpN" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpO" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcpP" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcpQ" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcpR" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpS" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpT" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcpU" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcpV" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcpW" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpX" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpY" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcpZ" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcq0" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcq1" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcq2" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcq3" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcq4" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcq5" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2lnO" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2lnP" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2lnQ" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
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
          <node concept="3cpWs8" id="3KV3FXjXcq6" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXjXcq7" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="3KV3FXjXcq8" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXjXcq9" role="33vP2m">
                <node concept="1oi5ST" id="3KV3FXjXcqa" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXjXcqb" role="1oi5TL">
                    <node concept="1oi5ST" id="3KV3FXjXcqk" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXjXcql" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXjXcqm" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcqn" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcqo" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcqp" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcqq" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcqr" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcqs" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcqt" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcqu" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcqv" role="1oi5zu">
                              <property role="1oi5yK" value="CharSequence" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcqw" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcqx" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcqy" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcqz" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcq$" role="1oi5zu">
                              <property role="1oi5yK" value="String" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcq_" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcqA" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcqB" role="1oi5zu">
                              <property role="1oi5yK" value="IntegerType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3KV3FXjXcVS" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXjXcVT" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXjXcVU" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcVV" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcVW" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcVX" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcVY" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcVZ" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcW0" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcW1" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcW2" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcW3" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcW4" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcW5" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcW6" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcW7" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcW8" role="1oi5zu">
                              <property role="1oi5yK" value="String" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcW9" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcWa" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcWb" role="1oi5zu">
                              <property role="1oi5yK" value="IntegerType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3KV3FXjXcqC" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXjXcqD" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXjXcqE" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcqF" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcqG" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcqH" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcqI" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcqJ" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcqK" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcqL" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcqM" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcqN" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcqO" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcqP" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcqQ" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcqR" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcqS" role="1oi5zu">
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
          <node concept="3clFbH" id="3KV3FXjXcr1" role="3cqZAp" />
          <node concept="3cpWs8" id="3KV3FXjXcr2" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXjXcr3" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="3KV3FXjXcr4" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="3KV3FXjXcr5" role="33vP2m">
                <node concept="1pGfFk" id="3KV3FXjXcr6" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="AtomLogical" />
                  <node concept="Xl_RD" id="3KV3FXjXcr7" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3KV3FXjXcr8" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXjXcr9" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="3KV3FXjXcra" role="1tU5fm" />
              <node concept="2YIFZM" id="3KV3FXjXcrb" role="33vP2m">
                <ref role="1Pybhc" to="4r4j:5H6hZahmlon" resolve="LubSolver" />
                <ref role="37wK5l" to="4r4j:5H6hZahmloU" resolve="findLub" />
                <node concept="37vLTw" id="3KV3FXjXcrc" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXjXcr3" resolve="var" />
                </node>
                <node concept="2ShNRf" id="3KV3FXjXcrd" role="37wK5m">
                  <node concept="1pGfFk" id="3KV3FXjXcre" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="3KV3FXjXcrf" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXjXcpc" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="3KV3FXjXcrg" role="37wK5m">
                  <node concept="1pGfFk" id="3KV3FXjXcrh" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="3KV3FXjXcri" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXjXcq7" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXjXcrj" role="3cqZAp" />
          <node concept="3vwNmj" id="3KV3FXjXcrk" role="3cqZAp">
            <node concept="37vLTw" id="3KV3FXjXcrl" role="3vwVQn">
              <ref role="3cqZAo" node="3KV3FXjXcr9" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="3KV3FXjXcrm" role="3cqZAp">
            <node concept="2OqwBi" id="3KV3FXjXcrn" role="3vwVQn">
              <node concept="37vLTw" id="3KV3FXjXcro" role="2Oq$k0">
                <ref role="3cqZAo" node="3KV3FXjXcr3" resolve="var" />
              </node>
              <node concept="liA8E" id="3KV3FXjXcrp" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXjXcrq" role="3cqZAp" />
          <node concept="3cpWs8" id="3KV3FXjXcrr" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXjXcrs" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="3KV3FXjXcrt" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXjXcru" role="33vP2m">
                <node concept="1oi5ST" id="3KV3FXjXcrv" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXjXcrw" role="1oi5TL">
                    <node concept="1oi5UN" id="3KV3FXjZ28E" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXjZ28F" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXjZ28G" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="3KV3FXjZ28H" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="3KV3FXjZ28I" role="1oi5zu">
                          <property role="1oi5yK" value="Comparable" />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="3KV3FXjZ291" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXjZ292" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXjZ293" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="3KV3FXjZ294" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="3KV3FXjZ295" role="1oi5zu">
                          <property role="1oi5yK" value="Serializable" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3KV3FXjXcr$" role="3cqZAp">
            <node concept="2OqwBi" id="3KV3FXjXcr_" role="3clFbG">
              <node concept="37vLTw" id="3KV3FXjXcrA" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGALSI" resolve="uni" />
              </node>
              <node concept="liA8E" id="3KV3FXjXcrB" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4U_yxogCcGI" resolve="tellUni" />
                <node concept="37vLTw" id="3KV3FXjXcrC" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXjXcrs" resolve="expect" />
                </node>
                <node concept="37vLTw" id="3KV3FXjXcrD" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXjXcr3" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3KV3FXk18N8" role="3s_gse">
        <property role="3s$Bm0" value="lub_primitive_serializable" />
        <node concept="3cqZAl" id="3KV3FXk18N9" role="3clF45" />
        <node concept="3Tm1VV" id="3KV3FXk18Na" role="1B3o_S" />
        <node concept="3clFbS" id="3KV3FXk18Nb" role="3clF47">
          <node concept="3cpWs8" id="3KV3FXk18Nc" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk18Nd" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="3KV3FXk18Ne" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk18Nf" role="33vP2m">
                <node concept="1oi5ST" id="3KV3FXk18Ng" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXk18Nh" role="1oi5TL">
                    <node concept="1oi5ST" id="3KV3FXk18Ni" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk18Nj" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXk18Nk" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18Nl" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18Nm" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk18Nn" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18No" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18Np" role="1oi5zu">
                              <property role="1oi5yK" value="FloatType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk18Nq" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18Nr" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18Ns" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3KV3FXk18Nt" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk18Nu" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXk18Nv" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18Nw" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18Nx" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18Ny" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18Nz" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk18N$" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18N_" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18NA" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18NB" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18NC" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk18ND" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18NE" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18NF" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18NG" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18NH" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2kGt" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2kGu" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2kGv" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3KV3FXk18NI" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk18NJ" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXk18NK" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18NL" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18NM" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18NN" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18NO" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk18NP" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18NQ" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18NR" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18NS" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18NT" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk18NU" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18NV" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18NW" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18NX" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18NY" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk18NZ" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18O0" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18O1" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18O2" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18O3" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2kHX" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2kHY" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2kHZ" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
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
          <node concept="3cpWs8" id="3KV3FXk18O4" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk18O5" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="3KV3FXk18O6" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk18O7" role="33vP2m">
                <node concept="1oi5ST" id="3KV3FXk18O8" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXk18O9" role="1oi5TL">
                    <node concept="1oi5ST" id="3KV3FXk18OM" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk18ON" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXk18OO" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18OP" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18OQ" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18OR" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18OS" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk18OT" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18OU" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18OV" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18OW" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18OX" role="1oi5zu">
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
          <node concept="3clFbH" id="3KV3FXk18P3" role="3cqZAp" />
          <node concept="3cpWs8" id="3KV3FXk18P4" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk18P5" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="3KV3FXk18P6" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="3KV3FXk18P7" role="33vP2m">
                <node concept="1pGfFk" id="3KV3FXk18P8" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="AtomLogical" />
                  <node concept="Xl_RD" id="3KV3FXk18P9" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3KV3FXk18Pa" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk18Pb" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="3KV3FXk18Pc" role="1tU5fm" />
              <node concept="2YIFZM" id="3KV3FXk18Pd" role="33vP2m">
                <ref role="1Pybhc" to="4r4j:5H6hZahmlon" resolve="LubSolver" />
                <ref role="37wK5l" to="4r4j:5H6hZahmloU" resolve="findLub" />
                <node concept="37vLTw" id="3KV3FXk18Pe" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXk18P5" resolve="var" />
                </node>
                <node concept="2ShNRf" id="3KV3FXk18Pf" role="37wK5m">
                  <node concept="1pGfFk" id="3KV3FXk18Pg" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="3KV3FXk18Ph" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXk18Nd" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="3KV3FXk18Pi" role="37wK5m">
                  <node concept="1pGfFk" id="3KV3FXk18Pj" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="3KV3FXk18Pk" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXk18O5" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXk18Pl" role="3cqZAp" />
          <node concept="3vwNmj" id="3KV3FXk18Pm" role="3cqZAp">
            <node concept="37vLTw" id="3KV3FXk18Pn" role="3vwVQn">
              <ref role="3cqZAo" node="3KV3FXk18Pb" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="3KV3FXk18Po" role="3cqZAp">
            <node concept="2OqwBi" id="3KV3FXk18Pp" role="3vwVQn">
              <node concept="37vLTw" id="3KV3FXk18Pq" role="2Oq$k0">
                <ref role="3cqZAo" node="3KV3FXk18P5" resolve="var" />
              </node>
              <node concept="liA8E" id="3KV3FXk18Pr" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXk18Ps" role="3cqZAp" />
          <node concept="3cpWs8" id="3KV3FXk18Pt" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk18Pu" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="3KV3FXk18Pv" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk18Pw" role="33vP2m">
                <node concept="1oi5ST" id="3KV3FXk18Px" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXk18Py" role="1oi5TL">
                    <node concept="1oi5UN" id="3KV3FXk18PC" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXk18PD" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXk18PE" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="3KV3FXk18PF" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="3KV3FXk18PG" role="1oi5zu">
                          <property role="1oi5yK" value="Serializable" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3KV3FXk18PH" role="3cqZAp">
            <node concept="2OqwBi" id="3KV3FXk18PI" role="3clFbG">
              <node concept="37vLTw" id="3KV3FXk18PJ" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGALSI" resolve="uni" />
              </node>
              <node concept="liA8E" id="3KV3FXk18PK" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4U_yxogCcGI" resolve="tellUni" />
                <node concept="37vLTw" id="3KV3FXk18PL" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXk18Pu" resolve="expect" />
                </node>
                <node concept="37vLTw" id="3KV3FXk18PM" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXk18P5" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3s_ewN" id="3KV3FXk2b2J">
    <property role="3s_ewP" value="SubtypePath" />
    <node concept="312cEg" id="3KV3FXk2bd7" role="jymVt">
      <property role="TrG5h" value="uni" />
      <node concept="3Tm6S6" id="3KV3FXk2bd8" role="1B3o_S" />
      <node concept="3uibUv" id="3KV3FXk2bd9" role="1tU5fm">
        <ref role="3uigEE" to="oy3s:6njqcfQVO0n" resolve="UnificationSolver" />
      </node>
      <node concept="2ShNRf" id="3KV3FXk2bda" role="33vP2m">
        <node concept="1pGfFk" id="3KV3FXk2bdb" role="2ShVmc">
          <ref role="37wK5l" to="oy3s:4U_yxogDDy9" resolve="UnificationSolverImpl" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3KV3FXk2b2K" role="1B3o_S" />
    <node concept="3s_gsd" id="3KV3FXk2b2L" role="3s_ewO">
      <node concept="3s$Bmu" id="3KV3FXk2boI" role="3s_gse">
        <property role="3s$Bm0" value="subtype_primitive_serializable" />
        <node concept="3cqZAl" id="3KV3FXk2boJ" role="3clF45" />
        <node concept="3Tm1VV" id="3KV3FXk2boK" role="1B3o_S" />
        <node concept="3clFbS" id="3KV3FXk2boL" role="3clF47">
          <node concept="3cpWs8" id="3KV3FXk2boM" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk2boN" role="3cpWs9">
              <property role="TrG5h" value="fullPaths" />
              <node concept="3uibUv" id="3KV3FXk2boO" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk2boP" role="33vP2m">
                <node concept="1oi5ST" id="3KV3FXk2boQ" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXk2boR" role="1oi5TL">
                    <node concept="1oi5ST" id="3KV3FXk2boS" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2boT" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXk2boU" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2boV" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2boW" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2boX" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2boY" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2boZ" role="1oi5zu">
                              <property role="1oi5yK" value="FloatType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2bp0" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2bp1" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2bp2" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3KV3FXk2bp3" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2bp4" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXk2bp5" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2bp6" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2bp7" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2bp8" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2bp9" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2bpa" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2bpb" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2bpc" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2bpd" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2bpe" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2bpf" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2bpg" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2bph" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2bpi" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2bpj" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2iIb" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2iIc" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2iId" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3KV3FXk2bpk" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2bpl" role="1oi5TL">
                        <node concept="1oi5UN" id="3KV3FXk2bpm" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2bpn" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2bpo" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2bpp" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2bpq" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2bpr" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2bps" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2bpt" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2bpu" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2bpv" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2bpw" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2bpx" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2bpy" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2bpz" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2bp$" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2bp_" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2bpA" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2bpB" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2bpC" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2bpD" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2iIw" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2iIx" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2iIy" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
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
          <node concept="3cpWs8" id="3KV3FXk2bpE" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk2bpF" role="3cpWs9">
              <property role="TrG5h" value="startFrom" />
              <node concept="3uibUv" id="3KV3FXk2bpG" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk2bpH" role="33vP2m">
                <node concept="1oi5UN" id="3KV3FXk2bpR" role="1oi0x0">
                  <node concept="1oi5Wm" id="3KV3FXk2bpS" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="3KV3FXk2bpT" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3KV3FXk2bpU" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="3KV3FXk2bpV" role="1oi5zu">
                      <property role="1oi5yK" value="Serializable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXk2bpW" role="3cqZAp" />
          <node concept="3cpWs8" id="3KV3FXk2bpX" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk2bpY" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="3KV3FXk2bpZ" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="3KV3FXk2bq0" role="33vP2m">
                <node concept="1pGfFk" id="3KV3FXk2bq1" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="AtomLogical" />
                  <node concept="Xl_RD" id="3KV3FXk2bq2" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3KV3FXk2bq3" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk2bq4" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="3KV3FXk2bq5" role="1tU5fm" />
              <node concept="2YIFZM" id="3KV3FXk2bPE" role="33vP2m">
                <ref role="37wK5l" to="4r4j:3KV3FXk1fGe" resolve="findSubtypePath" />
                <ref role="1Pybhc" to="4r4j:3KV3FXk1fjd" resolve="SubtypePathSolver" />
                <node concept="37vLTw" id="3KV3FXk2bPF" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXk2bpY" resolve="var" />
                </node>
                <node concept="2ShNRf" id="3KV3FXk2bPG" role="37wK5m">
                  <node concept="1pGfFk" id="3KV3FXk2bPH" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="3KV3FXk2bPI" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXk2boN" resolve="fullPaths" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="3KV3FXk2bPJ" role="37wK5m">
                  <node concept="1pGfFk" id="3KV3FXk2bPK" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                    <node concept="37vLTw" id="3KV3FXk2bPL" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXk2bpF" resolve="startFrom" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXk2bqe" role="3cqZAp" />
          <node concept="3vwNmj" id="3KV3FXk2bqf" role="3cqZAp">
            <node concept="37vLTw" id="3KV3FXk2bqg" role="3vwVQn">
              <ref role="3cqZAo" node="3KV3FXk2bq4" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="3KV3FXk2bqh" role="3cqZAp">
            <node concept="2OqwBi" id="3KV3FXk2bqi" role="3vwVQn">
              <node concept="37vLTw" id="3KV3FXk2bqj" role="2Oq$k0">
                <ref role="3cqZAo" node="3KV3FXk2bpY" resolve="var" />
              </node>
              <node concept="liA8E" id="3KV3FXk2bqk" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmC6RD" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXk2bql" role="3cqZAp" />
          <node concept="3cpWs8" id="3KV3FXk2bqm" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk2bqn" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="3KV3FXk2bqo" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk2bqp" role="33vP2m">
                <node concept="1oi5ST" id="3KV3FXk2bqq" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXk2bqr" role="1oi5TL">
                    <node concept="1oi5UN" id="3KV3FXk2bqs" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXk2bqt" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXk2bqu" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="3KV3FXk2bqv" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="3KV3FXk2bqw" role="1oi5zu">
                          <property role="1oi5yK" value="Serializable" />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="3KV3FXk2bRR" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXk2bRS" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXk2bRT" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="3KV3FXk2bRU" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="3KV3FXk2bRV" role="1oi5zu">
                          <property role="1oi5yK" value="Number" />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="3KV3FXk2bS6" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXk2bS7" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXk2bS8" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="3KV3FXk2bS9" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="3KV3FXk2bSa" role="1oi5zu">
                          <property role="1oi5yK" value="Long" />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="3KV3FXk2iIU" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXk2iIV" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXk2iIW" role="1oi5zu">
                          <property role="1oi5yK" value="LongType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3KV3FXk2bqx" role="3cqZAp">
            <node concept="2OqwBi" id="3KV3FXk2bqy" role="3clFbG">
              <node concept="37vLTw" id="3KV3FXk2bqz" role="2Oq$k0">
                <ref role="3cqZAo" node="3KV3FXk2bd7" resolve="uni" />
              </node>
              <node concept="liA8E" id="3KV3FXk2bq$" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4U_yxogCcGI" resolve="tellUni" />
                <node concept="37vLTw" id="3KV3FXk2bq_" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXk2bqn" resolve="expect" />
                </node>
                <node concept="37vLTw" id="3KV3FXk2bqA" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXk2bpY" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

