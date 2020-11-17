<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:42bdc5da-5ab1-401b-822c-d8fc1e4f2876(jetbrains.mps.baseLanguage.tuplesExt.test.tuples)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
  <languages>
    <use id="0b80a2e8-f9f1-47b3-823f-56eb115bca42" name="jetbrains.mps.typechecking.annotation" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="d351f235-67ad-4737-a13e-ec0ea46c55e2" name="jetbrains.mps.baseLanguage.tuplesExt" version="-1" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="upz5" ref="r:33366a6f-09e8-45e7-ae7f-cb8cf0c7ed05(jetbrains.mps.baseLanguage.tuples.runtime)" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238853782547" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral" flags="nn" index="1Ls8ON" />
      <concept id="1238857743184" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression" flags="nn" index="1LFfDK">
        <child id="1238857764950" name="tuple" index="1LFl5Q" />
        <child id="1238857834412" name="index" index="1LF_Uc" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
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
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="0b80a2e8-f9f1-47b3-823f-56eb115bca42" name="jetbrains.mps.typechecking.annotation">
      <concept id="1942415814694854601" name="jetbrains.mps.typechecking.annotation.structure.ErrorAnnotation" flags="ng" index="1U20sH">
        <property id="1942415814694854612" name="text" index="1U20sK" />
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
  <node concept="312cEu" id="4E290qQ09_i">
    <property role="TrG5h" value="DemoIndexedTuples" />
    <node concept="2tJIrI" id="4E290qQ0cQU" role="jymVt" />
    <node concept="312cEu" id="4E290qQ0cUR" role="jymVt">
      <property role="TrG5h" value="A" />
      <node concept="3Tm1VV" id="4E290qQ0cSQ" role="1B3o_S" />
    </node>
    <node concept="312cEu" id="4E290qQ0cZA" role="jymVt">
      <property role="TrG5h" value="B" />
      <node concept="3Tm1VV" id="4E290qQ0cZB" role="1B3o_S" />
      <node concept="3uibUv" id="4E290qQ0d2B" role="1zkMxy">
        <ref role="3uigEE" node="4E290qQ0cUR" resolve="DemoIndexedTuples.A" />
      </node>
    </node>
    <node concept="2tJIrI" id="4E290qQ0cBo" role="jymVt" />
    <node concept="2YIFZL" id="4E290qPZWRX" role="jymVt">
      <property role="TrG5h" value="emptyTuple" />
      <node concept="37vLTG" id="4E290qPZZ3k" role="3clF46">
        <property role="TrG5h" value="empty" />
        <node concept="1LlUBW" id="4E290qPZZiP" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4E290qPZWS0" role="3clF47">
        <node concept="3clFbF" id="4E290qQ009d" role="3cqZAp">
          <node concept="37vLTI" id="4E290qQ00s4" role="3clFbG">
            <node concept="1Ls8ON" id="4E290qQ00Dn" role="37vLTx" />
            <node concept="37vLTw" id="4E290qQ009c" role="37vLTJ">
              <ref role="3cqZAo" node="4E290qPZZ3k" resolve="empty" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4E290qPZUXi" role="1B3o_S" />
      <node concept="1LlUBW" id="4E290qPZYNx" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4E290qQ0cJa" role="jymVt" />
    <node concept="3clFb_" id="4E290qQ0cLP" role="jymVt">
      <property role="TrG5h" value="basic" />
      <node concept="3clFbS" id="4E290qQ0cLS" role="3clF47">
        <node concept="3cpWs8" id="4E290qQ0d7H" role="3cqZAp">
          <node concept="3cpWsn" id="4E290qQ0d7K" role="3cpWs9">
            <property role="TrG5h" value="x" />
            <node concept="10P55v" id="1PW9iVEPUOd" role="1tU5fm" />
            <node concept="1LFfDK" id="4E290qQ0dIw" role="33vP2m">
              <node concept="3cmrfG" id="4E290qQ0dKI" role="1LF_Uc">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="4E290qQ0dby" role="1LFl5Q">
                <ref role="3cqZAo" node="4E290qQ0cMW" resolve="t1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4E290qQ0dVh" role="3cqZAp">
          <node concept="3cpWsn" id="4E290qQ0dVi" role="3cpWs9">
            <property role="TrG5h" value="a1" />
            <node concept="3uibUv" id="4E290qQ0dVj" role="1tU5fm">
              <ref role="3uigEE" node="4E290qQ0cUR" resolve="DemoIndexedTuples.A" />
            </node>
            <node concept="1LFfDK" id="4E290qQ0ey_" role="33vP2m">
              <node concept="37vLTw" id="4E290qQ0dZM" role="1LFl5Q">
                <ref role="3cqZAo" node="4E290qQ0cMW" resolve="t1" />
              </node>
              <node concept="3cmrfG" id="1PW9iVEQ5j3" role="1LF_Uc">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4E290qQ0jcV" role="3cqZAp">
          <node concept="3cpWsn" id="4E290qQ0jcW" role="3cpWs9">
            <property role="TrG5h" value="n1" />
            <node concept="3uibUv" id="4E290qQ0jcX" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Number" resolve="Number" />
            </node>
            <node concept="1LFfDK" id="4E290qQ0k3L" role="33vP2m">
              <node concept="37vLTw" id="4E290qQ0jke" role="1LFl5Q">
                <ref role="3cqZAo" node="4E290qQ0cMW" resolve="t1" />
              </node>
              <node concept="3cmrfG" id="1PW9iVEQ5gR" role="1LF_Uc">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4E290qQ0eLs" role="3cqZAp">
          <node concept="3cpWsn" id="4E290qQ0eLt" role="3cpWs9">
            <property role="TrG5h" value="a2" />
            <node concept="3uibUv" id="4E290qQ0eLu" role="1tU5fm">
              <ref role="3uigEE" node="4E290qQ0cUR" resolve="DemoIndexedTuples.A" />
            </node>
            <node concept="1LFfDK" id="4E290qQ0eLv" role="33vP2m">
              <node concept="37vLTw" id="4E290qQ0eLx" role="1LFl5Q">
                <ref role="3cqZAo" node="4E290qQ0cMW" resolve="t1" />
              </node>
              <node concept="3cpWsd" id="4E290qQ0f08" role="1LF_Uc">
                <node concept="3cmrfG" id="4E290qQ0f0X" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="3cmrfG" id="4E290qQ0ePH" role="3uHU7B">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2WQBycG$c48" role="3cqZAp" />
        <node concept="3clFbH" id="1PW9iVESaRs" role="3cqZAp" />
        <node concept="3cpWs8" id="1PW9iVESaIE" role="3cqZAp">
          <node concept="3cpWsn" id="1PW9iVESaIF" role="3cpWs9">
            <property role="TrG5h" value="n2" />
            <node concept="3uibUv" id="1PW9iVESaIG" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Number" resolve="Number" />
            </node>
            <node concept="1LFfDK" id="1PW9iVESaIH" role="33vP2m">
              <node concept="37vLTw" id="1PW9iVESaII" role="1LFl5Q">
                <ref role="3cqZAo" node="4E290qQ0cMW" resolve="t1" />
              </node>
              <node concept="3cmrfG" id="1PW9iVESaLw" role="1LF_Uc">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
            <node concept="1U20sH" id="1PW9iVESaMr" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4E290qQ0f6e" role="3cqZAp">
          <node concept="3cpWsn" id="4E290qQ0f6f" role="3cpWs9">
            <property role="TrG5h" value="a3" />
            <node concept="3uibUv" id="4E290qQ0f6g" role="1tU5fm">
              <ref role="3uigEE" node="4E290qQ0cUR" resolve="DemoIndexedTuples.A" />
            </node>
            <node concept="1LFfDK" id="4E290qQ0f6h" role="33vP2m">
              <node concept="37vLTw" id="4E290qQ0f6i" role="1LFl5Q">
                <ref role="3cqZAo" node="4E290qQ0cMW" resolve="t1" />
              </node>
              <node concept="37vLTw" id="4E290qQ0fcD" role="1LF_Uc">
                <ref role="3cqZAo" node="4E290qQ0d7K" resolve="x" />
              </node>
              <node concept="1U20sH" id="1PW9iVELLsW" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1PW9iVEPVS6" role="3cqZAp">
          <node concept="3cpWsn" id="1PW9iVEPVS7" role="3cpWs9">
            <property role="TrG5h" value="a4" />
            <node concept="3uibUv" id="1PW9iVEPVS8" role="1tU5fm">
              <ref role="3uigEE" node="4E290qQ0cUR" resolve="DemoIndexedTuples.A" />
            </node>
            <node concept="1LFfDK" id="1PW9iVEPVS9" role="33vP2m">
              <node concept="37vLTw" id="1PW9iVEPVSa" role="1LFl5Q">
                <ref role="3cqZAo" node="4E290qQ0cMW" resolve="t1" />
              </node>
              <node concept="1U20sH" id="1PW9iVEPVSc" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
              <node concept="3b6qkQ" id="1PW9iVEPVWC" role="1LF_Uc">
                <property role="$nhwW" value="1.4" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4E290qQ0iEc" role="3cqZAp">
          <node concept="3cpWsn" id="4E290qQ0iEd" role="3cpWs9">
            <property role="TrG5h" value="x2" />
            <node concept="10Oyi0" id="4E290qQ0kwT" role="1tU5fm" />
            <node concept="1LFfDK" id="4E290qQ0iEf" role="33vP2m">
              <node concept="37vLTw" id="4E290qQ0kdy" role="1LFl5Q">
                <ref role="3cqZAo" node="4E290qQ0iHD" resolve="notTuple" />
              </node>
              <node concept="1U20sH" id="4E290qQ0kgj" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
              <node concept="3cmrfG" id="4E290qQ0klg" role="1LF_Uc">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1PW9iVELUFZ" role="3cqZAp">
          <node concept="3cpWsn" id="1PW9iVELUG0" role="3cpWs9">
            <property role="TrG5h" value="smth1" />
            <node concept="3uibUv" id="1PW9iVELUG1" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="1LFfDK" id="1PW9iVELVWp" role="33vP2m">
              <node concept="37vLTw" id="1PW9iVELVWq" role="1LFl5Q">
                <ref role="3cqZAo" node="4E290qQ0cMW" resolve="t1" />
              </node>
              <node concept="1U20sH" id="1PW9iVELVWs" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
              <node concept="3cmrfG" id="1PW9iVELVXX" role="1LF_Uc">
                <property role="3cmrfH" value="-2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1PW9iVELVZ1" role="3cqZAp">
          <node concept="3cpWsn" id="1PW9iVELVZ2" role="3cpWs9">
            <property role="TrG5h" value="smth2" />
            <node concept="3uibUv" id="1PW9iVELVZ3" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="1LFfDK" id="1PW9iVELVZ4" role="33vP2m">
              <node concept="37vLTw" id="1PW9iVELVZ5" role="1LFl5Q">
                <ref role="3cqZAo" node="4E290qQ0cMW" resolve="t1" />
              </node>
              <node concept="1U20sH" id="1PW9iVELVZ6" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
              <node concept="3cmrfG" id="1PW9iVELW5e" role="1LF_Uc">
                <property role="3cmrfH" value="42" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4E290qQ0cKh" role="1B3o_S" />
      <node concept="3cqZAl" id="4E290qQ0cLc" role="3clF45" />
      <node concept="37vLTG" id="4E290qQ0cMW" role="3clF46">
        <property role="TrG5h" value="t1" />
        <node concept="1LlUBW" id="4E290qQ0cMV" role="1tU5fm">
          <node concept="10P55v" id="1PW9iVEPUEY" role="1Lm7xW" />
          <node concept="3uibUv" id="4E290qQ0dPm" role="1Lm7xW">
            <ref role="3uigEE" node="4E290qQ0cZA" resolve="DemoIndexedTuples.B" />
          </node>
          <node concept="3uibUv" id="4E290qQ0j1R" role="1Lm7xW">
            <ref role="3uigEE" to="wyt6:~Number" resolve="Number" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4E290qQ0iHD" role="3clF46">
        <property role="TrG5h" value="notTuple" />
        <node concept="3uibUv" id="4E290qQ0iM8" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1PW9iVESaSZ" role="jymVt" />
    <node concept="2tJIrI" id="1PW9iVESaXO" role="jymVt" />
    <node concept="3clFb_" id="1PW9iVESb3F" role="jymVt">
      <property role="TrG5h" value="tupleBound" />
      <node concept="3clFbS" id="1PW9iVESb3G" role="3clF47">
        <node concept="3cpWs8" id="1PW9iVESb3H" role="3cqZAp">
          <node concept="3cpWsn" id="1PW9iVESb3I" role="3cpWs9">
            <property role="TrG5h" value="x" />
            <node concept="10P55v" id="1PW9iVESb3J" role="1tU5fm" />
            <node concept="1LFfDK" id="1PW9iVESb3K" role="33vP2m">
              <node concept="3cmrfG" id="1PW9iVESb3L" role="1LF_Uc">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="1PW9iVESb3M" role="1LFl5Q">
                <ref role="3cqZAo" node="1PW9iVESb4P" resolve="t1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1PW9iVESb3N" role="3cqZAp">
          <node concept="3cpWsn" id="1PW9iVESb3O" role="3cpWs9">
            <property role="TrG5h" value="a1" />
            <node concept="3uibUv" id="1PW9iVESb3P" role="1tU5fm">
              <ref role="3uigEE" node="4E290qQ0cUR" resolve="DemoIndexedTuples.A" />
            </node>
            <node concept="1LFfDK" id="1PW9iVESb3Q" role="33vP2m">
              <node concept="37vLTw" id="1PW9iVESb3R" role="1LFl5Q">
                <ref role="3cqZAo" node="1PW9iVESb4P" resolve="t1" />
              </node>
              <node concept="3cmrfG" id="1PW9iVESb3S" role="1LF_Uc">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1PW9iVESb3T" role="3cqZAp">
          <node concept="3cpWsn" id="1PW9iVESb3U" role="3cpWs9">
            <property role="TrG5h" value="n1" />
            <node concept="3uibUv" id="1PW9iVESb3V" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Number" resolve="Number" />
            </node>
            <node concept="1LFfDK" id="1PW9iVESb3W" role="33vP2m">
              <node concept="37vLTw" id="1PW9iVESb3X" role="1LFl5Q">
                <ref role="3cqZAo" node="1PW9iVESb4P" resolve="t1" />
              </node>
              <node concept="3cmrfG" id="1PW9iVESb3Y" role="1LF_Uc">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1PW9iVESb3Z" role="3cqZAp">
          <node concept="3cpWsn" id="1PW9iVESb40" role="3cpWs9">
            <property role="TrG5h" value="a2" />
            <node concept="3uibUv" id="1PW9iVESb41" role="1tU5fm">
              <ref role="3uigEE" node="4E290qQ0cUR" resolve="DemoIndexedTuples.A" />
            </node>
            <node concept="1LFfDK" id="1PW9iVESb42" role="33vP2m">
              <node concept="37vLTw" id="1PW9iVESb43" role="1LFl5Q">
                <ref role="3cqZAo" node="1PW9iVESb4P" resolve="t1" />
              </node>
              <node concept="3cpWsd" id="1PW9iVESb44" role="1LF_Uc">
                <node concept="3cmrfG" id="1PW9iVESb45" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="3cmrfG" id="1PW9iVESb46" role="3uHU7B">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1PW9iVESb47" role="3cqZAp" />
        <node concept="3clFbH" id="1PW9iVESb48" role="3cqZAp" />
        <node concept="3cpWs8" id="1PW9iVESb49" role="3cqZAp">
          <node concept="3cpWsn" id="1PW9iVESb4a" role="3cpWs9">
            <property role="TrG5h" value="n2" />
            <node concept="3uibUv" id="1PW9iVESb4b" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Number" resolve="Number" />
            </node>
            <node concept="1LFfDK" id="1PW9iVESb4c" role="33vP2m">
              <node concept="37vLTw" id="1PW9iVESb4d" role="1LFl5Q">
                <ref role="3cqZAo" node="1PW9iVESb4P" resolve="t1" />
              </node>
              <node concept="3cmrfG" id="1PW9iVESb4e" role="1LF_Uc">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
            <node concept="1U20sH" id="1PW9iVESb4f" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1PW9iVESb4g" role="3cqZAp">
          <node concept="3cpWsn" id="1PW9iVESb4h" role="3cpWs9">
            <property role="TrG5h" value="a3" />
            <node concept="3uibUv" id="1PW9iVESb4i" role="1tU5fm">
              <ref role="3uigEE" node="4E290qQ0cUR" resolve="DemoIndexedTuples.A" />
            </node>
            <node concept="1LFfDK" id="1PW9iVESb4j" role="33vP2m">
              <node concept="37vLTw" id="1PW9iVESb4k" role="1LFl5Q">
                <ref role="3cqZAo" node="1PW9iVESb4P" resolve="t1" />
              </node>
              <node concept="37vLTw" id="1PW9iVESb4l" role="1LF_Uc">
                <ref role="3cqZAo" node="1PW9iVESb3I" resolve="x" />
              </node>
              <node concept="1U20sH" id="1PW9iVESb4m" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1PW9iVESb4n" role="3cqZAp">
          <node concept="3cpWsn" id="1PW9iVESb4o" role="3cpWs9">
            <property role="TrG5h" value="a4" />
            <node concept="3uibUv" id="1PW9iVESb4p" role="1tU5fm">
              <ref role="3uigEE" node="4E290qQ0cUR" resolve="DemoIndexedTuples.A" />
            </node>
            <node concept="1LFfDK" id="1PW9iVESb4q" role="33vP2m">
              <node concept="37vLTw" id="1PW9iVESb4r" role="1LFl5Q">
                <ref role="3cqZAo" node="1PW9iVESb4P" resolve="t1" />
              </node>
              <node concept="1U20sH" id="1PW9iVESb4s" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
              <node concept="3b6qkQ" id="1PW9iVESb4t" role="1LF_Uc">
                <property role="$nhwW" value="1.4" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1PW9iVESb4u" role="3cqZAp">
          <node concept="3cpWsn" id="1PW9iVESb4v" role="3cpWs9">
            <property role="TrG5h" value="x2" />
            <node concept="10Oyi0" id="1PW9iVESb4w" role="1tU5fm" />
            <node concept="1LFfDK" id="1PW9iVESb4x" role="33vP2m">
              <node concept="37vLTw" id="1PW9iVESb4y" role="1LFl5Q">
                <ref role="3cqZAo" node="1PW9iVESb4U" resolve="notTuple" />
              </node>
              <node concept="1U20sH" id="1PW9iVESb4z" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
              <node concept="3cmrfG" id="1PW9iVESb4$" role="1LF_Uc">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1PW9iVESb4_" role="3cqZAp">
          <node concept="3cpWsn" id="1PW9iVESb4A" role="3cpWs9">
            <property role="TrG5h" value="smth1" />
            <node concept="3uibUv" id="1PW9iVESb4B" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="1LFfDK" id="1PW9iVESb4C" role="33vP2m">
              <node concept="37vLTw" id="1PW9iVESb4D" role="1LFl5Q">
                <ref role="3cqZAo" node="1PW9iVESb4P" resolve="t1" />
              </node>
              <node concept="1U20sH" id="1PW9iVESb4E" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
              <node concept="3cmrfG" id="1PW9iVESb4F" role="1LF_Uc">
                <property role="3cmrfH" value="-2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1PW9iVESb4G" role="3cqZAp">
          <node concept="3cpWsn" id="1PW9iVESb4H" role="3cpWs9">
            <property role="TrG5h" value="smth2" />
            <node concept="3uibUv" id="1PW9iVESb4I" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="1LFfDK" id="1PW9iVESb4J" role="33vP2m">
              <node concept="37vLTw" id="1PW9iVESb4K" role="1LFl5Q">
                <ref role="3cqZAo" node="1PW9iVESb4P" resolve="t1" />
              </node>
              <node concept="1U20sH" id="1PW9iVESb4L" role="lGtFl">
                <property role="1U20sK" value="error" />
              </node>
              <node concept="3cmrfG" id="1PW9iVESb4M" role="1LF_Uc">
                <property role="3cmrfH" value="42" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1PW9iVESb4N" role="1B3o_S" />
      <node concept="3cqZAl" id="1PW9iVESb4O" role="3clF45" />
      <node concept="37vLTG" id="1PW9iVESb4P" role="3clF46">
        <property role="TrG5h" value="t1" />
        <node concept="16syzq" id="1PW9iVESbYQ" role="1tU5fm">
          <ref role="16sUi3" node="1PW9iVESbPP" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="1PW9iVESb4U" role="3clF46">
        <property role="TrG5h" value="notTuple" />
        <node concept="3uibUv" id="1PW9iVESb4V" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="16euLQ" id="1PW9iVESbPP" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="1LlUBW" id="1PW9iVESb4Q" role="3ztrMU">
          <node concept="10P55v" id="1PW9iVESb4R" role="1Lm7xW" />
          <node concept="3uibUv" id="1PW9iVESb4S" role="1Lm7xW">
            <ref role="3uigEE" node="4E290qQ0cZA" resolve="DemoIndexedTuples.B" />
          </node>
          <node concept="3uibUv" id="1PW9iVESb4T" role="1Lm7xW">
            <ref role="3uigEE" to="wyt6:~Number" resolve="Number" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1PW9iVESaZu" role="jymVt" />
    <node concept="3clFb_" id="5cBWTAdFJnw" role="jymVt">
      <property role="TrG5h" value="convertsToClassifier" />
      <node concept="37vLTG" id="5cBWTAdFK3N" role="3clF46">
        <property role="TrG5h" value="t0" />
        <node concept="1LlUBW" id="5cBWTAdFKhq" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5cBWTAdFLfd" role="3clF46">
        <property role="TrG5h" value="t1" />
        <node concept="1LlUBW" id="5cBWTAdFL_b" role="1tU5fm">
          <node concept="17QB3L" id="5cBWTAdFMfd" role="1Lm7xW" />
        </node>
      </node>
      <node concept="37vLTG" id="5cBWTAdFPCk" role="3clF46">
        <property role="TrG5h" value="t2" />
        <node concept="1LlUBW" id="5cBWTAdFPCl" role="1tU5fm">
          <node concept="10Oyi0" id="5cBWTAdFPCm" role="1Lm7xW" />
          <node concept="17QB3L" id="5cBWTAdFPCn" role="1Lm7xW" />
        </node>
      </node>
      <node concept="3cqZAl" id="5cBWTAdFJny" role="3clF45" />
      <node concept="3Tm1VV" id="5cBWTAdFJnz" role="1B3o_S" />
      <node concept="3clFbS" id="5cBWTAdFJn$" role="3clF47">
        <node concept="3cpWs8" id="5cBWTAdFOA8" role="3cqZAp">
          <node concept="3cpWsn" id="5cBWTAdFOA9" role="3cpWs9">
            <property role="TrG5h" value="runtimeT0" />
            <node concept="3uibUv" id="5cBWTAdFOAa" role="1tU5fm">
              <ref role="3uigEE" to="upz5:44mPrYlYtK2" resolve="Tuples._0" />
            </node>
            <node concept="37vLTw" id="5cBWTAdFOHU" role="33vP2m">
              <ref role="3cqZAo" node="5cBWTAdFK3N" resolve="t0" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5cBWTAdFOZc" role="3cqZAp">
          <node concept="3cpWsn" id="5cBWTAdFOZd" role="3cpWs9">
            <property role="TrG5h" value="runtimeT1" />
            <node concept="3uibUv" id="5cBWTAdFPhm" role="1tU5fm">
              <ref role="3uigEE" to="upz5:44mPrYlYtKn" resolve="Tuples._1" />
              <node concept="3uibUv" id="5cBWTAdFQND" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="37vLTw" id="5cBWTAdFQTh" role="33vP2m">
              <ref role="3cqZAo" node="5cBWTAdFLfd" resolve="t1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5cBWTAdFRe_" role="3cqZAp">
          <node concept="3cpWsn" id="5cBWTAdFReA" role="3cpWs9">
            <property role="TrG5h" value="runtimeT2" />
            <node concept="3uibUv" id="5cBWTAdFReB" role="1tU5fm">
              <ref role="3uigEE" to="upz5:44mPrYlYtKV" resolve="Tuples._2" />
              <node concept="3uibUv" id="5cBWTAdGQrj" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
              <node concept="3uibUv" id="5cBWTAdFReC" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="37vLTw" id="5cBWTAdFRQg" role="33vP2m">
              <ref role="3cqZAo" node="5cBWTAdFPCk" resolve="t2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4E290qQ0eIp" role="jymVt" />
    <node concept="2tJIrI" id="4E290qQ09Do" role="jymVt" />
    <node concept="2tJIrI" id="4E290qQ09D$" role="jymVt" />
    <node concept="3Tm1VV" id="4E290qQ09_j" role="1B3o_S" />
  </node>
</model>

