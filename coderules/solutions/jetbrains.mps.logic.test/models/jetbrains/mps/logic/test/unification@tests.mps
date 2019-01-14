<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:20f4c07b-8247-423c-afc2-643e5ae8bd75(jetbrains.mps.logic.test.unification@tests)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
  </languages>
  <imports>
    <import index="mqqo" ref="r:82cec6f7-ddec-440c-961c-1c598267be42(jetbrains.mps.logic.test.unification)" />
    <import index="yt73" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.unification(jetbrains.mps.logic.reactor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.predicate)" />
    <import index="zx3l" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.core(jetbrains.mps.logic.reactor/)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.unification)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.dataform)" />
    <import index="7n8k" ref="r:475a2e92-d7d4-41c3-98e3-172d70b6f018(jetbrains.mps.logic.program)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
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
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="7080278351417106679" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNotNull" flags="nn" index="2Hmddi">
        <child id="7080278351417106681" name="expression" index="2Hmdds" />
      </concept>
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
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
      <concept id="1171983834376" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" flags="nn" index="3vFxKo">
        <child id="1171983854940" name="condition" index="3vFALc" />
      </concept>
      <concept id="1171985735491" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertSame" flags="nn" index="3vMLTj" />
      <concept id="1172069869612" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertThrows" flags="nn" index="3$NI$W">
        <child id="1172070029086" name="statement" index="3$Oloe" />
        <child id="1172070532815" name="exceptionType" index="3$Qgvv" />
      </concept>
      <concept id="8243879142738608185" name="jetbrains.mps.baseLanguage.unitTest.structure.BeforeTest" flags="in" index="1KhYhu" />
      <concept id="8243879142738613213" name="jetbrains.mps.baseLanguage.unitTest.structure.AfterTest" flags="in" index="1KhZuU" />
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="238586457668550951" name="jetbrains.mps.logic.structure.Splice" flags="ng" index="22Ky0T">
        <child id="238586457668550958" name="expression" index="22Ky0K" />
      </concept>
      <concept id="2105510410850132386" name="jetbrains.mps.logic.structure.ListNode" flags="ng" index="KCUsM">
        <child id="2105510410850136264" name="contents" index="KCVpo" />
      </concept>
      <concept id="6694277639409954681" name="jetbrains.mps.logic.structure.ListRole" flags="ng" index="38e3lM">
        <child id="6694277639409954746" name="list" index="38e3mL" />
      </concept>
      <concept id="7571593955706120730" name="jetbrains.mps.logic.structure.DataNodeExpression" flags="ng" index="1oi1Uc">
        <child id="7571593955706125526" name="root" index="1oi0x0" />
      </concept>
      <concept id="7571593955706137263" name="jetbrains.mps.logic.structure.ChildRole" flags="ng" index="1oi5ST">
        <child id="7571593955706137319" name="contents" index="1oi5TL" />
      </concept>
      <concept id="7571593955706137125" name="jetbrains.mps.logic.structure.TermNode" flags="ng" index="1oi5UN">
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
    </language>
  </registry>
  <node concept="3s_ewN" id="5NuEpF1$W3N">
    <property role="3s_ewP" value="AskUniSolver" />
    <node concept="2tJIrI" id="5NuEpF1$Wqi" role="jymVt" />
    <node concept="312cEg" id="fHk0tWuntB" role="jymVt">
      <property role="TrG5h" value="unificationSolver" />
      <node concept="3Tm6S6" id="fHk0tWuntC" role="1B3o_S" />
      <node concept="3uibUv" id="6yEjedm5Xb1" role="1tU5fm">
        <ref role="3uigEE" to="mqqo:6yEjedm5WkE" resolve="TestingUnificationSolver" />
      </node>
    </node>
    <node concept="2tJIrI" id="21Zu7ABuukF" role="jymVt" />
    <node concept="3clFb_" id="3gNap3g8EL6" role="jymVt">
      <property role="TrG5h" value="stringvar" />
      <node concept="37vLTG" id="3gNap3g8EL7" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3gNap3g8EL8" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3gNap3g8EL9" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="3gNap3g8ELa" role="1B3o_S" />
      <node concept="3clFbS" id="3gNap3g8ELb" role="3clF47">
        <node concept="3clFbF" id="21Zu7ABuuuo" role="3cqZAp">
          <node concept="2YIFZM" id="3gNap3g8ENo" role="3clFbG">
            <ref role="37wK5l" to="oy3s:3gNap3fZcVn" resolve="asValue" />
            <ref role="1Pybhc" to="oy3s:677NV565N1x" resolve="LogicalUtil" />
            <node concept="2ShNRf" id="3gNap3g8ENp" role="37wK5m">
              <node concept="1pGfFk" id="3gNap3g8ENq" role="2ShVmc">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(jetbrains.mps.logic.reactor.logical.MetaLogical)" resolve="LogicalImpl" />
                <node concept="2ShNRf" id="3gNap3g8ENr" role="37wK5m">
                  <node concept="1pGfFk" id="3gNap3g8ENs" role="2ShVmc">
                    <ref role="37wK5l" to="bj13:~MetaLogical.&lt;init&gt;(java.lang.String,java.lang.Class)" resolve="MetaLogical" />
                    <node concept="37vLTw" id="390NiL14kV6" role="37wK5m">
                      <ref role="3cqZAo" node="3gNap3g8EL7" resolve="name" />
                    </node>
                    <node concept="3VsKOn" id="3gNap3g8ENu" role="37wK5m">
                      <ref role="3VsUkX" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3g8EMh" role="jymVt" />
    <node concept="3clFb_" id="21Zu7ABuubV" role="jymVt">
      <property role="TrG5h" value="termvar" />
      <node concept="37vLTG" id="21Zu7ABuute" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="21Zu7ABuutu" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1OShD0I14oi" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="1OShD0IfwAc" role="1B3o_S" />
      <node concept="3clFbS" id="21Zu7ABuubZ" role="3clF47">
        <node concept="3clFbF" id="3gNap3g8ELc" role="3cqZAp">
          <node concept="2YIFZM" id="3gNap3g8ELd" role="3clFbG">
            <ref role="37wK5l" to="oy3s:4TCblo5YI1H" resolve="asVariable" />
            <ref role="1Pybhc" to="oy3s:677NV565N1x" resolve="LogicalUtil" />
            <node concept="2ShNRf" id="3gNap3g8ELe" role="37wK5m">
              <node concept="1pGfFk" id="3gNap3g8ELf" role="2ShVmc">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(jetbrains.mps.logic.reactor.logical.MetaLogical)" resolve="LogicalImpl" />
                <node concept="2ShNRf" id="3gNap3g8ELg" role="37wK5m">
                  <node concept="1pGfFk" id="3gNap3g8ELh" role="2ShVmc">
                    <ref role="37wK5l" to="bj13:~MetaLogical.&lt;init&gt;(java.lang.String,java.lang.Class)" resolve="MetaLogical" />
                    <node concept="37vLTw" id="390NiL14kFx" role="37wK5m">
                      <ref role="3cqZAo" node="21Zu7ABuute" resolve="name" />
                    </node>
                    <node concept="3VsKOn" id="3gNap3g8ELj" role="37wK5m">
                      <ref role="3VsUkX" to="6exd:5JQSuNswOXL" resolve="TermNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3mz2_dYxUmw" role="jymVt" />
    <node concept="3clFb_" id="3mz2_dYxTYD" role="jymVt">
      <property role="TrG5h" value="listVar" />
      <node concept="37vLTG" id="3mz2_dYxTYE" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3mz2_dYxTYF" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3mz2_dYxTYG" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="3mz2_dYxTYH" role="1B3o_S" />
      <node concept="3clFbS" id="3mz2_dYxTYI" role="3clF47">
        <node concept="3clFbF" id="3mz2_dYxTYJ" role="3cqZAp">
          <node concept="2YIFZM" id="3gNap3fNlJn" role="3clFbG">
            <ref role="37wK5l" to="oy3s:4TCblo5YI1H" resolve="asVariable" />
            <ref role="1Pybhc" to="oy3s:677NV565N1x" resolve="LogicalUtil" />
            <node concept="2ShNRf" id="6yEjedm5vBK" role="37wK5m">
              <node concept="1pGfFk" id="6yEjedm5vBL" role="2ShVmc">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(jetbrains.mps.logic.reactor.logical.MetaLogical)" resolve="LogicalImpl" />
                <node concept="2ShNRf" id="6yEjedm5vBM" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm5vBN" role="2ShVmc">
                    <ref role="37wK5l" to="bj13:~MetaLogical.&lt;init&gt;(java.lang.String,java.lang.Class)" resolve="MetaLogical" />
                    <node concept="37vLTw" id="6yEjedm5vBO" role="37wK5m">
                      <ref role="3cqZAo" node="3mz2_dYxTYE" resolve="name" />
                    </node>
                    <node concept="3VsKOn" id="6yEjedm5vBP" role="37wK5m">
                      <ref role="3VsUkX" to="6exd:3OPtF03lco4" resolve="ListNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5cGCTtqzpdN" role="jymVt" />
    <node concept="3clFb_" id="5cGCTtqzoJK" role="jymVt">
      <property role="TrG5h" value="wildcard" />
      <node concept="3uibUv" id="5cGCTtqzoJN" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="5cGCTtqzoJO" role="1B3o_S" />
      <node concept="3clFbS" id="5cGCTtqzoJP" role="3clF47">
        <node concept="3clFbF" id="5cGCTtqzoJQ" role="3cqZAp">
          <node concept="2YIFZM" id="3gNap3fNlJo" role="3clFbG">
            <ref role="37wK5l" to="oy3s:4TCblo5YI1H" resolve="asVariable" />
            <ref role="1Pybhc" to="oy3s:677NV565N1x" resolve="LogicalUtil" />
            <node concept="2ShNRf" id="5cGCTtqzoJT" role="37wK5m">
              <node concept="1pGfFk" id="6yEjedm5xLL" role="2ShVmc">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(jetbrains.mps.logic.reactor.logical.MetaLogical)" resolve="LogicalImpl" />
                <node concept="2ShNRf" id="6yEjedm6$x1" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm6$Su" role="2ShVmc">
                    <ref role="37wK5l" to="bj13:~MetaLogical.&lt;init&gt;(java.lang.Class)" resolve="MetaLogical" />
                    <node concept="3VsKOn" id="6yEjedm6_je" role="37wK5m">
                      <ref role="3VsUkX" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="6yEjedm5xWn" role="1pMfVU">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3g8Lll" role="jymVt" />
    <node concept="3clFb_" id="3gNap3g8LjT" role="jymVt">
      <property role="TrG5h" value="asLogicalValue" />
      <node concept="37vLTG" id="3gNap3g8LjU" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="3uibUv" id="3gNap3g8LjV" role="1tU5fm">
          <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
        </node>
      </node>
      <node concept="3uibUv" id="3gNap3g8LjW" role="3clF45">
        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
        <node concept="3qTvmN" id="3gNap3g8LjX" role="11_B2D" />
      </node>
      <node concept="3Tm6S6" id="3gNap3g8LjY" role="1B3o_S" />
      <node concept="3clFbS" id="3gNap3g8LjZ" role="3clF47">
        <node concept="3clFbF" id="3gNap3g8Lk0" role="3cqZAp">
          <node concept="2OqwBi" id="3gNap3g8Lk1" role="3clFbG">
            <node concept="1eOMI4" id="3gNap3g8Lk2" role="2Oq$k0">
              <node concept="10QFUN" id="3gNap3g8Lk3" role="1eOMHV">
                <node concept="37vLTw" id="3gNap3g8Lk4" role="10QFUP">
                  <ref role="3cqZAo" node="3gNap3g8LjU" resolve="var" />
                </node>
                <node concept="3uibUv" id="3gNap3g8Lk5" role="10QFUM">
                  <ref role="3uigEE" to="oy3s:3gNap3fN2hw" resolve="LogicalValue" />
                  <node concept="3qTvmN" id="3gNap3g8Lk6" role="11_B2D" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3gNap3g8Lk7" role="2OqNvi">
              <ref role="37wK5l" to="oy3s:3gNap3fN7SD" resolve="logical" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5TfjU0xmDkm" role="jymVt" />
    <node concept="3clFb_" id="5TfjU0xmBIV" role="jymVt">
      <property role="TrG5h" value="logical" />
      <node concept="3uibUv" id="5TfjU0xmBIW" role="3clF45">
        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
        <node concept="3uibUv" id="5TfjU0xmBIX" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5TfjU0xmBIY" role="1B3o_S" />
      <node concept="3clFbS" id="5TfjU0xmBIZ" role="3clF47">
        <node concept="3clFbF" id="5TfjU0xmBJ0" role="3cqZAp">
          <node concept="2ShNRf" id="5TfjU0xmBJ1" role="3clFbG">
            <node concept="1pGfFk" id="5TfjU0xmBJ2" role="2ShVmc">
              <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.String)" resolve="LogicalImpl" />
              <node concept="37vLTw" id="5TfjU0xmBJ3" role="37wK5m">
                <ref role="3cqZAo" node="5TfjU0xmBJ5" resolve="name" />
              </node>
              <node concept="3uibUv" id="5TfjU0xmBJ4" role="1pMfVU">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5TfjU0xmBJ5" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5TfjU0xmBJ6" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5NuEpF1$W3O" role="1B3o_S" />
    <node concept="3s_gsd" id="5NuEpF1$W3P" role="3s_ewO">
      <node concept="3s$Bmu" id="5TfjU0xm$qx" role="3s_gse">
        <property role="3s$Bm0" value="uni_var_var" />
        <node concept="3cqZAl" id="5TfjU0xm$qy" role="3clF45" />
        <node concept="3Tm1VV" id="5TfjU0xm$qz" role="1B3o_S" />
        <node concept="3clFbS" id="5TfjU0xm$q$" role="3clF47">
          <node concept="3clFbH" id="5TfjU0xmAUA" role="3cqZAp" />
          <node concept="3cpWs8" id="5TfjU0xmAUB" role="3cqZAp">
            <node concept="3cpWsn" id="5TfjU0xmAUC" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="5TfjU0xmAUD" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="3uibUv" id="5TfjU0xmAUE" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="1rXfSq" id="5TfjU0xmAUF" role="33vP2m">
                <ref role="37wK5l" node="5TfjU0xmBIV" resolve="logical" />
                <node concept="Xl_RD" id="5TfjU0xmAUG" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5TfjU0xmAUH" role="3cqZAp">
            <node concept="3cpWsn" id="5TfjU0xmAUI" role="3cpWs9">
              <property role="TrG5h" value="y" />
              <node concept="3uibUv" id="5TfjU0xmAUJ" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="3uibUv" id="5TfjU0xmAUK" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="1rXfSq" id="5TfjU0xmAUL" role="33vP2m">
                <ref role="37wK5l" node="5TfjU0xmBIV" resolve="logical" />
                <node concept="Xl_RD" id="5TfjU0xmAUM" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5TfjU0xmAUN" role="3cqZAp">
            <node concept="3cpWsn" id="5TfjU0xmAUO" role="3cpWs9">
              <property role="TrG5h" value="z" />
              <node concept="3uibUv" id="5TfjU0xmAUP" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="3uibUv" id="5TfjU0xmAUQ" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="1rXfSq" id="5TfjU0xmAUR" role="33vP2m">
                <ref role="37wK5l" node="5TfjU0xmBIV" resolve="logical" />
                <node concept="Xl_RD" id="5TfjU0xmAUS" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5TfjU0xmBFs" role="3cqZAp" />
          <node concept="3vwNmj" id="5TfjU0xmE_B" role="3cqZAp">
            <node concept="2OqwBi" id="5TfjU0xmEUX" role="3vwVQn">
              <node concept="37vLTw" id="5TfjU0xmEE4" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="5TfjU0xmFda" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="5TfjU0xmFj_" role="37wK5m">
                  <ref role="3cqZAo" node="5TfjU0xmAUC" resolve="x" />
                </node>
                <node concept="37vLTw" id="5TfjU0xmF$4" role="37wK5m">
                  <ref role="3cqZAo" node="5TfjU0xmAUI" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5TfjU0xmFEH" role="3cqZAp" />
          <node concept="3clFbF" id="5TfjU0xmFXQ" role="3cqZAp">
            <node concept="2OqwBi" id="5TfjU0xmGa9" role="3clFbG">
              <node concept="37vLTw" id="5TfjU0xmFXO" role="2Oq$k0">
                <ref role="3cqZAo" node="5TfjU0xmAUC" resolve="x" />
              </node>
              <node concept="liA8E" id="5TfjU0xmGY8" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
                <node concept="Xl_RD" id="5TfjU0xmH22" role="37wK5m">
                  <property role="Xl_RC" value="foo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="5TfjU0xmHkT" role="3cqZAp">
            <node concept="2OqwBi" id="5TfjU0xmHJC" role="3vwVQn">
              <node concept="37vLTw" id="5TfjU0xmHwZ" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="5TfjU0xmJIC" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="5TfjU0xmJNx" role="37wK5m">
                  <ref role="3cqZAo" node="5TfjU0xmAUC" resolve="x" />
                </node>
                <node concept="37vLTw" id="5TfjU0xmJTT" role="37wK5m">
                  <ref role="3cqZAo" node="5TfjU0xmAUI" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5TfjU0xmKmC" role="3cqZAp" />
          <node concept="3clFbF" id="5TfjU0xmKBm" role="3cqZAp">
            <node concept="2OqwBi" id="5TfjU0xmKQ3" role="3clFbG">
              <node concept="37vLTw" id="5TfjU0xmKBk" role="2Oq$k0">
                <ref role="3cqZAo" node="5TfjU0xmAUI" resolve="y" />
              </node>
              <node concept="liA8E" id="5TfjU0xmLGH" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
                <node concept="Xl_RD" id="5TfjU0xmLLa" role="37wK5m">
                  <property role="Xl_RC" value="foo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="5TfjU0xmM5X" role="3cqZAp">
            <node concept="2OqwBi" id="5TfjU0xmM5Y" role="3vwVQn">
              <node concept="37vLTw" id="5TfjU0xmM5Z" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="5TfjU0xmM60" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="5TfjU0xmM61" role="37wK5m">
                  <ref role="3cqZAo" node="5TfjU0xmAUC" resolve="x" />
                </node>
                <node concept="37vLTw" id="5TfjU0xmM62" role="37wK5m">
                  <ref role="3cqZAo" node="5TfjU0xmAUI" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5TfjU0xmLSE" role="3cqZAp" />
          <node concept="3clFbF" id="5TfjU0xmMF_" role="3cqZAp">
            <node concept="2OqwBi" id="5TfjU0xmMVG" role="3clFbG">
              <node concept="37vLTw" id="5TfjU0xmMFz" role="2Oq$k0">
                <ref role="3cqZAo" node="5TfjU0xmAUO" resolve="z" />
              </node>
              <node concept="liA8E" id="5TfjU0xmNLi" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
                <node concept="Xl_RD" id="5TfjU0xmNRG" role="37wK5m">
                  <property role="Xl_RC" value="bar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="5TfjU0xmOKD" role="3cqZAp">
            <node concept="2OqwBi" id="5TfjU0xmPgZ" role="3vFALc">
              <node concept="37vLTw" id="5TfjU0xmP0C" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="5TfjU0xmRiP" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="5TfjU0xmRps" role="37wK5m">
                  <ref role="3cqZAo" node="5TfjU0xmAUC" resolve="x" />
                </node>
                <node concept="37vLTw" id="5TfjU0xmRDV" role="37wK5m">
                  <ref role="3cqZAo" node="5TfjU0xmAUO" resolve="z" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="fHk0tWulwY" role="3s_gse">
        <property role="3s$Bm0" value="empty" />
        <node concept="3cqZAl" id="fHk0tWulx0" role="3clF45" />
        <node concept="3Tm1VV" id="fHk0tWulx2" role="1B3o_S" />
        <node concept="3clFbS" id="fHk0tWulx3" role="3clF47">
          <node concept="3clFbH" id="fHk0tWuxTG" role="3cqZAp" />
          <node concept="3cpWs8" id="fHk0tWu_Ms" role="3cqZAp">
            <node concept="3cpWsn" id="fHk0tWu_Mt" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="fHk0tWu_Mu" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="fHk0tWuK3B" role="33vP2m">
                <node concept="1oi5UN" id="fHk0tWuK7X" role="1oi0x0" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="fHk0tWuKa3" role="3cqZAp">
            <node concept="3cpWsn" id="fHk0tWuKa4" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="fHk0tWuKa5" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="fHk0tWuKa6" role="33vP2m">
                <node concept="1oi5UN" id="fHk0tWuKa7" role="1oi0x0" />
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
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="fHk0tWuKfb" role="37wK5m">
                  <ref role="3cqZAo" node="fHk0tWu_Mt" resolve="a" />
                </node>
                <node concept="37vLTw" id="fHk0tWuKiE" role="37wK5m">
                  <ref role="3cqZAo" node="fHk0tWuKa4" resolve="b" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="21Zu7ABuiLx" role="3s_gse">
        <property role="3s$Bm0" value="value" />
        <node concept="3cqZAl" id="21Zu7ABuiLy" role="3clF45" />
        <node concept="3Tm1VV" id="21Zu7ABuiLz" role="1B3o_S" />
        <node concept="3clFbS" id="21Zu7ABuiL$" role="3clF47">
          <node concept="3clFbH" id="21Zu7ABuiL_" role="3cqZAp" />
          <node concept="3cpWs8" id="21Zu7ABuiLA" role="3cqZAp">
            <node concept="3cpWsn" id="21Zu7ABuiLB" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="21Zu7ABuiLC" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="21Zu7ABuiLD" role="33vP2m">
                <node concept="1oi5UN" id="21Zu7ABuiLE" role="1oi0x0">
                  <node concept="1oi5Wm" id="21Zu7ABuiZP" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="21Zu7ABuj7y" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="21Zu7ABuiLG" role="3cqZAp">
            <node concept="3cpWsn" id="21Zu7ABuiLH" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="21Zu7ABuiLI" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="21Zu7ABuiLJ" role="33vP2m">
                <node concept="1oi5UN" id="21Zu7ABun6y" role="1oi0x0">
                  <node concept="1oi5Wm" id="21Zu7ABun6z" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="21Zu7ABun6$" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
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
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="21Zu7ABuiLR" role="37wK5m">
                  <ref role="3cqZAo" node="21Zu7ABuiLB" resolve="a" />
                </node>
                <node concept="37vLTw" id="21Zu7ABuiLS" role="37wK5m">
                  <ref role="3cqZAo" node="21Zu7ABuiLH" resolve="b" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="53iOybEHDa_" role="3s_gse">
        <property role="3s$Bm0" value="value_var" />
        <node concept="3cqZAl" id="53iOybEHDaA" role="3clF45" />
        <node concept="3Tm1VV" id="53iOybEHDaB" role="1B3o_S" />
        <node concept="3clFbS" id="53iOybEHDaC" role="3clF47">
          <node concept="3clFbH" id="53iOybEHDaD" role="3cqZAp" />
          <node concept="3cpWs8" id="53iOybEHDaE" role="3cqZAp">
            <node concept="3cpWsn" id="53iOybEHDaF" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="53iOybEHDaG" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="53iOybEHDaH" role="33vP2m">
                <node concept="1oi5UN" id="53iOybEHDaI" role="1oi0x0">
                  <node concept="1oi5Wm" id="53iOybEHDaJ" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="53iOybEHDaK" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="53iOybEHDaL" role="3cqZAp">
            <node concept="3cpWsn" id="53iOybEHDaM" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="53iOybEHDaN" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="53iOybEHDaO" role="33vP2m">
                <node concept="1oi5UN" id="53iOybEHDaP" role="1oi0x0">
                  <node concept="1oi5Wm" id="53iOybEHDaQ" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="53iOybEHDsa" role="1oi5zu">
                      <property role="1oi5yK" value="" />
                      <node concept="22Ky0T" id="53iOybEHDsd" role="lGtFl">
                        <node concept="1rXfSq" id="53iOybEHEjW" role="22Ky0K">
                          <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                          <node concept="Xl_RD" id="53iOybEHEkx" role="37wK5m">
                            <property role="Xl_RC" value="X" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="53iOybEHDaS" role="3cqZAp" />
          <node concept="3vwNmj" id="53iOybEHDaT" role="3cqZAp">
            <node concept="2OqwBi" id="53iOybEHDaU" role="3vwVQn">
              <node concept="37vLTw" id="53iOybEHDaV" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="53iOybEHDaW" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="53iOybEHDaX" role="37wK5m">
                  <ref role="3cqZAo" node="53iOybEHDaF" resolve="a" />
                </node>
                <node concept="37vLTw" id="53iOybEHDaY" role="37wK5m">
                  <ref role="3cqZAo" node="53iOybEHDaM" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6N2bvv_upuD" role="3cqZAp" />
          <node concept="3vwNmj" id="6N2bvv_upu4" role="3cqZAp">
            <node concept="2OqwBi" id="6N2bvv_upu5" role="3vwVQn">
              <node concept="37vLTw" id="6N2bvv_upu6" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="6N2bvv_upu7" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="6N2bvv_upu8" role="37wK5m">
                  <ref role="3cqZAo" node="53iOybEHDaF" resolve="a" />
                </node>
                <node concept="1rXfSq" id="6N2bvv_upxz" role="37wK5m">
                  <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                  <node concept="Xl_RD" id="6N2bvv_upxR" role="37wK5m">
                    <property role="Xl_RC" value="Y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3gNap3g8Gb6" role="3s_gse">
        <property role="3s$Bm0" value="value_stringvar" />
        <node concept="3cqZAl" id="3gNap3g8Gb7" role="3clF45" />
        <node concept="3Tm1VV" id="3gNap3g8Gb8" role="1B3o_S" />
        <node concept="3clFbS" id="3gNap3g8Gb9" role="3clF47">
          <node concept="3clFbH" id="3gNap3g8Gba" role="3cqZAp" />
          <node concept="3cpWs8" id="3gNap3g8Gbb" role="3cqZAp">
            <node concept="3cpWsn" id="3gNap3g8Gbc" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="3gNap3g8Gbd" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3gNap3g8Gbe" role="33vP2m">
                <node concept="1oi5UN" id="3gNap3g8Gbf" role="1oi0x0">
                  <node concept="1oi5Wm" id="3gNap3g8Gbg" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3gNap3g8Gbh" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3gNap3g8GkD" role="1ojpOf">
                    <property role="TrG5h" value="val" />
                    <node concept="1oi5XN" id="3gNap3g8GkP" role="1oi5zu">
                      <node concept="22Ky0T" id="3gNap3g8GkW" role="lGtFl">
                        <node concept="1rXfSq" id="3gNap3g8Gl$" role="22Ky0K">
                          <ref role="37wK5l" node="3gNap3g8EL6" resolve="stringvar" />
                          <node concept="Xl_RD" id="3gNap3g8GlT" role="37wK5m">
                            <property role="Xl_RC" value="X" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3gNap3g8Gbi" role="3cqZAp">
            <node concept="3cpWsn" id="3gNap3g8Gbj" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="3gNap3g8Gbk" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3gNap3g8Gbl" role="33vP2m">
                <node concept="1oi5UN" id="3gNap3g8Gbm" role="1oi0x0">
                  <node concept="1oi5Wm" id="3gNap3g8Gbn" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3gNap3g8Gbo" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3gNap3g8Gm8" role="1ojpOf">
                    <property role="TrG5h" value="val" />
                    <node concept="1oi5XN" id="3gNap3g8Gmc" role="1oi5zu">
                      <property role="1oi5yK" value="xyz" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3gNap3g8Gbs" role="3cqZAp" />
          <node concept="3vwNmj" id="3gNap3g8Gbt" role="3cqZAp">
            <node concept="2OqwBi" id="3gNap3g8Gbu" role="3vwVQn">
              <node concept="37vLTw" id="3gNap3g8Gbv" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="3gNap3g8Gbw" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="3gNap3g8Gbx" role="37wK5m">
                  <ref role="3cqZAo" node="3gNap3g8Gbc" resolve="a" />
                </node>
                <node concept="37vLTw" id="3gNap3g8Gby" role="37wK5m">
                  <ref role="3cqZAo" node="3gNap3g8Gbj" resolve="b" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3gNap3g8JK3" role="3s_gse">
        <property role="3s$Bm0" value="value_assigned_stringvar" />
        <node concept="3cqZAl" id="3gNap3g8JK4" role="3clF45" />
        <node concept="3Tm1VV" id="3gNap3g8JK5" role="1B3o_S" />
        <node concept="3clFbS" id="3gNap3g8JK6" role="3clF47">
          <node concept="3clFbH" id="3gNap3g8JK7" role="3cqZAp" />
          <node concept="3cpWs8" id="3gNap3g8JUb" role="3cqZAp">
            <node concept="3cpWsn" id="3gNap3g8JUc" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="3gNap3g8JU9" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="3gNap3g8JUd" role="33vP2m">
                <ref role="37wK5l" node="3gNap3g8EL6" resolve="stringvar" />
                <node concept="Xl_RD" id="3gNap3g8JUe" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3gNap3g8LmT" role="3cqZAp">
            <node concept="2OqwBi" id="3gNap3g8LVl" role="3clFbG">
              <node concept="1eOMI4" id="3gNap3g8LL3" role="2Oq$k0">
                <node concept="10QFUN" id="3gNap3g8LL0" role="1eOMHV">
                  <node concept="3uibUv" id="3gNap3g8LLe" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                    <node concept="17QB3L" id="3gNap3g8LLm" role="11_B2D" />
                  </node>
                  <node concept="1rXfSq" id="3gNap3g8LL5" role="10QFUP">
                    <ref role="37wK5l" node="3gNap3g8LjT" resolve="asLogicalValue" />
                    <node concept="37vLTw" id="3gNap3g8LL6" role="37wK5m">
                      <ref role="3cqZAo" node="3gNap3g8JUc" resolve="x" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3gNap3g8MRy" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
                <node concept="Xl_RD" id="3gNap3g8MRS" role="37wK5m">
                  <property role="Xl_RC" value="xyz" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3gNap3g8MTo" role="3cqZAp" />
          <node concept="3cpWs8" id="3gNap3g8JK8" role="3cqZAp">
            <node concept="3cpWsn" id="3gNap3g8JK9" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="3gNap3g8JKa" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3gNap3g8JKb" role="33vP2m">
                <node concept="1oi5UN" id="3gNap3g8JKc" role="1oi0x0">
                  <node concept="1oi5Wm" id="3gNap3g8JKd" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3gNap3g8JKe" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3gNap3g8JKf" role="1ojpOf">
                    <property role="TrG5h" value="val" />
                    <node concept="1oi5XN" id="3gNap3g8JKg" role="1oi5zu">
                      <node concept="22Ky0T" id="3gNap3g8JKh" role="lGtFl">
                        <node concept="37vLTw" id="3gNap3g8JUf" role="22Ky0K">
                          <ref role="3cqZAo" node="3gNap3g8JUc" resolve="x" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3gNap3g8JKk" role="3cqZAp">
            <node concept="3cpWsn" id="3gNap3g8JKl" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="3gNap3g8JKm" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3gNap3g8JKn" role="33vP2m">
                <node concept="1oi5UN" id="3gNap3g8JKo" role="1oi0x0">
                  <node concept="1oi5Wm" id="3gNap3g8JKp" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3gNap3g8JKq" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3gNap3g8JKr" role="1ojpOf">
                    <property role="TrG5h" value="val" />
                    <node concept="1oi5XN" id="3gNap3g8JKs" role="1oi5zu">
                      <property role="1oi5yK" value="xyz" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3gNap3g94O8" role="3cqZAp">
            <node concept="3cpWsn" id="3gNap3g94O9" role="3cpWs9">
              <property role="TrG5h" value="c" />
              <node concept="3uibUv" id="3gNap3g94Oa" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3gNap3g94Ob" role="33vP2m">
                <node concept="1oi5UN" id="3gNap3g94Oc" role="1oi0x0">
                  <node concept="1oi5Wm" id="3gNap3g94Od" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3gNap3g94Oe" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3gNap3g94Of" role="1ojpOf">
                    <property role="TrG5h" value="val" />
                    <node concept="1oi5XN" id="3gNap3g94Og" role="1oi5zu">
                      <property role="1oi5yK" value="abc" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3gNap3g8JKt" role="3cqZAp" />
          <node concept="3vwNmj" id="3gNap3g8JKu" role="3cqZAp">
            <node concept="2OqwBi" id="3gNap3g8JKv" role="3vwVQn">
              <node concept="37vLTw" id="3gNap3g8JKw" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="3gNap3g8JKx" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="3gNap3g8JKy" role="37wK5m">
                  <ref role="3cqZAo" node="3gNap3g8JK9" resolve="a" />
                </node>
                <node concept="37vLTw" id="3gNap3g8JKz" role="37wK5m">
                  <ref role="3cqZAo" node="3gNap3g8JKl" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="3gNap3g94Tw" role="3cqZAp">
            <node concept="2OqwBi" id="3gNap3g94Ur" role="3vFALc">
              <node concept="37vLTw" id="3gNap3g94Us" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="3gNap3g94Ut" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="3gNap3g94Uu" role="37wK5m">
                  <ref role="3cqZAo" node="3gNap3g8JK9" resolve="a" />
                </node>
                <node concept="37vLTw" id="3gNap3g95cW" role="37wK5m">
                  <ref role="3cqZAo" node="3gNap3g94O9" resolve="c" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="21Zu7ABunhH" role="3s_gse">
        <property role="3s$Bm0" value="var" />
        <node concept="3cqZAl" id="21Zu7ABunhI" role="3clF45" />
        <node concept="3Tm1VV" id="21Zu7ABunhJ" role="1B3o_S" />
        <node concept="3clFbS" id="21Zu7ABunhK" role="3clF47">
          <node concept="3clFbH" id="21Zu7ABunhL" role="3cqZAp" />
          <node concept="3cpWs8" id="21Zu7ABunhM" role="3cqZAp">
            <node concept="3cpWsn" id="21Zu7ABunhN" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="21Zu7ABunhO" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="21Zu7ABunhP" role="33vP2m">
                <node concept="1oi5UN" id="21Zu7ABunhQ" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyLc" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="3t7_2FgoIyK" role="38e3mL">
                      <node concept="1oi5UN" id="677NV56vfMM" role="KCVpo">
                        <node concept="22Ky0T" id="677NV56vfMN" role="lGtFl">
                          <node concept="1rXfSq" id="21Zu7ABuxPJ" role="22Ky0K">
                            <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                            <node concept="Xl_RD" id="21Zu7ABuxQL" role="37wK5m">
                              <property role="Xl_RC" value="X" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="21Zu7ABunhR" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="21Zu7ABunhS" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="21Zu7ABunhV" role="3cqZAp">
            <node concept="3cpWsn" id="21Zu7ABunhW" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="21Zu7ABunhX" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="21Zu7ABunhY" role="33vP2m">
                <node concept="1oi5UN" id="21Zu7ABunhZ" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyLB" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="3t7_2FgoIyV" role="38e3mL">
                      <node concept="1oi5UN" id="677NV56vfMG" role="KCVpo">
                        <node concept="22Ky0T" id="677NV56vfMH" role="lGtFl">
                          <node concept="1rXfSq" id="21Zu7ABuxSN" role="22Ky0K">
                            <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                            <node concept="Xl_RD" id="21Zu7ABuxTP" role="37wK5m">
                              <property role="Xl_RC" value="Y" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="21Zu7ABuni0" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="21Zu7ABuni1" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
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
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="21Zu7ABuni9" role="37wK5m">
                  <ref role="3cqZAo" node="21Zu7ABunhN" resolve="a" />
                </node>
                <node concept="37vLTw" id="21Zu7ABunia" role="37wK5m">
                  <ref role="3cqZAo" node="21Zu7ABunhW" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6N2bvv_ut1Y" role="3cqZAp" />
          <node concept="3vwNmj" id="6N2bvv_usQD" role="3cqZAp">
            <node concept="2OqwBi" id="6N2bvv_usQE" role="3vwVQn">
              <node concept="37vLTw" id="6N2bvv_usQF" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="6N2bvv_usQG" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="1rXfSq" id="6N2bvv_usTK" role="37wK5m">
                  <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                  <node concept="Xl_RD" id="6N2bvv_usU4" role="37wK5m">
                    <property role="Xl_RC" value="Y" />
                  </node>
                </node>
                <node concept="1rXfSq" id="6N2bvv_ut1x" role="37wK5m">
                  <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                  <node concept="Xl_RD" id="6N2bvv_ut1Q" role="37wK5m">
                    <property role="Xl_RC" value="Z" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="21Zu7ABupTn" role="3s_gse">
        <property role="3s$Bm0" value="term_var" />
        <node concept="3cqZAl" id="21Zu7ABupTo" role="3clF45" />
        <node concept="3Tm1VV" id="21Zu7ABupTp" role="1B3o_S" />
        <node concept="3clFbS" id="21Zu7ABupTq" role="3clF47">
          <node concept="3clFbH" id="21Zu7ABupTr" role="3cqZAp" />
          <node concept="3cpWs8" id="21Zu7ABupTs" role="3cqZAp">
            <node concept="3cpWsn" id="21Zu7ABupTt" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="21Zu7ABupTu" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="21Zu7ABupTv" role="33vP2m">
                <node concept="1oi5UN" id="21Zu7ABupTw" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyLa" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="3t7_2FgoIyJ" role="38e3mL">
                      <node concept="1oi5UN" id="21Zu7ABuqdD" role="KCVpo">
                        <node concept="1oi5Wm" id="21Zu7ABuqdL" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="21Zu7ABuqdR" role="1oi5zu">
                            <property role="1oi5yK" value="bar" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="21Zu7ABupT$" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="21Zu7ABupT_" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="21Zu7ABupTC" role="3cqZAp">
            <node concept="3cpWsn" id="21Zu7ABupTD" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="21Zu7ABupTE" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="21Zu7ABupTF" role="33vP2m">
                <node concept="1oi5UN" id="21Zu7ABupTG" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyLo" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="3t7_2FgoIyU" role="38e3mL">
                      <node concept="1oi5UN" id="677NV56vfN$" role="KCVpo">
                        <node concept="22Ky0T" id="677NV56vfN_" role="lGtFl">
                          <node concept="1rXfSq" id="21Zu7ABuxYK" role="22Ky0K">
                            <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                            <node concept="Xl_RD" id="21Zu7ABuxZM" role="37wK5m">
                              <property role="Xl_RC" value="X" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="21Zu7ABupTK" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="21Zu7ABupTL" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
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
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="21Zu7ABupTT" role="37wK5m">
                  <ref role="3cqZAo" node="21Zu7ABupTt" resolve="a" />
                </node>
                <node concept="37vLTw" id="21Zu7ABupTU" role="37wK5m">
                  <ref role="3cqZAo" node="21Zu7ABupTD" resolve="b" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1OShD0I0umi" role="3s_gse">
        <property role="3s$Bm0" value="list" />
        <node concept="3cqZAl" id="1OShD0I0umj" role="3clF45" />
        <node concept="3Tm1VV" id="1OShD0I0umk" role="1B3o_S" />
        <node concept="3clFbS" id="1OShD0I0uml" role="3clF47">
          <node concept="3clFbH" id="1OShD0I0umm" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0I0umn" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0I0umo" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1OShD0I0ump" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0I0umq" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0I0umr" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyLm" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0I0uMG" role="38e3mL">
                      <node concept="1oi5UN" id="1OShD0I0umt" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0I0umu" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0I0umv" role="1oi5zu">
                            <property role="1oi5yK" value="bar" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0I0uNo" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0I0uNp" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0I0uNq" role="1oi5zu">
                            <property role="1oi5yK" value="bazz" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0I0umw" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0I0umx" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0I0umy" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0I0umz" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0I0um$" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0I0um_" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0I0umA" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0I0umB" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="677NV56vfNk" role="1oi5TL">
                      <node concept="22Ky0T" id="677NV56vfNl" role="lGtFl">
                        <node concept="1rXfSq" id="1OShD0I0umD" role="22Ky0K">
                          <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                          <node concept="Xl_RD" id="1OShD0I0umE" role="37wK5m">
                            <property role="Xl_RC" value="X" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0I0umF" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0I0umG" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0I0umH" role="3cqZAp" />
          <node concept="3vwNmj" id="1OShD0I0umI" role="3cqZAp">
            <node concept="2OqwBi" id="1OShD0I0umJ" role="3vwVQn">
              <node concept="37vLTw" id="1OShD0I0umK" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="1OShD0I0umL" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="1OShD0I0umM" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0I0umo" resolve="a" />
                </node>
                <node concept="37vLTw" id="1OShD0I0umN" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0I0umz" resolve="b" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1OShD0I168J" role="3s_gse">
        <property role="3s$Bm0" value="list_tail" />
        <node concept="3cqZAl" id="1OShD0I168K" role="3clF45" />
        <node concept="3Tm1VV" id="1OShD0I168L" role="1B3o_S" />
        <node concept="3clFbS" id="1OShD0I168M" role="3clF47">
          <node concept="3clFbH" id="1OShD0I168N" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0I168O" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0I168P" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1OShD0I168Q" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0I168R" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0I168S" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyLf" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0I168U" role="38e3mL">
                      <node concept="1oi5UN" id="1OShD0I168V" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0I168W" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0I168X" role="1oi5zu">
                            <property role="1oi5yK" value="bar" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0I168Y" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0I168Z" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0I1690" role="1oi5zu">
                            <property role="1oi5yK" value="bazz" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0I1691" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0I1692" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0I16sv" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0I16sw" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0I16sx" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0I16sy" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0I16sz" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyLe" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0I16s_" role="38e3mL">
                      <node concept="1oi5UN" id="1OShD0I16sA" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0I16sB" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0I16sC" role="1oi5zu">
                            <property role="1oi5yK" value="bar" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="677NV56y2bu" role="KCVpo">
                        <node concept="22Ky0T" id="677NV56y2bv" role="lGtFl">
                          <node concept="1rXfSq" id="1OShD0I16xN" role="22Ky0K">
                            <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                            <node concept="Xl_RD" id="1OShD0I16xO" role="37wK5m">
                              <property role="Xl_RC" value="X" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0I16sG" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0I16sH" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0I169e" role="3cqZAp" />
          <node concept="3vwNmj" id="1OShD0I169f" role="3cqZAp">
            <node concept="2OqwBi" id="1OShD0I169g" role="3vwVQn">
              <node concept="37vLTw" id="1OShD0I169h" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="1OShD0I169i" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="1OShD0I169j" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0I168P" resolve="a" />
                </node>
                <node concept="37vLTw" id="1OShD0I169k" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0I16sw" resolve="b" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1OShD0I1vD1" role="3s_gse">
        <property role="3s$Bm0" value="list_tail_nil" />
        <node concept="3cqZAl" id="1OShD0I1vD2" role="3clF45" />
        <node concept="3Tm1VV" id="1OShD0I1vD3" role="1B3o_S" />
        <node concept="3clFbS" id="1OShD0I1vD4" role="3clF47">
          <node concept="3clFbH" id="1OShD0I1vD5" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0I1vD6" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0I1vD7" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1OShD0I1vD8" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0I1vD9" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0I1vDa" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyL3" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0I1vDc" role="38e3mL">
                      <node concept="1oi5UN" id="1OShD0I1vDd" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0I1vDe" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0I1vDf" role="1oi5zu">
                            <property role="1oi5yK" value="bar" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0I1vDg" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0I1vDh" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0I1vDi" role="1oi5zu">
                            <property role="1oi5yK" value="bazz" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0I1vDj" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0I1vDk" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0I1vDl" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0I1vDm" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0I1vDn" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0I1vDo" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0I1vDp" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyL9" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0I1vDr" role="38e3mL">
                      <node concept="1oi5UN" id="1OShD0I1vDs" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0I1vDt" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0I1vDu" role="1oi5zu">
                            <property role="1oi5yK" value="bar" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0I1yzr" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0I1yzs" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0I1yzt" role="1oi5zu">
                            <property role="1oi5yK" value="bazz" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="677NV56y2bw" role="KCVpo">
                        <node concept="22Ky0T" id="677NV56y2bx" role="lGtFl">
                          <node concept="1rXfSq" id="1OShD0I1vDw" role="22Ky0K">
                            <ref role="37wK5l" node="5cGCTtqzoJK" resolve="wildcard" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0I1vDy" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0I1vDz" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0I1vD$" role="3cqZAp" />
          <node concept="3vwNmj" id="1OShD0I1vD_" role="3cqZAp">
            <node concept="2OqwBi" id="1OShD0I1vDA" role="3vwVQn">
              <node concept="37vLTw" id="1OShD0I1vDB" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="1OShD0I1vDC" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="1OShD0I1vDD" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0I1vD7" resolve="a" />
                </node>
                <node concept="37vLTw" id="1OShD0I1vDE" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0I1vDm" resolve="b" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1OShD0If5u$" role="3s_gse">
        <property role="3s$Bm0" value="list_nil" />
        <node concept="3cqZAl" id="1OShD0If5u_" role="3clF45" />
        <node concept="3Tm1VV" id="1OShD0If5uA" role="1B3o_S" />
        <node concept="3clFbS" id="1OShD0If5uB" role="3clF47">
          <node concept="3clFbH" id="1OShD0If5uC" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0If5uD" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0If5uE" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1OShD0If5uF" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0If5uG" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0If5uH" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyLF" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0If5uJ" role="38e3mL" />
                  </node>
                  <node concept="1oi5Wm" id="1OShD0If5uQ" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0If5uR" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0If5uS" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0If5uT" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0If5uU" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0If5uV" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0If5uW" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyLy" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0If5uY" role="38e3mL">
                      <node concept="1oi5UN" id="677NV56y2bC" role="KCVpo">
                        <node concept="22Ky0T" id="677NV56y2bD" role="lGtFl">
                          <node concept="1rXfSq" id="1OShD0If5v6" role="22Ky0K">
                            <ref role="37wK5l" node="5cGCTtqzoJK" resolve="wildcard" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0If5v8" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0If5v9" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0If5va" role="3cqZAp" />
          <node concept="3vwNmj" id="1OShD0If5vb" role="3cqZAp">
            <node concept="2OqwBi" id="1OShD0If5vc" role="3vwVQn">
              <node concept="37vLTw" id="1OShD0If5vd" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="1OShD0If5ve" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="1OShD0If5vf" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0If5uE" resolve="a" />
                </node>
                <node concept="37vLTw" id="1OShD0If5vg" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0If5uT" resolve="b" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="5_6ImQYXLsQ" role="3s_gse">
        <property role="3s$Bm0" value="induction" />
        <node concept="3cqZAl" id="5_6ImQYXLsR" role="3clF45" />
        <node concept="3Tm1VV" id="5_6ImQYXLsS" role="1B3o_S" />
        <node concept="3clFbS" id="5_6ImQYXLsT" role="3clF47">
          <node concept="3cpWs8" id="5_6ImQYXLIO" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYXLIP" role="3cpWs9">
              <property role="TrG5h" value="foo" />
              <node concept="3uibUv" id="5_6ImQYXLIN" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYXLIQ" role="33vP2m">
                <node concept="1oi5UN" id="5_6ImQYXLIR" role="1oi0x0">
                  <node concept="1oi5Wm" id="5_6ImQYXLIS" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="5_6ImQYXLIT" role="1oi5zu">
                      <property role="1oi5yK" value="Foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5_6ImQYXLKv" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYXLKw" role="3cpWs9">
              <property role="TrG5h" value="bar" />
              <node concept="3uibUv" id="5_6ImQYXLKx" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYXLKy" role="33vP2m">
                <node concept="1oi5UN" id="5_6ImQYXLKz" role="1oi0x0">
                  <node concept="1oi5Wm" id="5_6ImQYXLK$" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="5_6ImQYXLK_" role="1oi5zu">
                      <property role="1oi5yK" value="Bar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5_6ImQYXLLH" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYXLLI" role="3cpWs9">
              <property role="TrG5h" value="bazz" />
              <node concept="3uibUv" id="5_6ImQYXLLJ" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYXLLK" role="33vP2m">
                <node concept="1oi5UN" id="5_6ImQYXLLL" role="1oi0x0">
                  <node concept="1oi5Wm" id="5_6ImQYXLLM" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="5_6ImQYXLLN" role="1oi5zu">
                      <property role="1oi5yK" value="Bazz" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5_6ImQYXLG1" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYXLG2" role="3cpWs9">
              <property role="TrG5h" value="list1" />
              <node concept="3uibUv" id="5_6ImQYXLG0" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYXLG3" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyLl" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="5_6ImQYXLG5" role="38e3mL">
                    <node concept="1oi5UN" id="5_6ImQYXLNp" role="KCVpo">
                      <node concept="22Ky0T" id="5_6ImQYXLPb" role="lGtFl">
                        <node concept="37vLTw" id="5_6ImQYXLP_" role="22Ky0K">
                          <ref role="3cqZAo" node="5_6ImQYXLIP" resolve="foo" />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="5_6ImQYXLU6" role="KCVpo">
                      <node concept="22Ky0T" id="5_6ImQYXLUc" role="lGtFl">
                        <node concept="37vLTw" id="5_6ImQYXLUA" role="22Ky0K">
                          <ref role="3cqZAo" node="5_6ImQYXLKw" resolve="bar" />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="5_6ImQYXLUS" role="KCVpo">
                      <node concept="22Ky0T" id="5_6ImQYXLV1" role="lGtFl">
                        <node concept="37vLTw" id="5_6ImQYXLVr" role="22Ky0K">
                          <ref role="3cqZAo" node="5_6ImQYXLLI" resolve="bazz" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5_6ImQYXLWf" role="3cqZAp" />
          <node concept="3cpWs8" id="5_6ImQYXM2V" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYXM2W" role="3cpWs9">
              <property role="TrG5h" value="head" />
              <node concept="3uibUv" id="5_6ImQYXM2U" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="5_6ImQYXM2X" role="33vP2m">
                <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                <node concept="Xl_RD" id="5_6ImQYXM2Y" role="37wK5m">
                  <property role="Xl_RC" value="head" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5_6ImQYXM85" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYXM86" role="3cpWs9">
              <property role="TrG5h" value="tail" />
              <node concept="3uibUv" id="5_6ImQYXM87" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="5_6ImQYXM88" role="33vP2m">
                <ref role="37wK5l" node="3mz2_dYxTYD" resolve="listVar" />
                <node concept="Xl_RD" id="5_6ImQYXM89" role="37wK5m">
                  <property role="Xl_RC" value="tail" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5_6ImQYXR4O" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYXR4P" role="3cpWs9">
              <property role="TrG5h" value="list2" />
              <node concept="3uibUv" id="5_6ImQYXR4Q" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYXRaB" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyLt" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="5_6ImQYXRpY" role="38e3mL">
                    <node concept="1oi5UN" id="5_6ImQYXRq0" role="KCVpo">
                      <node concept="22Ky0T" id="5_6ImQYXRq2" role="lGtFl">
                        <node concept="37vLTw" id="5_6ImQYXRrQ" role="22Ky0K">
                          <ref role="3cqZAo" node="5_6ImQYXM2W" resolve="head" />
                        </node>
                      </node>
                    </node>
                    <node concept="KCUsM" id="3mz2_dYxTSx" role="KCVpo">
                      <node concept="22Ky0T" id="3mz2_dYxTSE" role="lGtFl">
                        <node concept="37vLTw" id="3mz2_dYxTTb" role="22Ky0K">
                          <ref role="3cqZAo" node="5_6ImQYXM86" resolve="tail" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5_6ImQYXLXs" role="3cqZAp" />
          <node concept="3clFbF" id="5_6ImQYXMf_" role="3cqZAp">
            <node concept="2OqwBi" id="5_6ImQYXMfB" role="3clFbG">
              <node concept="37vLTw" id="5_6ImQYXMfC" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="5_6ImQYXMfD" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="5_6ImQYXMli" role="37wK5m">
                  <ref role="3cqZAo" node="5_6ImQYXLG2" resolve="list1" />
                </node>
                <node concept="37vLTw" id="5_6ImQYXMnu" role="37wK5m">
                  <ref role="3cqZAo" node="5_6ImQYXR4P" resolve="list2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="5_6ImQYXMqX" role="3cqZAp">
            <node concept="2OqwBi" id="5_6ImQYXMqY" role="3vwVQn">
              <node concept="37vLTw" id="5_6ImQYXMqZ" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="5_6ImQYXMr0" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="5_6ImQYXMvo" role="37wK5m">
                  <ref role="3cqZAo" node="5_6ImQYXM2W" resolve="head" />
                </node>
                <node concept="37vLTw" id="5_6ImQYXMxx" role="37wK5m">
                  <ref role="3cqZAo" node="5_6ImQYXLIP" resolve="foo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5_6ImQYY15y" role="3cqZAp" />
          <node concept="3cpWs8" id="5_6ImQYY0qV" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYY0qW" role="3cpWs9">
              <property role="TrG5h" value="expectedTail" />
              <node concept="3uibUv" id="5_6ImQYY0qN" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYY0qX" role="33vP2m">
                <node concept="KCUsM" id="5_6ImQYY0qY" role="1oi0x0">
                  <node concept="1oi5UN" id="5_6ImQYY0qZ" role="KCVpo">
                    <node concept="22Ky0T" id="5_6ImQYY0r0" role="lGtFl">
                      <node concept="2OqwBi" id="5_6ImQYY0r1" role="22Ky0K">
                        <node concept="37vLTw" id="5_6ImQYY0r2" role="2Oq$k0">
                          <ref role="3cqZAo" node="5_6ImQYXLKw" resolve="bar" />
                        </node>
                        <node concept="liA8E" id="5_6ImQYY0r3" role="2OqNvi">
                          <ref role="37wK5l" to="6exd:2QE4RCGndD7" resolve="asRoot" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5UN" id="5_6ImQYY0r4" role="KCVpo">
                    <node concept="22Ky0T" id="5_6ImQYY0r5" role="lGtFl">
                      <node concept="2OqwBi" id="5_6ImQYY0r6" role="22Ky0K">
                        <node concept="37vLTw" id="5_6ImQYY0r7" role="2Oq$k0">
                          <ref role="3cqZAo" node="5_6ImQYXLLI" resolve="bazz" />
                        </node>
                        <node concept="liA8E" id="5_6ImQYY0r8" role="2OqNvi">
                          <ref role="37wK5l" to="6exd:2QE4RCGndD7" resolve="asRoot" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="5_6ImQYXMzj" role="3cqZAp">
            <node concept="2OqwBi" id="5_6ImQYXMzk" role="3vwVQn">
              <node concept="37vLTw" id="5_6ImQYXMzl" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="5_6ImQYXMzm" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="5_6ImQYXMBW" role="37wK5m">
                  <ref role="3cqZAo" node="5_6ImQYXM86" resolve="tail" />
                </node>
                <node concept="37vLTw" id="5_6ImQYY1hN" role="37wK5m">
                  <ref role="3cqZAo" node="5_6ImQYY0qW" resolve="expectedTail" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="5_6ImQYY3ra" role="3s_gse">
        <property role="3s$Bm0" value="induction_singleton" />
        <node concept="3cqZAl" id="5_6ImQYY3rb" role="3clF45" />
        <node concept="3Tm1VV" id="5_6ImQYY3rc" role="1B3o_S" />
        <node concept="3clFbS" id="5_6ImQYY3rd" role="3clF47">
          <node concept="3cpWs8" id="5_6ImQYY3re" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYY3rf" role="3cpWs9">
              <property role="TrG5h" value="foo" />
              <node concept="3uibUv" id="5_6ImQYY3rg" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYY3rh" role="33vP2m">
                <node concept="1oi5UN" id="5_6ImQYY3ri" role="1oi0x0">
                  <node concept="1oi5Wm" id="5_6ImQYY3rj" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="5_6ImQYY3rk" role="1oi5zu">
                      <property role="1oi5yK" value="Foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5_6ImQYY3rz" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYY3r$" role="3cpWs9">
              <property role="TrG5h" value="list1" />
              <node concept="3uibUv" id="5_6ImQYY3r_" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYY3rA" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyLv" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="5_6ImQYY3rC" role="38e3mL">
                    <node concept="1oi5UN" id="5_6ImQYY3rD" role="KCVpo">
                      <node concept="22Ky0T" id="5_6ImQYY3rE" role="lGtFl">
                        <node concept="37vLTw" id="5_6ImQYY3rF" role="22Ky0K">
                          <ref role="3cqZAo" node="5_6ImQYY3rf" resolve="foo" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5_6ImQYY3rM" role="3cqZAp" />
          <node concept="3cpWs8" id="5_6ImQYY3rN" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYY3rO" role="3cpWs9">
              <property role="TrG5h" value="head" />
              <node concept="3uibUv" id="5_6ImQYY3rP" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="5_6ImQYY3rQ" role="33vP2m">
                <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                <node concept="Xl_RD" id="5_6ImQYY3rR" role="37wK5m">
                  <property role="Xl_RC" value="head" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5_6ImQYY3rS" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYY3rT" role="3cpWs9">
              <property role="TrG5h" value="tail" />
              <node concept="3uibUv" id="5_6ImQYY3rU" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="5_6ImQYY3rV" role="33vP2m">
                <ref role="37wK5l" node="3mz2_dYxTYD" resolve="listVar" />
                <node concept="Xl_RD" id="5_6ImQYY3rW" role="37wK5m">
                  <property role="Xl_RC" value="tail" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5_6ImQYY3rX" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYY3rY" role="3cpWs9">
              <property role="TrG5h" value="list2" />
              <node concept="3uibUv" id="5_6ImQYY3rZ" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYY3s0" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyL_" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="5_6ImQYY3s2" role="38e3mL">
                    <node concept="1oi5UN" id="5_6ImQYY3s3" role="KCVpo">
                      <node concept="22Ky0T" id="5_6ImQYY3s4" role="lGtFl">
                        <node concept="37vLTw" id="5_6ImQYY3s5" role="22Ky0K">
                          <ref role="3cqZAo" node="5_6ImQYY3rO" resolve="head" />
                        </node>
                      </node>
                    </node>
                    <node concept="KCUsM" id="3mz2_dYy0YN" role="KCVpo">
                      <node concept="22Ky0T" id="3mz2_dYy0YW" role="lGtFl">
                        <node concept="37vLTw" id="3mz2_dYy0Zw" role="22Ky0K">
                          <ref role="3cqZAo" node="5_6ImQYY3rT" resolve="tail" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5_6ImQYY3s9" role="3cqZAp" />
          <node concept="3clFbF" id="5_6ImQYY3sa" role="3cqZAp">
            <node concept="2OqwBi" id="5_6ImQYY3sb" role="3clFbG">
              <node concept="37vLTw" id="5_6ImQYY3sc" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="5_6ImQYY3sd" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="5_6ImQYY3se" role="37wK5m">
                  <ref role="3cqZAo" node="5_6ImQYY3r$" resolve="list1" />
                </node>
                <node concept="37vLTw" id="5_6ImQYY3sf" role="37wK5m">
                  <ref role="3cqZAo" node="5_6ImQYY3rY" resolve="list2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="5_6ImQYY3sg" role="3cqZAp">
            <node concept="2OqwBi" id="5_6ImQYY3sh" role="3vwVQn">
              <node concept="37vLTw" id="5_6ImQYY3si" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="5_6ImQYY3sj" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="5_6ImQYY3sk" role="37wK5m">
                  <ref role="3cqZAo" node="5_6ImQYY3rO" resolve="head" />
                </node>
                <node concept="37vLTw" id="5_6ImQYY3sl" role="37wK5m">
                  <ref role="3cqZAo" node="5_6ImQYY3rf" resolve="foo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5_6ImQYY3sm" role="3cqZAp" />
          <node concept="3cpWs8" id="5_6ImQYY3sn" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYY3so" role="3cpWs9">
              <property role="TrG5h" value="expectedTail" />
              <node concept="3uibUv" id="5_6ImQYY3sp" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYY3sq" role="33vP2m">
                <node concept="KCUsM" id="5_6ImQYY3sr" role="1oi0x0" />
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="5_6ImQYY3sA" role="3cqZAp">
            <node concept="2OqwBi" id="5_6ImQYY3sB" role="3vwVQn">
              <node concept="37vLTw" id="5_6ImQYY3sC" role="2Oq$k0">
                <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="5_6ImQYY3sD" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="5_6ImQYY3sE" role="37wK5m">
                  <ref role="3cqZAo" node="5_6ImQYY3rT" resolve="tail" />
                </node>
                <node concept="37vLTw" id="5_6ImQYY3sF" role="37wK5m">
                  <ref role="3cqZAo" node="5_6ImQYY3so" resolve="expectedTail" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="5_6ImQYY686" role="3s_gse">
        <property role="3s$Bm0" value="induction_empty" />
        <node concept="3cqZAl" id="5_6ImQYY687" role="3clF45" />
        <node concept="3Tm1VV" id="5_6ImQYY688" role="1B3o_S" />
        <node concept="3clFbS" id="5_6ImQYY689" role="3clF47">
          <node concept="3cpWs8" id="5_6ImQYY68h" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYY68i" role="3cpWs9">
              <property role="TrG5h" value="list1" />
              <node concept="3uibUv" id="5_6ImQYY68j" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYY68k" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyLb" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="5_6ImQYY68m" role="38e3mL" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5_6ImQYY68q" role="3cqZAp" />
          <node concept="3cpWs8" id="5_6ImQYY68r" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYY68s" role="3cpWs9">
              <property role="TrG5h" value="head" />
              <node concept="3uibUv" id="5_6ImQYY68t" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="5_6ImQYY68u" role="33vP2m">
                <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                <node concept="Xl_RD" id="5_6ImQYY68v" role="37wK5m">
                  <property role="Xl_RC" value="head" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5_6ImQYY68w" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYY68x" role="3cpWs9">
              <property role="TrG5h" value="tail" />
              <node concept="3uibUv" id="5_6ImQYY68y" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="5_6ImQYY68z" role="33vP2m">
                <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                <node concept="Xl_RD" id="5_6ImQYY68$" role="37wK5m">
                  <property role="Xl_RC" value="tail" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5_6ImQYY68_" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYY68A" role="3cpWs9">
              <property role="TrG5h" value="list2" />
              <node concept="3uibUv" id="5_6ImQYY68B" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYY68C" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyL4" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="5_6ImQYY68E" role="38e3mL">
                    <node concept="1oi5UN" id="5_6ImQYY68F" role="KCVpo">
                      <node concept="22Ky0T" id="5_6ImQYY68G" role="lGtFl">
                        <node concept="37vLTw" id="5_6ImQYY68H" role="22Ky0K">
                          <ref role="3cqZAo" node="5_6ImQYY68s" resolve="head" />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="5_6ImQYY68I" role="KCVpo">
                      <node concept="22Ky0T" id="5_6ImQYY68J" role="lGtFl">
                        <node concept="37vLTw" id="5_6ImQYY68K" role="22Ky0K">
                          <ref role="3cqZAo" node="5_6ImQYY68x" resolve="tail" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5_6ImQYY68L" role="3cqZAp" />
          <node concept="3$NI$W" id="5_6ImQYY8Vn" role="3cqZAp">
            <node concept="3uibUv" id="32fHqDf7RRO" role="3$Qgvv">
              <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
            </node>
            <node concept="3clFbF" id="5_6ImQYY8ZS" role="3$Oloe">
              <node concept="2OqwBi" id="5_6ImQYY8ZU" role="3clFbG">
                <node concept="37vLTw" id="5_6ImQYY8ZV" role="2Oq$k0">
                  <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
                </node>
                <node concept="liA8E" id="5_6ImQYY8ZW" role="2OqNvi">
                  <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                  <node concept="37vLTw" id="5_6ImQYY8ZX" role="37wK5m">
                    <ref role="3cqZAo" node="5_6ImQYY68i" resolve="list1" />
                  </node>
                  <node concept="37vLTw" id="5_6ImQYY8ZY" role="37wK5m">
                    <ref role="3cqZAo" node="5_6ImQYY68A" resolve="list2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KhYhu" id="5NuEpF1$Wpa" role="1KhZu4">
      <node concept="3clFbS" id="5NuEpF1$Wpb" role="2VODD2">
        <node concept="3clFbF" id="fHk0tWuoLS" role="3cqZAp">
          <node concept="37vLTI" id="fHk0tWuoPJ" role="3clFbG">
            <node concept="2ShNRf" id="fHk0tWuoQm" role="37vLTx">
              <node concept="HV5vD" id="3gNap3fFfNh" role="2ShVmc">
                <ref role="HV5vE" to="mqqo:6yEjedm5WkE" resolve="TestingUnificationSolver" />
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
  <node concept="3s_ewN" id="1OShD0IfsNp">
    <property role="3s_ewP" value="TellUniSolver" />
    <node concept="2tJIrI" id="3gNap3g7W6W" role="jymVt" />
    <node concept="312cEg" id="2rIdnPu4_zD" role="jymVt">
      <property role="TrG5h" value="unificationSolver" />
      <node concept="3Tm6S6" id="2rIdnPu4_zE" role="1B3o_S" />
      <node concept="3uibUv" id="2rIdnPu4_zF" role="1tU5fm">
        <ref role="3uigEE" to="mqqo:6yEjedm5WkE" resolve="TestingUnificationSolver" />
      </node>
    </node>
    <node concept="2tJIrI" id="2rIdnPu4$3W" role="jymVt" />
    <node concept="2tJIrI" id="2rIdnPu4$5A" role="jymVt" />
    <node concept="3clFb_" id="3gNap3g7W17" role="jymVt">
      <property role="TrG5h" value="stringvar" />
      <node concept="37vLTG" id="3gNap3g7W18" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3gNap3g7W19" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3gNap3g7W1a" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="3gNap3g7W1b" role="1B3o_S" />
      <node concept="3clFbS" id="3gNap3g7W1c" role="3clF47">
        <node concept="3clFbF" id="3gNap3g7W1d" role="3cqZAp">
          <node concept="2YIFZM" id="3gNap3g7Wf$" role="3clFbG">
            <ref role="37wK5l" to="oy3s:3gNap3fZcVn" resolve="asValue" />
            <ref role="1Pybhc" to="oy3s:677NV565N1x" resolve="LogicalUtil" />
            <node concept="2ShNRf" id="3gNap3g7Wf_" role="37wK5m">
              <node concept="1pGfFk" id="3gNap3g7WfA" role="2ShVmc">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(jetbrains.mps.logic.reactor.logical.MetaLogical)" resolve="LogicalImpl" />
                <node concept="2ShNRf" id="3gNap3g7WfB" role="37wK5m">
                  <node concept="1pGfFk" id="3gNap3g7WfC" role="2ShVmc">
                    <ref role="37wK5l" to="bj13:~MetaLogical.&lt;init&gt;(java.lang.String,java.lang.Class)" resolve="MetaLogical" />
                    <node concept="37vLTw" id="3gNap3g7WfD" role="37wK5m">
                      <ref role="3cqZAo" node="3gNap3g7W18" resolve="name" />
                    </node>
                    <node concept="3VsKOn" id="3gNap3g7XPE" role="37wK5m">
                      <ref role="3VsUkX" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3g7Wc$" role="jymVt" />
    <node concept="3clFb_" id="6yEjedm71gQ" role="jymVt">
      <property role="TrG5h" value="termvar" />
      <node concept="37vLTG" id="6yEjedm71gR" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="6yEjedm71gS" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="6yEjedm71gT" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="6yEjedm71gU" role="1B3o_S" />
      <node concept="3clFbS" id="6yEjedm71gV" role="3clF47">
        <node concept="3clFbF" id="6yEjedm71gW" role="3cqZAp">
          <node concept="2YIFZM" id="3gNap3fNlJp" role="3clFbG">
            <ref role="37wK5l" to="oy3s:4TCblo5YI1H" resolve="asVariable" />
            <ref role="1Pybhc" to="oy3s:677NV565N1x" resolve="LogicalUtil" />
            <node concept="2ShNRf" id="6yEjedm71gZ" role="37wK5m">
              <node concept="1pGfFk" id="6yEjedm71h0" role="2ShVmc">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(jetbrains.mps.logic.reactor.logical.MetaLogical)" resolve="LogicalImpl" />
                <node concept="2ShNRf" id="6yEjedm71h1" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm71h2" role="2ShVmc">
                    <ref role="37wK5l" to="bj13:~MetaLogical.&lt;init&gt;(java.lang.String,java.lang.Class)" resolve="MetaLogical" />
                    <node concept="37vLTw" id="6yEjedm71h3" role="37wK5m">
                      <ref role="3cqZAo" node="6yEjedm71gR" resolve="name" />
                    </node>
                    <node concept="3VsKOn" id="6yEjedm71h4" role="37wK5m">
                      <ref role="3VsUkX" to="6exd:5JQSuNswOXL" resolve="TermNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6yEjedm71h6" role="jymVt" />
    <node concept="3clFb_" id="6yEjedm71h7" role="jymVt">
      <property role="TrG5h" value="listVar" />
      <node concept="37vLTG" id="6yEjedm71h8" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="6yEjedm71h9" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="6yEjedm71ha" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="6yEjedm71hb" role="1B3o_S" />
      <node concept="3clFbS" id="6yEjedm71hc" role="3clF47">
        <node concept="3clFbF" id="6yEjedm71hd" role="3cqZAp">
          <node concept="2YIFZM" id="3gNap3fNlJq" role="3clFbG">
            <ref role="37wK5l" to="oy3s:4TCblo5YI1H" resolve="asVariable" />
            <ref role="1Pybhc" to="oy3s:677NV565N1x" resolve="LogicalUtil" />
            <node concept="2ShNRf" id="6yEjedm71hg" role="37wK5m">
              <node concept="1pGfFk" id="6yEjedm71hh" role="2ShVmc">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(jetbrains.mps.logic.reactor.logical.MetaLogical)" resolve="LogicalImpl" />
                <node concept="2ShNRf" id="6yEjedm71hi" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm71hj" role="2ShVmc">
                    <ref role="37wK5l" to="bj13:~MetaLogical.&lt;init&gt;(java.lang.String,java.lang.Class)" resolve="MetaLogical" />
                    <node concept="37vLTw" id="6yEjedm71hk" role="37wK5m">
                      <ref role="3cqZAo" node="6yEjedm71h8" resolve="name" />
                    </node>
                    <node concept="3VsKOn" id="6yEjedm71hl" role="37wK5m">
                      <ref role="3VsUkX" to="6exd:3OPtF03lco4" resolve="ListNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6yEjedm71hn" role="jymVt" />
    <node concept="3clFb_" id="6yEjedm71ho" role="jymVt">
      <property role="TrG5h" value="wildcard" />
      <node concept="3uibUv" id="6yEjedm71hp" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="6yEjedm71hq" role="1B3o_S" />
      <node concept="3clFbS" id="6yEjedm71hr" role="3clF47">
        <node concept="3clFbF" id="6yEjedm71hs" role="3cqZAp">
          <node concept="2YIFZM" id="3gNap3fNlJr" role="3clFbG">
            <ref role="37wK5l" to="oy3s:4TCblo5YI1H" resolve="asVariable" />
            <ref role="1Pybhc" to="oy3s:677NV565N1x" resolve="LogicalUtil" />
            <node concept="2ShNRf" id="6yEjedm71hw" role="37wK5m">
              <node concept="1pGfFk" id="6yEjedm71hx" role="2ShVmc">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(jetbrains.mps.logic.reactor.logical.MetaLogical)" resolve="LogicalImpl" />
                <node concept="2ShNRf" id="6yEjedm71hy" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm71hz" role="2ShVmc">
                    <ref role="37wK5l" to="bj13:~MetaLogical.&lt;init&gt;(java.lang.Class)" resolve="MetaLogical" />
                    <node concept="3VsKOn" id="6yEjedm71h$" role="37wK5m">
                      <ref role="3VsUkX" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="6yEjedm71h_" role="1pMfVU">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7nuzzkr25De" role="jymVt" />
    <node concept="3clFb_" id="7nuzzkr25as" role="jymVt">
      <property role="TrG5h" value="wildcard" />
      <node concept="3uibUv" id="7nuzzkr25at" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="7nuzzkr25au" role="1B3o_S" />
      <node concept="3clFbS" id="7nuzzkr25av" role="3clF47">
        <node concept="3clFbF" id="7nuzzkr25aw" role="3cqZAp">
          <node concept="2YIFZM" id="3gNap3fNlJs" role="3clFbG">
            <ref role="37wK5l" to="oy3s:4TCblo5YI1H" resolve="asVariable" />
            <ref role="1Pybhc" to="oy3s:677NV565N1x" resolve="LogicalUtil" />
            <node concept="2ShNRf" id="7nuzzkr25az" role="37wK5m">
              <node concept="1pGfFk" id="7nuzzkr25a$" role="2ShVmc">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(jetbrains.mps.logic.reactor.logical.MetaLogical)" resolve="LogicalImpl" />
                <node concept="2ShNRf" id="6yEjedm9JNO" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm9KbK" role="2ShVmc">
                    <ref role="37wK5l" to="bj13:~MetaLogical.&lt;init&gt;(java.lang.Class)" resolve="MetaLogical" />
                    <node concept="3VsKOn" id="6yEjedm9KAr" role="37wK5m">
                      <ref role="3VsUkX" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7nuzzkr266n" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="7nuzzkr266m" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1OShD0Ifw9j" role="jymVt" />
    <node concept="3clFb_" id="1OShD0IfETi" role="jymVt">
      <property role="TrG5h" value="asLogicalTerm" />
      <node concept="37vLTG" id="1OShD0IfFeh" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="3uibUv" id="1OShD0IfFfg" role="1tU5fm">
          <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
        </node>
      </node>
      <node concept="3uibUv" id="5p8T3QHH7gN" role="3clF45">
        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
        <node concept="3qTvmN" id="5p8T3QHH7uW" role="11_B2D" />
      </node>
      <node concept="3Tm6S6" id="1OShD0IfFaJ" role="1B3o_S" />
      <node concept="3clFbS" id="1OShD0IfETn" role="3clF47">
        <node concept="3clFbF" id="3mz2_dYyGKT" role="3cqZAp">
          <node concept="2OqwBi" id="qubcdt9I3o" role="3clFbG">
            <node concept="1eOMI4" id="qubcdt9I3p" role="2Oq$k0">
              <node concept="10QFUN" id="qubcdt9I3q" role="1eOMHV">
                <node concept="37vLTw" id="qubcdt9I3r" role="10QFUP">
                  <ref role="3cqZAo" node="1OShD0IfFeh" resolve="var" />
                </node>
                <node concept="3uibUv" id="3gNap3frn1l" role="10QFUM">
                  <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalDataForm" />
                  <node concept="3qTvmN" id="3gNap3frn1C" role="11_B2D" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="qubcdt9I3t" role="2OqNvi">
              <ref role="37wK5l" to="oy3s:4TCblo5MS1o" resolve="logical" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gNap3g8aYh" role="jymVt" />
    <node concept="3clFb_" id="3gNap3g8aW5" role="jymVt">
      <property role="TrG5h" value="asLogicalValue" />
      <node concept="37vLTG" id="3gNap3g8aW6" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="3uibUv" id="3gNap3g8aW7" role="1tU5fm">
          <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
        </node>
      </node>
      <node concept="3uibUv" id="3gNap3g8aW8" role="3clF45">
        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
        <node concept="3qTvmN" id="3gNap3g8aW9" role="11_B2D" />
      </node>
      <node concept="3Tm6S6" id="3gNap3g8aWa" role="1B3o_S" />
      <node concept="3clFbS" id="3gNap3g8aWb" role="3clF47">
        <node concept="3clFbF" id="3gNap3g8aWc" role="3cqZAp">
          <node concept="2OqwBi" id="3gNap3g8aWd" role="3clFbG">
            <node concept="1eOMI4" id="3gNap3g8aWe" role="2Oq$k0">
              <node concept="10QFUN" id="3gNap3g8aWf" role="1eOMHV">
                <node concept="37vLTw" id="3gNap3g8aWg" role="10QFUP">
                  <ref role="3cqZAo" node="3gNap3g8aW6" resolve="var" />
                </node>
                <node concept="3uibUv" id="3gNap3g8aWh" role="10QFUM">
                  <ref role="3uigEE" to="oy3s:3gNap3fN2hw" resolve="LogicalValue" />
                  <node concept="3qTvmN" id="3gNap3g8aWi" role="11_B2D" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3gNap3g8aWj" role="2OqNvi">
              <ref role="37wK5l" to="oy3s:3gNap3fN7SD" resolve="logical" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1OShD0IfsNq" role="1B3o_S" />
    <node concept="3s_gsd" id="1OShD0IfsNr" role="3s_ewO">
      <node concept="3s$Bmu" id="1OShD0IfuGq" role="3s_gse">
        <property role="3s$Bm0" value="var" />
        <node concept="3cqZAl" id="1OShD0IfuGr" role="3clF45" />
        <node concept="3Tm1VV" id="1OShD0IfuGs" role="1B3o_S" />
        <node concept="3clFbS" id="1OShD0IfuGt" role="3clF47">
          <node concept="3clFbH" id="1OShD0IfX$0" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0IfHOD" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IfHOE" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="1OShD0IfHOC" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IfHOF" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71gQ" resolve="termvar" />
                <node concept="Xl_RD" id="1OShD0IfHOG" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0IfuGv" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IfuGw" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1OShD0IfuGx" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0IfuGy" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0IfuGz" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0IfuG$" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="677NV56vfNe" role="1oi5TL">
                      <node concept="22Ky0T" id="677NV56vfNf" role="lGtFl">
                        <node concept="37vLTw" id="1OShD0IfHOH" role="22Ky0K">
                          <ref role="3cqZAo" node="1OShD0IfHOE" resolve="x" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0IfuGC" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0IfuGD" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0IfHTX" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IfHTY" role="3cpWs9">
              <property role="TrG5h" value="y" />
              <node concept="3uibUv" id="1OShD0IfHTV" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IfHTZ" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71gQ" resolve="termvar" />
                <node concept="Xl_RD" id="1OShD0IfHU0" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0IfuGE" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IfuGF" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0IfuGG" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0IfuGH" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0IfuGI" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0IfuGJ" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="677NV56vfNM" role="1oi5TL">
                      <node concept="22Ky0T" id="677NV56vfNN" role="lGtFl">
                        <node concept="37vLTw" id="1OShD0IfHU1" role="22Ky0K">
                          <ref role="3cqZAo" node="1OShD0IfHTY" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0IfuGN" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0IfuGO" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0IfuGP" role="3cqZAp" />
          <node concept="3clFbF" id="2rIdnPu4Dbw" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu4Dro" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu4Dbu" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu4DFa" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu4DFz" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfuGw" resolve="a" />
                </node>
                <node concept="37vLTw" id="2rIdnPu4Ebb" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfuGF" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vMLTj" id="1OShD0IfHYL" role="3cqZAp">
            <node concept="2OqwBi" id="1OShD0IfItt" role="3tpDZA">
              <node concept="1rXfSq" id="1OShD0IfImD" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogicalTerm" />
                <node concept="37vLTw" id="1OShD0IfIrb" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfHTY" resolve="y" />
                </node>
              </node>
              <node concept="liA8E" id="1OShD0IfIGc" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
              </node>
            </node>
            <node concept="2OqwBi" id="1OShD0IfI6R" role="3tpDZB">
              <node concept="1rXfSq" id="1OShD0IfI2H" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogicalTerm" />
                <node concept="37vLTw" id="1OShD0IfI4x" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfHOE" resolve="x" />
                </node>
              </node>
              <node concept="liA8E" id="1OShD0IfIj2" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3gNap3g822M" role="3s_gse">
        <property role="3s$Bm0" value="string_var" />
        <node concept="3cqZAl" id="3gNap3g822N" role="3clF45" />
        <node concept="3Tm1VV" id="3gNap3g822O" role="1B3o_S" />
        <node concept="3clFbS" id="3gNap3g822P" role="3clF47">
          <node concept="3clFbH" id="3gNap3g822Q" role="3cqZAp" />
          <node concept="3cpWs8" id="3gNap3g822R" role="3cqZAp">
            <node concept="3cpWsn" id="3gNap3g822S" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="3gNap3g822T" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="3gNap3g822U" role="33vP2m">
                <ref role="37wK5l" node="3gNap3g7W17" resolve="stringvar" />
                <node concept="Xl_RD" id="3gNap3g822V" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3gNap3g822W" role="3cqZAp">
            <node concept="3cpWsn" id="3gNap3g822X" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="3gNap3g822Y" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3gNap3g822Z" role="33vP2m">
                <node concept="1oi5UN" id="3gNap3g8230" role="1oi0x0">
                  <node concept="1oi5Wm" id="3gNap3g8235" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3gNap3g8236" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3gNap3g85J_" role="1ojpOf">
                    <property role="TrG5h" value="val" />
                    <node concept="1oi5XN" id="3gNap3g85JR" role="1oi5zu">
                      <node concept="22Ky0T" id="3gNap3g85JU" role="lGtFl">
                        <node concept="37vLTw" id="3gNap3g85Ki" role="22Ky0K">
                          <ref role="3cqZAo" node="3gNap3g822S" resolve="x" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3gNap3g8237" role="3cqZAp">
            <node concept="3cpWsn" id="3gNap3g8238" role="3cpWs9">
              <property role="TrG5h" value="y" />
              <node concept="3uibUv" id="3gNap3g8239" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="3gNap3g823a" role="33vP2m">
                <ref role="37wK5l" node="3gNap3g7W17" resolve="stringvar" />
                <node concept="Xl_RD" id="3gNap3g823b" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3gNap3g823c" role="3cqZAp">
            <node concept="3cpWsn" id="3gNap3g823d" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="3gNap3g823e" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3gNap3g823f" role="33vP2m">
                <node concept="1oi5UN" id="3gNap3g823g" role="1oi0x0">
                  <node concept="1oi5Wm" id="3gNap3g823l" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3gNap3g823m" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3gNap3g85Ky" role="1ojpOf">
                    <property role="TrG5h" value="val" />
                    <node concept="1oi5XN" id="3gNap3g85KC" role="1oi5zu">
                      <node concept="22Ky0T" id="3gNap3g85KF" role="lGtFl">
                        <node concept="37vLTw" id="3gNap3g85L3" role="22Ky0K">
                          <ref role="3cqZAo" node="3gNap3g8238" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3gNap3g823n" role="3cqZAp" />
          <node concept="3clFbF" id="2rIdnPu6icn" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6ico" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6icp" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6icq" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6icr" role="37wK5m">
                  <ref role="3cqZAo" node="3gNap3g822X" resolve="a" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6ics" role="37wK5m">
                  <ref role="3cqZAo" node="3gNap3g823d" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vMLTj" id="3gNap3g823z" role="3cqZAp">
            <node concept="2OqwBi" id="3gNap3g823$" role="3tpDZA">
              <node concept="1rXfSq" id="3gNap3g823_" role="2Oq$k0">
                <ref role="37wK5l" node="3gNap3g8aW5" resolve="asLogicalValue" />
                <node concept="37vLTw" id="3gNap3g823A" role="37wK5m">
                  <ref role="3cqZAo" node="3gNap3g8238" resolve="y" />
                </node>
              </node>
              <node concept="liA8E" id="3gNap3g823B" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
              </node>
            </node>
            <node concept="2OqwBi" id="3gNap3g823C" role="3tpDZB">
              <node concept="1rXfSq" id="3gNap3g823D" role="2Oq$k0">
                <ref role="37wK5l" node="3gNap3g8aW5" resolve="asLogicalValue" />
                <node concept="37vLTw" id="3gNap3g823E" role="37wK5m">
                  <ref role="3cqZAo" node="3gNap3g822S" resolve="x" />
                </node>
              </node>
              <node concept="liA8E" id="3gNap3g823F" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="kTK1BfxL57" role="3s_gse">
        <property role="3s$Bm0" value="list_values" />
        <node concept="3cqZAl" id="kTK1BfxL58" role="3clF45" />
        <node concept="3Tm1VV" id="kTK1BfxL59" role="1B3o_S" />
        <node concept="3clFbS" id="kTK1BfxL5a" role="3clF47">
          <node concept="3cpWs8" id="kTK1BfxL5c" role="3cqZAp">
            <node concept="3cpWsn" id="kTK1BfxL5d" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="kTK1BfxL5e" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="kTK1BfxL5f" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71gQ" resolve="termvar" />
                <node concept="Xl_RD" id="kTK1BfxL5g" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="kTK1BfyfVm" role="3cqZAp" />
          <node concept="3cpWs8" id="kTK1BfxNEY" role="3cqZAp">
            <node concept="3cpWsn" id="kTK1BfxNEZ" role="3cpWs9">
              <property role="TrG5h" value="list" />
              <node concept="3uibUv" id="kTK1BfxNEX" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                <node concept="17QB3L" id="kTK1BfxNQB" role="11_B2D" />
              </node>
              <node concept="2ShNRf" id="kTK1BfxNF0" role="33vP2m">
                <node concept="1pGfFk" id="kTK1BfxNF1" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  <node concept="17QB3L" id="kTK1BfxNSw" role="1pMfVU" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="kTK1BfxNi7" role="3cqZAp">
            <node concept="2OqwBi" id="kTK1BfxOjC" role="3clFbG">
              <node concept="37vLTw" id="kTK1BfxNF2" role="2Oq$k0">
                <ref role="3cqZAo" node="kTK1BfxNEZ" resolve="list" />
              </node>
              <node concept="liA8E" id="kTK1BfxPgH" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                <node concept="Xl_RD" id="kTK1BfxPuT" role="37wK5m">
                  <property role="Xl_RC" value="foo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="kTK1BfxQ7I" role="3cqZAp">
            <node concept="2OqwBi" id="kTK1BfxQ7J" role="3clFbG">
              <node concept="37vLTw" id="kTK1BfxQ7K" role="2Oq$k0">
                <ref role="3cqZAo" node="kTK1BfxNEZ" resolve="list" />
              </node>
              <node concept="liA8E" id="kTK1BfxQ7L" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                <node concept="Xl_RD" id="kTK1BfxQ7M" role="37wK5m">
                  <property role="Xl_RC" value="bar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="kTK1BfxL5h" role="3cqZAp">
            <node concept="3cpWsn" id="kTK1BfxL5i" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="kTK1BfxL5j" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="kTK1BfxL5k" role="33vP2m">
                <node concept="1oi5UN" id="kTK1BfxL5l" role="1oi0x0">
                  <node concept="1oi5ST" id="kTK1BfxL5m" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="kTK1BfxL5n" role="1oi5TL">
                      <node concept="1oi5ST" id="kTK1BfygQE" role="1ojpOf">
                        <property role="TrG5h" value="child" />
                        <node concept="1oi5UN" id="kTK1BfygQS" role="1oi5TL">
                          <node concept="22Ky0T" id="kTK1BfygQV" role="lGtFl">
                            <node concept="37vLTw" id="kTK1BfygRm" role="22Ky0K">
                              <ref role="3cqZAo" node="kTK1BfxL5d" resolve="x" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="kTK1BfxN6s" role="1ojpOf">
                        <property role="TrG5h" value="role" />
                        <node concept="1oi5XN" id="kTK1BfxN6A" role="1oi5zu">
                          <node concept="22Ky0T" id="kTK1BfxN6D" role="lGtFl">
                            <node concept="37vLTw" id="kTK1BfxPID" role="22Ky0K">
                              <ref role="3cqZAo" node="kTK1BfxNEZ" resolve="list" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="kTK1BfxL5q" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="kTK1BfxL5r" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="kTK1Bfyf03" role="3cqZAp" />
          <node concept="3cpWs8" id="kTK1BfxL5s" role="3cqZAp">
            <node concept="3cpWsn" id="kTK1BfxL5t" role="3cpWs9">
              <property role="TrG5h" value="y" />
              <node concept="3uibUv" id="kTK1BfxL5u" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="kTK1BfxL5v" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71gQ" resolve="termvar" />
                <node concept="Xl_RD" id="kTK1BfxL5w" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="kTK1BfxL5x" role="3cqZAp">
            <node concept="3cpWsn" id="kTK1BfxL5y" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="kTK1BfxL5z" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="kTK1BfxL5$" role="33vP2m">
                <node concept="1oi5UN" id="kTK1BfxL5_" role="1oi0x0">
                  <node concept="1oi5ST" id="kTK1BfxL5A" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="kTK1BfxL5B" role="1oi5TL">
                      <node concept="1oi5ST" id="kTK1BfycLV" role="1ojpOf">
                        <property role="TrG5h" value="child" />
                        <node concept="1oi5UN" id="kTK1BfyeYx" role="1oi5TL">
                          <node concept="22Ky0T" id="kTK1BfyeY$" role="lGtFl">
                            <node concept="37vLTw" id="kTK1BfyeZH" role="22Ky0K">
                              <ref role="3cqZAo" node="kTK1BfxL5t" resolve="y" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="kTK1BfxQyx" role="1ojpOf">
                        <property role="TrG5h" value="role" />
                        <node concept="1oi5XN" id="kTK1BfxQyF" role="1oi5zu">
                          <node concept="22Ky0T" id="kTK1BfxQyI" role="lGtFl">
                            <node concept="2OqwBi" id="kTK1Bfy2iY" role="22Ky0K">
                              <node concept="2OqwBi" id="kTK1BfxWLN" role="2Oq$k0">
                                <node concept="2ShNRf" id="kTK1BfxQzi" role="2Oq$k0">
                                  <node concept="3g6Rrh" id="kTK1BfxR$9" role="2ShVmc">
                                    <node concept="17QB3L" id="kTK1BfxQKl" role="3g7fb8" />
                                    <node concept="Xl_RD" id="kTK1BfxSwN" role="3g7hyw">
                                      <property role="Xl_RC" value="foo" />
                                    </node>
                                    <node concept="Xl_RD" id="kTK1BfxViv" role="3g7hyw">
                                      <property role="Xl_RC" value="bar" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="39bAoz" id="kTK1Bfy1fg" role="2OqNvi" />
                              </node>
                              <node concept="ANE8D" id="kTK1Bfy3n3" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="kTK1BfxL5E" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="kTK1BfxL5F" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2rIdnPu6iqt" role="3cqZAp" />
          <node concept="3clFbF" id="2rIdnPu6inp" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6inq" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6inr" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6ins" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6int" role="37wK5m">
                  <ref role="3cqZAo" node="kTK1BfxL5i" resolve="a" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6inu" role="37wK5m">
                  <ref role="3cqZAo" node="kTK1BfxL5y" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vMLTj" id="kTK1BfxL5S" role="3cqZAp">
            <node concept="2OqwBi" id="kTK1BfxL5T" role="3tpDZA">
              <node concept="1rXfSq" id="kTK1BfxL5U" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogicalTerm" />
                <node concept="37vLTw" id="kTK1BfxL5V" role="37wK5m">
                  <ref role="3cqZAo" node="kTK1BfxL5t" resolve="y" />
                </node>
              </node>
              <node concept="liA8E" id="kTK1BfxL5W" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
              </node>
            </node>
            <node concept="2OqwBi" id="kTK1BfxL5X" role="3tpDZB">
              <node concept="1rXfSq" id="kTK1BfxL5Y" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogicalTerm" />
                <node concept="37vLTw" id="kTK1BfxL5Z" role="37wK5m">
                  <ref role="3cqZAo" node="kTK1BfxL5d" resolve="x" />
                </node>
              </node>
              <node concept="liA8E" id="kTK1BfxL60" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3HJTsBn4435" role="3s_gse">
        <property role="3s$Bm0" value="term_value_var" />
        <node concept="3cqZAl" id="3HJTsBn4436" role="3clF45" />
        <node concept="3Tm1VV" id="3HJTsBn4437" role="1B3o_S" />
        <node concept="3clFbS" id="3HJTsBn4438" role="3clF47">
          <node concept="3clFbH" id="3HJTsBn4439" role="3cqZAp" />
          <node concept="3cpWs8" id="3HJTsBn443a" role="3cqZAp">
            <node concept="3cpWsn" id="3HJTsBn443b" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="3HJTsBn443c" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="3HJTsBn443d" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71gQ" resolve="termvar" />
                <node concept="Xl_RD" id="3HJTsBn443e" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3HJTsBn443f" role="3cqZAp">
            <node concept="3cpWsn" id="3HJTsBn443g" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="3HJTsBn443h" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3HJTsBn443i" role="33vP2m">
                <node concept="1oi5UN" id="3HJTsBn443j" role="1oi0x0">
                  <node concept="1oi5ST" id="3HJTsBn443k" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="3HJTsBn443l" role="1oi5TL">
                      <node concept="1oi5Wm" id="3HJTsBn44Vy" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="3HJTsBn45fv" role="1oi5zu">
                          <property role="1oi5yK" value="" />
                          <node concept="22Ky0T" id="3HJTsBn45fx" role="lGtFl">
                            <node concept="37vLTw" id="3HJTsBn45fO" role="22Ky0K">
                              <ref role="3cqZAo" node="3HJTsBn443b" resolve="x" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3HJTsBn443o" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3HJTsBn443p" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3HJTsBn443v" role="3cqZAp">
            <node concept="3cpWsn" id="3HJTsBn443w" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="3HJTsBn443x" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3HJTsBn443y" role="33vP2m">
                <node concept="1oi5UN" id="3HJTsBn443z" role="1oi0x0">
                  <node concept="1oi5ST" id="3HJTsBn443$" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="3HJTsBn443_" role="1oi5TL">
                      <node concept="1oi5Wm" id="3HJTsBn4507" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="3HJTsBn450b" role="1oi5zu">
                          <property role="1oi5yK" value="xyz" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3HJTsBn443C" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3HJTsBn443D" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2rIdnPu6itB" role="3cqZAp" />
          <node concept="3clFbF" id="2rIdnPu6irP" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6irQ" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6irR" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6irS" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6irT" role="37wK5m">
                  <ref role="3cqZAo" node="3HJTsBn443g" resolve="a" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6irU" role="37wK5m">
                  <ref role="3cqZAo" node="3HJTsBn443w" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="3HJTsBn4607" role="3cqZAp">
            <node concept="2OqwBi" id="3HJTsBn466i" role="3tpDZA">
              <node concept="2OqwBi" id="3HJTsBn466j" role="2Oq$k0">
                <node concept="1rXfSq" id="3HJTsBn466k" role="2Oq$k0">
                  <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogicalTerm" />
                  <node concept="37vLTw" id="3HJTsBn466l" role="37wK5m">
                    <ref role="3cqZAo" node="3HJTsBn443b" resolve="x" />
                  </node>
                </node>
                <node concept="liA8E" id="3HJTsBn466m" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                </node>
              </node>
              <node concept="liA8E" id="3HJTsBn466n" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
              </node>
            </node>
            <node concept="1oi1Uc" id="3eLgHzX3GZl" role="3tpDZB">
              <node concept="1oi5XN" id="3eLgHzX3H2c" role="1oi0x0">
                <property role="1oi5yK" value="xyz" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3gNap3g8en7" role="3s_gse">
        <property role="3s$Bm0" value="string_value_var" />
        <node concept="3cqZAl" id="3gNap3g8en8" role="3clF45" />
        <node concept="3Tm1VV" id="3gNap3g8en9" role="1B3o_S" />
        <node concept="3clFbS" id="3gNap3g8ena" role="3clF47">
          <node concept="3clFbH" id="3gNap3g8enb" role="3cqZAp" />
          <node concept="3cpWs8" id="3gNap3g8enc" role="3cqZAp">
            <node concept="3cpWsn" id="3gNap3g8end" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="3gNap3g8ene" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="3gNap3g8enf" role="33vP2m">
                <ref role="37wK5l" node="3gNap3g7W17" resolve="stringvar" />
                <node concept="Xl_RD" id="3gNap3g8eng" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3gNap3g8enh" role="3cqZAp">
            <node concept="3cpWsn" id="3gNap3g8eni" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="3gNap3g8enj" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3gNap3g8enk" role="33vP2m">
                <node concept="1oi5UN" id="3gNap3g8enl" role="1oi0x0">
                  <node concept="1oi5ST" id="3gNap3g8enm" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="3gNap3g8enn" role="1oi5TL">
                      <node concept="1oi5Wm" id="3gNap3g8eno" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="3gNap3g8enp" role="1oi5zu">
                          <property role="1oi5yK" value="" />
                          <node concept="22Ky0T" id="3gNap3g8enq" role="lGtFl">
                            <node concept="37vLTw" id="3gNap3g8enr" role="22Ky0K">
                              <ref role="3cqZAo" node="3gNap3g8end" resolve="x" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3gNap3g8ens" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3gNap3g8ent" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3gNap3g8enu" role="3cqZAp">
            <node concept="3cpWsn" id="3gNap3g8env" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="3gNap3g8enw" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3gNap3g8enx" role="33vP2m">
                <node concept="1oi5UN" id="3gNap3g8eny" role="1oi0x0">
                  <node concept="1oi5ST" id="3gNap3g8enz" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="3gNap3g8en$" role="1oi5TL">
                      <node concept="1oi5Wm" id="3gNap3g8en_" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="3gNap3g8enA" role="1oi5zu">
                          <property role="1oi5yK" value="xyz" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3gNap3g8enB" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3gNap3g8enC" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3gNap3g8enD" role="3cqZAp" />
          <node concept="3clFbF" id="2rIdnPu6iva" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6ivb" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6ivc" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6ivd" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6ive" role="37wK5m">
                  <ref role="3cqZAo" node="3gNap3g8eni" resolve="a" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6ivf" role="37wK5m">
                  <ref role="3cqZAo" node="3gNap3g8env" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="3gNap3g8enP" role="3cqZAp">
            <node concept="2OqwBi" id="3gNap3g8enQ" role="3tpDZA">
              <node concept="2OqwBi" id="3gNap3g8enR" role="2Oq$k0">
                <node concept="1rXfSq" id="3gNap3g8enS" role="2Oq$k0">
                  <ref role="37wK5l" node="3gNap3g8aW5" resolve="asLogicalValue" />
                  <node concept="37vLTw" id="3gNap3g8enT" role="37wK5m">
                    <ref role="3cqZAo" node="3gNap3g8end" resolve="x" />
                  </node>
                </node>
                <node concept="liA8E" id="3gNap3g8enU" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                </node>
              </node>
              <node concept="liA8E" id="3gNap3g8enV" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
              </node>
            </node>
            <node concept="Xl_RD" id="3gNap3g8eHS" role="3tpDZB">
              <property role="Xl_RC" value="xyz" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3gNap3g8i5l" role="3s_gse">
        <property role="3s$Bm0" value="string_value_assignedvar" />
        <node concept="3cqZAl" id="3gNap3g8i5m" role="3clF45" />
        <node concept="3Tm1VV" id="3gNap3g8i5n" role="1B3o_S" />
        <node concept="3clFbS" id="3gNap3g8i5o" role="3clF47">
          <node concept="3clFbH" id="3gNap3g8i5p" role="3cqZAp" />
          <node concept="3cpWs8" id="3gNap3g8i5q" role="3cqZAp">
            <node concept="3cpWsn" id="3gNap3g8i5r" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="3gNap3g8i5s" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="3gNap3g8i5t" role="33vP2m">
                <ref role="37wK5l" node="3gNap3g7W17" resolve="stringvar" />
                <node concept="Xl_RD" id="3gNap3g8i5u" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3gNap3g8km0" role="3cqZAp">
            <node concept="2OqwBi" id="3gNap3g8k$i" role="3clFbG">
              <node concept="1eOMI4" id="3gNap3g8lvt" role="2Oq$k0">
                <node concept="10QFUN" id="3gNap3g8lvq" role="1eOMHV">
                  <node concept="3uibUv" id="3gNap3g8lvB" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                    <node concept="17QB3L" id="3gNap3g8lwr" role="11_B2D" />
                  </node>
                  <node concept="1rXfSq" id="3gNap3g8lvv" role="10QFUP">
                    <ref role="37wK5l" node="3gNap3g8aW5" resolve="asLogicalValue" />
                    <node concept="37vLTw" id="3gNap3g8lvw" role="37wK5m">
                      <ref role="3cqZAo" node="3gNap3g8i5r" resolve="x" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3gNap3g8lCn" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
                <node concept="Xl_RD" id="3gNap3g8lCK" role="37wK5m">
                  <property role="Xl_RC" value="xyz" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3gNap3g8lli" role="3cqZAp" />
          <node concept="3cpWs8" id="3gNap3g8i5v" role="3cqZAp">
            <node concept="3cpWsn" id="3gNap3g8i5w" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="3gNap3g8i5x" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3gNap3g8i5y" role="33vP2m">
                <node concept="1oi5UN" id="3gNap3g8i5z" role="1oi0x0">
                  <node concept="1oi5ST" id="3gNap3g8i5$" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="3gNap3g8i5_" role="1oi5TL">
                      <node concept="1oi5Wm" id="3gNap3g8i5A" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="3gNap3g8i5B" role="1oi5zu">
                          <property role="1oi5yK" value="" />
                          <node concept="22Ky0T" id="3gNap3g8i5C" role="lGtFl">
                            <node concept="37vLTw" id="3gNap3g8i5D" role="22Ky0K">
                              <ref role="3cqZAo" node="3gNap3g8i5r" resolve="x" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3gNap3g8i5E" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3gNap3g8i5F" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3gNap3g8i5G" role="3cqZAp">
            <node concept="3cpWsn" id="3gNap3g8i5H" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="3gNap3g8i5I" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3gNap3g8i5J" role="33vP2m">
                <node concept="1oi5UN" id="3gNap3g8i5K" role="1oi0x0">
                  <node concept="1oi5ST" id="3gNap3g8i5L" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="3gNap3g8i5M" role="1oi5TL">
                      <node concept="1oi5Wm" id="3gNap3g8i5N" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="3gNap3g8i5O" role="1oi5zu">
                          <property role="1oi5yK" value="xyz" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3gNap3g8i5P" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3gNap3g8i5Q" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3gNap3g8sBp" role="3cqZAp">
            <node concept="3cpWsn" id="3gNap3g8sBq" role="3cpWs9">
              <property role="TrG5h" value="c" />
              <node concept="3uibUv" id="3gNap3g8sBr" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3gNap3g8sBs" role="33vP2m">
                <node concept="1oi5UN" id="3gNap3g8sBt" role="1oi0x0">
                  <node concept="1oi5ST" id="3gNap3g8sBu" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="3gNap3g8sBv" role="1oi5TL">
                      <node concept="1oi5Wm" id="3gNap3g8sBw" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="3gNap3g8sBx" role="1oi5zu">
                          <property role="1oi5yK" value="abc" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3gNap3g8sBy" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3gNap3g8sBz" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3gNap3g8i5R" role="3cqZAp" />
          <node concept="3clFbF" id="2rIdnPu6iMG" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6iMH" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6iMI" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6iMJ" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6iMK" role="37wK5m">
                  <ref role="3cqZAo" node="3gNap3g8i5w" resolve="a" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6iML" role="37wK5m">
                  <ref role="3cqZAo" node="3gNap3g8i5H" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3$NI$W" id="3gNap3g8sFH" role="3cqZAp">
            <node concept="3uibUv" id="3gNap3g8BhA" role="3$Qgvv">
              <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
            </node>
            <node concept="3clFbF" id="3gNap3g8sSO" role="3$Oloe">
              <node concept="2OqwBi" id="2rIdnPu6j03" role="3clFbG">
                <node concept="37vLTw" id="2rIdnPu6j04" role="2Oq$k0">
                  <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
                </node>
                <node concept="liA8E" id="2rIdnPu6j05" role="2OqNvi">
                  <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                  <node concept="37vLTw" id="2rIdnPu6j06" role="37wK5m">
                    <ref role="3cqZAo" node="3gNap3g8i5w" resolve="a" />
                  </node>
                  <node concept="37vLTw" id="2rIdnPu6j9i" role="37wK5m">
                    <ref role="3cqZAo" node="3gNap3g8sBq" resolve="c" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="kTK1BfyxOp" role="3s_gse">
        <property role="3s$Bm0" value="array_value_var" />
        <node concept="3cqZAl" id="kTK1BfyxOq" role="3clF45" />
        <node concept="3Tm1VV" id="kTK1BfyxOr" role="1B3o_S" />
        <node concept="3clFbS" id="kTK1BfyxOs" role="3clF47">
          <node concept="3clFbH" id="kTK1BfyxOt" role="3cqZAp" />
          <node concept="3cpWs8" id="kTK1BfyxOu" role="3cqZAp">
            <node concept="3cpWsn" id="kTK1BfyxOv" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="kTK1BfyxOw" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="kTK1BfyxOx" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71gQ" resolve="termvar" />
                <node concept="Xl_RD" id="kTK1BfyxOy" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="kTK1BfyxOz" role="3cqZAp">
            <node concept="3cpWsn" id="kTK1BfyxO$" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="kTK1BfyxO_" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="kTK1BfyxOA" role="33vP2m">
                <node concept="1oi5UN" id="kTK1BfyxOB" role="1oi0x0">
                  <node concept="1oi5ST" id="kTK1BfyxOC" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="kTK1BfyxOD" role="1oi5TL">
                      <node concept="1oi5Wm" id="kTK1BfyxOE" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="kTK1BfyxOF" role="1oi5zu">
                          <property role="1oi5yK" value="" />
                          <node concept="22Ky0T" id="kTK1BfyxOG" role="lGtFl">
                            <node concept="37vLTw" id="kTK1BfyxOH" role="22Ky0K">
                              <ref role="3cqZAo" node="kTK1BfyxOv" resolve="x" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="kTK1BfyxOI" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="kTK1BfyxOJ" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="kTK1BfyxOK" role="3cqZAp">
            <node concept="3cpWsn" id="kTK1BfyxOL" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="kTK1BfyxOM" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="kTK1BfyxON" role="33vP2m">
                <node concept="1oi5UN" id="kTK1BfyxOO" role="1oi0x0">
                  <node concept="1oi5ST" id="kTK1BfyxOP" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="kTK1BfyxOQ" role="1oi5TL">
                      <node concept="1oi5Wm" id="kTK1BfyxOR" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="kTK1BfyxOS" role="1oi5zu">
                          <property role="1oi5yK" value="xyz" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="kTK1BfyxOT" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="kTK1BfyxOU" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="kTK1BfyxOV" role="3cqZAp" />
          <node concept="3clFbF" id="2rIdnPu6jab" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6jac" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6jad" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6jae" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6jaf" role="37wK5m">
                  <ref role="3cqZAo" node="kTK1BfyxO$" resolve="a" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6jag" role="37wK5m">
                  <ref role="3cqZAo" node="kTK1BfyxOL" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="kTK1BfyxP7" role="3cqZAp">
            <node concept="2OqwBi" id="kTK1BfyxP8" role="3tpDZA">
              <node concept="2OqwBi" id="kTK1BfyxP9" role="2Oq$k0">
                <node concept="1rXfSq" id="kTK1BfyxPa" role="2Oq$k0">
                  <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogicalTerm" />
                  <node concept="37vLTw" id="kTK1BfyxPb" role="37wK5m">
                    <ref role="3cqZAo" node="kTK1BfyxOv" resolve="x" />
                  </node>
                </node>
                <node concept="liA8E" id="kTK1BfyxPc" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                </node>
              </node>
              <node concept="liA8E" id="kTK1BfyxPd" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
              </node>
            </node>
            <node concept="1oi1Uc" id="kTK1BfyxPe" role="3tpDZB">
              <node concept="1oi5XN" id="kTK1BfyxPf" role="1oi0x0">
                <property role="1oi5yK" value="xyz" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="4XqG8ivynhF" role="3s_gse">
        <property role="3s$Bm0" value="list_value_var" />
        <node concept="3cqZAl" id="4XqG8ivynhG" role="3clF45" />
        <node concept="3Tm1VV" id="4XqG8ivynhH" role="1B3o_S" />
        <node concept="3clFbS" id="4XqG8ivynhI" role="3clF47">
          <node concept="3clFbH" id="4XqG8ivynhJ" role="3cqZAp" />
          <node concept="3cpWs8" id="4XqG8ivynhK" role="3cqZAp">
            <node concept="3cpWsn" id="4XqG8ivynhL" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="4XqG8ivynhM" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="4XqG8ivynhN" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71gQ" resolve="termvar" />
                <node concept="Xl_RD" id="4XqG8ivynhO" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4XqG8ivynhP" role="3cqZAp">
            <node concept="3cpWsn" id="4XqG8ivynhQ" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="4XqG8ivynhR" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="4XqG8ivynhS" role="33vP2m">
                <node concept="1oi5UN" id="4XqG8ivynhT" role="1oi0x0">
                  <node concept="1oi5ST" id="4XqG8ivynhU" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="4XqG8ivynhV" role="1oi5TL">
                      <node concept="1oi5Wm" id="4XqG8ivynhW" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="4XqG8ivynhX" role="1oi5zu">
                          <property role="1oi5yK" value="" />
                          <node concept="22Ky0T" id="4XqG8ivynhY" role="lGtFl">
                            <node concept="37vLTw" id="4XqG8ivynhZ" role="22Ky0K">
                              <ref role="3cqZAo" node="4XqG8ivynhL" resolve="x" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="4XqG8ivyni0" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="4XqG8ivyni1" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4XqG8ivy$Md" role="3cqZAp">
            <node concept="3cpWsn" id="4XqG8ivy$Me" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="4XqG8ivy$Mf" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="4XqG8ivy$Mg" role="33vP2m">
                <node concept="1oi5UN" id="4XqG8ivy$Mh" role="1oi0x0">
                  <node concept="1oi5ST" id="4XqG8ivy$Mi" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="4XqG8ivy$Mj" role="1oi5TL">
                      <node concept="1oi5Wm" id="4XqG8ivy$Mk" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="kTK1BfyzDf" role="1oi5zu">
                          <node concept="22Ky0T" id="kTK1BfyzDq" role="lGtFl">
                            <node concept="2OqwBi" id="kTK1BfyLnF" role="22Ky0K">
                              <node concept="2OqwBi" id="kTK1BfyIXJ" role="2Oq$k0">
                                <node concept="2ShNRf" id="kTK1BfyzDY" role="2Oq$k0">
                                  <node concept="3g6Rrh" id="kTK1Bfy$G9" role="2ShVmc">
                                    <node concept="17QB3L" id="kTK1BfyzSl" role="3g7fb8" />
                                    <node concept="Xl_RD" id="kTK1Bfy_oV" role="3g7hyw">
                                      <property role="Xl_RC" value="foo" />
                                    </node>
                                    <node concept="Xl_RD" id="kTK1BfyBuk" role="3g7hyw">
                                      <property role="Xl_RC" value="bar" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="39bAoz" id="kTK1BfyKjP" role="2OqNvi" />
                              </node>
                              <node concept="ANE8D" id="kTK1BfyL$i" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="4XqG8ivy$Mm" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="4XqG8ivy$Mn" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4XqG8ivy_eX" role="3cqZAp" />
          <node concept="3cpWs8" id="4XqG8ivyni2" role="3cqZAp">
            <node concept="3cpWsn" id="4XqG8ivyni3" role="3cpWs9">
              <property role="TrG5h" value="c" />
              <node concept="3uibUv" id="4XqG8ivyni4" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="4XqG8ivyni5" role="33vP2m">
                <node concept="1oi5UN" id="4XqG8ivyni6" role="1oi0x0">
                  <node concept="1oi5Wm" id="4XqG8ivynib" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="4XqG8ivyrSW" role="1oi5zu">
                      <property role="1oi5yK" value="" />
                      <node concept="22Ky0T" id="4XqG8ivyrSY" role="lGtFl">
                        <node concept="37vLTw" id="4XqG8ivyw2s" role="22Ky0K">
                          <ref role="3cqZAo" node="4XqG8ivynhL" resolve="x" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4XqG8ivy_$H" role="3cqZAp">
            <node concept="3cpWsn" id="4XqG8ivy_$I" role="3cpWs9">
              <property role="TrG5h" value="d" />
              <node concept="3uibUv" id="4XqG8ivy_$J" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="4XqG8ivy_$K" role="33vP2m">
                <node concept="1oi5UN" id="4XqG8ivy_$L" role="1oi0x0">
                  <node concept="1oi5Wm" id="4XqG8ivy_$M" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="4XqG8ivy_$N" role="1oi5zu">
                      <property role="1oi5yK" value="abc" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4XqG8ivyrG8" role="3cqZAp" />
          <node concept="3SKdUt" id="7FuqS$4k5xF" role="3cqZAp">
            <node concept="3SKdUq" id="7FuqS$4k5Ax" role="3SKWNk">
              <property role="3SKdUp" value="not bound var" />
            </node>
          </node>
          <node concept="3vwNmj" id="7FuqS$4k214" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6jxH" role="3vwVQn">
              <node concept="37vLTw" id="2rIdnPu6jxI" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6jxJ" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="2rIdnPu6jxK" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivynhQ" resolve="a" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6kGp" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivy$Me" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7FuqS$4k1Wl" role="3cqZAp" />
          <node concept="3clFbF" id="2rIdnPu6jyb" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6jyc" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6jyd" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6jye" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6jyf" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivynhQ" resolve="a" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6jyg" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivy$Me" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="4XqG8ivynil" role="3cqZAp">
            <node concept="2OqwBi" id="6MYr6Jy8m2S" role="3tpDZA">
              <node concept="2OqwBi" id="6MYr6Jy8m2T" role="2Oq$k0">
                <node concept="1rXfSq" id="6MYr6Jy8m2U" role="2Oq$k0">
                  <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogicalTerm" />
                  <node concept="37vLTw" id="6MYr6Jy8m2V" role="37wK5m">
                    <ref role="3cqZAo" node="4XqG8ivynhL" resolve="x" />
                  </node>
                </node>
                <node concept="liA8E" id="6MYr6Jy8m2W" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                </node>
              </node>
              <node concept="liA8E" id="6MYr6Jy8m2X" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
              </node>
            </node>
            <node concept="1oi1Uc" id="6MYr6Jy8lXX" role="3tpDZB">
              <node concept="1oi5XN" id="kTK1BfyCRk" role="1oi0x0">
                <node concept="22Ky0T" id="kTK1BfyCRz" role="lGtFl">
                  <node concept="2OqwBi" id="kTK1BfyOHJ" role="22Ky0K">
                    <node concept="2OqwBi" id="kTK1BfyMoH" role="2Oq$k0">
                      <node concept="2ShNRf" id="kTK1BfyCS7" role="2Oq$k0">
                        <node concept="3g6Rrh" id="kTK1BfyCS8" role="2ShVmc">
                          <node concept="17QB3L" id="kTK1BfyCS9" role="3g7fb8" />
                          <node concept="Xl_RD" id="kTK1BfyCSa" role="3g7hyw">
                            <property role="Xl_RC" value="foo" />
                          </node>
                          <node concept="Xl_RD" id="kTK1BfyCSb" role="3g7hyw">
                            <property role="Xl_RC" value="bar" />
                          </node>
                        </node>
                      </node>
                      <node concept="39bAoz" id="kTK1BfyNIb" role="2OqNvi" />
                    </node>
                    <node concept="ANE8D" id="kTK1BfyOUm" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4XqG8ivy$I$" role="3cqZAp" />
          <node concept="3SKdUt" id="7FuqS$4k5In" role="3cqZAp">
            <node concept="3SKdUq" id="7FuqS$4k5Nf" role="3SKWNk">
              <property role="3SKdUp" value="bound var" />
            </node>
          </node>
          <node concept="3vFxKo" id="4XqG8ivyGzs" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6jKy" role="3vFALc">
              <node concept="37vLTw" id="2rIdnPu6jKz" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6jK$" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="2rIdnPu6jNh" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivyni3" resolve="c" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6jPO" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivy_$I" resolve="d" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1OShD0IfNBZ" role="3s_gse">
        <property role="3s$Bm0" value="term_var" />
        <node concept="3cqZAl" id="1OShD0IfNC0" role="3clF45" />
        <node concept="3Tm1VV" id="1OShD0IfNC1" role="1B3o_S" />
        <node concept="3clFbS" id="1OShD0IfNC2" role="3clF47">
          <node concept="3clFbH" id="1OShD0IfXHu" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0IfNC4" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IfNC5" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1OShD0IfNC6" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0IfNC7" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0IfNC8" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0IfNC9" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="1OShD0IfNCa" role="1oi5TL">
                      <node concept="1oi5Wm" id="1OShD0IfNCb" role="1ojpOf">
                        <property role="TrG5h" value="name" />
                        <node concept="1oi5XN" id="1OShD0IfNCc" role="1oi5zu">
                          <property role="1oi5yK" value="bar" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0IfNCd" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0IfNCe" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0IfO6G" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IfO6H" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="1OShD0IfO6F" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IfO6I" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71gQ" resolve="termvar" />
                <node concept="Xl_RD" id="1OShD0IfO6J" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0IfNCf" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IfNCg" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0IfNCh" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0IfNCi" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0IfNCj" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0IfNCk" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="677NV56vfNA" role="1oi5TL">
                      <node concept="22Ky0T" id="677NV56vfNB" role="lGtFl">
                        <node concept="37vLTw" id="1OShD0IfO6K" role="22Ky0K">
                          <ref role="3cqZAo" node="1OShD0IfO6H" resolve="x" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0IfNCo" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0IfNCp" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0IfP48" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IfP49" role="3cpWs9">
              <property role="TrG5h" value="y" />
              <node concept="3uibUv" id="1OShD0IfP4a" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IfP4b" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71gQ" resolve="termvar" />
                <node concept="Xl_RD" id="1OShD0IfP4c" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0IfOZx" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IfOZy" role="3cpWs9">
              <property role="TrG5h" value="c" />
              <node concept="3uibUv" id="1OShD0IfOZz" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0IfOZ$" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0IfOZ_" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0IfOZA" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="677NV56vfNu" role="1oi5TL">
                      <node concept="22Ky0T" id="677NV56vfNv" role="lGtFl">
                        <node concept="37vLTw" id="1OShD0IfPjo" role="22Ky0K">
                          <ref role="3cqZAo" node="1OShD0IfP49" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0IfOZD" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0IfOZE" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3mz2_dYyyU1" role="3cqZAp" />
          <node concept="2Hmddi" id="3mz2_dYyyKq" role="3cqZAp">
            <node concept="2OqwBi" id="3mz2_dYyyKr" role="2Hmdds">
              <node concept="37vLTw" id="3mz2_dYyyKs" role="2Oq$k0">
                <ref role="3cqZAo" node="1OShD0IfO6H" resolve="x" />
              </node>
              <node concept="liA8E" id="3mz2_dYyyKt" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Term.get():jetbrains.mps.unification.Term" resolve="get" />
              </node>
            </node>
          </node>
          <node concept="2Hmddi" id="3mz2_dYyyKu" role="3cqZAp">
            <node concept="2OqwBi" id="3mz2_dYyyKv" role="2Hmdds">
              <node concept="37vLTw" id="3mz2_dYyyKw" role="2Oq$k0">
                <ref role="3cqZAo" node="1OShD0IfP49" resolve="y" />
              </node>
              <node concept="liA8E" id="3mz2_dYyyKx" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Term.get():jetbrains.mps.unification.Term" resolve="get" />
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="3mz2_dYyyKy" role="3cqZAp">
            <node concept="3clFbC" id="3mz2_dYyyKz" role="3vFALc">
              <node concept="2OqwBi" id="3mz2_dYyyK$" role="3uHU7w">
                <node concept="37vLTw" id="3mz2_dYyyK_" role="2Oq$k0">
                  <ref role="3cqZAo" node="1OShD0IfP49" resolve="y" />
                </node>
                <node concept="liA8E" id="3mz2_dYyyKA" role="2OqNvi">
                  <ref role="37wK5l" to="yt73:~Term.get():jetbrains.mps.unification.Term" resolve="get" />
                </node>
              </node>
              <node concept="2OqwBi" id="3mz2_dYyyKB" role="3uHU7B">
                <node concept="37vLTw" id="3mz2_dYyyKC" role="2Oq$k0">
                  <ref role="3cqZAo" node="1OShD0IfO6H" resolve="x" />
                </node>
                <node concept="liA8E" id="3mz2_dYyyKD" role="2OqNvi">
                  <ref role="37wK5l" to="yt73:~Term.get():jetbrains.mps.unification.Term" resolve="get" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0IfOk1" role="3cqZAp" />
          <node concept="3clFbF" id="2rIdnPu6mvb" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6mvc" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6mvd" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6mve" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6mvf" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfNC5" resolve="a" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6mvg" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfNCg" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2rIdnPu6mxk" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6mxl" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6mxm" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6mxn" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6mOE" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfNCg" resolve="b" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6mRd" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfOZy" resolve="c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0IfNCq" role="3cqZAp" />
          <node concept="3SKdUt" id="3mz2_dYyzc_" role="3cqZAp">
            <node concept="3SKdUq" id="3mz2_dYyzcA" role="3SKWNk">
              <property role="3SKdUp" value="testing that variables x and y are unified" />
            </node>
          </node>
          <node concept="3vMLTj" id="3mz2_dYyzcB" role="3cqZAp">
            <node concept="2OqwBi" id="3mz2_dYyzcC" role="3tpDZB">
              <node concept="37vLTw" id="3mz2_dYyzcD" role="2Oq$k0">
                <ref role="3cqZAo" node="1OShD0IfO6H" resolve="x" />
              </node>
              <node concept="liA8E" id="3mz2_dYyzcE" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Term.get():jetbrains.mps.unification.Term" resolve="get" />
              </node>
            </node>
            <node concept="2OqwBi" id="3mz2_dYyzcF" role="3tpDZA">
              <node concept="37vLTw" id="3mz2_dYyzcG" role="2Oq$k0">
                <ref role="3cqZAo" node="1OShD0IfP49" resolve="y" />
              </node>
              <node concept="liA8E" id="3mz2_dYyzcH" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Term.get():jetbrains.mps.unification.Term" resolve="get" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0IfPjH" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0IfO_e" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IfO_f" role="3cpWs9">
              <property role="TrG5h" value="s" />
              <node concept="3uibUv" id="1OShD0IfO_g" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0IfO_h" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0IfO_k" role="1oi0x0">
                  <node concept="1oi5Wm" id="1OShD0IfO_l" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0IfO_m" role="1oi5zu">
                      <property role="1oi5yK" value="bar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0IfOGU" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IfOGV" role="3cpWs9">
              <property role="TrG5h" value="t" />
              <node concept="3uibUv" id="1OShD0IfOGW" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0IfOGX" role="33vP2m">
                <node concept="1oi5UN" id="677NV56wbOC" role="1oi0x0">
                  <node concept="22Ky0T" id="677NV56wbOD" role="lGtFl">
                    <node concept="37vLTw" id="1OShD0IfOH1" role="22Ky0K">
                      <ref role="3cqZAo" node="1OShD0IfO6H" resolve="x" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0IfODl" role="3cqZAp" />
          <node concept="3vwNmj" id="1OShD0IfR23" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6n48" role="3vwVQn">
              <node concept="37vLTw" id="2rIdnPu6n49" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6n4a" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="2rIdnPu6n73" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfO_f" resolve="s" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6n9A" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfOGV" resolve="t" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="4XqG8ivylQT" role="3s_gse">
        <property role="3s$Bm0" value="term_term_var" />
        <node concept="3cqZAl" id="4XqG8ivylQU" role="3clF45" />
        <node concept="3Tm1VV" id="4XqG8ivylQV" role="1B3o_S" />
        <node concept="3clFbS" id="4XqG8ivylQW" role="3clF47">
          <node concept="3clFbH" id="4XqG8ivylQX" role="3cqZAp" />
          <node concept="3cpWs8" id="4XqG8ivylQY" role="3cqZAp">
            <node concept="3cpWsn" id="4XqG8ivylQZ" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="4XqG8ivylR0" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="4XqG8ivylR1" role="33vP2m">
                <node concept="1oi5UN" id="4XqG8ivylR2" role="1oi0x0">
                  <node concept="1oi5ST" id="4XqG8ivylR3" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="4XqG8ivylR4" role="1oi5TL">
                      <node concept="1oi5Wm" id="4XqG8ivylR5" role="1ojpOf">
                        <property role="TrG5h" value="name" />
                        <node concept="1oi5XN" id="4XqG8ivylR6" role="1oi5zu">
                          <property role="1oi5yK" value="bar" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="4XqG8ivylR7" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="4XqG8ivylR8" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4XqG8ivylR9" role="3cqZAp">
            <node concept="3cpWsn" id="4XqG8ivylRa" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="4XqG8ivylRb" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="4XqG8ivylRc" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71gQ" resolve="termvar" />
                <node concept="Xl_RD" id="4XqG8ivylRd" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4XqG8ivylRe" role="3cqZAp">
            <node concept="3cpWsn" id="4XqG8ivylRf" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="4XqG8ivylRg" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="4XqG8ivylRh" role="33vP2m">
                <node concept="1oi5UN" id="4XqG8ivylRi" role="1oi0x0">
                  <node concept="1oi5ST" id="4XqG8ivylRj" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="4XqG8ivylRk" role="1oi5TL">
                      <node concept="22Ky0T" id="4XqG8ivylRl" role="lGtFl">
                        <node concept="37vLTw" id="4XqG8ivylRm" role="22Ky0K">
                          <ref role="3cqZAo" node="4XqG8ivylRa" resolve="x" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="4XqG8ivylRn" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="4XqG8ivylRo" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4XqG8ivynb_" role="3cqZAp" />
          <node concept="3cpWs8" id="4XqG8ivylRp" role="3cqZAp">
            <node concept="3cpWsn" id="4XqG8ivylRq" role="3cpWs9">
              <property role="TrG5h" value="y" />
              <node concept="3uibUv" id="4XqG8ivylRr" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="4XqG8ivylRs" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71gQ" resolve="termvar" />
                <node concept="Xl_RD" id="4XqG8ivylRt" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4XqG8ivylRu" role="3cqZAp">
            <node concept="3cpWsn" id="4XqG8ivylRv" role="3cpWs9">
              <property role="TrG5h" value="c" />
              <node concept="3uibUv" id="4XqG8ivylRw" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="4XqG8ivylRx" role="33vP2m">
                <node concept="1oi5UN" id="4XqG8ivylRy" role="1oi0x0">
                  <node concept="1oi5ST" id="4XqG8ivylRz" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="4XqG8ivylR$" role="1oi5TL">
                      <node concept="22Ky0T" id="4XqG8ivylR_" role="lGtFl">
                        <node concept="37vLTw" id="4XqG8ivylRA" role="22Ky0K">
                          <ref role="3cqZAo" node="4XqG8ivylRq" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="4XqG8ivylRB" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="4XqG8ivylRC" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5jPBdKNHr8" role="3cqZAp" />
          <node concept="2Hmddi" id="3mz2_dYykZd" role="3cqZAp">
            <node concept="2OqwBi" id="3mz2_dYyleq" role="2Hmdds">
              <node concept="37vLTw" id="3mz2_dYyl7U" role="2Oq$k0">
                <ref role="3cqZAo" node="4XqG8ivylRa" resolve="x" />
              </node>
              <node concept="liA8E" id="3mz2_dYylmd" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Term.get():jetbrains.mps.unification.Term" resolve="get" />
              </node>
            </node>
          </node>
          <node concept="2Hmddi" id="3mz2_dYylmy" role="3cqZAp">
            <node concept="2OqwBi" id="3mz2_dYylmz" role="2Hmdds">
              <node concept="37vLTw" id="3mz2_dYylvV" role="2Oq$k0">
                <ref role="3cqZAo" node="4XqG8ivylRq" resolve="y" />
              </node>
              <node concept="liA8E" id="3mz2_dYylm_" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Term.get():jetbrains.mps.unification.Term" resolve="get" />
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="3mz2_dYytOw" role="3cqZAp">
            <node concept="3clFbC" id="3mz2_dYyueD" role="3vFALc">
              <node concept="2OqwBi" id="3mz2_dYyunv" role="3uHU7w">
                <node concept="37vLTw" id="3mz2_dYyum8" role="2Oq$k0">
                  <ref role="3cqZAo" node="4XqG8ivylRq" resolve="y" />
                </node>
                <node concept="liA8E" id="3mz2_dYyuoZ" role="2OqNvi">
                  <ref role="37wK5l" to="yt73:~Term.get():jetbrains.mps.unification.Term" resolve="get" />
                </node>
              </node>
              <node concept="2OqwBi" id="3mz2_dYyu5J" role="3uHU7B">
                <node concept="37vLTw" id="3mz2_dYytYr" role="2Oq$k0">
                  <ref role="3cqZAo" node="4XqG8ivylRa" resolve="x" />
                </node>
                <node concept="liA8E" id="3mz2_dYyudo" role="2OqNvi">
                  <ref role="37wK5l" to="yt73:~Term.get():jetbrains.mps.unification.Term" resolve="get" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2rIdnPu6nyK" role="3cqZAp" />
          <node concept="3clFbF" id="2rIdnPu6nit" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6niu" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6niv" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6niw" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6nix" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivylQZ" resolve="a" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6niy" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivylRf" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2rIdnPu6n$J" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6n$K" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6n$L" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6n$M" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6nDu" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivylRf" resolve="b" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6nUA" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivylRv" resolve="c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3mz2_dYyt5P" role="3cqZAp" />
          <node concept="3SKdUt" id="3mz2_dYykGy" role="3cqZAp">
            <node concept="3SKdUq" id="3mz2_dYykG$" role="3SKWNk">
              <property role="3SKdUp" value="testing that variables x and y are unified" />
            </node>
          </node>
          <node concept="3vMLTj" id="3mz2_dYylEJ" role="3cqZAp">
            <node concept="2OqwBi" id="3mz2_dYylUZ" role="3tpDZB">
              <node concept="37vLTw" id="3mz2_dYylO5" role="2Oq$k0">
                <ref role="3cqZAo" node="4XqG8ivylRa" resolve="x" />
              </node>
              <node concept="liA8E" id="3mz2_dYym2e" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Term.get():jetbrains.mps.unification.Term" resolve="get" />
              </node>
            </node>
            <node concept="2OqwBi" id="3mz2_dYymac" role="3tpDZA">
              <node concept="37vLTw" id="3mz2_dYym35" role="2Oq$k0">
                <ref role="3cqZAo" node="4XqG8ivylRq" resolve="y" />
              </node>
              <node concept="liA8E" id="3mz2_dYymhu" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Term.get():jetbrains.mps.unification.Term" resolve="get" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4XqG8ivylS0" role="3cqZAp" />
          <node concept="3cpWs8" id="4XqG8ivylS1" role="3cqZAp">
            <node concept="3cpWsn" id="4XqG8ivylS2" role="3cpWs9">
              <property role="TrG5h" value="s" />
              <node concept="3uibUv" id="4XqG8ivylS3" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="4XqG8ivylS4" role="33vP2m">
                <node concept="1oi5UN" id="4XqG8ivylS5" role="1oi0x0">
                  <node concept="1oi5Wm" id="4XqG8ivylS6" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="4XqG8ivylS7" role="1oi5zu">
                      <property role="1oi5yK" value="bar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4XqG8ivylS8" role="3cqZAp">
            <node concept="3cpWsn" id="4XqG8ivylS9" role="3cpWs9">
              <property role="TrG5h" value="t" />
              <node concept="3uibUv" id="4XqG8ivylSa" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="4XqG8ivylSb" role="33vP2m">
                <node concept="1oi5UN" id="4XqG8ivylSc" role="1oi0x0">
                  <node concept="22Ky0T" id="4XqG8ivylSd" role="lGtFl">
                    <node concept="37vLTw" id="4XqG8ivylSe" role="22Ky0K">
                      <ref role="3cqZAo" node="4XqG8ivylRa" resolve="x" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4XqG8ivylSf" role="3cqZAp" />
          <node concept="3vwNmj" id="4XqG8ivylSg" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6o7y" role="3vwVQn">
              <node concept="37vLTw" id="2rIdnPu6o7z" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6o7$" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="2rIdnPu6o7_" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivylS2" resolve="s" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6o7A" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivylS9" resolve="t" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1OShD0IfW$s" role="3s_gse">
        <property role="3s$Bm0" value="list_head" />
        <node concept="3cqZAl" id="1OShD0IfW$t" role="3clF45" />
        <node concept="3Tm1VV" id="1OShD0IfW$u" role="1B3o_S" />
        <node concept="3clFbS" id="1OShD0IfW$v" role="3clF47">
          <node concept="3clFbH" id="1OShD0IfXSc" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0IfW$x" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IfW$y" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1OShD0IfW$z" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0IfW$$" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0IfW$_" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyLz" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0IfW$B" role="38e3mL">
                      <node concept="1oi5UN" id="1OShD0IfW$C" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0IfW$D" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0IfW$E" role="1oi5zu">
                            <property role="1oi5yK" value="bar" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0IfW$F" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0IfW$G" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0IfW$H" role="1oi5zu">
                            <property role="1oi5yK" value="bazz" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0IfW$I" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0IfW$J" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0IfXUR" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IfXUS" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="1OShD0IfXUQ" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IfXUT" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71gQ" resolve="termvar" />
                <node concept="Xl_RD" id="1OShD0IfXUU" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0IfW$K" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IfW$L" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0IfW$M" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0IfW$N" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0IfW$O" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyL0" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0IfW$Q" role="38e3mL">
                      <node concept="1oi5UN" id="677NV56y2bs" role="KCVpo">
                        <node concept="22Ky0T" id="677NV56y2bt" role="lGtFl">
                          <node concept="37vLTw" id="1OShD0IfXUV" role="22Ky0K">
                            <ref role="3cqZAo" node="1OShD0IfXUS" resolve="x" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0IfW$R" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0IfW$S" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0IfW$T" role="1oi5zu">
                            <property role="1oi5yK" value="bazz" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0IfW$X" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0IfW$Y" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0IfY4a" role="3cqZAp" />
          <node concept="3clFbF" id="2rIdnPu6o94" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6o95" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6o96" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6o97" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6o98" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfW$y" resolve="a" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6o99" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfW$L" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IVxIx" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVxIy" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVxIz" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogicalTerm" />
                <node concept="37vLTw" id="4$OyT8IVxI$" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfXUS" resolve="x" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVxI_" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0Ig7gi" role="3cqZAp" />
          <node concept="3SKdUt" id="1OShD0Ig7bY" role="3cqZAp">
            <node concept="3SKdUq" id="1OShD0Ig7kA" role="3SKWNk">
              <property role="3SKdUp" value="single node" />
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0IfYmL" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IfYmM" role="3cpWs9">
              <property role="TrG5h" value="s" />
              <node concept="3uibUv" id="1OShD0IfYmN" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0IfYmO" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0IfYt5" role="1oi0x0">
                  <node concept="1oi5Wm" id="1OShD0IfYt6" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0IfYt7" role="1oi5zu">
                      <property role="1oi5yK" value="bar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0IfYmS" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IfYmT" role="3cpWs9">
              <property role="TrG5h" value="t" />
              <node concept="3uibUv" id="1OShD0IfYmU" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0IfYmV" role="33vP2m">
                <node concept="1oi5UN" id="677NV56wbOu" role="1oi0x0">
                  <node concept="22Ky0T" id="677NV56wbOv" role="lGtFl">
                    <node concept="37vLTw" id="1OShD0IfYmX" role="22Ky0K">
                      <ref role="3cqZAo" node="1OShD0IfXUS" resolve="x" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0IfYhY" role="3cqZAp" />
          <node concept="3vwNmj" id="1OShD0IfW_0" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6ooc" role="3vwVQn">
              <node concept="37vLTw" id="2rIdnPu6ood" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6ooe" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="2rIdnPu6oof" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfYmM" resolve="s" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6oog" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfYmT" resolve="t" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1OShD0IgkRo" role="3s_gse">
        <property role="3s$Bm0" value="list_var_head" />
        <node concept="3cqZAl" id="1OShD0IgkRp" role="3clF45" />
        <node concept="3Tm1VV" id="1OShD0IgkRq" role="1B3o_S" />
        <node concept="3clFbS" id="1OShD0IgkRr" role="3clF47">
          <node concept="3clFbH" id="1OShD0IgkRs" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0IgkRt" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IgkRu" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1OShD0IgkRv" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0IgkRw" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0IgkRx" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyLi" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0IgkRz" role="38e3mL">
                      <node concept="1oi5UN" id="1OShD0IgkR$" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0IgkR_" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0IgkRA" role="1oi5zu">
                            <property role="1oi5yK" value="bar" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0IgkRB" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0IgkRC" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0IgkRD" role="1oi5zu">
                            <property role="1oi5yK" value="bazz" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0IglCp" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0IglCq" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0IglCr" role="1oi5zu">
                            <property role="1oi5yK" value="qux" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0IgkRE" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0IgkRF" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0IgkRG" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IgkRH" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="1OShD0IgkRI" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IgkRJ" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71gQ" resolve="termvar" />
                <node concept="Xl_RD" id="1OShD0IgkRK" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0IglC_" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IglCA" role="3cpWs9">
              <property role="TrG5h" value="y" />
              <node concept="3uibUv" id="1OShD0IglCB" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IglCC" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71gQ" resolve="termvar" />
                <node concept="Xl_RD" id="1OShD0IglCD" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0IgkRL" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IgkRM" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0IgkRN" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0IgkRO" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0IgkRP" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyLC" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0IgkRR" role="38e3mL">
                      <node concept="1oi5UN" id="677NV56y2by" role="KCVpo">
                        <node concept="22Ky0T" id="677NV56y2bz" role="lGtFl">
                          <node concept="37vLTw" id="1OShD0IgkRT" role="22Ky0K">
                            <ref role="3cqZAo" node="1OShD0IgkRH" resolve="x" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="677NV56y2bo" role="KCVpo">
                        <node concept="22Ky0T" id="677NV56y2bp" role="lGtFl">
                          <node concept="37vLTw" id="1OShD0IglKJ" role="22Ky0K">
                            <ref role="3cqZAo" node="1OShD0IglCA" resolve="y" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0IgkRU" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0IgkRV" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0IgkRW" role="1oi5zu">
                            <property role="1oi5yK" value="qux" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0IgkRX" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0IgkRY" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0IgkRZ" role="3cqZAp" />
          <node concept="3clFbF" id="2rIdnPu6oq6" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6oq7" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6oq8" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6oq9" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6oqa" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IgkRu" resolve="a" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6oqb" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IgkRM" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IVtAi" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVtAj" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVtAk" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogicalTerm" />
                <node concept="37vLTw" id="4$OyT8IVtAl" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IgkRH" resolve="x" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVtAm" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IVuqB" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVuqC" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVuqD" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogicalTerm" />
                <node concept="37vLTw" id="4$OyT8IVvgk" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IglCA" resolve="y" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVuqF" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0IgkS6" role="3cqZAp" />
          <node concept="3SKdUt" id="1OShD0IgkS7" role="3cqZAp">
            <node concept="3SKdUq" id="1OShD0IgkS8" role="3SKWNk">
              <property role="3SKdUp" value="single node" />
            </node>
          </node>
          <node concept="3vwNmj" id="2rIdnPu6pwB" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6pyg" role="3vwVQn">
              <node concept="37vLTw" id="2rIdnPu6pyh" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6pyi" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="1oi1Uc" id="2rIdnPu6pyS" role="37wK5m">
                  <node concept="1oi5UN" id="2rIdnPu6pyT" role="1oi0x0">
                    <node concept="1oi5Wm" id="2rIdnPu6pyU" role="1ojpOf">
                      <property role="TrG5h" value="name" />
                      <node concept="1oi5XN" id="2rIdnPu6pyV" role="1oi5zu">
                        <property role="1oi5yK" value="bar" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1oi1Uc" id="2rIdnPu6pyW" role="37wK5m">
                  <node concept="1oi5UN" id="2rIdnPu6pyX" role="1oi0x0">
                    <node concept="22Ky0T" id="2rIdnPu6pyY" role="lGtFl">
                      <node concept="37vLTw" id="2rIdnPu6pyZ" role="22Ky0K">
                        <ref role="3cqZAo" node="1OShD0IgkRH" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="2rIdnPu6p$B" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6p$C" role="3vwVQn">
              <node concept="37vLTw" id="2rIdnPu6p$D" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6p$E" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="1oi1Uc" id="2rIdnPu6pAu" role="37wK5m">
                  <node concept="1oi5UN" id="2rIdnPu6pAv" role="1oi0x0">
                    <node concept="1oi5Wm" id="2rIdnPu6pAw" role="1ojpOf">
                      <property role="TrG5h" value="name" />
                      <node concept="1oi5XN" id="2rIdnPu6pAx" role="1oi5zu">
                        <property role="1oi5yK" value="bazz" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1oi1Uc" id="2rIdnPu6pAy" role="37wK5m">
                  <node concept="1oi5UN" id="2rIdnPu6pAz" role="1oi0x0">
                    <node concept="22Ky0T" id="2rIdnPu6pA$" role="lGtFl">
                      <node concept="37vLTw" id="2rIdnPu6pA_" role="22Ky0K">
                        <ref role="3cqZAo" node="1OShD0IglCA" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1OShD0Ig2iu" role="3s_gse">
        <property role="3s$Bm0" value="list_tail" />
        <node concept="3cqZAl" id="1OShD0Ig2iv" role="3clF45" />
        <node concept="3Tm1VV" id="1OShD0Ig2iw" role="1B3o_S" />
        <node concept="3clFbS" id="1OShD0Ig2ix" role="3clF47">
          <node concept="3clFbH" id="1OShD0Ig2iy" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0Ig2iz" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0Ig2i$" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1OShD0Ig2i_" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0Ig2iA" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0Ig2iB" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyLj" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0Ig2iD" role="38e3mL">
                      <node concept="1oi5UN" id="1OShD0Ig2iE" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0Ig2iF" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0Ig2iG" role="1oi5zu">
                            <property role="1oi5yK" value="bar" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1H1f_zsIp3E" role="KCVpo">
                        <node concept="1oi5Wm" id="1H1f_zsIp3F" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1H1f_zsIp3G" role="1oi5zu">
                            <property role="1oi5yK" value="baz" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0Ig2iH" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0Ig2iI" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0Ig2iJ" role="1oi5zu">
                            <property role="1oi5yK" value="bazz" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="7nuzzkr2a9P" role="KCVpo">
                        <node concept="1oi5Wm" id="7nuzzkr2a9Q" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="7nuzzkr2a9R" role="1oi5zu">
                            <property role="1oi5yK" value="bazzzz" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0Ig2iK" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0Ig2iL" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0Ig2iM" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0Ig2iN" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="1OShD0Ig2iO" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0Ig2iP" role="33vP2m">
                <ref role="37wK5l" node="7nuzzkr25as" resolve="wildcard" />
                <node concept="Xl_RD" id="7nuzzkr28Kp" role="37wK5m">
                  <property role="Xl_RC" value="x" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0Ig2iR" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0Ig2iS" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0Ig2iT" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0Ig2iU" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0Ig2iV" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyL$" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0Ig2iX" role="38e3mL">
                      <node concept="1oi5UN" id="1OShD0Ig2iY" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0Ig2iZ" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0Ig2j0" role="1oi5zu">
                            <property role="1oi5yK" value="bar" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1H1f_zsIrmt" role="KCVpo">
                        <node concept="1oi5Wm" id="1H1f_zsIrmu" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1H1f_zsIrmv" role="1oi5zu">
                            <property role="1oi5yK" value="baz" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="677NV56y2bq" role="KCVpo">
                        <node concept="22Ky0T" id="677NV56y2br" role="lGtFl">
                          <node concept="37vLTw" id="1OShD0Ig2j2" role="22Ky0K">
                            <ref role="3cqZAo" node="1OShD0Ig2iN" resolve="x" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0Ig2j3" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0Ig2j4" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0Ig2j5" role="3cqZAp" />
          <node concept="3clFbF" id="2rIdnPu6pDv" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6pDw" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6pDx" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6pDy" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6pDz" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0Ig2i$" resolve="a" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6pD$" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0Ig2iS" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IVrZH" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVrZI" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVrZJ" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogicalTerm" />
                <node concept="37vLTw" id="4$OyT8IVrZK" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0Ig2iN" resolve="x" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVrZL" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0IgaFL" role="3cqZAp" />
          <node concept="3SKdUt" id="1OShD0IgaFJ" role="3cqZAp">
            <node concept="3SKdUq" id="1OShD0IgaFK" role="3SKWNk">
              <property role="3SKdUp" value="*list* variable in the last position matches the _list_" />
            </node>
          </node>
          <node concept="3vwNmj" id="2rIdnPu6pW0" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6pW1" role="3vwVQn">
              <node concept="37vLTw" id="2rIdnPu6pW2" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6pW3" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="1oi1Uc" id="2rIdnPu6pXU" role="37wK5m">
                  <node concept="KCUsM" id="2rIdnPu6pXV" role="1oi0x0">
                    <node concept="1oi5UN" id="2rIdnPu6pXW" role="KCVpo">
                      <node concept="1oi5Wm" id="2rIdnPu6pXX" role="1ojpOf">
                        <property role="TrG5h" value="name" />
                        <node concept="1oi5XN" id="2rIdnPu6pXY" role="1oi5zu">
                          <property role="1oi5yK" value="bazz" />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="2rIdnPu6pXZ" role="KCVpo">
                      <node concept="1oi5Wm" id="2rIdnPu6pY0" role="1ojpOf">
                        <property role="TrG5h" value="name" />
                        <node concept="1oi5XN" id="2rIdnPu6pY1" role="1oi5zu">
                          <property role="1oi5yK" value="bazzzz" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1oi1Uc" id="2rIdnPu6pY2" role="37wK5m">
                  <node concept="1oi5UN" id="2rIdnPu6pY3" role="1oi0x0">
                    <node concept="22Ky0T" id="2rIdnPu6pY4" role="lGtFl">
                      <node concept="37vLTw" id="2rIdnPu6pY5" role="22Ky0K">
                        <ref role="3cqZAo" node="1OShD0Ig2iN" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1OShD0Ig9vY" role="3s_gse">
        <property role="3s$Bm0" value="list_tail_nil" />
        <node concept="3cqZAl" id="1OShD0Ig9vZ" role="3clF45" />
        <node concept="3Tm1VV" id="1OShD0Ig9w0" role="1B3o_S" />
        <node concept="3clFbS" id="1OShD0Ig9w1" role="3clF47">
          <node concept="3clFbH" id="1OShD0Ig9w2" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0Ig9w3" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0Ig9w4" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1OShD0Ig9w5" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0Ig9w6" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0Ig9w7" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyL5" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0Ig9w9" role="38e3mL">
                      <node concept="1oi5UN" id="1OShD0Ig9wa" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0Ig9wb" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0Ig9wc" role="1oi5zu">
                            <property role="1oi5yK" value="bar" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0Ig9wd" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0Ig9we" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0Ig9wf" role="1oi5zu">
                            <property role="1oi5yK" value="bazz" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0Ig9wg" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0Ig9wh" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0IgaBU" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IgaBV" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="1OShD0IgaBT" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IgaBW" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71ho" resolve="wildcard" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0Ig9wi" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0Ig9wj" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0Ig9wk" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0Ig9wl" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0Ig9wm" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyLG" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0Ig9wo" role="38e3mL">
                      <node concept="1oi5UN" id="1OShD0Ig9wp" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0Ig9wq" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0Ig9wr" role="1oi5zu">
                            <property role="1oi5yK" value="bar" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0Ig9ws" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0Ig9wt" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="1OShD0Ig9wu" role="1oi5zu">
                            <property role="1oi5yK" value="bazz" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="677NV56y2b$" role="KCVpo">
                        <node concept="22Ky0T" id="677NV56y2b_" role="lGtFl">
                          <node concept="37vLTw" id="1OShD0IgaBY" role="22Ky0K">
                            <ref role="3cqZAo" node="1OShD0IgaBV" resolve="x" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0Ig9wy" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0Ig9wz" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0Ig9w$" role="3cqZAp" />
          <node concept="3clFbF" id="2rIdnPu6q0B" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6q0C" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6q0D" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6q0E" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6q0F" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0Ig9w4" resolve="a" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6q0G" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0Ig9wj" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IVqqK" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVqqL" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVqqM" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogicalTerm" />
                <node concept="37vLTw" id="4$OyT8IVqqN" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IgaBV" resolve="x" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVqqO" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0Ig2jc" role="3cqZAp" />
          <node concept="3SKdUt" id="1OShD0Ig7rm" role="3cqZAp">
            <node concept="3SKdUq" id="1OShD0Ig7vG" role="3SKWNk">
              <property role="3SKdUp" value="*list* variable in the last position matches the _list_" />
            </node>
          </node>
          <node concept="3vwNmj" id="2rIdnPu6qif" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6qig" role="3vwVQn">
              <node concept="37vLTw" id="2rIdnPu6qih" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6qii" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="1oi1Uc" id="2rIdnPu6qjT" role="37wK5m">
                  <node concept="KCUsM" id="2rIdnPu6qjU" role="1oi0x0" />
                </node>
                <node concept="1oi1Uc" id="2rIdnPu6qjV" role="37wK5m">
                  <node concept="1oi5UN" id="2rIdnPu6qjW" role="1oi0x0">
                    <node concept="22Ky0T" id="2rIdnPu6qjX" role="lGtFl">
                      <node concept="37vLTw" id="2rIdnPu6qjY" role="22Ky0K">
                        <ref role="3cqZAo" node="1OShD0IgaBV" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1OShD0Igi9f" role="3s_gse">
        <property role="3s$Bm0" value="list_nil" />
        <node concept="3cqZAl" id="1OShD0Igi9g" role="3clF45" />
        <node concept="3Tm1VV" id="1OShD0Igi9h" role="1B3o_S" />
        <node concept="3clFbS" id="1OShD0Igi9i" role="3clF47">
          <node concept="3clFbH" id="1OShD0Igi9j" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0Igi9k" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0Igi9l" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1OShD0Igi9m" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0Igi9n" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0Igi9o" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyL1" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0Igi9q" role="38e3mL" />
                  </node>
                  <node concept="1oi5Wm" id="1OShD0Igi9r" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0Igi9s" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0IgiMc" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IgiMd" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="1OShD0IgiMa" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IgiMe" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71ho" resolve="wildcard" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0Igi9t" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0Igi9u" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0Igi9v" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="1OShD0Igi9w" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0Igi9x" role="1oi0x0">
                  <node concept="38e3lM" id="428_4iYbyLk" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0Igi9z" role="38e3mL">
                      <node concept="1oi5UN" id="677NV56y2bA" role="KCVpo">
                        <node concept="22Ky0T" id="677NV56y2bB" role="lGtFl">
                          <node concept="37vLTw" id="1OShD0IgiMg" role="22Ky0K">
                            <ref role="3cqZAo" node="1OShD0IgiMd" resolve="x" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="1OShD0Igi9B" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="1OShD0Igi9C" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0Igj1r" role="3cqZAp" />
          <node concept="3clFbF" id="2rIdnPu6qm1" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6qm2" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6qm3" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6qm4" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6qm5" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0Igi9l" resolve="a" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6qm6" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0Igi9u" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IVo6b" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVo6c" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVo6d" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogicalTerm" />
                <node concept="37vLTw" id="4$OyT8IVpDX" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IgiMd" resolve="x" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVo6f" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0IgiRL" role="3cqZAp" />
          <node concept="3SKdUt" id="1OShD0IgiRM" role="3cqZAp">
            <node concept="3SKdUq" id="1OShD0IgiRN" role="3SKWNk">
              <property role="3SKdUp" value="*list* variable in the last position matches the _list_" />
            </node>
          </node>
          <node concept="3vwNmj" id="2rIdnPu6qB0" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6qB1" role="3vwVQn">
              <node concept="37vLTw" id="2rIdnPu6qB2" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6qB3" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="1oi1Uc" id="2rIdnPu6qCi" role="37wK5m">
                  <node concept="KCUsM" id="2rIdnPu6qCj" role="1oi0x0" />
                </node>
                <node concept="1oi1Uc" id="2rIdnPu6qCk" role="37wK5m">
                  <node concept="1oi5UN" id="2rIdnPu6qCl" role="1oi0x0">
                    <node concept="22Ky0T" id="2rIdnPu6qCm" role="lGtFl">
                      <node concept="37vLTw" id="2rIdnPu6qCn" role="22Ky0K">
                        <ref role="3cqZAo" node="1OShD0IgiMd" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="4$OyT8ISnw9" role="3s_gse">
        <property role="3s$Bm0" value="list_head_tail" />
        <node concept="3cqZAl" id="4$OyT8ISnwa" role="3clF45" />
        <node concept="3Tm1VV" id="4$OyT8ISnwb" role="1B3o_S" />
        <node concept="3clFbS" id="4$OyT8ISnwc" role="3clF47">
          <node concept="3clFbH" id="4$OyT8ISnwd" role="3cqZAp" />
          <node concept="3cpWs8" id="4$OyT8ISnwe" role="3cqZAp">
            <node concept="3cpWsn" id="4$OyT8ISnwf" role="3cpWs9">
              <property role="TrG5h" value="list" />
              <node concept="3uibUv" id="4$OyT8ISnwg" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="4$OyT8ISnwh" role="33vP2m">
                <node concept="KCUsM" id="4$OyT8ISw5n" role="1oi0x0">
                  <node concept="1oi5UN" id="4$OyT8ISxYI" role="KCVpo">
                    <node concept="1oi5Wm" id="4$OyT8ISyBa" role="1ojpOf">
                      <property role="TrG5h" value="foo" />
                      <node concept="1oi5XN" id="6YPNC4O6Jgg" role="1oi5zu">
                        <property role="1oi5yK" value="." />
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5UN" id="4$OyT8ISzRW" role="KCVpo">
                    <node concept="1oi5Wm" id="4$OyT8ISzRX" role="1ojpOf">
                      <property role="TrG5h" value="bar" />
                      <node concept="1oi5XN" id="6YPNC4O6Jgi" role="1oi5zu">
                        <property role="1oi5yK" value="." />
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5UN" id="4$OyT8IS_8N" role="KCVpo">
                    <node concept="1oi5Wm" id="4$OyT8IS_8O" role="1ojpOf">
                      <property role="TrG5h" value="baz" />
                      <node concept="1oi5XN" id="6YPNC4O6Jgk" role="1oi5zu">
                        <property role="1oi5yK" value="." />
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5UN" id="4$OyT8ISApG" role="KCVpo">
                    <node concept="1oi5Wm" id="4$OyT8ISApH" role="1ojpOf">
                      <property role="TrG5h" value="qux" />
                      <node concept="1oi5XN" id="6YPNC4O6Jgm" role="1oi5zu">
                        <property role="1oi5yK" value="." />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4$OyT8ISnww" role="3cqZAp">
            <node concept="3cpWsn" id="4$OyT8ISnwx" role="3cpWs9">
              <property role="TrG5h" value="head" />
              <node concept="3uibUv" id="4$OyT8ISnwy" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="4$OyT8ISnwz" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71gQ" resolve="termvar" />
                <node concept="Xl_RD" id="4$OyT8ISnw$" role="37wK5m">
                  <property role="Xl_RC" value="HEAD" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4$OyT8ISnw_" role="3cqZAp">
            <node concept="3cpWsn" id="4$OyT8ISnwA" role="3cpWs9">
              <property role="TrG5h" value="tail" />
              <node concept="3uibUv" id="4$OyT8ISnwB" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="4$OyT8ISnwC" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71h7" resolve="listVar" />
                <node concept="Xl_RD" id="4$OyT8ISnwD" role="37wK5m">
                  <property role="Xl_RC" value="TAIL" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4$OyT8ISEP9" role="3cqZAp">
            <node concept="3cpWsn" id="4$OyT8ISEPa" role="3cpWs9">
              <property role="TrG5h" value="pattern" />
              <node concept="3uibUv" id="4$OyT8ISEPb" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="4$OyT8ISEPc" role="33vP2m">
                <node concept="KCUsM" id="4$OyT8ISEPd" role="1oi0x0">
                  <node concept="1oi5UN" id="4$OyT8ISEPe" role="KCVpo">
                    <node concept="22Ky0T" id="4$OyT8ISLW$" role="lGtFl">
                      <node concept="37vLTw" id="4$OyT8ISM_B" role="22Ky0K">
                        <ref role="3cqZAo" node="4$OyT8ISnwx" resolve="head" />
                      </node>
                    </node>
                  </node>
                  <node concept="KCUsM" id="4$OyT8ITyPr" role="KCVpo">
                    <node concept="22Ky0T" id="4$OyT8ITzw0" role="lGtFl">
                      <node concept="37vLTw" id="4$OyT8IT$b6" role="22Ky0K">
                        <ref role="3cqZAo" node="4$OyT8ISnwA" resolve="tail" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4$OyT8ISnwW" role="3cqZAp" />
          <node concept="3clFbF" id="2rIdnPu6qEM" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6qEN" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6qEO" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6qEP" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6qZs" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8ISnwf" resolve="list" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6qZt" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8ISEPa" resolve="pattern" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IVknf" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVkng" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVknh" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogicalTerm" />
                <node concept="37vLTw" id="4$OyT8IVl9s" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8ISnwA" resolve="tail" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVknj" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4$OyT8ISnx6" role="3cqZAp" />
          <node concept="3SKdUt" id="4$OyT8ISnx7" role="3cqZAp">
            <node concept="3SKdUq" id="4$OyT8ISnx8" role="3SKWNk">
              <property role="3SKdUp" value="single node" />
            </node>
          </node>
          <node concept="3vwNmj" id="2rIdnPu6rgg" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6rgh" role="3vwVQn">
              <node concept="37vLTw" id="2rIdnPu6rgi" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6rgj" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="1oi1Uc" id="2rIdnPu6rii" role="37wK5m">
                  <node concept="1oi5UN" id="2rIdnPu6rij" role="1oi0x0">
                    <node concept="1oi5Wm" id="2rIdnPu6rik" role="1ojpOf">
                      <property role="TrG5h" value="foo" />
                      <node concept="1oi5XN" id="2rIdnPu6ril" role="1oi5zu">
                        <property role="1oi5yK" value="." />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2rIdnPu6rim" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8ISnwx" resolve="head" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="2rIdnPu6rjN" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6rjO" role="3vwVQn">
              <node concept="37vLTw" id="2rIdnPu6rjP" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6rjQ" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="1oi1Uc" id="2rIdnPu6rls" role="37wK5m">
                  <node concept="KCUsM" id="2rIdnPu6rlt" role="1oi0x0">
                    <node concept="1oi5UN" id="2rIdnPu6rlu" role="KCVpo">
                      <node concept="1oi5Wm" id="2rIdnPu6rlv" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="2rIdnPu6rlw" role="1oi5zu">
                          <property role="1oi5yK" value="." />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="2rIdnPu6rlx" role="KCVpo">
                      <node concept="1oi5Wm" id="2rIdnPu6rly" role="1ojpOf">
                        <property role="TrG5h" value="baz" />
                        <node concept="1oi5XN" id="2rIdnPu6rlz" role="1oi5zu">
                          <property role="1oi5yK" value="." />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="2rIdnPu6rl$" role="KCVpo">
                      <node concept="1oi5Wm" id="2rIdnPu6rl_" role="1ojpOf">
                        <property role="TrG5h" value="qux" />
                        <node concept="1oi5XN" id="2rIdnPu6rlA" role="1oi5zu">
                          <property role="1oi5yK" value="." />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1oi1Uc" id="2rIdnPu6rlB" role="37wK5m">
                  <node concept="1oi5UN" id="2rIdnPu6rlC" role="1oi0x0">
                    <node concept="22Ky0T" id="2rIdnPu6rlD" role="lGtFl">
                      <node concept="37vLTw" id="2rIdnPu6rlE" role="22Ky0K">
                        <ref role="3cqZAo" node="4$OyT8ISnwA" resolve="tail" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="4$OyT8ITVL0" role="3s_gse">
        <property role="3s$Bm0" value="list_tail_twice" />
        <node concept="3cqZAl" id="4$OyT8ITVL1" role="3clF45" />
        <node concept="3Tm1VV" id="4$OyT8ITVL2" role="1B3o_S" />
        <node concept="3clFbS" id="4$OyT8ITVL3" role="3clF47">
          <node concept="3clFbH" id="4$OyT8ITVL4" role="3cqZAp" />
          <node concept="3cpWs8" id="4$OyT8ITVL5" role="3cqZAp">
            <node concept="3cpWsn" id="4$OyT8ITVL6" role="3cpWs9">
              <property role="TrG5h" value="list1" />
              <node concept="3uibUv" id="4$OyT8ITVL7" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="4$OyT8ITVL8" role="33vP2m">
                <node concept="KCUsM" id="4$OyT8ITVL9" role="1oi0x0">
                  <node concept="1oi5UN" id="4$OyT8ITVLa" role="KCVpo">
                    <node concept="1oi5Wm" id="4$OyT8ITVLb" role="1ojpOf">
                      <property role="TrG5h" value="foo" />
                      <node concept="1oi5XN" id="6YPNC4O6Jgo" role="1oi5zu">
                        <property role="1oi5yK" value="." />
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5UN" id="4$OyT8ITVLc" role="KCVpo">
                    <node concept="1oi5Wm" id="4$OyT8ITVLd" role="1ojpOf">
                      <property role="TrG5h" value="bar" />
                      <node concept="1oi5XN" id="6YPNC4O6Jgy" role="1oi5zu">
                        <property role="1oi5yK" value="." />
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5UN" id="4$OyT8ITVLe" role="KCVpo">
                    <node concept="1oi5Wm" id="4$OyT8ITVLf" role="1ojpOf">
                      <property role="TrG5h" value="baz" />
                      <node concept="1oi5XN" id="6YPNC4O6Jg$" role="1oi5zu">
                        <property role="1oi5yK" value="." />
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5UN" id="4$OyT8ITVLg" role="KCVpo">
                    <node concept="1oi5Wm" id="4$OyT8ITVLh" role="1ojpOf">
                      <property role="TrG5h" value="qux" />
                      <node concept="1oi5XN" id="6YPNC4O6JgA" role="1oi5zu">
                        <property role="1oi5yK" value="." />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4$OyT8ITVLn" role="3cqZAp">
            <node concept="3cpWsn" id="4$OyT8ITVLo" role="3cpWs9">
              <property role="TrG5h" value="tail1" />
              <node concept="3uibUv" id="4$OyT8ITVLp" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="4$OyT8ITVLq" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71h7" resolve="listVar" />
                <node concept="Xl_RD" id="4$OyT8ITVLr" role="37wK5m">
                  <property role="Xl_RC" value="TAIL1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4$OyT8IUcuj" role="3cqZAp">
            <node concept="3cpWsn" id="4$OyT8IUcuk" role="3cpWs9">
              <property role="TrG5h" value="tail2" />
              <node concept="3uibUv" id="4$OyT8IUcul" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="4$OyT8IUcum" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm71h7" resolve="listVar" />
                <node concept="Xl_RD" id="4$OyT8IUcun" role="37wK5m">
                  <property role="Xl_RC" value="TAIL2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4$OyT8ITVLs" role="3cqZAp">
            <node concept="3cpWsn" id="4$OyT8ITVLt" role="3cpWs9">
              <property role="TrG5h" value="pattern1" />
              <node concept="3uibUv" id="4$OyT8ITVLu" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="4$OyT8ITVLv" role="33vP2m">
                <node concept="KCUsM" id="4$OyT8ITVLw" role="1oi0x0">
                  <node concept="1oi5UN" id="4$OyT8IUqH1" role="KCVpo">
                    <node concept="22Ky0T" id="4$OyT8IUrr1" role="lGtFl">
                      <node concept="1rXfSq" id="4$OyT8IUs9O" role="22Ky0K">
                        <ref role="37wK5l" node="6yEjedm71ho" resolve="wildcard" />
                      </node>
                    </node>
                  </node>
                  <node concept="KCUsM" id="4$OyT8ITVL$" role="KCVpo">
                    <node concept="22Ky0T" id="4$OyT8ITVL_" role="lGtFl">
                      <node concept="37vLTw" id="4$OyT8ITVLA" role="22Ky0K">
                        <ref role="3cqZAo" node="4$OyT8ITVLo" resolve="tail1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4$OyT8IUeDs" role="3cqZAp">
            <node concept="3cpWsn" id="4$OyT8IUeDt" role="3cpWs9">
              <property role="TrG5h" value="pattern2" />
              <node concept="3uibUv" id="4$OyT8IUeDu" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="4$OyT8IUeDv" role="33vP2m">
                <node concept="KCUsM" id="4$OyT8IUeDw" role="1oi0x0">
                  <node concept="1oi5UN" id="4$OyT8IUuji" role="KCVpo">
                    <node concept="22Ky0T" id="4$OyT8IUv16" role="lGtFl">
                      <node concept="1rXfSq" id="4$OyT8IUvK0" role="22Ky0K">
                        <ref role="37wK5l" node="6yEjedm71ho" resolve="wildcard" />
                      </node>
                    </node>
                  </node>
                  <node concept="KCUsM" id="4$OyT8IUeDy" role="KCVpo">
                    <node concept="22Ky0T" id="4$OyT8IUeDz" role="lGtFl">
                      <node concept="37vLTw" id="4$OyT8IUg7Q" role="22Ky0K">
                        <ref role="3cqZAo" node="4$OyT8IUcuk" resolve="tail2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4$OyT8ITVLB" role="3cqZAp" />
          <node concept="3clFbF" id="2rIdnPu6roO" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6roP" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6roQ" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6roR" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6rr5" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8ITVL6" resolve="list1" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6rr6" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8ITVLt" resolve="pattern1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IV7Cd" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVc8Q" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVaFl" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogicalTerm" />
                <node concept="37vLTw" id="4$OyT8IVbqf" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8ITVLo" resolve="tail1" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVcT8" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2rIdnPu6rK9" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6rKa" role="3clFbG">
              <node concept="37vLTw" id="2rIdnPu6rKb" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6rKc" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="2rIdnPu6ENc" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8ITVLo" resolve="tail1" />
                </node>
                <node concept="37vLTw" id="2rIdnPu6rPY" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8IUeDt" resolve="pattern2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IVdCc" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVdCd" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVdCe" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogicalTerm" />
                <node concept="37vLTw" id="4$OyT8IVfaw" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8IUcuk" resolve="tail2" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVdCg" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4$OyT8ITVLL" role="3cqZAp" />
          <node concept="3vwNmj" id="2rIdnPu6s6Q" role="3cqZAp">
            <node concept="2OqwBi" id="2rIdnPu6s6R" role="3vwVQn">
              <node concept="37vLTw" id="2rIdnPu6s6S" role="2Oq$k0">
                <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="2rIdnPu6s6T" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="1oi1Uc" id="2rIdnPu6s9d" role="37wK5m">
                  <node concept="KCUsM" id="2rIdnPu6s9e" role="1oi0x0">
                    <node concept="1oi5UN" id="2rIdnPu6s9f" role="KCVpo">
                      <node concept="1oi5Wm" id="2rIdnPu6s9g" role="1ojpOf">
                        <property role="TrG5h" value="baz" />
                        <node concept="1oi5XN" id="2rIdnPu6s9h" role="1oi5zu">
                          <property role="1oi5yK" value="." />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="2rIdnPu6s9i" role="KCVpo">
                      <node concept="1oi5Wm" id="2rIdnPu6s9j" role="1ojpOf">
                        <property role="TrG5h" value="qux" />
                        <node concept="1oi5XN" id="2rIdnPu6s9k" role="1oi5zu">
                          <property role="1oi5yK" value="." />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1oi1Uc" id="2rIdnPu6s9l" role="37wK5m">
                  <node concept="1oi5UN" id="2rIdnPu6s9m" role="1oi0x0">
                    <node concept="22Ky0T" id="2rIdnPu6s9n" role="lGtFl">
                      <node concept="37vLTw" id="2rIdnPu6s9o" role="22Ky0K">
                        <ref role="3cqZAo" node="4$OyT8IUcuk" resolve="tail2" />
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
    <node concept="1KhYhu" id="1OShD0IftNv" role="1KhZu4">
      <node concept="3clFbS" id="1OShD0IftNw" role="2VODD2">
        <node concept="3clFbF" id="2rIdnPu4_FZ" role="3cqZAp">
          <node concept="37vLTI" id="2rIdnPu4_G0" role="3clFbG">
            <node concept="2ShNRf" id="2rIdnPu4_G1" role="37vLTx">
              <node concept="HV5vD" id="2rIdnPu4_G2" role="2ShVmc">
                <ref role="HV5vE" to="mqqo:6yEjedm5WkE" resolve="TestingUnificationSolver" />
              </node>
            </node>
            <node concept="37vLTw" id="2rIdnPu4_G3" role="37vLTJ">
              <ref role="3cqZAo" node="2rIdnPu4_zD" resolve="unificationSolver" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3s_ewN" id="3K_0akS$KOB">
    <property role="3s_ewP" value="UniEqSolverCommute" />
    <node concept="2tJIrI" id="6yEjedm8dfv" role="jymVt" />
    <node concept="312cEg" id="3K_0akS$LOk" role="jymVt">
      <property role="TrG5h" value="unificationSolver" />
      <node concept="3Tm6S6" id="3K_0akS$LOl" role="1B3o_S" />
      <node concept="3uibUv" id="6yEjedm8e0F" role="1tU5fm">
        <ref role="3uigEE" to="mqqo:6yEjedm5WkE" resolve="TestingUnificationSolver" />
      </node>
    </node>
    <node concept="312cEg" id="3K_0akS$Mx8" role="jymVt">
      <property role="TrG5h" value="eqSolver" />
      <node concept="3Tm6S6" id="3K_0akS$Mx6" role="1B3o_S" />
      <node concept="3uibUv" id="6yEjedm8vLy" role="1tU5fm">
        <ref role="3uigEE" to="mqqo:6yEjedm8s$A" resolve="TestingEqualsSolver" />
      </node>
    </node>
    <node concept="2tJIrI" id="3K_0akS$LPO" role="jymVt" />
    <node concept="3clFb_" id="3K_0akS$LQk" role="jymVt">
      <property role="TrG5h" value="var" />
      <node concept="37vLTG" id="3K_0akS$LQl" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3K_0akS$LQm" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3K_0akS$LQn" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="3K_0akS$LQo" role="1B3o_S" />
      <node concept="3clFbS" id="3K_0akS$LQp" role="3clF47">
        <node concept="3clFbF" id="3K_0akS$LQq" role="3cqZAp">
          <node concept="10QFUN" id="3K_0akS$LQr" role="3clFbG">
            <node concept="3uibUv" id="3K_0akS$LQx" role="10QFUM">
              <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
            </node>
            <node concept="2YIFZM" id="3gNap3fNlJt" role="10QFUP">
              <ref role="37wK5l" to="oy3s:4TCblo5YI1H" resolve="asVariable" />
              <ref role="1Pybhc" to="oy3s:677NV565N1x" resolve="LogicalUtil" />
              <node concept="2ShNRf" id="3K_0akS$LQt" role="37wK5m">
                <node concept="1pGfFk" id="3K_0akS$LQu" role="2ShVmc">
                  <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.String)" resolve="LogicalImpl" />
                  <node concept="37vLTw" id="3K_0akS$LQv" role="37wK5m">
                    <ref role="3cqZAo" node="3K_0akS$LQl" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3K_0akS$Nwv" role="jymVt" />
    <node concept="3clFb_" id="3K_0akS$NEa" role="jymVt">
      <property role="TrG5h" value="logical" />
      <node concept="3uibUv" id="6yEjedm86Fb" role="3clF45">
        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
        <node concept="3uibUv" id="6yEjedm887F" role="11_B2D">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3K_0akS$NEd" role="1B3o_S" />
      <node concept="3clFbS" id="3K_0akS$NEe" role="3clF47">
        <node concept="3clFbF" id="3K_0akS$NJW" role="3cqZAp">
          <node concept="2ShNRf" id="3K_0akS$NJY" role="3clFbG">
            <node concept="1pGfFk" id="3K_0akS$NJZ" role="2ShVmc">
              <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.String)" resolve="LogicalImpl" />
              <node concept="37vLTw" id="6yEjedm8aw_" role="37wK5m">
                <ref role="3cqZAo" node="3K_0akS$NJK" resolve="name" />
              </node>
              <node concept="3uibUv" id="6yEjedm895I" role="1pMfVU">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3K_0akS$NJK" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3K_0akS$NJJ" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6yEjedm8GlC" role="jymVt" />
    <node concept="3clFb_" id="6yEjedm8Fwq" role="jymVt">
      <property role="TrG5h" value="logical" />
      <node concept="3uibUv" id="6yEjedm8Fwr" role="3clF45">
        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
        <node concept="3uibUv" id="6yEjedm8Fws" role="11_B2D">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6yEjedm8Fwt" role="1B3o_S" />
      <node concept="3clFbS" id="6yEjedm8Fwu" role="3clF47">
        <node concept="3clFbF" id="6yEjedm8Fwv" role="3cqZAp">
          <node concept="2ShNRf" id="6yEjedm8Fww" role="3clFbG">
            <node concept="1pGfFk" id="6yEjedm8Fwx" role="2ShVmc">
              <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(jetbrains.mps.logic.reactor.logical.MetaLogical)" resolve="LogicalImpl" />
              <node concept="10QFUN" id="6yEjedm9wbU" role="37wK5m">
                <node concept="3uibUv" id="6yEjedm9wg_" role="10QFUM">
                  <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                </node>
                <node concept="37vLTw" id="6yEjedm8HxY" role="10QFUP">
                  <ref role="3cqZAo" node="6yEjedm8H7d" resolve="meta" />
                </node>
              </node>
              <node concept="3uibUv" id="6yEjedm8Fwz" role="1pMfVU">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6yEjedm8H7d" role="3clF46">
        <property role="TrG5h" value="meta" />
        <node concept="3uibUv" id="6yEjedm8H9p" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
          <node concept="3uibUv" id="6yEjedm8Hc_" role="11_B2D">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3K_0akS$KOC" role="1B3o_S" />
    <node concept="3s_gsd" id="3K_0akS$KOD" role="3s_ewO">
      <node concept="3s$Bmu" id="3K_0akS$LPz" role="3s_gse">
        <property role="3s$Bm0" value="uni_then_eq" />
        <node concept="3cqZAl" id="3K_0akS$LP_" role="3clF45" />
        <node concept="3Tm1VV" id="3K_0akS$LPB" role="1B3o_S" />
        <node concept="3clFbS" id="3K_0akS$LPC" role="3clF47">
          <node concept="3clFbH" id="3K_0akS$LPL" role="3cqZAp" />
          <node concept="3cpWs8" id="3K_0akS$NRq" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS$NRr" role="3cpWs9">
              <property role="TrG5h" value="x1" />
              <node concept="3uibUv" id="6yEjedm8aLn" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                <node concept="3uibUv" id="6yEjedm8bg7" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
              <node concept="1rXfSq" id="3K_0akS$NRs" role="33vP2m">
                <ref role="37wK5l" node="3K_0akS$NEa" resolve="logical" />
                <node concept="Xl_RD" id="3K_0akS$NRt" role="37wK5m">
                  <property role="Xl_RC" value="X1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3K_0akS$O10" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS$O11" role="3cpWs9">
              <property role="TrG5h" value="y1" />
              <node concept="1rXfSq" id="3K_0akS$O12" role="33vP2m">
                <ref role="37wK5l" node="3K_0akS$NEa" resolve="logical" />
                <node concept="Xl_RD" id="3K_0akS$O13" role="37wK5m">
                  <property role="Xl_RC" value="Y1" />
                </node>
              </node>
              <node concept="3uibUv" id="6yEjedm8btC" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                <node concept="3uibUv" id="6yEjedm8btD" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS_e8b" role="3cqZAp" />
          <node concept="3cpWs8" id="3K_0akS_eya" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS_eyb" role="3cpWs9">
              <property role="TrG5h" value="bar" />
              <node concept="3uibUv" id="3K_0akS_ey9" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3K_0akS_eyc" role="33vP2m">
                <node concept="1oi5UN" id="3K_0akS_eyd" role="1oi0x0">
                  <node concept="1oi5Wm" id="3K_0akS_eye" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3K_0akS_eyf" role="1oi5zu">
                      <property role="1oi5yK" value="Bar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3K_0akS_eOr" role="3cqZAp">
            <node concept="2OqwBi" id="3K_0akS_eZx" role="3clFbG">
              <node concept="37vLTw" id="3K_0akS_eOp" role="2Oq$k0">
                <ref role="3cqZAo" node="3K_0akS$LOk" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="3K_0akS_faY" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="3K_0akS_fco" role="37wK5m">
                  <ref role="3cqZAo" node="3K_0akS$O11" resolve="y1" />
                </node>
                <node concept="37vLTw" id="3K_0akS_ffr" role="37wK5m">
                  <ref role="3cqZAo" node="3K_0akS_eyb" resolve="bar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS_fhs" role="3cqZAp" />
          <node concept="3clFbF" id="3K_0akS$Ni5" role="3cqZAp">
            <node concept="2OqwBi" id="3K_0akS$Nnq" role="3clFbG">
              <node concept="37vLTw" id="3K_0akS$Ni3" role="2Oq$k0">
                <ref role="3cqZAo" node="3K_0akS$LOk" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="3K_0akS$NrP" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="3K_0akS$OfN" role="37wK5m">
                  <ref role="3cqZAo" node="3K_0akS$NRr" resolve="x1" />
                </node>
                <node concept="37vLTw" id="3K_0akS$Oi3" role="37wK5m">
                  <ref role="3cqZAo" node="3K_0akS$O11" resolve="y1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS$RgN" role="3cqZAp" />
          <node concept="3cpWs8" id="3K_0akS$OxK" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS$OxL" role="3cpWs9">
              <property role="TrG5h" value="w1" />
              <node concept="3uibUv" id="6yEjedm8iQc" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                <node concept="3uibUv" id="6yEjedm8jdG" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
              <node concept="1rXfSq" id="3K_0akS$OxM" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm8Fwq" resolve="logical" />
                <node concept="2ShNRf" id="6yEjedm8P1E" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm8P1F" role="2ShVmc">
                    <ref role="37wK5l" to="bj13:~MetaLogical.&lt;init&gt;(java.lang.String,java.lang.Class)" resolve="MetaLogical" />
                    <node concept="Xl_RD" id="6yEjedm9_u$" role="37wK5m">
                      <property role="Xl_RC" value="w1" />
                    </node>
                    <node concept="3VsKOn" id="6yEjedm8P1G" role="37wK5m">
                      <ref role="3VsUkX" to="6exd:5JQSuNswOXL" resolve="TermNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS$OXy" role="3cqZAp" />
          <node concept="3clFbF" id="3K_0akS$OJB" role="3cqZAp">
            <node concept="2OqwBi" id="3K_0akS$OQN" role="3clFbG">
              <node concept="37vLTw" id="5TfjU0xn5oQ" role="2Oq$k0">
                <ref role="3cqZAo" node="3K_0akS$LOk" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="3K_0akS$OWu" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="3K_0akS$PlX" role="37wK5m">
                  <ref role="3cqZAo" node="3K_0akS$OxL" resolve="w1" />
                </node>
                <node concept="37vLTw" id="3K_0akS$RTm" role="37wK5m">
                  <ref role="3cqZAo" node="3K_0akS$NRr" resolve="x1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS$T7c" role="3cqZAp" />
          <node concept="3cpWs8" id="3K_0akS_bIu" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS_bIv" role="3cpWs9">
              <property role="TrG5h" value="p1" />
              <node concept="1rXfSq" id="3K_0akS_bIw" role="33vP2m">
                <ref role="37wK5l" node="3K_0akS$NEa" resolve="logical" />
                <node concept="Xl_RD" id="3K_0akS_bIx" role="37wK5m">
                  <property role="Xl_RC" value="P1" />
                </node>
              </node>
              <node concept="3uibUv" id="6yEjedm8lL4" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                <node concept="3uibUv" id="6yEjedm8lL5" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS$OFn" role="3cqZAp" />
          <node concept="3cpWs8" id="3K_0akS_6Q6" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS_6Q7" role="3cpWs9">
              <property role="TrG5h" value="foo" />
              <node concept="3uibUv" id="3K_0akS_6Q5" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3K_0akS_6Q8" role="33vP2m">
                <node concept="1oi5UN" id="3K_0akS_6Q9" role="1oi0x0">
                  <node concept="1oi5Wm" id="3K_0akS_6Qa" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3K_0akS_6Qb" role="1oi5zu">
                      <property role="1oi5yK" value="Foo" />
                    </node>
                  </node>
                  <node concept="38e3lM" id="428_4iYbyLx" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="3K_0akS_c2N" role="38e3mL">
                      <node concept="1oi5UN" id="3K_0akS_c2Q" role="KCVpo">
                        <node concept="22Ky0T" id="3K_0akS_c2T" role="lGtFl">
                          <node concept="37vLTw" id="3K_0akS_c3k" role="22Ky0K">
                            <ref role="3cqZAo" node="3K_0akS$OxL" resolve="w1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3K_0akS$Wnn" role="3cqZAp">
            <node concept="2OqwBi" id="3K_0akS$W$N" role="3clFbG">
              <node concept="37vLTw" id="3K_0akS$Wnl" role="2Oq$k0">
                <ref role="3cqZAo" node="3K_0akS$LOk" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="3K_0akS$WLA" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="3K_0akS_ccT" role="37wK5m">
                  <ref role="3cqZAo" node="3K_0akS_bIv" resolve="p1" />
                </node>
                <node concept="37vLTw" id="3K_0akS_6Qc" role="37wK5m">
                  <ref role="3cqZAo" node="3K_0akS_6Q7" resolve="foo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS$Wcg" role="3cqZAp" />
          <node concept="3cpWs8" id="6HT7BWBPd0S" role="3cqZAp">
            <node concept="3cpWsn" id="6HT7BWBPd0T" role="3cpWs9">
              <property role="TrG5h" value="value" />
              <node concept="3uibUv" id="6HT7BWBPd0L" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="2OqwBi" id="6HT7BWBPd0U" role="33vP2m">
                <node concept="2OqwBi" id="6HT7BWBPd0V" role="2Oq$k0">
                  <node concept="37vLTw" id="6HT7BWBPd0W" role="2Oq$k0">
                    <ref role="3cqZAo" node="3K_0akS_bIv" resolve="p1" />
                  </node>
                  <node concept="liA8E" id="6HT7BWBPd0X" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                  </node>
                </node>
                <node concept="liA8E" id="6HT7BWBPd0Y" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6HT7BWBPed7" role="3cqZAp">
            <node concept="37vLTI" id="6HT7BWBPeDD" role="3clFbG">
              <node concept="2YIFZM" id="6HT7BWBPf0v" role="37vLTx">
                <ref role="37wK5l" to="6exd:6HT7BWBOXr$" resolve="ground" />
                <ref role="1Pybhc" to="6exd:6HT7BWBOXme" resolve="DataFormUtil" />
                <node concept="37vLTw" id="6HT7BWBPf1b" role="37wK5m">
                  <ref role="3cqZAo" node="6HT7BWBPd0T" resolve="value" />
                </node>
              </node>
              <node concept="37vLTw" id="6HT7BWBPed5" role="37vLTJ">
                <ref role="3cqZAo" node="6HT7BWBPd0T" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3K_0akS_wGT" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS_wGU" role="3cpWs9">
              <property role="TrG5h" value="it" />
              <node concept="3uibUv" id="3K_0akS_wGV" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                <node concept="3qUE_q" id="3K_0akS_wGW" role="11_B2D">
                  <node concept="3uibUv" id="3K_0akS_wGX" role="3qUE_r">
                    <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3K_0akS_wGY" role="33vP2m">
                <node concept="2OqwBi" id="3K_0akS_wGZ" role="2Oq$k0">
                  <node concept="37vLTw" id="6HT7BWBPd0Z" role="2Oq$k0">
                    <ref role="3cqZAo" node="6HT7BWBPd0T" resolve="value" />
                  </node>
                  <node concept="liA8E" id="3K_0akS_wH1" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Term.arguments():java.util.Collection" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="3K_0akS_wH2" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Collection.iterator():java.util.Iterator" resolve="iterator" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3K_0akS_wH3" role="3cqZAp">
            <node concept="2OqwBi" id="3K_0akS_wH4" role="3clFbG">
              <node concept="37vLTw" id="3K_0akS_wH5" role="2Oq$k0">
                <ref role="3cqZAo" node="3K_0akS_wGU" resolve="it" />
              </node>
              <node concept="liA8E" id="3K_0akS_wH6" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5YIOneOTrtn" role="3cqZAp">
            <node concept="3cpWsn" id="5YIOneOTrto" role="3cpWs9">
              <property role="TrG5h" value="next" />
              <node concept="3uibUv" id="5YIOneOTrtp" role="1tU5fm">
                <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
              </node>
              <node concept="2OqwBi" id="5YIOneOTrtq" role="33vP2m">
                <node concept="37vLTw" id="5YIOneOTrtr" role="2Oq$k0">
                  <ref role="3cqZAo" node="3K_0akS_wGU" resolve="it" />
                </node>
                <node concept="liA8E" id="5YIOneOTrts" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3t7_2FgLmhq" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgLmhr" role="3cpWs9">
              <property role="TrG5h" value="list" />
              <node concept="3uibUv" id="3t7_2FgLmhs" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="2OqwBi" id="3t7_2FgLmht" role="33vP2m">
                <node concept="2OqwBi" id="3t7_2FgLmhu" role="2Oq$k0">
                  <node concept="2OqwBi" id="3t7_2FgLmhv" role="2Oq$k0">
                    <node concept="1eOMI4" id="3t7_2FgLmhw" role="2Oq$k0">
                      <node concept="10QFUN" id="3t7_2FgLmhx" role="1eOMHV">
                        <node concept="3uibUv" id="3t7_2FgLmhy" role="10QFUM">
                          <ref role="3uigEE" to="6exd:1msb0mq9ID4" resolve="DataNode" />
                        </node>
                        <node concept="37vLTw" id="3t7_2FgLmhz" role="10QFUP">
                          <ref role="3cqZAo" node="5YIOneOTrto" resolve="next" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3t7_2FgLmh$" role="2OqNvi">
                      <ref role="37wK5l" to="6exd:5JQSuNswjSg" resolve="arguments" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3t7_2FgLmh_" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Collection.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
                <node concept="liA8E" id="3t7_2FgLmhA" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="3t7_2FgLjnc" role="3cqZAp">
            <node concept="2OqwBi" id="3t7_2FgLjnd" role="3tpDZB">
              <node concept="liA8E" id="3t7_2FgLjne" role="2OqNvi">
                <ref role="37wK5l" to="6exd:2QE4RCGndD7" resolve="asRoot" />
              </node>
              <node concept="2OqwBi" id="3t7_2FgLjnf" role="2Oq$k0">
                <node concept="2OqwBi" id="3t7_2FgLjng" role="2Oq$k0">
                  <node concept="1eOMI4" id="3t7_2FgLnID" role="2Oq$k0">
                    <node concept="10QFUN" id="3t7_2FgLnIE" role="1eOMHV">
                      <node concept="3uibUv" id="3t7_2FgLnIF" role="10QFUM">
                        <ref role="3uigEE" to="6exd:3OPtF03lco4" resolve="ListNode" />
                      </node>
                      <node concept="37vLTw" id="3t7_2FgLnIG" role="10QFUP">
                        <ref role="3cqZAo" node="3t7_2FgLmhr" resolve="list" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3t7_2FgLjni" role="2OqNvi">
                    <ref role="37wK5l" to="6exd:5YIOneOT0Zn" resolve="contents" />
                  </node>
                </node>
                <node concept="liA8E" id="3t7_2FgLjnj" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                  <node concept="3cmrfG" id="3t7_2FgLjnk" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3t7_2FgLjnl" role="3tpDZA">
              <ref role="3cqZAo" node="3K_0akS_eyb" resolve="bar" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3K_0akS_pCv" role="3s_gse">
        <property role="3s$Bm0" value="eq_then_uni" />
        <node concept="3cqZAl" id="3K_0akS_pCw" role="3clF45" />
        <node concept="3Tm1VV" id="3K_0akS_pCx" role="1B3o_S" />
        <node concept="3clFbS" id="3K_0akS_pCy" role="3clF47">
          <node concept="3clFbH" id="3K_0akS_pCz" role="3cqZAp" />
          <node concept="3cpWs8" id="3K_0akS_pC$" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS_pC_" role="3cpWs9">
              <property role="TrG5h" value="x1" />
              <node concept="1rXfSq" id="3K_0akS_pCB" role="33vP2m">
                <ref role="37wK5l" node="3K_0akS$NEa" resolve="logical" />
                <node concept="Xl_RD" id="3K_0akS_pCC" role="37wK5m">
                  <property role="Xl_RC" value="X1" />
                </node>
              </node>
              <node concept="3uibUv" id="6yEjedm8o1P" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                <node concept="3uibUv" id="6yEjedm8o1Q" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3K_0akS_pCD" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS_pCE" role="3cpWs9">
              <property role="TrG5h" value="y1" />
              <node concept="1rXfSq" id="3K_0akS_pCG" role="33vP2m">
                <ref role="37wK5l" node="3K_0akS$NEa" resolve="logical" />
                <node concept="Xl_RD" id="3K_0akS_pCH" role="37wK5m">
                  <property role="Xl_RC" value="Y1" />
                </node>
              </node>
              <node concept="3uibUv" id="6yEjedm8oFj" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                <node concept="3uibUv" id="6yEjedm8oFk" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS_pCI" role="3cqZAp" />
          <node concept="3cpWs8" id="3K_0akS_pCJ" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS_pCK" role="3cpWs9">
              <property role="TrG5h" value="bar" />
              <node concept="3uibUv" id="3K_0akS_pCL" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3K_0akS_pCM" role="33vP2m">
                <node concept="1oi5UN" id="3K_0akS_pCN" role="1oi0x0">
                  <node concept="1oi5Wm" id="3K_0akS_pCO" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3K_0akS_pCP" role="1oi5zu">
                      <property role="1oi5yK" value="Bar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3K_0akS_pCQ" role="3cqZAp">
            <node concept="2OqwBi" id="3K_0akS_pCR" role="3clFbG">
              <node concept="37vLTw" id="3K_0akS_pCS" role="2Oq$k0">
                <ref role="3cqZAo" node="3K_0akS$LOk" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="3K_0akS_pCT" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="3K_0akS_pCU" role="37wK5m">
                  <ref role="3cqZAo" node="3K_0akS_pCE" resolve="y1" />
                </node>
                <node concept="37vLTw" id="3K_0akS_pCV" role="37wK5m">
                  <ref role="3cqZAo" node="3K_0akS_pCK" resolve="bar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3K_0akS_pD4" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS_pD5" role="3cpWs9">
              <property role="TrG5h" value="w1" />
              <node concept="1rXfSq" id="3K_0akS_pD7" role="33vP2m">
                <ref role="37wK5l" node="6yEjedm8Fwq" resolve="logical" />
                <node concept="2ShNRf" id="6yEjedm8NC6" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm8NZD" role="2ShVmc">
                    <ref role="37wK5l" to="bj13:~MetaLogical.&lt;init&gt;(java.lang.String,java.lang.Class)" resolve="MetaLogical" />
                    <node concept="Xl_RD" id="6yEjedm9CL0" role="37wK5m">
                      <property role="Xl_RC" value="w1" />
                    </node>
                    <node concept="3VsKOn" id="6yEjedm8Oi0" role="37wK5m">
                      <ref role="3VsUkX" to="6exd:5JQSuNswOXL" resolve="TermNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="6yEjedm8$6V" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                <node concept="3uibUv" id="6yEjedm8$6W" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS_pD9" role="3cqZAp" />
          <node concept="3clFbF" id="3K_0akS_pDa" role="3cqZAp">
            <node concept="2OqwBi" id="3K_0akS_pDb" role="3clFbG">
              <node concept="37vLTw" id="5TfjU0xmZR3" role="2Oq$k0">
                <ref role="3cqZAo" node="3K_0akS$LOk" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="3K_0akS_pDd" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="3K_0akS_pDe" role="37wK5m">
                  <ref role="3cqZAo" node="3K_0akS_pD5" resolve="w1" />
                </node>
                <node concept="37vLTw" id="3K_0akS_pDf" role="37wK5m">
                  <ref role="3cqZAo" node="3K_0akS_pC_" resolve="x1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS_pDg" role="3cqZAp" />
          <node concept="3cpWs8" id="3K_0akS_pDh" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS_pDi" role="3cpWs9">
              <property role="TrG5h" value="p1" />
              <node concept="1rXfSq" id="3K_0akS_pDk" role="33vP2m">
                <ref role="37wK5l" node="3K_0akS$NEa" resolve="logical" />
                <node concept="Xl_RD" id="3K_0akS_pDl" role="37wK5m">
                  <property role="Xl_RC" value="P1" />
                </node>
              </node>
              <node concept="3uibUv" id="6yEjedm8pey" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                <node concept="3uibUv" id="6yEjedm8pez" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS_pDm" role="3cqZAp" />
          <node concept="3cpWs8" id="3K_0akS_pDn" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS_pDo" role="3cpWs9">
              <property role="TrG5h" value="foo" />
              <node concept="3uibUv" id="3K_0akS_pDp" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3K_0akS_pDq" role="33vP2m">
                <node concept="1oi5UN" id="3K_0akS_pDr" role="1oi0x0">
                  <node concept="1oi5Wm" id="3K_0akS_pDs" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3K_0akS_pDt" role="1oi5zu">
                      <property role="1oi5yK" value="Foo" />
                    </node>
                  </node>
                  <node concept="38e3lM" id="428_4iYbyLd" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="3K_0akS_pDv" role="38e3mL">
                      <node concept="1oi5UN" id="3K_0akS_pDw" role="KCVpo">
                        <node concept="22Ky0T" id="3K_0akS_pDx" role="lGtFl">
                          <node concept="37vLTw" id="3K_0akS_pDy" role="22Ky0K">
                            <ref role="3cqZAo" node="3K_0akS_pD5" resolve="w1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS_pDz" role="3cqZAp" />
          <node concept="3clFbF" id="3K_0akS_pD$" role="3cqZAp">
            <node concept="2OqwBi" id="3K_0akS_pD_" role="3clFbG">
              <node concept="37vLTw" id="3K_0akS_pDA" role="2Oq$k0">
                <ref role="3cqZAo" node="3K_0akS$LOk" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="3K_0akS_pDB" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="3K_0akS_pDC" role="37wK5m">
                  <ref role="3cqZAo" node="3K_0akS_pDi" resolve="p1" />
                </node>
                <node concept="37vLTw" id="3K_0akS_pDD" role="37wK5m">
                  <ref role="3cqZAo" node="3K_0akS_pDo" resolve="foo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS_pDE" role="3cqZAp" />
          <node concept="3clFbF" id="3K_0akS_pCX" role="3cqZAp">
            <node concept="2OqwBi" id="3K_0akS_pCY" role="3clFbG">
              <node concept="37vLTw" id="3K_0akS_pCZ" role="2Oq$k0">
                <ref role="3cqZAo" node="3K_0akS$LOk" resolve="unificationSolver" />
              </node>
              <node concept="liA8E" id="3K_0akS_pD0" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm623c" resolve="tellUni" />
                <node concept="37vLTw" id="3K_0akS_pD1" role="37wK5m">
                  <ref role="3cqZAo" node="3K_0akS_pC_" resolve="x1" />
                </node>
                <node concept="37vLTw" id="3K_0akS_pD2" role="37wK5m">
                  <ref role="3cqZAo" node="3K_0akS_pCE" resolve="y1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS_pD3" role="3cqZAp" />
          <node concept="3cpWs8" id="6HT7BWBPhwL" role="3cqZAp">
            <node concept="3cpWsn" id="6HT7BWBPhwM" role="3cpWs9">
              <property role="TrG5h" value="value" />
              <node concept="3uibUv" id="6HT7BWBPhwJ" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="2OqwBi" id="6HT7BWBPhwN" role="33vP2m">
                <node concept="2OqwBi" id="6HT7BWBPhwO" role="2Oq$k0">
                  <node concept="37vLTw" id="6HT7BWBPhwP" role="2Oq$k0">
                    <ref role="3cqZAo" node="3K_0akS_pDi" resolve="p1" />
                  </node>
                  <node concept="liA8E" id="6HT7BWBPhwQ" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                  </node>
                </node>
                <node concept="liA8E" id="6HT7BWBPhwR" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6HT7BWBPidq" role="3cqZAp">
            <node concept="37vLTI" id="6HT7BWBPiGd" role="3clFbG">
              <node concept="2YIFZM" id="6HT7BWBPj3B" role="37vLTx">
                <ref role="37wK5l" to="6exd:6HT7BWBOXr$" resolve="ground" />
                <ref role="1Pybhc" to="6exd:6HT7BWBOXme" resolve="DataFormUtil" />
                <node concept="37vLTw" id="6HT7BWBPj4j" role="37wK5m">
                  <ref role="3cqZAo" node="6HT7BWBPhwM" resolve="value" />
                </node>
              </node>
              <node concept="37vLTw" id="6HT7BWBPido" role="37vLTJ">
                <ref role="3cqZAo" node="6HT7BWBPhwM" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3K_0akS_pDN" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS_pDO" role="3cpWs9">
              <property role="TrG5h" value="it" />
              <node concept="3uibUv" id="3K_0akS_pDP" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                <node concept="3qUE_q" id="3K_0akS_pDQ" role="11_B2D">
                  <node concept="3uibUv" id="3K_0akS_pDR" role="3qUE_r">
                    <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3K_0akS_pDS" role="33vP2m">
                <node concept="2OqwBi" id="3K_0akS_pDT" role="2Oq$k0">
                  <node concept="37vLTw" id="6HT7BWBPhwS" role="2Oq$k0">
                    <ref role="3cqZAo" node="6HT7BWBPhwM" resolve="value" />
                  </node>
                  <node concept="liA8E" id="3K_0akS_pDV" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Term.arguments():java.util.Collection" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="3K_0akS_pDW" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Collection.iterator():java.util.Iterator" resolve="iterator" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3K_0akS_pDX" role="3cqZAp">
            <node concept="2OqwBi" id="3K_0akS_pDY" role="3clFbG">
              <node concept="37vLTw" id="3K_0akS_pDZ" role="2Oq$k0">
                <ref role="3cqZAo" node="3K_0akS_pDO" resolve="it" />
              </node>
              <node concept="liA8E" id="3K_0akS_pE0" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5YIOneOTmzM" role="3cqZAp">
            <node concept="3cpWsn" id="5YIOneOTmzN" role="3cpWs9">
              <property role="TrG5h" value="next" />
              <node concept="3uibUv" id="5YIOneOTmzO" role="1tU5fm">
                <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
              </node>
              <node concept="2OqwBi" id="5YIOneOTmzP" role="33vP2m">
                <node concept="37vLTw" id="5YIOneOTmzQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3K_0akS_pDO" resolve="it" />
                </node>
                <node concept="liA8E" id="5YIOneOTmzR" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3t7_2FgLnZz" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgLnZ$" role="3cpWs9">
              <property role="TrG5h" value="list" />
              <node concept="3uibUv" id="3t7_2FgLnZ_" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="2OqwBi" id="3t7_2FgLnZA" role="33vP2m">
                <node concept="2OqwBi" id="3t7_2FgLnZB" role="2Oq$k0">
                  <node concept="2OqwBi" id="3t7_2FgLnZC" role="2Oq$k0">
                    <node concept="1eOMI4" id="3t7_2FgLnZD" role="2Oq$k0">
                      <node concept="10QFUN" id="3t7_2FgLnZE" role="1eOMHV">
                        <node concept="3uibUv" id="3t7_2FgLnZF" role="10QFUM">
                          <ref role="3uigEE" to="6exd:1msb0mq9ID4" resolve="DataNode" />
                        </node>
                        <node concept="37vLTw" id="3t7_2FgLnZG" role="10QFUP">
                          <ref role="3cqZAo" node="5YIOneOTmzN" resolve="next" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3t7_2FgLnZH" role="2OqNvi">
                      <ref role="37wK5l" to="6exd:5JQSuNswjSg" resolve="arguments" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3t7_2FgLnZI" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Collection.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
                <node concept="liA8E" id="3t7_2FgLnZJ" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="3t7_2FgLav2" role="3cqZAp">
            <node concept="2OqwBi" id="3t7_2FgLav3" role="3tpDZB">
              <node concept="liA8E" id="3t7_2FgLav4" role="2OqNvi">
                <ref role="37wK5l" to="6exd:2QE4RCGndD7" resolve="asRoot" />
              </node>
              <node concept="2OqwBi" id="3t7_2FgLgpZ" role="2Oq$k0">
                <node concept="2OqwBi" id="3t7_2FgLgiw" role="2Oq$k0">
                  <node concept="1eOMI4" id="3t7_2FgLoIi" role="2Oq$k0">
                    <node concept="10QFUN" id="3t7_2FgLoIj" role="1eOMHV">
                      <node concept="3uibUv" id="3t7_2FgLoIk" role="10QFUM">
                        <ref role="3uigEE" to="6exd:3OPtF03lco4" resolve="ListNode" />
                      </node>
                      <node concept="37vLTw" id="3t7_2FgLoIl" role="10QFUP">
                        <ref role="3cqZAo" node="3t7_2FgLnZ$" resolve="list" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3t7_2FgLgmc" role="2OqNvi">
                    <ref role="37wK5l" to="6exd:5YIOneOT0Zn" resolve="contents" />
                  </node>
                </node>
                <node concept="liA8E" id="3t7_2FgLgwS" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                  <node concept="3cmrfG" id="3t7_2FgLg_$" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3t7_2FgLavf" role="3tpDZA">
              <ref role="3cqZAo" node="3K_0akS_pCK" resolve="bar" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KhYhu" id="3K_0akS$LUq" role="1KhZu4">
      <node concept="3clFbS" id="3K_0akS$LUr" role="2VODD2">
        <node concept="3cpWs8" id="6yEjedm8ekr" role="3cqZAp">
          <node concept="3cpWsn" id="6yEjedm8eks" role="3cpWs9">
            <property role="TrG5h" value="symbols" />
            <node concept="3uibUv" id="6yEjedm8ekt" role="1tU5fm">
              <ref role="3uigEE" to="cxk7:3F6vMxqo13Y" resolve="DefaultSessionSolver" />
            </node>
            <node concept="2ShNRf" id="6yEjedm8eku" role="33vP2m">
              <node concept="1pGfFk" id="6yEjedm8ekv" role="2ShVmc">
                <ref role="37wK5l" to="cxk7:23c4kVtavpK" resolve="DefaultSessionSolver" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2tcGHBEi$_e" role="3cqZAp">
          <node concept="3SKdUq" id="2tcGHBEi$_g" role="3SKWNk">
            <property role="3SKdUp" value="TODO: why create new solvers?" />
          </node>
        </node>
        <node concept="3clFbF" id="2tcGHBEi$gx" role="3cqZAp">
          <node concept="2OqwBi" id="2tcGHBEi$kw" role="3clFbG">
            <node concept="37vLTw" id="6yEjedm8eMu" role="2Oq$k0">
              <ref role="3cqZAo" node="6yEjedm8eks" resolve="symbols" />
            </node>
            <node concept="liA8E" id="2tcGHBEi$nn" role="2OqNvi">
              <ref role="37wK5l" to="w7la:~SessionSolver.init(jetbrains.mps.logic.reactor.program.PredicateSymbol...):void" resolve="init" />
              <node concept="10M0yZ" id="2tcGHBEe$iM" role="37wK5m">
                <ref role="3cqZAo" to="cxk7:5uFPQ7C23RV" resolve="EQ_SYM" />
                <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
              </node>
              <node concept="10M0yZ" id="2tcGHBEe$iN" role="37wK5m">
                <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3K_0akS$LUA" role="3cqZAp">
          <node concept="37vLTI" id="3K_0akS$LUB" role="3clFbG">
            <node concept="37vLTw" id="3K_0akS$LUF" role="37vLTJ">
              <ref role="3cqZAo" node="3K_0akS$LOk" resolve="unificationSolver" />
            </node>
            <node concept="2ShNRf" id="6yEjedm8fRI" role="37vLTx">
              <node concept="HV5vD" id="3gNap3fFfO1" role="2ShVmc">
                <ref role="HV5vE" to="mqqo:6yEjedm5WkE" resolve="TestingUnificationSolver" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3K_0akS$Mxh" role="3cqZAp">
          <node concept="37vLTI" id="3K_0akS$Mxi" role="3clFbG">
            <node concept="2ShNRf" id="3K_0akS$Mxm" role="37vLTx">
              <node concept="HV5vD" id="5jCHAT1JqUG" role="2ShVmc">
                <ref role="HV5vE" to="mqqo:6yEjedm8s$A" resolve="TestingEqualsSolver" />
              </node>
            </node>
            <node concept="37vLTw" id="3K_0akS$MRU" role="37vLTJ">
              <ref role="3cqZAo" node="3K_0akS$Mx8" resolve="eqSolver" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3s_ewN" id="6N2bvv_uxy8">
    <property role="3s_ewP" value="AskEqSolver" />
    <node concept="2tJIrI" id="390NiL15h2v" role="jymVt" />
    <node concept="312cEg" id="6N2bvv_uxyb" role="jymVt">
      <property role="TrG5h" value="eqSolver" />
      <node concept="3Tm6S6" id="6N2bvv_uxyc" role="1B3o_S" />
      <node concept="3uibUv" id="6N2bvv_uxyd" role="1tU5fm">
        <ref role="3uigEE" to="mqqo:6yEjedm8s$A" resolve="TestingEqualsSolver" />
      </node>
    </node>
    <node concept="2tJIrI" id="390NiL15gXv" role="jymVt" />
    <node concept="3clFb_" id="6N2bvv_uPxw" role="jymVt">
      <property role="TrG5h" value="logical" />
      <node concept="3uibUv" id="6N2bvv_uPxX" role="3clF45">
        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
        <node concept="3uibUv" id="6N2bvv_uPy5" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tmbuc" id="390NiL14yA4" role="1B3o_S" />
      <node concept="3clFbS" id="6N2bvv_uPx$" role="3clF47">
        <node concept="3clFbF" id="6N2bvv_uPyw" role="3cqZAp">
          <node concept="2ShNRf" id="6N2bvv_uPyu" role="3clFbG">
            <node concept="1pGfFk" id="6N2bvv_uPTa" role="2ShVmc">
              <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.String)" resolve="LogicalImpl" />
              <node concept="37vLTw" id="6N2bvv_uPTt" role="37wK5m">
                <ref role="3cqZAo" node="6N2bvv_uPya" resolve="name" />
              </node>
              <node concept="3uibUv" id="6N2bvv_uQ4W" role="1pMfVU">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6N2bvv_uPya" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="6N2bvv_uPy9" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="390NiL15h05" role="jymVt" />
    <node concept="3clFb_" id="390NiL14kVE" role="jymVt">
      <property role="TrG5h" value="termvar" />
      <node concept="37vLTG" id="390NiL14kVF" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="390NiL14kVG" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="390NiL14kVH" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tmbuc" id="390NiL14DQq" role="1B3o_S" />
      <node concept="3clFbS" id="390NiL14kVJ" role="3clF47">
        <node concept="3clFbF" id="390NiL14kVK" role="3cqZAp">
          <node concept="2YIFZM" id="390NiL14kVL" role="3clFbG">
            <ref role="37wK5l" to="oy3s:4TCblo5YI1H" resolve="asVariable" />
            <ref role="1Pybhc" to="oy3s:677NV565N1x" resolve="LogicalUtil" />
            <node concept="2ShNRf" id="390NiL14kVM" role="37wK5m">
              <node concept="1pGfFk" id="390NiL14kVN" role="2ShVmc">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(jetbrains.mps.logic.reactor.logical.MetaLogical)" resolve="LogicalImpl" />
                <node concept="2ShNRf" id="390NiL14kVO" role="37wK5m">
                  <node concept="1pGfFk" id="390NiL14kVP" role="2ShVmc">
                    <ref role="37wK5l" to="bj13:~MetaLogical.&lt;init&gt;(java.lang.String,java.lang.Class)" resolve="MetaLogical" />
                    <node concept="37vLTw" id="390NiL14kVQ" role="37wK5m">
                      <ref role="3cqZAo" node="390NiL14kVF" resolve="name" />
                    </node>
                    <node concept="3VsKOn" id="390NiL14kVR" role="37wK5m">
                      <ref role="3VsUkX" to="6exd:5JQSuNswOXL" resolve="TermNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="390NiL15T2u" role="jymVt" />
    <node concept="3clFb_" id="390NiL15T3$" role="jymVt">
      <property role="TrG5h" value="asTermLogical" />
      <node concept="3uibUv" id="390NiL15T4j" role="3clF45">
        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
        <node concept="3uibUv" id="390NiL15Ye$" role="11_B2D">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="3Tmbuc" id="390NiL15T4f" role="1B3o_S" />
      <node concept="3clFbS" id="390NiL15T3C" role="3clF47">
        <node concept="3clFbF" id="390NiL15T5y" role="3cqZAp">
          <node concept="10QFUN" id="390NiL162Ky" role="3clFbG">
            <node concept="2OqwBi" id="390NiL162Kr" role="10QFUP">
              <node concept="1eOMI4" id="390NiL162Ks" role="2Oq$k0">
                <node concept="10QFUN" id="390NiL162Kt" role="1eOMHV">
                  <node concept="3uibUv" id="390NiL162Ku" role="10QFUM">
                    <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalDataForm" />
                    <node concept="3uibUv" id="390NiL162Kv" role="11_B2D">
                      <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="390NiL162Kw" role="10QFUP">
                    <ref role="3cqZAo" node="390NiL15T4p" resolve="v" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="390NiL162Kx" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4TCblo5MS1o" resolve="logical" />
              </node>
            </node>
            <node concept="3uibUv" id="390NiL162LH" role="10QFUM">
              <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
              <node concept="3uibUv" id="390NiL162LO" role="11_B2D">
                <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="390NiL15T4p" role="3clF46">
        <property role="TrG5h" value="v" />
        <node concept="3uibUv" id="390NiL15T4o" role="1tU5fm">
          <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6N2bvv_uxy9" role="1B3o_S" />
    <node concept="3s_gsd" id="6N2bvv_uxya" role="3s_ewO">
      <node concept="3s$Bmu" id="6N2bvv_uwro" role="3s_gse">
        <property role="3s$Bm0" value="eq_var_var" />
        <node concept="3cqZAl" id="6N2bvv_uwrp" role="3clF45" />
        <node concept="3Tm1VV" id="6N2bvv_uwrq" role="1B3o_S" />
        <node concept="3clFbS" id="6N2bvv_uwrr" role="3clF47">
          <node concept="3clFbH" id="6N2bvv_uwvU" role="3cqZAp" />
          <node concept="3cpWs8" id="6N2bvv_uTT2" role="3cqZAp">
            <node concept="3cpWsn" id="6N2bvv_uTT3" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="6N2bvv_uTSY" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="3uibUv" id="6N2bvv_uTT1" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="1rXfSq" id="6N2bvv_uTT4" role="33vP2m">
                <ref role="37wK5l" node="6N2bvv_uPxw" resolve="logical" />
                <node concept="Xl_RD" id="6N2bvv_uTT5" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6N2bvv_uTTL" role="3cqZAp">
            <node concept="3cpWsn" id="6N2bvv_uTTM" role="3cpWs9">
              <property role="TrG5h" value="y" />
              <node concept="3uibUv" id="6N2bvv_uTTG" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="3uibUv" id="6N2bvv_uTTJ" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="1rXfSq" id="6N2bvv_uTTN" role="33vP2m">
                <ref role="37wK5l" node="6N2bvv_uPxw" resolve="logical" />
                <node concept="Xl_RD" id="6N2bvv_uTTO" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6N2bvv_uWqI" role="3cqZAp">
            <node concept="3cpWsn" id="6N2bvv_uWqJ" role="3cpWs9">
              <property role="TrG5h" value="z" />
              <node concept="3uibUv" id="6N2bvv_uWqK" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="3uibUv" id="6N2bvv_uWqL" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="1rXfSq" id="6N2bvv_uWqM" role="33vP2m">
                <ref role="37wK5l" node="6N2bvv_uPxw" resolve="logical" />
                <node concept="Xl_RD" id="6N2bvv_uWqN" role="37wK5m">
                  <property role="Xl_RC" value="Z" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6N2bvv_uTUc" role="3cqZAp" />
          <node concept="3vwNmj" id="390NiL15C86" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL15CLo" role="3vwVQn">
              <node concept="37vLTw" id="390NiL15C9F" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL15EVa" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL15EVt" role="37wK5m">
                  <ref role="3cqZAo" node="6N2bvv_uTT3" resolve="x" />
                </node>
                <node concept="37vLTw" id="390NiL15F5R" role="37wK5m">
                  <ref role="3cqZAo" node="6N2bvv_uTT3" resolve="x" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL15C6_" role="3cqZAp" />
          <node concept="3vFxKo" id="5TfjU0xmvaJ" role="3cqZAp">
            <node concept="2OqwBi" id="5TfjU0xmvqb" role="3vFALc">
              <node concept="37vLTw" id="5TfjU0xmvqc" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="5TfjU0xmvqd" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="5TfjU0xmvqe" role="37wK5m">
                  <ref role="3cqZAo" node="6N2bvv_uTT3" resolve="x" />
                </node>
                <node concept="37vLTw" id="5TfjU0xmvqf" role="37wK5m">
                  <ref role="3cqZAo" node="6N2bvv_uTTM" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6N2bvv_uyHR" role="3cqZAp" />
          <node concept="3clFbF" id="6N2bvv_uTVT" role="3cqZAp">
            <node concept="2OqwBi" id="6N2bvv_uU3u" role="3clFbG">
              <node concept="37vLTw" id="6N2bvv_uTVR" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uTT3" resolve="x" />
              </node>
              <node concept="liA8E" id="6N2bvv_uVfr" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
                <node concept="Xl_RD" id="6N2bvv_uVfI" role="37wK5m">
                  <property role="Xl_RC" value="foo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="5TfjU0xmtWO" role="3cqZAp">
            <node concept="2OqwBi" id="5TfjU0xmucf" role="3vFALc">
              <node concept="37vLTw" id="5TfjU0xmucg" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="5TfjU0xmuch" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="5TfjU0xmuci" role="37wK5m">
                  <ref role="3cqZAo" node="6N2bvv_uTT3" resolve="x" />
                </node>
                <node concept="37vLTw" id="5TfjU0xmucj" role="37wK5m">
                  <ref role="3cqZAo" node="6N2bvv_uTTM" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="390NiL17hPw" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL17hPx" role="3vFALc">
              <node concept="37vLTw" id="390NiL17hPy" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL17hPz" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL17hTa" role="37wK5m">
                  <ref role="3cqZAo" node="6N2bvv_uTTM" resolve="y" />
                </node>
                <node concept="37vLTw" id="390NiL17hVB" role="37wK5m">
                  <ref role="3cqZAo" node="6N2bvv_uTT3" resolve="x" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5TfjU0xmuqH" role="3cqZAp" />
          <node concept="3clFbF" id="6N2bvv_uVkj" role="3cqZAp">
            <node concept="2OqwBi" id="6N2bvv_uVyd" role="3clFbG">
              <node concept="37vLTw" id="6N2bvv_uVkh" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uTTM" resolve="y" />
              </node>
              <node concept="liA8E" id="6N2bvv_uWmD" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
                <node concept="Xl_RD" id="6N2bvv_uWmW" role="37wK5m">
                  <property role="Xl_RC" value="foo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="6N2bvv_uWo$" role="3cqZAp">
            <node concept="2OqwBi" id="6N2bvv_uWo_" role="3vwVQn">
              <node concept="37vLTw" id="6N2bvv_uWoA" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="6N2bvv_uWoB" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="6N2bvv_uWoC" role="37wK5m">
                  <ref role="3cqZAo" node="6N2bvv_uTT3" resolve="x" />
                </node>
                <node concept="37vLTw" id="6N2bvv_uWoD" role="37wK5m">
                  <ref role="3cqZAo" node="6N2bvv_uTTM" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6N2bvv_uWsI" role="3cqZAp" />
          <node concept="3clFbF" id="6N2bvv_uWrG" role="3cqZAp">
            <node concept="2OqwBi" id="6N2bvv_uWrH" role="3clFbG">
              <node concept="37vLTw" id="6N2bvv_uWuF" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uWqJ" resolve="z" />
              </node>
              <node concept="liA8E" id="6N2bvv_uWrJ" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
                <node concept="Xl_RD" id="6N2bvv_uWrK" role="37wK5m">
                  <property role="Xl_RC" value="bar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="6N2bvv_uWyG" role="3cqZAp">
            <node concept="2OqwBi" id="6N2bvv_uWzK" role="3vFALc">
              <node concept="37vLTw" id="6N2bvv_uWzL" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="6N2bvv_uWzM" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="6N2bvv_uWzN" role="37wK5m">
                  <ref role="3cqZAo" node="6N2bvv_uTT3" resolve="x" />
                </node>
                <node concept="37vLTw" id="6N2bvv_uWzO" role="37wK5m">
                  <ref role="3cqZAo" node="6N2bvv_uWqJ" resolve="z" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="390NiL17iar" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL17ias" role="3vFALc">
              <node concept="37vLTw" id="390NiL17iat" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL17iau" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL17ieb" role="37wK5m">
                  <ref role="3cqZAo" node="6N2bvv_uWqJ" resolve="z" />
                </node>
                <node concept="37vLTw" id="390NiL17igC" role="37wK5m">
                  <ref role="3cqZAo" node="6N2bvv_uTT3" resolve="x" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="390NiL14e7y" role="3s_gse">
        <property role="3s$Bm0" value="empty" />
        <node concept="3cqZAl" id="390NiL14e7z" role="3clF45" />
        <node concept="3Tm1VV" id="390NiL14e7$" role="1B3o_S" />
        <node concept="3clFbS" id="390NiL14e7_" role="3clF47">
          <node concept="3clFbH" id="390NiL14e7A" role="3cqZAp" />
          <node concept="3cpWs8" id="390NiL14e7B" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14e7C" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="390NiL14e7D" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL14e7E" role="33vP2m">
                <node concept="1oi5UN" id="390NiL14e7F" role="1oi0x0" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL14e7G" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14e7H" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="390NiL14e7I" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL14e7J" role="33vP2m">
                <node concept="1oi5UN" id="390NiL14e7K" role="1oi0x0" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL14e7L" role="3cqZAp" />
          <node concept="3vwNmj" id="390NiL14e7M" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL14e_d" role="3vwVQn">
              <node concept="37vLTw" id="390NiL14e9Q" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL14gB3" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL14gBm" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14e7C" resolve="a" />
                </node>
                <node concept="37vLTw" id="390NiL14gR3" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14e7H" resolve="b" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="390NiL14kY1" role="3s_gse">
        <property role="3s$Bm0" value="value" />
        <node concept="3cqZAl" id="390NiL14kY2" role="3clF45" />
        <node concept="3Tm1VV" id="390NiL14kY3" role="1B3o_S" />
        <node concept="3clFbS" id="390NiL14kY4" role="3clF47">
          <node concept="3clFbH" id="390NiL14kY5" role="3cqZAp" />
          <node concept="3cpWs8" id="390NiL14kY6" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14kY7" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="390NiL14kY8" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL14kY9" role="33vP2m">
                <node concept="1oi5UN" id="390NiL14kYa" role="1oi0x0">
                  <node concept="1oi5Wm" id="390NiL14kYb" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL14kYc" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL14kYd" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14kYe" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="390NiL14kYf" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL14kYg" role="33vP2m">
                <node concept="1oi5UN" id="390NiL14kYh" role="1oi0x0">
                  <node concept="1oi5Wm" id="390NiL14kYi" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL14kYj" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL14kYk" role="3cqZAp" />
          <node concept="3vwNmj" id="390NiL14kYl" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL14l_J" role="3vwVQn">
              <node concept="37vLTw" id="390NiL14l0U" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL14nB_" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL14nBV" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14kY7" resolve="a" />
                </node>
                <node concept="37vLTw" id="390NiL14nMf" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14kYe" resolve="b" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="390NiL14rcv" role="3s_gse">
        <property role="3s$Bm0" value="var_var" />
        <node concept="3cqZAl" id="390NiL14rcw" role="3clF45" />
        <node concept="3Tm1VV" id="390NiL14rcx" role="1B3o_S" />
        <node concept="3clFbS" id="390NiL14rcy" role="3clF47">
          <node concept="3cpWs8" id="390NiL14uZ_" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14uZA" role="3cpWs9">
              <property role="TrG5h" value="X" />
              <node concept="3uibUv" id="390NiL14uZz" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="390NiL14uZB" role="33vP2m">
                <ref role="37wK5l" node="390NiL14kVE" resolve="termvar" />
                <node concept="Xl_RD" id="390NiL14uZC" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL14v0u" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14v0v" role="3cpWs9">
              <property role="TrG5h" value="Y" />
              <node concept="3uibUv" id="390NiL14v0w" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="390NiL14v0x" role="33vP2m">
                <ref role="37wK5l" node="390NiL14kVE" resolve="termvar" />
                <node concept="Xl_RD" id="390NiL14v0y" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL17m$r" role="3cqZAp" />
          <node concept="3cpWs8" id="390NiL14rc$" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14rc_" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="390NiL14rcA" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL14rcB" role="33vP2m">
                <node concept="1oi5UN" id="390NiL14rcC" role="1oi0x0">
                  <node concept="1oi5Wm" id="390NiL14rcD" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL14rcE" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                  <node concept="1oi5ST" id="390NiL14rf5" role="1ojpOf">
                    <property role="TrG5h" value="chd" />
                    <node concept="1oi5UN" id="390NiL14rf9" role="1oi5TL">
                      <node concept="22Ky0T" id="390NiL14rfc" role="lGtFl">
                        <node concept="37vLTw" id="390NiL14uZD" role="22Ky0K">
                          <ref role="3cqZAo" node="390NiL14uZA" resolve="X" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL14rcF" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14rcG" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="390NiL14rcH" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL14rcI" role="33vP2m">
                <node concept="1oi5UN" id="390NiL14rcJ" role="1oi0x0">
                  <node concept="1oi5ST" id="390NiL14ryG" role="1ojpOf">
                    <property role="TrG5h" value="chd" />
                    <node concept="1oi5UN" id="390NiL14ryH" role="1oi5TL">
                      <node concept="22Ky0T" id="390NiL14ryI" role="lGtFl">
                        <node concept="37vLTw" id="390NiL14v1E" role="22Ky0K">
                          <ref role="3cqZAo" node="390NiL14v0v" resolve="Y" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL14rcK" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL14rcL" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL14uYw" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14uYx" role="3cpWs9">
              <property role="TrG5h" value="c" />
              <node concept="3uibUv" id="390NiL14uYy" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL14uYz" role="33vP2m">
                <node concept="1oi5UN" id="390NiL14uY$" role="1oi0x0">
                  <node concept="1oi5ST" id="390NiL14uY_" role="1ojpOf">
                    <property role="TrG5h" value="chd" />
                    <node concept="1oi5UN" id="390NiL14uYA" role="1oi5TL">
                      <node concept="22Ky0T" id="390NiL14uYB" role="lGtFl">
                        <node concept="37vLTw" id="390NiL14uZF" role="22Ky0K">
                          <ref role="3cqZAo" node="390NiL14uZA" resolve="X" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL14uYE" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL14uYF" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL14rcM" role="3cqZAp" />
          <node concept="3vFxKo" id="390NiL14v5D" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL14v6z" role="3vFALc">
              <node concept="37vLTw" id="390NiL14v6$" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL14v6_" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL14v6A" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14rc_" resolve="a" />
                </node>
                <node concept="37vLTw" id="390NiL14v9e" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14rcG" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="390NiL17mBc" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL17mBd" role="3vFALc">
              <node concept="37vLTw" id="390NiL17mBe" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL17mBf" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL17mBh" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14rcG" resolve="b" />
                </node>
                <node concept="37vLTw" id="390NiL17mBg" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14rc_" resolve="a" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="390NiL14rcN" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL14rcO" role="3vwVQn">
              <node concept="37vLTw" id="390NiL14rcP" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL14rcQ" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL14rcR" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14rc_" resolve="a" />
                </node>
                <node concept="37vLTw" id="390NiL14v49" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14uYx" resolve="c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="390NiL17mCk" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL17mCl" role="3vwVQn">
              <node concept="37vLTw" id="390NiL17mCm" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL17mCn" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL17mCp" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14uYx" resolve="c" />
                </node>
                <node concept="37vLTw" id="390NiL17mCo" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14rc_" resolve="a" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="390NiL15R$w" role="3s_gse">
        <property role="3s$Bm0" value="value_var" />
        <node concept="3cqZAl" id="390NiL15R$x" role="3clF45" />
        <node concept="3Tm1VV" id="390NiL15R$y" role="1B3o_S" />
        <node concept="3clFbS" id="390NiL15R$z" role="3clF47">
          <node concept="3cpWs8" id="390NiL15R$_" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL15R$A" role="3cpWs9">
              <property role="TrG5h" value="X" />
              <node concept="3uibUv" id="390NiL15R$B" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="390NiL15R$C" role="33vP2m">
                <ref role="37wK5l" node="390NiL14kVE" resolve="termvar" />
                <node concept="Xl_RD" id="390NiL15R$D" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL15R$E" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL15R$F" role="3cpWs9">
              <property role="TrG5h" value="Y" />
              <node concept="3uibUv" id="390NiL15R$G" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="390NiL15R$H" role="33vP2m">
                <ref role="37wK5l" node="390NiL14kVE" resolve="termvar" />
                <node concept="Xl_RD" id="390NiL15R$I" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL17v2b" role="3cqZAp" />
          <node concept="3cpWs8" id="390NiL15R$J" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL15R$K" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="390NiL15R$L" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL15R$M" role="33vP2m">
                <node concept="1oi5UN" id="390NiL15R$N" role="1oi0x0">
                  <node concept="1oi5Wm" id="390NiL15R$O" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL15R$P" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                  <node concept="1oi5ST" id="390NiL15R$Q" role="1ojpOf">
                    <property role="TrG5h" value="chd" />
                    <node concept="1oi5UN" id="390NiL15R$R" role="1oi5TL">
                      <node concept="22Ky0T" id="390NiL15R$S" role="lGtFl">
                        <node concept="37vLTw" id="390NiL15R$T" role="22Ky0K">
                          <ref role="3cqZAo" node="390NiL15R$A" resolve="X" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL15R$U" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL15R$V" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="390NiL15R$W" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL15R$X" role="33vP2m">
                <node concept="1oi5UN" id="390NiL15R$Y" role="1oi0x0">
                  <node concept="1oi5ST" id="390NiL15R$Z" role="1ojpOf">
                    <property role="TrG5h" value="chd" />
                    <node concept="1oi5UN" id="390NiL15R_0" role="1oi5TL">
                      <node concept="22Ky0T" id="390NiL15R_1" role="lGtFl">
                        <node concept="37vLTw" id="390NiL15R_2" role="22Ky0K">
                          <ref role="3cqZAo" node="390NiL15R$F" resolve="Y" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL15R_3" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL15R_4" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL15R_5" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL15R_6" role="3cpWs9">
              <property role="TrG5h" value="c" />
              <node concept="3uibUv" id="390NiL15R_7" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL15R_8" role="33vP2m">
                <node concept="1oi5UN" id="390NiL15R_9" role="1oi0x0">
                  <node concept="1oi5ST" id="390NiL15R_a" role="1ojpOf">
                    <property role="TrG5h" value="chd" />
                    <node concept="1oi5UN" id="390NiL15R_b" role="1oi5TL">
                      <node concept="1oi5Wm" id="390NiL15RDm" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="390NiL15RDn" role="1oi5zu">
                          <property role="1oi5yK" value="doh" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL15R_e" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL15R_f" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL166ha" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL166hb" role="3cpWs9">
              <property role="TrG5h" value="d" />
              <node concept="3uibUv" id="390NiL166hc" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL166hd" role="33vP2m">
                <node concept="1oi5UN" id="390NiL166he" role="1oi0x0">
                  <node concept="1oi5ST" id="390NiL166hf" role="1ojpOf">
                    <property role="TrG5h" value="chd" />
                    <node concept="1oi5UN" id="390NiL166hg" role="1oi5TL">
                      <node concept="1oi5Wm" id="390NiL166hh" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="390NiL166hi" role="1oi5zu">
                          <property role="1oi5yK" value="doh" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL166hj" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL166hk" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL15R_g" role="3cqZAp" />
          <node concept="3vFxKo" id="390NiL15R_h" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL15R_i" role="3vFALc">
              <node concept="37vLTw" id="390NiL15R_j" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL15R_k" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL15R_l" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL15R$K" resolve="a" />
                </node>
                <node concept="37vLTw" id="390NiL15R_m" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL15R$V" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="390NiL15RDq" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL15RDr" role="3vFALc">
              <node concept="37vLTw" id="390NiL15RDs" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL15RDt" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL15RDu" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL15R$K" resolve="a" />
                </node>
                <node concept="37vLTw" id="390NiL15RGT" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL15R_6" resolve="c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="390NiL17qj5" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL17qj6" role="3vFALc">
              <node concept="37vLTw" id="390NiL17qj7" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL17qj8" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL17qja" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL15R_6" resolve="c" />
                </node>
                <node concept="37vLTw" id="390NiL17qj9" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL15R$K" resolve="a" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="390NiL17v7a" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL17v7b" role="3vFALc">
              <node concept="37vLTw" id="390NiL17v7c" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL17v7d" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL17v7f" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL15R$K" resolve="a" />
                </node>
                <node concept="37vLTw" id="390NiL17v7e" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL15R_6" resolve="c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="390NiL166iD" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL166iE" role="3vwVQn">
              <node concept="37vLTw" id="390NiL166iF" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL166iG" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL166qK" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL15R_6" resolve="c" />
                </node>
                <node concept="37vLTw" id="390NiL166td" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL166hb" resolve="d" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL15RGX" role="3cqZAp" />
          <node concept="3clFbF" id="390NiL15TTR" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL15U5c" role="3clFbG">
              <node concept="1rXfSq" id="390NiL15TTP" role="2Oq$k0">
                <ref role="37wK5l" node="390NiL15T3$" resolve="asTermLogical" />
                <node concept="37vLTw" id="390NiL15TVh" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL15R$A" resolve="X" />
                </node>
              </node>
              <node concept="liA8E" id="390NiL15UsS" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
                <node concept="1oi1Uc" id="390NiL15U$k" role="37wK5m">
                  <node concept="1oi5UN" id="390NiL15UG0" role="1oi0x0">
                    <node concept="1oi5Wm" id="390NiL15UG2" role="1ojpOf">
                      <property role="TrG5h" value="bar" />
                      <node concept="1oi5XN" id="390NiL15UG3" role="1oi5zu">
                        <property role="1oi5yK" value="doh" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="390NiL15R_n" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL15R_o" role="3vwVQn">
              <node concept="37vLTw" id="390NiL15R_p" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL15R_q" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL15R_r" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL15R$K" resolve="a" />
                </node>
                <node concept="37vLTw" id="390NiL15R_s" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL15R_6" resolve="c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="390NiL17qMT" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL17qMU" role="3vwVQn">
              <node concept="37vLTw" id="390NiL17qMV" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL17qMW" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL17qMY" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL15R_6" resolve="c" />
                </node>
                <node concept="37vLTw" id="390NiL17qMX" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL15R$K" resolve="a" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="390NiL16Ozb" role="3s_gse">
        <property role="3s$Bm0" value="var" />
        <node concept="3cqZAl" id="390NiL16Ozc" role="3clF45" />
        <node concept="3Tm1VV" id="390NiL16Ozd" role="1B3o_S" />
        <node concept="3clFbS" id="390NiL16Oze" role="3clF47">
          <node concept="3clFbH" id="390NiL16Ozf" role="3cqZAp" />
          <node concept="3cpWs8" id="390NiL16Ozg" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL16Ozh" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="390NiL16Ozi" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL16Ozj" role="33vP2m">
                <node concept="1oi5UN" id="390NiL16Ozk" role="1oi0x0">
                  <node concept="38e3lM" id="390NiL16Ozl" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="390NiL16Ozm" role="38e3mL">
                      <node concept="1oi5UN" id="390NiL16Ozn" role="KCVpo">
                        <node concept="22Ky0T" id="390NiL16Ozo" role="lGtFl">
                          <node concept="1rXfSq" id="390NiL16Ozp" role="22Ky0K">
                            <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                            <node concept="Xl_RD" id="390NiL16Ozq" role="37wK5m">
                              <property role="Xl_RC" value="X" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL16Ozr" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL16Ozs" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL16Ozt" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL16Ozu" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="390NiL16Ozv" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL16Ozw" role="33vP2m">
                <node concept="1oi5UN" id="390NiL16Ozx" role="1oi0x0">
                  <node concept="38e3lM" id="390NiL16Ozy" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="390NiL16Ozz" role="38e3mL">
                      <node concept="1oi5UN" id="390NiL16Oz$" role="KCVpo">
                        <node concept="22Ky0T" id="390NiL16Oz_" role="lGtFl">
                          <node concept="1rXfSq" id="390NiL16OzA" role="22Ky0K">
                            <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                            <node concept="Xl_RD" id="390NiL16OzB" role="37wK5m">
                              <property role="Xl_RC" value="Y" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL16OzC" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL16OzD" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL16OzE" role="3cqZAp" />
          <node concept="3vFxKo" id="390NiL16Plh" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL16PlT" role="3vFALc">
              <node concept="37vLTw" id="390NiL16PlU" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL16PlV" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL16PlW" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16Ozh" resolve="a" />
                </node>
                <node concept="37vLTw" id="390NiL16PlX" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16Ozu" resolve="b" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="390NiL16ST1" role="3s_gse">
        <property role="3s$Bm0" value="term_var" />
        <node concept="3cqZAl" id="390NiL16ST2" role="3clF45" />
        <node concept="3Tm1VV" id="390NiL16ST3" role="1B3o_S" />
        <node concept="3clFbS" id="390NiL16ST4" role="3clF47">
          <node concept="3cpWs8" id="390NiL16Waw" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL16Wax" role="3cpWs9">
              <property role="TrG5h" value="X" />
              <node concept="3uibUv" id="390NiL16Wav" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="390NiL16Way" role="33vP2m">
                <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                <node concept="Xl_RD" id="390NiL16Waz" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL16ST5" role="3cqZAp" />
          <node concept="3cpWs8" id="390NiL16ST6" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL16ST7" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="390NiL16ST8" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL16ST9" role="33vP2m">
                <node concept="1oi5UN" id="390NiL16STa" role="1oi0x0">
                  <node concept="38e3lM" id="390NiL16STb" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="390NiL16STc" role="38e3mL">
                      <node concept="1oi5UN" id="390NiL16STd" role="KCVpo">
                        <node concept="1oi5Wm" id="390NiL16STe" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="390NiL16STf" role="1oi5zu">
                            <property role="1oi5yK" value="bar" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL16STg" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL16STh" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL16STi" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL16STj" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="390NiL16STk" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL16STl" role="33vP2m">
                <node concept="1oi5UN" id="390NiL16STm" role="1oi0x0">
                  <node concept="38e3lM" id="390NiL16STn" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="390NiL16STo" role="38e3mL">
                      <node concept="1oi5UN" id="390NiL16STp" role="KCVpo">
                        <node concept="22Ky0T" id="390NiL16STq" role="lGtFl">
                          <node concept="37vLTw" id="390NiL16Wa$" role="22Ky0K">
                            <ref role="3cqZAo" node="390NiL16Wax" resolve="X" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL16STt" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL16STu" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL16STv" role="3cqZAp" />
          <node concept="3vFxKo" id="390NiL16T0f" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL16Tyu" role="3vFALc">
              <node concept="37vLTw" id="390NiL16T1m" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL16VDF" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL16VDY" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16ST7" resolve="a" />
                </node>
                <node concept="37vLTw" id="390NiL16VYq" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16STj" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="390NiL17uqP" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL17uqQ" role="3vFALc">
              <node concept="37vLTw" id="390NiL17uqR" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL17uqS" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL17uqU" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16STj" resolve="b" />
                </node>
                <node concept="37vLTw" id="390NiL17uqT" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16ST7" resolve="a" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL17usP" role="3cqZAp" />
          <node concept="3clFbF" id="390NiL16W0C" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL16Wqd" role="3clFbG">
              <node concept="1rXfSq" id="390NiL16W0A" role="2Oq$k0">
                <ref role="37wK5l" node="390NiL15T3$" resolve="asTermLogical" />
                <node concept="37vLTw" id="390NiL16WcI" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16Wax" resolve="X" />
                </node>
              </node>
              <node concept="liA8E" id="390NiL16XbS" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
                <node concept="1oi1Uc" id="390NiL16Xcr" role="37wK5m">
                  <node concept="1oi5UN" id="390NiL16Xgj" role="1oi0x0">
                    <node concept="1oi5Wm" id="390NiL16Xgl" role="1ojpOf">
                      <property role="TrG5h" value="name" />
                      <node concept="1oi5XN" id="390NiL16Xgm" role="1oi5zu">
                        <property role="1oi5yK" value="bar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="390NiL16XhE" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL16Xiv" role="3vwVQn">
              <node concept="37vLTw" id="390NiL16Xiw" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL16Xix" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL16Xiy" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16ST7" resolve="a" />
                </node>
                <node concept="37vLTw" id="390NiL16Xiz" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16STj" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="390NiL17uvE" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL17uvF" role="3vwVQn">
              <node concept="37vLTw" id="390NiL17uvG" role="2Oq$k0">
                <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL17uvH" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="390NiL17uvJ" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16STj" resolve="b" />
                </node>
                <node concept="37vLTw" id="390NiL17uvI" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16ST7" resolve="a" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KhYhu" id="6N2bvv_uyD4" role="1KhZu4">
      <node concept="3clFbS" id="6N2bvv_uyD5" role="2VODD2">
        <node concept="3clFbH" id="390NiL15gX3" role="3cqZAp" />
        <node concept="3clFbF" id="6N2bvv_uyD8" role="3cqZAp">
          <node concept="37vLTI" id="6N2bvv_uyD9" role="3clFbG">
            <node concept="2ShNRf" id="6N2bvv_uyDa" role="37vLTx">
              <node concept="HV5vD" id="6N2bvv_uyDb" role="2ShVmc">
                <ref role="HV5vE" to="mqqo:6yEjedm8s$A" resolve="TestingEqualsSolver" />
              </node>
            </node>
            <node concept="37vLTw" id="6N2bvv_uyDc" role="37vLTJ">
              <ref role="3cqZAo" node="6N2bvv_uxyb" resolve="eqSolver" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3s_ewN" id="390NiL14HhN">
    <property role="3s_ewP" value="TellEqSolver" />
    <node concept="2tJIrI" id="390NiL15h1Y" role="jymVt" />
    <node concept="312cEg" id="390NiL14HhO" role="jymVt">
      <property role="TrG5h" value="eqSolver" />
      <node concept="3Tm6S6" id="390NiL14HhP" role="1B3o_S" />
      <node concept="3uibUv" id="390NiL14HhQ" role="1tU5fm">
        <ref role="3uigEE" to="mqqo:6yEjedm8s$A" resolve="TestingEqualsSolver" />
      </node>
    </node>
    <node concept="2tJIrI" id="390NiL15h1u" role="jymVt" />
    <node concept="3clFb_" id="390NiL15h0_" role="jymVt">
      <property role="TrG5h" value="logical" />
      <node concept="3uibUv" id="390NiL15h0A" role="3clF45">
        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
        <node concept="3uibUv" id="390NiL15h0B" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tmbuc" id="390NiL15h0C" role="1B3o_S" />
      <node concept="3clFbS" id="390NiL15h0D" role="3clF47">
        <node concept="3clFbF" id="390NiL15h0E" role="3cqZAp">
          <node concept="2ShNRf" id="390NiL15h0F" role="3clFbG">
            <node concept="1pGfFk" id="390NiL15h0G" role="2ShVmc">
              <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.String)" resolve="LogicalImpl" />
              <node concept="37vLTw" id="390NiL15h0H" role="37wK5m">
                <ref role="3cqZAo" node="390NiL15h0J" resolve="name" />
              </node>
              <node concept="3uibUv" id="390NiL15h0I" role="1pMfVU">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="390NiL15h0J" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="390NiL15h0K" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="390NiL15h0L" role="jymVt" />
    <node concept="3clFb_" id="390NiL15h0M" role="jymVt">
      <property role="TrG5h" value="termvar" />
      <node concept="37vLTG" id="390NiL15h0N" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="390NiL15h0O" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="390NiL15h0P" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tmbuc" id="390NiL15h0Q" role="1B3o_S" />
      <node concept="3clFbS" id="390NiL15h0R" role="3clF47">
        <node concept="3clFbF" id="390NiL15h0S" role="3cqZAp">
          <node concept="2YIFZM" id="390NiL15h0T" role="3clFbG">
            <ref role="37wK5l" to="oy3s:4TCblo5YI1H" resolve="asVariable" />
            <ref role="1Pybhc" to="oy3s:677NV565N1x" resolve="LogicalUtil" />
            <node concept="2ShNRf" id="390NiL15h0U" role="37wK5m">
              <node concept="1pGfFk" id="390NiL15h0V" role="2ShVmc">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(jetbrains.mps.logic.reactor.logical.MetaLogical)" resolve="LogicalImpl" />
                <node concept="2ShNRf" id="390NiL15h0W" role="37wK5m">
                  <node concept="1pGfFk" id="390NiL15h0X" role="2ShVmc">
                    <ref role="37wK5l" to="bj13:~MetaLogical.&lt;init&gt;(java.lang.String,java.lang.Class)" resolve="MetaLogical" />
                    <node concept="37vLTw" id="390NiL15h0Y" role="37wK5m">
                      <ref role="3cqZAo" node="390NiL15h0N" resolve="name" />
                    </node>
                    <node concept="3VsKOn" id="390NiL15h0Z" role="37wK5m">
                      <ref role="3VsUkX" to="6exd:5JQSuNswOXL" resolve="TermNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="390NiL16pVj" role="jymVt" />
    <node concept="3clFb_" id="390NiL16pUf" role="jymVt">
      <property role="TrG5h" value="asTermLogical" />
      <node concept="3uibUv" id="390NiL16pUg" role="3clF45">
        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
        <node concept="3uibUv" id="390NiL16pUh" role="11_B2D">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="3Tmbuc" id="390NiL16pUi" role="1B3o_S" />
      <node concept="3clFbS" id="390NiL16pUj" role="3clF47">
        <node concept="3clFbF" id="390NiL16pUk" role="3cqZAp">
          <node concept="10QFUN" id="390NiL16pUl" role="3clFbG">
            <node concept="2OqwBi" id="390NiL16pUm" role="10QFUP">
              <node concept="1eOMI4" id="390NiL16pUn" role="2Oq$k0">
                <node concept="10QFUN" id="390NiL16pUo" role="1eOMHV">
                  <node concept="3uibUv" id="390NiL16pUp" role="10QFUM">
                    <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalDataForm" />
                    <node concept="3uibUv" id="390NiL16pUq" role="11_B2D">
                      <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="390NiL16pUr" role="10QFUP">
                    <ref role="3cqZAo" node="390NiL16pUv" resolve="v" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="390NiL16pUs" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4TCblo5MS1o" resolve="logical" />
              </node>
            </node>
            <node concept="3uibUv" id="390NiL16pUt" role="10QFUM">
              <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
              <node concept="3uibUv" id="390NiL16pUu" role="11_B2D">
                <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="390NiL16pUv" role="3clF46">
        <property role="TrG5h" value="v" />
        <node concept="3uibUv" id="390NiL16pUw" role="1tU5fm">
          <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="390NiL14HhR" role="1B3o_S" />
    <node concept="3s_gsd" id="390NiL14HhS" role="3s_ewO">
      <node concept="3s$Bmu" id="390NiL14HhT" role="3s_gse">
        <property role="3s$Bm0" value="eq_var_var" />
        <node concept="3cqZAl" id="390NiL14HhU" role="3clF45" />
        <node concept="3Tm1VV" id="390NiL14HhV" role="1B3o_S" />
        <node concept="3clFbS" id="390NiL14HhW" role="3clF47">
          <node concept="3clFbH" id="390NiL14HhX" role="3cqZAp" />
          <node concept="3cpWs8" id="390NiL14HhY" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14HhZ" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="390NiL14Hi0" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="3uibUv" id="390NiL14Hi1" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="1rXfSq" id="390NiL14Hi2" role="33vP2m">
                <ref role="37wK5l" node="6N2bvv_uPxw" resolve="logical" />
                <node concept="Xl_RD" id="390NiL14Hi3" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL14Hi4" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14Hi5" role="3cpWs9">
              <property role="TrG5h" value="y" />
              <node concept="3uibUv" id="390NiL14Hi6" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="3uibUv" id="390NiL14Hi7" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="1rXfSq" id="390NiL14Hi8" role="33vP2m">
                <ref role="37wK5l" node="6N2bvv_uPxw" resolve="logical" />
                <node concept="Xl_RD" id="390NiL14Hi9" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL14Hia" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14Hib" role="3cpWs9">
              <property role="TrG5h" value="z" />
              <node concept="3uibUv" id="390NiL14Hic" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="3uibUv" id="390NiL14Hid" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="1rXfSq" id="390NiL14Hie" role="33vP2m">
                <ref role="37wK5l" node="6N2bvv_uPxw" resolve="logical" />
                <node concept="Xl_RD" id="390NiL14Hif" role="37wK5m">
                  <property role="Xl_RC" value="Z" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL14Hig" role="3cqZAp" />
          <node concept="3SKdUt" id="390NiL14HCj" role="3cqZAp">
            <node concept="3SKdUq" id="390NiL14HCl" role="3SKWNk">
              <property role="3SKdUp" value="must not fail" />
            </node>
          </node>
          <node concept="3clFbF" id="390NiL14H$9" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL14H$b" role="3clFbG">
              <node concept="37vLTw" id="390NiL14H$c" role="2Oq$k0">
                <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL14H$d" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                <node concept="37vLTw" id="390NiL14H$e" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14HhZ" resolve="x" />
                </node>
                <node concept="37vLTw" id="390NiL15o_w" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14HhZ" resolve="x" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL15oIk" role="3cqZAp" />
          <node concept="3$NI$W" id="390NiL14Hmh" role="3cqZAp">
            <node concept="3uibUv" id="390NiL14HpH" role="3$Qgvv">
              <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
            </node>
            <node concept="3clFbF" id="390NiL14HpK" role="3$Oloe">
              <node concept="2OqwBi" id="390NiL14HpM" role="3clFbG">
                <node concept="37vLTw" id="390NiL14HpN" role="2Oq$k0">
                  <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
                </node>
                <node concept="liA8E" id="390NiL14HpO" role="2OqNvi">
                  <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                  <node concept="37vLTw" id="390NiL14HpP" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL14HhZ" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="390NiL14HpQ" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL14Hi5" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL14HkL" role="3cqZAp" />
          <node concept="3clFbF" id="390NiL14Hio" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL14Hip" role="3clFbG">
              <node concept="37vLTw" id="390NiL14Hiq" role="2Oq$k0">
                <ref role="3cqZAo" node="390NiL14HhZ" resolve="x" />
              </node>
              <node concept="liA8E" id="390NiL14Hir" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
                <node concept="Xl_RD" id="390NiL14His" role="37wK5m">
                  <property role="Xl_RC" value="foo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3$NI$W" id="390NiL14Hr1" role="3cqZAp">
            <node concept="3uibUv" id="390NiL14Hr2" role="3$Qgvv">
              <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
            </node>
            <node concept="3clFbF" id="390NiL14Hr3" role="3$Oloe">
              <node concept="2OqwBi" id="390NiL14Hr4" role="3clFbG">
                <node concept="37vLTw" id="390NiL14Hr5" role="2Oq$k0">
                  <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
                </node>
                <node concept="liA8E" id="390NiL14Hr6" role="2OqNvi">
                  <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                  <node concept="37vLTw" id="390NiL14Hr7" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL14HhZ" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="390NiL14Hr8" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL14Hi5" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3$NI$W" id="390NiL17igG" role="3cqZAp">
            <node concept="3uibUv" id="390NiL17igH" role="3$Qgvv">
              <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
            </node>
            <node concept="3clFbF" id="390NiL17igI" role="3$Oloe">
              <node concept="2OqwBi" id="390NiL17igJ" role="3clFbG">
                <node concept="37vLTw" id="390NiL17igK" role="2Oq$k0">
                  <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
                </node>
                <node concept="liA8E" id="390NiL17igL" role="2OqNvi">
                  <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                  <node concept="37vLTw" id="390NiL17ik$" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL14Hi5" resolve="y" />
                  </node>
                  <node concept="37vLTw" id="390NiL17in1" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL14HhZ" resolve="x" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL14Hiz" role="3cqZAp" />
          <node concept="3clFbF" id="390NiL14Hi$" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL14Hi_" role="3clFbG">
              <node concept="37vLTw" id="390NiL14HiA" role="2Oq$k0">
                <ref role="3cqZAo" node="390NiL14Hi5" resolve="y" />
              </node>
              <node concept="liA8E" id="390NiL14HiB" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
                <node concept="Xl_RD" id="390NiL14HiC" role="37wK5m">
                  <property role="Xl_RC" value="foo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="390NiL15oLW" role="3cqZAp">
            <node concept="3SKdUq" id="390NiL15oLX" role="3SKWNk">
              <property role="3SKdUp" value="must not fail" />
            </node>
          </node>
          <node concept="3clFbF" id="390NiL15oLQ" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL15oLR" role="3clFbG">
              <node concept="37vLTw" id="390NiL15oLS" role="2Oq$k0">
                <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL15oLT" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                <node concept="37vLTw" id="390NiL15oLU" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14HhZ" resolve="x" />
                </node>
                <node concept="37vLTw" id="390NiL15oYf" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14Hi5" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL14HiJ" role="3cqZAp" />
          <node concept="3clFbF" id="390NiL14HiK" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL14HiL" role="3clFbG">
              <node concept="37vLTw" id="390NiL14HiM" role="2Oq$k0">
                <ref role="3cqZAo" node="390NiL14Hib" resolve="z" />
              </node>
              <node concept="liA8E" id="390NiL14HiN" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
                <node concept="Xl_RD" id="390NiL14HiO" role="37wK5m">
                  <property role="Xl_RC" value="bar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3$NI$W" id="390NiL14HEv" role="3cqZAp">
            <node concept="3uibUv" id="390NiL14HEw" role="3$Qgvv">
              <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
            </node>
            <node concept="3clFbF" id="390NiL14HEx" role="3$Oloe">
              <node concept="2OqwBi" id="390NiL14HEy" role="3clFbG">
                <node concept="37vLTw" id="390NiL14HEz" role="2Oq$k0">
                  <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
                </node>
                <node concept="liA8E" id="390NiL14HE$" role="2OqNvi">
                  <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                  <node concept="37vLTw" id="390NiL14HE_" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL14HhZ" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="390NiL15tjG" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL14Hib" resolve="z" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3$NI$W" id="390NiL17i_P" role="3cqZAp">
            <node concept="3uibUv" id="390NiL17i_Q" role="3$Qgvv">
              <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
            </node>
            <node concept="3clFbF" id="390NiL17i_R" role="3$Oloe">
              <node concept="2OqwBi" id="390NiL17i_S" role="3clFbG">
                <node concept="37vLTw" id="390NiL17i_T" role="2Oq$k0">
                  <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
                </node>
                <node concept="liA8E" id="390NiL17i_U" role="2OqNvi">
                  <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                  <node concept="37vLTw" id="390NiL17i_W" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL14Hib" resolve="z" />
                  </node>
                  <node concept="37vLTw" id="390NiL17i_V" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL14HhZ" resolve="x" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="390NiL14HiV" role="3s_gse">
        <property role="3s$Bm0" value="empty" />
        <node concept="3cqZAl" id="390NiL14HiW" role="3clF45" />
        <node concept="3Tm1VV" id="390NiL14HiX" role="1B3o_S" />
        <node concept="3clFbS" id="390NiL14HiY" role="3clF47">
          <node concept="3clFbH" id="390NiL14HiZ" role="3cqZAp" />
          <node concept="3cpWs8" id="390NiL14Hj0" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14Hj1" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="390NiL14Hj2" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL14Hj3" role="33vP2m">
                <node concept="1oi5UN" id="390NiL14Hj4" role="1oi0x0" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL14Hj5" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14Hj6" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="390NiL14Hj7" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL14Hj8" role="33vP2m">
                <node concept="1oi5UN" id="390NiL14Hj9" role="1oi0x0" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL14Hja" role="3cqZAp" />
          <node concept="3clFbF" id="390NiL15wLY" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL15wM0" role="3clFbG">
              <node concept="37vLTw" id="390NiL15wM1" role="2Oq$k0">
                <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL15wM2" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                <node concept="37vLTw" id="390NiL15wM3" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14Hj1" resolve="a" />
                </node>
                <node concept="37vLTw" id="390NiL15wM4" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14Hj6" resolve="b" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="390NiL14Hjh" role="3s_gse">
        <property role="3s$Bm0" value="value" />
        <node concept="3cqZAl" id="390NiL14Hji" role="3clF45" />
        <node concept="3Tm1VV" id="390NiL14Hjj" role="1B3o_S" />
        <node concept="3clFbS" id="390NiL14Hjk" role="3clF47">
          <node concept="3clFbH" id="390NiL14Hjl" role="3cqZAp" />
          <node concept="3cpWs8" id="390NiL14Hjm" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14Hjn" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="390NiL14Hjo" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL14Hjp" role="33vP2m">
                <node concept="1oi5UN" id="390NiL14Hjq" role="1oi0x0">
                  <node concept="1oi5Wm" id="390NiL14Hjr" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL14Hjs" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL14Hjt" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14Hju" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="390NiL14Hjv" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL14Hjw" role="33vP2m">
                <node concept="1oi5UN" id="390NiL14Hjx" role="1oi0x0">
                  <node concept="1oi5Wm" id="390NiL14Hjy" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL14Hjz" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL15$rO" role="3cqZAp" />
          <node concept="3clFbF" id="390NiL15$rP" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL15$rQ" role="3clFbG">
              <node concept="37vLTw" id="390NiL15$rR" role="2Oq$k0">
                <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL15$rS" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                <node concept="37vLTw" id="390NiL15$rT" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14Hjn" resolve="a" />
                </node>
                <node concept="37vLTw" id="390NiL15$rU" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14Hju" resolve="b" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="390NiL14HjF" role="3s_gse">
        <property role="3s$Bm0" value="var_var" />
        <node concept="3cqZAl" id="390NiL14HjG" role="3clF45" />
        <node concept="3Tm1VV" id="390NiL14HjH" role="1B3o_S" />
        <node concept="3clFbS" id="390NiL14HjI" role="3clF47">
          <node concept="3cpWs8" id="390NiL14HjK" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14HjL" role="3cpWs9">
              <property role="TrG5h" value="X" />
              <node concept="3uibUv" id="390NiL14HjM" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="390NiL14HjN" role="33vP2m">
                <ref role="37wK5l" node="390NiL14kVE" resolve="termvar" />
                <node concept="Xl_RD" id="390NiL14HjO" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL14HjP" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14HjQ" role="3cpWs9">
              <property role="TrG5h" value="Y" />
              <node concept="3uibUv" id="390NiL14HjR" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="390NiL14HjS" role="33vP2m">
                <ref role="37wK5l" node="390NiL14kVE" resolve="termvar" />
                <node concept="Xl_RD" id="390NiL14HjT" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL17mAg" role="3cqZAp" />
          <node concept="3cpWs8" id="390NiL14HjU" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14HjV" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="390NiL14HjW" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL14HjX" role="33vP2m">
                <node concept="1oi5UN" id="390NiL14HjY" role="1oi0x0">
                  <node concept="1oi5Wm" id="390NiL14HjZ" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL14Hk0" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                  <node concept="1oi5ST" id="390NiL14Hk1" role="1ojpOf">
                    <property role="TrG5h" value="chd" />
                    <node concept="1oi5UN" id="390NiL14Hk2" role="1oi5TL">
                      <node concept="22Ky0T" id="390NiL14Hk3" role="lGtFl">
                        <node concept="37vLTw" id="390NiL14Hk4" role="22Ky0K">
                          <ref role="3cqZAo" node="390NiL14HjL" resolve="X" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL14Hk5" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14Hk6" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="390NiL14Hk7" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL14Hk8" role="33vP2m">
                <node concept="1oi5UN" id="390NiL14Hk9" role="1oi0x0">
                  <node concept="1oi5ST" id="390NiL14Hka" role="1ojpOf">
                    <property role="TrG5h" value="chd" />
                    <node concept="1oi5UN" id="390NiL14Hkb" role="1oi5TL">
                      <node concept="22Ky0T" id="390NiL14Hkc" role="lGtFl">
                        <node concept="37vLTw" id="390NiL14Hkd" role="22Ky0K">
                          <ref role="3cqZAo" node="390NiL14HjQ" resolve="Y" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL14Hke" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL14Hkf" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL14Hkg" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL14Hkh" role="3cpWs9">
              <property role="TrG5h" value="c" />
              <node concept="3uibUv" id="390NiL14Hki" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL14Hkj" role="33vP2m">
                <node concept="1oi5UN" id="390NiL14Hkk" role="1oi0x0">
                  <node concept="1oi5ST" id="390NiL14Hkl" role="1ojpOf">
                    <property role="TrG5h" value="chd" />
                    <node concept="1oi5UN" id="390NiL14Hkm" role="1oi5TL">
                      <node concept="22Ky0T" id="390NiL14Hkn" role="lGtFl">
                        <node concept="37vLTw" id="390NiL14Hko" role="22Ky0K">
                          <ref role="3cqZAo" node="390NiL14HjL" resolve="X" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL14Hkp" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL14Hkq" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL14Hkr" role="3cqZAp" />
          <node concept="3$NI$W" id="390NiL15I_f" role="3cqZAp">
            <node concept="3clFbF" id="390NiL15IAV" role="3$Oloe">
              <node concept="2OqwBi" id="390NiL15Jfp" role="3clFbG">
                <node concept="37vLTw" id="390NiL15IAT" role="2Oq$k0">
                  <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
                </node>
                <node concept="liA8E" id="390NiL15Lhh" role="2OqNvi">
                  <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                  <node concept="37vLTw" id="390NiL15Lh$" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL14HjV" resolve="a" />
                  </node>
                  <node concept="37vLTw" id="390NiL15Lyi" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL14Hk6" resolve="b" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="390NiL15IAk" role="3$Qgvv">
              <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
            </node>
          </node>
          <node concept="3$NI$W" id="390NiL17mEB" role="3cqZAp">
            <node concept="3clFbF" id="390NiL17mEC" role="3$Oloe">
              <node concept="2OqwBi" id="390NiL17mED" role="3clFbG">
                <node concept="37vLTw" id="390NiL17mEE" role="2Oq$k0">
                  <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
                </node>
                <node concept="liA8E" id="390NiL17mEF" role="2OqNvi">
                  <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                  <node concept="37vLTw" id="390NiL17mEH" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL14Hk6" resolve="b" />
                  </node>
                  <node concept="37vLTw" id="390NiL17mEG" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL14HjV" resolve="a" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="390NiL17mEI" role="3$Qgvv">
              <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
            </node>
          </node>
          <node concept="3clFbF" id="390NiL15L$M" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL15LKU" role="3clFbG">
              <node concept="37vLTw" id="390NiL15L$K" role="2Oq$k0">
                <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL15NLa" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                <node concept="37vLTw" id="390NiL15NLt" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14HjV" resolve="a" />
                </node>
                <node concept="37vLTw" id="390NiL15NVI" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14Hkh" resolve="c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="390NiL17mFO" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL17mFP" role="3clFbG">
              <node concept="37vLTw" id="390NiL17mFQ" role="2Oq$k0">
                <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL17mFR" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                <node concept="37vLTw" id="390NiL17mFT" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14Hkh" resolve="c" />
                </node>
                <node concept="37vLTw" id="390NiL17mFS" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL14HjV" resolve="a" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="390NiL16dQX" role="3s_gse">
        <property role="3s$Bm0" value="value_var" />
        <node concept="3cqZAl" id="390NiL16dQY" role="3clF45" />
        <node concept="3Tm1VV" id="390NiL16dQZ" role="1B3o_S" />
        <node concept="3clFbS" id="390NiL16dR0" role="3clF47">
          <node concept="3cpWs8" id="390NiL16dR2" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL16dR3" role="3cpWs9">
              <property role="TrG5h" value="X" />
              <node concept="3uibUv" id="390NiL16dR4" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="390NiL16dR5" role="33vP2m">
                <ref role="37wK5l" node="390NiL14kVE" resolve="termvar" />
                <node concept="Xl_RD" id="390NiL16dR6" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL16dR7" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL16dR8" role="3cpWs9">
              <property role="TrG5h" value="Y" />
              <node concept="3uibUv" id="390NiL16dR9" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="390NiL16dRa" role="33vP2m">
                <ref role="37wK5l" node="390NiL14kVE" resolve="termvar" />
                <node concept="Xl_RD" id="390NiL16dRb" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL17v5t" role="3cqZAp" />
          <node concept="3cpWs8" id="390NiL16dRc" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL16dRd" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="390NiL16dRe" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL16dRf" role="33vP2m">
                <node concept="1oi5UN" id="390NiL16dRg" role="1oi0x0">
                  <node concept="1oi5Wm" id="390NiL16dRh" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL16dRi" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                  <node concept="1oi5ST" id="390NiL16dRj" role="1ojpOf">
                    <property role="TrG5h" value="chd" />
                    <node concept="1oi5UN" id="390NiL16dRk" role="1oi5TL">
                      <node concept="22Ky0T" id="390NiL16dRl" role="lGtFl">
                        <node concept="37vLTw" id="390NiL16dRm" role="22Ky0K">
                          <ref role="3cqZAo" node="390NiL16dR3" resolve="X" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL16dRn" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL16dRo" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="390NiL16dRp" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL16dRq" role="33vP2m">
                <node concept="1oi5UN" id="390NiL16dRr" role="1oi0x0">
                  <node concept="1oi5ST" id="390NiL16dRs" role="1ojpOf">
                    <property role="TrG5h" value="chd" />
                    <node concept="1oi5UN" id="390NiL16dRt" role="1oi5TL">
                      <node concept="22Ky0T" id="390NiL16dRu" role="lGtFl">
                        <node concept="37vLTw" id="390NiL16dRv" role="22Ky0K">
                          <ref role="3cqZAo" node="390NiL16dR8" resolve="Y" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL16dRw" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL16dRx" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL16dRy" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL16dRz" role="3cpWs9">
              <property role="TrG5h" value="c" />
              <node concept="3uibUv" id="390NiL16dR$" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL16dR_" role="33vP2m">
                <node concept="1oi5UN" id="390NiL16dRA" role="1oi0x0">
                  <node concept="1oi5ST" id="390NiL16dRB" role="1ojpOf">
                    <property role="TrG5h" value="chd" />
                    <node concept="1oi5UN" id="390NiL16dRC" role="1oi5TL">
                      <node concept="1oi5Wm" id="390NiL16dRD" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="390NiL16dRE" role="1oi5zu">
                          <property role="1oi5yK" value="doh" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL16dRF" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL16dRG" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL16dRH" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL16dRI" role="3cpWs9">
              <property role="TrG5h" value="d" />
              <node concept="3uibUv" id="390NiL16dRJ" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL16dRK" role="33vP2m">
                <node concept="1oi5UN" id="390NiL16dRL" role="1oi0x0">
                  <node concept="1oi5ST" id="390NiL16dRM" role="1ojpOf">
                    <property role="TrG5h" value="chd" />
                    <node concept="1oi5UN" id="390NiL16dRN" role="1oi5TL">
                      <node concept="1oi5Wm" id="390NiL16dRO" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="390NiL16dRP" role="1oi5zu">
                          <property role="1oi5yK" value="doh" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL16dRQ" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL16dRR" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL16dRS" role="3cqZAp" />
          <node concept="3$NI$W" id="390NiL16e3S" role="3cqZAp">
            <node concept="3clFbF" id="390NiL16e6a" role="3$Oloe">
              <node concept="2OqwBi" id="390NiL16ezC" role="3clFbG">
                <node concept="37vLTw" id="390NiL16e68" role="2Oq$k0">
                  <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
                </node>
                <node concept="liA8E" id="390NiL16guT" role="2OqNvi">
                  <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                  <node concept="37vLTw" id="390NiL16gvc" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL16dRd" resolve="a" />
                  </node>
                  <node concept="37vLTw" id="390NiL16gDt" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL16dRo" resolve="b" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="390NiL16e5z" role="3$Qgvv">
              <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
            </node>
          </node>
          <node concept="3$NI$W" id="390NiL16gDx" role="3cqZAp">
            <node concept="3clFbF" id="390NiL16gDy" role="3$Oloe">
              <node concept="2OqwBi" id="390NiL16gDz" role="3clFbG">
                <node concept="37vLTw" id="390NiL16gD$" role="2Oq$k0">
                  <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
                </node>
                <node concept="liA8E" id="390NiL16gD_" role="2OqNvi">
                  <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                  <node concept="37vLTw" id="390NiL16gDA" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL16dRd" resolve="a" />
                  </node>
                  <node concept="37vLTw" id="390NiL16gHJ" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL16dRz" resolve="c" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="390NiL16gDC" role="3$Qgvv">
              <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
            </node>
          </node>
          <node concept="3$NI$W" id="390NiL17qkH" role="3cqZAp">
            <node concept="3clFbF" id="390NiL17qkI" role="3$Oloe">
              <node concept="2OqwBi" id="390NiL17qkJ" role="3clFbG">
                <node concept="37vLTw" id="390NiL17qkK" role="2Oq$k0">
                  <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
                </node>
                <node concept="liA8E" id="390NiL17qkL" role="2OqNvi">
                  <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                  <node concept="37vLTw" id="390NiL17qkN" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL16dRz" resolve="c" />
                  </node>
                  <node concept="37vLTw" id="390NiL17qkM" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL16dRd" resolve="a" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="390NiL17qkO" role="3$Qgvv">
              <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
            </node>
          </node>
          <node concept="3$NI$W" id="390NiL17v8Y" role="3cqZAp">
            <node concept="3clFbF" id="390NiL17v8Z" role="3$Oloe">
              <node concept="2OqwBi" id="390NiL17v90" role="3clFbG">
                <node concept="37vLTw" id="390NiL17v91" role="2Oq$k0">
                  <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
                </node>
                <node concept="liA8E" id="390NiL17v92" role="2OqNvi">
                  <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                  <node concept="37vLTw" id="390NiL17v94" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL16dRd" resolve="a" />
                  </node>
                  <node concept="37vLTw" id="390NiL17v93" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL16dRz" resolve="c" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="390NiL17v95" role="3$Qgvv">
              <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
            </node>
          </node>
          <node concept="3clFbF" id="390NiL16gLp" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL16h1s" role="3clFbG">
              <node concept="37vLTw" id="390NiL16gLn" role="2Oq$k0">
                <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL16jan" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                <node concept="37vLTw" id="390NiL16jaE" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16dRz" resolve="c" />
                </node>
                <node concept="37vLTw" id="390NiL16jwr" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16dRI" resolve="d" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL16dSb" role="3cqZAp" />
          <node concept="3clFbF" id="390NiL16dSc" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL16dSd" role="3clFbG">
              <node concept="1rXfSq" id="390NiL16dSe" role="2Oq$k0">
                <ref role="37wK5l" node="390NiL16pUf" resolve="asTermLogical" />
                <node concept="37vLTw" id="390NiL16dSf" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16dR3" resolve="X" />
                </node>
              </node>
              <node concept="liA8E" id="390NiL16dSg" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
                <node concept="1oi1Uc" id="390NiL16dSh" role="37wK5m">
                  <node concept="1oi5UN" id="390NiL16dSi" role="1oi0x0">
                    <node concept="1oi5Wm" id="390NiL16dSj" role="1ojpOf">
                      <property role="TrG5h" value="bar" />
                      <node concept="1oi5XN" id="390NiL16dSk" role="1oi5zu">
                        <property role="1oi5yK" value="doh" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="390NiL16jPv" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL16k5y" role="3clFbG">
              <node concept="37vLTw" id="390NiL16jPt" role="2Oq$k0">
                <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL16met" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                <node concept="37vLTw" id="390NiL16meK" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16dRd" resolve="a" />
                </node>
                <node concept="37vLTw" id="390NiL16mp1" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16dRz" resolve="c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="390NiL17q$L" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL17q$M" role="3clFbG">
              <node concept="37vLTw" id="390NiL17q$N" role="2Oq$k0">
                <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL17q$O" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                <node concept="37vLTw" id="390NiL17q$Q" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16dRz" resolve="c" />
                </node>
                <node concept="37vLTw" id="390NiL17q$P" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16dRd" resolve="a" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="390NiL171dy" role="3s_gse">
        <property role="3s$Bm0" value="var" />
        <node concept="3cqZAl" id="390NiL171dz" role="3clF45" />
        <node concept="3Tm1VV" id="390NiL171d$" role="1B3o_S" />
        <node concept="3clFbS" id="390NiL171d_" role="3clF47">
          <node concept="3clFbH" id="390NiL171dA" role="3cqZAp" />
          <node concept="3cpWs8" id="390NiL171dB" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL171dC" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="390NiL171dD" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL171dE" role="33vP2m">
                <node concept="1oi5UN" id="390NiL171dF" role="1oi0x0">
                  <node concept="38e3lM" id="390NiL171dG" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="390NiL171dH" role="38e3mL">
                      <node concept="1oi5UN" id="390NiL171dI" role="KCVpo">
                        <node concept="22Ky0T" id="390NiL171dJ" role="lGtFl">
                          <node concept="1rXfSq" id="390NiL171dK" role="22Ky0K">
                            <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                            <node concept="Xl_RD" id="390NiL171dL" role="37wK5m">
                              <property role="Xl_RC" value="X" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL171dM" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL171dN" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL171dO" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL171dP" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="390NiL171dQ" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL171dR" role="33vP2m">
                <node concept="1oi5UN" id="390NiL171dS" role="1oi0x0">
                  <node concept="38e3lM" id="390NiL171dT" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="390NiL171dU" role="38e3mL">
                      <node concept="1oi5UN" id="390NiL171dV" role="KCVpo">
                        <node concept="22Ky0T" id="390NiL171dW" role="lGtFl">
                          <node concept="1rXfSq" id="390NiL171dX" role="22Ky0K">
                            <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                            <node concept="Xl_RD" id="390NiL171dY" role="37wK5m">
                              <property role="Xl_RC" value="Y" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL171dZ" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL171e0" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL171e1" role="3cqZAp" />
          <node concept="3$NI$W" id="390NiL17aAa" role="3cqZAp">
            <node concept="3clFbF" id="390NiL17aAb" role="3$Oloe">
              <node concept="2OqwBi" id="390NiL17aAc" role="3clFbG">
                <node concept="37vLTw" id="390NiL17aAd" role="2Oq$k0">
                  <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
                </node>
                <node concept="liA8E" id="390NiL17aAe" role="2OqNvi">
                  <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                  <node concept="37vLTw" id="390NiL17bqo" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL171dC" resolve="a" />
                  </node>
                  <node concept="37vLTw" id="390NiL17bi$" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL171dP" resolve="b" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="390NiL17aAh" role="3$Qgvv">
              <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="390NiL171e8" role="3s_gse">
        <property role="3s$Bm0" value="term_var" />
        <node concept="3cqZAl" id="390NiL171e9" role="3clF45" />
        <node concept="3Tm1VV" id="390NiL171ea" role="1B3o_S" />
        <node concept="3clFbS" id="390NiL171eb" role="3clF47">
          <node concept="3cpWs8" id="390NiL171ec" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL171ed" role="3cpWs9">
              <property role="TrG5h" value="X" />
              <node concept="3uibUv" id="390NiL171ee" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="390NiL171ef" role="33vP2m">
                <ref role="37wK5l" node="21Zu7ABuubV" resolve="termvar" />
                <node concept="Xl_RD" id="390NiL171eg" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL171eh" role="3cqZAp" />
          <node concept="3cpWs8" id="390NiL171ei" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL171ej" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="390NiL171ek" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL171el" role="33vP2m">
                <node concept="1oi5UN" id="390NiL171em" role="1oi0x0">
                  <node concept="38e3lM" id="390NiL171en" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="390NiL171eo" role="38e3mL">
                      <node concept="1oi5UN" id="390NiL171ep" role="KCVpo">
                        <node concept="1oi5Wm" id="390NiL171eq" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="390NiL171er" role="1oi5zu">
                            <property role="1oi5yK" value="bar" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL171es" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL171et" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="390NiL171eu" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL171ev" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="390NiL171ew" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="390NiL171ex" role="33vP2m">
                <node concept="1oi5UN" id="390NiL171ey" role="1oi0x0">
                  <node concept="38e3lM" id="390NiL171ez" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="390NiL171e$" role="38e3mL">
                      <node concept="1oi5UN" id="390NiL171e_" role="KCVpo">
                        <node concept="22Ky0T" id="390NiL171eA" role="lGtFl">
                          <node concept="37vLTw" id="390NiL171eB" role="22Ky0K">
                            <ref role="3cqZAo" node="390NiL171ed" resolve="X" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="390NiL171eC" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="390NiL171eD" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL171eE" role="3cqZAp" />
          <node concept="3$NI$W" id="390NiL17bXI" role="3cqZAp">
            <node concept="3clFbF" id="390NiL17bXJ" role="3$Oloe">
              <node concept="2OqwBi" id="390NiL17bXK" role="3clFbG">
                <node concept="37vLTw" id="390NiL17bXL" role="2Oq$k0">
                  <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
                </node>
                <node concept="liA8E" id="390NiL17bXM" role="2OqNvi">
                  <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                  <node concept="37vLTw" id="390NiL17bXN" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL171dC" resolve="a" />
                  </node>
                  <node concept="37vLTw" id="390NiL17bXO" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL171dP" resolve="b" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="390NiL17bXP" role="3$Qgvv">
              <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
            </node>
          </node>
          <node concept="3$NI$W" id="390NiL17uwN" role="3cqZAp">
            <node concept="3clFbF" id="390NiL17uwO" role="3$Oloe">
              <node concept="2OqwBi" id="390NiL17uwP" role="3clFbG">
                <node concept="37vLTw" id="390NiL17uwQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
                </node>
                <node concept="liA8E" id="390NiL17uwR" role="2OqNvi">
                  <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                  <node concept="37vLTw" id="390NiL17uwT" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL171dP" resolve="b" />
                  </node>
                  <node concept="37vLTw" id="390NiL17uwS" role="37wK5m">
                    <ref role="3cqZAo" node="390NiL171dC" resolve="a" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="390NiL17uwU" role="3$Qgvv">
              <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
            </node>
          </node>
          <node concept="3clFbH" id="390NiL17d84" role="3cqZAp" />
          <node concept="3clFbF" id="390NiL171eL" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL171eM" role="3clFbG">
              <node concept="1rXfSq" id="390NiL171eN" role="2Oq$k0">
                <ref role="37wK5l" node="390NiL15T3$" resolve="asTermLogical" />
                <node concept="37vLTw" id="390NiL171eO" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL171ed" resolve="X" />
                </node>
              </node>
              <node concept="liA8E" id="390NiL171eP" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
                <node concept="1oi1Uc" id="390NiL171eQ" role="37wK5m">
                  <node concept="1oi5UN" id="390NiL171eR" role="1oi0x0">
                    <node concept="1oi5Wm" id="390NiL171eS" role="1ojpOf">
                      <property role="TrG5h" value="name" />
                      <node concept="1oi5XN" id="390NiL171eT" role="1oi5zu">
                        <property role="1oi5yK" value="bar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="390NiL17cOV" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL17cOW" role="3clFbG">
              <node concept="37vLTw" id="390NiL17cOX" role="2Oq$k0">
                <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL17cOY" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                <node concept="37vLTw" id="390NiL17cOZ" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16dRd" resolve="a" />
                </node>
                <node concept="37vLTw" id="390NiL17du8" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL171ev" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="390NiL17uxW" role="3cqZAp">
            <node concept="2OqwBi" id="390NiL17uxX" role="3clFbG">
              <node concept="37vLTw" id="390NiL17uxY" role="2Oq$k0">
                <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="390NiL17uxZ" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm8tAi" resolve="tellEq" />
                <node concept="37vLTw" id="390NiL17uy1" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL171ev" resolve="b" />
                </node>
                <node concept="37vLTw" id="390NiL17uy0" role="37wK5m">
                  <ref role="3cqZAo" node="390NiL16dRd" resolve="a" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KhYhu" id="390NiL14HkD" role="1KhZu4">
      <node concept="3clFbS" id="390NiL14HkE" role="2VODD2">
        <node concept="3clFbF" id="390NiL14HkF" role="3cqZAp">
          <node concept="37vLTI" id="390NiL14HkG" role="3clFbG">
            <node concept="2ShNRf" id="390NiL14HkH" role="37vLTx">
              <node concept="HV5vD" id="390NiL14HkI" role="2ShVmc">
                <ref role="HV5vE" to="mqqo:6yEjedm8s$A" resolve="TestingEqualsSolver" />
              </node>
            </node>
            <node concept="37vLTw" id="390NiL14HkJ" role="37vLTJ">
              <ref role="3cqZAo" node="390NiL14HhO" resolve="eqSolver" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

