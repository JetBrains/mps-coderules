<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5636e65e-e226-433a-acbc-07ebfe024958(jetbrains.mps.coderules)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.coderules.typechecking.service)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="pxw9" ref="r:e3417884-ba0a-4330-9cea-64f01ace2e9d(jetbrains.mps.lang.coderules.aspect)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
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
      <property role="TrG5h" value="mpsPlatform" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2r1jTXMuu0O" role="1B3o_S" />
      <node concept="3uibUv" id="2r1jTXMuu0Q" role="1tU5fm">
        <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
      </node>
    </node>
    <node concept="312cEg" id="3GJd70pyMNC" role="jymVt">
      <property role="TrG5h" value="deployListener" />
      <node concept="3Tm6S6" id="3GJd70pyMNA" role="1B3o_S" />
      <node concept="3uibUv" id="3GJd70pyMNB" role="1tU5fm">
        <ref role="3uigEE" to="3qmy:~DeployListener" resolve="DeployListener" />
      </node>
    </node>
    <node concept="2tJIrI" id="3GJd70pyN7Z" role="jymVt" />
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
        <node concept="3clFbF" id="3GJd70pyMNZ" role="3cqZAp">
          <node concept="37vLTI" id="3GJd70pyMO0" role="3clFbG">
            <node concept="2OqwBi" id="3GJd70pyMO1" role="37vLTJ">
              <node concept="Xjq3P" id="3GJd70pyMO2" role="2Oq$k0" />
              <node concept="2OwXpG" id="3GJd70pyMO3" role="2OqNvi">
                <ref role="2Oxat5" node="3GJd70pyMNC" resolve="deployListener" />
              </node>
            </node>
            <node concept="2ShNRf" id="3GJd70pyMO4" role="37vLTx">
              <node concept="YeOm9" id="3GJd70pyMO5" role="2ShVmc">
                <node concept="1Y3b0j" id="3GJd70pyMO6" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="1Y3XeK" to="3qmy:~DeployListener" resolve="DeployListener" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="3GJd70pyMO7" role="1B3o_S" />
                  <node concept="3clFb_" id="3GJd70pyMO8" role="jymVt">
                    <property role="TrG5h" value="onUnloaded" />
                    <node concept="3Tm1VV" id="3GJd70pyMO9" role="1B3o_S" />
                    <node concept="3cqZAl" id="3GJd70pyMOa" role="3clF45" />
                    <node concept="37vLTG" id="3GJd70pyMOb" role="3clF46">
                      <property role="TrG5h" value="callback" />
                      <node concept="3uibUv" id="3GJd70pyMOc" role="1tU5fm">
                        <ref role="3uigEE" to="3qmy:~DeployListener$ResourceTrackerCallback" resolve="DeployListener.ResourceTrackerCallback" />
                      </node>
                      <node concept="2AHcQZ" id="3GJd70pyMOd" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="3GJd70pyMOe" role="3clF46">
                      <property role="TrG5h" value="monitor" />
                      <node concept="3uibUv" id="3GJd70pyMOf" role="1tU5fm">
                        <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
                      </node>
                      <node concept="2AHcQZ" id="3GJd70pyMOg" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="3GJd70pyMOh" role="3clF47">
                      <node concept="3clFbF" id="3GJd70pyMOi" role="3cqZAp">
                        <node concept="2YIFZM" id="5kGKGCrG2bb" role="3clFbG">
                          <ref role="37wK5l" to="pxw9:IFW4V2uCEF" resolve="clearAll" />
                          <ref role="1Pybhc" to="pxw9:IFW4V2uswu" resolve="AspectLookup.AspectLookupCoordinator" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3GJd70pyMOk" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3GJd70pxmJT" role="3cqZAp">
          <node concept="3cpWsn" id="3GJd70pxmJU" role="3cpWs9">
            <property role="TrG5h" value="classLoaderManager" />
            <node concept="3uibUv" id="3GJd70pxmDk" role="1tU5fm">
              <ref role="3uigEE" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
            </node>
            <node concept="2OqwBi" id="3GJd70pxmJV" role="33vP2m">
              <node concept="37vLTw" id="3GJd70pxmJW" role="2Oq$k0">
                <ref role="3cqZAo" node="2r1jTXMuu0N" resolve="mpsPlatform" />
              </node>
              <node concept="liA8E" id="3GJd70pxmJX" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="3GJd70pxmJY" role="37wK5m">
                  <ref role="3VsUkX" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3GJd70pxnb3" role="3cqZAp">
          <node concept="3clFbS" id="3GJd70pxnbg" role="3clFbx">
            <node concept="3clFbF" id="1PdMG9nwWGG" role="3cqZAp">
              <node concept="2OqwBi" id="1PdMG9nwY8z" role="3clFbG">
                <node concept="37vLTw" id="3GJd70pxrPz" role="2Oq$k0">
                  <ref role="3cqZAo" node="3GJd70pxmJU" resolve="classLoaderManager" />
                </node>
                <node concept="liA8E" id="1PdMG9nwYN0" role="2OqNvi">
                  <ref role="37wK5l" to="3qmy:~ClassLoaderManager.addListener(jetbrains.mps.classloading.DeployListener)" resolve="addListener" />
                  <node concept="37vLTw" id="1PdMG9nwZl_" role="37wK5m">
                    <ref role="3cqZAo" node="3GJd70pyMNC" resolve="deployListener" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3GJd70pxn_s" role="3clFbw">
            <node concept="10Nm6u" id="3GJd70pxo0H" role="3uHU7w" />
            <node concept="37vLTw" id="3GJd70pxmJZ" role="3uHU7B">
              <ref role="3cqZAo" node="3GJd70pxmJU" resolve="classLoaderManager" />
            </node>
          </node>
          <node concept="9aQIb" id="3GJd70pxnbk" role="9aQIa">
            <node concept="3clFbS" id="3GJd70pxnbl" role="9aQI4">
              <node concept="RRSsy" id="3GJd70pxorF" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="3cpWs3" id="3GJd70pxqQN" role="RRSoy">
                  <node concept="Xl_RD" id="3GJd70pxorH" role="3uHU7B">
                    <property role="Xl_RC" value="can't find component: " />
                  </node>
                  <node concept="3VsKOn" id="3GJd70pxqX$" role="3uHU7w">
                    <ref role="3VsUkX" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
                  </node>
                </node>
              </node>
            </node>
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
          <node concept="2YIFZM" id="5kGKGCrGbSZ" role="3clFbG">
            <ref role="37wK5l" to="pxw9:IFW4V2uCEF" resolve="clearAll" />
            <ref role="1Pybhc" to="pxw9:IFW4V2uswu" resolve="AspectLookup.AspectLookupCoordinator" />
          </node>
        </node>
        <node concept="3cpWs8" id="3GJd70pyOrM" role="3cqZAp">
          <node concept="3cpWsn" id="3GJd70pyOrN" role="3cpWs9">
            <property role="TrG5h" value="classLoaderManager" />
            <node concept="3uibUv" id="3GJd70pyOrO" role="1tU5fm">
              <ref role="3uigEE" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
            </node>
            <node concept="2OqwBi" id="3GJd70pyOrP" role="33vP2m">
              <node concept="37vLTw" id="3GJd70pyOrQ" role="2Oq$k0">
                <ref role="3cqZAo" node="2r1jTXMuu0N" resolve="mpsPlatform" />
              </node>
              <node concept="liA8E" id="3GJd70pyOrR" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="3GJd70pyOrS" role="37wK5m">
                  <ref role="3VsUkX" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3GJd70pyOrT" role="3cqZAp">
          <node concept="3clFbS" id="3GJd70pyOrU" role="3clFbx">
            <node concept="3clFbF" id="3GJd70pyOrV" role="3cqZAp">
              <node concept="2OqwBi" id="3GJd70pyOrW" role="3clFbG">
                <node concept="37vLTw" id="3GJd70pyOrX" role="2Oq$k0">
                  <ref role="3cqZAo" node="3GJd70pyOrN" resolve="classLoaderManager" />
                </node>
                <node concept="liA8E" id="3GJd70pyOrY" role="2OqNvi">
                  <ref role="37wK5l" to="3qmy:~ClassLoaderManager.removeListener(jetbrains.mps.classloading.DeployListener)" resolve="removeListener" />
                  <node concept="37vLTw" id="3GJd70pyOrZ" role="37wK5m">
                    <ref role="3cqZAo" node="3GJd70pyMNC" resolve="deployListener" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3GJd70pyOs0" role="3clFbw">
            <node concept="10Nm6u" id="3GJd70pyOs1" role="3uHU7w" />
            <node concept="37vLTw" id="3GJd70pyOs2" role="3uHU7B">
              <ref role="3cqZAo" node="3GJd70pyOrN" resolve="classLoaderManager" />
            </node>
          </node>
          <node concept="9aQIb" id="3GJd70pyOs3" role="9aQIa">
            <node concept="3clFbS" id="3GJd70pyOs4" role="9aQI4">
              <node concept="RRSsy" id="3GJd70pyOs5" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="3cpWs3" id="3GJd70pyOs6" role="RRSoy">
                  <node concept="Xl_RD" id="3GJd70pyOs7" role="3uHU7B">
                    <property role="Xl_RC" value="can't find component: " />
                  </node>
                  <node concept="3VsKOn" id="3GJd70pyOs8" role="3uHU7w">
                    <ref role="3VsUkX" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3GJd70pyOfY" role="3cqZAp" />
      </node>
      <node concept="2AHcQZ" id="2r1jTXMuupl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

