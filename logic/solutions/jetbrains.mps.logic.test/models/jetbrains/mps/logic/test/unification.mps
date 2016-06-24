<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:82cec6f7-ddec-440c-961c-1c598267be42(jetbrains.mps.logic.test.unification)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods" version="0" />
  </languages>
  <imports>
    <import index="eifs" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:runtime(jetbrains.mps.jchr.runtime/)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="yt73" ref="7526e0cf-1ce7-46f8-a555-9eca1e06c23b/java:jetbrains.mps.unification(jetbrains.mps.logic.atom/)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="45ys" ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)" />
    <import index="qrld" ref="r:2a79c8aa-e372-4c00-8d71-5d7f3db517e4(jetbrains.mps.logic.reactor.evaluation)" />
    <import index="95zw" ref="r:f3ff7852-b9dd-4760-b213-a8a031c77d0e(jetbrains.mps.logic.jchr.predicate)" />
    <import index="rchb" ref="r:f43ee4a0-488a-425a-87a0-594ab3b0d15f(jetbrains.mps.logic.reactor.program)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.builtin.predicate)" />
    <import index="omn0" ref="r:4e44cb56-a834-45de-a0c4-c49a5c86e78e(jetbrains.mps.logic.builtin.solver)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
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
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="7080278351417106679" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertInNotNull" flags="nn" index="2Hmddi">
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
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
        <ref role="3uigEE" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
      </node>
    </node>
    <node concept="312cEg" id="fHk0tWuntB" role="jymVt">
      <property role="TrG5h" value="unificationSolver" />
      <node concept="3Tm6S6" id="fHk0tWuntC" role="1B3o_S" />
      <node concept="3uibUv" id="fHk0tWun$f" role="1tU5fm">
        <ref role="3uigEE" to="95zw:6njqcfQVO0n" resolve="JchrUnificationSolver" />
      </node>
    </node>
    <node concept="2tJIrI" id="21Zu7ABuukF" role="jymVt" />
    <node concept="3clFb_" id="21Zu7ABuubV" role="jymVt">
      <property role="TrG5h" value="var" />
      <node concept="37vLTG" id="21Zu7ABuute" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="21Zu7ABuutu" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1OShD0I14oi" role="3clF45">
        <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="1OShD0IfwAc" role="1B3o_S" />
      <node concept="3clFbS" id="21Zu7ABuubZ" role="3clF47">
        <node concept="3clFbF" id="21Zu7ABuuuo" role="3cqZAp">
          <node concept="10QFUN" id="1OShD0I14HQ" role="3clFbG">
            <node concept="2YIFZM" id="3mz2_dYuDAz" role="10QFUP">
              <ref role="37wK5l" to="yg8f:4TCblo5YI1H" resolve="asAtom" />
              <ref role="1Pybhc" to="yg8f:677NV565N1x" resolve="LogicalUtil" />
              <node concept="2OqwBi" id="3mz2_dYuJ$b" role="37wK5m">
                <node concept="2ShNRf" id="1OShD0I14HM" role="2Oq$k0">
                  <node concept="1pGfFk" id="1OShD0I14HN" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:1GDBwhEEL82" resolve="AtomLogical" />
                    <node concept="37vLTw" id="1OShD0I14HO" role="37wK5m">
                      <ref role="3cqZAo" node="21Zu7ABuute" resolve="name" />
                    </node>
                    <node concept="10Nm6u" id="46l0wJhwVT1" role="37wK5m" />
                  </node>
                </node>
                <node concept="liA8E" id="3mz2_dYuJLm" role="2OqNvi">
                  <ref role="37wK5l" to="oy3s:3mz2_dYqEdN" resolve="withMeta" />
                  <node concept="2ShNRf" id="3mz2_dYuJZn" role="37wK5m">
                    <node concept="1pGfFk" id="3mz2_dYuKjv" role="2ShVmc">
                      <ref role="37wK5l" to="45ys:7nPD14NON$Y" resolve="MetaLogical" />
                      <node concept="3VsKOn" id="3mz2_dYuKxT" role="37wK5m">
                        <ref role="3VsUkX" to="ie8e:5JQSuNswOXL" resolve="StemFunc" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="1OShD0I14Nx" role="10QFUM">
              <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
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
        <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="3mz2_dYxTYH" role="1B3o_S" />
      <node concept="3clFbS" id="3mz2_dYxTYI" role="3clF47">
        <node concept="3clFbF" id="3mz2_dYxTYJ" role="3cqZAp">
          <node concept="10QFUN" id="3mz2_dYxTYK" role="3clFbG">
            <node concept="2YIFZM" id="3mz2_dYxTYL" role="10QFUP">
              <ref role="37wK5l" to="yg8f:4TCblo5YI1H" resolve="asAtom" />
              <ref role="1Pybhc" to="yg8f:677NV565N1x" resolve="LogicalUtil" />
              <node concept="2OqwBi" id="3mz2_dYxTYM" role="37wK5m">
                <node concept="2ShNRf" id="3mz2_dYxTYN" role="2Oq$k0">
                  <node concept="1pGfFk" id="3mz2_dYxTYO" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:1GDBwhEEL82" resolve="AtomLogical" />
                    <node concept="37vLTw" id="3mz2_dYxTYP" role="37wK5m">
                      <ref role="3cqZAo" node="3mz2_dYxTYE" resolve="name" />
                    </node>
                    <node concept="10Nm6u" id="3mz2_dYxTYQ" role="37wK5m" />
                  </node>
                </node>
                <node concept="liA8E" id="3mz2_dYxTYR" role="2OqNvi">
                  <ref role="37wK5l" to="oy3s:3mz2_dYqEdN" resolve="withMeta" />
                  <node concept="2ShNRf" id="3mz2_dYxTYS" role="37wK5m">
                    <node concept="1pGfFk" id="3mz2_dYxTYT" role="2ShVmc">
                      <ref role="37wK5l" to="45ys:7nPD14NON$Y" resolve="MetaLogical" />
                      <node concept="3VsKOn" id="3mz2_dYxTYU" role="37wK5m">
                        <ref role="3VsUkX" to="ie8e:3OPtF03lco4" resolve="ListFunc" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="3mz2_dYxTYV" role="10QFUM">
              <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5cGCTtqzpdN" role="jymVt" />
    <node concept="3clFb_" id="5cGCTtqzoJK" role="jymVt">
      <property role="TrG5h" value="wildcard" />
      <node concept="3uibUv" id="5cGCTtqzoJN" role="3clF45">
        <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="5cGCTtqzoJO" role="1B3o_S" />
      <node concept="3clFbS" id="5cGCTtqzoJP" role="3clF47">
        <node concept="3clFbF" id="5cGCTtqzoJQ" role="3cqZAp">
          <node concept="10QFUN" id="5cGCTtqzoJR" role="3clFbG">
            <node concept="3uibUv" id="5cGCTtqzoJY" role="10QFUM">
              <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
            </node>
            <node concept="2YIFZM" id="3mz2_dYuDM0" role="10QFUP">
              <ref role="37wK5l" to="yg8f:4TCblo5YI1H" resolve="asAtom" />
              <ref role="1Pybhc" to="yg8f:677NV565N1x" resolve="LogicalUtil" />
              <node concept="2ShNRf" id="5cGCTtqzoJT" role="37wK5m">
                <node concept="1pGfFk" id="5cGCTtqzoJU" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:2DKqMqOlTiR" resolve="AtomLogical" />
                  <node concept="3clFbT" id="2DKqMqOmtXN" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5NuEpF1$W3O" role="1B3o_S" />
    <node concept="3s_gsd" id="5NuEpF1$W3P" role="3s_ewO">
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="37wK5l" to="95zw:4OsiK2BAnTP" resolve="askUni" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="37wK5l" to="95zw:4OsiK2BAnTP" resolve="askUni" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="53iOybEHDaO" role="33vP2m">
                <node concept="1oi5UN" id="53iOybEHDaP" role="1oi0x0">
                  <node concept="1oi5Wm" id="53iOybEHDaQ" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="53iOybEHDsa" role="1oi5zu">
                      <property role="1oi5yK" value="" />
                      <node concept="22Ky0T" id="53iOybEHDsd" role="lGtFl">
                        <node concept="1rXfSq" id="53iOybEHEjW" role="22Ky0K">
                          <ref role="37wK5l" node="21Zu7ABuubV" resolve="var" />
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
                <ref role="37wK5l" to="95zw:4OsiK2BAnTP" resolve="askUni" />
                <node concept="37vLTw" id="53iOybEHDaX" role="37wK5m">
                  <ref role="3cqZAo" node="53iOybEHDaF" resolve="a" />
                </node>
                <node concept="37vLTw" id="53iOybEHDaY" role="37wK5m">
                  <ref role="3cqZAo" node="53iOybEHDaM" resolve="b" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="21Zu7ABunhP" role="33vP2m">
                <node concept="1oi5UN" id="21Zu7ABunhQ" role="1oi0x0">
                  <node concept="1oi5ST" id="21Zu7ABunA9" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="3t7_2FgoIyK" role="1oi5TL">
                      <node concept="1oi5UN" id="677NV56vfMM" role="KCVpo">
                        <node concept="22Ky0T" id="677NV56vfMN" role="lGtFl">
                          <node concept="1rXfSq" id="21Zu7ABuxPJ" role="22Ky0K">
                            <ref role="37wK5l" node="21Zu7ABuubV" resolve="var" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="21Zu7ABunhY" role="33vP2m">
                <node concept="1oi5UN" id="21Zu7ABunhZ" role="1oi0x0">
                  <node concept="1oi5ST" id="21Zu7ABunH2" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="3t7_2FgoIyV" role="1oi5TL">
                      <node concept="1oi5UN" id="677NV56vfMG" role="KCVpo">
                        <node concept="22Ky0T" id="677NV56vfMH" role="lGtFl">
                          <node concept="1rXfSq" id="21Zu7ABuxSN" role="22Ky0K">
                            <ref role="37wK5l" node="21Zu7ABuubV" resolve="var" />
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
                <ref role="37wK5l" to="95zw:4OsiK2BAnTP" resolve="askUni" />
                <node concept="37vLTw" id="21Zu7ABuni9" role="37wK5m">
                  <ref role="3cqZAo" node="21Zu7ABunhN" resolve="a" />
                </node>
                <node concept="37vLTw" id="21Zu7ABunia" role="37wK5m">
                  <ref role="3cqZAo" node="21Zu7ABunhW" resolve="b" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="21Zu7ABupTv" role="33vP2m">
                <node concept="1oi5UN" id="21Zu7ABupTw" role="1oi0x0">
                  <node concept="1oi5ST" id="21Zu7ABupTx" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="3t7_2FgoIyJ" role="1oi5TL">
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="21Zu7ABupTF" role="33vP2m">
                <node concept="1oi5UN" id="21Zu7ABupTG" role="1oi0x0">
                  <node concept="1oi5ST" id="21Zu7ABupTH" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="3t7_2FgoIyU" role="1oi5TL">
                      <node concept="1oi5UN" id="677NV56vfN$" role="KCVpo">
                        <node concept="22Ky0T" id="677NV56vfN_" role="lGtFl">
                          <node concept="1rXfSq" id="21Zu7ABuxYK" role="22Ky0K">
                            <ref role="37wK5l" node="21Zu7ABuubV" resolve="var" />
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
                <ref role="37wK5l" to="95zw:4OsiK2BAnTP" resolve="askUni" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0I0umq" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0I0umr" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0I0ums" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0I0uMG" role="1oi5TL">
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0I0um_" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0I0umA" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0I0umB" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="677NV56vfNk" role="1oi5TL">
                      <node concept="22Ky0T" id="677NV56vfNl" role="lGtFl">
                        <node concept="1rXfSq" id="1OShD0I0umD" role="22Ky0K">
                          <ref role="37wK5l" node="21Zu7ABuubV" resolve="var" />
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
                <ref role="37wK5l" to="95zw:4OsiK2BAnTP" resolve="askUni" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0I168R" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0I168S" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0I168T" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0I168U" role="1oi5TL">
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0I16sy" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0I16sz" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0I16s$" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0I16s_" role="1oi5TL">
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
                            <ref role="37wK5l" node="21Zu7ABuubV" resolve="var" />
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
                <ref role="37wK5l" to="95zw:4OsiK2BAnTP" resolve="askUni" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0I1vD9" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0I1vDa" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0I1vDb" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0I1vDc" role="1oi5TL">
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0I1vDo" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0I1vDp" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0I1vDq" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0I1vDr" role="1oi5TL">
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
                <ref role="37wK5l" to="95zw:4OsiK2BAnTP" resolve="askUni" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0If5uG" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0If5uH" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0If5uI" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0If5uJ" role="1oi5TL" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0If5uV" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0If5uW" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0If5uX" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0If5uY" role="1oi5TL">
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
                <ref role="37wK5l" to="95zw:4OsiK2BAnTP" resolve="askUni" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYXLG3" role="33vP2m">
                <node concept="1oi5ST" id="5_6ImQYXLG4" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="5_6ImQYXLG5" role="1oi5TL">
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="5_6ImQYXM2X" role="33vP2m">
                <ref role="37wK5l" node="21Zu7ABuubV" resolve="var" />
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYXRaB" role="33vP2m">
                <node concept="1oi5ST" id="5_6ImQYXRaS" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="5_6ImQYXRpY" role="1oi5TL">
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
                <ref role="37wK5l" to="95zw:4OsiK2BAlI6" resolve="tellUni" />
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
                <ref role="37wK5l" to="95zw:4OsiK2BAnTP" resolve="askUni" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                          <ref role="37wK5l" to="ie8e:2QE4RCGndD7" resolve="asRoot" />
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
                          <ref role="37wK5l" to="ie8e:2QE4RCGndD7" resolve="asRoot" />
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
                <ref role="37wK5l" to="95zw:4OsiK2BAnTP" resolve="askUni" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYY3rA" role="33vP2m">
                <node concept="1oi5ST" id="5_6ImQYY3rB" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="5_6ImQYY3rC" role="1oi5TL">
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="5_6ImQYY3rQ" role="33vP2m">
                <ref role="37wK5l" node="21Zu7ABuubV" resolve="var" />
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYY3s0" role="33vP2m">
                <node concept="1oi5ST" id="5_6ImQYY3s1" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="5_6ImQYY3s2" role="1oi5TL">
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
                <ref role="37wK5l" to="95zw:4OsiK2BAlI6" resolve="tellUni" />
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
                <ref role="37wK5l" to="95zw:4OsiK2BAnTP" resolve="askUni" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="37wK5l" to="95zw:4OsiK2BAnTP" resolve="askUni" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYY68k" role="33vP2m">
                <node concept="1oi5ST" id="5_6ImQYY68l" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="5_6ImQYY68m" role="1oi5TL" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5_6ImQYY68q" role="3cqZAp" />
          <node concept="3cpWs8" id="5_6ImQYY68r" role="3cqZAp">
            <node concept="3cpWsn" id="5_6ImQYY68s" role="3cpWs9">
              <property role="TrG5h" value="head" />
              <node concept="3uibUv" id="5_6ImQYY68t" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="5_6ImQYY68u" role="33vP2m">
                <ref role="37wK5l" node="21Zu7ABuubV" resolve="var" />
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="5_6ImQYY68z" role="33vP2m">
                <ref role="37wK5l" node="21Zu7ABuubV" resolve="var" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="5_6ImQYY68C" role="33vP2m">
                <node concept="1oi5ST" id="5_6ImQYY68D" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="5_6ImQYY68E" role="1oi5TL">
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
              <ref role="3uigEE" to="qrld:7vxJ_H4qn42" resolve="EvaluationFailureException" />
            </node>
            <node concept="3clFbF" id="5_6ImQYY8ZS" role="3$Oloe">
              <node concept="2OqwBi" id="5_6ImQYY8ZU" role="3clFbG">
                <node concept="37vLTw" id="5_6ImQYY8ZV" role="2Oq$k0">
                  <ref role="3cqZAo" node="fHk0tWuntB" resolve="unificationSolver" />
                </node>
                <node concept="liA8E" id="5_6ImQYY8ZW" role="2OqNvi">
                  <ref role="37wK5l" to="95zw:4OsiK2BAlI6" resolve="tellUni" />
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
        <node concept="3clFbF" id="71LvIRuz6e5" role="3cqZAp">
          <node concept="37vLTI" id="71LvIRuz6gg" role="3clFbG">
            <node concept="37vLTw" id="71LvIRuz6e3" role="37vLTJ">
              <ref role="3cqZAo" node="71LvIRuyoUF" resolve="constraintSystem" />
            </node>
            <node concept="2ShNRf" id="fHk0tWuNK3" role="37vLTx">
              <node concept="1pGfFk" id="fHk0tWuNK2" role="2ShVmc">
                <ref role="37wK5l" to="eifs:~ConstraintSystem.&lt;init&gt;()" resolve="ConstraintSystem" />
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
              <ref role="37wK5l" to="eifs:~ConstraintSystem.setQueuing(boolean):void" resolve="setQueuing" />
              <node concept="3clFbT" id="fHk0tWuNX6" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2tcGHBEiyPe" role="3cqZAp">
          <node concept="3cpWsn" id="2tcGHBEiyPf" role="3cpWs9">
            <property role="TrG5h" value="symbols" />
            <node concept="3uibUv" id="2tcGHBEiyPc" role="1tU5fm">
              <ref role="3uigEE" to="95zw:7ISVfSIxNO" resolve="JchrSessionSolver" />
            </node>
            <node concept="2ShNRf" id="2tcGHBEiyPg" role="33vP2m">
              <node concept="1pGfFk" id="1ggxSI7$Ov9" role="2ShVmc">
                <ref role="37wK5l" to="95zw:6MYr6Jwp62r" resolve="JchrSessionSolver" />
                <node concept="37vLTw" id="6MYr6JwotS8" role="37wK5m">
                  <ref role="3cqZAo" node="71LvIRuyoUF" resolve="constraintSystem" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2tcGHBEi$SM" role="3cqZAp">
          <node concept="3SKdUq" id="2tcGHBEi$SO" role="3SKWNk">
            <property role="3SKdUp" value="TODO: why create new solvers?" />
          </node>
        </node>
        <node concept="3clFbF" id="2tcGHBEiyVs" role="3cqZAp">
          <node concept="2OqwBi" id="2tcGHBEiyYu" role="3clFbG">
            <node concept="37vLTw" id="2tcGHBEiyVq" role="2Oq$k0">
              <ref role="3cqZAo" node="2tcGHBEiyPf" resolve="symbols" />
            </node>
            <node concept="liA8E" id="2tcGHBEiz1l" role="2OqNvi">
              <ref role="37wK5l" to="qrld:2tcGHBEeol1" resolve="init" />
              <node concept="10M0yZ" id="qubcdttZN1" role="37wK5m">
                <ref role="3cqZAo" to="cxk7:5uFPQ7C23RV" resolve="EQ_SYM" />
                <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
              </node>
              <node concept="10M0yZ" id="qubcdttZN4" role="37wK5m">
                <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fHk0tWuoLS" role="3cqZAp">
          <node concept="37vLTI" id="fHk0tWuoPJ" role="3clFbG">
            <node concept="2ShNRf" id="fHk0tWuoQm" role="37vLTx">
              <node concept="1pGfFk" id="fHk0tWutdI" role="2ShVmc">
                <ref role="37wK5l" to="95zw:6MYr6JwUN9q" resolve="JchrUnificationSolverImpl" />
                <node concept="37vLTw" id="2tcGHBEiyPi" role="37wK5m">
                  <ref role="3cqZAo" node="2tcGHBEiyPf" resolve="symbols" />
                </node>
                <node concept="10M0yZ" id="5rhZO$U4FIT" role="37wK5m">
                  <ref role="1PxDUh" to="yg8f:qubcdtxBiR" resolve="EvaluationTraceExt" />
                  <ref role="3cqZAo" to="yg8f:24Vro6cS5rK" resolve="NULL" />
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
  <node concept="3s_ewN" id="1OShD0IfsNp">
    <property role="3s_ewP" value="TellUniSolver" />
    <node concept="2tJIrI" id="2tcGHBEipQe" role="jymVt" />
    <node concept="3clFb_" id="1OShD0Ifu8d" role="jymVt">
      <property role="TrG5h" value="var" />
      <node concept="37vLTG" id="1OShD0Ifu8e" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1OShD0Ifu8f" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1OShD0Ifu8g" role="3clF45">
        <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="1OShD0Ifwg0" role="1B3o_S" />
      <node concept="3clFbS" id="1OShD0Ifu8i" role="3clF47">
        <node concept="3clFbF" id="1OShD0Ifu8j" role="3cqZAp">
          <node concept="10QFUN" id="1OShD0Ifu8k" role="3clFbG">
            <node concept="2YIFZM" id="3mz2_dYuEFA" role="10QFUP">
              <ref role="37wK5l" to="yg8f:4TCblo5YI1H" resolve="asAtom" />
              <ref role="1Pybhc" to="yg8f:677NV565N1x" resolve="LogicalUtil" />
              <node concept="2ShNRf" id="1OShD0Ifu8m" role="37wK5m">
                <node concept="1pGfFk" id="1OShD0Ifu8n" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="AtomLogical" />
                  <node concept="37vLTw" id="1OShD0Ifu8o" role="37wK5m">
                    <ref role="3cqZAo" node="1OShD0Ifu8e" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="1OShD0Ifu8q" role="10QFUM">
              <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4$OyT8ITs7T" role="jymVt" />
    <node concept="3clFb_" id="4$OyT8ITrpL" role="jymVt">
      <property role="TrG5h" value="listVar" />
      <node concept="37vLTG" id="4$OyT8ITrpM" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4$OyT8ITrpN" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4$OyT8ITrpO" role="3clF45">
        <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="4$OyT8ITrpP" role="1B3o_S" />
      <node concept="3clFbS" id="4$OyT8ITrpQ" role="3clF47">
        <node concept="3clFbF" id="4$OyT8ITrpR" role="3cqZAp">
          <node concept="10QFUN" id="4$OyT8ITrpS" role="3clFbG">
            <node concept="2YIFZM" id="4$OyT8ITrpT" role="10QFUP">
              <ref role="1Pybhc" to="yg8f:677NV565N1x" resolve="LogicalUtil" />
              <ref role="37wK5l" to="yg8f:4TCblo5YI1H" resolve="asAtom" />
              <node concept="2OqwBi" id="4$OyT8ITrpU" role="37wK5m">
                <node concept="2ShNRf" id="4$OyT8ITrpV" role="2Oq$k0">
                  <node concept="1pGfFk" id="4$OyT8ITrpW" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:1GDBwhEEL82" resolve="AtomLogical" />
                    <node concept="37vLTw" id="4$OyT8ITrpX" role="37wK5m">
                      <ref role="3cqZAo" node="4$OyT8ITrpM" resolve="name" />
                    </node>
                    <node concept="10Nm6u" id="4$OyT8ITrpY" role="37wK5m" />
                  </node>
                </node>
                <node concept="liA8E" id="4$OyT8ITrpZ" role="2OqNvi">
                  <ref role="37wK5l" to="oy3s:3mz2_dYqEdN" resolve="withMeta" />
                  <node concept="2ShNRf" id="4$OyT8ITrq0" role="37wK5m">
                    <node concept="1pGfFk" id="4$OyT8ITrq1" role="2ShVmc">
                      <ref role="37wK5l" to="45ys:7nPD14NON$Y" resolve="MetaLogical" />
                      <node concept="3VsKOn" id="4$OyT8ITrq2" role="37wK5m">
                        <ref role="3VsUkX" to="ie8e:3OPtF03lco4" resolve="ListFunc" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="4$OyT8ITrq3" role="10QFUM">
              <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5cGCTtq$bBZ" role="jymVt" />
    <node concept="3clFb_" id="5cGCTtq$bC0" role="jymVt">
      <property role="TrG5h" value="wildcard" />
      <node concept="3uibUv" id="5cGCTtq$bC3" role="3clF45">
        <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="5cGCTtq$bC4" role="1B3o_S" />
      <node concept="3clFbS" id="5cGCTtq$bC5" role="3clF47">
        <node concept="3clFbF" id="5cGCTtq$bC6" role="3cqZAp">
          <node concept="10QFUN" id="5cGCTtq$bC7" role="3clFbG">
            <node concept="3uibUv" id="5cGCTtq$bCg" role="10QFUM">
              <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
            </node>
            <node concept="2YIFZM" id="3mz2_dYuEPh" role="10QFUP">
              <ref role="37wK5l" to="yg8f:4TCblo5YI1H" resolve="asAtom" />
              <ref role="1Pybhc" to="yg8f:677NV565N1x" resolve="LogicalUtil" />
              <node concept="2ShNRf" id="5cGCTtq$bC9" role="37wK5m">
                <node concept="1pGfFk" id="5cGCTtq$bCa" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:2DKqMqOlTiR" resolve="AtomLogical" />
                  <node concept="3clFbT" id="2DKqMqOmrUu" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
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
        <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="7nuzzkr25au" role="1B3o_S" />
      <node concept="3clFbS" id="7nuzzkr25av" role="3clF47">
        <node concept="3clFbF" id="7nuzzkr25aw" role="3cqZAp">
          <node concept="10QFUN" id="7nuzzkr25ax" role="3clFbG">
            <node concept="3uibUv" id="7nuzzkr25aB" role="10QFUM">
              <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
            </node>
            <node concept="2YIFZM" id="3mz2_dYuEZO" role="10QFUP">
              <ref role="37wK5l" to="yg8f:4TCblo5YI1H" resolve="asAtom" />
              <ref role="1Pybhc" to="yg8f:677NV565N1x" resolve="LogicalUtil" />
              <node concept="2ShNRf" id="7nuzzkr25az" role="37wK5m">
                <node concept="1pGfFk" id="7nuzzkr25a$" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:7nuzzkr2143" resolve="AtomLogical" />
                  <node concept="37vLTw" id="7nuzzkr26aF" role="37wK5m">
                    <ref role="3cqZAo" node="7nuzzkr266n" resolve="id" />
                  </node>
                  <node concept="3clFbT" id="7nuzzkr25a_" role="37wK5m">
                    <property role="3clFbU" value="true" />
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
      <property role="TrG5h" value="asLogical" />
      <node concept="37vLTG" id="1OShD0IfFeh" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="3uibUv" id="1OShD0IfFfg" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
        </node>
      </node>
      <node concept="3uibUv" id="5p8T3QHH7gN" role="3clF45">
        <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
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
                <node concept="3uibUv" id="qubcdt9I3s" role="10QFUM">
                  <ref role="3uigEE" to="45ys:46l0wJhtOD_" resolve="LogicalOwner" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="qubcdt9I3t" role="2OqNvi">
              <ref role="37wK5l" to="45ys:46l0wJhtXlr" resolve="logical" />
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IfHOF" role="33vP2m">
                <ref role="37wK5l" node="1OShD0Ifu8d" resolve="var" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IfHTZ" role="33vP2m">
                <ref role="37wK5l" node="1OShD0Ifu8d" resolve="var" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
          <node concept="3clFbF" id="5jPBdK_vh_" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdK_vpp" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdK_vmP" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdK_vlo" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdK_voQ" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdK_vsV" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
                <node concept="10M0yZ" id="5jPBdK_vv8" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="5jPBdKNF6V" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfuGw" resolve="a" />
                </node>
                <node concept="37vLTw" id="5jPBdKNF9Y" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfuGF" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0Ifv13" role="3cqZAp" />
          <node concept="3vMLTj" id="1OShD0IfHYL" role="3cqZAp">
            <node concept="2OqwBi" id="1OShD0IfItt" role="3tpDZA">
              <node concept="1rXfSq" id="1OShD0IfImD" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogical" />
                <node concept="37vLTw" id="1OShD0IfIrb" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfHTY" resolve="y" />
                </node>
              </node>
              <node concept="liA8E" id="1OShD0IfIGc" role="2OqNvi">
                <ref role="37wK5l" to="45ys:dfChU1eNVy" resolve="findRoot" />
              </node>
            </node>
            <node concept="2OqwBi" id="1OShD0IfI6R" role="3tpDZB">
              <node concept="1rXfSq" id="1OShD0IfI2H" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogical" />
                <node concept="37vLTw" id="1OShD0IfI4x" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfHOE" resolve="x" />
                </node>
              </node>
              <node concept="liA8E" id="1OShD0IfIj2" role="2OqNvi">
                <ref role="37wK5l" to="45ys:dfChU1eNVy" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3HJTsBn4435" role="3s_gse">
        <property role="3s$Bm0" value="value_var" />
        <node concept="3cqZAl" id="3HJTsBn4436" role="3clF45" />
        <node concept="3Tm1VV" id="3HJTsBn4437" role="1B3o_S" />
        <node concept="3clFbS" id="3HJTsBn4438" role="3clF47">
          <node concept="3clFbH" id="3HJTsBn4439" role="3cqZAp" />
          <node concept="3cpWs8" id="3HJTsBn443a" role="3cqZAp">
            <node concept="3cpWsn" id="3HJTsBn443b" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="3HJTsBn443c" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="3HJTsBn443d" role="33vP2m">
                <ref role="37wK5l" node="1OShD0Ifu8d" resolve="var" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
          <node concept="3clFbH" id="3HJTsBn443E" role="3cqZAp" />
          <node concept="3clFbF" id="5jPBdKNFji" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdKNFjj" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdKNFjk" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNFjl" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNFjm" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNFjn" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
                <node concept="10M0yZ" id="5jPBdKNFjo" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="5jPBdKNFjp" role="37wK5m">
                  <ref role="3cqZAo" node="3HJTsBn443g" resolve="a" />
                </node>
                <node concept="37vLTw" id="5jPBdKNFjq" role="37wK5m">
                  <ref role="3cqZAo" node="3HJTsBn443w" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3HJTsBn443L" role="3cqZAp" />
          <node concept="3vlDli" id="3HJTsBn4607" role="3cqZAp">
            <node concept="2OqwBi" id="3HJTsBn466i" role="3tpDZA">
              <node concept="2OqwBi" id="3HJTsBn466j" role="2Oq$k0">
                <node concept="1rXfSq" id="3HJTsBn466k" role="2Oq$k0">
                  <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogical" />
                  <node concept="37vLTw" id="3HJTsBn466l" role="37wK5m">
                    <ref role="3cqZAo" node="3HJTsBn443b" resolve="x" />
                  </node>
                </node>
                <node concept="liA8E" id="3HJTsBn466m" role="2OqNvi">
                  <ref role="37wK5l" to="45ys:dfChU1eNVy" resolve="findRoot" />
                </node>
              </node>
              <node concept="liA8E" id="3HJTsBn466n" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
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
      <node concept="3s$Bmu" id="4XqG8ivynhF" role="3s_gse">
        <property role="3s$Bm0" value="value_value_var" />
        <node concept="3cqZAl" id="4XqG8ivynhG" role="3clF45" />
        <node concept="3Tm1VV" id="4XqG8ivynhH" role="1B3o_S" />
        <node concept="3clFbS" id="4XqG8ivynhI" role="3clF47">
          <node concept="3clFbH" id="4XqG8ivynhJ" role="3cqZAp" />
          <node concept="3cpWs8" id="4XqG8ivynhK" role="3cqZAp">
            <node concept="3cpWsn" id="4XqG8ivynhL" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="4XqG8ivynhM" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="4XqG8ivynhN" role="33vP2m">
                <ref role="37wK5l" node="1OShD0Ifu8d" resolve="var" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="4XqG8ivy$Mg" role="33vP2m">
                <node concept="1oi5UN" id="4XqG8ivy$Mh" role="1oi0x0">
                  <node concept="1oi5ST" id="4XqG8ivy$Mi" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="4XqG8ivy$Mj" role="1oi5TL">
                      <node concept="1oi5Wm" id="4XqG8ivy$Mk" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="4XqG8ivy$Ml" role="1oi5zu">
                          <property role="1oi5yK" value="xyz" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
            <node concept="2OqwBi" id="5jPBdKNFB7" role="3vwVQn">
              <node concept="2OqwBi" id="5jPBdKNFB8" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNFB9" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNFBa" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNFBb" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznHV5" resolve="ask" />
                <node concept="10M0yZ" id="5jPBdKNFBc" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="5jPBdKNFBd" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivynhQ" resolve="a" />
                </node>
                <node concept="37vLTw" id="5jPBdKNFBe" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivy$Me" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7FuqS$4k1Wl" role="3cqZAp" />
          <node concept="3clFbF" id="5jPBdKNFL4" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdKNFL5" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdKNFL6" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNFL7" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNFL8" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNFL9" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
                <node concept="10M0yZ" id="5jPBdKNFLa" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="5jPBdKNFLb" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivynhQ" resolve="a" />
                </node>
                <node concept="37vLTw" id="5jPBdKNFLc" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivy$Me" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="4XqG8ivynil" role="3cqZAp">
            <node concept="2OqwBi" id="6MYr6Jy8m2S" role="3tpDZA">
              <node concept="2OqwBi" id="6MYr6Jy8m2T" role="2Oq$k0">
                <node concept="1rXfSq" id="6MYr6Jy8m2U" role="2Oq$k0">
                  <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogical" />
                  <node concept="37vLTw" id="6MYr6Jy8m2V" role="37wK5m">
                    <ref role="3cqZAo" node="4XqG8ivynhL" resolve="x" />
                  </node>
                </node>
                <node concept="liA8E" id="6MYr6Jy8m2W" role="2OqNvi">
                  <ref role="37wK5l" to="45ys:dfChU1eNVy" resolve="findRoot" />
                </node>
              </node>
              <node concept="liA8E" id="6MYr6Jy8m2X" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
              </node>
            </node>
            <node concept="1oi1Uc" id="6MYr6Jy8lXX" role="3tpDZB">
              <node concept="1oi5XN" id="6MYr6Jy8m2J" role="1oi0x0">
                <property role="1oi5yK" value="xyz" />
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
            <node concept="2OqwBi" id="5jPBdKNG7d" role="3vFALc">
              <node concept="2OqwBi" id="5jPBdKNG7e" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNG7f" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNG7g" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNG7h" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznHV5" resolve="ask" />
                <node concept="10M0yZ" id="5jPBdKNG7i" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="5jPBdKNGcw" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivyni3" resolve="c" />
                </node>
                <node concept="37vLTw" id="5jPBdKNGeg" role="37wK5m">
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IfO6I" role="33vP2m">
                <ref role="37wK5l" node="1OShD0Ifu8d" resolve="var" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IfP4b" role="33vP2m">
                <ref role="37wK5l" node="1OShD0Ifu8d" resolve="var" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="37wK5l" to="ie8e:56MMu0Ark7v" resolve="get" />
              </node>
            </node>
          </node>
          <node concept="2Hmddi" id="3mz2_dYyyKu" role="3cqZAp">
            <node concept="2OqwBi" id="3mz2_dYyyKv" role="2Hmdds">
              <node concept="37vLTw" id="3mz2_dYyyKw" role="2Oq$k0">
                <ref role="3cqZAo" node="1OShD0IfP49" resolve="y" />
              </node>
              <node concept="liA8E" id="3mz2_dYyyKx" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:56MMu0Ark7v" resolve="get" />
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
                  <ref role="37wK5l" to="ie8e:56MMu0Ark7v" resolve="get" />
                </node>
              </node>
              <node concept="2OqwBi" id="3mz2_dYyyKB" role="3uHU7B">
                <node concept="37vLTw" id="3mz2_dYyyKC" role="2Oq$k0">
                  <ref role="3cqZAo" node="1OShD0IfO6H" resolve="x" />
                </node>
                <node concept="liA8E" id="3mz2_dYyyKD" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:56MMu0Ark7v" resolve="get" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0IfOk1" role="3cqZAp" />
          <node concept="3clFbF" id="5jPBdKNGme" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdKNGmf" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdKNGmg" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNGmh" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNGmi" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNGmj" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
                <node concept="10M0yZ" id="5jPBdKNGmk" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="5jPBdKNGml" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfNC5" resolve="a" />
                </node>
                <node concept="37vLTw" id="5jPBdKNGmm" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfNCg" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdKNGuA" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdKNGuB" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdKNGuC" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNGuD" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNGuE" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNGuF" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
                <node concept="10M0yZ" id="5jPBdKNGuG" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="5jPBdKNGCr" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfNCg" resolve="b" />
                </node>
                <node concept="37vLTw" id="5jPBdKNGEd" role="37wK5m">
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
                <ref role="37wK5l" to="ie8e:56MMu0Ark7v" resolve="get" />
              </node>
            </node>
            <node concept="2OqwBi" id="3mz2_dYyzcF" role="3tpDZA">
              <node concept="37vLTw" id="3mz2_dYyzcG" role="2Oq$k0">
                <ref role="3cqZAo" node="1OShD0IfP49" resolve="y" />
              </node>
              <node concept="liA8E" id="3mz2_dYyzcH" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:56MMu0Ark7v" resolve="get" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0IfPjH" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0IfO_e" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0IfO_f" role="3cpWs9">
              <property role="TrG5h" value="s" />
              <node concept="3uibUv" id="1OShD0IfO_g" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
            <node concept="2OqwBi" id="5jPBdKNGS_" role="3vwVQn">
              <node concept="2OqwBi" id="5jPBdKNGSA" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNGSB" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNGSC" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNGSD" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznHV5" resolve="ask" />
                <node concept="10M0yZ" id="5jPBdKNGSE" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="5jPBdKNGZw" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfO_f" resolve="s" />
                </node>
                <node concept="37vLTw" id="5jPBdKNH1r" role="37wK5m">
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="4XqG8ivylRc" role="33vP2m">
                <ref role="37wK5l" node="1OShD0Ifu8d" resolve="var" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="4XqG8ivylRs" role="33vP2m">
                <ref role="37wK5l" node="1OShD0Ifu8d" resolve="var" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="37wK5l" to="ie8e:56MMu0Ark7v" resolve="get" />
              </node>
            </node>
          </node>
          <node concept="2Hmddi" id="3mz2_dYylmy" role="3cqZAp">
            <node concept="2OqwBi" id="3mz2_dYylmz" role="2Hmdds">
              <node concept="37vLTw" id="3mz2_dYylvV" role="2Oq$k0">
                <ref role="3cqZAo" node="4XqG8ivylRq" resolve="y" />
              </node>
              <node concept="liA8E" id="3mz2_dYylm_" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:56MMu0Ark7v" resolve="get" />
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
                  <ref role="37wK5l" to="ie8e:56MMu0Ark7v" resolve="get" />
                </node>
              </node>
              <node concept="2OqwBi" id="3mz2_dYyu5J" role="3uHU7B">
                <node concept="37vLTw" id="3mz2_dYytYr" role="2Oq$k0">
                  <ref role="3cqZAo" node="4XqG8ivylRa" resolve="x" />
                </node>
                <node concept="liA8E" id="3mz2_dYyudo" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:56MMu0Ark7v" resolve="get" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3mz2_dYytD$" role="3cqZAp" />
          <node concept="3clFbF" id="5jPBdKNHhT" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdKNHhU" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdKNHhV" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNHhW" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNHhX" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNHhY" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
                <node concept="10M0yZ" id="5jPBdKNHhZ" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="5jPBdKNHH2" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivylQZ" resolve="a" />
                </node>
                <node concept="37vLTw" id="5jPBdKNHIZ" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivylRf" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdKNH9r" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdKNH9s" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdKNH9t" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNH9u" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNH9v" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNH9w" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
                <node concept="10M0yZ" id="5jPBdKNH9x" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="5jPBdKNH9y" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivylRf" resolve="b" />
                </node>
                <node concept="37vLTw" id="5jPBdKNH9z" role="37wK5m">
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
                <ref role="37wK5l" to="ie8e:56MMu0Ark7v" resolve="get" />
              </node>
            </node>
            <node concept="2OqwBi" id="3mz2_dYymac" role="3tpDZA">
              <node concept="37vLTw" id="3mz2_dYym35" role="2Oq$k0">
                <ref role="3cqZAo" node="4XqG8ivylRq" resolve="y" />
              </node>
              <node concept="liA8E" id="3mz2_dYymhu" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:56MMu0Ark7v" resolve="get" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4XqG8ivylS0" role="3cqZAp" />
          <node concept="3cpWs8" id="4XqG8ivylS1" role="3cqZAp">
            <node concept="3cpWsn" id="4XqG8ivylS2" role="3cpWs9">
              <property role="TrG5h" value="s" />
              <node concept="3uibUv" id="4XqG8ivylS3" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
            <node concept="2OqwBi" id="5jPBdKNHSB" role="3vwVQn">
              <node concept="2OqwBi" id="5jPBdKNHSC" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNHSD" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNHSE" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNHSF" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznHV5" resolve="ask" />
                <node concept="10M0yZ" id="5jPBdKNHSG" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="5jPBdKNHSH" role="37wK5m">
                  <ref role="3cqZAo" node="4XqG8ivylS2" resolve="s" />
                </node>
                <node concept="37vLTw" id="5jPBdKNHSI" role="37wK5m">
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0IfW$$" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0IfW$_" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0IfW$A" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0IfW$B" role="1oi5TL">
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IfXUT" role="33vP2m">
                <ref role="37wK5l" node="1OShD0Ifu8d" resolve="var" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0IfW$N" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0IfW$O" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0IfW$P" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0IfW$Q" role="1oi5TL">
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
          <node concept="3clFbF" id="5jPBdKNHZ$" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdKNHZ_" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdKNHZA" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNHZB" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNHZC" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNHZD" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
                <node concept="10M0yZ" id="5jPBdKNHZE" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="5jPBdKNHZF" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfW$y" resolve="a" />
                </node>
                <node concept="37vLTw" id="5jPBdKNHZG" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfW$L" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IVxIx" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVxIy" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVxIz" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogical" />
                <node concept="37vLTw" id="4$OyT8IVxI$" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfXUS" resolve="x" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVxI_" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPKP" resolve="isBound" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
            <node concept="2OqwBi" id="5jPBdKNI3I" role="3vwVQn">
              <node concept="2OqwBi" id="5jPBdKNI3J" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNI3K" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNI3L" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNI3M" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznHV5" resolve="ask" />
                <node concept="10M0yZ" id="5jPBdKNI3N" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="5jPBdKNI3O" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IfYmM" resolve="s" />
                </node>
                <node concept="37vLTw" id="5jPBdKNI3P" role="37wK5m">
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0IgkRw" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0IgkRx" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0IgkRy" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0IgkRz" role="1oi5TL">
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IgkRJ" role="33vP2m">
                <ref role="37wK5l" node="1OShD0Ifu8d" resolve="var" />
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IglCC" role="33vP2m">
                <ref role="37wK5l" node="1OShD0Ifu8d" resolve="var" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0IgkRO" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0IgkRP" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0IgkRQ" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0IgkRR" role="1oi5TL">
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
          <node concept="3clFbF" id="5jPBdKNI6O" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdKNI6P" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdKNI6Q" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNI6R" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNI6S" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNI6T" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
                <node concept="10M0yZ" id="5jPBdKNI6U" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="5jPBdKNI6V" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IgkRu" resolve="a" />
                </node>
                <node concept="37vLTw" id="5jPBdKNI6W" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IgkRM" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IVtAi" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVtAj" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVtAk" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogical" />
                <node concept="37vLTw" id="4$OyT8IVtAl" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IgkRH" resolve="x" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVtAm" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPKP" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IVuqB" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVuqC" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVuqD" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogical" />
                <node concept="37vLTw" id="4$OyT8IVvgk" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IglCA" resolve="y" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVuqF" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPKP" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0IgkS6" role="3cqZAp" />
          <node concept="3SKdUt" id="1OShD0IgkS7" role="3cqZAp">
            <node concept="3SKdUq" id="1OShD0IgkS8" role="3SKWNk">
              <property role="3SKdUp" value="single node" />
            </node>
          </node>
          <node concept="3vwNmj" id="5jPBdKNIbX" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdKNIbY" role="3vwVQn">
              <node concept="2OqwBi" id="5jPBdKNIbZ" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNIc0" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNIc1" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNIc2" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznHV5" resolve="ask" />
                <node concept="10M0yZ" id="5jPBdKNIc3" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="1oi1Uc" id="5jPBdKNIh_" role="37wK5m">
                  <node concept="1oi5UN" id="5jPBdKNIhA" role="1oi0x0">
                    <node concept="1oi5Wm" id="5jPBdKNIhB" role="1ojpOf">
                      <property role="TrG5h" value="name" />
                      <node concept="1oi5XN" id="5jPBdKNIhC" role="1oi5zu">
                        <property role="1oi5yK" value="bar" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1oi1Uc" id="5jPBdKNIhD" role="37wK5m">
                  <node concept="1oi5UN" id="5jPBdKNIhE" role="1oi0x0">
                    <node concept="22Ky0T" id="5jPBdKNIhF" role="lGtFl">
                      <node concept="37vLTw" id="5jPBdKNIhG" role="22Ky0K">
                        <ref role="3cqZAo" node="1OShD0IgkRH" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5jPBdKNIwy" role="3cqZAp" />
          <node concept="3vwNmj" id="5jPBdKNInm" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdKNInn" role="3vwVQn">
              <node concept="2OqwBi" id="5jPBdKNIno" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNInp" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNInq" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNInr" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznHV5" resolve="ask" />
                <node concept="10M0yZ" id="5jPBdKNIns" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="1oi1Uc" id="5jPBdKNIv1" role="37wK5m">
                  <node concept="1oi5UN" id="5jPBdKNIv2" role="1oi0x0">
                    <node concept="1oi5Wm" id="5jPBdKNIv3" role="1ojpOf">
                      <property role="TrG5h" value="name" />
                      <node concept="1oi5XN" id="5jPBdKNIv4" role="1oi5zu">
                        <property role="1oi5yK" value="bazz" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1oi1Uc" id="5jPBdKNIv5" role="37wK5m">
                  <node concept="1oi5UN" id="5jPBdKNIv6" role="1oi0x0">
                    <node concept="22Ky0T" id="5jPBdKNIv7" role="lGtFl">
                      <node concept="37vLTw" id="5jPBdKNIv8" role="22Ky0K">
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0Ig2iA" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0Ig2iB" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0Ig2iC" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0Ig2iD" role="1oi5TL">
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0Ig2iU" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0Ig2iV" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0Ig2iW" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0Ig2iX" role="1oi5TL">
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
          <node concept="3clFbF" id="5jPBdKNIG7" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdKNIG8" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdKNIG9" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNIGa" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNIGb" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNIGc" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
                <node concept="10M0yZ" id="5jPBdKNIGd" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="5jPBdKNIGe" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0Ig2i$" resolve="a" />
                </node>
                <node concept="37vLTw" id="5jPBdKNIGf" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0Ig2iS" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IVrZH" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVrZI" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVrZJ" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogical" />
                <node concept="37vLTw" id="4$OyT8IVrZK" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0Ig2iN" resolve="x" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVrZL" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPKP" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0IgaFL" role="3cqZAp" />
          <node concept="3SKdUt" id="1OShD0IgaFJ" role="3cqZAp">
            <node concept="3SKdUq" id="1OShD0IgaFK" role="3SKWNk">
              <property role="3SKdUp" value="*list* variable in the last position matches the _list_" />
            </node>
          </node>
          <node concept="3vwNmj" id="5jPBdKNIJK" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdKNIJL" role="3vwVQn">
              <node concept="2OqwBi" id="5jPBdKNIJM" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNIJN" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNIJO" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNIJP" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznHV5" resolve="ask" />
                <node concept="10M0yZ" id="5jPBdKNIJQ" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="1oi1Uc" id="5jPBdKNIPU" role="37wK5m">
                  <node concept="KCUsM" id="5jPBdKNIPV" role="1oi0x0">
                    <node concept="1oi5UN" id="5jPBdKNIPW" role="KCVpo">
                      <node concept="1oi5Wm" id="5jPBdKNIPX" role="1ojpOf">
                        <property role="TrG5h" value="name" />
                        <node concept="1oi5XN" id="5jPBdKNIPY" role="1oi5zu">
                          <property role="1oi5yK" value="bazz" />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="5jPBdKNIPZ" role="KCVpo">
                      <node concept="1oi5Wm" id="5jPBdKNIQ0" role="1ojpOf">
                        <property role="TrG5h" value="name" />
                        <node concept="1oi5XN" id="5jPBdKNIQ1" role="1oi5zu">
                          <property role="1oi5yK" value="bazzzz" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1oi1Uc" id="5jPBdKNIQ2" role="37wK5m">
                  <node concept="1oi5UN" id="5jPBdKNIQ3" role="1oi0x0">
                    <node concept="22Ky0T" id="5jPBdKNIQ4" role="lGtFl">
                      <node concept="37vLTw" id="5jPBdKNIQ5" role="22Ky0K">
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0Ig9w6" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0Ig9w7" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0Ig9w8" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0Ig9w9" role="1oi5TL">
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IgaBW" role="33vP2m">
                <ref role="37wK5l" node="5cGCTtq$bC0" resolve="wildcard" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0Ig9wi" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0Ig9wj" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0Ig9wk" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0Ig9wl" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0Ig9wm" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0Ig9wn" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0Ig9wo" role="1oi5TL">
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
          <node concept="3clFbF" id="5jPBdKNJ00" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdKNJ01" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdKNJ02" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNJ03" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNJ04" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNJ05" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
                <node concept="10M0yZ" id="5jPBdKNJ06" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="5jPBdKNJ07" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0Ig9w4" resolve="a" />
                </node>
                <node concept="37vLTw" id="5jPBdKNJ08" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0Ig9wj" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IVqqK" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVqqL" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVqqM" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogical" />
                <node concept="37vLTw" id="4$OyT8IVqqN" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IgaBV" resolve="x" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVqqO" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPKP" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0Ig2jc" role="3cqZAp" />
          <node concept="3SKdUt" id="1OShD0Ig7rm" role="3cqZAp">
            <node concept="3SKdUq" id="1OShD0Ig7vG" role="3SKWNk">
              <property role="3SKdUp" value="*list* variable in the last position matches the _list_" />
            </node>
          </node>
          <node concept="3vwNmj" id="5jPBdKNJ3l" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdKNJ3m" role="3vwVQn">
              <node concept="2OqwBi" id="5jPBdKNJ3n" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNJ3o" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNJ3p" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNJ3q" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznHV5" resolve="ask" />
                <node concept="10M0yZ" id="5jPBdKNJ3r" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="1oi1Uc" id="5jPBdKNJ96" role="37wK5m">
                  <node concept="KCUsM" id="5jPBdKNJ97" role="1oi0x0" />
                </node>
                <node concept="1oi1Uc" id="5jPBdKNJ98" role="37wK5m">
                  <node concept="1oi5UN" id="5jPBdKNJ99" role="1oi0x0">
                    <node concept="22Ky0T" id="5jPBdKNJ9a" role="lGtFl">
                      <node concept="37vLTw" id="5jPBdKNJ9b" role="22Ky0K">
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0Igi9n" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0Igi9o" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0Igi9p" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0Igi9q" role="1oi5TL" />
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="1OShD0IgiMe" role="33vP2m">
                <ref role="37wK5l" node="5cGCTtq$bC0" resolve="wildcard" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1OShD0Igi9t" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0Igi9u" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0Igi9v" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0Igi9w" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0Igi9x" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0Igi9y" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="1OShD0Igi9z" role="1oi5TL">
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
          <node concept="3clFbF" id="5jPBdKNJfr" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdKNJfs" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdKNJft" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNJfu" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNJfv" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNJfw" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
                <node concept="10M0yZ" id="5jPBdKNJfx" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="5jPBdKNJfy" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0Igi9l" resolve="a" />
                </node>
                <node concept="37vLTw" id="5jPBdKNJfz" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0Igi9u" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IVo6b" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVo6c" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVo6d" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogical" />
                <node concept="37vLTw" id="4$OyT8IVpDX" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0IgiMd" resolve="x" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVo6f" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPKP" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0IgiRL" role="3cqZAp" />
          <node concept="3SKdUt" id="1OShD0IgiRM" role="3cqZAp">
            <node concept="3SKdUq" id="1OShD0IgiRN" role="3SKWNk">
              <property role="3SKdUp" value="*list* variable in the last position matches the _list_" />
            </node>
          </node>
          <node concept="3vwNmj" id="5jPBdKNJi$" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdKNJi_" role="3vwVQn">
              <node concept="2OqwBi" id="5jPBdKNJiA" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdKNJiB" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdKNJiC" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdKNJiD" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznHV5" resolve="ask" />
                <node concept="10M0yZ" id="5jPBdKNJiE" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="1oi1Uc" id="5jPBdKNJnX" role="37wK5m">
                  <node concept="KCUsM" id="5jPBdKNJnY" role="1oi0x0" />
                </node>
                <node concept="1oi1Uc" id="5jPBdKNJnZ" role="37wK5m">
                  <node concept="1oi5UN" id="5jPBdKNJo0" role="1oi0x0">
                    <node concept="22Ky0T" id="5jPBdKNJo1" role="lGtFl">
                      <node concept="37vLTw" id="5jPBdKNJo2" role="22Ky0K">
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="4$OyT8ISnwh" role="33vP2m">
                <node concept="KCUsM" id="4$OyT8ISw5n" role="1oi0x0">
                  <node concept="1oi5UN" id="4$OyT8ISxYI" role="KCVpo">
                    <node concept="1oi5Wm" id="4$OyT8ISyBa" role="1ojpOf">
                      <property role="TrG5h" value="foo" />
                    </node>
                  </node>
                  <node concept="1oi5UN" id="4$OyT8ISzRW" role="KCVpo">
                    <node concept="1oi5Wm" id="4$OyT8ISzRX" role="1ojpOf">
                      <property role="TrG5h" value="bar" />
                    </node>
                  </node>
                  <node concept="1oi5UN" id="4$OyT8IS_8N" role="KCVpo">
                    <node concept="1oi5Wm" id="4$OyT8IS_8O" role="1ojpOf">
                      <property role="TrG5h" value="baz" />
                    </node>
                  </node>
                  <node concept="1oi5UN" id="4$OyT8ISApG" role="KCVpo">
                    <node concept="1oi5Wm" id="4$OyT8ISApH" role="1ojpOf">
                      <property role="TrG5h" value="qux" />
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="4$OyT8ISnwz" role="33vP2m">
                <ref role="37wK5l" node="1OShD0Ifu8d" resolve="var" />
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="4$OyT8ISnwC" role="33vP2m">
                <ref role="37wK5l" node="4$OyT8ITrpL" resolve="listVar" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
          <node concept="3clFbF" id="4$OyT8ISnwX" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8ISnwY" role="3clFbG">
              <node concept="2OqwBi" id="4$OyT8ISnwZ" role="2Oq$k0">
                <node concept="2YIFZM" id="4$OyT8ISnx0" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="4$OyT8ISnx1" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8ISnx2" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
                <node concept="10M0yZ" id="4$OyT8ISnx3" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="4$OyT8ISnx4" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8ISnwf" resolve="list" />
                </node>
                <node concept="37vLTw" id="4$OyT8ISUn_" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8ISEPa" resolve="pattern" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IVknf" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVkng" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVknh" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogical" />
                <node concept="37vLTw" id="4$OyT8IVl9s" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8ISnwA" resolve="tail" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVknj" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPKP" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4$OyT8ISnx6" role="3cqZAp" />
          <node concept="3SKdUt" id="4$OyT8ISnx7" role="3cqZAp">
            <node concept="3SKdUq" id="4$OyT8ISnx8" role="3SKWNk">
              <property role="3SKdUp" value="single node" />
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8ISnx9" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8ISnxa" role="3vwVQn">
              <node concept="2OqwBi" id="4$OyT8ISnxb" role="2Oq$k0">
                <node concept="2YIFZM" id="4$OyT8ISnxc" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="4$OyT8ISnxd" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8ISnxe" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznHV5" resolve="ask" />
                <node concept="10M0yZ" id="4$OyT8ISnxf" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="1oi1Uc" id="4$OyT8ISnxg" role="37wK5m">
                  <node concept="1oi5UN" id="4$OyT8ISnxh" role="1oi0x0">
                    <node concept="1oi5Wm" id="4$OyT8ITRPO" role="1ojpOf">
                      <property role="TrG5h" value="foo" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4$OyT8ITJQQ" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8ISnwx" resolve="head" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4$OyT8ISnxo" role="3cqZAp" />
          <node concept="3vwNmj" id="4$OyT8ISnxp" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8ISnxq" role="3vwVQn">
              <node concept="2OqwBi" id="4$OyT8ISnxr" role="2Oq$k0">
                <node concept="2YIFZM" id="4$OyT8ISnxs" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="4$OyT8ISnxt" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8ISnxu" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznHV5" resolve="ask" />
                <node concept="10M0yZ" id="4$OyT8ISnxv" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="1oi1Uc" id="4$OyT8ISnxw" role="37wK5m">
                  <node concept="KCUsM" id="4$OyT8ISWUk" role="1oi0x0">
                    <node concept="1oi5UN" id="4$OyT8ISXyO" role="KCVpo">
                      <node concept="1oi5Wm" id="4$OyT8ISXyP" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                      </node>
                    </node>
                    <node concept="1oi5UN" id="4$OyT8ISXyQ" role="KCVpo">
                      <node concept="1oi5Wm" id="4$OyT8ISXyR" role="1ojpOf">
                        <property role="TrG5h" value="baz" />
                      </node>
                    </node>
                    <node concept="1oi5UN" id="4$OyT8ISXyS" role="KCVpo">
                      <node concept="1oi5Wm" id="4$OyT8ISXyT" role="1ojpOf">
                        <property role="TrG5h" value="qux" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1oi1Uc" id="4$OyT8ISnx$" role="37wK5m">
                  <node concept="1oi5UN" id="4$OyT8ISnx_" role="1oi0x0">
                    <node concept="22Ky0T" id="4$OyT8ISnxA" role="lGtFl">
                      <node concept="37vLTw" id="4$OyT8ISnxB" role="22Ky0K">
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="4$OyT8ITVL8" role="33vP2m">
                <node concept="KCUsM" id="4$OyT8ITVL9" role="1oi0x0">
                  <node concept="1oi5UN" id="4$OyT8ITVLa" role="KCVpo">
                    <node concept="1oi5Wm" id="4$OyT8ITVLb" role="1ojpOf">
                      <property role="TrG5h" value="foo" />
                    </node>
                  </node>
                  <node concept="1oi5UN" id="4$OyT8ITVLc" role="KCVpo">
                    <node concept="1oi5Wm" id="4$OyT8ITVLd" role="1ojpOf">
                      <property role="TrG5h" value="bar" />
                    </node>
                  </node>
                  <node concept="1oi5UN" id="4$OyT8ITVLe" role="KCVpo">
                    <node concept="1oi5Wm" id="4$OyT8ITVLf" role="1ojpOf">
                      <property role="TrG5h" value="baz" />
                    </node>
                  </node>
                  <node concept="1oi5UN" id="4$OyT8ITVLg" role="KCVpo">
                    <node concept="1oi5Wm" id="4$OyT8ITVLh" role="1ojpOf">
                      <property role="TrG5h" value="qux" />
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="4$OyT8ITVLq" role="33vP2m">
                <ref role="37wK5l" node="4$OyT8ITrpL" resolve="listVar" />
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
                <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="4$OyT8IUcum" role="33vP2m">
                <ref role="37wK5l" node="4$OyT8ITrpL" resolve="listVar" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="4$OyT8ITVLv" role="33vP2m">
                <node concept="KCUsM" id="4$OyT8ITVLw" role="1oi0x0">
                  <node concept="1oi5UN" id="4$OyT8IUqH1" role="KCVpo">
                    <node concept="22Ky0T" id="4$OyT8IUrr1" role="lGtFl">
                      <node concept="1rXfSq" id="4$OyT8IUs9O" role="22Ky0K">
                        <ref role="37wK5l" node="5cGCTtq$bC0" resolve="wildcard" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="4$OyT8IUeDv" role="33vP2m">
                <node concept="KCUsM" id="4$OyT8IUeDw" role="1oi0x0">
                  <node concept="1oi5UN" id="4$OyT8IUuji" role="KCVpo">
                    <node concept="22Ky0T" id="4$OyT8IUv16" role="lGtFl">
                      <node concept="1rXfSq" id="4$OyT8IUvK0" role="22Ky0K">
                        <ref role="37wK5l" node="5cGCTtq$bC0" resolve="wildcard" />
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
          <node concept="3clFbF" id="4$OyT8ITVLC" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8ITVLD" role="3clFbG">
              <node concept="2OqwBi" id="4$OyT8ITVLE" role="2Oq$k0">
                <node concept="2YIFZM" id="4$OyT8ITVLF" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="4$OyT8ITVLG" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8ITVLH" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
                <node concept="10M0yZ" id="4$OyT8ITVLI" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="4$OyT8ITVLJ" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8ITVL6" resolve="list1" />
                </node>
                <node concept="37vLTw" id="4$OyT8ITVLK" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8ITVLt" resolve="pattern1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IV7Cd" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVc8Q" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVaFl" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogical" />
                <node concept="37vLTw" id="4$OyT8IVbqf" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8ITVLo" resolve="tail1" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVcT8" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPKP" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4$OyT8IUgPV" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IUgPW" role="3clFbG">
              <node concept="2OqwBi" id="4$OyT8IUgPX" role="2Oq$k0">
                <node concept="2YIFZM" id="4$OyT8IUgPY" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="4$OyT8IUgPZ" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IUgQ0" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
                <node concept="10M0yZ" id="4$OyT8IUgQ1" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="37vLTw" id="3L9quO9YXBu" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8ITVLo" resolve="tail1" />
                </node>
                <node concept="37vLTw" id="4$OyT8IUimL" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8IUeDt" resolve="pattern2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="4$OyT8IVdCc" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8IVdCd" role="3vwVQn">
              <node concept="1rXfSq" id="4$OyT8IVdCe" role="2Oq$k0">
                <ref role="37wK5l" node="1OShD0IfETi" resolve="asLogical" />
                <node concept="37vLTw" id="4$OyT8IVfaw" role="37wK5m">
                  <ref role="3cqZAo" node="4$OyT8IUcuk" resolve="tail2" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8IVdCg" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPKP" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4$OyT8ITVLL" role="3cqZAp" />
          <node concept="3vwNmj" id="4$OyT8ITVM0" role="3cqZAp">
            <node concept="2OqwBi" id="4$OyT8ITVM1" role="3vwVQn">
              <node concept="2OqwBi" id="4$OyT8ITVM2" role="2Oq$k0">
                <node concept="2YIFZM" id="4$OyT8ITVM3" role="2Oq$k0">
                  <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwt5n" resolve="current" />
                </node>
                <node concept="liA8E" id="4$OyT8ITVM4" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7ClOzA" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="4$OyT8ITVM5" role="2OqNvi">
                <ref role="37wK5l" to="qrld:4xBopTznHV5" resolve="ask" />
                <node concept="10M0yZ" id="4$OyT8ITVM6" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
                <node concept="1oi1Uc" id="4$OyT8ITVM7" role="37wK5m">
                  <node concept="KCUsM" id="4$OyT8ITVM8" role="1oi0x0">
                    <node concept="1oi5UN" id="4$OyT8ITVMb" role="KCVpo">
                      <node concept="1oi5Wm" id="4$OyT8ITVMc" role="1ojpOf">
                        <property role="TrG5h" value="baz" />
                      </node>
                    </node>
                    <node concept="1oi5UN" id="4$OyT8ITVMd" role="KCVpo">
                      <node concept="1oi5Wm" id="4$OyT8ITVMe" role="1ojpOf">
                        <property role="TrG5h" value="qux" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1oi1Uc" id="4$OyT8ITVMf" role="37wK5m">
                  <node concept="1oi5UN" id="4$OyT8ITVMg" role="1oi0x0">
                    <node concept="22Ky0T" id="4$OyT8ITVMh" role="lGtFl">
                      <node concept="37vLTw" id="4$OyT8IUlja" role="22Ky0K">
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
        <node concept="3clFbF" id="5jPBdK_uPf" role="3cqZAp">
          <node concept="2YIFZM" id="5jPBdK_uPM" role="3clFbG">
            <ref role="1Pybhc" node="5jPBdK_dIS" resolve="TestingEvaluationSession" />
            <ref role="37wK5l" node="7ISVfSIf0j" resolve="init" />
          </node>
        </node>
        <node concept="3clFbH" id="5jPBdK_uQ_" role="3cqZAp" />
        <node concept="3clFbF" id="5jPBdK_uRs" role="3cqZAp">
          <node concept="2OqwBi" id="5jPBdK_uYD" role="3clFbG">
            <node concept="2OqwBi" id="5jPBdK_uUg" role="2Oq$k0">
              <node concept="2YIFZM" id="5jPBdK_uTI" role="2Oq$k0">
                <ref role="37wK5l" to="qrld:7ISVfSIwfH" resolve="newSession" />
                <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                <node concept="10Nm6u" id="6X5F0NgIqiP" role="37wK5m" />
              </node>
              <node concept="liA8E" id="5jPBdK_uVI" role="2OqNvi">
                <ref role="37wK5l" to="qrld:5uFPQ7Bwu9Q" resolve="withPredicates" />
                <node concept="10M0yZ" id="5jPBdK_uXa" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C23RV" resolve="EQ_SYM" />
                  <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
                </node>
                <node concept="10M0yZ" id="5jPBdK_uXd" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5jPBdK_v1h" role="2OqNvi">
              <ref role="37wK5l" to="qrld:2UGjFq4L12E" resolve="start" />
              <node concept="10Nm6u" id="2UGjFq4LcSH" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KhZuU" id="5jPBdKNDUW" role="1KhZu3">
      <node concept="3clFbS" id="5jPBdKNDUX" role="2VODD2">
        <node concept="3clFbF" id="5jPBdK_M6G" role="3cqZAp">
          <node concept="2YIFZM" id="5jPBdK_M7s" role="3clFbG">
            <ref role="37wK5l" node="5jPBdK_KqB" resolve="deinit" />
            <ref role="1Pybhc" node="5jPBdK_dIS" resolve="TestingEvaluationSession" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3s_ewN" id="3K_0akS$KOB">
    <property role="3s_ewP" value="UniEqSolverCommute" />
    <node concept="312cEg" id="3K_0akS$LOh" role="jymVt">
      <property role="TrG5h" value="constraintSystem" />
      <node concept="3Tm6S6" id="3K_0akS$LOi" role="1B3o_S" />
      <node concept="3uibUv" id="3K_0akS$LOj" role="1tU5fm">
        <ref role="3uigEE" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
      </node>
    </node>
    <node concept="312cEg" id="3K_0akS$LOk" role="jymVt">
      <property role="TrG5h" value="unificationSolver" />
      <node concept="3Tm6S6" id="3K_0akS$LOl" role="1B3o_S" />
      <node concept="3uibUv" id="3K_0akS$LOm" role="1tU5fm">
        <ref role="3uigEE" to="95zw:6njqcfQVO0n" resolve="JchrUnificationSolver" />
      </node>
    </node>
    <node concept="312cEg" id="3K_0akS$Mx8" role="jymVt">
      <property role="TrG5h" value="eqSolver" />
      <node concept="3Tm6S6" id="3K_0akS$Mx6" role="1B3o_S" />
      <node concept="3uibUv" id="6MYr6JwZKR$" role="1tU5fm">
        <ref role="3uigEE" to="95zw:3HJTsBn4mEA" resolve="JchrEqualsSolver" />
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
        <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm6S6" id="3K_0akS$LQo" role="1B3o_S" />
      <node concept="3clFbS" id="3K_0akS$LQp" role="3clF47">
        <node concept="3clFbF" id="3K_0akS$LQq" role="3cqZAp">
          <node concept="10QFUN" id="3K_0akS$LQr" role="3clFbG">
            <node concept="3uibUv" id="3K_0akS$LQx" role="10QFUM">
              <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
            </node>
            <node concept="2YIFZM" id="3mz2_dYuFY1" role="10QFUP">
              <ref role="37wK5l" to="yg8f:4TCblo5YI1H" resolve="asAtom" />
              <ref role="1Pybhc" to="yg8f:677NV565N1x" resolve="LogicalUtil" />
              <node concept="2ShNRf" id="3K_0akS$LQt" role="37wK5m">
                <node concept="1pGfFk" id="3K_0akS$LQu" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="AtomLogical" />
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
      <node concept="3uibUv" id="3K_0akS$NJg" role="3clF45">
        <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
      </node>
      <node concept="3Tm1VV" id="3K_0akS$NEd" role="1B3o_S" />
      <node concept="3clFbS" id="3K_0akS$NEe" role="3clF47">
        <node concept="3clFbF" id="3K_0akS$NJW" role="3cqZAp">
          <node concept="2ShNRf" id="3K_0akS$NJY" role="3clFbG">
            <node concept="1pGfFk" id="3K_0akS$NJZ" role="2ShVmc">
              <ref role="37wK5l" to="oy3s:6SkxsM$96Z2" resolve="AtomLogical" />
              <node concept="37vLTw" id="3K_0akS$NK0" role="37wK5m">
                <ref role="3cqZAo" node="3K_0akS$NJK" resolve="name" />
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
              <node concept="3uibUv" id="3K_0akS$NRp" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
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
              <node concept="3uibUv" id="3K_0akS$O0Y" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="1rXfSq" id="3K_0akS$O12" role="33vP2m">
                <ref role="37wK5l" node="3K_0akS$NEa" resolve="logical" />
                <node concept="Xl_RD" id="3K_0akS$O13" role="37wK5m">
                  <property role="Xl_RC" value="Y1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS_e8b" role="3cqZAp" />
          <node concept="3cpWs8" id="3K_0akS_eya" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS_eyb" role="3cpWs9">
              <property role="TrG5h" value="bar" />
              <node concept="3uibUv" id="3K_0akS_ey9" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="37wK5l" to="95zw:4U_yxogCdjW" resolve="tellUni" />
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
                <ref role="37wK5l" to="95zw:4U_yxogCe_U" resolve="tellUni" />
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
              <node concept="3uibUv" id="3K_0akS$OxI" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2OqwBi" id="3mz2_dYrb1a" role="33vP2m">
                <node concept="1rXfSq" id="3K_0akS$OxM" role="2Oq$k0">
                  <ref role="37wK5l" node="3K_0akS$NEa" resolve="logical" />
                  <node concept="Xl_RD" id="3K_0akS$OxN" role="37wK5m">
                    <property role="Xl_RC" value="W1" />
                  </node>
                </node>
                <node concept="liA8E" id="3mz2_dYrbe2" role="2OqNvi">
                  <ref role="37wK5l" to="oy3s:3mz2_dYqEdN" resolve="withMeta" />
                  <node concept="2ShNRf" id="3mz2_dYrbhD" role="37wK5m">
                    <node concept="1pGfFk" id="3mz2_dYrb$g" role="2ShVmc">
                      <ref role="37wK5l" to="45ys:7nPD14NON$Y" resolve="MetaLogical" />
                      <node concept="3VsKOn" id="3mz2_dYrbGJ" role="37wK5m">
                        <ref role="3VsUkX" to="ie8e:5JQSuNswOXL" resolve="StemFunc" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS$OXy" role="3cqZAp" />
          <node concept="3clFbF" id="3K_0akS$OJB" role="3cqZAp">
            <node concept="2OqwBi" id="3K_0akS$OQN" role="3clFbG">
              <node concept="37vLTw" id="3K_0akS$OJ_" role="2Oq$k0">
                <ref role="3cqZAo" node="3K_0akS$Mx8" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="3K_0akS$OWu" role="2OqNvi">
                <ref role="37wK5l" to="95zw:3HJTsBn4xBY" resolve="tellEq" />
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
              <node concept="3uibUv" id="3K_0akS_bIs" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="1rXfSq" id="3K_0akS_bIw" role="33vP2m">
                <ref role="37wK5l" node="3K_0akS$NEa" resolve="logical" />
                <node concept="Xl_RD" id="3K_0akS_bIx" role="37wK5m">
                  <property role="Xl_RC" value="P1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS$OFn" role="3cqZAp" />
          <node concept="3cpWs8" id="3K_0akS_6Q6" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS_6Q7" role="3cpWs9">
              <property role="TrG5h" value="foo" />
              <node concept="3uibUv" id="3K_0akS_6Q5" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3K_0akS_6Q8" role="33vP2m">
                <node concept="1oi5UN" id="3K_0akS_6Q9" role="1oi0x0">
                  <node concept="1oi5Wm" id="3K_0akS_6Qa" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3K_0akS_6Qb" role="1oi5zu">
                      <property role="1oi5yK" value="Foo" />
                    </node>
                  </node>
                  <node concept="1oi5ST" id="3K_0akS_c2G" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="3K_0akS_c2N" role="1oi5TL">
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
                <ref role="37wK5l" to="95zw:4U_yxogCdjW" resolve="tellUni" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="2OqwBi" id="6HT7BWBPd0U" role="33vP2m">
                <node concept="2OqwBi" id="6HT7BWBPd0V" role="2Oq$k0">
                  <node concept="37vLTw" id="6HT7BWBPd0W" role="2Oq$k0">
                    <ref role="3cqZAo" node="3K_0akS_bIv" resolve="p1" />
                  </node>
                  <node concept="liA8E" id="6HT7BWBPd0X" role="2OqNvi">
                    <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                  </node>
                </node>
                <node concept="liA8E" id="6HT7BWBPd0Y" role="2OqNvi">
                  <ref role="37wK5l" to="95zw:3HJTsBmBZ0h" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6HT7BWBPed7" role="3cqZAp">
            <node concept="37vLTI" id="6HT7BWBPeDD" role="3clFbG">
              <node concept="2YIFZM" id="6HT7BWBPf0v" role="37vLTx">
                <ref role="37wK5l" to="ie8e:6HT7BWBOXr$" resolve="ground" />
                <ref role="1Pybhc" to="ie8e:6HT7BWBOXme" resolve="AtomUtil" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="2OqwBi" id="3t7_2FgLmht" role="33vP2m">
                <node concept="2OqwBi" id="3t7_2FgLmhu" role="2Oq$k0">
                  <node concept="2OqwBi" id="3t7_2FgLmhv" role="2Oq$k0">
                    <node concept="1eOMI4" id="3t7_2FgLmhw" role="2Oq$k0">
                      <node concept="10QFUN" id="3t7_2FgLmhx" role="1eOMHV">
                        <node concept="3uibUv" id="3t7_2FgLmhy" role="10QFUM">
                          <ref role="3uigEE" to="ie8e:1msb0mq9ID4" resolve="Func" />
                        </node>
                        <node concept="37vLTw" id="3t7_2FgLmhz" role="10QFUP">
                          <ref role="3cqZAo" node="5YIOneOTrto" resolve="next" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3t7_2FgLmh$" role="2OqNvi">
                      <ref role="37wK5l" to="ie8e:5JQSuNswjSg" resolve="arguments" />
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
                <ref role="37wK5l" to="ie8e:2QE4RCGndD7" resolve="asRoot" />
              </node>
              <node concept="2OqwBi" id="3t7_2FgLjnf" role="2Oq$k0">
                <node concept="2OqwBi" id="3t7_2FgLjng" role="2Oq$k0">
                  <node concept="1eOMI4" id="3t7_2FgLnID" role="2Oq$k0">
                    <node concept="10QFUN" id="3t7_2FgLnIE" role="1eOMHV">
                      <node concept="3uibUv" id="3t7_2FgLnIF" role="10QFUM">
                        <ref role="3uigEE" to="ie8e:3OPtF03lco4" resolve="ListFunc" />
                      </node>
                      <node concept="37vLTw" id="3t7_2FgLnIG" role="10QFUP">
                        <ref role="3cqZAo" node="3t7_2FgLmhr" resolve="list" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3t7_2FgLjni" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:5YIOneOT0Zn" resolve="contents" />
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
        <property role="3s$Bm0" value="eq_the_uni" />
        <node concept="3cqZAl" id="3K_0akS_pCw" role="3clF45" />
        <node concept="3Tm1VV" id="3K_0akS_pCx" role="1B3o_S" />
        <node concept="3clFbS" id="3K_0akS_pCy" role="3clF47">
          <node concept="3clFbH" id="3K_0akS_pCz" role="3cqZAp" />
          <node concept="3cpWs8" id="3K_0akS_pC$" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS_pC_" role="3cpWs9">
              <property role="TrG5h" value="x1" />
              <node concept="3uibUv" id="3K_0akS_pCA" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="1rXfSq" id="3K_0akS_pCB" role="33vP2m">
                <ref role="37wK5l" node="3K_0akS$NEa" resolve="logical" />
                <node concept="Xl_RD" id="3K_0akS_pCC" role="37wK5m">
                  <property role="Xl_RC" value="X1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3K_0akS_pCD" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS_pCE" role="3cpWs9">
              <property role="TrG5h" value="y1" />
              <node concept="3uibUv" id="3K_0akS_pCF" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="1rXfSq" id="3K_0akS_pCG" role="33vP2m">
                <ref role="37wK5l" node="3K_0akS$NEa" resolve="logical" />
                <node concept="Xl_RD" id="3K_0akS_pCH" role="37wK5m">
                  <property role="Xl_RC" value="Y1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS_pCI" role="3cqZAp" />
          <node concept="3cpWs8" id="3K_0akS_pCJ" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS_pCK" role="3cpWs9">
              <property role="TrG5h" value="bar" />
              <node concept="3uibUv" id="3K_0akS_pCL" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
                <ref role="37wK5l" to="95zw:4U_yxogCdjW" resolve="tellUni" />
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
              <node concept="3uibUv" id="3K_0akS_pD6" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2OqwBi" id="3mz2_dYr7zp" role="33vP2m">
                <node concept="1rXfSq" id="3K_0akS_pD7" role="2Oq$k0">
                  <ref role="37wK5l" node="3K_0akS$NEa" resolve="logical" />
                  <node concept="Xl_RD" id="3K_0akS_pD8" role="37wK5m">
                    <property role="Xl_RC" value="W1" />
                  </node>
                </node>
                <node concept="liA8E" id="3mz2_dYr7Kp" role="2OqNvi">
                  <ref role="37wK5l" to="oy3s:3mz2_dYqEdN" resolve="withMeta" />
                  <node concept="2ShNRf" id="3mz2_dYr7NZ" role="37wK5m">
                    <node concept="1pGfFk" id="3mz2_dYr86A" role="2ShVmc">
                      <ref role="37wK5l" to="45ys:7nPD14NON$Y" resolve="MetaLogical" />
                      <node concept="3VsKOn" id="3mz2_dYr8bR" role="37wK5m">
                        <ref role="3VsUkX" to="ie8e:5JQSuNswOXL" resolve="StemFunc" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS_pD9" role="3cqZAp" />
          <node concept="3clFbF" id="3K_0akS_pDa" role="3cqZAp">
            <node concept="2OqwBi" id="3K_0akS_pDb" role="3clFbG">
              <node concept="37vLTw" id="3K_0akS_pDc" role="2Oq$k0">
                <ref role="3cqZAo" node="3K_0akS$Mx8" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="3K_0akS_pDd" role="2OqNvi">
                <ref role="37wK5l" to="95zw:3HJTsBn4xBY" resolve="tellEq" />
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
              <node concept="3uibUv" id="3K_0akS_pDj" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="1rXfSq" id="3K_0akS_pDk" role="33vP2m">
                <ref role="37wK5l" node="3K_0akS$NEa" resolve="logical" />
                <node concept="Xl_RD" id="3K_0akS_pDl" role="37wK5m">
                  <property role="Xl_RC" value="P1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3K_0akS_pDm" role="3cqZAp" />
          <node concept="3cpWs8" id="3K_0akS_pDn" role="3cqZAp">
            <node concept="3cpWsn" id="3K_0akS_pDo" role="3cpWs9">
              <property role="TrG5h" value="foo" />
              <node concept="3uibUv" id="3K_0akS_pDp" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3K_0akS_pDq" role="33vP2m">
                <node concept="1oi5UN" id="3K_0akS_pDr" role="1oi0x0">
                  <node concept="1oi5Wm" id="3K_0akS_pDs" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="3K_0akS_pDt" role="1oi5zu">
                      <property role="1oi5yK" value="Foo" />
                    </node>
                  </node>
                  <node concept="1oi5ST" id="3K_0akS_pDu" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="KCUsM" id="3K_0akS_pDv" role="1oi5TL">
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
                <ref role="37wK5l" to="95zw:4U_yxogCdjW" resolve="tellUni" />
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
                <ref role="37wK5l" to="95zw:4U_yxogCe_U" resolve="tellUni" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="2OqwBi" id="6HT7BWBPhwN" role="33vP2m">
                <node concept="2OqwBi" id="6HT7BWBPhwO" role="2Oq$k0">
                  <node concept="37vLTw" id="6HT7BWBPhwP" role="2Oq$k0">
                    <ref role="3cqZAo" node="3K_0akS_pDi" resolve="p1" />
                  </node>
                  <node concept="liA8E" id="6HT7BWBPhwQ" role="2OqNvi">
                    <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                  </node>
                </node>
                <node concept="liA8E" id="6HT7BWBPhwR" role="2OqNvi">
                  <ref role="37wK5l" to="95zw:3HJTsBmBZ0h" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6HT7BWBPidq" role="3cqZAp">
            <node concept="37vLTI" id="6HT7BWBPiGd" role="3clFbG">
              <node concept="2YIFZM" id="6HT7BWBPj3B" role="37vLTx">
                <ref role="37wK5l" to="ie8e:6HT7BWBOXr$" resolve="ground" />
                <ref role="1Pybhc" to="ie8e:6HT7BWBOXme" resolve="AtomUtil" />
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
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="2OqwBi" id="3t7_2FgLnZA" role="33vP2m">
                <node concept="2OqwBi" id="3t7_2FgLnZB" role="2Oq$k0">
                  <node concept="2OqwBi" id="3t7_2FgLnZC" role="2Oq$k0">
                    <node concept="1eOMI4" id="3t7_2FgLnZD" role="2Oq$k0">
                      <node concept="10QFUN" id="3t7_2FgLnZE" role="1eOMHV">
                        <node concept="3uibUv" id="3t7_2FgLnZF" role="10QFUM">
                          <ref role="3uigEE" to="ie8e:1msb0mq9ID4" resolve="Func" />
                        </node>
                        <node concept="37vLTw" id="3t7_2FgLnZG" role="10QFUP">
                          <ref role="3cqZAo" node="5YIOneOTmzN" resolve="next" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3t7_2FgLnZH" role="2OqNvi">
                      <ref role="37wK5l" to="ie8e:5JQSuNswjSg" resolve="arguments" />
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
                <ref role="37wK5l" to="ie8e:2QE4RCGndD7" resolve="asRoot" />
              </node>
              <node concept="2OqwBi" id="3t7_2FgLgpZ" role="2Oq$k0">
                <node concept="2OqwBi" id="3t7_2FgLgiw" role="2Oq$k0">
                  <node concept="1eOMI4" id="3t7_2FgLoIi" role="2Oq$k0">
                    <node concept="10QFUN" id="3t7_2FgLoIj" role="1eOMHV">
                      <node concept="3uibUv" id="3t7_2FgLoIk" role="10QFUM">
                        <ref role="3uigEE" to="ie8e:3OPtF03lco4" resolve="ListFunc" />
                      </node>
                      <node concept="37vLTw" id="3t7_2FgLoIl" role="10QFUP">
                        <ref role="3cqZAo" node="3t7_2FgLnZ$" resolve="list" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3t7_2FgLgmc" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:5YIOneOT0Zn" resolve="contents" />
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
        <node concept="3clFbF" id="3K_0akS$LUs" role="3cqZAp">
          <node concept="37vLTI" id="3K_0akS$LUt" role="3clFbG">
            <node concept="37vLTw" id="3K_0akS$LUu" role="37vLTJ">
              <ref role="3cqZAo" node="3K_0akS$LOh" resolve="constraintSystem" />
            </node>
            <node concept="2ShNRf" id="3K_0akS$LUv" role="37vLTx">
              <node concept="1pGfFk" id="3K_0akS$LUw" role="2ShVmc">
                <ref role="37wK5l" to="eifs:~ConstraintSystem.&lt;init&gt;()" resolve="ConstraintSystem" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3K_0akS$LUx" role="3cqZAp">
          <node concept="2OqwBi" id="3K_0akS$LUy" role="3clFbG">
            <node concept="37vLTw" id="3K_0akS$LUz" role="2Oq$k0">
              <ref role="3cqZAo" node="3K_0akS$LOh" resolve="constraintSystem" />
            </node>
            <node concept="liA8E" id="3K_0akS$LU$" role="2OqNvi">
              <ref role="37wK5l" to="eifs:~ConstraintSystem.setQueuing(boolean):void" resolve="setQueuing" />
              <node concept="3clFbT" id="3K_0akS$LU_" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2tcGHBEi$8m" role="3cqZAp">
          <node concept="3cpWsn" id="2tcGHBEi$8n" role="3cpWs9">
            <property role="TrG5h" value="symbols" />
            <node concept="3uibUv" id="2tcGHBEi$8k" role="1tU5fm">
              <ref role="3uigEE" to="95zw:7ISVfSIxNO" resolve="JchrSessionSolver" />
            </node>
            <node concept="2ShNRf" id="2tcGHBEi$8o" role="33vP2m">
              <node concept="1pGfFk" id="1ggxSI7$PyQ" role="2ShVmc">
                <ref role="37wK5l" to="95zw:6MYr6Jwp62r" resolve="JchrSessionSolver" />
                <node concept="37vLTw" id="6MYr6Jwovf7" role="37wK5m">
                  <ref role="3cqZAo" node="3K_0akS$LOh" resolve="constraintSystem" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tcGHBEi$gx" role="3cqZAp">
          <node concept="2OqwBi" id="2tcGHBEi$kw" role="3clFbG">
            <node concept="37vLTw" id="2tcGHBEi$gv" role="2Oq$k0">
              <ref role="3cqZAo" node="2tcGHBEi$8n" resolve="symbols" />
            </node>
            <node concept="liA8E" id="2tcGHBEi$nn" role="2OqNvi">
              <ref role="37wK5l" to="qrld:2tcGHBEeol1" resolve="init" />
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
        <node concept="3SKdUt" id="2tcGHBEi$_e" role="3cqZAp">
          <node concept="3SKdUq" id="2tcGHBEi$_g" role="3SKWNk">
            <property role="3SKdUp" value="TODO: why create new solvers?" />
          </node>
        </node>
        <node concept="3clFbF" id="3K_0akS$LUA" role="3cqZAp">
          <node concept="37vLTI" id="3K_0akS$LUB" role="3clFbG">
            <node concept="2ShNRf" id="3K_0akS$LUC" role="37vLTx">
              <node concept="1pGfFk" id="3K_0akS$LUD" role="2ShVmc">
                <ref role="37wK5l" to="95zw:6MYr6JwUN9q" resolve="JchrUnificationSolverImpl" />
                <node concept="37vLTw" id="2tcGHBEi$vU" role="37wK5m">
                  <ref role="3cqZAo" node="2tcGHBEi$8n" resolve="symbols" />
                </node>
                <node concept="10Nm6u" id="5uFPQ7CmmD4" role="37wK5m" />
              </node>
            </node>
            <node concept="37vLTw" id="3K_0akS$LUF" role="37vLTJ">
              <ref role="3cqZAo" node="3K_0akS$LOk" resolve="unificationSolver" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3K_0akS$Mxh" role="3cqZAp">
          <node concept="37vLTI" id="3K_0akS$Mxi" role="3clFbG">
            <node concept="2ShNRf" id="3K_0akS$Mxm" role="37vLTx">
              <node concept="1pGfFk" id="3K_0akS$Mxn" role="2ShVmc">
                <ref role="37wK5l" to="95zw:6MYr6JwUnSg" resolve="JchrEqualsSolverImpl" />
                <node concept="37vLTw" id="2tcGHBEi$8q" role="37wK5m">
                  <ref role="3cqZAo" node="2tcGHBEi$8n" resolve="symbols" />
                </node>
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
  <node concept="312cEu" id="5jPBdK_dIS">
    <property role="TrG5h" value="TestingEvaluationSession" />
    <node concept="2tJIrI" id="5jPBdK_KTs" role="jymVt" />
    <node concept="Wx3nA" id="5jPBdK_KfB" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ourBackend" />
      <node concept="3Tm6S6" id="5jPBdK_Kfz" role="1B3o_S" />
      <node concept="3uibUv" id="5jPBdK_Kf$" role="1tU5fm">
        <ref role="3uigEE" node="5jPBdK_dKd" resolve="TestingEvaluationSession.Backend" />
      </node>
      <node concept="2ShNRf" id="5jPBdK_Kf_" role="33vP2m">
        <node concept="HV5vD" id="5jPBdK_KfA" role="2ShVmc">
          <ref role="HV5vE" node="5jPBdK_dKd" resolve="TestingEvaluationSession.Backend" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jPBdK_s6v" role="jymVt" />
    <node concept="Wx3nA" id="5jPBdK_nJi" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <node concept="3Tm6S6" id="5jPBdK_nJk" role="1B3o_S" />
      <node concept="3uibUv" id="5jPBdK_nNn" role="1tU5fm">
        <ref role="3uigEE" node="5jPBdK_dIS" resolve="TestingEvaluationSession" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jPBdK_nzw" role="jymVt" />
    <node concept="2YIFZL" id="7ISVfSIf0j" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3cqZAl" id="7ISVfSIf0l" role="3clF45" />
      <node concept="3Tm1VV" id="7ISVfSIf0m" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSIf0n" role="3clF47">
        <node concept="3clFbF" id="7ISVfSIf2T" role="3cqZAp">
          <node concept="2YIFZM" id="7ISVfSIf4g" role="3clFbG">
            <ref role="37wK5l" to="qrld:5uFPQ7Bwt$y" resolve="setBackend" />
            <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
            <node concept="37vLTw" id="5jPBdK_KfE" role="37wK5m">
              <ref role="3cqZAo" node="5jPBdK_KfB" resolve="ourBackend" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jPBdK_KJw" role="jymVt" />
    <node concept="2YIFZL" id="5jPBdK_KqB" role="jymVt">
      <property role="TrG5h" value="deinit" />
      <node concept="3cqZAl" id="5jPBdK_KqC" role="3clF45" />
      <node concept="3Tm1VV" id="5jPBdK_KqD" role="1B3o_S" />
      <node concept="3clFbS" id="5jPBdK_KqE" role="3clF47">
        <node concept="3clFbF" id="5jPBdK_KqF" role="3cqZAp">
          <node concept="2YIFZM" id="5jPBdK_KEq" role="3clFbG">
            <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
            <ref role="37wK5l" to="qrld:5jPBdK_JeZ" resolve="clearBackend" />
            <node concept="37vLTw" id="5jPBdK_KEr" role="37wK5m">
              <ref role="3cqZAo" node="5jPBdK_KfB" resolve="ourBackend" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jPBdK_NAE" role="3cqZAp">
          <node concept="37vLTI" id="5jPBdK_NDg" role="3clFbG">
            <node concept="10Nm6u" id="5jPBdK_NDW" role="37vLTx" />
            <node concept="37vLTw" id="5jPBdK_NAC" role="37vLTJ">
              <ref role="3cqZAo" node="5jPBdK_nJi" resolve="INSTANCE" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jPBdK_dK1" role="jymVt" />
    <node concept="3clFbW" id="5jPBdK_qM0" role="jymVt">
      <node concept="3cqZAl" id="5jPBdK_qM2" role="3clF45" />
      <node concept="3Tm6S6" id="5jPBdK_rSe" role="1B3o_S" />
      <node concept="3clFbS" id="5jPBdK_qM4" role="3clF47">
        <node concept="3clFbF" id="5jPBdK_qYH" role="3cqZAp">
          <node concept="37vLTI" id="5jPBdK_qYJ" role="3clFbG">
            <node concept="2OqwBi" id="5jPBdK_qYN" role="37vLTJ">
              <node concept="Xjq3P" id="5jPBdK_qYQ" role="2Oq$k0" />
              <node concept="2OwXpG" id="5jPBdK_qYM" role="2OqNvi">
                <ref role="2Oxat5" node="5jPBdK_qYD" resolve="sessionSolver" />
              </node>
            </node>
            <node concept="37vLTw" id="5jPBdK_qYR" role="37vLTx">
              <ref role="3cqZAo" node="5jPBdK_qV5" resolve="sessionSolver" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5jPBdK_qV5" role="3clF46">
        <property role="TrG5h" value="sessionSolver" />
        <node concept="3uibUv" id="5jPBdK_qV4" role="1tU5fm">
          <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jPBdK_qFR" role="jymVt" />
    <node concept="3clFb_" id="5jPBdK_dWA" role="jymVt">
      <property role="TrG5h" value="sessionSolver" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="5jPBdK_dWB" role="3clF45">
        <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
      </node>
      <node concept="3Tm1VV" id="5jPBdK_dWC" role="1B3o_S" />
      <node concept="3clFbS" id="5jPBdK_dWE" role="3clF47">
        <node concept="3clFbF" id="5jPBdK_r6i" role="3cqZAp">
          <node concept="37vLTw" id="5jPBdK_r6h" role="3clFbG">
            <ref role="3cqZAo" node="5jPBdK_qYD" resolve="sessionSolver" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tcGHBEzo4L" role="jymVt" />
    <node concept="3clFb_" id="5jPBdK_dX1" role="jymVt">
      <property role="TrG5h" value="constraintSymbols" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="5jPBdK_dX2" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5jPBdK_dX3" role="11_B2D">
          <ref role="3uigEE" to="rchb:54i3FxcZHHF" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5jPBdK_dX4" role="1B3o_S" />
      <node concept="3clFbS" id="5jPBdK_dX6" role="3clF47">
        <node concept="3clFbF" id="5jPBdK_dX8" role="3cqZAp">
          <node concept="10Nm6u" id="5jPBdK_dX7" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5jPBdK_dX9" role="jymVt">
      <property role="TrG5h" value="constraintOccurrences" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="5jPBdK_dXa" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5jPBdK_dXb" role="11_B2D">
          <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5jPBdK_dXc" role="1B3o_S" />
      <node concept="3clFbS" id="5jPBdK_dXe" role="3clF47">
        <node concept="3clFbF" id="5jPBdK_dXg" role="3cqZAp">
          <node concept="10Nm6u" id="5jPBdK_dXf" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5jPBdK_dXh" role="jymVt">
      <property role="TrG5h" value="constraintOccurrences" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="5jPBdK_dXi" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="5jPBdK_dXj" role="1tU5fm">
          <ref role="3uigEE" to="rchb:54i3FxcZHHF" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3uibUv" id="5jPBdK_dXk" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5jPBdK_dXl" role="11_B2D">
          <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5jPBdK_dXm" role="1B3o_S" />
      <node concept="3clFbS" id="5jPBdK_dXo" role="3clF47">
        <node concept="3clFbF" id="5jPBdK_dXq" role="3cqZAp">
          <node concept="10Nm6u" id="5jPBdK_dXp" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jPBdK_dW3" role="jymVt" />
    <node concept="312cEu" id="5jPBdK_mRo" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Config" />
      <node concept="3Tm1VV" id="5jPBdK_mRp" role="1B3o_S" />
      <node concept="3uibUv" id="5jPBdK_n1a" role="1zkMxy">
        <ref role="3uigEE" to="qrld:5uFPQ7Bwt8Z" resolve="EvaluationSession.Config" />
      </node>
      <node concept="3clFbW" id="6X5F0NgIsD1" role="jymVt">
        <node concept="37vLTG" id="6X5F0NgIsWe" role="3clF46">
          <property role="TrG5h" value="program" />
          <node concept="3uibUv" id="6X5F0NgIt0n" role="1tU5fm">
            <ref role="3uigEE" to="rchb:5uFPQ7BvNzE" resolve="Program" />
          </node>
        </node>
        <node concept="3cqZAl" id="6X5F0NgIsD3" role="3clF45" />
        <node concept="3Tm1VV" id="6X5F0NgIsD4" role="1B3o_S" />
        <node concept="3clFbS" id="6X5F0NgIsD5" role="3clF47">
          <node concept="3clFbF" id="6X5F0NgIt2U" role="3cqZAp">
            <node concept="37vLTI" id="6X5F0NgIt2W" role="3clFbG">
              <node concept="2OqwBi" id="6X5F0NgIt30" role="37vLTJ">
                <node concept="Xjq3P" id="6X5F0NgIt33" role="2Oq$k0" />
                <node concept="2OwXpG" id="6X5F0NgIt2Z" role="2OqNvi">
                  <ref role="2Oxat5" node="6X5F0NgIt2Q" resolve="program" />
                </node>
              </node>
              <node concept="37vLTw" id="6X5F0NgIt34" role="37vLTx">
                <ref role="3cqZAo" node="6X5F0NgIsWe" resolve="program" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5jPBdK_npi" role="jymVt">
        <property role="TrG5h" value="withPredicates" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="5jPBdK_npj" role="3clF46">
          <property role="TrG5h" value="predicateSymbols" />
          <node concept="8X2XB" id="5jPBdK_npk" role="1tU5fm">
            <node concept="3uibUv" id="5jPBdK_npl" role="8Xvag">
              <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="5jPBdK_npm" role="3clF45">
          <ref role="3uigEE" to="qrld:5uFPQ7Bwt8Z" resolve="EvaluationSession.Config" />
        </node>
        <node concept="3Tm1VV" id="5jPBdK_npn" role="1B3o_S" />
        <node concept="3clFbS" id="5jPBdK_npp" role="3clF47">
          <node concept="3clFbF" id="5jPBdK_qdG" role="3cqZAp">
            <node concept="37vLTI" id="5jPBdK_qdI" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdK_qdM" role="37vLTJ">
                <node concept="Xjq3P" id="5jPBdK_qdP" role="2Oq$k0" />
                <node concept="2OwXpG" id="5jPBdK_qdL" role="2OqNvi">
                  <ref role="2Oxat5" node="5jPBdK_qdB" resolve="predicateSymbols" />
                </node>
              </node>
              <node concept="37vLTw" id="5jPBdK_qdQ" role="37vLTx">
                <ref role="3cqZAo" node="5jPBdK_npj" resolve="predicateSymbols" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdK_rac" role="3cqZAp">
            <node concept="Xjq3P" id="5jPBdK_raa" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5jPBdK_nps" role="jymVt">
        <property role="TrG5h" value="withTrace" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="5jPBdK_npt" role="3clF46">
          <property role="TrG5h" value="computingTracer" />
          <node concept="3uibUv" id="5jPBdK_npu" role="1tU5fm">
            <ref role="3uigEE" to="qrld:24Vro6cQnrj" resolve="EvaluationTrace" />
          </node>
        </node>
        <node concept="3uibUv" id="5jPBdK_npv" role="3clF45">
          <ref role="3uigEE" to="qrld:5uFPQ7Bwt8Z" resolve="EvaluationSession.Config" />
        </node>
        <node concept="3Tm1VV" id="5jPBdK_npw" role="1B3o_S" />
        <node concept="3clFbS" id="5jPBdK_npy" role="3clF47">
          <node concept="3clFbF" id="5jPBdK_np$" role="3cqZAp">
            <node concept="10Nm6u" id="5jPBdK_npz" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5jPBdK_np_" role="jymVt">
        <property role="TrG5h" value="withParam" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="5jPBdK_npA" role="3clF46">
          <property role="TrG5h" value="key" />
          <node concept="17QB3L" id="5jPBdK_npB" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="5jPBdK_npC" role="3clF46">
          <property role="TrG5h" value="param" />
          <node concept="3uibUv" id="5jPBdK_npD" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3uibUv" id="5jPBdK_npE" role="3clF45">
          <ref role="3uigEE" to="qrld:5uFPQ7Bwt8Z" resolve="EvaluationSession.Config" />
        </node>
        <node concept="3Tm1VV" id="5jPBdK_npF" role="1B3o_S" />
        <node concept="3clFbS" id="5jPBdK_npH" role="3clF47">
          <node concept="3clFbF" id="5jPBdK_npJ" role="3cqZAp">
            <node concept="10Nm6u" id="5jPBdK_npI" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2UGjFq4L4SC" role="jymVt">
        <property role="TrG5h" value="start" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="2UGjFq4L4SD" role="3clF46">
          <property role="TrG5h" value="sessionSolver" />
          <node concept="3uibUv" id="2UGjFq4L4SE" role="1tU5fm">
            <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
          </node>
        </node>
        <node concept="3uibUv" id="2UGjFq4L4SF" role="3clF45">
          <ref role="3uigEE" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
        </node>
        <node concept="3Tm1VV" id="2UGjFq4L4SG" role="1B3o_S" />
        <node concept="3clFbS" id="2UGjFq4L4SI" role="3clF47">
          <node concept="3cpWs8" id="2tcGHBEewJ$" role="3cqZAp">
            <node concept="3cpWsn" id="2tcGHBEewJ_" role="3cpWs9">
              <property role="TrG5h" value="csession" />
              <node concept="3uibUv" id="2tcGHBEewJt" role="1tU5fm">
                <ref role="3uigEE" to="95zw:7ISVfSIxNO" resolve="JchrSessionSolver" />
              </node>
              <node concept="2ShNRf" id="2tcGHBEewJA" role="33vP2m">
                <node concept="1pGfFk" id="1ggxSI7$OLj" role="2ShVmc">
                  <ref role="37wK5l" to="95zw:6MYr6Jwp62r" resolve="JchrSessionSolver" />
                  <node concept="2YIFZM" id="6MYr6Jwourn" role="37wK5m">
                    <ref role="37wK5l" to="eifs:~ConstraintSystem.get():runtime.ConstraintSystem" resolve="get" />
                    <ref role="1Pybhc" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdK_B63" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdK_Bcd" role="3clFbG">
              <node concept="37vLTw" id="2tcGHBEewJE" role="2Oq$k0">
                <ref role="3cqZAo" node="2tcGHBEewJ_" resolve="csession" />
              </node>
              <node concept="liA8E" id="5jPBdK_Bhd" role="2OqNvi">
                <ref role="37wK5l" to="qrld:2tcGHBEeol1" resolve="init" />
                <node concept="2OqwBi" id="2tcGHBEex4W" role="37wK5m">
                  <node concept="Xjq3P" id="2tcGHBEex4X" role="2Oq$k0" />
                  <node concept="2OwXpG" id="2tcGHBEex4Y" role="2OqNvi">
                    <ref role="2Oxat5" node="5jPBdK_qdB" resolve="predicateSymbols" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdK_p5i" role="3cqZAp">
            <node concept="37vLTI" id="5jPBdK_p7U" role="3clFbG">
              <node concept="37vLTw" id="5jPBdK_p5h" role="37vLTJ">
                <ref role="3cqZAo" node="5jPBdK_nJi" resolve="INSTANCE" />
              </node>
              <node concept="2ShNRf" id="5jPBdK_pxU" role="37vLTx">
                <node concept="1pGfFk" id="5jPBdK_qS9" role="2ShVmc">
                  <ref role="37wK5l" node="5jPBdK_qM0" resolve="TestingEvaluationSession" />
                  <node concept="37vLTw" id="5jPBdK_DfM" role="37wK5m">
                    <ref role="3cqZAo" node="2tcGHBEewJ_" resolve="csession" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="5jPBdK_qdB" role="jymVt">
        <property role="TrG5h" value="predicateSymbols" />
        <node concept="3Tm6S6" id="5jPBdK_qdC" role="1B3o_S" />
        <node concept="10Q1$e" id="5jPBdK_qn0" role="1tU5fm">
          <node concept="3uibUv" id="5jPBdK_qdF" role="10Q1$1">
            <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="6X5F0NgIt2Q" role="jymVt">
        <property role="TrG5h" value="program" />
        <node concept="3Tm6S6" id="6X5F0NgIt2R" role="1B3o_S" />
        <node concept="3uibUv" id="6X5F0NgIt2T" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7BvNzE" resolve="Program" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jPBdK_mO3" role="jymVt" />
    <node concept="312cEu" id="5jPBdK_dKd" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Backend" />
      <node concept="3Tm1VV" id="5jPBdK_dKe" role="1B3o_S" />
      <node concept="3uibUv" id="5jPBdK_dR3" role="EKbjA">
        <ref role="3uigEE" to="qrld:5uFPQ7BwtoR" resolve="EvaluationSession.Backend" />
      </node>
      <node concept="2tJIrI" id="5jPBdK_dUF" role="jymVt" />
      <node concept="3clFb_" id="5jPBdK_dRk" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="current" />
        <node concept="3uibUv" id="5jPBdK_dRl" role="3clF45">
          <ref role="3uigEE" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
        </node>
        <node concept="3Tm1VV" id="5jPBdK_dRm" role="1B3o_S" />
        <node concept="3clFbS" id="5jPBdK_dRo" role="3clF47">
          <node concept="3clFbF" id="5jPBdK_nTT" role="3cqZAp">
            <node concept="37vLTw" id="5jPBdK_nTS" role="3clFbG">
              <ref role="3cqZAo" node="5jPBdK_nJi" resolve="INSTANCE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5jPBdK_dTD" role="jymVt" />
      <node concept="3clFb_" id="5jPBdK_dSh" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="createConfig" />
        <node concept="37vLTG" id="6X5F0NgIslG" role="3clF46">
          <property role="TrG5h" value="program" />
          <node concept="3uibUv" id="6X5F0NgIsrs" role="1tU5fm">
            <ref role="3uigEE" to="rchb:5uFPQ7BvNzE" resolve="Program" />
          </node>
        </node>
        <node concept="3uibUv" id="5jPBdK_dSi" role="3clF45">
          <ref role="3uigEE" to="qrld:5uFPQ7Bwt8Z" resolve="EvaluationSession.Config" />
        </node>
        <node concept="3Tm1VV" id="5jPBdK_dSj" role="1B3o_S" />
        <node concept="3clFbS" id="5jPBdK_dSl" role="3clF47">
          <node concept="3clFbF" id="5jPBdK_nWq" role="3cqZAp">
            <node concept="2ShNRf" id="5jPBdK_nWo" role="3clFbG">
              <node concept="1pGfFk" id="6X5F0NgIsKG" role="2ShVmc">
                <ref role="37wK5l" node="6X5F0NgIsD1" resolve="TestingEvaluationSession.Config" />
                <node concept="37vLTw" id="6X5F0NgItsZ" role="37wK5m">
                  <ref role="3cqZAo" node="6X5F0NgIslG" resolve="program" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5jPBdK_dIT" role="1B3o_S" />
    <node concept="3uibUv" id="5jPBdK_dJd" role="1zkMxy">
      <ref role="3uigEE" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
    </node>
    <node concept="312cEg" id="5jPBdK_qYD" role="jymVt">
      <property role="TrG5h" value="sessionSolver" />
      <node concept="3Tm6S6" id="5jPBdK_qYE" role="1B3o_S" />
      <node concept="3uibUv" id="5jPBdK_qYG" role="1tU5fm">
        <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
      </node>
    </node>
  </node>
</model>

