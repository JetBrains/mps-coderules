<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b1bec7fa-733c-4182-bbd4-b266e3d7e6db(typechecking.samples.baseLanguage.bounds.bad)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="0fda14cc-a416-4c81-869a-2175d8b3325d" name="jetbrains.mps.baseLanguageExt" version="0" />
    <use id="0b80a2e8-f9f1-47b3-823f-56eb115bca42" name="jetbrains.mps.typechecking.annotation" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="1181808852946" name="isFinal" index="DiZV1" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903862077" name="jetbrains.mps.baseLanguage.structure.LowerBoundType" flags="in" index="3qUtgH">
        <child id="1171903869531" name="bound" index="3qUvdb" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4ekooLalg08">
    <property role="TrG5h" value="Sample_bad2" />
    <node concept="312cEu" id="4ekooLalg09" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="A" />
      <node concept="3clFb_" id="4ekooLalg0a" role="jymVt">
        <property role="TrG5h" value="a" />
        <node concept="3uibUv" id="4ekooLalg0b" role="3clF45">
          <ref role="3uigEE" node="4ekooLalg09" resolve="Sample_bad2.A" />
        </node>
        <node concept="3Tm1VV" id="4ekooLalg0c" role="1B3o_S" />
        <node concept="3clFbS" id="4ekooLalg0d" role="3clF47">
          <node concept="3clFbF" id="4ekooLalg0e" role="3cqZAp">
            <node concept="Xjq3P" id="4ekooLalg0f" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4ekooLalg0g" role="1B3o_S" />
    </node>
    <node concept="312cEu" id="4ekooLalg0h" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="B" />
      <node concept="3Tm6S6" id="4ekooLalg0i" role="1B3o_S" />
      <node concept="3uibUv" id="4ekooLalg0j" role="1zkMxy">
        <ref role="3uigEE" node="4ekooLalg09" resolve="Sample_bad2.A" />
      </node>
    </node>
    <node concept="2tJIrI" id="Co5va1OPDw" role="jymVt" />
    <node concept="312cEu" id="4ekooLalg0k" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="J" />
      <node concept="3clFb_" id="3R6X$QVQVNc" role="jymVt">
        <property role="TrG5h" value="get" />
        <node concept="3clFbS" id="3R6X$QVQVNf" role="3clF47">
          <node concept="3clFbF" id="3R6X$QVQW6z" role="3cqZAp">
            <node concept="10Nm6u" id="3R6X$QVQW6y" role="3clFbG" />
          </node>
        </node>
        <node concept="16syzq" id="3R6X$QVQVFG" role="3clF45">
          <ref role="16sUi3" node="4ekooLalg0v" resolve="T1" />
        </node>
      </node>
      <node concept="3clFb_" id="4ekooLalg0n" role="jymVt">
        <property role="TrG5h" value="h" />
        <node concept="3uibUv" id="4ekooLalg0o" role="3clF45">
          <ref role="3uigEE" node="4ekooLalg0_" resolve="Sample_bad2.H" />
          <node concept="3uibUv" id="4ekooLalg0p" role="11_B2D">
            <ref role="3uigEE" node="4ekooLalg0k" resolve="Sample_bad2.J" />
            <node concept="16syzq" id="4ekooLalg0q" role="11_B2D">
              <ref role="16sUi3" node="4ekooLalg0v" resolve="T1" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="4ekooLalg0r" role="3clF47">
          <node concept="3clFbF" id="4ekooLalg0s" role="3cqZAp">
            <node concept="10Nm6u" id="4ekooLalg0t" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4ekooLalg0u" role="1B3o_S" />
      <node concept="16euLQ" id="4ekooLalg0v" role="16eVyc">
        <property role="TrG5h" value="T1" />
        <node concept="3uibUv" id="4ekooLalg0w" role="3ztrMU">
          <ref role="3uigEE" node="4ekooLalg09" resolve="Sample_bad2.A" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="4ekooLalg0x" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="K" />
      <node concept="3Tm6S6" id="4ekooLalg0y" role="1B3o_S" />
      <node concept="3uibUv" id="4ekooLalg0z" role="1zkMxy">
        <ref role="3uigEE" node="4ekooLalg0k" resolve="Sample_bad2.J" />
        <node concept="3uibUv" id="1TH_SRmKc4x" role="11_B2D">
          <ref role="3uigEE" node="4ekooLalg0h" resolve="Sample_bad2.B" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="4ekooLalg0_" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="H" />
      <node concept="3Tm6S6" id="4ekooLalg0A" role="1B3o_S" />
      <node concept="16euLQ" id="4ekooLalg0B" role="16eVyc">
        <property role="TrG5h" value="T2" />
      </node>
    </node>
    <node concept="312cEu" id="4ekooLalg0C" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="G" />
      <node concept="3clFb_" id="4ekooLalg0O" role="jymVt">
        <property role="TrG5h" value="g2" />
        <node concept="37vLTG" id="4ekooLalg0P" role="3clF46">
          <property role="TrG5h" value="h" />
          <node concept="3uibUv" id="4ekooLalg0Q" role="1tU5fm">
            <ref role="3uigEE" node="4ekooLalg0_" resolve="Sample_bad2.H" />
            <node concept="16syzq" id="4ekooLalg0R" role="11_B2D">
              <ref role="16sUi3" node="4ekooLalg0Y" resolve="S" />
            </node>
          </node>
        </node>
        <node concept="16syzq" id="4ekooLalg0S" role="3clF45">
          <ref role="16sUi3" node="4ekooLalg0W" resolve="T3" />
        </node>
        <node concept="3clFbS" id="4ekooLalg0T" role="3clF47">
          <node concept="3clFbF" id="4ekooLalg0U" role="3cqZAp">
            <node concept="10Nm6u" id="4ekooLalg0V" role="3clFbG" />
          </node>
        </node>
        <node concept="16euLQ" id="4ekooLalg0W" role="16eVyc">
          <property role="TrG5h" value="T3" />
        </node>
        <node concept="16euLQ" id="4ekooLalg0Y" role="16eVyc">
          <property role="TrG5h" value="S" />
          <node concept="3uibUv" id="4ekooLalg0Z" role="3ztrMU">
            <ref role="3uigEE" node="4ekooLalg0k" resolve="Sample_bad2.J" />
            <node concept="3qUtgH" id="4ekooLalg10" role="11_B2D">
              <node concept="16syzq" id="4ekooLalg11" role="3qUvdb">
                <ref role="16sUi3" node="4ekooLalg0W" resolve="T3" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4ekooLalg12" role="1B3o_S" />
    </node>
    <node concept="312cEu" id="4ekooLalg13" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="F" />
      <node concept="3Tm6S6" id="4ekooLalg14" role="1B3o_S" />
      <node concept="3clFb_" id="4ekooLalg15" role="jymVt">
        <property role="TrG5h" value="f" />
        <property role="DiZV1" value="false" />
        <node concept="3cqZAl" id="4ekooLalg16" role="3clF45" />
        <node concept="3clFbS" id="4ekooLalg17" role="3clF47">
          <node concept="3cpWs8" id="4ekooLalg1o" role="3cqZAp">
            <node concept="3cpWsn" id="4ekooLalg1p" role="3cpWs9">
              <property role="TrG5h" value="g" />
              <node concept="3uibUv" id="4ekooLalg1q" role="1tU5fm">
                <ref role="3uigEE" node="4ekooLalg0C" resolve="Sample_bad2.G" />
              </node>
              <node concept="2ShNRf" id="4ekooLalg1r" role="33vP2m">
                <node concept="HV5vD" id="4ekooLalg1s" role="2ShVmc">
                  <ref role="HV5vE" node="4ekooLalg0C" resolve="Sample_bad2.G" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="Co5va1RERG" role="3cqZAp" />
          <node concept="3cpWs8" id="Co5va1REb3" role="3cqZAp">
            <node concept="3cpWsn" id="Co5va1REb4" role="3cpWs9">
              <property role="TrG5h" value="a3" />
              <node concept="3uibUv" id="Co5va1REb5" role="1tU5fm">
                <ref role="3uigEE" node="4ekooLalg09" resolve="Sample_bad2.A" />
              </node>
              <node concept="2OqwBi" id="Co5va1REb6" role="33vP2m">
                <node concept="37vLTw" id="Co5va1REb7" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ekooLalg1p" resolve="g" />
                </node>
                <node concept="liA8E" id="Co5va1REb8" role="2OqNvi">
                  <ref role="37wK5l" node="4ekooLalg0O" resolve="g2" />
                  <node concept="2OqwBi" id="Co5va1REb9" role="37wK5m">
                    <node concept="37vLTw" id="Co5va1REba" role="2Oq$k0">
                      <ref role="3cqZAo" node="4ekooLalg2n" resolve="s" />
                    </node>
                    <node concept="liA8E" id="Co5va1REbb" role="2OqNvi">
                      <ref role="37wK5l" node="4ekooLalg0n" resolve="h" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3R6X$QVQXB$" role="3cqZAp" />
          <node concept="3cpWs8" id="3R6X$QVQUcS" role="3cqZAp">
            <node concept="3cpWsn" id="3R6X$QVQUcT" role="3cpWs9">
              <property role="TrG5h" value="a4" />
              <node concept="3uibUv" id="3R6X$QVQUcU" role="1tU5fm">
                <ref role="3uigEE" node="4ekooLalg09" resolve="Sample_bad2.A" />
              </node>
              <node concept="2OqwBi" id="3R6X$QVSTpu" role="33vP2m">
                <node concept="liA8E" id="3R6X$QVSTvc" role="2OqNvi">
                  <ref role="37wK5l" node="4ekooLalg0a" resolve="a" />
                </node>
                <node concept="2OqwBi" id="3R6X$QVSTR3" role="2Oq$k0">
                  <node concept="37vLTw" id="3R6X$QVSTR4" role="2Oq$k0">
                    <ref role="3cqZAo" node="4ekooLalg2n" resolve="s" />
                  </node>
                  <node concept="liA8E" id="3R6X$QVSTR5" role="2OqNvi">
                    <ref role="37wK5l" node="3R6X$QVQVNc" resolve="get" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="4ekooLalg2g" role="1B3o_S" />
        <node concept="16euLQ" id="4ekooLalg2h" role="16eVyc">
          <property role="TrG5h" value="T4" />
        </node>
        <node concept="16euLQ" id="4ekooLalg2j" role="16eVyc">
          <property role="TrG5h" value="S" />
          <node concept="3uibUv" id="4ekooLalg2k" role="3ztrMU">
            <ref role="3uigEE" node="4ekooLalg0k" resolve="Sample_bad2.J" />
            <node concept="3qUtgH" id="4ekooLalg2l" role="11_B2D">
              <node concept="16syzq" id="4ekooLalg2m" role="3qUvdb">
                <ref role="16sUi3" node="4ekooLalg2h" resolve="T4" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4ekooLalg2n" role="3clF46">
          <property role="TrG5h" value="s" />
          <node concept="16syzq" id="4ekooLalg2o" role="1tU5fm">
            <ref role="16sUi3" node="4ekooLalg2j" resolve="S" />
          </node>
        </node>
        <node concept="37vLTG" id="4ekooLalg2p" role="3clF46">
          <property role="TrG5h" value="h" />
          <node concept="3uibUv" id="4ekooLalg2q" role="1tU5fm">
            <ref role="3uigEE" node="4ekooLalg0_" resolve="Sample_bad2.H" />
            <node concept="3uibUv" id="4ekooLalg2r" role="11_B2D">
              <ref role="3uigEE" node="4ekooLalg0x" resolve="Sample_bad2.K" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4ekooLalg2s" role="jymVt" />
  </node>
</model>

