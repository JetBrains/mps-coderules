<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fdff7d46-8046-4462-af08-894b74d498b4(jetbrains.mps.baseLanguage.collectionsExt.test.sequence)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="0b80a2e8-f9f1-47b3-823f-56eb115bca42" name="jetbrains.mps.typechecking.annotation" version="0" />
    <use id="c1f5ad88-21f4-4e0e-927c-48b1ca0c2334" name="jetbrains.mps.baseLanguage.collectionsExt" version="-1" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
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
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="3MFPGC50Izk">
    <property role="TrG5h" value="SequenceConversions" />
    <node concept="2tJIrI" id="3MFPGC52yO4" role="jymVt" />
    <node concept="312cEu" id="3MFPGC51QOV" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="A" />
      <node concept="3Tm1VV" id="3MFPGC51QMG" role="1B3o_S" />
    </node>
    <node concept="312cEu" id="3MFPGC51RNv" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="B" />
      <node concept="3Tm1VV" id="3MFPGC51RNw" role="1B3o_S" />
      <node concept="3uibUv" id="3MFPGC51U4f" role="1zkMxy">
        <ref role="3uigEE" node="3MFPGC51QOV" resolve="SequenceConversions.A" />
      </node>
    </node>
    <node concept="312cEu" id="3MFPGC51S8B" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="C" />
      <node concept="3Tm1VV" id="3MFPGC51S8C" role="1B3o_S" />
      <node concept="3uibUv" id="3MFPGC51TKd" role="1zkMxy">
        <ref role="3uigEE" node="3MFPGC51RNv" resolve="SequenceConversions.B" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MFPGC52gL5" role="jymVt" />
    <node concept="3clFb_" id="6BFOg89Ju5T" role="jymVt">
      <property role="TrG5h" value="array" />
      <node concept="37vLTG" id="6BFOg89Jv5c" role="3clF46">
        <property role="TrG5h" value="aas" />
        <node concept="10Q1$e" id="6BFOg89Jvwj" role="1tU5fm">
          <node concept="3uibUv" id="6BFOg89Jvwg" role="10Q1$1">
            <ref role="3uigEE" node="3MFPGC51QOV" resolve="SequenceConversions.A" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6BFOg89Jwfz" role="3clF46">
        <property role="TrG5h" value="sas" />
        <node concept="A3Dl8" id="6BFOg89JwGD" role="1tU5fm">
          <node concept="3uibUv" id="6BFOg89Jx6m" role="A3Ik2">
            <ref role="3uigEE" node="3MFPGC51QOV" resolve="SequenceConversions.A" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6BFOg89Ju5W" role="3clF47">
        <node concept="3clFbF" id="6BFOg89Jyck" role="3cqZAp">
          <node concept="37vLTI" id="6BFOg89JyIS" role="3clFbG">
            <node concept="37vLTw" id="6BFOg89Jzb2" role="37vLTx">
              <ref role="3cqZAo" node="6BFOg89Jv5c" resolve="aas" />
            </node>
            <node concept="37vLTw" id="6BFOg89Jycj" role="37vLTJ">
              <ref role="3cqZAo" node="6BFOg89Jwfz" resolve="sas" />
            </node>
            <node concept="1U20sH" id="6BFOg89J$Aj" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6BFOg89J_8D" role="3cqZAp">
          <node concept="37vLTI" id="6BFOg89J_AK" role="3clFbG">
            <node concept="37vLTw" id="6BFOg89JA2S" role="37vLTx">
              <ref role="3cqZAo" node="6BFOg89Jwfz" resolve="sas" />
            </node>
            <node concept="37vLTw" id="6BFOg89J_8B" role="37vLTJ">
              <ref role="3cqZAo" node="6BFOg89Jv5c" resolve="aas" />
            </node>
            <node concept="1U20sH" id="6BFOg89JAxr" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6BFOg89Jt_D" role="1B3o_S" />
      <node concept="3cqZAl" id="6BFOg89JtF1" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3MFPGC52yiK" role="jymVt" />
    <node concept="3clFb_" id="3MFPGC52fKG" role="jymVt">
      <property role="TrG5h" value="foo" />
      <node concept="3clFbS" id="3MFPGC52fKH" role="3clF47">
        <node concept="3clFbH" id="3MFPGC52iXg" role="3cqZAp" />
        <node concept="3SKdUt" id="3MFPGC52fLZ" role="3cqZAp">
          <node concept="1PaTwC" id="3MFPGC52fM0" role="1aUNEU">
            <node concept="3oM_SD" id="3MFPGC52fM1" role="1PaTwD">
              <property role="3oM_SC" value="Various" />
            </node>
            <node concept="3oM_SD" id="3MFPGC52fM2" role="1PaTwD">
              <property role="3oM_SC" value="raw" />
            </node>
            <node concept="3oM_SD" id="3MFPGC52fM3" role="1PaTwD">
              <property role="3oM_SC" value="things" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3MFPGC52fM4" role="3cqZAp" />
        <node concept="3cpWs8" id="3MFPGC52fM5" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52fM6" role="3cpWs9">
            <property role="TrG5h" value="it0" />
            <node concept="3uibUv" id="3MFPGC52fM7" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
            </node>
            <node concept="37vLTw" id="3MFPGC52fM8" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC52fNg" resolve="empts" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC52fM9" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52fMa" role="3cpWs9">
            <property role="TrG5h" value="it1" />
            <node concept="3uibUv" id="3MFPGC52fMb" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
            </node>
            <node concept="37vLTw" id="3MFPGC52nU8" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC52lZm" resolve="objs" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC52fMh" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52fMi" role="3cpWs9">
            <property role="TrG5h" value="it2" />
            <node concept="3uibUv" id="3MFPGC52fMj" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
            </node>
            <node concept="37vLTw" id="3MFPGC52lwr" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC52fNl" resolve="ys" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC52fMl" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52fMm" role="3cpWs9">
            <property role="TrG5h" value="it6" />
            <node concept="3uibUv" id="3MFPGC52fMn" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
            </node>
            <node concept="37vLTw" id="3MFPGC52qWA" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC52fNw" resolve="bs" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC52fMA" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52fMB" role="3cpWs9">
            <property role="TrG5h" value="empts1" />
            <node concept="A3Dl8" id="3MFPGC52fMC" role="1tU5fm" />
            <node concept="37vLTw" id="3MFPGC52fMD" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC52fNr" resolve="rawIt" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC52fMQ" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52fMR" role="3cpWs9">
            <property role="TrG5h" value="empts2" />
            <node concept="A3Dl8" id="3MFPGC52fMS" role="1tU5fm" />
            <node concept="37vLTw" id="3MFPGC52rtA" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC52fNw" resolve="bs" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC52fMU" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52fMV" role="3cpWs9">
            <property role="TrG5h" value="rawIt2" />
            <node concept="3uibUv" id="3MFPGC52fMW" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
            </node>
            <node concept="37vLTw" id="3MFPGC52rY$" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC52fNw" resolve="bs" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6GOqnFkcWZz" role="3cqZAp" />
        <node concept="3cpWs8" id="3MFPGC52fMt" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52fMu" role="3cpWs9">
            <property role="TrG5h" value="objs1" />
            <node concept="A3Dl8" id="3MFPGC52fMv" role="1tU5fm">
              <node concept="3uibUv" id="3MFPGC52fMw" role="A3Ik2">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC52fMx" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC52fNr" resolve="rawIt" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6GOqnFkcYDk" role="3cqZAp">
          <node concept="1PaTwC" id="6GOqnFkcYDl" role="1aUNEU">
            <node concept="3oM_SD" id="6GOqnFkcYDm" role="1PaTwD">
              <property role="3oM_SC" value="Unchecked" />
            </node>
            <node concept="3oM_SD" id="6GOqnFkcYMM" role="1PaTwD">
              <property role="3oM_SC" value="conversion" />
            </node>
            <node concept="3oM_SD" id="6GOqnFkuAtT" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="6GOqnFkuAuV" role="1PaTwD">
              <property role="3oM_SC" value="sequence" />
            </node>
            <node concept="3oM_SD" id="6GOqnFkuAwp" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6GOqnFkuAwv" role="1PaTwD">
              <property role="3oM_SC" value="forbidden" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6GOqnFkcXbd" role="3cqZAp">
          <node concept="3cpWsn" id="6GOqnFkcXbg" role="3cpWs9">
            <property role="TrG5h" value="ys3" />
            <node concept="A3Dl8" id="6GOqnFkcXba" role="1tU5fm">
              <node concept="3uibUv" id="6GOqnFkcXkG" role="A3Ik2">
                <ref role="3uigEE" node="3MFPGC51RNv" resolve="SequenceConversions.B" />
              </node>
            </node>
            <node concept="37vLTw" id="6GOqnFkcY3n" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC52fNg" resolve="empts" />
            </node>
            <node concept="1U20sH" id="6GOqnFkuApa" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6GOqnFkuAzC" role="3cqZAp">
          <node concept="1PaTwC" id="6GOqnFkuAzD" role="1aUNEU">
            <node concept="3oM_SD" id="6GOqnFkuAzE" role="1PaTwD">
              <property role="3oM_SC" value="But" />
            </node>
            <node concept="3oM_SD" id="6GOqnFkuAJp" role="1PaTwD">
              <property role="3oM_SC" value="unchecked" />
            </node>
            <node concept="3oM_SD" id="6GOqnFkuAzF" role="1PaTwD">
              <property role="3oM_SC" value="conversion" />
            </node>
            <node concept="3oM_SD" id="6GOqnFkuAzG" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="6GOqnFkuAM7" role="1PaTwD">
              <property role="3oM_SC" value="sequence" />
            </node>
            <node concept="3oM_SD" id="6GOqnFkuANb" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="6GOqnFkuANH" role="1PaTwD">
              <property role="3oM_SC" value="Iterable" />
            </node>
            <node concept="3oM_SD" id="6GOqnFkuARK" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6GOqnFkuASR" role="1PaTwD">
              <property role="3oM_SC" value="allowed" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6GOqnFkd1f$" role="3cqZAp">
          <node concept="3cpWsn" id="6GOqnFkd1f_" role="3cpWs9">
            <property role="TrG5h" value="ys4" />
            <node concept="A3Dl8" id="6GOqnFkd1fA" role="1tU5fm">
              <node concept="3uibUv" id="6GOqnFkd1fB" role="A3Ik2">
                <ref role="3uigEE" node="3MFPGC51RNv" resolve="SequenceConversions.B" />
              </node>
            </node>
            <node concept="37vLTw" id="6GOqnFkd1SM" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC52fNr" resolve="rawIt" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3MFPGC52fMY" role="3cqZAp" />
        <node concept="3cpWs8" id="3MFPGC52fMZ" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52fN0" role="3cpWs9">
            <property role="TrG5h" value="empts3" />
            <node concept="A3Dl8" id="3MFPGC52fN1" role="1tU5fm" />
            <node concept="10Nm6u" id="3MFPGC52fN2" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC52fN3" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52fN4" role="3cpWs9">
            <property role="TrG5h" value="objs3" />
            <node concept="A3Dl8" id="3MFPGC52fN5" role="1tU5fm">
              <node concept="3uibUv" id="3MFPGC52fN6" role="A3Ik2">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="10Nm6u" id="3MFPGC52fN7" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC52fN8" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52fN9" role="3cpWs9">
            <property role="TrG5h" value="nums3" />
            <node concept="A3Dl8" id="3MFPGC52fNa" role="1tU5fm">
              <node concept="3uibUv" id="3MFPGC52fNb" role="A3Ik2">
                <ref role="3uigEE" to="wyt6:~Number" resolve="Number" />
              </node>
            </node>
            <node concept="10Nm6u" id="3MFPGC52fNc" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="3MFPGC52fNd" role="3cqZAp" />
      </node>
      <node concept="3Tm1VV" id="3MFPGC52fNe" role="1B3o_S" />
      <node concept="3cqZAl" id="3MFPGC52fNf" role="3clF45" />
      <node concept="37vLTG" id="3MFPGC52fNg" role="3clF46">
        <property role="TrG5h" value="empts" />
        <node concept="A3Dl8" id="3MFPGC52fNh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3MFPGC52lZm" role="3clF46">
        <property role="TrG5h" value="objs" />
        <node concept="A3Dl8" id="3MFPGC52mqp" role="1tU5fm">
          <node concept="3uibUv" id="3MFPGC52mTo" role="A3Ik2">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MFPGC52fNl" role="3clF46">
        <property role="TrG5h" value="ys" />
        <node concept="A3Dl8" id="3MFPGC52fNm" role="1tU5fm">
          <node concept="3uibUv" id="3MFPGC52fNn" role="A3Ik2">
            <ref role="3uigEE" node="3MFPGC51RNv" resolve="SequenceConversions.B" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MFPGC52fNr" role="3clF46">
        <property role="TrG5h" value="rawIt" />
        <node concept="3uibUv" id="3MFPGC52fNs" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        </node>
      </node>
      <node concept="37vLTG" id="3MFPGC52fNw" role="3clF46">
        <property role="TrG5h" value="bs" />
        <node concept="3uibUv" id="3MFPGC52fNx" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="3MFPGC52fNy" role="11_B2D">
            <ref role="3uigEE" node="3MFPGC51RNv" resolve="SequenceConversions.B" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MFPGC50J3e" role="jymVt" />
    <node concept="3clFb_" id="3MFPGC50J3H" role="jymVt">
      <property role="TrG5h" value="classifiers" />
      <node concept="3clFbS" id="3MFPGC50J3I" role="3clF47">
        <node concept="3clFbH" id="3MFPGC50Z4C" role="3cqZAp" />
        <node concept="3cpWs8" id="3MFPGC50LqW" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC50LqZ" role="3cpWs9">
            <property role="TrG5h" value="objs1" />
            <node concept="A3Dl8" id="3MFPGC50LqT" role="1tU5fm">
              <node concept="3uibUv" id="3MFPGC50Lt9" role="A3Ik2">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC51N9_" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC50J3L" resolve="ys" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC51ORS" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC51ORT" role="3cpWs9">
            <property role="TrG5h" value="as1" />
            <node concept="A3Dl8" id="3MFPGC51ORU" role="1tU5fm">
              <node concept="3uibUv" id="3MFPGC51XvE" role="A3Ik2">
                <ref role="3uigEE" node="3MFPGC51QOV" resolve="SequenceConversions.A" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC51ORW" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC50J3L" resolve="ys" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC50LEd" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC50LEe" role="3cpWs9">
            <property role="TrG5h" value="bs1" />
            <node concept="A3Dl8" id="3MFPGC50LEf" role="1tU5fm">
              <node concept="3uibUv" id="3MFPGC51XPG" role="A3Ik2">
                <ref role="3uigEE" node="3MFPGC51RNv" resolve="SequenceConversions.B" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC51Nyk" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC50J3L" resolve="ys" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC50M4O" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC50M4P" role="3cpWs9">
            <property role="TrG5h" value="cs1" />
            <node concept="A3Dl8" id="3MFPGC50M4Q" role="1tU5fm">
              <node concept="3uibUv" id="3MFPGC51Ya7" role="A3Ik2">
                <ref role="3uigEE" node="3MFPGC51S8B" resolve="SequenceConversions.C" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC51NSF" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC50J3L" resolve="ys" />
            </node>
            <node concept="1U20sH" id="3MFPGC51PDa" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3MFPGC511jL" role="3cqZAp" />
        <node concept="3clFbH" id="3MFPGC52wVD" role="3cqZAp" />
        <node concept="3cpWs8" id="3MFPGC50PN9" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC50PNa" role="3cpWs9">
            <property role="TrG5h" value="xsA" />
            <node concept="A3Dl8" id="3MFPGC50PNb" role="1tU5fm">
              <node concept="3uibUv" id="3MFPGC51Zi8" role="A3Ik2">
                <ref role="3uigEE" node="3MFPGC51RNv" resolve="SequenceConversions.B" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC5225K" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC5211x" resolve="as" />
            </node>
            <node concept="1U20sH" id="3MFPGC523fb" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC50QbW" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC50QbX" role="3cpWs9">
            <property role="TrG5h" value="xsB" />
            <node concept="A3Dl8" id="3MFPGC50QbY" role="1tU5fm">
              <node concept="3uibUv" id="3MFPGC51ZC6" role="A3Ik2">
                <ref role="3uigEE" node="3MFPGC51RNv" resolve="SequenceConversions.B" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC522Q9" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC50JtA" resolve="bs" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC522uf" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC522ug" role="3cpWs9">
            <property role="TrG5h" value="xsC" />
            <node concept="A3Dl8" id="3MFPGC522uh" role="1tU5fm">
              <node concept="3uibUv" id="3MFPGC522ui" role="A3Ik2">
                <ref role="3uigEE" node="3MFPGC51RNv" resolve="SequenceConversions.B" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC522uj" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC50JHZ" resolve="cs" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3MFPGC50R6C" role="3cqZAp" />
        <node concept="3clFbH" id="3MFPGC52wNU" role="3cqZAp" />
        <node concept="3cpWs8" id="3MFPGC524ta" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC524tb" role="3cpWs9">
            <property role="TrG5h" value="itA" />
            <node concept="3uibUv" id="3MFPGC524tc" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
              <node concept="3uibUv" id="3MFPGC524td" role="11_B2D">
                <ref role="3uigEE" node="3MFPGC51RNv" resolve="SequenceConversions.B" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC5250M" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC51JFL" resolve="xs" />
            </node>
            <node concept="1U20sH" id="3MFPGC525m1" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC50QSz" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC50QSD" role="3cpWs9">
            <property role="TrG5h" value="itB" />
            <node concept="3uibUv" id="3MFPGC50QSF" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
              <node concept="3uibUv" id="3MFPGC523SA" role="11_B2D">
                <ref role="3uigEE" node="3MFPGC51RNv" resolve="SequenceConversions.B" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC50Rek" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC50J3L" resolve="ys" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3MFPGC50RGy" role="3cqZAp">
          <node concept="1PaTwC" id="3MFPGC50RGz" role="1aUNEU">
            <node concept="3oM_SD" id="3MFPGC50RG$" role="1PaTwD">
              <property role="3oM_SC" value="todo:" />
            </node>
            <node concept="3oM_SD" id="3MFPGC50RG_" role="1PaTwD">
              <property role="3oM_SC" value="ensure" />
            </node>
            <node concept="3oM_SD" id="3MFPGC50RGA" role="1PaTwD">
              <property role="3oM_SC" value="covariance" />
            </node>
            <node concept="3oM_SD" id="3MFPGC50RGB" role="1PaTwD">
              <property role="3oM_SC" value="b/w" />
            </node>
            <node concept="3oM_SD" id="3MFPGC50RGC" role="1PaTwD">
              <property role="3oM_SC" value="sequence" />
            </node>
            <node concept="3oM_SD" id="3MFPGC50RGD" role="1PaTwD">
              <property role="3oM_SC" value="&amp;" />
            </node>
            <node concept="3oM_SD" id="3MFPGC50RGE" role="1PaTwD">
              <property role="3oM_SC" value="Iterable" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC50RiN" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC50RiO" role="3cpWs9">
            <property role="TrG5h" value="itC" />
            <node concept="3uibUv" id="3MFPGC50RiP" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
              <node concept="3uibUv" id="3MFPGC52450" role="11_B2D">
                <ref role="3uigEE" node="3MFPGC51RNv" resolve="SequenceConversions.B" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC50Rq_" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC50J3O" resolve="zs" />
            </node>
            <node concept="1U20sH" id="4NtT$ZxGRfG" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3MFPGC50ZnZ" role="3cqZAp" />
        <node concept="3cpWs8" id="2hQbw6I2YL9" role="3cqZAp">
          <node concept="3cpWsn" id="2hQbw6I2YLa" role="3cpWs9">
            <property role="TrG5h" value="listOfB" />
            <node concept="3uibUv" id="2hQbw6I2YL7" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2hQbw6I2YSo" role="11_B2D">
                <ref role="3uigEE" node="3MFPGC51RNv" resolve="SequenceConversions.B" />
              </node>
            </node>
            <node concept="10Nm6u" id="2hQbw6I2ZdO" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="2hQbw6I2Znc" role="3cqZAp">
          <node concept="3cpWsn" id="2hQbw6I2Znf" role="3cpWs9">
            <property role="TrG5h" value="seqOfB" />
            <node concept="A3Dl8" id="2hQbw6I2Zn9" role="1tU5fm">
              <node concept="3uibUv" id="2hQbw6I2ZtK" role="A3Ik2">
                <ref role="3uigEE" node="3MFPGC51RNv" resolve="SequenceConversions.B" />
              </node>
            </node>
            <node concept="37vLTw" id="2hQbw6I2ZLB" role="33vP2m">
              <ref role="3cqZAo" node="2hQbw6I2YLa" resolve="listOfB" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2hQbw6I2ZRr" role="3cqZAp">
          <node concept="3cpWsn" id="2hQbw6I2ZRs" role="3cpWs9">
            <property role="TrG5h" value="seqOfA" />
            <node concept="A3Dl8" id="2hQbw6I2ZRt" role="1tU5fm">
              <node concept="3uibUv" id="2hQbw6I30a6" role="A3Ik2">
                <ref role="3uigEE" node="3MFPGC51QOV" resolve="SequenceConversions.A" />
              </node>
            </node>
            <node concept="37vLTw" id="2hQbw6I2ZRv" role="33vP2m">
              <ref role="3cqZAo" node="2hQbw6I2YLa" resolve="listOfB" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2hQbw6I30$l" role="3cqZAp">
          <node concept="3cpWsn" id="2hQbw6I30$m" role="3cpWs9">
            <property role="TrG5h" value="seqOfC" />
            <node concept="A3Dl8" id="2hQbw6I30$n" role="1tU5fm">
              <node concept="3uibUv" id="2hQbw6I30ZL" role="A3Ik2">
                <ref role="3uigEE" node="3MFPGC51S8B" resolve="SequenceConversions.C" />
              </node>
            </node>
            <node concept="37vLTw" id="2hQbw6I30$p" role="33vP2m">
              <ref role="3cqZAo" node="2hQbw6I2YLa" resolve="listOfB" />
            </node>
            <node concept="1U20sH" id="2hQbw6I31qn" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3MFPGC50J3J" role="1B3o_S" />
      <node concept="3cqZAl" id="3MFPGC50J3K" role="3clF45" />
      <node concept="37vLTG" id="3MFPGC50T$L" role="3clF46">
        <property role="TrG5h" value="empts" />
        <node concept="A3Dl8" id="3MFPGC50TE1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3MFPGC51JFL" role="3clF46">
        <property role="TrG5h" value="xs" />
        <node concept="A3Dl8" id="3MFPGC51IiQ" role="1tU5fm">
          <node concept="3uibUv" id="3MFPGC51Uq$" role="A3Ik2">
            <ref role="3uigEE" node="3MFPGC51QOV" resolve="SequenceConversions.A" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MFPGC50J3L" role="3clF46">
        <property role="TrG5h" value="ys" />
        <node concept="A3Dl8" id="3MFPGC50J3M" role="1tU5fm">
          <node concept="3uibUv" id="3MFPGC51UJH" role="A3Ik2">
            <ref role="3uigEE" node="3MFPGC51RNv" resolve="SequenceConversions.B" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MFPGC50J3O" role="3clF46">
        <property role="TrG5h" value="zs" />
        <node concept="A3Dl8" id="3MFPGC50J3P" role="1tU5fm">
          <node concept="3uibUv" id="3MFPGC51VbI" role="A3Ik2">
            <ref role="3uigEE" node="3MFPGC51S8B" resolve="SequenceConversions.C" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MFPGC50Jhi" role="3clF46">
        <property role="TrG5h" value="rawIt" />
        <node concept="3uibUv" id="3MFPGC50Jkc" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        </node>
      </node>
      <node concept="37vLTG" id="3MFPGC5211x" role="3clF46">
        <property role="TrG5h" value="as" />
        <node concept="3uibUv" id="3MFPGC5211y" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="3MFPGC521Ik" role="11_B2D">
            <ref role="3uigEE" node="3MFPGC51QOV" resolve="SequenceConversions.A" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MFPGC50JtA" role="3clF46">
        <property role="TrG5h" value="bs" />
        <node concept="3uibUv" id="3MFPGC50JvO" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="3MFPGC51W4C" role="11_B2D">
            <ref role="3uigEE" node="3MFPGC51RNv" resolve="SequenceConversions.B" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MFPGC50JHZ" role="3clF46">
        <property role="TrG5h" value="cs" />
        <node concept="3uibUv" id="3MFPGC50JKg" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="3MFPGC51WuR" role="11_B2D">
            <ref role="3uigEE" node="3MFPGC51S8B" resolve="SequenceConversions.C" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MFPGC51C3E" role="jymVt" />
    <node concept="3clFb_" id="3MFPGC51C3G" role="jymVt">
      <property role="TrG5h" value="typevar" />
      <node concept="3clFbS" id="3MFPGC51C3H" role="3clF47">
        <node concept="3clFbH" id="3MFPGC52aqq" role="3cqZAp" />
        <node concept="3cpWs8" id="3MFPGC52aqr" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52aqs" role="3cpWs9">
            <property role="TrG5h" value="objs1" />
            <node concept="A3Dl8" id="3MFPGC52aqt" role="1tU5fm">
              <node concept="3uibUv" id="3MFPGC52aqu" role="A3Ik2">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC52aqv" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC51C67" resolve="ys" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC52aqw" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52aqx" role="3cpWs9">
            <property role="TrG5h" value="as1" />
            <node concept="A3Dl8" id="3MFPGC52aqy" role="1tU5fm">
              <node concept="16syzq" id="3MFPGC52bio" role="A3Ik2">
                <ref role="16sUi3" node="3MFPGC51CRU" resolve="X" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC52aq$" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC51C67" resolve="ys" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC52aq_" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52aqA" role="3cpWs9">
            <property role="TrG5h" value="bs1" />
            <node concept="A3Dl8" id="3MFPGC52aqB" role="1tU5fm">
              <node concept="16syzq" id="3MFPGC52bDT" role="A3Ik2">
                <ref role="16sUi3" node="3MFPGC51D85" resolve="Y" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC52aqD" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC51C67" resolve="ys" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC52aqE" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52aqF" role="3cpWs9">
            <property role="TrG5h" value="cs1" />
            <node concept="A3Dl8" id="3MFPGC52aqG" role="1tU5fm">
              <node concept="16syzq" id="3MFPGC52bZI" role="A3Ik2">
                <ref role="16sUi3" node="3MFPGC51DtY" resolve="Z" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC52aqI" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC51C67" resolve="ys" />
            </node>
            <node concept="1U20sH" id="3MFPGC52aqJ" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3MFPGC52aqK" role="3cqZAp" />
        <node concept="3clFbH" id="3MFPGC52x46" role="3cqZAp" />
        <node concept="3cpWs8" id="3MFPGC52aqR" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52aqS" role="3cpWs9">
            <property role="TrG5h" value="xsA" />
            <node concept="A3Dl8" id="3MFPGC52aqT" role="1tU5fm">
              <node concept="16syzq" id="3MFPGC52cJs" role="A3Ik2">
                <ref role="16sUi3" node="3MFPGC51D85" resolve="Y" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC52aqV" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC51C6c" resolve="as" />
            </node>
            <node concept="1U20sH" id="3MFPGC52aqW" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC52aqX" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52aqY" role="3cpWs9">
            <property role="TrG5h" value="xsB" />
            <node concept="A3Dl8" id="3MFPGC52aqZ" role="1tU5fm">
              <node concept="16syzq" id="3MFPGC52d7u" role="A3Ik2">
                <ref role="16sUi3" node="3MFPGC51D85" resolve="Y" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC52ar1" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC51C6f" resolve="bs" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC52arb" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52arc" role="3cpWs9">
            <property role="TrG5h" value="xsC" />
            <node concept="A3Dl8" id="3MFPGC52ard" role="1tU5fm">
              <node concept="16syzq" id="3MFPGC52duO" role="A3Ik2">
                <ref role="16sUi3" node="3MFPGC51D85" resolve="Y" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC52arf" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC528cV" resolve="cs" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3MFPGC52arg" role="3cqZAp" />
        <node concept="3clFbH" id="3MFPGC52xb7" role="3cqZAp" />
        <node concept="3cpWs8" id="3MFPGC52arh" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52ari" role="3cpWs9">
            <property role="TrG5h" value="itA" />
            <node concept="3uibUv" id="3MFPGC52arj" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
              <node concept="16syzq" id="3MFPGC52dTI" role="11_B2D">
                <ref role="16sUi3" node="3MFPGC51D85" resolve="Y" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC52arl" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC51C64" resolve="xs" />
            </node>
            <node concept="1U20sH" id="3MFPGC52arm" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC52arn" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52aro" role="3cpWs9">
            <property role="TrG5h" value="itB" />
            <node concept="3uibUv" id="3MFPGC52arp" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
              <node concept="16syzq" id="3MFPGC52egx" role="11_B2D">
                <ref role="16sUi3" node="3MFPGC51D85" resolve="Y" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC52arr" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC51C67" resolve="ys" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3MFPGC52ars" role="3cqZAp">
          <node concept="1PaTwC" id="3MFPGC52art" role="1aUNEU">
            <node concept="3oM_SD" id="3MFPGC52aru" role="1PaTwD">
              <property role="3oM_SC" value="todo:" />
            </node>
            <node concept="3oM_SD" id="3MFPGC52arv" role="1PaTwD">
              <property role="3oM_SC" value="ensure" />
            </node>
            <node concept="3oM_SD" id="3MFPGC52arw" role="1PaTwD">
              <property role="3oM_SC" value="covariance" />
            </node>
            <node concept="3oM_SD" id="3MFPGC52arx" role="1PaTwD">
              <property role="3oM_SC" value="b/w" />
            </node>
            <node concept="3oM_SD" id="3MFPGC52ary" role="1PaTwD">
              <property role="3oM_SC" value="sequence" />
            </node>
            <node concept="3oM_SD" id="3MFPGC52arz" role="1PaTwD">
              <property role="3oM_SC" value="&amp;" />
            </node>
            <node concept="3oM_SD" id="3MFPGC52ar$" role="1PaTwD">
              <property role="3oM_SC" value="Iterable" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3MFPGC52ar_" role="3cqZAp">
          <node concept="3cpWsn" id="3MFPGC52arA" role="3cpWs9">
            <property role="TrG5h" value="itC" />
            <node concept="3uibUv" id="3MFPGC52arB" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
              <node concept="16syzq" id="3MFPGC52eBn" role="11_B2D">
                <ref role="16sUi3" node="3MFPGC51D85" resolve="Y" />
              </node>
            </node>
            <node concept="37vLTw" id="3MFPGC52arD" role="33vP2m">
              <ref role="3cqZAo" node="3MFPGC51FlK" resolve="zs" />
            </node>
            <node concept="1U20sH" id="4NtT$ZxGRKI" role="lGtFl">
              <property role="1U20sK" value="error" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3MFPGC52arE" role="3cqZAp" />
      </node>
      <node concept="3Tm1VV" id="3MFPGC51C60" role="1B3o_S" />
      <node concept="3cqZAl" id="3MFPGC51C61" role="3clF45" />
      <node concept="37vLTG" id="3MFPGC51C62" role="3clF46">
        <property role="TrG5h" value="empts" />
        <node concept="A3Dl8" id="3MFPGC51C63" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3MFPGC51C64" role="3clF46">
        <property role="TrG5h" value="xs" />
        <node concept="A3Dl8" id="3MFPGC51C65" role="1tU5fm">
          <node concept="16syzq" id="3MFPGC51DJL" role="A3Ik2">
            <ref role="16sUi3" node="3MFPGC51CRU" resolve="X" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MFPGC51C67" role="3clF46">
        <property role="TrG5h" value="ys" />
        <node concept="A3Dl8" id="3MFPGC51C68" role="1tU5fm">
          <node concept="16syzq" id="3MFPGC51E4Y" role="A3Ik2">
            <ref role="16sUi3" node="3MFPGC51D85" resolve="Y" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MFPGC51FlK" role="3clF46">
        <property role="TrG5h" value="zs" />
        <node concept="A3Dl8" id="3MFPGC51FlL" role="1tU5fm">
          <node concept="16syzq" id="3MFPGC51FCO" role="A3Ik2">
            <ref role="16sUi3" node="3MFPGC51DtY" resolve="Z" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MFPGC51C6c" role="3clF46">
        <property role="TrG5h" value="as" />
        <node concept="3uibUv" id="3MFPGC51C6d" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="16syzq" id="3MFPGC51EI_" role="11_B2D">
            <ref role="16sUi3" node="3MFPGC51CRU" resolve="X" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MFPGC51C6f" role="3clF46">
        <property role="TrG5h" value="bs" />
        <node concept="3uibUv" id="3MFPGC51C6g" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="16syzq" id="3MFPGC51F39" role="11_B2D">
            <ref role="16sUi3" node="3MFPGC51D85" resolve="Y" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MFPGC528cV" role="3clF46">
        <property role="TrG5h" value="cs" />
        <node concept="3uibUv" id="3MFPGC528Jz" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="16syzq" id="3MFPGC529ro" role="11_B2D">
            <ref role="16sUi3" node="3MFPGC51DtY" resolve="Z" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="3MFPGC51CRU" role="16eVyc">
        <property role="TrG5h" value="X" />
      </node>
      <node concept="16euLQ" id="3MFPGC51D85" role="16eVyc">
        <property role="TrG5h" value="Y" />
        <node concept="16syzq" id="3MFPGC51Dp8" role="3ztrMU">
          <ref role="16sUi3" node="3MFPGC51CRU" resolve="X" />
        </node>
      </node>
      <node concept="16euLQ" id="3MFPGC51DtY" role="16eVyc">
        <property role="TrG5h" value="Z" />
        <node concept="16syzq" id="3MFPGC51DHt" role="3ztrMU">
          <ref role="16sUi3" node="3MFPGC51D85" resolve="Y" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MFPGC51C3F" role="jymVt" />
    <node concept="2tJIrI" id="3MFPGC50J3t" role="jymVt" />
    <node concept="3Tm1VV" id="3MFPGC50Izl" role="1B3o_S" />
  </node>
</model>

