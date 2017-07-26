<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:bc54949b-877a-412d-bb6d-5859d76db7ae(jetbrains.mps.lang.typechecking.test.data)" doNotGenerate="true">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="0fda14cc-a416-4c81-869a-2175d8b3325d" name="jetbrains.mps.baseLanguageExt" version="0" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
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
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4nxCIBqyl_d">
    <property role="TrG5h" value="Test" />
    <node concept="2tJIrI" id="1eKXYsjuV4O" role="jymVt" />
    <node concept="3HP615" id="4cKdPpqIRLR" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="A" />
      <node concept="3clFb_" id="4BHjwwGzeH3" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="a" />
        <node concept="3uibUv" id="4BHjwwGzeJR" role="3clF45">
          <ref role="3uigEE" node="4cKdPpqIRLR" resolve="Test.A" />
        </node>
        <node concept="3Tm1VV" id="4BHjwwGzeH6" role="1B3o_S" />
        <node concept="3clFbS" id="4BHjwwGzeH7" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="4cKdPpqIRLS" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7y50OW6ZXx0" role="jymVt" />
    <node concept="3HP615" id="7y50OW6ZXcE" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="B" />
      <node concept="3Tm1VV" id="7y50OW6ZXcF" role="1B3o_S" />
      <node concept="16euLQ" id="7y50OW6ZXOs" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="4BHjwwGxjyG" role="jymVt" />
    <node concept="3clFb_" id="4BHjwwGxjBc" role="jymVt">
      <property role="TrG5h" value="foo" />
      <node concept="37vLTG" id="4BHjwwGza0K" role="3clF46">
        <property role="TrG5h" value="a" />
        <node concept="3uibUv" id="4BHjwwGza18" role="1tU5fm">
          <ref role="3uigEE" node="4cKdPpqIRLR" resolve="Test.A" />
        </node>
      </node>
      <node concept="37vLTG" id="4BHjwwGza1Q" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="3uibUv" id="4BHjwwGza2g" role="1tU5fm">
          <ref role="3uigEE" node="7y50OW6ZXcE" resolve="Test.B" />
          <node concept="3uibUv" id="4BHjwwGza2X" role="11_B2D">
            <ref role="3uigEE" node="4cKdPpqIRLR" resolve="Test.A" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4BHjwwGxjBe" role="3clF45" />
      <node concept="3Tm1VV" id="4BHjwwGxjBf" role="1B3o_S" />
      <node concept="3clFbS" id="4BHjwwGxjBg" role="3clF47">
        <node concept="3cpWs8" id="4BHjwwGxjLy" role="3cqZAp">
          <node concept="3cpWsn" id="4BHjwwGxjLz" role="3cpWs9">
            <property role="TrG5h" value="varA" />
            <node concept="3uibUv" id="4BHjwwGxjL$" role="1tU5fm">
              <ref role="3uigEE" node="4cKdPpqIRLR" resolve="Test.A" />
            </node>
            <node concept="2OqwBi" id="4BHjwwGzeP1" role="33vP2m">
              <node concept="37vLTw" id="4BHjwwGza4o" role="2Oq$k0">
                <ref role="3cqZAo" node="4BHjwwGza0K" resolve="a" />
              </node>
              <node concept="liA8E" id="4BHjwwGzeWc" role="2OqNvi">
                <ref role="37wK5l" node="4BHjwwGzeH3" resolve="a" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4BHjwwGxjNu" role="3cqZAp">
          <node concept="3cpWsn" id="4BHjwwGxjN$" role="3cpWs9">
            <property role="TrG5h" value="varB" />
            <node concept="3uibUv" id="4BHjwwGxjNA" role="1tU5fm">
              <ref role="3uigEE" node="7y50OW6ZXcE" resolve="Test.B" />
              <node concept="3uibUv" id="4BHjwwGxjOG" role="11_B2D">
                <ref role="3uigEE" node="4cKdPpqIRLR" resolve="Test.A" />
              </node>
            </node>
            <node concept="37vLTw" id="4BHjwwGza5s" role="33vP2m">
              <ref role="3cqZAo" node="4BHjwwGza1Q" resolve="b" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4BHjwwGCpKM" role="3cqZAp">
          <node concept="1rXfSq" id="4BHjwwGCpKK" role="3clFbG">
            <ref role="37wK5l" node="4BHjwwGxjBc" resolve="foo" />
            <node concept="37vLTw" id="4BHjwwGCpM2" role="37wK5m">
              <ref role="3cqZAo" node="4BHjwwGxjLz" resolve="varA" />
            </node>
            <node concept="37vLTw" id="4BHjwwGCpPQ" role="37wK5m">
              <ref role="3cqZAo" node="4BHjwwGxjN$" resolve="varB" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4nxCIBqyl_e" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6$7vuu2uamo">
    <property role="TrG5h" value="Foo" />
    <node concept="3clFb_" id="6$7vuu2uaoc" role="jymVt">
      <property role="TrG5h" value="bar" />
      <node concept="37vLTG" id="6$7vuu2uaoM" role="3clF46">
        <property role="TrG5h" value="str" />
        <node concept="3uibUv" id="6$7vuu2uapo" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3cqZAl" id="6$7vuu2uaoe" role="3clF45" />
      <node concept="3Tm1VV" id="6$7vuu2uaof" role="1B3o_S" />
      <node concept="3clFbS" id="6$7vuu2uaog" role="3clF47">
        <node concept="3clFbF" id="6$7vuu2uasa" role="3cqZAp">
          <node concept="1rXfSq" id="6$7vuu2uas9" role="3clFbG">
            <ref role="37wK5l" node="6$7vuu2uaqf" resolve="bazz" />
            <node concept="37vLTw" id="6$7vuu2woUY" role="37wK5m">
              <ref role="3cqZAo" node="6$7vuu2uaoM" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="14$_tTxxems" role="3cqZAp">
          <node concept="3cpWsn" id="14$_tTxxemt" role="3cpWs9">
            <property role="TrG5h" value="o" />
            <node concept="3uibUv" id="14$_tTxxemu" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="37vLTw" id="14$_tTxxenZ" role="33vP2m">
              <ref role="3cqZAo" node="6$7vuu2uaoM" resolve="str" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6$7vuu2uaqf" role="jymVt">
      <property role="TrG5h" value="bazz" />
      <node concept="37vLTG" id="6$7vuu2uaqV" role="3clF46">
        <property role="TrG5h" value="obj" />
        <node concept="3uibUv" id="6$7vuu2uarh" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="6$7vuu2uaqh" role="3clF45" />
      <node concept="3Tm1VV" id="6$7vuu2uaqi" role="1B3o_S" />
      <node concept="3clFbS" id="6$7vuu2uaqj" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="6$7vuu2uamp" role="1B3o_S" />
  </node>
</model>

