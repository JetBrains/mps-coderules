<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b1bec7fa-733c-4182-bbd4-b266e3d7e6db(jetbrains.mps.typechecking.sample.bounds.bad)" doNotGenerate="true">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="0fda14cc-a416-4c81-869a-2175d8b3325d" name="jetbrains.mps.baseLanguageExt" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
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
  </registry>
  <node concept="312cEu" id="5s497Vrh6EY">
    <property role="TrG5h" value="Sample_bad1" />
    <node concept="312cEu" id="5s497Vrh7RG" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="A" />
      <node concept="3clFb_" id="5s497Vrh7RH" role="jymVt">
        <property role="TrG5h" value="a" />
        <node concept="3uibUv" id="5PpdwMfGpgr" role="3clF45">
          <ref role="3uigEE" node="5s497Vrh7RG" resolve="Sample_bad1.A" />
        </node>
        <node concept="3Tm1VV" id="5s497Vrh7RJ" role="1B3o_S" />
        <node concept="3clFbS" id="5s497Vrh7RK" role="3clF47">
          <node concept="3clFbF" id="5PpdwMfGpxX" role="3cqZAp">
            <node concept="Xjq3P" id="5PpdwMfGpxW" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1UWNDKzpz8N" role="1B3o_S" />
    </node>
    <node concept="312cEu" id="5s497Vrh7RM" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="B" />
      <node concept="3Tm6S6" id="1UWNDKzpzt7" role="1B3o_S" />
      <node concept="3uibUv" id="5s497Vrh7RO" role="1zkMxy">
        <ref role="3uigEE" node="5s497Vrh7RG" resolve="Sample_bad1.A" />
      </node>
    </node>
    <node concept="312cEu" id="5s497Vrh7RP" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="J" />
      <node concept="312cEg" id="5s497Vrh7RQ" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="t" />
        <property role="3TUv4t" value="false" />
        <node concept="16syzq" id="5s497Vrh7RR" role="1tU5fm">
          <ref role="16sUi3" node="5s497Vrh7S1" resolve="T" />
        </node>
      </node>
      <node concept="3clFb_" id="5s497Vrh7RS" role="jymVt">
        <property role="TrG5h" value="h" />
        <node concept="3uibUv" id="5s497Vrh7RT" role="3clF45">
          <ref role="3uigEE" node="5s497Vrh7S7" resolve="Sample_bad1.H" />
          <node concept="3uibUv" id="5s497Vrh7RU" role="11_B2D">
            <ref role="3uigEE" node="5s497Vrh7RP" resolve="Sample_bad1.J" />
            <node concept="16syzq" id="5s497Vrh7RV" role="11_B2D">
              <ref role="16sUi3" node="5s497Vrh7S1" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5s497Vrh7RX" role="3clF47">
          <node concept="3clFbF" id="5s497Vrh7RY" role="3cqZAp">
            <node concept="10Nm6u" id="5s497Vrh7RZ" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1UWNDKzpzBJ" role="1B3o_S" />
      <node concept="16euLQ" id="5s497Vrh7S1" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="5s497Vrh7S2" role="3ztrMU">
          <ref role="3uigEE" node="5s497Vrh7RG" resolve="Sample_bad1.A" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="5s497Vrh7S3" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="K" />
      <node concept="3Tm6S6" id="1UWNDKzpzVH" role="1B3o_S" />
      <node concept="3uibUv" id="5s497Vrh7S5" role="1zkMxy">
        <ref role="3uigEE" node="5s497Vrh7RP" resolve="Sample_bad1.J" />
        <node concept="3uibUv" id="5s497Vrh7S6" role="11_B2D">
          <ref role="3uigEE" node="5s497Vrh7RM" resolve="Sample_bad1.B" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="5s497Vrh7S7" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="H" />
      <node concept="3Tm6S6" id="1UWNDKzp$1q" role="1B3o_S" />
      <node concept="16euLQ" id="5s497Vrh7S9" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="312cEu" id="5s497Vrh7Sa" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="G" />
      <node concept="3clFb_" id="5s497Vrh7Sb" role="jymVt">
        <property role="TrG5h" value="g1" />
        <node concept="37vLTG" id="5s497Vrh7Sc" role="3clF46">
          <property role="TrG5h" value="h" />
          <node concept="3uibUv" id="5s497Vrh7Sd" role="1tU5fm">
            <ref role="3uigEE" node="5s497Vrh7S7" resolve="Sample_bad1.H" />
            <node concept="3qUE_q" id="5s497Vrh7Se" role="11_B2D">
              <node concept="3uibUv" id="5s497Vrh7Sf" role="3qUE_r">
                <ref role="3uigEE" node="5s497Vrh7RP" resolve="Sample_bad1.J" />
                <node concept="16syzq" id="5s497Vrh7Sg" role="11_B2D">
                  <ref role="16sUi3" node="5s497Vrh7Sm" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16syzq" id="5s497Vrh7Sh" role="3clF45">
          <ref role="16sUi3" node="5s497Vrh7Sm" resolve="T" />
        </node>
        <node concept="3clFbS" id="5s497Vrh7Sj" role="3clF47">
          <node concept="3clFbF" id="5s497Vrh7Sk" role="3cqZAp">
            <node concept="10Nm6u" id="5s497Vrh7Sl" role="3clFbG" />
          </node>
        </node>
        <node concept="16euLQ" id="5s497Vrh7Sm" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="3clFb_" id="5PpdwMfGszG" role="jymVt">
        <property role="TrG5h" value="g2" />
        <node concept="37vLTG" id="5PpdwMfGuQ4" role="3clF46">
          <property role="TrG5h" value="h" />
          <node concept="3uibUv" id="5PpdwMfGv9z" role="1tU5fm">
            <ref role="3uigEE" node="5s497Vrh7S7" resolve="Sample_bad1.H" />
            <node concept="16syzq" id="5PpdwMfGvdX" role="11_B2D">
              <ref role="16sUi3" node="5PpdwMfGub8" resolve="S" />
            </node>
          </node>
        </node>
        <node concept="16syzq" id="5PpdwMfGuBt" role="3clF45">
          <ref role="16sUi3" node="5PpdwMfGtRn" resolve="T" />
        </node>
        <node concept="3clFbS" id="5PpdwMfGszK" role="3clF47">
          <node concept="3clFbF" id="5PpdwMfGtzE" role="3cqZAp">
            <node concept="10Nm6u" id="5PpdwMfGtzD" role="3clFbG" />
          </node>
        </node>
        <node concept="16euLQ" id="5PpdwMfGtRn" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="5PpdwMfGuaf" role="3ztrMU">
            <ref role="3uigEE" node="5s497Vrh7RM" resolve="Sample_bad1.B" />
          </node>
        </node>
        <node concept="16euLQ" id="5PpdwMfGub8" role="16eVyc">
          <property role="TrG5h" value="S" />
          <node concept="3uibUv" id="5PpdwMfGuuS" role="3ztrMU">
            <ref role="3uigEE" node="5s497Vrh7RP" resolve="Sample_bad1.J" />
            <node concept="3qUtgH" id="5PpdwMfGuy4" role="11_B2D">
              <node concept="16syzq" id="5PpdwMfGuz8" role="3qUvdb">
                <ref role="16sUi3" node="5PpdwMfGtRn" resolve="T" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1UWNDKzp$lE" role="1B3o_S" />
    </node>
    <node concept="312cEu" id="5s497Vrh7Sp" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="F" />
      <node concept="3Tm6S6" id="1UWNDKzp$D9" role="1B3o_S" />
      <node concept="3clFb_" id="5s497Vrh7Sr" role="jymVt">
        <property role="TrG5h" value="f" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3cqZAl" id="5s497Vrh7Ss" role="3clF45" />
        <node concept="3clFbS" id="5s497Vrh7St" role="3clF47">
          <node concept="3cpWs8" id="5PpdwMfGyzb" role="3cqZAp">
            <node concept="3cpWsn" id="5PpdwMfGyzc" role="3cpWs9">
              <property role="TrG5h" value="a1" />
              <node concept="3uibUv" id="5PpdwMfGyz6" role="1tU5fm">
                <ref role="3uigEE" node="5s497Vrh7RG" resolve="Sample_bad1.A" />
              </node>
              <node concept="2OqwBi" id="5PpdwMfGyzd" role="33vP2m">
                <node concept="2OqwBi" id="5PpdwMfGyze" role="2Oq$k0">
                  <node concept="37vLTw" id="5PpdwMfGyzf" role="2Oq$k0">
                    <ref role="3cqZAo" node="5s497Vrh7Tc" resolve="s" />
                  </node>
                  <node concept="2OwXpG" id="5PpdwMfGyzg" role="2OqNvi">
                    <ref role="2Oxat5" node="5s497Vrh7RQ" resolve="t" />
                  </node>
                </node>
                <node concept="liA8E" id="5PpdwMfGyzh" role="2OqNvi">
                  <ref role="37wK5l" node="5s497Vrh7RH" resolve="a" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5s497Vrh7S$" role="3cqZAp" />
          <node concept="3SKdUt" id="5s497Vrh7S_" role="3cqZAp">
            <node concept="3SKdUq" id="5s497Vrh7SA" role="3SKWNk">
              <property role="3SKdUp" value="real type of s.t should be" />
            </node>
          </node>
          <node concept="3SKdUt" id="5s497Vrh7SB" role="3cqZAp">
            <node concept="3SKdUq" id="5s497Vrh7SC" role="3SKWNk">
              <property role="3SKdUp" value="s:     (bottom | J&lt;(B|A)&gt;)" />
            </node>
          </node>
          <node concept="3SKdUt" id="5s497Vrh7SD" role="3cqZAp">
            <node concept="3SKdUq" id="5s497Vrh7SE" role="3SKWNk">
              <property role="3SKdUp" value="s.t:   (B | A)" />
            </node>
          </node>
          <node concept="3clFbH" id="5s497Vrh7SF" role="3cqZAp" />
          <node concept="3cpWs8" id="5s497Vrh7SG" role="3cqZAp">
            <node concept="3cpWsn" id="5s497Vrh7SH" role="3cpWs9">
              <property role="TrG5h" value="g" />
              <node concept="3uibUv" id="5s497Vrh7SI" role="1tU5fm">
                <ref role="3uigEE" node="5s497Vrh7Sa" resolve="Sample_bad1.G" />
              </node>
              <node concept="2ShNRf" id="5s497Vrh7SJ" role="33vP2m">
                <node concept="HV5vD" id="5s497Vrh7SK" role="2ShVmc">
                  <ref role="HV5vE" node="5s497Vrh7Sa" resolve="Sample_bad1.G" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5s497Vrh7SL" role="3cqZAp" />
          <node concept="3clFbF" id="1zN1RIlhwhu" role="3cqZAp">
            <node concept="2OqwBi" id="1zN1RIlhwhw" role="3clFbG">
              <node concept="37vLTw" id="1zN1RIlhwhx" role="2Oq$k0">
                <ref role="3cqZAo" node="5s497Vrh7SH" resolve="g" />
              </node>
              <node concept="liA8E" id="1zN1RIlhwhy" role="2OqNvi">
                <ref role="37wK5l" node="5s497Vrh7Sb" resolve="g1" />
                <node concept="37vLTw" id="1zN1RIlhwhz" role="37wK5m">
                  <ref role="3cqZAo" node="5s497Vrh7Te" resolve="h" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1zN1RIlhwl_" role="3cqZAp" />
          <node concept="3cpWs8" id="5PpdwMfGzNT" role="3cqZAp">
            <node concept="3cpWsn" id="5PpdwMfGzNU" role="3cpWs9">
              <property role="TrG5h" value="b1" />
              <node concept="3uibUv" id="5PpdwMfGzNR" role="1tU5fm">
                <ref role="3uigEE" node="5s497Vrh7RM" resolve="Sample_bad1.B" />
              </node>
              <node concept="2OqwBi" id="5PpdwMfGzNV" role="33vP2m">
                <node concept="37vLTw" id="5PpdwMfGzNW" role="2Oq$k0">
                  <ref role="3cqZAo" node="5s497Vrh7SH" resolve="g" />
                </node>
                <node concept="liA8E" id="5PpdwMfGzNX" role="2OqNvi">
                  <ref role="37wK5l" node="5s497Vrh7Sb" resolve="g1" />
                  <node concept="37vLTw" id="5PpdwMfGzNY" role="37wK5m">
                    <ref role="3cqZAo" node="5s497Vrh7Te" resolve="h" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5s497Vrh7SU" role="3cqZAp" />
          <node concept="3cpWs8" id="5PpdwMfG_2K" role="3cqZAp">
            <node concept="3cpWsn" id="5PpdwMfG_2L" role="3cpWs9">
              <property role="TrG5h" value="a2" />
              <node concept="3uibUv" id="5PpdwMfG_oq" role="1tU5fm">
                <ref role="3uigEE" node="5s497Vrh7RG" resolve="Sample_bad1.A" />
              </node>
              <node concept="2OqwBi" id="5PpdwMfG_2N" role="33vP2m">
                <node concept="37vLTw" id="5PpdwMfG_2O" role="2Oq$k0">
                  <ref role="3cqZAo" node="5s497Vrh7SH" resolve="g" />
                </node>
                <node concept="liA8E" id="5PpdwMfG_2P" role="2OqNvi">
                  <ref role="37wK5l" node="5s497Vrh7Sb" resolve="g1" />
                  <node concept="2OqwBi" id="5PpdwMfG_2Q" role="37wK5m">
                    <node concept="37vLTw" id="5PpdwMfG_2R" role="2Oq$k0">
                      <ref role="3cqZAo" node="5s497Vrh7Tc" resolve="s" />
                    </node>
                    <node concept="liA8E" id="5PpdwMfG_2S" role="2OqNvi">
                      <ref role="37wK5l" node="5s497Vrh7RS" resolve="h" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1zN1RIlhwqh" role="3cqZAp" />
          <node concept="3clFbF" id="1zN1RIlhwp1" role="3cqZAp">
            <node concept="2OqwBi" id="1zN1RIlhwp3" role="3clFbG">
              <node concept="37vLTw" id="1zN1RIlhwp4" role="2Oq$k0">
                <ref role="3cqZAo" node="5s497Vrh7SH" resolve="g" />
              </node>
              <node concept="liA8E" id="1zN1RIlhwp5" role="2OqNvi">
                <ref role="37wK5l" node="5s497Vrh7Sb" resolve="g1" />
                <node concept="2OqwBi" id="1zN1RIlhwp6" role="37wK5m">
                  <node concept="37vLTw" id="1zN1RIlhwp7" role="2Oq$k0">
                    <ref role="3cqZAo" node="5s497Vrh7Tc" resolve="s" />
                  </node>
                  <node concept="liA8E" id="1zN1RIlhwp8" role="2OqNvi">
                    <ref role="37wK5l" node="5s497Vrh7RS" resolve="h" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5s497Vrh7T2" role="3cqZAp" />
          <node concept="3cpWs8" id="5PpdwMfGI1R" role="3cqZAp">
            <node concept="3cpWsn" id="5PpdwMfGI1S" role="3cpWs9">
              <property role="TrG5h" value="b2" />
              <node concept="3uibUv" id="5PpdwMfGI1T" role="1tU5fm">
                <ref role="3uigEE" node="5s497Vrh7RM" resolve="Sample_bad1.B" />
              </node>
              <node concept="2OqwBi" id="5PpdwMfGI1U" role="33vP2m">
                <node concept="37vLTw" id="5PpdwMfGI1V" role="2Oq$k0">
                  <ref role="3cqZAo" node="5s497Vrh7SH" resolve="g" />
                </node>
                <node concept="liA8E" id="5PpdwMfGI1W" role="2OqNvi">
                  <ref role="37wK5l" node="5PpdwMfGszG" resolve="g2" />
                  <node concept="37vLTw" id="5PpdwMfGI1X" role="37wK5m">
                    <ref role="3cqZAo" node="5s497Vrh7Te" resolve="h" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5PpdwMfGGfQ" role="3cqZAp" />
          <node concept="3cpWs8" id="5PpdwMfGDiy" role="3cqZAp">
            <node concept="3cpWsn" id="5PpdwMfGDiz" role="3cpWs9">
              <property role="TrG5h" value="b3" />
              <node concept="3uibUv" id="5PpdwMfGDOD" role="1tU5fm">
                <ref role="3uigEE" node="5s497Vrh7RM" resolve="Sample_bad1.B" />
              </node>
              <node concept="2OqwBi" id="5PpdwMfGDi$" role="33vP2m">
                <node concept="37vLTw" id="5PpdwMfGDi_" role="2Oq$k0">
                  <ref role="3cqZAo" node="5s497Vrh7SH" resolve="g" />
                </node>
                <node concept="liA8E" id="5PpdwMfGDiA" role="2OqNvi">
                  <ref role="37wK5l" node="5PpdwMfGszG" resolve="g2" />
                  <node concept="2OqwBi" id="5PpdwMfGDiB" role="37wK5m">
                    <node concept="37vLTw" id="5PpdwMfGDiC" role="2Oq$k0">
                      <ref role="3cqZAo" node="5s497Vrh7Tc" resolve="s" />
                    </node>
                    <node concept="liA8E" id="5PpdwMfGDiD" role="2OqNvi">
                      <ref role="37wK5l" node="5s497Vrh7RS" resolve="h" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5PpdwMfGH6r" role="3cqZAp" />
        </node>
        <node concept="3Tm1VV" id="5s497Vrh7T5" role="1B3o_S" />
        <node concept="16euLQ" id="5s497Vrh7T6" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="5s497Vrh7T7" role="3ztrMU">
            <ref role="3uigEE" node="5s497Vrh7RM" resolve="Sample_bad1.B" />
          </node>
        </node>
        <node concept="16euLQ" id="5s497Vrh7T8" role="16eVyc">
          <property role="TrG5h" value="S" />
          <node concept="3uibUv" id="5s497Vrh7T9" role="3ztrMU">
            <ref role="3uigEE" node="5s497Vrh7RP" resolve="Sample_bad1.J" />
            <node concept="3qUtgH" id="5s497Vrh7Ta" role="11_B2D">
              <node concept="16syzq" id="5s497Vrh7Tb" role="3qUvdb">
                <ref role="16sUi3" node="5s497Vrh7T6" resolve="T" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5s497Vrh7Tc" role="3clF46">
          <property role="TrG5h" value="s" />
          <node concept="16syzq" id="5s497Vrh7Td" role="1tU5fm">
            <ref role="16sUi3" node="5s497Vrh7T8" resolve="S" />
          </node>
        </node>
        <node concept="37vLTG" id="5s497Vrh7Te" role="3clF46">
          <property role="TrG5h" value="h" />
          <node concept="3uibUv" id="5s497Vrh7Tf" role="1tU5fm">
            <ref role="3uigEE" node="5s497Vrh7S7" resolve="Sample_bad1.H" />
            <node concept="3uibUv" id="5s497Vrh7Tg" role="11_B2D">
              <ref role="3uigEE" node="5s497Vrh7S3" resolve="Sample_bad1.K" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497Vrh7Th" role="jymVt" />
  </node>
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
      <node concept="312cEg" id="4ekooLalg0l" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="t" />
        <property role="3TUv4t" value="false" />
        <node concept="16syzq" id="4ekooLalg0m" role="1tU5fm">
          <ref role="16sUi3" node="4ekooLalg0v" resolve="T" />
        </node>
      </node>
      <node concept="3clFb_" id="4ekooLalg0n" role="jymVt">
        <property role="TrG5h" value="h" />
        <node concept="3uibUv" id="4ekooLalg0o" role="3clF45">
          <ref role="3uigEE" node="4ekooLalg0_" resolve="Sample_bad2.H" />
          <node concept="3uibUv" id="4ekooLalg0p" role="11_B2D">
            <ref role="3uigEE" node="4ekooLalg0k" resolve="Sample_bad2.J" />
            <node concept="16syzq" id="4ekooLalg0q" role="11_B2D">
              <ref role="16sUi3" node="4ekooLalg0v" resolve="T" />
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
        <property role="TrG5h" value="T" />
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
        <node concept="3uibUv" id="4ekooLalg0$" role="11_B2D">
          <ref role="3uigEE" node="4ekooLalg0h" resolve="Sample_bad2.B" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="4ekooLalg0_" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="H" />
      <node concept="3Tm6S6" id="4ekooLalg0A" role="1B3o_S" />
      <node concept="16euLQ" id="4ekooLalg0B" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="312cEu" id="4ekooLalg0C" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="G" />
      <node concept="3clFb_" id="4ekooLalg0D" role="jymVt">
        <property role="TrG5h" value="g1" />
        <node concept="37vLTG" id="4ekooLalg0E" role="3clF46">
          <property role="TrG5h" value="h" />
          <node concept="3uibUv" id="4ekooLalg0F" role="1tU5fm">
            <ref role="3uigEE" node="4ekooLalg0_" resolve="Sample_bad2.H" />
            <node concept="3qUE_q" id="4ekooLalg0G" role="11_B2D">
              <node concept="3uibUv" id="4ekooLalg0H" role="3qUE_r">
                <ref role="3uigEE" node="4ekooLalg0k" resolve="Sample_bad2.J" />
                <node concept="16syzq" id="4ekooLalg0I" role="11_B2D">
                  <ref role="16sUi3" node="4ekooLalg0N" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16syzq" id="4ekooLalg0J" role="3clF45">
          <ref role="16sUi3" node="4ekooLalg0N" resolve="T" />
        </node>
        <node concept="3clFbS" id="4ekooLalg0K" role="3clF47">
          <node concept="3clFbF" id="4ekooLalg0L" role="3cqZAp">
            <node concept="10Nm6u" id="4ekooLalg0M" role="3clFbG" />
          </node>
        </node>
        <node concept="16euLQ" id="4ekooLalg0N" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="2BbfRGCnuJ0" role="3ztrMU">
            <ref role="3uigEE" node="4ekooLalg0h" resolve="Sample_bad2.B" />
          </node>
        </node>
      </node>
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
          <ref role="16sUi3" node="4ekooLalg0W" resolve="T" />
        </node>
        <node concept="3clFbS" id="4ekooLalg0T" role="3clF47">
          <node concept="3clFbF" id="4ekooLalg0U" role="3cqZAp">
            <node concept="10Nm6u" id="4ekooLalg0V" role="3clFbG" />
          </node>
        </node>
        <node concept="16euLQ" id="4ekooLalg0W" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="16euLQ" id="4ekooLalg0Y" role="16eVyc">
          <property role="TrG5h" value="S" />
          <node concept="3uibUv" id="4ekooLalg0Z" role="3ztrMU">
            <ref role="3uigEE" node="4ekooLalg0k" resolve="Sample_bad2.J" />
            <node concept="3qUtgH" id="4ekooLalg10" role="11_B2D">
              <node concept="16syzq" id="4ekooLalg11" role="3qUvdb">
                <ref role="16sUi3" node="4ekooLalg0W" resolve="T" />
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
        <property role="IEkAT" value="false" />
        <node concept="3cqZAl" id="4ekooLalg16" role="3clF45" />
        <node concept="3clFbS" id="4ekooLalg17" role="3clF47">
          <node concept="3cpWs8" id="4ekooLalg18" role="3cqZAp">
            <node concept="3cpWsn" id="4ekooLalg19" role="3cpWs9">
              <property role="TrG5h" value="a1" />
              <node concept="3uibUv" id="4ekooLalg1a" role="1tU5fm">
                <ref role="3uigEE" node="4ekooLalg09" resolve="Sample_bad2.A" />
              </node>
              <node concept="2OqwBi" id="4ekooLalg1b" role="33vP2m">
                <node concept="2OqwBi" id="4ekooLalg1c" role="2Oq$k0">
                  <node concept="37vLTw" id="4ekooLalg1d" role="2Oq$k0">
                    <ref role="3cqZAo" node="4ekooLalg2n" resolve="s" />
                  </node>
                  <node concept="2OwXpG" id="4ekooLalg1e" role="2OqNvi">
                    <ref role="2Oxat5" node="4ekooLalg0l" resolve="t" />
                  </node>
                </node>
                <node concept="liA8E" id="4ekooLalg1f" role="2OqNvi">
                  <ref role="37wK5l" node="4ekooLalg0a" resolve="a" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4ekooLalg1g" role="3cqZAp" />
          <node concept="3SKdUt" id="4ekooLalg1h" role="3cqZAp">
            <node concept="3SKdUq" id="4ekooLalg1i" role="3SKWNk">
              <property role="3SKdUp" value="real type of s.t should be" />
            </node>
          </node>
          <node concept="3SKdUt" id="4ekooLalg1j" role="3cqZAp">
            <node concept="3SKdUq" id="4ekooLalg1k" role="3SKWNk">
              <property role="3SKdUp" value="s:     (bottom | J&lt;(B|A)&gt;)" />
            </node>
          </node>
          <node concept="3SKdUt" id="4ekooLalg1l" role="3cqZAp">
            <node concept="3SKdUq" id="4ekooLalg1m" role="3SKWNk">
              <property role="3SKdUp" value="s.t:   (B | A)" />
            </node>
          </node>
          <node concept="3clFbH" id="4ekooLalg1n" role="3cqZAp" />
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
          <node concept="3clFbH" id="4ekooLalg1t" role="3cqZAp" />
          <node concept="3clFbF" id="4ekooLalg1u" role="3cqZAp">
            <node concept="2OqwBi" id="4ekooLalg1v" role="3clFbG">
              <node concept="37vLTw" id="4ekooLalg1w" role="2Oq$k0">
                <ref role="3cqZAo" node="4ekooLalg1p" resolve="g" />
              </node>
              <node concept="liA8E" id="4ekooLalg1x" role="2OqNvi">
                <ref role="37wK5l" node="4ekooLalg0D" resolve="g1" />
                <node concept="37vLTw" id="4ekooLalg1y" role="37wK5m">
                  <ref role="3cqZAo" node="4ekooLalg2p" resolve="h" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4ekooLalg1z" role="3cqZAp" />
          <node concept="3cpWs8" id="4ekooLalg1$" role="3cqZAp">
            <node concept="3cpWsn" id="4ekooLalg1_" role="3cpWs9">
              <property role="TrG5h" value="b1" />
              <node concept="3uibUv" id="4ekooLalg1A" role="1tU5fm">
                <ref role="3uigEE" node="4ekooLalg0h" resolve="Sample_bad2.B" />
              </node>
              <node concept="2OqwBi" id="4ekooLalg1B" role="33vP2m">
                <node concept="37vLTw" id="4ekooLalg1C" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ekooLalg1p" resolve="g" />
                </node>
                <node concept="liA8E" id="4ekooLalg1D" role="2OqNvi">
                  <ref role="37wK5l" node="4ekooLalg0D" resolve="g1" />
                  <node concept="37vLTw" id="4ekooLalg1E" role="37wK5m">
                    <ref role="3cqZAo" node="4ekooLalg2p" resolve="h" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4ekooLalg1F" role="3cqZAp" />
          <node concept="1X3_iC" id="2BbfRGCnwcY" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3cpWs8" id="4ekooLalg1G" role="8Wnug">
              <node concept="3cpWsn" id="4ekooLalg1H" role="3cpWs9">
                <property role="TrG5h" value="a2" />
                <node concept="3uibUv" id="4ekooLalg1I" role="1tU5fm">
                  <ref role="3uigEE" node="4ekooLalg09" resolve="Sample_bad2.A" />
                </node>
                <node concept="2OqwBi" id="4ekooLalg1J" role="33vP2m">
                  <node concept="37vLTw" id="4ekooLalg1K" role="2Oq$k0">
                    <ref role="3cqZAo" node="4ekooLalg1p" resolve="g" />
                  </node>
                  <node concept="liA8E" id="4ekooLalg1L" role="2OqNvi">
                    <ref role="37wK5l" node="4ekooLalg0D" resolve="g1" />
                    <node concept="2OqwBi" id="4ekooLalg1M" role="37wK5m">
                      <node concept="37vLTw" id="4ekooLalg1N" role="2Oq$k0">
                        <ref role="3cqZAo" node="4ekooLalg2n" resolve="s" />
                      </node>
                      <node concept="liA8E" id="4ekooLalg1O" role="2OqNvi">
                        <ref role="37wK5l" node="4ekooLalg0n" resolve="h" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4ekooLalg1P" role="3cqZAp" />
          <node concept="1X3_iC" id="Co5va1OMde" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3clFbF" id="4ekooLalg1Q" role="8Wnug">
              <node concept="2OqwBi" id="4ekooLalg1R" role="3clFbG">
                <node concept="37vLTw" id="4ekooLalg1S" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ekooLalg1p" resolve="g" />
                </node>
                <node concept="liA8E" id="4ekooLalg1T" role="2OqNvi">
                  <ref role="37wK5l" node="4ekooLalg0D" resolve="g1" />
                  <node concept="2OqwBi" id="4ekooLalg1U" role="37wK5m">
                    <node concept="37vLTw" id="4ekooLalg1V" role="2Oq$k0">
                      <ref role="3cqZAo" node="4ekooLalg2n" resolve="s" />
                    </node>
                    <node concept="liA8E" id="4ekooLalg1W" role="2OqNvi">
                      <ref role="37wK5l" node="4ekooLalg0n" resolve="h" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4ekooLalg1X" role="3cqZAp" />
          <node concept="3cpWs8" id="4ekooLalg1Y" role="3cqZAp">
            <node concept="3cpWsn" id="4ekooLalg1Z" role="3cpWs9">
              <property role="TrG5h" value="b2" />
              <node concept="3uibUv" id="4ekooLalg20" role="1tU5fm">
                <ref role="3uigEE" node="4ekooLalg0h" resolve="Sample_bad2.B" />
              </node>
              <node concept="2OqwBi" id="4ekooLalg21" role="33vP2m">
                <node concept="37vLTw" id="4ekooLalg22" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ekooLalg1p" resolve="g" />
                </node>
                <node concept="liA8E" id="4ekooLalg23" role="2OqNvi">
                  <ref role="37wK5l" node="4ekooLalg0O" resolve="g2" />
                  <node concept="37vLTw" id="4ekooLalg24" role="37wK5m">
                    <ref role="3cqZAo" node="4ekooLalg2p" resolve="h" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4ekooLalg25" role="3cqZAp" />
          <node concept="3cpWs8" id="4ekooLalg26" role="3cqZAp">
            <node concept="3cpWsn" id="4ekooLalg27" role="3cpWs9">
              <property role="TrG5h" value="t" />
              <node concept="16syzq" id="Co5va1REAG" role="1tU5fm">
                <ref role="16sUi3" node="4ekooLalg2h" resolve="T" />
              </node>
              <node concept="2OqwBi" id="4ekooLalg29" role="33vP2m">
                <node concept="37vLTw" id="4ekooLalg2a" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ekooLalg1p" resolve="g" />
                </node>
                <node concept="liA8E" id="4ekooLalg2b" role="2OqNvi">
                  <ref role="37wK5l" node="4ekooLalg0O" resolve="g2" />
                  <node concept="2OqwBi" id="4ekooLalg2c" role="37wK5m">
                    <node concept="37vLTw" id="4ekooLalg2d" role="2Oq$k0">
                      <ref role="3cqZAo" node="4ekooLalg2n" resolve="s" />
                    </node>
                    <node concept="liA8E" id="4ekooLalg2e" role="2OqNvi">
                      <ref role="37wK5l" node="4ekooLalg0n" resolve="h" />
                    </node>
                  </node>
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
          <node concept="3clFbH" id="4ekooLalg2f" role="3cqZAp" />
        </node>
        <node concept="3Tm1VV" id="4ekooLalg2g" role="1B3o_S" />
        <node concept="16euLQ" id="4ekooLalg2h" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="16euLQ" id="4ekooLalg2j" role="16eVyc">
          <property role="TrG5h" value="S" />
          <node concept="3uibUv" id="4ekooLalg2k" role="3ztrMU">
            <ref role="3uigEE" node="4ekooLalg0k" resolve="Sample_bad2.J" />
            <node concept="3qUtgH" id="4ekooLalg2l" role="11_B2D">
              <node concept="16syzq" id="4ekooLalg2m" role="3qUvdb">
                <ref role="16sUi3" node="4ekooLalg2h" resolve="T" />
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

