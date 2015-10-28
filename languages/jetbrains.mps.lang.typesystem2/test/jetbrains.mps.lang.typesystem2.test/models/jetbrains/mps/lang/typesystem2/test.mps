<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a3d2b59b-aa25-4574-9f0e-446f069933c1(jetbrains.mps.lang.typesystem2.test)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="1" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
  </languages>
  <imports>
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="4t1t" ref="r:703839e2-c38f-4b71-8602-72ccb87dd74e(jetbrains.mps.lang.typesystem2.runtime.util)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
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
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="2105510410850132386" name="jetbrains.mps.logic.structure.List" flags="ng" index="KCUsM" />
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
  <node concept="3s_ewN" id="7Teo5gcYRBO">
    <property role="3s_ewP" value="NodePrinter" />
    <node concept="3Tm1VV" id="7Teo5gcYRBP" role="1B3o_S" />
    <node concept="3s_gsd" id="7Teo5gcYRBQ" role="3s_ewO">
      <node concept="3s$Bmu" id="7Teo5gcZ0TV" role="3s_gse">
        <property role="3s$Bm0" value="string" />
        <node concept="3cqZAl" id="7Teo5gcZ0TW" role="3clF45" />
        <node concept="3Tm1VV" id="7Teo5gcZ0TX" role="1B3o_S" />
        <node concept="3clFbS" id="7Teo5gcZ0TY" role="3clF47">
          <node concept="3cpWs8" id="3t7_2Fg_0sO" role="3cqZAp">
            <node concept="3cpWsn" id="3t7_2Fg_0sP" role="3cpWs9">
              <property role="TrG5h" value="stringType" />
              <node concept="3uibUv" id="3t7_2Fg_0sQ" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="1oi1Uc" id="3t7_2Fg_0sR" role="33vP2m">
                <node concept="1oi5UN" id="3t7_2Fg_0sS" role="1oi0x0">
                  <node concept="1oi5ST" id="7Teo5gcZ0U$" role="1ojpOf">
                    <property role="TrG5h" value="parameter" />
                    <node concept="KCUsM" id="7Teo5gcZ0UQ" role="1oi5TL" />
                  </node>
                  <node concept="1oi5Wm" id="3t7_2Fg_0sT" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="3t7_2Fg_0sU" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3t7_2Fg_0sV" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="3t7_2Fg_0sW" role="1oi5zu">
                      <property role="1oi5yK" value="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7Teo5gcZ0US" role="3cqZAp" />
          <node concept="3cpWs8" id="7Teo5gcZ2OI" role="3cqZAp">
            <node concept="3cpWsn" id="7Teo5gcZ2OJ" role="3cpWs9">
              <property role="TrG5h" value="print" />
              <node concept="17QB3L" id="7Teo5gcZ2OG" role="1tU5fm" />
              <node concept="2YIFZM" id="7Teo5gcZ2OK" role="33vP2m">
                <ref role="37wK5l" to="4t1t:4peSo3CHBfF" resolve="print" />
                <ref role="1Pybhc" to="4t1t:4peSo3CHy8D" resolve="NodePrinter" />
                <node concept="37vLTw" id="7Teo5gcZ2OL" role="37wK5m">
                  <ref role="3cqZAo" node="3t7_2Fg_0sP" resolve="stringType" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7Teo5gcZ2Qu" role="3cqZAp" />
          <node concept="3vlDli" id="7Teo5gcZ2RQ" role="3cqZAp">
            <node concept="Xl_RD" id="7Teo5gcZ2SI" role="3tpDZB">
              <property role="Xl_RC" value="String" />
            </node>
            <node concept="37vLTw" id="7Teo5gcZ2T4" role="3tpDZA">
              <ref role="3cqZAo" node="7Teo5gcZ2OJ" resolve="print" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

