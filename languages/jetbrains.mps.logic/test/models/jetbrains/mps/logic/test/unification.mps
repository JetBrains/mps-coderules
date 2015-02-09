<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:82cec6f7-ddec-440c-961c-1c598267be42(jetbrains.mps.logic.test.unification)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="-1" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="0" />
  </languages>
  <imports>
    <import index="w2rx" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime(jetbrains.mps.jchr.runtime/runtime@java_stub)" />
    <import index="xxzj" ref="b189d6c6-9397-4d64-88af-1ac73760a4f5/f:java_stub#b189d6c6-9397-4d64-88af-1ac73760a4f5#org.mockito(jetbrains.mps.logic.test/org.mockito@java_stub)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
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
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
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
        <child id="8243879142738613220" name="afterTest" index="1KhZu3" />
        <child id="8243879142738613219" name="beforeTest" index="1KhZu4" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
      <concept id="8243879142738608185" name="jetbrains.mps.baseLanguage.unitTest.structure.BeforeTest" flags="in" index="1KhYhu" />
      <concept id="8243879142738613213" name="jetbrains.mps.baseLanguage.unitTest.structure.AfterTest" flags="in" index="1KhZuU" />
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="4310122986197990603" name="jetbrains.mps.logic.structure.ExpressionNode" flags="ng" index="xgLVe">
        <child id="4310122986197991094" name="expression" index="xgLMN" />
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
      <concept id="7571593955706137189" name="jetbrains.mps.logic.structure.Role" flags="ng" index="1oi5VN">
        <property id="7571593955706137428" name="cardinality" index="1oi5Z2" />
      </concept>
      <concept id="7571593955706137472" name="jetbrains.mps.logic.structure.ValueRole" flags="ng" index="1oi5Wm">
        <child id="7571593955706137672" name="contents" index="1oi5zu" />
      </concept>
      <concept id="7571593955706137573" name="jetbrains.mps.logic.structure.ValueHolder" flags="ng" index="1oi5XN">
        <property id="7571593955706137638" name="value" index="1oi5yK" />
      </concept>
      <concept id="7571593955706284481" name="jetbrains.mps.logic.structure.Symbol" flags="ng" index="1ojpPn" />
      <concept id="1503029989441024" name="jetbrains.mps.logic.structure.AbstractNode" flags="ng" index="1KByzZ">
        <child id="1503029989483908" name="symbol" index="1KAndV" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3s_ewN" id="5NuEpF1$W3N">
    <property role="3s_ewP" value="AskUniSolver" />
    <node concept="2tJIrI" id="5NuEpF1$Wqi" role="jymVt" />
    <node concept="312cEg" id="71LvIRuyoUF" role="jymVt">
      <property role="TrG5h" value="constraintSystem" />
      <node concept="3Tm6S6" id="71LvIRuyoUG" role="1B3o_S" />
      <node concept="3uibUv" id="71LvIRuz57H" role="1tU5fm">
        <ref role="3uigEE" to="w2rx:~ConstraintSystem" resolve="ConstraintSystem" />
      </node>
    </node>
    <node concept="312cEg" id="fHk0tWuntB" role="jymVt">
      <property role="TrG5h" value="unificationSolver" />
      <node concept="3Tm6S6" id="fHk0tWuntC" role="1B3o_S" />
      <node concept="3uibUv" id="fHk0tWun$f" role="1tU5fm">
        <ref role="3uigEE" to="oy3s:6njqcfQVO0n" resolve="UnificationSolver" />
      </node>
    </node>
    <node concept="2tJIrI" id="21Zu7ABuukF" role="jymVt" />
    <node concept="3clFb_" id="21Zu7ABuubV" role="jymVt">
      <property role="TrG5h" value="var" />
      <node concept="37vLTG" id="21Zu7ABuute" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="21Zu7ABuutu" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="21Zu7ABuxwM" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
        <node concept="3qTvmN" id="21Zu7ABux$y" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="21Zu7ABuubY" role="1B3o_S" />
      <node concept="3clFbS" id="21Zu7ABuubZ" role="3clF47">
        <node concept="3clFbF" id="21Zu7ABuuuo" role="3cqZAp">
          <node concept="2OqwBi" id="21Zu7ABux0e" role="3clFbG">
            <node concept="2ShNRf" id="21Zu7ABuuum" role="2Oq$k0">
              <node concept="1pGfFk" id="21Zu7ABuv79" role="2ShVmc">
                <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="TreeLogical" />
                <node concept="37vLTw" id="21Zu7ABuwhW" role="37wK5m">
                  <ref role="3cqZAo" node="21Zu7ABuute" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="21Zu7ABuxsp" role="2OqNvi">
              <ref role="37wK5l" to="oy3s:1Ns6gpY6DeD" resolve="toTreePart" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5NuEpF1$W3O" role="1B3o_S" />
    <node concept="3s_gsd" id="5NuEpF1$W3P" role="3s_ewO">
      <node concept="3s$Bmu" id="fHk0tWulwY" role="3s_gse">
        <property role="3s$Bm0" value="askUniEmpty" />
        <node concept="3cqZAl" id="fHk0tWulx0" role="3clF45" />
        <node concept="3Tm1VV" id="fHk0tWulx2" role="1B3o_S" />
        <node concept="3clFbS" id="fHk0tWulx3" role="3clF47">
          <node concept="3clFbH" id="fHk0tWuxTG" role="3cqZAp" />
          <node concept="3cpWs8" id="fHk0tWu_Ms" role="3cqZAp">
            <node concept="3cpWsn" id="fHk0tWu_Mt" role="3cpWs9">
              <property role="TrG5h" value="t1" />
              <node concept="3uibUv" id="fHk0tWu_Mu" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="fHk0tWuK3B" role="33vP2m">
                <node concept="1oi5UN" id="fHk0tWuK7X" role="1oi0x0">
                  <node concept="1ojpPn" id="fHk0tWuK80" role="1KAndV" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="fHk0tWuKa3" role="3cqZAp">
            <node concept="3cpWsn" id="fHk0tWuKa4" role="3cpWs9">
              <property role="TrG5h" value="t2" />
              <node concept="3uibUv" id="fHk0tWuKa5" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="fHk0tWuKa6" role="33vP2m">
                <node concept="1oi5UN" id="fHk0tWuKa7" role="1oi0x0">
                  <node concept="1ojpPn" id="fHk0tWuKa8" role="1KAndV" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="fHk0tWuy4D" role="3cqZAp" />
          <node concept="3vwNmj" id="fHk0tWuSQ$" role="3cqZAp">
            <node concept="2OqwBi" id="fHk0tWutpg" role="3vwVQn">
              <node concept="37vLTw" id="fHk0tWutnK" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="fHk0tWuttq" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4OsiK2BAnTP" resolve="askUni" />
                <node concept="37vLTw" id="fHk0tWuKfb" role="37wK5m">
                  <ref role="3cqZAo" node="fHk0tWu_Mt" resolve="t1" />
                </node>
                <node concept="37vLTw" id="fHk0tWuKiE" role="37wK5m">
                  <ref role="3cqZAo" node="fHk0tWuKa4" resolve="t2" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="21Zu7ABuiLx" role="3s_gse">
        <property role="3s$Bm0" value="askUniValue" />
        <node concept="3cqZAl" id="21Zu7ABuiLy" role="3clF45" />
        <node concept="3Tm1VV" id="21Zu7ABuiLz" role="1B3o_S" />
        <node concept="3clFbS" id="21Zu7ABuiL$" role="3clF47">
          <node concept="3clFbH" id="21Zu7ABuiL_" role="3cqZAp" />
          <node concept="3cpWs8" id="21Zu7ABuiLA" role="3cqZAp">
            <node concept="3cpWsn" id="21Zu7ABuiLB" role="3cpWs9">
              <property role="TrG5h" value="t1" />
              <node concept="3uibUv" id="21Zu7ABuiLC" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="21Zu7ABuiLD" role="33vP2m">
                <node concept="1oi5UN" id="21Zu7ABuiLE" role="1oi0x0">
                  <node concept="1oi5Wm" id="21Zu7ABuiZP" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="21Zu7ABuj7y" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                      <node concept="1ojpPn" id="21Zu7ABuj7z" role="1KAndV" />
                    </node>
                  </node>
                  <node concept="1ojpPn" id="21Zu7ABuiLF" role="1KAndV" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="21Zu7ABuiLG" role="3cqZAp">
            <node concept="3cpWsn" id="21Zu7ABuiLH" role="3cpWs9">
              <property role="TrG5h" value="t2" />
              <node concept="3uibUv" id="21Zu7ABuiLI" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="21Zu7ABuiLJ" role="33vP2m">
                <node concept="1oi5UN" id="21Zu7ABun6y" role="1oi0x0">
                  <node concept="1oi5Wm" id="21Zu7ABun6z" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="21Zu7ABun6$" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                      <node concept="1ojpPn" id="21Zu7ABun6_" role="1KAndV" />
                    </node>
                  </node>
                  <node concept="1ojpPn" id="21Zu7ABun6A" role="1KAndV" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="21Zu7ABuiLM" role="3cqZAp" />
          <node concept="3vwNmj" id="21Zu7ABuiLN" role="3cqZAp">
            <node concept="2OqwBi" id="21Zu7ABuiLO" role="3vwVQn">
              <node concept="37vLTw" id="21Zu7ABuiLP" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="21Zu7ABuiLQ" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4OsiK2BAnTP" resolve="askUni" />
                <node concept="37vLTw" id="21Zu7ABuiLR" role="37wK5m">
                  <ref role="3cqZAo" node="21Zu7ABuiLB" resolve="t1" />
                </node>
                <node concept="37vLTw" id="21Zu7ABuiLS" role="37wK5m">
                  <ref role="3cqZAo" node="21Zu7ABuiLH" resolve="t2" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="21Zu7ABunhH" role="3s_gse">
        <property role="3s$Bm0" value="askUniVar" />
        <node concept="3cqZAl" id="21Zu7ABunhI" role="3clF45" />
        <node concept="3Tm1VV" id="21Zu7ABunhJ" role="1B3o_S" />
        <node concept="3clFbS" id="21Zu7ABunhK" role="3clF47">
          <node concept="3clFbH" id="21Zu7ABunhL" role="3cqZAp" />
          <node concept="3cpWs8" id="21Zu7ABunhM" role="3cqZAp">
            <node concept="3cpWsn" id="21Zu7ABunhN" role="3cpWs9">
              <property role="TrG5h" value="t1" />
              <node concept="3uibUv" id="21Zu7ABunhO" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="21Zu7ABunhP" role="33vP2m">
                <node concept="1oi5UN" id="21Zu7ABunhQ" role="1oi0x0">
                  <node concept="1oi5ST" id="21Zu7ABunA9" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <property role="1oi5Z2" value="multiple" />
                    <node concept="xgLVe" id="21Zu7ABuxPr" role="1oi5TL">
                      <node concept="1rXfSq" id="21Zu7ABuxPJ" role="xgLMN">
                        <ref role="37wK5l" node="21Zu7ABuubV" resolve="var" />
                        <node concept="Xl_RD" id="21Zu7ABuxQL" role="37wK5m">
                          <property role="Xl_RC" value="X" />
                        </node>
                      </node>
                      <node concept="1ojpPn" id="21Zu7ABuxPt" role="1KAndV" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="21Zu7ABunhR" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="21Zu7ABunhS" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                      <node concept="1ojpPn" id="21Zu7ABunhT" role="1KAndV" />
                    </node>
                  </node>
                  <node concept="1ojpPn" id="21Zu7ABunhU" role="1KAndV" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="21Zu7ABunhV" role="3cqZAp">
            <node concept="3cpWsn" id="21Zu7ABunhW" role="3cpWs9">
              <property role="TrG5h" value="t2" />
              <node concept="3uibUv" id="21Zu7ABunhX" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="21Zu7ABunhY" role="33vP2m">
                <node concept="1oi5UN" id="21Zu7ABunhZ" role="1oi0x0">
                  <node concept="1oi5ST" id="21Zu7ABunH2" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <property role="1oi5Z2" value="multiple" />
                    <node concept="xgLVe" id="21Zu7ABuxSv" role="1oi5TL">
                      <node concept="1rXfSq" id="21Zu7ABuxSN" role="xgLMN">
                        <ref role="37wK5l" node="21Zu7ABuubV" resolve="var" />
                        <node concept="Xl_RD" id="21Zu7ABuxTP" role="37wK5m">
                          <property role="Xl_RC" value="Y" />
                        </node>
                      </node>
                      <node concept="1ojpPn" id="21Zu7ABuxSx" role="1KAndV" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="21Zu7ABuni0" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="21Zu7ABuni1" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                      <node concept="1ojpPn" id="21Zu7ABuni2" role="1KAndV" />
                    </node>
                  </node>
                  <node concept="1ojpPn" id="21Zu7ABuni3" role="1KAndV" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="21Zu7ABuni4" role="3cqZAp" />
          <node concept="3vwNmj" id="21Zu7ABuni5" role="3cqZAp">
            <node concept="2OqwBi" id="21Zu7ABuni6" role="3vwVQn">
              <node concept="37vLTw" id="21Zu7ABuni7" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="21Zu7ABuni8" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4OsiK2BAnTP" resolve="askUni" />
                <node concept="37vLTw" id="21Zu7ABuni9" role="37wK5m">
                  <ref role="3cqZAo" node="21Zu7ABunhN" resolve="t1" />
                </node>
                <node concept="37vLTw" id="21Zu7ABunia" role="37wK5m">
                  <ref role="3cqZAo" node="21Zu7ABunhW" resolve="t2" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="21Zu7ABupTn" role="3s_gse">
        <property role="3s$Bm0" value="askUniTermVar" />
        <node concept="3cqZAl" id="21Zu7ABupTo" role="3clF45" />
        <node concept="3Tm1VV" id="21Zu7ABupTp" role="1B3o_S" />
        <node concept="3clFbS" id="21Zu7ABupTq" role="3clF47">
          <node concept="3clFbH" id="21Zu7ABupTr" role="3cqZAp" />
          <node concept="3cpWs8" id="21Zu7ABupTs" role="3cqZAp">
            <node concept="3cpWsn" id="21Zu7ABupTt" role="3cpWs9">
              <property role="TrG5h" value="t1" />
              <node concept="3uibUv" id="21Zu7ABupTu" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="21Zu7ABupTv" role="33vP2m">
                <node concept="1oi5UN" id="21Zu7ABupTw" role="1oi0x0">
                  <node concept="1oi5ST" id="21Zu7ABupTx" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <property role="1oi5Z2" value="multiple" />
                    <node concept="1oi5UN" id="21Zu7ABuqdD" role="1oi5TL">
                      <node concept="1oi5Wm" id="21Zu7ABuqdL" role="1ojpOf">
                        <property role="TrG5h" value="name" />
                        <node concept="1oi5XN" id="21Zu7ABuqdR" role="1oi5zu">
                          <property role="1oi5yK" value="bar" />
                          <node concept="1ojpPn" id="21Zu7ABuqdU" role="1KAndV" />
                        </node>
                      </node>
                      <node concept="1ojpPn" id="21Zu7ABuqdG" role="1KAndV" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="21Zu7ABupT$" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="21Zu7ABupT_" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                      <node concept="1ojpPn" id="21Zu7ABupTA" role="1KAndV" />
                    </node>
                  </node>
                  <node concept="1ojpPn" id="21Zu7ABupTB" role="1KAndV" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="21Zu7ABupTC" role="3cqZAp">
            <node concept="3cpWsn" id="21Zu7ABupTD" role="3cpWs9">
              <property role="TrG5h" value="t2" />
              <node concept="3uibUv" id="21Zu7ABupTE" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
              </node>
              <node concept="1oi1Uc" id="21Zu7ABupTF" role="33vP2m">
                <node concept="1oi5UN" id="21Zu7ABupTG" role="1oi0x0">
                  <node concept="1oi5ST" id="21Zu7ABupTH" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <property role="1oi5Z2" value="multiple" />
                    <node concept="xgLVe" id="21Zu7ABuxYs" role="1oi5TL">
                      <node concept="1rXfSq" id="21Zu7ABuxYK" role="xgLMN">
                        <ref role="37wK5l" node="21Zu7ABuubV" resolve="var" />
                        <node concept="Xl_RD" id="21Zu7ABuxZM" role="37wK5m">
                          <property role="Xl_RC" value="X" />
                        </node>
                      </node>
                      <node concept="1ojpPn" id="21Zu7ABuxYu" role="1KAndV" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="21Zu7ABupTK" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="21Zu7ABupTL" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                      <node concept="1ojpPn" id="21Zu7ABupTM" role="1KAndV" />
                    </node>
                  </node>
                  <node concept="1ojpPn" id="21Zu7ABupTN" role="1KAndV" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="21Zu7ABupTO" role="3cqZAp" />
          <node concept="3vwNmj" id="21Zu7ABupTP" role="3cqZAp">
            <node concept="2OqwBi" id="21Zu7ABupTQ" role="3vwVQn">
              <node concept="37vLTw" id="21Zu7ABupTR" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="21Zu7ABupTS" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4OsiK2BAnTP" resolve="askUni" />
                <node concept="37vLTw" id="21Zu7ABupTT" role="37wK5m">
                  <ref role="3cqZAo" node="21Zu7ABupTt" resolve="t1" />
                </node>
                <node concept="37vLTw" id="21Zu7ABupTU" role="37wK5m">
                  <ref role="3cqZAo" node="21Zu7ABupTD" resolve="t2" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KhYhu" id="5NuEpF1$Wpa" role="1KhZu4">
      <node concept="3clFbS" id="5NuEpF1$Wpb" role="2VODD2">
        <node concept="3clFbF" id="71LvIRuz6e5" role="3cqZAp">
          <node concept="37vLTI" id="71LvIRuz6gg" role="3clFbG">
            <node concept="37vLTw" id="71LvIRuz6e3" role="37vLTJ">
              <ref role="3cqZAo" node="71LvIRuyoUF" resolve="constraintSystem" />
            </node>
            <node concept="2ShNRf" id="fHk0tWuNK3" role="37vLTx">
              <node concept="1pGfFk" id="fHk0tWuNK2" role="2ShVmc">
                <ref role="37wK5l" to="w2rx:~ConstraintSystem.&lt;init&gt;()" resolve="ConstraintSystem" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fHk0tWuNOj" role="3cqZAp">
          <node concept="2OqwBi" id="fHk0tWuNRK" role="3clFbG">
            <node concept="37vLTw" id="fHk0tWuNOh" role="2Oq$k0">
              <ref role="3cqZAo" node="71LvIRuyoUF" resolve="constraintSystem" />
            </node>
            <node concept="liA8E" id="fHk0tWuNVy" role="2OqNvi">
              <ref role="37wK5l" to="w2rx:~ConstraintSystem.setQueuing(boolean):void" resolve="setQueuing" />
              <node concept="3clFbT" id="fHk0tWuNX6" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fHk0tWuoLS" role="3cqZAp">
          <node concept="37vLTI" id="fHk0tWuoPJ" role="3clFbG">
            <node concept="2ShNRf" id="fHk0tWuoQm" role="37vLTx">
              <node concept="1pGfFk" id="fHk0tWutdI" role="2ShVmc">
                <ref role="37wK5l" to="oy3s:4U_yxogDEZX" resolve="UnificationSolverImpl" />
                <node concept="37vLTw" id="fHk0tWutiw" role="37wK5m">
                  <ref role="3cqZAo" node="71LvIRuyoUF" resolve="constraintSystem" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="fHk0tWuoLQ" role="37vLTJ">
              <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KhZuU" id="71LvIRuynfy" role="1KhZu3">
      <node concept="3clFbS" id="71LvIRuynfz" role="2VODD2" />
    </node>
  </node>
</model>

