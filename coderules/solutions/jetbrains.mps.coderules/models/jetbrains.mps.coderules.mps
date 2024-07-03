<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5636e65e-e226-433a-acbc-07ebfe024958(jetbrains.mps.coderules)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.coderules.typechecking.service)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="pxw9" ref="r:e3417884-ba0a-4330-9cea-64f01ace2e9d(jetbrains.mps.lang.coderules.aspect)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="2r1jTXMutU0">
    <property role="TrG5h" value="ModuleActivator" />
    <node concept="2tJIrI" id="2r1jTXMutXT" role="jymVt" />
    <node concept="312cEg" id="2r1jTXMuu0N" role="jymVt">
      <property role="TrG5h" value="myPlatform" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2r1jTXMuu0O" role="1B3o_S" />
      <node concept="3uibUv" id="2r1jTXMuu0Q" role="1tU5fm">
        <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
      </node>
    </node>
    <node concept="2tJIrI" id="2r1jTXMuu8C" role="jymVt" />
    <node concept="3clFbW" id="2r1jTXMutYY" role="jymVt">
      <node concept="37vLTG" id="2OeoySeQews" role="3clF46">
        <property role="TrG5h" value="platform" />
        <node concept="3uibUv" id="2OeoySeQewr" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
      </node>
      <node concept="3cqZAl" id="2r1jTXMutZ0" role="3clF45" />
      <node concept="3Tm1VV" id="2r1jTXMutZ1" role="1B3o_S" />
      <node concept="3clFbS" id="2r1jTXMutZ2" role="3clF47">
        <node concept="3clFbF" id="2r1jTXMuu0R" role="3cqZAp">
          <node concept="37vLTI" id="2r1jTXMuu0T" role="3clFbG">
            <node concept="37vLTw" id="2r1jTXMuu0W" role="37vLTJ">
              <ref role="3cqZAo" node="2r1jTXMuu0N" resolve="myPlatform" />
            </node>
            <node concept="37vLTw" id="2r1jTXMuu0X" role="37vLTx">
              <ref role="3cqZAo" node="2OeoySeQews" resolve="platform" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2r1jTXMuucD" role="jymVt" />
    <node concept="3Tm1VV" id="2r1jTXMutU1" role="1B3o_S" />
    <node concept="3uibUv" id="2r1jTXMutXl" role="EKbjA">
      <ref role="3uigEE" to="ze1i:~ModuleRuntime$Activator" resolve="ModuleRuntime.Activator" />
    </node>
    <node concept="3clFb_" id="2r1jTXMuueg" role="jymVt">
      <property role="TrG5h" value="activate" />
      <node concept="3Tm1VV" id="2r1jTXMuuei" role="1B3o_S" />
      <node concept="3cqZAl" id="2r1jTXMuuek" role="3clF45" />
      <node concept="3clFbS" id="2r1jTXMuuel" role="3clF47">
        <node concept="3clFbF" id="2AvMvaBkZjl" role="3cqZAp">
          <node concept="2YIFZM" id="2AvMvaBkZtD" role="3clFbG">
            <ref role="37wK5l" to="w7la:~EvaluationSessionKt.initBackend()" resolve="initBackend" />
            <ref role="1Pybhc" to="w7la:~EvaluationSessionKt" resolve="EvaluationSessionKt" />
          </node>
        </node>
        <node concept="3clFbF" id="IFW4V2uR84" role="3cqZAp">
          <node concept="2YIFZM" id="IFW4V2uR85" role="3clFbG">
            <ref role="1Pybhc" to="pxw9:IFW4V2uswu" resolve="AspectLookup.AspectLookupCoordinator" />
            <ref role="37wK5l" to="pxw9:IFW4V2uAhM" resolve="init" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2r1jTXMuuem" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2r1jTXMuumm" role="jymVt" />
    <node concept="3clFb_" id="2r1jTXMuupf" role="jymVt">
      <property role="TrG5h" value="deactivate" />
      <node concept="3Tm1VV" id="2r1jTXMuuph" role="1B3o_S" />
      <node concept="3cqZAl" id="2r1jTXMuupj" role="3clF45" />
      <node concept="3clFbS" id="2r1jTXMuupk" role="3clF47">
        <node concept="3clFbF" id="2AvMvaBkZBG" role="3cqZAp">
          <node concept="2YIFZM" id="2AvMvaBkZQ3" role="3clFbG">
            <ref role="37wK5l" to="w7la:~EvaluationSessionKt.deinitBackend()" resolve="deinitBackend" />
            <ref role="1Pybhc" to="w7la:~EvaluationSessionKt" resolve="EvaluationSessionKt" />
          </node>
        </node>
        <node concept="3clFbF" id="IFW4V2uRwY" role="3cqZAp">
          <node concept="2YIFZM" id="IFW4V2uRy4" role="3clFbG">
            <ref role="37wK5l" to="pxw9:IFW4V2uCEF" resolve="dispose" />
            <ref role="1Pybhc" to="pxw9:IFW4V2uswu" resolve="AspectLookup.AspectLookupCoordinator" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2r1jTXMuupl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

