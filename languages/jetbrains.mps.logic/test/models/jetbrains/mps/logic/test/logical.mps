<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:74d684e5-5094-483e-b711-7edd0235f56a(jetbrains.mps.logic.test.logical)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="-1" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="n4y8" ref="b189d6c6-9397-4d64-88af-1ac73760a4f5/java:org.mockito(jetbrains.mps.logic.test/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="45ys" ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)" />
    <import index="98" ref="b189d6c6-9397-4d64-88af-1ac73760a4f5/java:org.mockito.stubbing(jetbrains.mps.logic.test/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
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
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
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
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
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
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
      <concept id="1171983834376" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" flags="nn" index="3vFxKo">
        <child id="1171983854940" name="condition" index="3vFALc" />
      </concept>
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
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
    </language>
  </registry>
  <node concept="3s_ewN" id="1mP5b6jPiAZ">
    <property role="3s_ewP" value="MatchAtom" />
    <node concept="3Tm1VV" id="1mP5b6jPiB0" role="1B3o_S" />
    <node concept="3s_gsd" id="1mP5b6jPiB1" role="3s_ewO">
      <node concept="3s$Bmu" id="1mP5b6jPr4u" role="3s_gse">
        <property role="3s$Bm0" value="empty" />
        <node concept="3cqZAl" id="1mP5b6jPr4w" role="3clF45" />
        <node concept="3Tm1VV" id="1mP5b6jPr4y" role="1B3o_S" />
        <node concept="3clFbS" id="1mP5b6jPr4z" role="3clF47">
          <node concept="3clFbH" id="1mP5b6jPr9G" role="3cqZAp" />
          <node concept="3cpWs8" id="1mP5b6jPriG" role="3cqZAp">
            <node concept="3cpWsn" id="1mP5b6jPriH" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1mP5b6jPriF" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1mP5b6jPriI" role="33vP2m">
                <node concept="1oi5UN" id="1mP5b6jPriJ" role="1oi0x0" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1mP5b6jPrr$" role="3cqZAp" />
          <node concept="3cpWs8" id="1mP5b6jPrpY" role="3cqZAp">
            <node concept="3cpWsn" id="1mP5b6jPrpZ" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1mP5b6jPrq0" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1mP5b6jPrq1" role="33vP2m">
                <node concept="1oi5UN" id="1mP5b6jPrq2" role="1oi0x0" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1mP5b6jProM" role="3cqZAp" />
          <node concept="3vlDli" id="1mP5b6jPrwU" role="3cqZAp">
            <node concept="37vLTw" id="1mP5b6jPryL" role="3tpDZA">
              <ref role="3cqZAo" node="1mP5b6jPrpZ" resolve="b" />
            </node>
            <node concept="37vLTw" id="1mP5b6jPrxz" role="3tpDZB">
              <ref role="3cqZAo" node="1mP5b6jPriH" resolve="a" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1mP5b6jQ$dF" role="3s_gse">
        <property role="3s$Bm0" value="value" />
        <node concept="3cqZAl" id="1mP5b6jQ$dG" role="3clF45" />
        <node concept="3Tm1VV" id="1mP5b6jQ$dH" role="1B3o_S" />
        <node concept="3clFbS" id="1mP5b6jQ$dI" role="3clF47">
          <node concept="3clFbH" id="1mP5b6jQ$dJ" role="3cqZAp" />
          <node concept="3cpWs8" id="1mP5b6jQ$dK" role="3cqZAp">
            <node concept="3cpWsn" id="1mP5b6jQ$dL" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1mP5b6jQ$dM" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1mP5b6jQ$dN" role="33vP2m">
                <node concept="1oi5UN" id="1mP5b6jQ$dO" role="1oi0x0">
                  <node concept="1oi5Wm" id="1mP5b6jQ$fJ" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="1oi5XN" id="1mP5b6jQ$fT" role="1oi5zu">
                      <property role="1oi5yK" value="bar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1mP5b6jQ$dQ" role="3cqZAp" />
          <node concept="3cpWs8" id="1mP5b6jQ$dR" role="3cqZAp">
            <node concept="3cpWsn" id="1mP5b6jQ$dS" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1mP5b6jQ$dT" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1mP5b6jQ$dU" role="33vP2m">
                <node concept="1oi5UN" id="1mP5b6jQ$dV" role="1oi0x0">
                  <node concept="1oi5Wm" id="1mP5b6jQ$hw" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="1oi5XN" id="1mP5b6jQ$hy" role="1oi5zu">
                      <property role="1oi5yK" value="bar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1mP5b6jQ$dX" role="3cqZAp" />
          <node concept="3vlDli" id="1mP5b6jQ$dY" role="3cqZAp">
            <node concept="37vLTw" id="1mP5b6jQ$dZ" role="3tpDZA">
              <ref role="3cqZAo" node="1mP5b6jQ$dS" resolve="b" />
            </node>
            <node concept="37vLTw" id="1mP5b6jQ$e0" role="3tpDZB">
              <ref role="3cqZAo" node="1mP5b6jQ$dL" resolve="a" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1mP5b6jQNl5" role="3s_gse">
        <property role="3s$Bm0" value="child" />
        <node concept="3cqZAl" id="1mP5b6jQNl6" role="3clF45" />
        <node concept="3Tm1VV" id="1mP5b6jQNl7" role="1B3o_S" />
        <node concept="3clFbS" id="1mP5b6jQNl8" role="3clF47">
          <node concept="3clFbH" id="1mP5b6jQNl9" role="3cqZAp" />
          <node concept="3cpWs8" id="1mP5b6jQNla" role="3cqZAp">
            <node concept="3cpWsn" id="1mP5b6jQNlb" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1mP5b6jQNlc" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1mP5b6jQNld" role="33vP2m">
                <node concept="1oi5UN" id="1mP5b6jQNle" role="1oi0x0">
                  <node concept="1oi5ST" id="1mP5b6jQNq2" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="1oi5UN" id="1mP5b6jQNq4" role="1oi5TL">
                      <node concept="1oi5Wm" id="1mP5b6jQNq8" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="1mP5b6jQNqa" role="1oi5zu">
                          <property role="1oi5yK" value="text" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1mP5b6jQNlg" role="3cqZAp" />
          <node concept="3cpWs8" id="1mP5b6jQNlh" role="3cqZAp">
            <node concept="3cpWsn" id="1mP5b6jQNli" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1mP5b6jQNlj" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1mP5b6jQNlk" role="33vP2m">
                <node concept="1oi5UN" id="1mP5b6jQNll" role="1oi0x0">
                  <node concept="1oi5ST" id="1mP5b6jQNqe" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="1oi5UN" id="1mP5b6jQNqg" role="1oi5TL">
                      <node concept="1oi5Wm" id="1mP5b6jQNqk" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="1mP5b6jQNqm" role="1oi5zu">
                          <property role="1oi5yK" value="text" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1mP5b6jQNln" role="3cqZAp" />
          <node concept="3vlDli" id="1mP5b6jQNlo" role="3cqZAp">
            <node concept="37vLTw" id="1mP5b6jQNlp" role="3tpDZA">
              <ref role="3cqZAo" node="1mP5b6jQNli" resolve="b" />
            </node>
            <node concept="37vLTw" id="1mP5b6jQNlq" role="3tpDZB">
              <ref role="3cqZAo" node="1mP5b6jQNlb" resolve="a" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1mP5b6jQND0" role="3s_gse">
        <property role="3s$Bm0" value="child_list" />
        <node concept="3cqZAl" id="1mP5b6jQND1" role="3clF45" />
        <node concept="3Tm1VV" id="1mP5b6jQND2" role="1B3o_S" />
        <node concept="3clFbS" id="1mP5b6jQND3" role="3clF47">
          <node concept="3clFbH" id="1mP5b6jQND4" role="3cqZAp" />
          <node concept="3cpWs8" id="1mP5b6jQND5" role="3cqZAp">
            <node concept="3cpWsn" id="1mP5b6jQND6" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1mP5b6jQND7" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1mP5b6jQND8" role="33vP2m">
                <node concept="1oi5UN" id="1mP5b6jQND9" role="1oi0x0">
                  <node concept="1oi5ST" id="1mP5b6jQNDa" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="KCUsM" id="3t7_2FgoIyQ" role="1oi5TL">
                      <node concept="1oi5UN" id="1mP5b6jQNDb" role="KCVpo">
                        <node concept="1oi5Wm" id="1mP5b6jQNDd" role="1ojpOf">
                          <property role="TrG5h" value="bar" />
                          <node concept="1oi5XN" id="1mP5b6jQNDe" role="1oi5zu">
                            <property role="1oi5yK" value="salam" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1mP5b6jQNYq" role="KCVpo">
                        <node concept="1oi5Wm" id="1mP5b6jQNYs" role="1ojpOf">
                          <property role="TrG5h" value="baz" />
                          <node concept="1oi5XN" id="1mP5b6jQNYt" role="1oi5zu">
                            <property role="1oi5yK" value="dunya" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1mP5b6jQNDh" role="3cqZAp" />
          <node concept="3cpWs8" id="1mP5b6jQNDi" role="3cqZAp">
            <node concept="3cpWsn" id="1mP5b6jQNDj" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1mP5b6jQNDk" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1mP5b6jQNDl" role="33vP2m">
                <node concept="1oi5UN" id="1mP5b6jQNDm" role="1oi0x0">
                  <node concept="1oi5ST" id="1mP5b6jQNDn" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="KCUsM" id="3t7_2FgoIyN" role="1oi5TL">
                      <node concept="1oi5UN" id="1mP5b6jQNYD" role="KCVpo">
                        <node concept="1oi5Wm" id="1mP5b6jQNYE" role="1ojpOf">
                          <property role="TrG5h" value="bar" />
                          <node concept="1oi5XN" id="1mP5b6jQNYF" role="1oi5zu">
                            <property role="1oi5yK" value="salam" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1mP5b6jQNDo" role="KCVpo">
                        <node concept="1oi5Wm" id="1mP5b6jQNDp" role="1ojpOf">
                          <property role="TrG5h" value="baz" />
                          <node concept="1oi5XN" id="1mP5b6jQNDq" role="1oi5zu">
                            <property role="1oi5yK" value="dunya" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1mP5b6jQNDu" role="3cqZAp" />
          <node concept="3vlDli" id="1mP5b6jQNDv" role="3cqZAp">
            <node concept="37vLTw" id="1mP5b6jQNDw" role="3tpDZA">
              <ref role="3cqZAo" node="1mP5b6jQNDj" resolve="b" />
            </node>
            <node concept="37vLTw" id="1mP5b6jQNDx" role="3tpDZB">
              <ref role="3cqZAo" node="1mP5b6jQND6" resolve="a" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1OShD0HUxWg" role="3s_gse">
        <property role="3s$Bm0" value="child_role_list" />
        <node concept="3cqZAl" id="1OShD0HUxWh" role="3clF45" />
        <node concept="3Tm1VV" id="1OShD0HUxWi" role="1B3o_S" />
        <node concept="3clFbS" id="1OShD0HUxWj" role="3clF47">
          <node concept="3clFbH" id="1OShD0HUxWk" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0HUxWl" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0HUxWm" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1OShD0HUxWn" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0HUxWo" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0HUxWp" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0HUxWq" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="KCUsM" id="1OShD0HUy1h" role="1oi5TL">
                      <node concept="1oi5UN" id="1OShD0HUxWr" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0HUxWs" role="1ojpOf">
                          <property role="TrG5h" value="bar" />
                          <node concept="1oi5XN" id="1OShD0HUxWt" role="1oi5zu">
                            <property role="1oi5yK" value="salam" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0HUxWu" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0HUxWv" role="1ojpOf">
                          <property role="TrG5h" value="baz" />
                          <node concept="1oi5XN" id="1OShD0HUxWw" role="1oi5zu">
                            <property role="1oi5yK" value="dunya" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0HUxWx" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0HUxWy" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0HUxWz" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0HUxW$" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0HUxW_" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0HUxWA" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0HUxWB" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="KCUsM" id="3t7_2FgoIyG" role="1oi5TL">
                      <node concept="1oi5UN" id="1OShD0HUxWC" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0HUxWD" role="1ojpOf">
                          <property role="TrG5h" value="bar" />
                          <node concept="1oi5XN" id="1OShD0HUxWE" role="1oi5zu">
                            <property role="1oi5yK" value="salam" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0HUxWF" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0HUxWG" role="1ojpOf">
                          <property role="TrG5h" value="baz" />
                          <node concept="1oi5XN" id="1OShD0HUxWH" role="1oi5zu">
                            <property role="1oi5yK" value="dunya" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0HUxWI" role="3cqZAp" />
          <node concept="3vlDli" id="1OShD0HUxWJ" role="3cqZAp">
            <node concept="37vLTw" id="1OShD0HUxWK" role="3tpDZA">
              <ref role="3cqZAo" node="1OShD0HUxWz" resolve="b" />
            </node>
            <node concept="37vLTw" id="1OShD0HUxWL" role="3tpDZB">
              <ref role="3cqZAo" node="1OShD0HUxWm" resolve="a" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1mP5b6jQOBf" role="3s_gse">
        <property role="3s$Bm0" value="child_emptylist" />
        <node concept="3cqZAl" id="1mP5b6jQOBg" role="3clF45" />
        <node concept="3Tm1VV" id="1mP5b6jQOBh" role="1B3o_S" />
        <node concept="3clFbS" id="1mP5b6jQOBi" role="3clF47">
          <node concept="3clFbH" id="1mP5b6jQOBj" role="3cqZAp" />
          <node concept="3cpWs8" id="1mP5b6jQOBk" role="3cqZAp">
            <node concept="3cpWsn" id="1mP5b6jQOBl" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1mP5b6jQOBm" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1mP5b6jQOBn" role="33vP2m">
                <node concept="1oi5UN" id="1mP5b6jQOBo" role="1oi0x0">
                  <node concept="1oi5ST" id="1mP5b6jQOBp" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="KCUsM" id="3t7_2FgoIyS" role="1oi5TL" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1mP5b6jQOB_" role="3cqZAp" />
          <node concept="3cpWs8" id="1mP5b6jQOBA" role="3cqZAp">
            <node concept="3cpWsn" id="1mP5b6jQOBB" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1mP5b6jQOBC" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1mP5b6jQOBD" role="33vP2m">
                <node concept="1oi5UN" id="1mP5b6jQOBE" role="1oi0x0">
                  <node concept="1oi5ST" id="1mP5b6jQOBF" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="KCUsM" id="3t7_2FgoIyH" role="1oi5TL" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1mP5b6jQOBR" role="3cqZAp" />
          <node concept="3vlDli" id="1mP5b6jQOBS" role="3cqZAp">
            <node concept="37vLTw" id="1mP5b6jQOBT" role="3tpDZA">
              <ref role="3cqZAo" node="1mP5b6jQOBB" resolve="b" />
            </node>
            <node concept="37vLTw" id="1mP5b6jQOBU" role="3tpDZB">
              <ref role="3cqZAo" node="1mP5b6jQOBl" resolve="a" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1OShD0HUzFB" role="3s_gse">
        <property role="3s$Bm0" value="child_role_emptylist" />
        <node concept="3cqZAl" id="1OShD0HUzFC" role="3clF45" />
        <node concept="3Tm1VV" id="1OShD0HUzFD" role="1B3o_S" />
        <node concept="3clFbS" id="1OShD0HUzFE" role="3clF47">
          <node concept="3clFbH" id="1OShD0HUzFF" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0HUzFG" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0HUzFH" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1OShD0HUzFI" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0HUzFJ" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0HUzFK" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0HUzFL" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="KCUsM" id="3t7_2FgoIyI" role="1oi5TL" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0HUzFM" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0HUzFN" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0HUzFO" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0HUzFP" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0HUzFQ" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0HUzFR" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0HUzFS" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="KCUsM" id="1OShD0HUzKT" role="1oi5TL" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0HU_Ia" role="3cqZAp" />
          <node concept="3vlDli" id="1OShD0HUzFU" role="3cqZAp">
            <node concept="37vLTw" id="1OShD0HUzFV" role="3tpDZA">
              <ref role="3cqZAo" node="1OShD0HUzFO" resolve="b" />
            </node>
            <node concept="37vLTw" id="1OShD0HUzFW" role="3tpDZB">
              <ref role="3cqZAo" node="1OShD0HUzFH" resolve="a" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3s_ewN" id="dfChU1ddiN">
    <property role="3s_ewP" value="LogicalExpression" />
    <node concept="3Tm1VV" id="dfChU1ddiO" role="1B3o_S" />
    <node concept="3s_gsd" id="dfChU1ddiP" role="3s_ewO">
      <node concept="3s$Bmu" id="dfChU1ddiQ" role="3s_gse">
        <property role="3s$Bm0" value="child" />
        <node concept="3cqZAl" id="dfChU1ddiS" role="3clF45" />
        <node concept="3Tm1VV" id="dfChU1ddiU" role="1B3o_S" />
        <node concept="3clFbS" id="dfChU1ddiV" role="3clF47">
          <node concept="3clFbH" id="dfChU1ddj0" role="3cqZAp" />
          <node concept="3cpWs8" id="dfChU1dmCT" role="3cqZAp">
            <node concept="3cpWsn" id="dfChU1dmCW" role="3cpWs9">
              <property role="TrG5h" value="Node" />
              <node concept="3uibUv" id="7FFmDVAOQX4" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="dfChU1jq1z" role="33vP2m">
                <node concept="1pGfFk" id="dfChU1jqTS" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                  <node concept="1oi1Uc" id="dfChU1j1P0" role="37wK5m">
                    <node concept="1oi5UN" id="dfChU1j1PO" role="1oi0x0">
                      <node concept="1oi5Wm" id="dfChU1j1PP" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="dfChU1j1PQ" role="1oi5zu">
                          <property role="1oi5yK" value="abc" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="dfChU1ddkY" role="3cqZAp" />
          <node concept="3cpWs8" id="dfChU1g_cz" role="3cqZAp">
            <node concept="3cpWsn" id="dfChU1g_c$" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="dfChU1g_cy" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="dfChU1g_c_" role="33vP2m">
                <node concept="1oi5UN" id="dfChU1g_d$" role="1oi0x0">
                  <node concept="1oi5ST" id="dfChU1g_nN" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="1oi5UN" id="dfChU1g_nP" role="1oi5TL">
                      <node concept="1oi5Wm" id="dfChU1g_nT" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="dfChU1g_nV" role="1oi5zu">
                          <property role="1oi5yK" value="abc" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="dfChU1g_g_" role="3cqZAp" />
          <node concept="3cpWs8" id="dfChU1g_fF" role="3cqZAp">
            <node concept="3cpWsn" id="dfChU1g_fG" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="dfChU1g_fH" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="dfChU1g_fI" role="33vP2m">
                <node concept="1oi5UN" id="dfChU1g_fJ" role="1oi0x0">
                  <node concept="1oi5ST" id="dfChU1jJ7g" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="1oi5UN" id="1OShD0HAxLa" role="1oi5TL">
                      <node concept="22Ky0T" id="1OShD0HAxLc" role="lGtFl">
                        <node concept="37vLTw" id="1OShD0HAxLA" role="22Ky0K">
                          <ref role="3cqZAo" node="dfChU1dmCW" resolve="Node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="dfChU1g_bE" role="3cqZAp" />
          <node concept="3vlDli" id="dfChU1g_hx" role="3cqZAp">
            <node concept="2YIFZM" id="6HT7BWBPqFA" role="3tpDZA">
              <ref role="37wK5l" to="ie8e:6HT7BWBOXr$" resolve="ground" />
              <ref role="1Pybhc" to="ie8e:6HT7BWBOXme" resolve="AtomUtil" />
              <node concept="37vLTw" id="6HT7BWBPqG2" role="37wK5m">
                <ref role="3cqZAo" node="dfChU1g_fG" resolve="b" />
              </node>
            </node>
            <node concept="37vLTw" id="dfChU1g_k6" role="3tpDZB">
              <ref role="3cqZAo" node="dfChU1g_c$" resolve="a" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1jo82tq3J3_" role="3s_gse">
        <property role="3s$Bm0" value="grandChild" />
        <node concept="3cqZAl" id="1jo82tq3J3A" role="3clF45" />
        <node concept="3Tm1VV" id="1jo82tq3J3B" role="1B3o_S" />
        <node concept="3clFbS" id="1jo82tq3J3C" role="3clF47">
          <node concept="3clFbH" id="1jo82tq3J3D" role="3cqZAp" />
          <node concept="3cpWs8" id="1jo82tq3J3E" role="3cqZAp">
            <node concept="3cpWsn" id="1jo82tq3J3F" role="3cpWs9">
              <property role="TrG5h" value="Node1" />
              <node concept="3uibUv" id="7FFmDVAOQXF" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="1jo82tq3J3H" role="33vP2m">
                <node concept="1pGfFk" id="1jo82tq3J3I" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                  <node concept="1oi1Uc" id="1jo82tq3J3J" role="37wK5m">
                    <node concept="1oi5UN" id="1jo82tq3J3K" role="1oi0x0">
                      <node concept="1oi5Wm" id="1jo82tq3J3L" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="1jo82tq3J3M" role="1oi5zu">
                          <property role="1oi5yK" value="abc" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1jo82tq3JLi" role="3cqZAp" />
          <node concept="3cpWs8" id="1jo82tq3JIs" role="3cqZAp">
            <node concept="3cpWsn" id="1jo82tq3JIt" role="3cpWs9">
              <property role="TrG5h" value="Node2" />
              <node concept="3uibUv" id="7FFmDVAOQYk" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="1jo82tq3JIv" role="33vP2m">
                <node concept="1pGfFk" id="1jo82tq3JIw" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                  <node concept="1oi1Uc" id="1jo82tq3JIx" role="37wK5m">
                    <node concept="1oi5UN" id="1jo82tq3JIy" role="1oi0x0">
                      <node concept="1oi5Wm" id="1jo82tq3JIz" role="1ojpOf">
                        <property role="TrG5h" value="baz" />
                        <node concept="1oi5XN" id="1jo82tq3JI$" role="1oi5zu">
                          <property role="1oi5yK" value="xyz" />
                        </node>
                      </node>
                      <node concept="1oi5ST" id="1jo82tq3JNk" role="1ojpOf">
                        <property role="TrG5h" value="qux" />
                        <node concept="1oi5UN" id="1jo82tq3JNo" role="1oi5TL">
                          <node concept="22Ky0T" id="1jo82tq3JNq" role="lGtFl">
                            <node concept="37vLTw" id="1jo82tq3JNX" role="22Ky0K">
                              <ref role="3cqZAo" node="1jo82tq3J3F" resolve="Node1" />
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
          <node concept="3clFbH" id="1jo82tq3J3N" role="3cqZAp" />
          <node concept="3cpWs8" id="1jo82tq3J3O" role="3cqZAp">
            <node concept="3cpWsn" id="1jo82tq3J3P" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1jo82tq3J3Q" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1jo82tq3J3R" role="33vP2m">
                <node concept="1oi5UN" id="1jo82tq3J3S" role="1oi0x0">
                  <node concept="1oi5Wm" id="1jo82tq3JQr" role="1ojpOf">
                    <property role="TrG5h" value="blah" />
                    <node concept="1oi5XN" id="1jo82tq3JQB" role="1oi5zu">
                      <property role="1oi5yK" value="blin" />
                    </node>
                  </node>
                  <node concept="1oi5ST" id="1jo82tq3J3T" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="1oi5UN" id="1jo82tq3J3U" role="1oi5TL">
                      <node concept="1oi5Wm" id="1jo82tq3JQ7" role="1ojpOf">
                        <property role="TrG5h" value="baz" />
                        <node concept="1oi5XN" id="1jo82tq3JQ8" role="1oi5zu">
                          <property role="1oi5yK" value="xyz" />
                        </node>
                      </node>
                      <node concept="1oi5ST" id="1jo82tq3JQb" role="1ojpOf">
                        <property role="TrG5h" value="qux" />
                        <node concept="1oi5UN" id="1jo82tq3JQl" role="1oi5TL">
                          <node concept="1oi5Wm" id="1jo82tq3JQm" role="1ojpOf">
                            <property role="TrG5h" value="bar" />
                            <node concept="1oi5XN" id="1jo82tq3JQn" role="1oi5zu">
                              <property role="1oi5yK" value="abc" />
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
          <node concept="3clFbH" id="1jo82tq3J3X" role="3cqZAp" />
          <node concept="3cpWs8" id="1jo82tq3J3Y" role="3cqZAp">
            <node concept="3cpWsn" id="1jo82tq3J3Z" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1jo82tq3J40" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1jo82tq3J41" role="33vP2m">
                <node concept="1oi5UN" id="1jo82tq3J42" role="1oi0x0">
                  <node concept="1oi5Wm" id="1jo82tq3JQE" role="1ojpOf">
                    <property role="TrG5h" value="blah" />
                    <node concept="1oi5XN" id="1jo82tq3JQF" role="1oi5zu">
                      <property role="1oi5yK" value="blin" />
                    </node>
                  </node>
                  <node concept="1oi5ST" id="1jo82tq3J43" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="1oi5UN" id="1jo82tq3J44" role="1oi5TL">
                      <node concept="22Ky0T" id="1jo82tq3J45" role="lGtFl">
                        <node concept="37vLTw" id="1jo82tq3JQY" role="22Ky0K">
                          <ref role="3cqZAo" node="1jo82tq3JIt" resolve="Node2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1jo82tq3J47" role="3cqZAp" />
          <node concept="3vlDli" id="1jo82tq3J48" role="3cqZAp">
            <node concept="2YIFZM" id="1jo82tq3J49" role="3tpDZA">
              <ref role="37wK5l" to="ie8e:6HT7BWBOXr$" resolve="ground" />
              <ref role="1Pybhc" to="ie8e:6HT7BWBOXme" resolve="AtomUtil" />
              <node concept="37vLTw" id="1jo82tq3J4a" role="37wK5m">
                <ref role="3cqZAo" node="1jo82tq3J3Z" resolve="b" />
              </node>
            </node>
            <node concept="37vLTw" id="1jo82tq3J4b" role="3tpDZB">
              <ref role="3cqZAo" node="1jo82tq3J3P" resolve="a" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1OShD0HAz3H" role="3s_gse">
        <property role="3s$Bm0" value="children_role_list" />
        <node concept="3cqZAl" id="1OShD0HAz3I" role="3clF45" />
        <node concept="3Tm1VV" id="1OShD0HAz3J" role="1B3o_S" />
        <node concept="3clFbS" id="1OShD0HAz3K" role="3clF47">
          <node concept="3clFbH" id="1OShD0HAz3L" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0HAz3M" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0HAz3N" role="3cpWs9">
              <property role="TrG5h" value="Node" />
              <node concept="3uibUv" id="7FFmDVAOQYX" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="1OShD0HAz3P" role="33vP2m">
                <node concept="1pGfFk" id="1OShD0HAz3Q" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                  <node concept="1oi1Uc" id="1OShD0HAz3R" role="37wK5m">
                    <node concept="1oi5UN" id="1OShD0HA$aZ" role="1oi0x0">
                      <node concept="1oi5Wm" id="1OShD0HA$b0" role="1ojpOf">
                        <property role="TrG5h" value="qux" />
                        <node concept="1oi5XN" id="1OShD0HA$b1" role="1oi5zu">
                          <property role="1oi5yK" value="xyz" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0HAz3V" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0HAz3W" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0HAz3X" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1OShD0HAz3Y" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0HAz3Z" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0HAz40" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0HAz41" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="KCUsM" id="3t7_2FgoIyL" role="1oi5TL">
                      <node concept="1oi5UN" id="1OShD0HAz42" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0HAz43" role="1ojpOf">
                          <property role="TrG5h" value="bar" />
                          <node concept="1oi5XN" id="1OShD0HAz44" role="1oi5zu">
                            <property role="1oi5yK" value="abc" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0HA$2k" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0HA$2l" role="1ojpOf">
                          <property role="TrG5h" value="qux" />
                          <node concept="1oi5XN" id="1OShD0HA$2m" role="1oi5zu">
                            <property role="1oi5yK" value="xyz" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0HAz45" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0HAz46" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0HAz47" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0HAz48" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0HAz49" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0HAz4a" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0HAz4b" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="KCUsM" id="3t7_2FgoIyT" role="1oi5TL">
                      <node concept="1oi5UN" id="1OShD0HA$hg" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0HA$hh" role="1ojpOf">
                          <property role="TrG5h" value="bar" />
                          <node concept="1oi5XN" id="1OShD0HA$hi" role="1oi5zu">
                            <property role="1oi5yK" value="abc" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0HAz4c" role="KCVpo">
                        <node concept="22Ky0T" id="1OShD0HAz4d" role="lGtFl">
                          <node concept="37vLTw" id="1OShD0HAz4e" role="22Ky0K">
                            <ref role="3cqZAo" node="1OShD0HAz3N" resolve="Node" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0HAz4f" role="3cqZAp" />
          <node concept="3vlDli" id="1OShD0HAz4g" role="3cqZAp">
            <node concept="37vLTw" id="1OShD0HAz4i" role="3tpDZB">
              <ref role="3cqZAo" node="1OShD0HAz3X" resolve="a" />
            </node>
            <node concept="2YIFZM" id="6HT7BWBPrIq" role="3tpDZA">
              <ref role="37wK5l" to="ie8e:6HT7BWBOXr$" resolve="ground" />
              <ref role="1Pybhc" to="ie8e:6HT7BWBOXme" resolve="AtomUtil" />
              <node concept="37vLTw" id="6HT7BWBPrIr" role="37wK5m">
                <ref role="3cqZAo" node="1OShD0HAz47" resolve="b" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1OShD0HRNo_" role="3s_gse">
        <property role="3s$Bm0" value="children_list" />
        <node concept="3cqZAl" id="1OShD0HRNoA" role="3clF45" />
        <node concept="3Tm1VV" id="1OShD0HRNoB" role="1B3o_S" />
        <node concept="3clFbS" id="1OShD0HRNoC" role="3clF47">
          <node concept="3clFbH" id="1OShD0HRNoD" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0HRNoE" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0HRNoF" role="3cpWs9">
              <property role="TrG5h" value="Node" />
              <node concept="3uibUv" id="7FFmDVAOQZB" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="1OShD0HRNoH" role="33vP2m">
                <node concept="1pGfFk" id="1OShD0HRNoI" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                  <node concept="1oi1Uc" id="1OShD0HRNoJ" role="37wK5m">
                    <node concept="KCUsM" id="1OShD0HTdS0" role="1oi0x0">
                      <node concept="1oi5UN" id="1OShD0HTdS1" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0HTdS2" role="1ojpOf">
                          <property role="TrG5h" value="bar" />
                          <node concept="1oi5XN" id="1OShD0HTdS3" role="1oi5zu">
                            <property role="1oi5yK" value="abc" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0HTdS4" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0HTdS5" role="1ojpOf">
                          <property role="TrG5h" value="qux" />
                          <node concept="1oi5XN" id="1OShD0HTdS6" role="1oi5zu">
                            <property role="1oi5yK" value="xyz" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0HRNoN" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0HRNoO" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0HRNoP" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1OShD0HRNoQ" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0HRNoR" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0HRNoS" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0HRNoT" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="KCUsM" id="1OShD0HRNEK" role="1oi5TL">
                      <node concept="1oi5UN" id="1OShD0HRNFa" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0HRNFb" role="1ojpOf">
                          <property role="TrG5h" value="bar" />
                          <node concept="1oi5XN" id="1OShD0HRNFc" role="1oi5zu">
                            <property role="1oi5yK" value="abc" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1OShD0HRNFd" role="KCVpo">
                        <node concept="1oi5Wm" id="1OShD0HRNFe" role="1ojpOf">
                          <property role="TrG5h" value="qux" />
                          <node concept="1oi5XN" id="1OShD0HRNFf" role="1oi5zu">
                            <property role="1oi5yK" value="xyz" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0HRNp0" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0HRNp1" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0HRNp2" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0HRNp3" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0HRNp4" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0HRNp5" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0HRNp6" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="KCUsM" id="1OShD0HRNQR" role="1oi5TL">
                      <node concept="22Ky0T" id="1OShD0HTdYX" role="lGtFl">
                        <node concept="37vLTw" id="1OShD0HTdZb" role="22Ky0K">
                          <ref role="3cqZAo" node="1OShD0HRNoF" resolve="Node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0HRNpd" role="3cqZAp" />
          <node concept="3vlDli" id="1OShD0HRNpe" role="3cqZAp">
            <node concept="37vLTw" id="1OShD0HRNpg" role="3tpDZB">
              <ref role="3cqZAo" node="1OShD0HRNoP" resolve="a" />
            </node>
            <node concept="2YIFZM" id="6HT7BWBSfTf" role="3tpDZA">
              <ref role="37wK5l" to="ie8e:6HT7BWBOXr$" resolve="ground" />
              <ref role="1Pybhc" to="ie8e:6HT7BWBOXme" resolve="AtomUtil" />
              <node concept="37vLTw" id="6HT7BWBSfTg" role="37wK5m">
                <ref role="3cqZAo" node="1OShD0HRNp2" resolve="b" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="1OShD0Ifj4g" role="3s_gse">
        <property role="3s$Bm0" value="children_empty_list" />
        <node concept="3cqZAl" id="1OShD0Ifj4h" role="3clF45" />
        <node concept="3Tm1VV" id="1OShD0Ifj4i" role="1B3o_S" />
        <node concept="3clFbS" id="1OShD0Ifj4j" role="3clF47">
          <node concept="3clFbH" id="1OShD0Ifj4k" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0Ifj4l" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0Ifj4m" role="3cpWs9">
              <property role="TrG5h" value="Node" />
              <node concept="3uibUv" id="7FFmDVAOR0i" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="1OShD0Ifj4o" role="33vP2m">
                <node concept="1pGfFk" id="1OShD0Ifj4p" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                  <node concept="1oi1Uc" id="1OShD0Ifj4q" role="37wK5m">
                    <node concept="KCUsM" id="1OShD0Ifj4r" role="1oi0x0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0Ifj4y" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0Ifj4z" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0Ifj4$" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="1OShD0Ifj4_" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0Ifj4A" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0Ifj4B" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0Ifj4C" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="KCUsM" id="1OShD0Ifj4D" role="1oi5TL" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0Ifj4K" role="3cqZAp" />
          <node concept="3cpWs8" id="1OShD0Ifj4L" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0Ifj4M" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="1OShD0Ifj4N" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="1OShD0Ifj4O" role="33vP2m">
                <node concept="1oi5UN" id="1OShD0Ifj4P" role="1oi0x0">
                  <node concept="1oi5ST" id="1OShD0Ifj4Q" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="KCUsM" id="1OShD0Ifj4R" role="1oi5TL">
                      <node concept="22Ky0T" id="1OShD0Ifj4S" role="lGtFl">
                        <node concept="37vLTw" id="1OShD0Ifj4T" role="22Ky0K">
                          <ref role="3cqZAo" node="1OShD0Ifj4m" resolve="Node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1OShD0Ifj4U" role="3cqZAp" />
          <node concept="3vlDli" id="1OShD0Ifj4V" role="3cqZAp">
            <node concept="37vLTw" id="1OShD0Ifj4X" role="3tpDZB">
              <ref role="3cqZAo" node="1OShD0Ifj4$" resolve="a" />
            </node>
            <node concept="2YIFZM" id="6HT7BWBPrJ8" role="3tpDZA">
              <ref role="37wK5l" to="ie8e:6HT7BWBOXr$" resolve="ground" />
              <ref role="1Pybhc" to="ie8e:6HT7BWBOXme" resolve="AtomUtil" />
              <node concept="37vLTw" id="6HT7BWBPrJ9" role="37wK5m">
                <ref role="3cqZAo" node="1OShD0Ifj4M" resolve="b" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="dfChU1yMl4" role="3s_gse">
        <property role="3s$Bm0" value="value_role" />
        <node concept="3cqZAl" id="dfChU1yMl5" role="3clF45" />
        <node concept="3Tm1VV" id="dfChU1yMl6" role="1B3o_S" />
        <node concept="3clFbS" id="dfChU1yMl7" role="3clF47">
          <node concept="3clFbH" id="dfChU1yMl8" role="3cqZAp" />
          <node concept="3cpWs8" id="dfChU1yMl9" role="3cqZAp">
            <node concept="3cpWsn" id="dfChU1yMla" role="3cpWs9">
              <property role="TrG5h" value="Role" />
              <node concept="3uibUv" id="7FFmDVAOR0Y" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="dfChU1yMlc" role="33vP2m">
                <node concept="1pGfFk" id="dfChU1yMld" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                  <node concept="1oi1Uc" id="dfChU1yMle" role="37wK5m">
                    <node concept="1oi5Wm" id="dfChU1ySfn" role="1oi0x0">
                      <property role="TrG5h" value="bar" />
                      <node concept="1oi5XN" id="dfChU1ySfo" role="1oi5zu">
                        <property role="1oi5yK" value="abc" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="dfChU1yMli" role="3cqZAp" />
          <node concept="3cpWs8" id="dfChU1yMlj" role="3cqZAp">
            <node concept="3cpWsn" id="dfChU1yMlk" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="dfChU1yMll" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="dfChU1yMlm" role="33vP2m">
                <node concept="1oi5UN" id="dfChU1yMln" role="1oi0x0">
                  <node concept="1oi5Wm" id="dfChU1EoaL" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="1oi5XN" id="dfChU1EoaR" role="1oi5zu">
                      <property role="1oi5yK" value="xyz" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="dfChU1DQGr" role="1ojpOf">
                    <property role="TrG5h" value="bar" />
                    <node concept="1oi5XN" id="dfChU1DQGy" role="1oi5zu">
                      <property role="1oi5yK" value="abc" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="dfChU1yMls" role="3cqZAp" />
          <node concept="3cpWs8" id="dfChU1yMlt" role="3cqZAp">
            <node concept="3cpWsn" id="dfChU1yMlu" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="dfChU1yMlv" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="dfChU1yMlw" role="33vP2m">
                <node concept="1oi5UN" id="dfChU1yMlx" role="1oi0x0">
                  <node concept="1oi5Wm" id="1OShD0HA1G7" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="1oi5XN" id="1OShD0HA1G8" role="1oi5zu">
                      <property role="1oi5yK" value="xyz" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="dfChU1DQU1" role="1ojpOf">
                    <property role="TrG5h" value="_" />
                    <node concept="22Ky0T" id="dfChU1DQU6" role="lGtFl">
                      <node concept="37vLTw" id="dfChU1DQUk" role="22Ky0K">
                        <ref role="3cqZAo" node="dfChU1yMla" resolve="Role" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="dfChU1yMl_" role="3cqZAp" />
          <node concept="3vlDli" id="dfChU1yMlA" role="3cqZAp">
            <node concept="37vLTw" id="dfChU1yMlC" role="3tpDZB">
              <ref role="3cqZAo" node="dfChU1yMlk" resolve="a" />
            </node>
            <node concept="2YIFZM" id="6HT7BWBPrJv" role="3tpDZA">
              <ref role="37wK5l" to="ie8e:6HT7BWBOXr$" resolve="ground" />
              <ref role="1Pybhc" to="ie8e:6HT7BWBOXme" resolve="AtomUtil" />
              <node concept="37vLTw" id="6HT7BWBPrJw" role="37wK5m">
                <ref role="3cqZAo" node="dfChU1yMlu" resolve="b" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="dfChU1DQLg" role="3s_gse">
        <property role="3s$Bm0" value="child_role" />
        <node concept="3cqZAl" id="dfChU1DQLh" role="3clF45" />
        <node concept="3Tm1VV" id="dfChU1DQLi" role="1B3o_S" />
        <node concept="3clFbS" id="dfChU1DQLj" role="3clF47">
          <node concept="3clFbH" id="dfChU1DQLk" role="3cqZAp" />
          <node concept="3cpWs8" id="dfChU1DQLl" role="3cqZAp">
            <node concept="3cpWsn" id="dfChU1DQLm" role="3cpWs9">
              <property role="TrG5h" value="Role" />
              <node concept="3uibUv" id="7FFmDVAOR1F" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
              </node>
              <node concept="2ShNRf" id="dfChU1DQLo" role="33vP2m">
                <node concept="1pGfFk" id="dfChU1DQLp" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                  <node concept="1oi1Uc" id="dfChU1DQLq" role="37wK5m">
                    <node concept="1oi5ST" id="dfChU1DQYI" role="1oi0x0">
                      <property role="TrG5h" value="foo" />
                      <node concept="1oi5UN" id="dfChU1DQYJ" role="1oi5TL" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="dfChU1DQLt" role="3cqZAp" />
          <node concept="3cpWs8" id="dfChU1DQLu" role="3cqZAp">
            <node concept="3cpWsn" id="dfChU1DQLv" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="dfChU1DQLw" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="dfChU1DQLx" role="33vP2m">
                <node concept="1oi5UN" id="dfChU1DQLy" role="1oi0x0">
                  <node concept="1oi5ST" id="dfChU1DQYu" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="1oi5UN" id="dfChU1DQY$" role="1oi5TL" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="dfChU1DQL_" role="3cqZAp" />
          <node concept="3cpWs8" id="dfChU1DQLA" role="3cqZAp">
            <node concept="3cpWsn" id="dfChU1DQLB" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="dfChU1DQLC" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="dfChU1DQLD" role="33vP2m">
                <node concept="1oi5UN" id="dfChU1DQLE" role="1oi0x0">
                  <node concept="1oi5ST" id="dfChU1DQLF" role="1ojpOf">
                    <property role="TrG5h" value="_" />
                    <node concept="22Ky0T" id="dfChU1DQLG" role="lGtFl">
                      <node concept="37vLTw" id="dfChU1DQLH" role="22Ky0K">
                        <ref role="3cqZAo" node="dfChU1DQLm" resolve="Role" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="dfChU1DQLI" role="3cqZAp" />
          <node concept="3vlDli" id="dfChU1DQLJ" role="3cqZAp">
            <node concept="37vLTw" id="dfChU1DQLL" role="3tpDZB">
              <ref role="3cqZAo" node="dfChU1DQLv" resolve="a" />
            </node>
            <node concept="2YIFZM" id="6HT7BWBPrJQ" role="3tpDZA">
              <ref role="37wK5l" to="ie8e:6HT7BWBOXr$" resolve="ground" />
              <ref role="1Pybhc" to="ie8e:6HT7BWBOXme" resolve="AtomUtil" />
              <node concept="37vLTw" id="6HT7BWBPrJR" role="37wK5m">
                <ref role="3cqZAo" node="dfChU1DQLB" resolve="b" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="2S_ORi38Qgc" role="3s_gse">
        <property role="3s$Bm0" value="string_value" />
        <node concept="3cqZAl" id="2S_ORi38Qgd" role="3clF45" />
        <node concept="3Tm1VV" id="2S_ORi38Qge" role="1B3o_S" />
        <node concept="3clFbS" id="2S_ORi38Qgf" role="3clF47">
          <node concept="3clFbH" id="2S_ORi38Qgg" role="3cqZAp" />
          <node concept="3cpWs8" id="2S_ORi38Qgh" role="3cqZAp">
            <node concept="3cpWsn" id="2S_ORi38Qgi" role="3cpWs9">
              <property role="TrG5h" value="val" />
              <node concept="3uibUv" id="7FFmDVAOR4v" role="1tU5fm">
                <ref role="3uigEE" to="oy3s:1H8E3iB85PX" resolve="StringLogical" />
              </node>
              <node concept="2ShNRf" id="2S_ORi38Qgk" role="33vP2m">
                <node concept="1pGfFk" id="2S_ORi38QCR" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:1GDBwhEE__7" resolve="StringLogical" />
                  <node concept="Xl_RD" id="2S_ORi38QJ2" role="37wK5m">
                    <property role="Xl_RC" value="xyz" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2S_ORi38Qgo" role="3cqZAp" />
          <node concept="3cpWs8" id="2S_ORi38Qgp" role="3cqZAp">
            <node concept="3cpWsn" id="2S_ORi38Qgq" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="2S_ORi38Qgr" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="2S_ORi38Qgs" role="33vP2m">
                <node concept="1oi5UN" id="2S_ORi38Qgt" role="1oi0x0">
                  <node concept="1oi5Wm" id="2S_ORi38Qgu" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="1oi5XN" id="2S_ORi38Qgv" role="1oi5zu">
                      <property role="1oi5yK" value="abcd" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="2S_ORi38Qgw" role="1ojpOf">
                    <property role="TrG5h" value="bar" />
                    <node concept="1oi5XN" id="2S_ORi38Qgx" role="1oi5zu">
                      <property role="1oi5yK" value="xyz" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2S_ORi38Qgy" role="3cqZAp" />
          <node concept="3cpWs8" id="2S_ORi38Qgz" role="3cqZAp">
            <node concept="3cpWsn" id="2S_ORi38Qg$" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="2S_ORi38Qg_" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="2S_ORi38QgA" role="33vP2m">
                <node concept="1oi5UN" id="2S_ORi38QgB" role="1oi0x0">
                  <node concept="1oi5Wm" id="2S_ORi38QgC" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="1oi5XN" id="2S_ORi38QgD" role="1oi5zu">
                      <property role="1oi5yK" value="abcd" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="2S_ORi38QgE" role="1ojpOf">
                    <property role="TrG5h" value="bar" />
                    <node concept="1oi5XN" id="2S_ORi38QgF" role="1oi5zu">
                      <property role="1oi5yK" value="" />
                      <node concept="22Ky0T" id="2S_ORi38QgG" role="lGtFl">
                        <node concept="37vLTw" id="2S_ORi38QgH" role="22Ky0K">
                          <ref role="3cqZAo" node="2S_ORi38Qgi" resolve="val" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2S_ORi38QgI" role="3cqZAp" />
          <node concept="3vlDli" id="2S_ORi38QgJ" role="3cqZAp">
            <node concept="37vLTw" id="2S_ORi38QgL" role="3tpDZB">
              <ref role="3cqZAo" node="2S_ORi38Qgq" resolve="a" />
            </node>
            <node concept="2YIFZM" id="6HT7BWBPrKd" role="3tpDZA">
              <ref role="37wK5l" to="ie8e:6HT7BWBOXr$" resolve="ground" />
              <ref role="1Pybhc" to="ie8e:6HT7BWBOXme" resolve="AtomUtil" />
              <node concept="37vLTw" id="6HT7BWBPrKe" role="37wK5m">
                <ref role="3cqZAo" node="2S_ORi38Qg$" resolve="b" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3s_ewN" id="2ev$9JFBIYd">
    <property role="3s_ewP" value="AtomWalk" />
    <node concept="2tJIrI" id="2ev$9JFEDVF" role="jymVt" />
    <node concept="3clFb_" id="2ev$9JFEJ94" role="jymVt">
      <property role="TrG5h" value="anyValues" />
      <node concept="3uibUv" id="2ev$9JFEJ95" role="3clF45">
        <ref role="3uigEE" to="ie8e:1msb0mq99GH" resolve="ValueFunc" />
        <node concept="16syzq" id="2ev$9JFEJ96" role="11_B2D">
          <ref role="16sUi3" node="2ev$9JFEJ9e" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2ev$9JFEJ97" role="1B3o_S" />
      <node concept="3clFbS" id="2ev$9JFEJ98" role="3clF47">
        <node concept="3clFbF" id="2ev$9JFEJ99" role="3cqZAp">
          <node concept="10QFUN" id="2ev$9JFEJ9a" role="3clFbG">
            <node concept="3uibUv" id="2ev$9JFEJ9b" role="10QFUM">
              <ref role="3uigEE" to="ie8e:1msb0mq99GH" resolve="ValueFunc" />
              <node concept="16syzq" id="2ev$9JFEJ9c" role="11_B2D">
                <ref role="16sUi3" node="2ev$9JFEJ9e" resolve="T" />
              </node>
            </node>
            <node concept="2YIFZM" id="2ev$9JFEJ9d" role="10QFUP">
              <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
              <ref role="37wK5l" to="n4y8:~Matchers.anyObject():java.lang.Object" resolve="anyObject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2ev$9JFEJ9e" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ev$9JFEKIo" role="jymVt" />
    <node concept="3clFb_" id="2ev$9JFEEfC" role="jymVt">
      <property role="TrG5h" value="anyTerms" />
      <node concept="3uibUv" id="2ev$9JFEFFy" role="3clF45">
        <ref role="3uigEE" to="ie8e:5JQSuNswOXL" resolve="StemFunc" />
      </node>
      <node concept="3Tm1VV" id="2ev$9JFEEfF" role="1B3o_S" />
      <node concept="3clFbS" id="2ev$9JFEEfG" role="3clF47">
        <node concept="3clFbF" id="2ev$9JFEGHn" role="3cqZAp">
          <node concept="10QFUN" id="2ev$9JFEGHp" role="3clFbG">
            <node concept="3uibUv" id="2ev$9JFEGHq" role="10QFUM">
              <ref role="3uigEE" to="ie8e:5JQSuNswOXL" resolve="StemFunc" />
            </node>
            <node concept="2YIFZM" id="2ev$9JFEGHr" role="10QFUP">
              <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
              <ref role="37wK5l" to="n4y8:~Matchers.anyObject():java.lang.Object" resolve="anyObject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ev$9JFEIj6" role="jymVt" />
    <node concept="3clFb_" id="2ev$9JFEHV1" role="jymVt">
      <property role="TrG5h" value="anyList" />
      <node concept="3uibUv" id="2ev$9JFEHV2" role="3clF45">
        <ref role="3uigEE" to="ie8e:3OPtF03lco4" resolve="ListFunc" />
      </node>
      <node concept="3Tm1VV" id="2ev$9JFEHV4" role="1B3o_S" />
      <node concept="3clFbS" id="2ev$9JFEHV5" role="3clF47">
        <node concept="3clFbF" id="2ev$9JFEHV6" role="3cqZAp">
          <node concept="10QFUN" id="2ev$9JFEHV7" role="3clFbG">
            <node concept="3uibUv" id="2ev$9JFEHV8" role="10QFUM">
              <ref role="3uigEE" to="ie8e:3OPtF03lco4" resolve="ListFunc" />
            </node>
            <node concept="2YIFZM" id="2ev$9JFEHVa" role="10QFUP">
              <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
              <ref role="37wK5l" to="n4y8:~Matchers.anyObject():java.lang.Object" resolve="anyObject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ev$9JFEZB_" role="jymVt" />
    <node concept="3clFb_" id="2ev$9JFF0nO" role="jymVt">
      <property role="TrG5h" value="anyAtomArray" />
      <node concept="10Q1$e" id="2ev$9JFF0S3" role="3clF45">
        <node concept="3uibUv" id="2ev$9JFF0R$" role="10Q1$1">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2ev$9JFF0nR" role="1B3o_S" />
      <node concept="3clFbS" id="2ev$9JFF0nS" role="3clF47">
        <node concept="3clFbF" id="2ev$9JFF1GU" role="3cqZAp">
          <node concept="10QFUN" id="2ev$9JFF1GW" role="3clFbG">
            <node concept="10Q1$e" id="2ev$9JFF1GX" role="10QFUM">
              <node concept="3uibUv" id="2ev$9JFF1GY" role="10Q1$1">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
            </node>
            <node concept="2YIFZM" id="2ev$9JFF1GZ" role="10QFUP">
              <ref role="37wK5l" to="n4y8:~Matchers.anyObject():java.lang.Object" resolve="anyObject" />
              <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YVX0wIlgwQ" role="jymVt" />
    <node concept="3clFb_" id="5YVX0wIlg09" role="jymVt">
      <property role="TrG5h" value="anyAtomList" />
      <node concept="3uibUv" id="5YVX0wIlh32" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3qUE_q" id="5YVX0wIlh5r" role="11_B2D">
          <node concept="3uibUv" id="5YVX0wIlh7_" role="3qUE_r">
            <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5YVX0wIlg0c" role="1B3o_S" />
      <node concept="3clFbS" id="5YVX0wIlg0d" role="3clF47">
        <node concept="3clFbF" id="5YVX0wIlg0e" role="3cqZAp">
          <node concept="10QFUN" id="5YVX0wIlg0f" role="3clFbG">
            <node concept="2YIFZM" id="5YVX0wIlg0i" role="10QFUP">
              <ref role="37wK5l" to="n4y8:~Matchers.anyObject():java.lang.Object" resolve="anyObject" />
              <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
            </node>
            <node concept="3uibUv" id="5YVX0wIlhe5" role="10QFUM">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3qUE_q" id="5YVX0wIlhe6" role="11_B2D">
                <node concept="3uibUv" id="5YVX0wIlhe7" role="3qUE_r">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ev$9JFF2NQ" role="jymVt" />
    <node concept="3clFb_" id="2ev$9JFF1SS" role="jymVt">
      <property role="TrG5h" value="anyObjectArray" />
      <node concept="10Q1$e" id="2ev$9JFF1ST" role="3clF45">
        <node concept="3uibUv" id="2ev$9JFF3cm" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2ev$9JFF1SV" role="1B3o_S" />
      <node concept="3clFbS" id="2ev$9JFF1SW" role="3clF47">
        <node concept="3clFbF" id="2ev$9JFF1SX" role="3cqZAp">
          <node concept="10QFUN" id="2ev$9JFF1SY" role="3clFbG">
            <node concept="10Q1$e" id="2ev$9JFF1SZ" role="10QFUM">
              <node concept="3uibUv" id="2ev$9JFF3sQ" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2YIFZM" id="2ev$9JFF1T1" role="10QFUP">
              <ref role="37wK5l" to="n4y8:~Matchers.anyObject():java.lang.Object" resolve="anyObject" />
              <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ev$9JFF7UY" role="jymVt" />
    <node concept="3clFb_" id="2ev$9JFF8Wr" role="jymVt">
      <property role="TrG5h" value="eqTerms" />
      <node concept="37vLTG" id="2ev$9JFF9OQ" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="2ev$9JFF9Wp" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3uibUv" id="2ev$9JFF9Ok" role="3clF45">
        <ref role="3uigEE" to="ie8e:5JQSuNswOXL" resolve="StemFunc" />
      </node>
      <node concept="3Tm1VV" id="2ev$9JFF8Wu" role="1B3o_S" />
      <node concept="3clFbS" id="2ev$9JFF8Wv" role="3clF47">
        <node concept="3clFbF" id="2ev$9JFFamF" role="3cqZAp">
          <node concept="10QFUN" id="2ev$9JFFamH" role="3clFbG">
            <node concept="3uibUv" id="2ev$9JFFamI" role="10QFUM">
              <ref role="3uigEE" to="ie8e:5JQSuNswOXL" resolve="StemFunc" />
            </node>
            <node concept="2YIFZM" id="2ev$9JFFamJ" role="10QFUP">
              <ref role="37wK5l" to="n4y8:~Matchers.eq(java.lang.Object):java.lang.Object" resolve="eq" />
              <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
              <node concept="37vLTw" id="2ev$9JFFa$M" role="37wK5m">
                <ref role="3cqZAo" node="2ev$9JFF9OQ" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YVX0wIlnoW" role="jymVt" />
    <node concept="3clFb_" id="5YVX0wIlmGu" role="jymVt">
      <property role="TrG5h" value="eqList" />
      <node concept="37vLTG" id="5YVX0wIlmGv" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="5YVX0wIlmGw" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3uibUv" id="5YVX0wIlo0b" role="3clF45">
        <ref role="3uigEE" to="ie8e:3OPtF03lco4" resolve="ListFunc" />
      </node>
      <node concept="3Tm1VV" id="5YVX0wIlmGy" role="1B3o_S" />
      <node concept="3clFbS" id="5YVX0wIlmGz" role="3clF47">
        <node concept="3clFbF" id="5YVX0wIlmG$" role="3cqZAp">
          <node concept="10QFUN" id="5YVX0wIlmG_" role="3clFbG">
            <node concept="3uibUv" id="5YVX0wIlo0W" role="10QFUM">
              <ref role="3uigEE" to="ie8e:3OPtF03lco4" resolve="ListFunc" />
            </node>
            <node concept="2YIFZM" id="5YVX0wIlmGB" role="10QFUP">
              <ref role="37wK5l" to="n4y8:~Matchers.eq(java.lang.Object):java.lang.Object" resolve="eq" />
              <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
              <node concept="37vLTw" id="5YVX0wIlmGC" role="37wK5m">
                <ref role="3cqZAo" node="5YVX0wIlmGv" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ev$9JFFbyX" role="jymVt" />
    <node concept="3clFb_" id="2ev$9JFFaOx" role="jymVt">
      <property role="TrG5h" value="eqValues" />
      <node concept="37vLTG" id="2ev$9JFFaOy" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="2ev$9JFFaOz" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3uibUv" id="2ev$9JFFaO_" role="3clF45">
        <ref role="3uigEE" to="ie8e:1msb0mq99GH" resolve="ValueFunc" />
        <node concept="16syzq" id="2ev$9JFFaOA" role="11_B2D">
          <ref role="16sUi3" node="2ev$9JFFaOJ" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2ev$9JFFaOB" role="1B3o_S" />
      <node concept="3clFbS" id="2ev$9JFFaOC" role="3clF47">
        <node concept="3clFbF" id="2ev$9JFFaOD" role="3cqZAp">
          <node concept="10QFUN" id="2ev$9JFFaOE" role="3clFbG">
            <node concept="3uibUv" id="2ev$9JFFaOF" role="10QFUM">
              <ref role="3uigEE" to="ie8e:1msb0mq99GH" resolve="ValueFunc" />
              <node concept="16syzq" id="2ev$9JFFaOG" role="11_B2D">
                <ref role="16sUi3" node="2ev$9JFFaOJ" resolve="T" />
              </node>
            </node>
            <node concept="2YIFZM" id="2ev$9JFFaOH" role="10QFUP">
              <ref role="37wK5l" to="n4y8:~Matchers.eq(java.lang.Object):java.lang.Object" resolve="eq" />
              <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
              <node concept="37vLTw" id="2ev$9JFFaOI" role="37wK5m">
                <ref role="3cqZAo" node="2ev$9JFFaOy" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2ev$9JFFaOJ" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2ev$9JFBIYe" role="1B3o_S" />
    <node concept="3s_gsd" id="2ev$9JFBIYf" role="3s_ewO">
      <node concept="3s$Bmu" id="2ev$9JFBKE7" role="3s_gse">
        <property role="3s$Bm0" value="empty" />
        <node concept="3cqZAl" id="2ev$9JFBKE9" role="3clF45" />
        <node concept="3Tm1VV" id="2ev$9JFBKEb" role="1B3o_S" />
        <node concept="3clFbS" id="2ev$9JFBKEc" role="3clF47">
          <node concept="3cpWs8" id="2ev$9JFBKEw" role="3cqZAp">
            <node concept="3cpWsn" id="2ev$9JFBKEx" role="3cpWs9">
              <property role="TrG5h" value="atom" />
              <node concept="3uibUv" id="2ev$9JFBKEy" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="2ev$9JFBKEz" role="33vP2m">
                <node concept="1oi5UN" id="2ev$9JFBKE$" role="1oi0x0" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2ev$9JFBKFj" role="3cqZAp" />
          <node concept="3cpWs8" id="2ev$9JFBNlR" role="3cqZAp">
            <node concept="3cpWsn" id="2ev$9JFBNlS" role="3cpWs9">
              <property role="TrG5h" value="mock" />
              <node concept="3uibUv" id="2ev$9JFBNlQ" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:3JgCwkqiP3h" resolve="AtomWalk.Walker" />
              </node>
              <node concept="2YIFZM" id="2ev$9JFBNlT" role="33vP2m">
                <ref role="37wK5l" to="n4y8:~Mockito.mock(java.lang.Class):java.lang.Object" resolve="mock" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="3VsKOn" id="2ev$9JFBNlU" role="37wK5m">
                  <ref role="3VsUkX" to="ie8e:3JgCwkqiP3h" resolve="AtomWalk.Walker" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2ev$9JFD$a0" role="3cqZAp">
            <node concept="2OqwBi" id="2ev$9JFD_sZ" role="3clFbG">
              <node concept="2YIFZM" id="2ev$9JFD$gY" role="2Oq$k0">
                <ref role="37wK5l" to="n4y8:~Mockito.when(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="when" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="2OqwBi" id="2ev$9JFD_cy" role="37wK5m">
                  <node concept="37vLTw" id="2ev$9JFD$lP" role="2Oq$k0">
                    <ref role="3cqZAo" node="2ev$9JFBNlS" resolve="mock" />
                  </node>
                  <node concept="liA8E" id="2ev$9JFD_nP" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:3JgCwkqiP3p" resolve="walkTerms" />
                    <node concept="1rXfSq" id="2ev$9JFEITF" role="37wK5m">
                      <ref role="37wK5l" node="2ev$9JFEEfC" resolve="anyTerms" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2ev$9JFDA_w" role="2OqNvi">
                <ref role="37wK5l" to="98:~OngoingStubbing.thenReturn(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="thenReturn" />
                <node concept="Rm8GO" id="2ev$9JFDAMR" role="37wK5m">
                  <ref role="Rm8GQ" to="ie8e:2q_78a95hAO" resolve="STOP" />
                  <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2ev$9JFD$3h" role="3cqZAp" />
          <node concept="3clFbF" id="2ev$9JFBKZE" role="3cqZAp">
            <node concept="2OqwBi" id="2ev$9JFBL8Z" role="3clFbG">
              <node concept="2ShNRf" id="2ev$9JFCM5m" role="2Oq$k0">
                <node concept="1pGfFk" id="2ev$9JFCM5n" role="2ShVmc">
                  <ref role="37wK5l" to="ie8e:47nvOnTQN6Q" resolve="AtomWalk" />
                  <node concept="37vLTw" id="2ev$9JFCM5o" role="37wK5m">
                    <ref role="3cqZAo" node="2ev$9JFBNlS" resolve="mock" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2ev$9JFBLg6" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:1hOy_Afq63K" resolve="walk" />
                <node concept="37vLTw" id="2ev$9JFBLgX" role="37wK5m">
                  <ref role="3cqZAo" node="2ev$9JFBKEx" resolve="atom" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2ev$9JFBNGn" role="3cqZAp" />
          <node concept="3clFbF" id="2ev$9JFCUkr" role="3cqZAp">
            <node concept="2OqwBi" id="2ev$9JFD8AJ" role="3clFbG">
              <node concept="2YIFZM" id="2ev$9JFCUun" role="2Oq$k0">
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                <node concept="37vLTw" id="2ev$9JFCU_6" role="37wK5m">
                  <ref role="3cqZAo" node="2ev$9JFBNlS" resolve="mock" />
                </node>
              </node>
              <node concept="liA8E" id="2ev$9JFD93F" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3JgCwkqiP3p" resolve="walkTerms" />
                <node concept="10QFUN" id="2ev$9JFDJDT" role="37wK5m">
                  <node concept="3uibUv" id="5cGCTtqzhLw" role="10QFUM">
                    <ref role="3uigEE" to="ie8e:5JQSuNswOXL" resolve="StemFunc" />
                  </node>
                  <node concept="2YIFZM" id="2ev$9JFDJDP" role="10QFUP">
                    <ref role="37wK5l" to="n4y8:~Matchers.eq(java.lang.Object):java.lang.Object" resolve="eq" />
                    <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                    <node concept="37vLTw" id="2ev$9JFDJDR" role="37wK5m">
                      <ref role="3cqZAo" node="2ev$9JFBKEx" resolve="atom" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="2ev$9JFDTdJ" role="3cqZAp">
            <node concept="3SKdUq" id="2ev$9JFDTrD" role="3SKWNk">
              <property role="3SKdUp" value="TODO: make sure endWalk is called" />
            </node>
          </node>
          <node concept="1X3_iC" id="3U_KxQf9swe" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3clFbF" id="2ev$9JFCMRW" role="8Wnug">
              <node concept="2OqwBi" id="2ev$9JFCN6D" role="3clFbG">
                <node concept="2YIFZM" id="2ev$9JFCN0S" role="2Oq$k0">
                  <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                  <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                  <node concept="37vLTw" id="2ev$9JFCN5N" role="37wK5m">
                    <ref role="3cqZAo" node="2ev$9JFBNlS" resolve="mock" />
                  </node>
                </node>
                <node concept="liA8E" id="2ev$9JFCNyC" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:5s497Vr3IZm" resolve="endWalk" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="2ev$9JFDT$b" role="3s_gse">
        <property role="3s$Bm0" value="value" />
        <node concept="3cqZAl" id="2ev$9JFDT$d" role="3clF45" />
        <node concept="3Tm1VV" id="2ev$9JFDT$f" role="1B3o_S" />
        <node concept="3clFbS" id="2ev$9JFDT$g" role="3clF47">
          <node concept="3clFbH" id="2ev$9JFDVrL" role="3cqZAp" />
          <node concept="3cpWs8" id="2ev$9JFE0Mt" role="3cqZAp">
            <node concept="3cpWsn" id="2ev$9JFE0Mu" role="3cpWs9">
              <property role="TrG5h" value="val" />
              <node concept="3uibUv" id="2ev$9JFE0Mv" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="2ev$9JFE10R" role="33vP2m">
                <node concept="1oi5Wm" id="2ev$9JFE11a" role="1oi0x0">
                  <property role="TrG5h" value="foo" />
                  <node concept="1oi5XN" id="2ev$9JFE11b" role="1oi5zu">
                    <property role="1oi5yK" value="bar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2ev$9JFDTTY" role="3cqZAp">
            <node concept="3cpWsn" id="2ev$9JFDTTZ" role="3cpWs9">
              <property role="TrG5h" value="atom" />
              <node concept="3uibUv" id="2ev$9JFDTU0" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="2ev$9JFDTU1" role="33vP2m">
                <node concept="1oi5UN" id="2ev$9JFDTU2" role="1oi0x0">
                  <node concept="1oi5Wm" id="2ev$9JFDTU3" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="1oi5XN" id="2ev$9JFDTU4" role="1oi5zu">
                      <property role="1oi5yK" value="bar" />
                    </node>
                    <node concept="22Ky0T" id="2ev$9JFE11l" role="lGtFl">
                      <node concept="37vLTw" id="2ev$9JFE11P" role="22Ky0K">
                        <ref role="3cqZAo" node="2ev$9JFE0Mu" resolve="val" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2ev$9JFDT_k" role="3cqZAp" />
          <node concept="3cpWs8" id="2ev$9JFDVC5" role="3cqZAp">
            <node concept="3cpWsn" id="2ev$9JFDVC6" role="3cpWs9">
              <property role="TrG5h" value="mock" />
              <node concept="3uibUv" id="2ev$9JFDVC7" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:3JgCwkqiP3h" resolve="AtomWalk.Walker" />
              </node>
              <node concept="2YIFZM" id="2ev$9JFDVC8" role="33vP2m">
                <ref role="37wK5l" to="n4y8:~Mockito.mock(java.lang.Class):java.lang.Object" resolve="mock" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="3VsKOn" id="2ev$9JFDVC9" role="37wK5m">
                  <ref role="3VsUkX" to="ie8e:3JgCwkqiP3h" resolve="AtomWalk.Walker" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2ev$9JFE1bK" role="3cqZAp">
            <node concept="2OqwBi" id="2ev$9JFE1bL" role="3clFbG">
              <node concept="2YIFZM" id="2ev$9JFE1bM" role="2Oq$k0">
                <ref role="37wK5l" to="n4y8:~Mockito.when(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="when" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="2OqwBi" id="2ev$9JFE1bN" role="37wK5m">
                  <node concept="37vLTw" id="2ev$9JFE1bO" role="2Oq$k0">
                    <ref role="3cqZAo" node="2ev$9JFDVC6" resolve="mock" />
                  </node>
                  <node concept="liA8E" id="2ev$9JFE1bP" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:3JgCwkqiP3p" resolve="walkTerms" />
                    <node concept="1rXfSq" id="2ev$9JFEHGh" role="37wK5m">
                      <ref role="37wK5l" node="2ev$9JFEEfC" resolve="anyTerms" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2ev$9JFE1bW" role="2OqNvi">
                <ref role="37wK5l" to="98:~OngoingStubbing.thenReturn(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="thenReturn" />
                <node concept="Rm8GO" id="2ev$9JFE9Ih" role="37wK5m">
                  <ref role="Rm8GQ" to="ie8e:2q_78a95hAM" resolve="WALK" />
                  <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2ev$9JFDVCa" role="3cqZAp">
            <node concept="2OqwBi" id="2ev$9JFDVCb" role="3clFbG">
              <node concept="2YIFZM" id="2ev$9JFDVCc" role="2Oq$k0">
                <ref role="37wK5l" to="n4y8:~Mockito.when(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="when" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="2OqwBi" id="2ev$9JFDVCd" role="37wK5m">
                  <node concept="37vLTw" id="2ev$9JFDVCe" role="2Oq$k0">
                    <ref role="3cqZAo" node="2ev$9JFDVC6" resolve="mock" />
                  </node>
                  <node concept="liA8E" id="2ev$9JFDVCf" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:3JgCwkqiP3$" resolve="walkValues" />
                    <node concept="1rXfSq" id="2ev$9JFELEF" role="37wK5m">
                      <ref role="37wK5l" node="2ev$9JFEJ94" resolve="anyValues" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2ev$9JFDVCm" role="2OqNvi">
                <ref role="37wK5l" to="98:~OngoingStubbing.thenReturn(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="thenReturn" />
                <node concept="Rm8GO" id="2ev$9JFDVCn" role="37wK5m">
                  <ref role="Rm8GQ" to="ie8e:2q_78a95hAO" resolve="STOP" />
                  <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2ev$9JFDVCo" role="3cqZAp" />
          <node concept="3clFbF" id="2ev$9JFDVCp" role="3cqZAp">
            <node concept="2OqwBi" id="2ev$9JFDVCq" role="3clFbG">
              <node concept="2ShNRf" id="2ev$9JFDVCr" role="2Oq$k0">
                <node concept="1pGfFk" id="2ev$9JFDVCs" role="2ShVmc">
                  <ref role="37wK5l" to="ie8e:47nvOnTQN6Q" resolve="AtomWalk" />
                  <node concept="37vLTw" id="2ev$9JFDVCt" role="37wK5m">
                    <ref role="3cqZAo" node="2ev$9JFDVC6" resolve="mock" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2ev$9JFDVCu" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:1hOy_Afq63K" resolve="walk" />
                <node concept="37vLTw" id="2ev$9JFDVCw" role="37wK5m">
                  <ref role="3cqZAo" node="2ev$9JFDTTZ" resolve="atom" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2ev$9JFDVCy" role="3cqZAp" />
          <node concept="3clFbF" id="2ev$9JFDVCz" role="3cqZAp">
            <node concept="2OqwBi" id="2ev$9JFDVC$" role="3clFbG">
              <node concept="2YIFZM" id="2ev$9JFDVC_" role="2Oq$k0">
                <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="37vLTw" id="2ev$9JFDVCA" role="37wK5m">
                  <ref role="3cqZAo" node="2ev$9JFDVC6" resolve="mock" />
                </node>
              </node>
              <node concept="liA8E" id="2ev$9JFDVCB" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3JgCwkqiP3p" resolve="walkTerms" />
                <node concept="1rXfSq" id="2ev$9JFFcqm" role="37wK5m">
                  <ref role="37wK5l" node="2ev$9JFF8Wr" resolve="eqTerms" />
                  <node concept="37vLTw" id="2ev$9JFFcx8" role="37wK5m">
                    <ref role="3cqZAo" node="2ev$9JFDTTZ" resolve="atom" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2ev$9JFEwbB" role="3cqZAp">
            <node concept="2OqwBi" id="2ev$9JFEwbC" role="3clFbG">
              <node concept="2YIFZM" id="2ev$9JFEwbD" role="2Oq$k0">
                <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="37vLTw" id="2ev$9JFEwbE" role="37wK5m">
                  <ref role="3cqZAo" node="2ev$9JFDVC6" resolve="mock" />
                </node>
              </node>
              <node concept="liA8E" id="2ev$9JFEwbF" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3JgCwkqiP3$" resolve="walkValues" />
                <node concept="1rXfSq" id="2ev$9JFFcWR" role="37wK5m">
                  <ref role="37wK5l" node="2ev$9JFFaOx" resolve="eqValues" />
                  <node concept="37vLTw" id="2ev$9JFFd2u" role="37wK5m">
                    <ref role="3cqZAo" node="2ev$9JFE0Mu" resolve="val" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2ev$9JFEqqZ" role="3cqZAp" />
          <node concept="3SKdUt" id="2ev$9JFF57x" role="3cqZAp">
            <node concept="3SKdUq" id="2ev$9JFF5$U" role="3SKWNk">
              <property role="3SKdUp" value="TODO: only specific validations" />
            </node>
          </node>
          <node concept="3clFbF" id="2ev$9JFEqKD" role="3cqZAp">
            <node concept="2YIFZM" id="2ev$9JFEr5j" role="3clFbG">
              <ref role="37wK5l" to="n4y8:~Mockito.verifyNoMoreInteractions(java.lang.Object...):void" resolve="verifyNoMoreInteractions" />
              <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
              <node concept="37vLTw" id="2ev$9JFErhz" role="37wK5m">
                <ref role="3cqZAo" node="2ev$9JFDVC6" resolve="mock" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2ev$9JFEriu" role="3cqZAp" />
          <node concept="3SKdUt" id="2ev$9JFDVCL" role="3cqZAp">
            <node concept="3SKdUq" id="2ev$9JFDVCM" role="3SKWNk">
              <property role="3SKdUp" value="TODO: make sure endWalk is called" />
            </node>
          </node>
          <node concept="1X3_iC" id="3U_KxQf9swf" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3clFbF" id="2ev$9JFDVCP" role="8Wnug">
              <node concept="2OqwBi" id="2ev$9JFDVCQ" role="3clFbG">
                <node concept="2YIFZM" id="2ev$9JFDVCR" role="2Oq$k0">
                  <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                  <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                  <node concept="37vLTw" id="2ev$9JFDVCS" role="37wK5m">
                    <ref role="3cqZAo" node="2ev$9JFDVC6" resolve="mock" />
                  </node>
                </node>
                <node concept="liA8E" id="2ev$9JFDVCT" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:5s497Vr3IZm" resolve="endWalk" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="2ev$9JFFqmj" role="3s_gse">
        <property role="3s$Bm0" value="child" />
        <node concept="3cqZAl" id="2ev$9JFFqmk" role="3clF45" />
        <node concept="3Tm1VV" id="2ev$9JFFqml" role="1B3o_S" />
        <node concept="3clFbS" id="2ev$9JFFqmm" role="3clF47">
          <node concept="3clFbH" id="2ev$9JFFqmn" role="3cqZAp" />
          <node concept="3cpWs8" id="2ev$9JFFvPC" role="3cqZAp">
            <node concept="3cpWsn" id="2ev$9JFFvPD" role="3cpWs9">
              <property role="TrG5h" value="val" />
              <node concept="3uibUv" id="2ev$9JFFvPE" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="2ev$9JFFwjN" role="33vP2m">
                <node concept="1oi5Wm" id="2ev$9JFFwk6" role="1oi0x0">
                  <property role="TrG5h" value="bar" />
                  <node concept="1oi5XN" id="2ev$9JFFwk7" role="1oi5zu">
                    <property role="1oi5yK" value="text" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2ev$9JFFqmo" role="3cqZAp">
            <node concept="3cpWsn" id="2ev$9JFFqmp" role="3cpWs9">
              <property role="TrG5h" value="child" />
              <node concept="3uibUv" id="2ev$9JFFqmq" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="2ev$9JFFqmr" role="33vP2m">
                <node concept="1oi5UN" id="2ev$9JFFs2v" role="1oi0x0">
                  <node concept="1oi5Wm" id="2ev$9JFFs2w" role="1ojpOf">
                    <property role="TrG5h" value="bar" />
                    <node concept="1oi5XN" id="2ev$9JFFs2x" role="1oi5zu">
                      <property role="1oi5yK" value="text" />
                    </node>
                    <node concept="22Ky0T" id="2ev$9JFFuTX" role="lGtFl">
                      <node concept="37vLTw" id="2ev$9JFFwkt" role="22Ky0K">
                        <ref role="3cqZAo" node="2ev$9JFFvPD" resolve="val" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2ev$9JFG2bs" role="3cqZAp">
            <node concept="3cpWsn" id="2ev$9JFG2bt" role="3cpWs9">
              <property role="TrG5h" value="role" />
              <node concept="3uibUv" id="2ev$9JFG2bu" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="2ev$9JFG2OE" role="33vP2m">
                <node concept="1oi5ST" id="2ev$9JFG2Pd" role="1oi0x0">
                  <property role="TrG5h" value="foo" />
                  <node concept="1oi5UN" id="2ev$9JFG2Pe" role="1oi5TL">
                    <node concept="22Ky0T" id="2ev$9JFG2Pf" role="lGtFl">
                      <node concept="37vLTw" id="2ev$9JFG2Ph" role="22Ky0K">
                        <ref role="3cqZAo" node="2ev$9JFFqmp" resolve="child" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2ev$9JFFqmu" role="3cqZAp">
            <node concept="3cpWsn" id="2ev$9JFFqmv" role="3cpWs9">
              <property role="TrG5h" value="atom" />
              <node concept="3uibUv" id="2ev$9JFFqmw" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="2ev$9JFFqmx" role="33vP2m">
                <node concept="1oi5UN" id="2ev$9JFFqmy" role="1oi0x0">
                  <node concept="1oi5ST" id="2ev$9JFFsam" role="1ojpOf">
                    <property role="TrG5h" value="foo" />
                    <node concept="1oi5UN" id="2ev$9JFFsaq" role="1oi5TL" />
                    <node concept="22Ky0T" id="2ev$9JFG2QS" role="lGtFl">
                      <node concept="37vLTw" id="2ev$9JFG2R6" role="22Ky0K">
                        <ref role="3cqZAo" node="2ev$9JFG2bt" resolve="role" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2ev$9JFFqmD" role="3cqZAp" />
          <node concept="3cpWs8" id="2ev$9JFFqmE" role="3cqZAp">
            <node concept="3cpWsn" id="2ev$9JFFqmF" role="3cpWs9">
              <property role="TrG5h" value="mock" />
              <node concept="3uibUv" id="2ev$9JFFqmG" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:3JgCwkqiP3h" resolve="AtomWalk.Walker" />
              </node>
              <node concept="2YIFZM" id="2ev$9JFFqmH" role="33vP2m">
                <ref role="37wK5l" to="n4y8:~Mockito.mock(java.lang.Class):java.lang.Object" resolve="mock" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="3VsKOn" id="2ev$9JFFqmI" role="37wK5m">
                  <ref role="3VsUkX" to="ie8e:3JgCwkqiP3h" resolve="AtomWalk.Walker" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2ev$9JFFqmJ" role="3cqZAp">
            <node concept="2OqwBi" id="2ev$9JFFqmK" role="3clFbG">
              <node concept="2YIFZM" id="2ev$9JFFqmL" role="2Oq$k0">
                <ref role="37wK5l" to="n4y8:~Mockito.when(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="when" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="2OqwBi" id="2ev$9JFFqmM" role="37wK5m">
                  <node concept="37vLTw" id="2ev$9JFFqmN" role="2Oq$k0">
                    <ref role="3cqZAo" node="2ev$9JFFqmF" resolve="mock" />
                  </node>
                  <node concept="liA8E" id="2ev$9JFFqmO" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:3JgCwkqiP3p" resolve="walkTerms" />
                    <node concept="1rXfSq" id="2ev$9JFFqmP" role="37wK5m">
                      <ref role="37wK5l" node="2ev$9JFEEfC" resolve="anyTerms" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2ev$9JFFqmR" role="2OqNvi">
                <ref role="37wK5l" to="98:~OngoingStubbing.thenReturn(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="thenReturn" />
                <node concept="Rm8GO" id="2ev$9JFFqmS" role="37wK5m">
                  <ref role="Rm8GQ" to="ie8e:2q_78a95hAM" resolve="WALK" />
                  <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2ev$9JFFqmT" role="3cqZAp">
            <node concept="2OqwBi" id="2ev$9JFFqmU" role="3clFbG">
              <node concept="2YIFZM" id="2ev$9JFFqmV" role="2Oq$k0">
                <ref role="37wK5l" to="n4y8:~Mockito.when(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="when" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="2OqwBi" id="2ev$9JFFqmW" role="37wK5m">
                  <node concept="37vLTw" id="2ev$9JFFqmX" role="2Oq$k0">
                    <ref role="3cqZAo" node="2ev$9JFFqmF" resolve="mock" />
                  </node>
                  <node concept="liA8E" id="2ev$9JFFqmY" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:3JgCwkqiP3$" resolve="walkValues" />
                    <node concept="1rXfSq" id="2ev$9JFFqmZ" role="37wK5m">
                      <ref role="37wK5l" node="2ev$9JFEJ94" resolve="anyValues" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2ev$9JFFqn1" role="2OqNvi">
                <ref role="37wK5l" to="98:~OngoingStubbing.thenReturn(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="thenReturn" />
                <node concept="Rm8GO" id="2ev$9JFFqn2" role="37wK5m">
                  <ref role="Rm8GQ" to="ie8e:2q_78a95hAO" resolve="STOP" />
                  <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2ev$9JFFqn3" role="3cqZAp" />
          <node concept="3clFbF" id="2ev$9JFFqn4" role="3cqZAp">
            <node concept="2OqwBi" id="2ev$9JFFqn5" role="3clFbG">
              <node concept="2ShNRf" id="2ev$9JFFqn6" role="2Oq$k0">
                <node concept="1pGfFk" id="2ev$9JFFqn7" role="2ShVmc">
                  <ref role="37wK5l" to="ie8e:47nvOnTQN6Q" resolve="AtomWalk" />
                  <node concept="37vLTw" id="2ev$9JFFqn8" role="37wK5m">
                    <ref role="3cqZAo" node="2ev$9JFFqmF" resolve="mock" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2ev$9JFFqn9" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:1hOy_Afq63K" resolve="walk" />
                <node concept="37vLTw" id="2ev$9JFFqnb" role="37wK5m">
                  <ref role="3cqZAo" node="2ev$9JFFqmv" resolve="atom" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2ev$9JFFqnd" role="3cqZAp" />
          <node concept="3clFbF" id="2ev$9JFFqne" role="3cqZAp">
            <node concept="2OqwBi" id="2ev$9JFFqnf" role="3clFbG">
              <node concept="2YIFZM" id="2ev$9JFFqng" role="2Oq$k0">
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                <node concept="37vLTw" id="2ev$9JFFqnh" role="37wK5m">
                  <ref role="3cqZAo" node="2ev$9JFFqmF" resolve="mock" />
                </node>
              </node>
              <node concept="liA8E" id="2ev$9JFFqni" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3JgCwkqiP3p" resolve="walkTerms" />
                <node concept="1rXfSq" id="2ev$9JFFqnj" role="37wK5m">
                  <ref role="37wK5l" node="2ev$9JFF8Wr" resolve="eqTerms" />
                  <node concept="37vLTw" id="2ev$9JFFqnl" role="37wK5m">
                    <ref role="3cqZAo" node="2ev$9JFFqmv" resolve="atom" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2ev$9JFFBtS" role="3cqZAp">
            <node concept="2OqwBi" id="2ev$9JFFBtT" role="3clFbG">
              <node concept="2YIFZM" id="2ev$9JFFBtU" role="2Oq$k0">
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                <node concept="37vLTw" id="2ev$9JFFBtV" role="37wK5m">
                  <ref role="3cqZAo" node="2ev$9JFFqmF" resolve="mock" />
                </node>
              </node>
              <node concept="liA8E" id="2ev$9JFFBtY" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3JgCwkqiP3p" resolve="walkTerms" />
                <node concept="1rXfSq" id="2ev$9JFFBtZ" role="37wK5m">
                  <ref role="37wK5l" node="2ev$9JFF8Wr" resolve="eqTerms" />
                  <node concept="37vLTw" id="2ev$9JFG3wU" role="37wK5m">
                    <ref role="3cqZAo" node="2ev$9JFG2bt" resolve="role" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2ev$9JFG0cu" role="3cqZAp">
            <node concept="2OqwBi" id="2ev$9JFG0cv" role="3clFbG">
              <node concept="2YIFZM" id="2ev$9JFG0cw" role="2Oq$k0">
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                <node concept="37vLTw" id="2ev$9JFG0cx" role="37wK5m">
                  <ref role="3cqZAo" node="2ev$9JFFqmF" resolve="mock" />
                </node>
              </node>
              <node concept="liA8E" id="2ev$9JFG0cy" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3JgCwkqiP3p" resolve="walkTerms" />
                <node concept="1rXfSq" id="2ev$9JFG0cz" role="37wK5m">
                  <ref role="37wK5l" node="2ev$9JFF8Wr" resolve="eqTerms" />
                  <node concept="37vLTw" id="2ev$9JFG0c_" role="37wK5m">
                    <ref role="3cqZAo" node="2ev$9JFFqmp" resolve="child" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2ev$9JFFqno" role="3cqZAp">
            <node concept="2OqwBi" id="2ev$9JFFqnp" role="3clFbG">
              <node concept="2YIFZM" id="2ev$9JFFqnq" role="2Oq$k0">
                <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="37vLTw" id="2ev$9JFFqnr" role="37wK5m">
                  <ref role="3cqZAo" node="2ev$9JFFqmF" resolve="mock" />
                </node>
              </node>
              <node concept="liA8E" id="2ev$9JFFqns" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3JgCwkqiP3$" resolve="walkValues" />
                <node concept="1rXfSq" id="2ev$9JFFqnt" role="37wK5m">
                  <ref role="37wK5l" node="2ev$9JFFaOx" resolve="eqValues" />
                  <node concept="37vLTw" id="2ev$9JFFwOg" role="37wK5m">
                    <ref role="3cqZAo" node="2ev$9JFFvPD" resolve="val" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2ev$9JFFqny" role="3cqZAp" />
          <node concept="3SKdUt" id="2ev$9JFFqnz" role="3cqZAp">
            <node concept="3SKdUq" id="2ev$9JFFqn$" role="3SKWNk">
              <property role="3SKdUp" value="TODO: only specific validations" />
            </node>
          </node>
          <node concept="3clFbF" id="2ev$9JFFqn_" role="3cqZAp">
            <node concept="2YIFZM" id="2ev$9JFFqnA" role="3clFbG">
              <ref role="37wK5l" to="n4y8:~Mockito.verifyNoMoreInteractions(java.lang.Object...):void" resolve="verifyNoMoreInteractions" />
              <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
              <node concept="37vLTw" id="2ev$9JFFqnB" role="37wK5m">
                <ref role="3cqZAo" node="2ev$9JFFqmF" resolve="mock" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2ev$9JFFqnC" role="3cqZAp" />
          <node concept="3SKdUt" id="2ev$9JFFqnD" role="3cqZAp">
            <node concept="3SKdUq" id="2ev$9JFFqnE" role="3SKWNk">
              <property role="3SKdUp" value="TODO: make sure endWalk is called" />
            </node>
          </node>
          <node concept="1X3_iC" id="3U_KxQf9swg" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3clFbF" id="2ev$9JFFqnH" role="8Wnug">
              <node concept="2OqwBi" id="2ev$9JFFqnI" role="3clFbG">
                <node concept="2YIFZM" id="2ev$9JFFqnJ" role="2Oq$k0">
                  <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                  <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                  <node concept="37vLTw" id="2ev$9JFFqnK" role="37wK5m">
                    <ref role="3cqZAo" node="2ev$9JFFqmF" resolve="mock" />
                  </node>
                </node>
                <node concept="liA8E" id="2ev$9JFFqnL" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:5s497Vr3IZm" resolve="endWalk" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="5YVX0wIjRSt" role="3s_gse">
        <property role="3s$Bm0" value="list" />
        <node concept="3cqZAl" id="5YVX0wIjRSu" role="3clF45" />
        <node concept="3Tm1VV" id="5YVX0wIjRSv" role="1B3o_S" />
        <node concept="3clFbS" id="5YVX0wIjRSw" role="3clF47">
          <node concept="3clFbH" id="5YVX0wIjRSx" role="3cqZAp" />
          <node concept="3cpWs8" id="5YVX0wIjZEW" role="3cqZAp">
            <node concept="3cpWsn" id="5YVX0wIjZEX" role="3cpWs9">
              <property role="TrG5h" value="first" />
              <node concept="3uibUv" id="5YVX0wIjZEV" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="5YVX0wIjZEY" role="33vP2m">
                <node concept="1oi5UN" id="5YVX0wIjZEZ" role="1oi0x0">
                  <node concept="1oi5Wm" id="5YVX0wIjZF0" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="5YVX0wIjZF1" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="5YVX0wIjZF2" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="5YVX0wIjZF3" role="1oi5zu">
                      <property role="1oi5yK" value="Object" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5YVX0wIk0aQ" role="3cqZAp">
            <node concept="3cpWsn" id="5YVX0wIk0aR" role="3cpWs9">
              <property role="TrG5h" value="second" />
              <node concept="3uibUv" id="5YVX0wIk0aS" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="5YVX0wIk0aT" role="33vP2m">
                <node concept="1oi5UN" id="5YVX0wIk0rb" role="1oi0x0">
                  <node concept="1oi5Wm" id="5YVX0wIk0rc" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="5YVX0wIk0rd" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="5YVX0wIk0re" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="5YVX0wIk0rf" role="1oi5zu">
                      <property role="1oi5yK" value="Iterable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5YVX0wIk0rC" role="3cqZAp">
            <node concept="3cpWsn" id="5YVX0wIk0rD" role="3cpWs9">
              <property role="TrG5h" value="third" />
              <node concept="3uibUv" id="5YVX0wIk0rE" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="5YVX0wIk0rF" role="33vP2m">
                <node concept="1oi5UN" id="5YVX0wIk0FV" role="1oi0x0">
                  <node concept="1oi5Wm" id="5YVX0wIk0FW" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="5YVX0wIk0FX" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="5YVX0wIk0FY" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="5YVX0wIk0FZ" role="1oi5zu">
                      <property role="1oi5yK" value="List" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5YVX0wIk0GC" role="3cqZAp" />
          <node concept="3cpWs8" id="3t7_2FgLswu" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgLswv" role="3cpWs9">
              <property role="TrG5h" value="list" />
              <node concept="3uibUv" id="3t7_2FgLsww" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2FgLsIG" role="33vP2m">
                <node concept="KCUsM" id="5YVX0wIlrxs" role="1oi0x0">
                  <node concept="1oi5ST" id="5YVX0wIlrxt" role="KCVpo">
                    <property role="TrG5h" value="list" />
                    <node concept="KCUsM" id="5YVX0wIlrxv" role="1oi5TL">
                      <node concept="1oi5UN" id="5YVX0wIlrxw" role="KCVpo">
                        <node concept="1oi5Wm" id="5YVX0wIlrxx" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="5YVX0wIlrxy" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="5YVX0wIlrxz" role="1ojpOf">
                          <property role="TrG5h" value="classifier" />
                          <node concept="1oi5XN" id="5YVX0wIlrx$" role="1oi5zu">
                            <property role="1oi5yK" value="Object" />
                          </node>
                        </node>
                        <node concept="22Ky0T" id="5YVX0wIlrx_" role="lGtFl">
                          <node concept="37vLTw" id="5YVX0wIlrxA" role="22Ky0K">
                            <ref role="3cqZAo" node="5YVX0wIjZEX" resolve="first" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="5YVX0wIlrxB" role="KCVpo">
                        <node concept="1oi5Wm" id="5YVX0wIlrxC" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="5YVX0wIlrxD" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="5YVX0wIlrxE" role="1ojpOf">
                          <property role="TrG5h" value="classifier" />
                          <node concept="1oi5XN" id="5YVX0wIlrxF" role="1oi5zu">
                            <property role="1oi5yK" value="Iterable" />
                          </node>
                        </node>
                        <node concept="22Ky0T" id="5YVX0wIlrxG" role="lGtFl">
                          <node concept="37vLTw" id="5YVX0wIlrxH" role="22Ky0K">
                            <ref role="3cqZAo" node="5YVX0wIk0aR" resolve="second" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="5YVX0wIlrxI" role="KCVpo">
                        <node concept="1oi5Wm" id="5YVX0wIlrxJ" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="5YVX0wIlrxK" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="5YVX0wIlrxL" role="1ojpOf">
                          <property role="TrG5h" value="classifier" />
                          <node concept="1oi5XN" id="5YVX0wIlrxM" role="1oi5zu">
                            <property role="1oi5yK" value="List" />
                          </node>
                        </node>
                        <node concept="22Ky0T" id="5YVX0wIlrxN" role="lGtFl">
                          <node concept="37vLTw" id="5YVX0wIlrxO" role="22Ky0K">
                            <ref role="3cqZAo" node="5YVX0wIk0rD" resolve="third" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5YVX0wIjYcy" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALW_" role="3cpWs9">
              <property role="TrG5h" value="toWalk" />
              <node concept="3uibUv" id="7t5VLKGALWA" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALWB" role="33vP2m">
                <node concept="1oi5ST" id="7t5VLKGALWC" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgLt4B" role="1oi5TL">
                    <node concept="22Ky0T" id="3t7_2FgLt4D" role="lGtFl">
                      <node concept="37vLTw" id="3t7_2FgLt4R" role="22Ky0K">
                        <ref role="3cqZAo" node="3t7_2FgLswv" resolve="list" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5YVX0wIjSQC" role="3cqZAp" />
          <node concept="3clFbH" id="5YVX0wIjRT2" role="3cqZAp" />
          <node concept="3cpWs8" id="5YVX0wIjRT3" role="3cqZAp">
            <node concept="3cpWsn" id="5YVX0wIjRT4" role="3cpWs9">
              <property role="TrG5h" value="mock" />
              <node concept="3uibUv" id="5YVX0wIjRT5" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:3JgCwkqiP3h" resolve="AtomWalk.Walker" />
              </node>
              <node concept="2YIFZM" id="5YVX0wIjRT6" role="33vP2m">
                <ref role="37wK5l" to="n4y8:~Mockito.mock(java.lang.Class):java.lang.Object" resolve="mock" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="3VsKOn" id="5YVX0wIjRT7" role="37wK5m">
                  <ref role="3VsUkX" to="ie8e:3JgCwkqiP3h" resolve="AtomWalk.Walker" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5YVX0wIjRT8" role="3cqZAp">
            <node concept="2OqwBi" id="5YVX0wIjRT9" role="3clFbG">
              <node concept="2YIFZM" id="5YVX0wIjRTa" role="2Oq$k0">
                <ref role="37wK5l" to="n4y8:~Mockito.when(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="when" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="2OqwBi" id="5YVX0wIjRTb" role="37wK5m">
                  <node concept="37vLTw" id="5YVX0wIjRTc" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YVX0wIjRT4" resolve="mock" />
                  </node>
                  <node concept="liA8E" id="5YVX0wIjRTd" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:3JgCwkqiP3p" resolve="walkTerms" />
                    <node concept="1rXfSq" id="5YVX0wIjRTe" role="37wK5m">
                      <ref role="37wK5l" node="2ev$9JFEEfC" resolve="anyTerms" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5YVX0wIjRTg" role="2OqNvi">
                <ref role="37wK5l" to="98:~OngoingStubbing.thenReturn(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="thenReturn" />
                <node concept="Rm8GO" id="5YVX0wIjRTh" role="37wK5m">
                  <ref role="Rm8GQ" to="ie8e:2q_78a95hAM" resolve="WALK" />
                  <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5YVX0wIleMN" role="3cqZAp">
            <node concept="2OqwBi" id="5YVX0wIleMO" role="3clFbG">
              <node concept="2YIFZM" id="5YVX0wIleMP" role="2Oq$k0">
                <ref role="37wK5l" to="n4y8:~Mockito.when(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="when" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="2OqwBi" id="5YVX0wIleMQ" role="37wK5m">
                  <node concept="37vLTw" id="5YVX0wIleMR" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YVX0wIjRT4" resolve="mock" />
                  </node>
                  <node concept="liA8E" id="5YVX0wIleMS" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:3JgCwkqmHc0" resolve="walkList" />
                    <node concept="1rXfSq" id="5YVX0wIleMT" role="37wK5m">
                      <ref role="37wK5l" node="2ev$9JFEHV1" resolve="anyList" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5YVX0wIleMV" role="2OqNvi">
                <ref role="37wK5l" to="98:~OngoingStubbing.thenReturn(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="thenReturn" />
                <node concept="Rm8GO" id="5YVX0wIleMW" role="37wK5m">
                  <ref role="Rm8GQ" to="ie8e:2q_78a95hAM" resolve="WALK" />
                  <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5YVX0wIlkDU" role="3cqZAp">
            <node concept="2OqwBi" id="5YVX0wIlkDV" role="3clFbG">
              <node concept="2YIFZM" id="5YVX0wIlkDW" role="2Oq$k0">
                <ref role="37wK5l" to="n4y8:~Mockito.when(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="when" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="2OqwBi" id="5YVX0wIlkDX" role="37wK5m">
                  <node concept="37vLTw" id="5YVX0wIlkDY" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YVX0wIjRT4" resolve="mock" />
                  </node>
                  <node concept="liA8E" id="5YVX0wIlkDZ" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:3JgCwkqiP3$" resolve="walkValues" />
                    <node concept="1rXfSq" id="5YVX0wIlkE0" role="37wK5m">
                      <ref role="37wK5l" node="2ev$9JFEJ94" resolve="anyValues" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5YVX0wIlkE2" role="2OqNvi">
                <ref role="37wK5l" to="98:~OngoingStubbing.thenReturn(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="thenReturn" />
                <node concept="Rm8GO" id="5YVX0wIlkVS" role="37wK5m">
                  <ref role="Rm8GQ" to="ie8e:2q_78a95hAN" resolve="CONTINUE" />
                  <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5YVX0wIjRTs" role="3cqZAp" />
          <node concept="3clFbF" id="5YVX0wIjRTt" role="3cqZAp">
            <node concept="2OqwBi" id="5YVX0wIjRTu" role="3clFbG">
              <node concept="2ShNRf" id="5YVX0wIjRTv" role="2Oq$k0">
                <node concept="1pGfFk" id="5YVX0wIjRTw" role="2ShVmc">
                  <ref role="37wK5l" to="ie8e:47nvOnTQN6Q" resolve="AtomWalk" />
                  <node concept="37vLTw" id="5YVX0wIjRTx" role="37wK5m">
                    <ref role="3cqZAo" node="5YVX0wIjRT4" resolve="mock" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5YVX0wIjRTy" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:1hOy_Afq63K" resolve="walk" />
                <node concept="37vLTw" id="5YVX0wIk2jv" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKGALW_" resolve="toWalk" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5YVX0wIjRT$" role="3cqZAp" />
          <node concept="3clFbF" id="5YVX0wIjRT_" role="3cqZAp">
            <node concept="2OqwBi" id="5YVX0wIjRTA" role="3clFbG">
              <node concept="2YIFZM" id="5YVX0wIjRTB" role="2Oq$k0">
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                <node concept="37vLTw" id="5YVX0wIjRTC" role="37wK5m">
                  <ref role="3cqZAo" node="5YVX0wIjRT4" resolve="mock" />
                </node>
              </node>
              <node concept="liA8E" id="5YVX0wIjRTD" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3JgCwkqiP3p" resolve="walkTerms" />
                <node concept="1rXfSq" id="5YVX0wIjRTE" role="37wK5m">
                  <ref role="37wK5l" node="2ev$9JFF8Wr" resolve="eqTerms" />
                  <node concept="37vLTw" id="5YVX0wIk2kr" role="37wK5m">
                    <ref role="3cqZAo" node="5YVX0wIjZEX" resolve="first" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5YVX0wIjRTH" role="3cqZAp">
            <node concept="2OqwBi" id="5YVX0wIjRTI" role="3clFbG">
              <node concept="2YIFZM" id="5YVX0wIjRTJ" role="2Oq$k0">
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                <node concept="37vLTw" id="5YVX0wIjRTK" role="37wK5m">
                  <ref role="3cqZAo" node="5YVX0wIjRT4" resolve="mock" />
                </node>
              </node>
              <node concept="liA8E" id="5YVX0wIjRTL" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3JgCwkqiP3p" resolve="walkTerms" />
                <node concept="1rXfSq" id="5YVX0wIjRTM" role="37wK5m">
                  <ref role="37wK5l" node="2ev$9JFF8Wr" resolve="eqTerms" />
                  <node concept="37vLTw" id="5YVX0wIk2l_" role="37wK5m">
                    <ref role="3cqZAo" node="5YVX0wIk0aR" resolve="second" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5YVX0wIjRTP" role="3cqZAp">
            <node concept="2OqwBi" id="5YVX0wIjRTQ" role="3clFbG">
              <node concept="2YIFZM" id="5YVX0wIjRTR" role="2Oq$k0">
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                <node concept="37vLTw" id="5YVX0wIjRTS" role="37wK5m">
                  <ref role="3cqZAo" node="5YVX0wIjRT4" resolve="mock" />
                </node>
              </node>
              <node concept="liA8E" id="5YVX0wIjRTT" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3JgCwkqiP3p" resolve="walkTerms" />
                <node concept="1rXfSq" id="5YVX0wIjRTU" role="37wK5m">
                  <ref role="37wK5l" node="2ev$9JFF8Wr" resolve="eqTerms" />
                  <node concept="37vLTw" id="5YVX0wIk2mI" role="37wK5m">
                    <ref role="3cqZAo" node="5YVX0wIk0rD" resolve="third" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5YVX0wIlmmx" role="3cqZAp">
            <node concept="2OqwBi" id="5YVX0wIlmmy" role="3clFbG">
              <node concept="2YIFZM" id="5YVX0wIlmmz" role="2Oq$k0">
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                <node concept="37vLTw" id="5YVX0wIlmm$" role="37wK5m">
                  <ref role="3cqZAo" node="5YVX0wIjRT4" resolve="mock" />
                </node>
              </node>
              <node concept="liA8E" id="5YVX0wIlmm_" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3JgCwkqmHc0" resolve="walkList" />
                <node concept="1rXfSq" id="5YVX0wIlmmA" role="37wK5m">
                  <ref role="37wK5l" node="5YVX0wIlmGu" resolve="eqList" />
                  <node concept="37vLTw" id="3t7_2FgLt6D" role="37wK5m">
                    <ref role="3cqZAo" node="3t7_2FgLswv" resolve="list" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5YVX0wIjRU5" role="3cqZAp" />
          <node concept="3SKdUt" id="5YVX0wIjRU6" role="3cqZAp">
            <node concept="3SKdUq" id="5YVX0wIjRU7" role="3SKWNk">
              <property role="3SKdUp" value="TODO: only specific validations" />
            </node>
          </node>
          <node concept="1X3_iC" id="5YIOneOKhkO" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3clFbF" id="5YVX0wIjRU8" role="8Wnug">
              <node concept="2YIFZM" id="5YVX0wIjRU9" role="3clFbG">
                <ref role="37wK5l" to="n4y8:~Mockito.verifyNoMoreInteractions(java.lang.Object...):void" resolve="verifyNoMoreInteractions" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="37vLTw" id="5YVX0wIjRUa" role="37wK5m">
                  <ref role="3cqZAo" node="5YVX0wIjRT4" resolve="mock" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5YVX0wIjRUb" role="3cqZAp" />
          <node concept="3SKdUt" id="5YVX0wIjRUc" role="3cqZAp">
            <node concept="3SKdUq" id="5YVX0wIjRUd" role="3SKWNk">
              <property role="3SKdUp" value="TODO: make sure endWalk is called" />
            </node>
          </node>
          <node concept="1X3_iC" id="5YVX0wIjRUe" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3clFbF" id="5YVX0wIjRUf" role="8Wnug">
              <node concept="2OqwBi" id="5YVX0wIjRUg" role="3clFbG">
                <node concept="2YIFZM" id="5YVX0wIjRUh" role="2Oq$k0">
                  <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                  <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                  <node concept="37vLTw" id="5YVX0wIjRUi" role="37wK5m">
                    <ref role="3cqZAo" node="5YVX0wIjRT4" resolve="mock" />
                  </node>
                </node>
                <node concept="liA8E" id="5YVX0wIjRUj" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:5s497Vr3IZm" resolve="endWalk" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3t7_2Fg$ZTo" role="3s_gse">
        <property role="3s$Bm0" value="simplified_list" />
        <node concept="3cqZAl" id="3t7_2Fg$ZTp" role="3clF45" />
        <node concept="3Tm1VV" id="3t7_2Fg$ZTq" role="1B3o_S" />
        <node concept="3clFbS" id="3t7_2Fg$ZTr" role="3clF47">
          <node concept="3cpWs8" id="3t7_2Fg_0sO" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2Fg_0sP" role="3cpWs9">
              <property role="TrG5h" value="first" />
              <node concept="3uibUv" id="3t7_2Fg_0sQ" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2Fg_0sR" role="33vP2m">
                <node concept="1oi5UN" id="3t7_2Fg_0sS" role="1oi0x0">
                  <node concept="1oi5Wm" id="3t7_2Fg_0sT" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="3t7_2Fg_0sU" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3t7_2Fg_0sV" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="3t7_2Fg_0sW" role="1oi5zu">
                      <property role="1oi5yK" value="Object" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3t7_2Fg_0sX" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2Fg_0sY" role="3cpWs9">
              <property role="TrG5h" value="second" />
              <node concept="3uibUv" id="3t7_2Fg_0sZ" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2Fg_0t0" role="33vP2m">
                <node concept="1oi5UN" id="3t7_2Fg_0t1" role="1oi0x0">
                  <node concept="1oi5Wm" id="3t7_2Fg_0t2" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="3t7_2Fg_0t3" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3t7_2Fg_0t4" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="3t7_2Fg_0t5" role="1oi5zu">
                      <property role="1oi5yK" value="Iterable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3t7_2Fg_0t6" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2Fg_0t7" role="3cpWs9">
              <property role="TrG5h" value="third" />
              <node concept="3uibUv" id="3t7_2Fg_0t8" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2Fg_0t9" role="33vP2m">
                <node concept="1oi5UN" id="3t7_2Fg_0ta" role="1oi0x0">
                  <node concept="1oi5Wm" id="3t7_2Fg_0tb" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="3t7_2Fg_0tc" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3t7_2Fg_0td" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="3t7_2Fg_0te" role="1oi5zu">
                      <property role="1oi5yK" value="List" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3t7_2Fg_0ur" role="3cqZAp" />
          <node concept="3cpWs8" id="3t7_2Fg_0vm" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2Fg_0vn" role="3cpWs9">
              <property role="TrG5h" value="list" />
              <node concept="3uibUv" id="3t7_2Fg_0vo" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2Fg_2r8" role="33vP2m">
                <node concept="KCUsM" id="3t7_2Fg_2s4" role="1oi0x0">
                  <node concept="1oi5UN" id="3t7_2Fg_2sX" role="KCVpo">
                    <node concept="22Ky0T" id="3t7_2Fg_2sZ" role="lGtFl">
                      <node concept="37vLTw" id="3t7_2Fg_2u3" role="22Ky0K">
                        <ref role="3cqZAo" node="3t7_2Fg_0sP" resolve="first" />
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5UN" id="3t7_2Fg_2uI" role="KCVpo">
                    <node concept="22Ky0T" id="3t7_2Fg_2uO" role="lGtFl">
                      <node concept="37vLTw" id="3t7_2Fg_2v2" role="22Ky0K">
                        <ref role="3cqZAo" node="3t7_2Fg_0sY" resolve="second" />
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5UN" id="3t7_2Fg_2vk" role="KCVpo">
                    <node concept="22Ky0T" id="3t7_2Fg_2vt" role="lGtFl">
                      <node concept="37vLTw" id="3t7_2Fg_2vF" role="22Ky0K">
                        <ref role="3cqZAo" node="3t7_2Fg_0t7" resolve="third" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3t7_2Fg_0xP" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2Fg_0xQ" role="3cpWs9">
              <property role="TrG5h" value="toWalk" />
              <node concept="3uibUv" id="3t7_2Fg_0xR" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2Fg_0xS" role="33vP2m">
                <node concept="1oi5ST" id="3t7_2Fg_0xT" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2Fh2Y8x" role="1oi5TL">
                    <node concept="22Ky0T" id="3t7_2Fh2Y8z" role="lGtFl">
                      <node concept="37vLTw" id="3t7_2Fh2Y8L" role="22Ky0K">
                        <ref role="3cqZAo" node="3t7_2Fg_0vn" resolve="list" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3t7_2Fg_0Gz" role="3cqZAp" />
          <node concept="3cpWs8" id="3t7_2Fg_0Jm" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2Fg_0Jn" role="3cpWs9">
              <property role="TrG5h" value="mock" />
              <node concept="3uibUv" id="3t7_2Fg_0Jo" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:3JgCwkqiP3h" resolve="AtomWalk.Walker" />
              </node>
              <node concept="2YIFZM" id="3t7_2Fg_0Jp" role="33vP2m">
                <ref role="37wK5l" to="n4y8:~Mockito.mock(java.lang.Class):java.lang.Object" resolve="mock" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="3VsKOn" id="3t7_2Fg_0Jq" role="37wK5m">
                  <ref role="3VsUkX" to="ie8e:3JgCwkqiP3h" resolve="AtomWalk.Walker" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3t7_2Fg_0Jr" role="3cqZAp">
            <node concept="2OqwBi" id="3t7_2Fg_0Js" role="3clFbG">
              <node concept="2YIFZM" id="3t7_2Fg_0Jt" role="2Oq$k0">
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <ref role="37wK5l" to="n4y8:~Mockito.when(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="when" />
                <node concept="2OqwBi" id="3t7_2Fg_0Ju" role="37wK5m">
                  <node concept="37vLTw" id="3t7_2Fg_0Jv" role="2Oq$k0">
                    <ref role="3cqZAo" node="3t7_2Fg_0Jn" resolve="mock" />
                  </node>
                  <node concept="liA8E" id="3t7_2Fg_0Jw" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:3JgCwkqiP3p" resolve="walkTerms" />
                    <node concept="1rXfSq" id="3t7_2Fg_0Jx" role="37wK5m">
                      <ref role="37wK5l" node="2ev$9JFEEfC" resolve="anyTerms" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3t7_2Fg_0Jy" role="2OqNvi">
                <ref role="37wK5l" to="98:~OngoingStubbing.thenReturn(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="thenReturn" />
                <node concept="Rm8GO" id="3t7_2Fg_0Jz" role="37wK5m">
                  <ref role="Rm8GQ" to="ie8e:2q_78a95hAM" resolve="WALK" />
                  <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3t7_2Fg_0J$" role="3cqZAp">
            <node concept="2OqwBi" id="3t7_2Fg_0J_" role="3clFbG">
              <node concept="2YIFZM" id="3t7_2Fg_0JA" role="2Oq$k0">
                <ref role="37wK5l" to="n4y8:~Mockito.when(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="when" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="2OqwBi" id="3t7_2Fg_0JB" role="37wK5m">
                  <node concept="37vLTw" id="3t7_2Fg_0JC" role="2Oq$k0">
                    <ref role="3cqZAo" node="3t7_2Fg_0Jn" resolve="mock" />
                  </node>
                  <node concept="liA8E" id="3t7_2Fg_0JD" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:3JgCwkqmHc0" resolve="walkList" />
                    <node concept="1rXfSq" id="3t7_2Fg_0JE" role="37wK5m">
                      <ref role="37wK5l" node="2ev$9JFEHV1" resolve="anyList" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3t7_2Fg_0JF" role="2OqNvi">
                <ref role="37wK5l" to="98:~OngoingStubbing.thenReturn(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="thenReturn" />
                <node concept="Rm8GO" id="3t7_2Fg_0JG" role="37wK5m">
                  <ref role="Rm8GQ" to="ie8e:2q_78a95hAM" resolve="WALK" />
                  <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3t7_2Fg_0JH" role="3cqZAp">
            <node concept="2OqwBi" id="3t7_2Fg_0JI" role="3clFbG">
              <node concept="2YIFZM" id="3t7_2Fg_0JJ" role="2Oq$k0">
                <ref role="37wK5l" to="n4y8:~Mockito.when(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="when" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="2OqwBi" id="3t7_2Fg_0JK" role="37wK5m">
                  <node concept="37vLTw" id="3t7_2Fg_0JL" role="2Oq$k0">
                    <ref role="3cqZAo" node="3t7_2Fg_0Jn" resolve="mock" />
                  </node>
                  <node concept="liA8E" id="3t7_2Fg_0JM" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:3JgCwkqiP3$" resolve="walkValues" />
                    <node concept="1rXfSq" id="3t7_2Fg_0JN" role="37wK5m">
                      <ref role="37wK5l" node="2ev$9JFEJ94" resolve="anyValues" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3t7_2Fg_0JO" role="2OqNvi">
                <ref role="37wK5l" to="98:~OngoingStubbing.thenReturn(java.lang.Object):org.mockito.stubbing.OngoingStubbing" resolve="thenReturn" />
                <node concept="Rm8GO" id="3t7_2Fg_0JP" role="37wK5m">
                  <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
                  <ref role="Rm8GQ" to="ie8e:2q_78a95hAN" resolve="CONTINUE" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3t7_2Fg_18A" role="3cqZAp" />
          <node concept="3clFbF" id="3t7_2Fg_0Uh" role="3cqZAp">
            <node concept="2OqwBi" id="3t7_2Fg_0Ui" role="3clFbG">
              <node concept="2ShNRf" id="3t7_2Fg_0Uj" role="2Oq$k0">
                <node concept="1pGfFk" id="3t7_2Fg_0Uk" role="2ShVmc">
                  <ref role="37wK5l" to="ie8e:47nvOnTQN6Q" resolve="AtomWalk" />
                  <node concept="37vLTw" id="3t7_2Fg_0Ul" role="37wK5m">
                    <ref role="3cqZAo" node="3t7_2Fg_0Jn" resolve="mock" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3t7_2Fg_0Um" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:1hOy_Afq63K" resolve="walk" />
                <node concept="37vLTw" id="3t7_2Fg_0Un" role="37wK5m">
                  <ref role="3cqZAo" node="3t7_2Fg_0xQ" resolve="toWalk" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3t7_2Fg_0Uo" role="3cqZAp" />
          <node concept="3clFbF" id="3t7_2Fg_0Up" role="3cqZAp">
            <node concept="2OqwBi" id="3t7_2Fg_0Uq" role="3clFbG">
              <node concept="2YIFZM" id="3t7_2Fg_0Ur" role="2Oq$k0">
                <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="37vLTw" id="3t7_2Fg_0Us" role="37wK5m">
                  <ref role="3cqZAo" node="3t7_2Fg_0Jn" resolve="mock" />
                </node>
              </node>
              <node concept="liA8E" id="3t7_2Fg_0Ut" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3JgCwkqiP3p" resolve="walkTerms" />
                <node concept="1rXfSq" id="3t7_2Fg_0Uu" role="37wK5m">
                  <ref role="37wK5l" node="2ev$9JFF8Wr" resolve="eqTerms" />
                  <node concept="37vLTw" id="3t7_2Fg_0Uv" role="37wK5m">
                    <ref role="3cqZAo" node="3t7_2Fg_0sP" resolve="first" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3t7_2Fg_0Uw" role="3cqZAp">
            <node concept="2OqwBi" id="3t7_2Fg_0Ux" role="3clFbG">
              <node concept="2YIFZM" id="3t7_2Fg_0Uy" role="2Oq$k0">
                <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <node concept="37vLTw" id="3t7_2Fg_0Uz" role="37wK5m">
                  <ref role="3cqZAo" node="3t7_2Fg_0Jn" resolve="mock" />
                </node>
              </node>
              <node concept="liA8E" id="3t7_2Fg_0U$" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3JgCwkqiP3p" resolve="walkTerms" />
                <node concept="1rXfSq" id="3t7_2Fg_0U_" role="37wK5m">
                  <ref role="37wK5l" node="2ev$9JFF8Wr" resolve="eqTerms" />
                  <node concept="37vLTw" id="3t7_2Fg_0UA" role="37wK5m">
                    <ref role="3cqZAo" node="3t7_2Fg_0sY" resolve="second" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3t7_2Fg_0UB" role="3cqZAp">
            <node concept="2OqwBi" id="3t7_2Fg_0UC" role="3clFbG">
              <node concept="2YIFZM" id="3t7_2Fg_0UD" role="2Oq$k0">
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                <node concept="37vLTw" id="3t7_2Fg_0UE" role="37wK5m">
                  <ref role="3cqZAo" node="3t7_2Fg_0Jn" resolve="mock" />
                </node>
              </node>
              <node concept="liA8E" id="3t7_2Fg_0UF" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3JgCwkqiP3p" resolve="walkTerms" />
                <node concept="1rXfSq" id="3t7_2Fg_0UG" role="37wK5m">
                  <ref role="37wK5l" node="2ev$9JFF8Wr" resolve="eqTerms" />
                  <node concept="37vLTw" id="3t7_2Fg_0UH" role="37wK5m">
                    <ref role="3cqZAo" node="3t7_2Fg_0t7" resolve="third" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3t7_2Fg_0UI" role="3cqZAp">
            <node concept="2OqwBi" id="3t7_2Fg_0UJ" role="3clFbG">
              <node concept="2YIFZM" id="3t7_2Fg_0UK" role="2Oq$k0">
                <ref role="1Pybhc" to="n4y8:~Mockito" resolve="Mockito" />
                <ref role="37wK5l" to="n4y8:~Mockito.verify(java.lang.Object):java.lang.Object" resolve="verify" />
                <node concept="37vLTw" id="3t7_2Fg_0UL" role="37wK5m">
                  <ref role="3cqZAo" node="3t7_2Fg_0Jn" resolve="mock" />
                </node>
              </node>
              <node concept="liA8E" id="3t7_2Fg_0UM" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3JgCwkqmHc0" resolve="walkList" />
                <node concept="1rXfSq" id="3t7_2Fg_0UN" role="37wK5m">
                  <ref role="37wK5l" node="5YVX0wIlmGu" resolve="eqList" />
                  <node concept="37vLTw" id="3t7_2Fg_1lE" role="37wK5m">
                    <ref role="3cqZAo" node="3t7_2Fg_0vn" resolve="list" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3t7_2Fg_0HT" role="3cqZAp" />
          <node concept="3clFbH" id="3t7_2Fg_0uS" role="3cqZAp" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3s_ewN" id="2DKqMqOqk3u">
    <property role="3s_ewP" value="LogicalEquals" />
    <node concept="2tJIrI" id="2DKqMqOqk7b" role="jymVt" />
    <node concept="3clFb_" id="2DKqMqOqk7k" role="jymVt">
      <property role="TrG5h" value="atomLogicalAnon" />
      <node concept="37vLTG" id="2DKqMqOqLKG" role="3clF46">
        <property role="TrG5h" value="wildcard" />
        <node concept="10P_77" id="2DKqMqOqLTM" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2DKqMqOqkb3" role="3clF45">
        <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
        <node concept="3uibUv" id="2DKqMqOquKp" role="11_B2D">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2DKqMqOqk7n" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOqk7o" role="3clF47">
        <node concept="3cpWs6" id="2DKqMqOqt3s" role="3cqZAp">
          <node concept="2ShNRf" id="7FFmDVAP17H" role="3cqZAk">
            <node concept="1pGfFk" id="7FFmDVAP1tG" role="2ShVmc">
              <ref role="37wK5l" to="oy3s:2DKqMqOlTiR" resolve="AtomLogical" />
              <node concept="37vLTw" id="7FFmDVAP1WC" role="37wK5m">
                <ref role="3cqZAo" node="2DKqMqOqLKG" resolve="wildcard" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7FFmDVAP6gh" role="jymVt" />
    <node concept="3clFb_" id="2DKqMqOq_Pz" role="jymVt">
      <property role="TrG5h" value="atomLogical" />
      <node concept="37vLTG" id="2DKqMqOq_P$" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="2DKqMqOq_P_" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2DKqMqOq_PA" role="3clF46">
        <property role="TrG5h" value="atom" />
        <node concept="3uibUv" id="2DKqMqOq_PB" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3uibUv" id="2DKqMqOq_PE" role="3clF45">
        <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
        <node concept="3uibUv" id="2DKqMqOq_PF" role="11_B2D">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2DKqMqOq_PG" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOq_PH" role="3clF47">
        <node concept="3cpWs6" id="2DKqMqOq_PI" role="3cqZAp">
          <node concept="2ShNRf" id="7FFmDVAP42C" role="3cqZAk">
            <node concept="1pGfFk" id="7FFmDVAP42D" role="2ShVmc">
              <ref role="37wK5l" to="oy3s:1GDBwhEEL82" resolve="AtomLogical" />
              <node concept="37vLTw" id="7FFmDVAP4yM" role="37wK5m">
                <ref role="3cqZAo" node="2DKqMqOq_P$" resolve="name" />
              </node>
              <node concept="37vLTw" id="7FFmDVAP5nk" role="37wK5m">
                <ref role="3cqZAo" node="2DKqMqOq_PA" resolve="atom" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOqv48" role="jymVt" />
    <node concept="3clFb_" id="2DKqMqOqDeG" role="jymVt">
      <property role="TrG5h" value="stringLogicalAnon" />
      <node concept="3uibUv" id="2DKqMqOqDeH" role="3clF45">
        <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
        <node concept="3uibUv" id="2DKqMqOqE48" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2DKqMqOqDeJ" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOqDeK" role="3clF47">
        <node concept="3cpWs6" id="2DKqMqOqDeL" role="3cqZAp">
          <node concept="2ShNRf" id="7FFmDVAOZD3" role="3cqZAk">
            <node concept="1pGfFk" id="7FFmDVAOZLc" role="2ShVmc">
              <ref role="37wK5l" to="oy3s:2DKqMqOlWOd" resolve="StringLogical" />
              <node concept="37vLTw" id="7FFmDVAP0O$" role="37wK5m">
                <ref role="3cqZAo" node="2DKqMqOqKXp" resolve="wildcard" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2DKqMqOqKXp" role="3clF46">
        <property role="TrG5h" value="wildcard" />
        <node concept="10P_77" id="2DKqMqOqKXo" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7FFmDVAP5G4" role="jymVt" />
    <node concept="3clFb_" id="2DKqMqOquSn" role="jymVt">
      <property role="TrG5h" value="stringLogical" />
      <node concept="37vLTG" id="2DKqMqOquSo" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="2DKqMqOquSp" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2DKqMqOquSq" role="3clF46">
        <property role="TrG5h" value="str" />
        <node concept="17QB3L" id="2DKqMqOqvct" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2DKqMqOquSu" role="3clF45">
        <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
        <node concept="3uibUv" id="2DKqMqOqvbJ" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2DKqMqOquSw" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOquSx" role="3clF47">
        <node concept="3cpWs6" id="7FFmDVAP6Ov" role="3cqZAp">
          <node concept="2ShNRf" id="7FFmDVAP6Ow" role="3cqZAk">
            <node concept="1pGfFk" id="7FFmDVAP6Ox" role="2ShVmc">
              <ref role="37wK5l" to="oy3s:1H8E3iB8adK" resolve="StringLogical" />
              <node concept="37vLTw" id="7FFmDVAP7jy" role="37wK5m">
                <ref role="3cqZAo" node="2DKqMqOquSo" resolve="name" />
              </node>
              <node concept="37vLTw" id="7FFmDVAP7uy" role="37wK5m">
                <ref role="3cqZAo" node="2DKqMqOquSq" resolve="str" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="2DKqMqOqk3v" role="1B3o_S" />
    <node concept="3s_gsd" id="2DKqMqOqk3w" role="3s_ewO">
      <node concept="3s$Bmu" id="2DKqMqOqk6Z" role="3s_gse">
        <property role="3s$Bm0" value="anonWildcard" />
        <node concept="3cqZAl" id="2DKqMqOqk71" role="3clF45" />
        <node concept="3Tm1VV" id="2DKqMqOqk73" role="1B3o_S" />
        <node concept="3clFbS" id="2DKqMqOqk74" role="3clF47">
          <node concept="3cpWs8" id="2DKqMqOqvLP" role="3cqZAp">
            <node concept="3cpWsn" id="2DKqMqOqvLQ" role="3cpWs9">
              <property role="TrG5h" value="wildcard" />
              <node concept="3uibUv" id="2DKqMqOqvLI" role="1tU5fm">
                <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
                <node concept="3uibUv" id="2DKqMqOqvLL" role="11_B2D">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
              <node concept="1rXfSq" id="2DKqMqOqvLR" role="33vP2m">
                <ref role="37wK5l" node="2DKqMqOqk7k" resolve="atomLogicalAnon" />
                <node concept="3clFbT" id="2DKqMqOqMAj" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2DKqMqOqw8L" role="3cqZAp">
            <node concept="3cpWsn" id="2DKqMqOqw8M" role="3cpWs9">
              <property role="TrG5h" value="anon1" />
              <node concept="3uibUv" id="2DKqMqOqw8y" role="1tU5fm">
                <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
                <node concept="3uibUv" id="2DKqMqOqw8_" role="11_B2D">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
              <node concept="1rXfSq" id="2DKqMqOqw8N" role="33vP2m">
                <ref role="37wK5l" node="2DKqMqOqk7k" resolve="atomLogicalAnon" />
                <node concept="3clFbT" id="2DKqMqOqMBC" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2DKqMqOqzL9" role="3cqZAp">
            <node concept="3cpWsn" id="2DKqMqOqzLa" role="3cpWs9">
              <property role="TrG5h" value="anon2" />
              <node concept="3uibUv" id="2DKqMqOqzLb" role="1tU5fm">
                <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
                <node concept="3uibUv" id="2DKqMqOqzLc" role="11_B2D">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
              <node concept="1rXfSq" id="2DKqMqOqzLd" role="33vP2m">
                <ref role="37wK5l" node="2DKqMqOqk7k" resolve="atomLogicalAnon" />
                <node concept="3clFbT" id="2DKqMqOqMDm" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2DKqMqOqwfL" role="3cqZAp" />
          <node concept="3vFxKo" id="2DKqMqOqF9u" role="3cqZAp">
            <node concept="3clFbC" id="2DKqMqOqFdR" role="3vFALc">
              <node concept="37vLTw" id="2DKqMqOqFeG" role="3uHU7w">
                <ref role="3cqZAo" node="2DKqMqOqzLa" resolve="anon2" />
              </node>
              <node concept="37vLTw" id="2DKqMqOqFcH" role="3uHU7B">
                <ref role="3cqZAo" node="2DKqMqOqw8M" resolve="anon1" />
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="2DKqMqOqwjS" role="3cqZAp">
            <node concept="2OqwBi" id="5kEUewdxCyP" role="3tpDZB">
              <node concept="37vLTw" id="2DKqMqOqwn3" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOqvLQ" resolve="wildcard" />
              </node>
              <node concept="liA8E" id="5kEUewdxCBF" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
              </node>
            </node>
            <node concept="2OqwBi" id="5kEUewdxCDl" role="3tpDZA">
              <node concept="37vLTw" id="2DKqMqOqwnI" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOqw8M" resolve="anon1" />
              </node>
              <node concept="liA8E" id="5kEUewdxCGe" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="2DKqMqOqzQ3" role="3cqZAp">
            <node concept="2OqwBi" id="5kEUewdxCI1" role="3tpDZB">
              <node concept="37vLTw" id="2DKqMqOqzUc" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOqw8M" resolve="anon1" />
              </node>
              <node concept="liA8E" id="5kEUewdxCNz" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
              </node>
            </node>
            <node concept="2OqwBi" id="5kEUewdxCPd" role="3tpDZA">
              <node concept="37vLTw" id="2DKqMqOqzVj" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOqzLa" resolve="anon2" />
              </node>
              <node concept="liA8E" id="5kEUewdxCUU" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="2DKqMqOq_vg" role="3s_gse">
        <property role="3s$Bm0" value="atoms" />
        <node concept="3cqZAl" id="2DKqMqOq_vi" role="3clF45" />
        <node concept="3Tm1VV" id="2DKqMqOq_vk" role="1B3o_S" />
        <node concept="3clFbS" id="2DKqMqOq_vl" role="3clF47">
          <node concept="3cpWs8" id="2DKqMqOqEKJ" role="3cqZAp">
            <node concept="3cpWsn" id="2DKqMqOqEKK" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="2DKqMqOqEKD" role="1tU5fm">
                <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
                <node concept="3uibUv" id="2DKqMqOqEKG" role="11_B2D">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
              <node concept="1rXfSq" id="2DKqMqOqEKL" role="33vP2m">
                <ref role="37wK5l" node="2DKqMqOq_Pz" resolve="atomLogical" />
                <node concept="Xl_RD" id="2DKqMqOqEKM" role="37wK5m">
                  <property role="Xl_RC" value="A" />
                </node>
                <node concept="1oi1Uc" id="2DKqMqOqEKN" role="37wK5m">
                  <node concept="1oi5UN" id="2DKqMqOqEKO" role="1oi0x0">
                    <node concept="1oi5Wm" id="2DKqMqOqEKP" role="1ojpOf">
                      <property role="TrG5h" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2DKqMqOqEO8" role="3cqZAp">
            <node concept="3cpWsn" id="2DKqMqOqEO9" role="3cpWs9">
              <property role="TrG5h" value="b" />
              <node concept="3uibUv" id="2DKqMqOqEOa" role="1tU5fm">
                <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
                <node concept="3uibUv" id="2DKqMqOqEOb" role="11_B2D">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
              <node concept="1rXfSq" id="2DKqMqOqEOc" role="33vP2m">
                <ref role="37wK5l" node="2DKqMqOq_Pz" resolve="atomLogical" />
                <node concept="Xl_RD" id="2DKqMqOqEOd" role="37wK5m">
                  <property role="Xl_RC" value="B" />
                </node>
                <node concept="1oi1Uc" id="2DKqMqOqEOe" role="37wK5m">
                  <node concept="1oi5UN" id="2DKqMqOqEOf" role="1oi0x0">
                    <node concept="1oi5Wm" id="2DKqMqOqEOg" role="1ojpOf">
                      <property role="TrG5h" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2DKqMqOqFhd" role="3cqZAp">
            <node concept="3cpWsn" id="2DKqMqOqFhe" role="3cpWs9">
              <property role="TrG5h" value="c" />
              <node concept="3uibUv" id="2DKqMqOqFhf" role="1tU5fm">
                <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
                <node concept="3uibUv" id="2DKqMqOqFhg" role="11_B2D">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
              <node concept="1rXfSq" id="2DKqMqOqFhh" role="33vP2m">
                <ref role="37wK5l" node="2DKqMqOq_Pz" resolve="atomLogical" />
                <node concept="Xl_RD" id="2DKqMqOqFhi" role="37wK5m">
                  <property role="Xl_RC" value="C" />
                </node>
                <node concept="1oi1Uc" id="2DKqMqOqFhj" role="37wK5m">
                  <node concept="1oi5UN" id="2DKqMqOqFhk" role="1oi0x0">
                    <node concept="1oi5Wm" id="2DKqMqOqFhl" role="1ojpOf">
                      <property role="TrG5h" value="foo" />
                      <node concept="1oi5XN" id="2DKqMqOqFni" role="1oi5zu">
                        <property role="1oi5yK" value="bar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5kEUewdxWe4" role="3cqZAp">
            <node concept="3cpWsn" id="5kEUewdxWe5" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="5kEUewdxWdZ" role="1tU5fm">
                <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
                <node concept="3uibUv" id="5kEUewdxWe2" role="11_B2D">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
              <node concept="1rXfSq" id="5kEUewdxWe6" role="33vP2m">
                <ref role="37wK5l" node="2DKqMqOqk7k" resolve="atomLogicalAnon" />
                <node concept="3clFbT" id="5kEUewdxWe7" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5kEUewdy0lT" role="3cqZAp">
            <node concept="3cpWsn" id="5kEUewdy0lU" role="3cpWs9">
              <property role="TrG5h" value="y" />
              <node concept="3uibUv" id="5kEUewdy0lV" role="1tU5fm">
                <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
                <node concept="3uibUv" id="5kEUewdy0lW" role="11_B2D">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
              <node concept="1rXfSq" id="5kEUewdy0lX" role="33vP2m">
                <ref role="37wK5l" node="2DKqMqOqk7k" resolve="atomLogicalAnon" />
                <node concept="3clFbT" id="5kEUewdy0lY" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2DKqMqOqFfb" role="3cqZAp" />
          <node concept="3vFxKo" id="2DKqMqOqNGA" role="3cqZAp">
            <node concept="3clFbC" id="2DKqMqOqNOl" role="3vFALc">
              <node concept="37vLTw" id="2DKqMqOqNQp" role="3uHU7w">
                <ref role="3cqZAo" node="2DKqMqOqEO9" resolve="b" />
              </node>
              <node concept="37vLTw" id="2DKqMqOqNLN" role="3uHU7B">
                <ref role="3cqZAo" node="2DKqMqOqEKK" resolve="a" />
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="2DKqMqOqEXP" role="3cqZAp">
            <node concept="2OqwBi" id="5kEUewdxFza" role="3tpDZB">
              <node concept="37vLTw" id="2DKqMqOqF0c" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOqEKK" resolve="a" />
              </node>
              <node concept="liA8E" id="5kEUewdxFDZ" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
              </node>
            </node>
            <node concept="2OqwBi" id="5kEUewdxFFM" role="3tpDZA">
              <node concept="37vLTw" id="2DKqMqOqF0R" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOqEO9" resolve="b" />
              </node>
              <node concept="liA8E" id="5kEUewdxFMZ" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="5kEUewdxTo6" role="3cqZAp">
            <node concept="3SKdUq" id="5kEUewdxTwE" role="3SKWNk">
              <property role="3SKdUp" value="different variables must not be equal despite the equal values " />
            </node>
          </node>
          <node concept="3vFxKo" id="5kEUewdxSSF" role="3cqZAp">
            <node concept="2OqwBi" id="5kEUewdxT50" role="3vFALc">
              <node concept="37vLTw" id="5kEUewdxT0S" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOqEKK" resolve="a" />
              </node>
              <node concept="liA8E" id="5kEUewdxTde" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="5kEUewdxTee" role="37wK5m">
                  <ref role="3cqZAo" node="2DKqMqOqEO9" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="2DKqMqOqV42" role="3cqZAp">
            <node concept="3SKdUq" id="2DKqMqOqVa7" role="3SKWNk">
              <property role="3SKdUp" value="hashCode must not recurse into the tree value" />
            </node>
          </node>
          <node concept="3vFxKo" id="2DKqMqOqStJ" role="3cqZAp">
            <node concept="3clFbC" id="2DKqMqOqT0c" role="3vFALc">
              <node concept="2OqwBi" id="2DKqMqOqT8w" role="3uHU7w">
                <node concept="37vLTw" id="2DKqMqOqT0M" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DKqMqOqEO9" resolve="b" />
                </node>
                <node concept="liA8E" id="2DKqMqOqTiy" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
                </node>
              </node>
              <node concept="2OqwBi" id="2DKqMqOqS_Q" role="3uHU7B">
                <node concept="37vLTw" id="2DKqMqOqSzl" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DKqMqOqEKK" resolve="a" />
                </node>
                <node concept="liA8E" id="2DKqMqOqSKJ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="2DKqMqOqFrg" role="3cqZAp">
            <node concept="2OqwBi" id="2DKqMqOqFvM" role="3vFALc">
              <node concept="2OqwBi" id="5kEUewdxPTs" role="2Oq$k0">
                <node concept="37vLTw" id="2DKqMqOqFuD" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DKqMqOqEKK" resolve="a" />
                </node>
                <node concept="liA8E" id="5kEUewdxPYk" role="2OqNvi">
                  <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
                </node>
              </node>
              <node concept="liA8E" id="2DKqMqOqFDj" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="2OqwBi" id="5kEUewdxQ14" role="37wK5m">
                  <node concept="37vLTw" id="2DKqMqOqFFv" role="2Oq$k0">
                    <ref role="3cqZAo" node="2DKqMqOqFhe" resolve="c" />
                  </node>
                  <node concept="liA8E" id="5kEUewdxQ6z" role="2OqNvi">
                    <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="2DKqMqOqFKT" role="3cqZAp">
            <node concept="2OqwBi" id="2DKqMqOqFZp" role="3vFALc">
              <node concept="37vLTw" id="2DKqMqOqFXG" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOqEKK" resolve="a" />
              </node>
              <node concept="liA8E" id="2DKqMqOqG9u" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="5kEUewdxWe8" role="37wK5m">
                  <ref role="3cqZAo" node="5kEUewdxWe5" resolve="x" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="5kEUewdxWZC" role="3cqZAp">
            <node concept="2OqwBi" id="5kEUewdxXlm" role="3vFALc">
              <node concept="2OqwBi" id="5kEUewdxXdq" role="2Oq$k0">
                <node concept="37vLTw" id="5kEUewdxX94" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DKqMqOqEKK" resolve="a" />
                </node>
                <node concept="liA8E" id="5kEUewdxXjx" role="2OqNvi">
                  <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
                </node>
              </node>
              <node concept="liA8E" id="5kEUewdxXxg" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="2OqwBi" id="5kEUewdxXAb" role="37wK5m">
                  <node concept="37vLTw" id="5kEUewdxXzF" role="2Oq$k0">
                    <ref role="3cqZAo" node="5kEUewdxWe5" resolve="x" />
                  </node>
                  <node concept="liA8E" id="5kEUewdxXDu" role="2OqNvi">
                    <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="5kEUewdy0IU" role="3cqZAp">
            <node concept="3clFbC" id="5kEUewdy100" role="3vFALc">
              <node concept="37vLTw" id="5kEUewdy15q" role="3uHU7w">
                <ref role="3cqZAo" node="5kEUewdy0lU" resolve="y" />
              </node>
              <node concept="37vLTw" id="5kEUewdy0Ug" role="3uHU7B">
                <ref role="3cqZAo" node="5kEUewdxWe5" resolve="x" />
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="5kEUewdy4Rl" role="3cqZAp">
            <node concept="2OqwBi" id="5kEUewdy5a$" role="3vFALc">
              <node concept="37vLTw" id="5kEUewdy543" role="2Oq$k0">
                <ref role="3cqZAo" node="5kEUewdxWe5" resolve="x" />
              </node>
              <node concept="liA8E" id="5kEUewdy5kA" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="5kEUewdy5lL" role="37wK5m">
                  <ref role="3cqZAo" node="5kEUewdy0lU" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="2DKqMqOqMG5" role="3s_gse">
        <property role="3s$Bm0" value="strings" />
        <node concept="3cqZAl" id="2DKqMqOqMG7" role="3clF45" />
        <node concept="3Tm1VV" id="2DKqMqOqMG9" role="1B3o_S" />
        <node concept="3clFbS" id="2DKqMqOqMGa" role="3clF47">
          <node concept="3cpWs8" id="2DKqMqOqN5F" role="3cqZAp">
            <node concept="3cpWsn" id="2DKqMqOqN5G" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="2DKqMqOqN5_" role="1tU5fm">
                <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
                <node concept="3uibUv" id="2DKqMqOqN5C" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="1rXfSq" id="2DKqMqOqN5H" role="33vP2m">
                <ref role="37wK5l" node="2DKqMqOquSn" resolve="stringLogical" />
                <node concept="Xl_RD" id="2DKqMqOqN5I" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
                <node concept="Xl_RD" id="2DKqMqOqN5J" role="37wK5m">
                  <property role="Xl_RC" value="foo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2DKqMqOqN8V" role="3cqZAp">
            <node concept="3cpWsn" id="2DKqMqOqN8W" role="3cpWs9">
              <property role="TrG5h" value="y" />
              <node concept="3uibUv" id="2DKqMqOqN8X" role="1tU5fm">
                <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
                <node concept="3uibUv" id="2DKqMqOqN8Y" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="1rXfSq" id="2DKqMqOqN8Z" role="33vP2m">
                <ref role="37wK5l" node="2DKqMqOquSn" resolve="stringLogical" />
                <node concept="Xl_RD" id="2DKqMqOqN90" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
                <node concept="Xl_RD" id="2DKqMqOqN91" role="37wK5m">
                  <property role="Xl_RC" value="foo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2DKqMqOqNd7" role="3cqZAp">
            <node concept="3cpWsn" id="2DKqMqOqNd8" role="3cpWs9">
              <property role="TrG5h" value="z" />
              <node concept="3uibUv" id="2DKqMqOqNd9" role="1tU5fm">
                <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
                <node concept="3uibUv" id="2DKqMqOqNda" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="1rXfSq" id="2DKqMqOqNdb" role="33vP2m">
                <ref role="37wK5l" node="2DKqMqOquSn" resolve="stringLogical" />
                <node concept="Xl_RD" id="2DKqMqOqNdc" role="37wK5m">
                  <property role="Xl_RC" value="Z" />
                </node>
                <node concept="Xl_RD" id="2DKqMqOqNdd" role="37wK5m">
                  <property role="Xl_RC" value="foobar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2DKqMqOqNmn" role="3cqZAp" />
          <node concept="3vFxKo" id="2DKqMqOqNxl" role="3cqZAp">
            <node concept="3clFbC" id="2DKqMqOqN_H" role="3vFALc">
              <node concept="37vLTw" id="2DKqMqOqNAp" role="3uHU7w">
                <ref role="3cqZAo" node="2DKqMqOqN8W" resolve="y" />
              </node>
              <node concept="37vLTw" id="2DKqMqOqN$z" role="3uHU7B">
                <ref role="3cqZAo" node="2DKqMqOqN5G" resolve="x" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="5kEUewdybnJ" role="3cqZAp">
            <node concept="3SKdUq" id="5kEUewdybnK" role="3SKWNk">
              <property role="3SKdUp" value="different variables must not be equal despite the equal values " />
            </node>
          </node>
          <node concept="3vFxKo" id="5kEUewdyb0V" role="3cqZAp">
            <node concept="2OqwBi" id="5kEUewdyb9u" role="3vFALc">
              <node concept="37vLTw" id="5kEUewdyb6I" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOqN5G" resolve="x" />
              </node>
              <node concept="liA8E" id="5kEUewdybfJ" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="5kEUewdybgJ" role="37wK5m">
                  <ref role="3cqZAo" node="2DKqMqOqN8W" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="5kEUewdyb$a" role="3cqZAp">
            <node concept="3SKdUq" id="5kEUewdyb$b" role="3SKWNk">
              <property role="3SKdUp" value="hashCode must not recurse into the value" />
            </node>
          </node>
          <node concept="3vFxKo" id="5kEUewdyb$c" role="3cqZAp">
            <node concept="3clFbC" id="5kEUewdyb$d" role="3vFALc">
              <node concept="2OqwBi" id="5kEUewdyb$e" role="3uHU7w">
                <node concept="37vLTw" id="5kEUewdybIm" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DKqMqOqN8W" resolve="y" />
                </node>
                <node concept="liA8E" id="5kEUewdyb$g" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
                </node>
              </node>
              <node concept="2OqwBi" id="5kEUewdyb$h" role="3uHU7B">
                <node concept="37vLTw" id="5kEUewdybG_" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DKqMqOqN5G" resolve="x" />
                </node>
                <node concept="liA8E" id="5kEUewdyb$j" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="2DKqMqOqNqm" role="3cqZAp">
            <node concept="2OqwBi" id="5kEUewdybKD" role="3tpDZB">
              <node concept="37vLTw" id="2DKqMqOqNRK" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOqN5G" resolve="x" />
              </node>
              <node concept="liA8E" id="5kEUewdybS0" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
              </node>
            </node>
            <node concept="2OqwBi" id="5kEUewdybTN" role="3tpDZA">
              <node concept="37vLTw" id="2DKqMqOqNSt" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOqN8W" resolve="y" />
              </node>
              <node concept="liA8E" id="5kEUewdyc1y" role="2OqNvi">
                <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="2DKqMqOqNWX" role="3cqZAp">
            <node concept="2OqwBi" id="2DKqMqOqO1R" role="3vFALc">
              <node concept="37vLTw" id="2DKqMqOqO0I" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOqN5G" resolve="x" />
              </node>
              <node concept="liA8E" id="2DKqMqOqObo" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="2DKqMqOqOcr" role="37wK5m">
                  <ref role="3cqZAo" node="2DKqMqOqNd8" resolve="z" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="5kEUewdzzC1" role="3cqZAp">
            <node concept="2OqwBi" id="5kEUewdzzC2" role="3vFALc">
              <node concept="2OqwBi" id="5kEUewdzzLV" role="2Oq$k0">
                <node concept="37vLTw" id="5kEUewdzzC3" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DKqMqOqN5G" resolve="x" />
                </node>
                <node concept="liA8E" id="5kEUewdzzQN" role="2OqNvi">
                  <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
                </node>
              </node>
              <node concept="liA8E" id="5kEUewdzzC4" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="2OqwBi" id="5kEUewdzzTo" role="37wK5m">
                  <node concept="37vLTw" id="5kEUewdzzC5" role="2Oq$k0">
                    <ref role="3cqZAo" node="2DKqMqOqNd8" resolve="z" />
                  </node>
                  <node concept="liA8E" id="5kEUewdzzYM" role="2OqNvi">
                    <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="2DKqMqOqOde" role="3cqZAp">
            <node concept="2OqwBi" id="2DKqMqOqOdf" role="3vFALc">
              <node concept="37vLTw" id="2DKqMqOqOdg" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOqN5G" resolve="x" />
              </node>
              <node concept="liA8E" id="2DKqMqOqOdh" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="1rXfSq" id="2DKqMqOqOj5" role="37wK5m">
                  <ref role="37wK5l" node="2DKqMqOqDeG" resolve="stringLogicalAnon" />
                  <node concept="3clFbT" id="2DKqMqOqOkC" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3s_ewN" id="3t7_2Fg_OJG">
    <property role="3s_ewP" value="Finders" />
    <node concept="3Tm1VV" id="3t7_2Fg_OJH" role="1B3o_S" />
    <node concept="3s_gsd" id="3t7_2Fg_OJI" role="3s_ewO">
      <node concept="3s$Bmu" id="3t7_2Fg_OUo" role="3s_gse">
        <property role="3s$Bm0" value="list" />
        <node concept="3cqZAl" id="3t7_2Fg_OUp" role="3clF45" />
        <node concept="3Tm1VV" id="3t7_2Fg_OUq" role="1B3o_S" />
        <node concept="3clFbS" id="3t7_2Fg_OUr" role="3clF47">
          <node concept="3cpWs8" id="3t7_2Fg_PE8" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2Fg_PE9" role="3cpWs9">
              <property role="TrG5h" value="first" />
              <node concept="3uibUv" id="3t7_2Fg_PEa" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2Fg_PFn" role="33vP2m">
                <node concept="1oi5UN" id="3t7_2Fg_PFB" role="1oi0x0">
                  <node concept="1oi5Wm" id="3t7_2Fg_PFC" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="3t7_2Fg_PFD" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3t7_2Fg_PFE" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="3t7_2Fg_PFF" role="1oi5zu">
                      <property role="1oi5yK" value="Object" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3t7_2Fg_PFV" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2Fg_PFW" role="3cpWs9">
              <property role="TrG5h" value="second" />
              <node concept="3uibUv" id="3t7_2Fg_PFX" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2Fg_PFY" role="33vP2m">
                <node concept="1oi5UN" id="3t7_2Fg_PHa" role="1oi0x0">
                  <node concept="1oi5Wm" id="3t7_2Fg_PHb" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="3t7_2Fg_PHc" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3t7_2Fg_PHd" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="3t7_2Fg_PHe" role="1oi5zu">
                      <property role="1oi5yK" value="Iterable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3t7_2Fg_PIw" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2Fg_PIx" role="3cpWs9">
              <property role="TrG5h" value="third" />
              <node concept="3uibUv" id="3t7_2Fg_PIy" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2Fg_PIz" role="33vP2m">
                <node concept="1oi5UN" id="3t7_2Fg_PK2" role="1oi0x0">
                  <node concept="1oi5Wm" id="3t7_2Fg_PK3" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="3t7_2Fg_PK4" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3t7_2Fg_PK5" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="3t7_2Fg_PK6" role="1oi5zu">
                      <property role="1oi5yK" value="List" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3t7_2Fg_PHu" role="3cqZAp" />
          <node concept="3cpWs8" id="7t5VLKGALTT" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALTU" role="3cpWs9">
              <property role="TrG5h" value="list" />
              <node concept="3uibUv" id="7t5VLKGALTV" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALTW" role="33vP2m">
                <node concept="1oi5ST" id="7t5VLKGALU0" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="1oi5ST" id="7t5VLKGALU1" role="1oi5TL">
                    <property role="TrG5h" value="contents" />
                    <node concept="KCUsM" id="7t5VLKGALU2" role="1oi5TL">
                      <node concept="1oi5UN" id="3t7_2Fg_Xfl" role="KCVpo">
                        <node concept="22Ky0T" id="3t7_2Fg_XjF" role="lGtFl">
                          <node concept="37vLTw" id="3t7_2Fg_XjT" role="22Ky0K">
                            <ref role="3cqZAo" node="3t7_2Fg_PE9" resolve="first" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="3t7_2Fg_PLe" role="KCVpo">
                        <node concept="22Ky0T" id="3t7_2Fg_PL_" role="lGtFl">
                          <node concept="37vLTw" id="3t7_2Fg_PLN" role="22Ky0K">
                            <ref role="3cqZAo" node="3t7_2Fg_PFW" resolve="second" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="3t7_2Fg_PMk" role="KCVpo">
                        <node concept="22Ky0T" id="3t7_2Fg_PMI" role="lGtFl">
                          <node concept="37vLTw" id="3t7_2Fg_PMW" role="22Ky0K">
                            <ref role="3cqZAo" node="3t7_2Fg_PIx" resolve="third" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3t7_2Fg_PNe" role="3cqZAp" />
          <node concept="3cpWs8" id="5H6hZahmJ47" role="3cqZAp">
            <node concept="3cpWsn" id="5H6hZahmJ48" role="3cpWs9">
              <property role="TrG5h" value="atoms" />
              <node concept="2OqwBi" id="5H6hZahmJ49" role="33vP2m">
                <node concept="2YIFZM" id="5H6hZahmJ4a" role="2Oq$k0">
                  <ref role="37wK5l" to="ie8e:3OPtF03pX11" resolve="findList" />
                  <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
                  <node concept="37vLTw" id="3t7_2Fg_RXO" role="37wK5m">
                    <ref role="3cqZAo" node="7t5VLKGALTU" resolve="list" />
                  </node>
                  <node concept="Xl_RD" id="5H6hZahmJ4e" role="37wK5m">
                    <property role="Xl_RC" value="list" />
                  </node>
                  <node concept="Xl_RD" id="5H6hZahqBye" role="37wK5m">
                    <property role="Xl_RC" value="contents" />
                  </node>
                </node>
                <node concept="liA8E" id="5H6hZahmJ4g" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:3OPtF03nYWm" resolve="result" />
                </node>
              </node>
              <node concept="3uibUv" id="3t7_2FgAfif" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3qUE_q" id="3t7_2FgAfOL" role="11_B2D">
                  <node concept="3uibUv" id="3t7_2FgAfXo" role="3qUE_r">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3t7_2FgA97g" role="3cqZAp" />
          <node concept="3vlDli" id="3t7_2Fg_Saz" role="3cqZAp">
            <node concept="2ShNRf" id="3t7_2Fg_SdW" role="3tpDZB">
              <node concept="Tc6Ow" id="3t7_2Fg_StU" role="2ShVmc">
                <node concept="3uibUv" id="3t7_2Fg_S_c" role="HW$YZ">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
                <node concept="37vLTw" id="3t7_2Fg_SBC" role="HW$Y0">
                  <ref role="3cqZAo" node="3t7_2Fg_PE9" resolve="first" />
                </node>
                <node concept="37vLTw" id="3t7_2Fg_SJr" role="HW$Y0">
                  <ref role="3cqZAo" node="3t7_2Fg_PFW" resolve="second" />
                </node>
                <node concept="37vLTw" id="3t7_2Fg_SKu" role="HW$Y0">
                  <ref role="3cqZAo" node="3t7_2Fg_PIx" resolve="third" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="3t7_2FgA9lt" role="3tpDZA">
              <node concept="Tc6Ow" id="3t7_2FgA9GV" role="2ShVmc">
                <node concept="3uibUv" id="3t7_2FgAhk3" role="HW$YZ">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
                <node concept="10QFUN" id="3t7_2FgAhpW" role="I$8f6">
                  <node concept="37vLTw" id="3t7_2FgAhpV" role="10QFUP">
                    <ref role="3cqZAo" node="5H6hZahmJ48" resolve="atoms" />
                  </node>
                  <node concept="3uibUv" id="3t7_2FgAhwj" role="10QFUM">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="3t7_2FgAh_P" role="11_B2D">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3t7_2FgAk8_" role="3s_gse">
        <property role="3s$Bm0" value="simplified_list" />
        <node concept="3cqZAl" id="3t7_2FgAk8A" role="3clF45" />
        <node concept="3Tm1VV" id="3t7_2FgAk8B" role="1B3o_S" />
        <node concept="3clFbS" id="3t7_2FgAk8C" role="3clF47">
          <node concept="3cpWs8" id="3t7_2FgAk8D" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgAk8E" role="3cpWs9">
              <property role="TrG5h" value="first" />
              <node concept="3uibUv" id="3t7_2FgAk8F" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2FgAk8G" role="33vP2m">
                <node concept="1oi5UN" id="3t7_2FgAk8H" role="1oi0x0">
                  <node concept="1oi5Wm" id="3t7_2FgAk8I" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="3t7_2FgAk8J" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3t7_2FgAk8K" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="3t7_2FgAk8L" role="1oi5zu">
                      <property role="1oi5yK" value="Object" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3t7_2FgAk8M" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgAk8N" role="3cpWs9">
              <property role="TrG5h" value="second" />
              <node concept="3uibUv" id="3t7_2FgAk8O" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2FgAk8P" role="33vP2m">
                <node concept="1oi5UN" id="3t7_2FgAk8Q" role="1oi0x0">
                  <node concept="1oi5Wm" id="3t7_2FgAk8R" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="3t7_2FgAk8S" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3t7_2FgAk8T" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="3t7_2FgAk8U" role="1oi5zu">
                      <property role="1oi5yK" value="Iterable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3t7_2FgAk8V" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgAk8W" role="3cpWs9">
              <property role="TrG5h" value="third" />
              <node concept="3uibUv" id="3t7_2FgAk8X" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2FgAk8Y" role="33vP2m">
                <node concept="1oi5UN" id="3t7_2FgAk8Z" role="1oi0x0">
                  <node concept="1oi5Wm" id="3t7_2FgAk90" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="3t7_2FgAk91" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3t7_2FgAk92" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="3t7_2FgAk93" role="1oi5zu">
                      <property role="1oi5yK" value="List" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3t7_2FgAP_1" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgAP_2" role="3cpWs9">
              <property role="TrG5h" value="fourth" />
              <node concept="3uibUv" id="3t7_2FgAP_3" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2FgAP_4" role="33vP2m">
                <node concept="1oi5UN" id="3t7_2FgAP_5" role="1oi0x0">
                  <node concept="1oi5Wm" id="3t7_2FgAP_6" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="3t7_2FgAP_7" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3t7_2FgAP_8" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="3t7_2FgAP_9" role="1oi5zu">
                      <property role="1oi5yK" value="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3t7_2FgAk94" role="3cqZAp" />
          <node concept="3cpWs8" id="3t7_2FgAk95" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgAk96" role="3cpWs9">
              <property role="TrG5h" value="list1" />
              <node concept="3uibUv" id="3t7_2FgAk97" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2FgAk98" role="33vP2m">
                <node concept="1oi5ST" id="3t7_2FgAk99" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgAk9b" role="1oi5TL">
                    <node concept="1oi5UN" id="3t7_2FgAk9c" role="KCVpo">
                      <node concept="22Ky0T" id="3t7_2FgAk9d" role="lGtFl">
                        <node concept="37vLTw" id="3t7_2FgAk9e" role="22Ky0K">
                          <ref role="3cqZAo" node="3t7_2FgAk8E" resolve="first" />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="3t7_2FgAk9f" role="KCVpo">
                      <node concept="22Ky0T" id="3t7_2FgAk9g" role="lGtFl">
                        <node concept="37vLTw" id="3t7_2FgAk9h" role="22Ky0K">
                          <ref role="3cqZAo" node="3t7_2FgAk8N" resolve="second" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3t7_2FgAKyG" role="3cqZAp" />
          <node concept="3cpWs8" id="3t7_2FgALML" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgALMM" role="3cpWs9">
              <property role="TrG5h" value="list2" />
              <node concept="3uibUv" id="3t7_2FgALWp" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="2YIFZM" id="3t7_2FgALMN" role="33vP2m">
                <ref role="37wK5l" to="ie8e:5JQSuNsxhfn" resolve="create" />
                <ref role="1Pybhc" to="ie8e:5JQSuNswOXL" resolve="StemFunc" />
                <node concept="Xl_RD" id="3t7_2FgALMO" role="37wK5m">
                  <property role="Xl_RC" value="list" />
                </node>
                <node concept="2YIFZM" id="3t7_2FgALMP" role="37wK5m">
                  <ref role="37wK5l" to="ie8e:1OShD0HS45f" resolve="createList" />
                  <ref role="1Pybhc" to="ie8e:3OPtF03lco4" resolve="ListFunc" />
                  <node concept="37vLTw" id="3t7_2FgALMS" role="37wK5m">
                    <ref role="3cqZAo" node="3t7_2FgAk8W" resolve="third" />
                  </node>
                  <node concept="37vLTw" id="3t7_2FgARV0" role="37wK5m">
                    <ref role="3cqZAo" node="3t7_2FgAP_2" resolve="fourth" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3t7_2FgAk9l" role="3cqZAp" />
          <node concept="3cpWs8" id="3t7_2FgAk9m" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgAk9n" role="3cpWs9">
              <property role="TrG5h" value="atoms1" />
              <node concept="2OqwBi" id="3t7_2FgAk9o" role="33vP2m">
                <node concept="2YIFZM" id="3t7_2FgAk9p" role="2Oq$k0">
                  <ref role="37wK5l" to="ie8e:3OPtF03pX11" resolve="findList" />
                  <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
                  <node concept="37vLTw" id="3t7_2FgAk9q" role="37wK5m">
                    <ref role="3cqZAo" node="3t7_2FgAk96" resolve="list1" />
                  </node>
                  <node concept="Xl_RD" id="3t7_2FgAk9r" role="37wK5m">
                    <property role="Xl_RC" value="list" />
                  </node>
                </node>
                <node concept="liA8E" id="3t7_2FgAk9t" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:3OPtF03nYWm" resolve="result" />
                </node>
              </node>
              <node concept="3uibUv" id="3t7_2FgAk9u" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3qUE_q" id="3t7_2FgAk9v" role="11_B2D">
                  <node concept="3uibUv" id="3t7_2FgAk9w" role="3qUE_r">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3t7_2FgAMoz" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgAMo$" role="3cpWs9">
              <property role="TrG5h" value="atoms2" />
              <node concept="2OqwBi" id="3t7_2FgAMo_" role="33vP2m">
                <node concept="2YIFZM" id="3t7_2FgAMoA" role="2Oq$k0">
                  <ref role="37wK5l" to="ie8e:3OPtF03pX11" resolve="findList" />
                  <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
                  <node concept="37vLTw" id="3t7_2FgAMCx" role="37wK5m">
                    <ref role="3cqZAo" node="3t7_2FgALMM" resolve="list2" />
                  </node>
                  <node concept="Xl_RD" id="3t7_2FgAMoC" role="37wK5m">
                    <property role="Xl_RC" value="list" />
                  </node>
                </node>
                <node concept="liA8E" id="3t7_2FgAMoD" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:3OPtF03nYWm" resolve="result" />
                </node>
              </node>
              <node concept="3uibUv" id="3t7_2FgAMoE" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3qUE_q" id="3t7_2FgAMoF" role="11_B2D">
                  <node concept="3uibUv" id="3t7_2FgAMoG" role="3qUE_r">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3t7_2FgAk9x" role="3cqZAp" />
          <node concept="3vlDli" id="3t7_2FgAk9y" role="3cqZAp">
            <node concept="2ShNRf" id="3t7_2FgAk9z" role="3tpDZB">
              <node concept="Tc6Ow" id="3t7_2FgAk9$" role="2ShVmc">
                <node concept="3uibUv" id="3t7_2FgAk9_" role="HW$YZ">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
                <node concept="37vLTw" id="3t7_2FgAk9A" role="HW$Y0">
                  <ref role="3cqZAo" node="3t7_2FgAk8E" resolve="first" />
                </node>
                <node concept="37vLTw" id="3t7_2FgAk9B" role="HW$Y0">
                  <ref role="3cqZAo" node="3t7_2FgAk8N" resolve="second" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="3t7_2FgAk9D" role="3tpDZA">
              <node concept="Tc6Ow" id="3t7_2FgAk9E" role="2ShVmc">
                <node concept="3uibUv" id="3t7_2FgAk9F" role="HW$YZ">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
                <node concept="10QFUN" id="3t7_2FgAk9G" role="I$8f6">
                  <node concept="37vLTw" id="3t7_2FgAk9H" role="10QFUP">
                    <ref role="3cqZAo" node="3t7_2FgAk9n" resolve="atoms1" />
                  </node>
                  <node concept="3uibUv" id="3t7_2FgAk9I" role="10QFUM">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="3t7_2FgAk9J" role="11_B2D">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="3t7_2FgAMFo" role="3cqZAp">
            <node concept="2ShNRf" id="3t7_2FgAMFp" role="3tpDZB">
              <node concept="Tc6Ow" id="3t7_2FgAMFq" role="2ShVmc">
                <node concept="3uibUv" id="3t7_2FgAMFr" role="HW$YZ">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
                <node concept="37vLTw" id="3t7_2FgAMFu" role="HW$Y0">
                  <ref role="3cqZAo" node="3t7_2FgAk8W" resolve="third" />
                </node>
                <node concept="37vLTw" id="3t7_2FgAS5X" role="HW$Y0">
                  <ref role="3cqZAo" node="3t7_2FgAP_2" resolve="fourth" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="3t7_2FgAMFv" role="3tpDZA">
              <node concept="Tc6Ow" id="3t7_2FgAMFw" role="2ShVmc">
                <node concept="3uibUv" id="3t7_2FgAMFx" role="HW$YZ">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
                <node concept="10QFUN" id="3t7_2FgAMFy" role="I$8f6">
                  <node concept="37vLTw" id="3t7_2FgAMUw" role="10QFUP">
                    <ref role="3cqZAo" node="3t7_2FgAMo$" resolve="atoms2" />
                  </node>
                  <node concept="3uibUv" id="3t7_2FgAMF$" role="10QFUM">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="3t7_2FgAMF_" role="11_B2D">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3t7_2FgAvG4" role="3s_gse">
        <property role="3s$Bm0" value="enclosed_list" />
        <node concept="3cqZAl" id="3t7_2FgAvG5" role="3clF45" />
        <node concept="3Tm1VV" id="3t7_2FgAvG6" role="1B3o_S" />
        <node concept="3clFbS" id="3t7_2FgAvG7" role="3clF47">
          <node concept="3cpWs8" id="3t7_2FgAvG8" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgAvG9" role="3cpWs9">
              <property role="TrG5h" value="first" />
              <node concept="3uibUv" id="3t7_2FgAvGa" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2FgAvGb" role="33vP2m">
                <node concept="1oi5UN" id="3t7_2FgAvGc" role="1oi0x0">
                  <node concept="1oi5Wm" id="3t7_2FgAvGd" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="3t7_2FgAvGe" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3t7_2FgAvGf" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="3t7_2FgAvGg" role="1oi5zu">
                      <property role="1oi5yK" value="Object" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3t7_2FgAvGh" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgAvGi" role="3cpWs9">
              <property role="TrG5h" value="second" />
              <node concept="3uibUv" id="3t7_2FgAvGj" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2FgAvGk" role="33vP2m">
                <node concept="1oi5UN" id="3t7_2FgAvGl" role="1oi0x0">
                  <node concept="1oi5Wm" id="3t7_2FgAvGm" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="3t7_2FgAvGn" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3t7_2FgAvGo" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="3t7_2FgAvGp" role="1oi5zu">
                      <property role="1oi5yK" value="Iterable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3t7_2FgAvGq" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgAvGr" role="3cpWs9">
              <property role="TrG5h" value="third" />
              <node concept="3uibUv" id="3t7_2FgAvGs" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2FgAvGt" role="33vP2m">
                <node concept="1oi5UN" id="3t7_2FgAvGu" role="1oi0x0">
                  <node concept="1oi5Wm" id="3t7_2FgAvGv" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="3t7_2FgAvGw" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3t7_2FgAvGx" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="3t7_2FgAvGy" role="1oi5zu">
                      <property role="1oi5yK" value="List" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3t7_2FgACYZ" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgACZ0" role="3cpWs9">
              <property role="TrG5h" value="fourth" />
              <node concept="3uibUv" id="3t7_2FgACZ1" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2FgACZ2" role="33vP2m">
                <node concept="1oi5UN" id="3t7_2FgACZ3" role="1oi0x0">
                  <node concept="1oi5Wm" id="3t7_2FgACZ4" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="3t7_2FgACZ5" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3t7_2FgACZ6" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="3t7_2FgACZ7" role="1oi5zu">
                      <property role="1oi5yK" value="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3t7_2FgAvGz" role="3cqZAp" />
          <node concept="3cpWs8" id="3t7_2FgAvG$" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgAvG_" role="3cpWs9">
              <property role="TrG5h" value="list" />
              <node concept="3uibUv" id="3t7_2FgAvGA" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2FgAvGB" role="33vP2m">
                <node concept="1oi5ST" id="3t7_2FgAvGC" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgAvGD" role="1oi5TL">
                    <node concept="1oi5ST" id="3t7_2FgAwsg" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgAwqt" role="1oi5TL">
                        <node concept="1oi5UN" id="3t7_2FgAwrr" role="KCVpo">
                          <node concept="22Ky0T" id="3t7_2FgAwru" role="lGtFl">
                            <node concept="37vLTw" id="3t7_2FgAwrG" role="22Ky0K">
                              <ref role="3cqZAo" node="3t7_2FgAvG9" resolve="first" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgAwsH" role="KCVpo">
                          <node concept="22Ky0T" id="3t7_2FgAwsN" role="lGtFl">
                            <node concept="37vLTw" id="3t7_2FgAwt1" role="22Ky0K">
                              <ref role="3cqZAo" node="3t7_2FgAvGi" resolve="second" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5ST" id="3t7_2FgAwta" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgAwtb" role="1oi5TL">
                        <node concept="1oi5UN" id="3t7_2FgAwtc" role="KCVpo">
                          <node concept="22Ky0T" id="3t7_2FgAwtd" role="lGtFl">
                            <node concept="37vLTw" id="3t7_2FgADiT" role="22Ky0K">
                              <ref role="3cqZAo" node="3t7_2FgAvGr" resolve="third" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgAwtf" role="KCVpo">
                          <node concept="22Ky0T" id="3t7_2FgAwtg" role="lGtFl">
                            <node concept="37vLTw" id="3t7_2FgADji" role="22Ky0K">
                              <ref role="3cqZAo" node="3t7_2FgACZ0" resolve="fourth" />
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
          <node concept="3clFbH" id="3t7_2FgAvGN" role="3cqZAp" />
          <node concept="3cpWs8" id="3t7_2FgAvGO" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgAvGP" role="3cpWs9">
              <property role="TrG5h" value="lists" />
              <node concept="2OqwBi" id="3t7_2FgAvGQ" role="33vP2m">
                <node concept="2YIFZM" id="3t7_2FgAvGR" role="2Oq$k0">
                  <ref role="37wK5l" to="ie8e:3OPtF03pX11" resolve="findList" />
                  <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
                  <node concept="37vLTw" id="3t7_2FgAvGS" role="37wK5m">
                    <ref role="3cqZAo" node="3t7_2FgAvG_" resolve="list" />
                  </node>
                  <node concept="Xl_RD" id="3t7_2FgAvGT" role="37wK5m">
                    <property role="Xl_RC" value="list" />
                  </node>
                </node>
                <node concept="liA8E" id="3t7_2FgAvGU" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:3OPtF03nYWm" resolve="result" />
                </node>
              </node>
              <node concept="3uibUv" id="3t7_2FgAvGV" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3qUE_q" id="3t7_2FgAvGW" role="11_B2D">
                  <node concept="3uibUv" id="3t7_2FgAvGX" role="3qUE_r">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3t7_2FgAwUK" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgAwUL" role="3cpWs9">
              <property role="TrG5h" value="atoms1" />
              <node concept="2OqwBi" id="3t7_2FgAwUM" role="33vP2m">
                <node concept="2YIFZM" id="3t7_2FgAwUN" role="2Oq$k0">
                  <ref role="37wK5l" to="ie8e:3OPtF03pX11" resolve="findList" />
                  <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
                  <node concept="2OqwBi" id="3t7_2FgAzON" role="37wK5m">
                    <node concept="37vLTw" id="3t7_2FgAzE2" role="2Oq$k0">
                      <ref role="3cqZAo" node="3t7_2FgAvGP" resolve="lists" />
                    </node>
                    <node concept="liA8E" id="3t7_2FgA$9A" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="3cmrfG" id="3t7_2FgA$g$" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3t7_2FgAwUP" role="37wK5m">
                    <property role="Xl_RC" value="list" />
                  </node>
                </node>
                <node concept="liA8E" id="3t7_2FgAwUR" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:3OPtF03nYWm" resolve="result" />
                </node>
              </node>
              <node concept="3uibUv" id="3t7_2FgAwUS" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3qUE_q" id="3t7_2FgAwUT" role="11_B2D">
                  <node concept="3uibUv" id="3t7_2FgAwUU" role="3qUE_r">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3t7_2FgA$lI" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2FgA$lJ" role="3cpWs9">
              <property role="TrG5h" value="atoms2" />
              <node concept="2OqwBi" id="3t7_2FgA$lK" role="33vP2m">
                <node concept="2YIFZM" id="3t7_2FgA$lL" role="2Oq$k0">
                  <ref role="37wK5l" to="ie8e:3OPtF03pX11" resolve="findList" />
                  <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
                  <node concept="2OqwBi" id="3t7_2FgA$lM" role="37wK5m">
                    <node concept="37vLTw" id="3t7_2FgA$lN" role="2Oq$k0">
                      <ref role="3cqZAo" node="3t7_2FgAvGP" resolve="lists" />
                    </node>
                    <node concept="liA8E" id="3t7_2FgA$lO" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="3cmrfG" id="3t7_2FgA$lP" role="37wK5m">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3t7_2FgA$lQ" role="37wK5m">
                    <property role="Xl_RC" value="list" />
                  </node>
                </node>
                <node concept="liA8E" id="3t7_2FgA$lR" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:3OPtF03nYWm" resolve="result" />
                </node>
              </node>
              <node concept="3uibUv" id="3t7_2FgA$lS" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3qUE_q" id="3t7_2FgA$lT" role="11_B2D">
                  <node concept="3uibUv" id="3t7_2FgA$lU" role="3qUE_r">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3t7_2FgAvGY" role="3cqZAp" />
          <node concept="3vlDli" id="3t7_2FgAvGZ" role="3cqZAp">
            <node concept="2ShNRf" id="3t7_2FgAvH0" role="3tpDZB">
              <node concept="Tc6Ow" id="3t7_2FgAvH1" role="2ShVmc">
                <node concept="3uibUv" id="3t7_2FgAvH2" role="HW$YZ">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
                <node concept="37vLTw" id="3t7_2FgAvH3" role="HW$Y0">
                  <ref role="3cqZAo" node="3t7_2FgAvG9" resolve="first" />
                </node>
                <node concept="37vLTw" id="3t7_2FgAvH4" role="HW$Y0">
                  <ref role="3cqZAo" node="3t7_2FgAvGi" resolve="second" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="3t7_2FgAvH6" role="3tpDZA">
              <node concept="Tc6Ow" id="3t7_2FgAvH7" role="2ShVmc">
                <node concept="3uibUv" id="3t7_2FgAvH8" role="HW$YZ">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
                <node concept="10QFUN" id="3t7_2FgAvH9" role="I$8f6">
                  <node concept="37vLTw" id="3t7_2FgA_c2" role="10QFUP">
                    <ref role="3cqZAo" node="3t7_2FgAwUL" resolve="atoms1" />
                  </node>
                  <node concept="3uibUv" id="3t7_2FgAvHb" role="10QFUM">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="3t7_2FgAvHc" role="11_B2D">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="3t7_2FgA$R7" role="3cqZAp">
            <node concept="2ShNRf" id="3t7_2FgA$R8" role="3tpDZB">
              <node concept="Tc6Ow" id="3t7_2FgA$R9" role="2ShVmc">
                <node concept="3uibUv" id="3t7_2FgA$Ra" role="HW$YZ">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
                <node concept="37vLTw" id="3t7_2FgADjE" role="HW$Y0">
                  <ref role="3cqZAo" node="3t7_2FgAvGr" resolve="third" />
                </node>
                <node concept="37vLTw" id="3t7_2FgADky" role="HW$Y0">
                  <ref role="3cqZAo" node="3t7_2FgACZ0" resolve="fourth" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="3t7_2FgA$Re" role="3tpDZA">
              <node concept="Tc6Ow" id="3t7_2FgA$Rf" role="2ShVmc">
                <node concept="3uibUv" id="3t7_2FgA$Rg" role="HW$YZ">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
                <node concept="10QFUN" id="3t7_2FgA$Rh" role="I$8f6">
                  <node concept="37vLTw" id="3t7_2FgA_gU" role="10QFUP">
                    <ref role="3cqZAo" node="3t7_2FgA$lJ" resolve="atoms2" />
                  </node>
                  <node concept="3uibUv" id="3t7_2FgA$Rj" role="10QFUM">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="3t7_2FgA$Rk" role="11_B2D">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
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
</model>

