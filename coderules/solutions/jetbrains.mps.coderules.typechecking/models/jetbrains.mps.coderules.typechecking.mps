<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:102178da-67ba-49f6-ba73-eb29fa352fe7(jetbrains.mps.coderules.typechecking)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="qox2" ref="r:7ff0776c-aea4-4df2-88a3-2efb6b568dc3(jetbrains.mps.coderules.typechecking.plugin)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
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
    <node concept="312cEg" id="_imFI7QLFD" role="jymVt">
      <property role="TrG5h" value="initToken" />
      <node concept="3Tm6S6" id="_imFI7QLFB" role="1B3o_S" />
      <node concept="3uibUv" id="_imFI7QLFC" role="1tU5fm">
        <ref role="3uigEE" to="qox2:6gnqipLxPUE" resolve="ProviderInitToken" />
      </node>
    </node>
    <node concept="2tJIrI" id="_imFI7QLQG" role="jymVt" />
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
    <node concept="3uibUv" id="2S7QRUbx_vO" role="EKbjA">
      <ref role="3uigEE" to="ze1i:~ModuleRuntime$Activator" resolve="ModuleRuntime.Activator" />
    </node>
    <node concept="3clFb_" id="2r1jTXMuueg" role="jymVt">
      <property role="TrG5h" value="activate" />
      <node concept="3Tm1VV" id="2r1jTXMuuei" role="1B3o_S" />
      <node concept="3cqZAl" id="2r1jTXMuuek" role="3clF45" />
      <node concept="3clFbS" id="2r1jTXMuuel" role="3clF47">
        <node concept="3clFbF" id="_imFI7QLFM" role="3cqZAp">
          <node concept="37vLTI" id="_imFI7QLFN" role="3clFbG">
            <node concept="2OqwBi" id="_imFI7QLFO" role="37vLTJ">
              <node concept="Xjq3P" id="_imFI7QLFP" role="2Oq$k0" />
              <node concept="2OwXpG" id="_imFI7QLFQ" role="2OqNvi">
                <ref role="2Oxat5" node="_imFI7QLFD" resolve="initToken" />
              </node>
            </node>
            <node concept="2ShNRf" id="_imFI7QLFR" role="37vLTx">
              <node concept="1pGfFk" id="_imFI7QLFS" role="2ShVmc">
                <ref role="37wK5l" to="qox2:6gnqipLxXBF" resolve="ProviderInitToken" />
                <node concept="37vLTw" id="_imFI7QLFT" role="37wK5m">
                  <ref role="3cqZAo" node="2r1jTXMuu0N" resolve="myPlatform" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2r1jTXMuuem" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2r1jTXMuumm" role="jymVt" />
    <node concept="3clFb_" id="2r1jTXMuupf" role="jymVt">
      <property role="TrG5h" value="deactivate" />
      <node concept="3Tm1VV" id="2r1jTXMuuph" role="1B3o_S" />
      <node concept="3cqZAl" id="2r1jTXMuupj" role="3clF45" />
      <node concept="3clFbS" id="2r1jTXMuupk" role="3clF47">
        <node concept="3clFbJ" id="_imFI7QOyw" role="3cqZAp">
          <node concept="3clFbS" id="_imFI7QOyQ" role="3clFbx">
            <node concept="3clFbF" id="_imFI7QODz" role="3cqZAp">
              <node concept="2OqwBi" id="_imFI7QPuY" role="3clFbG">
                <node concept="2OqwBi" id="_imFI7QOSP" role="2Oq$k0">
                  <node concept="Xjq3P" id="_imFI7QODy" role="2Oq$k0" />
                  <node concept="2OwXpG" id="_imFI7QPj_" role="2OqNvi">
                    <ref role="2Oxat5" node="_imFI7QLFD" resolve="initToken" />
                  </node>
                </node>
                <node concept="liA8E" id="_imFI7R7jJ" role="2OqNvi">
                  <ref role="37wK5l" to="qox2:6gnqipLxQ9r" resolve="dispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="_imFI7R7yn" role="3cqZAp">
              <node concept="37vLTI" id="_imFI7R8t3" role="3clFbG">
                <node concept="10Nm6u" id="_imFI7R8vW" role="37vLTx" />
                <node concept="2OqwBi" id="_imFI7R7Ma" role="37vLTJ">
                  <node concept="Xjq3P" id="_imFI7R7yl" role="2Oq$k0" />
                  <node concept="2OwXpG" id="_imFI7R85v" role="2OqNvi">
                    <ref role="2Oxat5" node="_imFI7QLFD" resolve="initToken" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="_imFI7QNW4" role="3clFbw">
            <node concept="10Nm6u" id="_imFI7QO44" role="3uHU7w" />
            <node concept="2OqwBi" id="_imFI7QLFU" role="3uHU7B">
              <node concept="Xjq3P" id="_imFI7QLFV" role="2Oq$k0" />
              <node concept="2OwXpG" id="_imFI7QLFW" role="2OqNvi">
                <ref role="2Oxat5" node="_imFI7QLFD" resolve="initToken" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2r1jTXMuupl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" />
      </node>
    </node>
  </node>
</model>

