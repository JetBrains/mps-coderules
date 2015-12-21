<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
  <node concept="3HP615" id="1mP5b6jQP$C">
    <property role="TrG5h" value="Logical" />
    <node concept="2tJIrI" id="1mP5b6jQPCY" role="jymVt" />
    <node concept="3clFb_" id="677NV56hh2k" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="677NV56hhoN" role="3clF45" />
      <node concept="3Tm1VV" id="677NV56hh2n" role="1B3o_S" />
      <node concept="3clFbS" id="677NV56hh2o" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2$F5QputC_u" role="jymVt" />
    <node concept="3clFb_" id="2$F5QputDYt" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="2$F5QputEqV" role="3clF45" />
      <node concept="3Tm1VV" id="2$F5QputDYx" role="1B3o_S" />
      <node concept="3clFbS" id="2$F5QputDYy" role="3clF47" />
      <node concept="37vLTG" id="2$F5QputEwJ" role="3clF46">
        <property role="TrG5h" value="namingContext" />
        <node concept="3uibUv" id="2$F5QputEwI" role="1tU5fm">
          <ref role="3uigEE" node="2$F5QputikM" resolve="NamingContext" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="677NV56hgHJ" role="jymVt" />
    <node concept="3clFb_" id="dfChU1eNVy" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="findRoot" />
      <node concept="3uibUv" id="dfChU1eNWP" role="3clF45">
        <ref role="3uigEE" node="1mP5b6jQP$C" resolve="Logical" />
        <node concept="16syzq" id="dfChU1eNXI" role="11_B2D">
          <ref role="16sUi3" node="1mP5b6jQPCW" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="dfChU1eNV_" role="1B3o_S" />
      <node concept="3clFbS" id="dfChU1eNVA" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="dfChU1eNUX" role="jymVt" />
    <node concept="3clFb_" id="1mP5b6jQPMI" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="value" />
      <node concept="3clFbS" id="1mP5b6jQPML" role="3clF47" />
      <node concept="3Tm1VV" id="1mP5b6jQPMM" role="1B3o_S" />
      <node concept="16syzq" id="1mP5b6jQPMn" role="3clF45">
        <ref role="16sUi3" node="1mP5b6jQPCW" resolve="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="1mP5b6jQPM2" role="jymVt" />
    <node concept="3clFb_" id="1mP5b6jQPKP" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="isBound" />
      <node concept="10P_77" id="1mP5b6jQPLl" role="3clF45" />
      <node concept="3Tm1VV" id="1mP5b6jQPKS" role="1B3o_S" />
      <node concept="3clFbS" id="1mP5b6jQPKT" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7jC45Kci9hZ" role="jymVt" />
    <node concept="3clFb_" id="2DKqMqOiHjb" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="isWildcard" />
      <property role="IEkAT" value="false" />
      <node concept="3clFbS" id="2DKqMqOiHjc" role="3clF47" />
      <node concept="3Tm1VV" id="2DKqMqOiHjd" role="1B3o_S" />
      <node concept="10P_77" id="2DKqMqOiHje" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7MlQDeOxBQC" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaOd5Y" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="pattern" />
      <node concept="3clFbS" id="7HUwyZaOd61" role="3clF47" />
      <node concept="3Tm1VV" id="7HUwyZaOd62" role="1B3o_S" />
      <node concept="3uibUv" id="7HUwyZaOd4F" role="3clF45">
        <ref role="3uigEE" node="7HUwyZauJhz" resolve="LogicalPattern" />
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZaOcXk" role="jymVt" />
    <node concept="3Tm1VV" id="1mP5b6jQP$D" role="1B3o_S" />
    <node concept="16euLQ" id="1mP5b6jQPCW" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="312cEu" id="2$F5QputikM">
    <property role="TrG5h" value="NamingContext" />
    <node concept="2tJIrI" id="2$F5Qputilx" role="jymVt" />
    <node concept="3clFb_" id="2$F5Qputim3" role="jymVt">
      <property role="TrG5h" value="uniqueName" />
      <node concept="37vLTG" id="2$F5QputirS" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="2$F5QputisJ" role="1tU5fm">
          <ref role="3uigEE" node="1mP5b6jQP$C" resolve="Logical" />
        </node>
      </node>
      <node concept="17QB3L" id="2$F5Qputin1" role="3clF45" />
      <node concept="3Tm1VV" id="2$F5Qputim6" role="1B3o_S" />
      <node concept="3clFbS" id="2$F5Qputim7" role="3clF47">
        <node concept="3cpWs6" id="7HUwyZaPhkE" role="3cqZAp">
          <node concept="1rXfSq" id="7HUwyZaPhkD" role="3cqZAk">
            <ref role="37wK5l" node="7HUwyZaPhk$" resolve="cachedOrMakeUnique" />
            <node concept="37vLTw" id="7HUwyZaPhkB" role="37wK5m">
              <ref role="3cqZAo" node="2$F5QputirS" resolve="logical" />
            </node>
            <node concept="2OqwBi" id="7HUwyZaPium" role="37wK5m">
              <node concept="37vLTw" id="7HUwyZaPiun" role="2Oq$k0">
                <ref role="3cqZAo" node="2$F5QputirS" resolve="logical" />
              </node>
              <node concept="liA8E" id="7HUwyZaPiuo" role="2OqNvi">
                <ref role="37wK5l" node="677NV56hh2k" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZaPj29" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaPiEo" role="jymVt">
      <property role="TrG5h" value="uniqueName" />
      <node concept="37vLTG" id="7HUwyZaPiEp" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="7HUwyZaPjnM" role="1tU5fm">
          <ref role="3uigEE" node="7HUwyZauJhz" resolve="LogicalPattern" />
        </node>
      </node>
      <node concept="17QB3L" id="7HUwyZaPiEr" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZaPiEs" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZaPiEt" role="3clF47">
        <node concept="3cpWs6" id="7HUwyZaPiEu" role="3cqZAp">
          <node concept="1rXfSq" id="7HUwyZaPiEv" role="3cqZAk">
            <ref role="37wK5l" node="7HUwyZaPhk$" resolve="cachedOrMakeUnique" />
            <node concept="37vLTw" id="7HUwyZaPiEw" role="37wK5m">
              <ref role="3cqZAo" node="7HUwyZaPiEp" resolve="logical" />
            </node>
            <node concept="2OqwBi" id="7HUwyZaPiEx" role="37wK5m">
              <node concept="37vLTw" id="7HUwyZaPiEy" role="2Oq$k0">
                <ref role="3cqZAo" node="7HUwyZaPiEp" resolve="logical" />
              </node>
              <node concept="liA8E" id="7HUwyZaPiEz" role="2OqNvi">
                <ref role="37wK5l" node="7HUwyZauJkq" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZaPhFV" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaPhk$" role="jymVt">
      <property role="TrG5h" value="cachedOrMakeUnique" />
      <node concept="3Tm6S6" id="7HUwyZaPhk_" role="1B3o_S" />
      <node concept="17QB3L" id="7HUwyZaPhkA" role="3clF45" />
      <node concept="37vLTG" id="7HUwyZaPhkq" role="3clF46">
        <property role="TrG5h" value="named" />
        <node concept="3uibUv" id="7HUwyZaPi12" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="7HUwyZaPhks" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7HUwyZaPhkt" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7HUwyZaPhk6" role="3clF47">
        <node concept="3clFbJ" id="7HUwyZaPhk7" role="3cqZAp">
          <node concept="3clFbS" id="7HUwyZaPhk8" role="3clFbx">
            <node concept="3clFbF" id="7HUwyZaPhk9" role="3cqZAp">
              <node concept="2OqwBi" id="7HUwyZaPhka" role="3clFbG">
                <node concept="37vLTw" id="7HUwyZaPhkb" role="2Oq$k0">
                  <ref role="3cqZAo" node="2$F5Qputtl8" resolve="cachedUnique" />
                </node>
                <node concept="liA8E" id="7HUwyZaPhkc" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                  <node concept="37vLTw" id="7HUwyZaPhku" role="37wK5m">
                    <ref role="3cqZAo" node="7HUwyZaPhkq" resolve="named" />
                  </node>
                  <node concept="1rXfSq" id="7HUwyZaPhke" role="37wK5m">
                    <ref role="37wK5l" node="2$F5Qputrbb" resolve="makeUnique" />
                    <node concept="37vLTw" id="7HUwyZaPhkw" role="37wK5m">
                      <ref role="3cqZAo" node="7HUwyZaPhks" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="7HUwyZaPhkg" role="3clFbw">
            <node concept="2OqwBi" id="7HUwyZaPhkh" role="3fr31v">
              <node concept="37vLTw" id="7HUwyZaPhki" role="2Oq$k0">
                <ref role="3cqZAo" node="2$F5Qputtl8" resolve="cachedUnique" />
              </node>
              <node concept="liA8E" id="7HUwyZaPhkj" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                <node concept="37vLTw" id="7HUwyZaPhkx" role="37wK5m">
                  <ref role="3cqZAo" node="7HUwyZaPhkq" resolve="named" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7HUwyZaPhkl" role="3cqZAp">
          <node concept="2OqwBi" id="7HUwyZaPhkm" role="3clFbG">
            <node concept="37vLTw" id="7HUwyZaPhkn" role="2Oq$k0">
              <ref role="3cqZAo" node="2$F5Qputtl8" resolve="cachedUnique" />
            </node>
            <node concept="liA8E" id="7HUwyZaPhko" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
              <node concept="37vLTw" id="7HUwyZaPhkv" role="37wK5m">
                <ref role="3cqZAo" node="7HUwyZaPhkq" resolve="named" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2$F5Qputiyw" role="jymVt" />
    <node concept="3clFb_" id="2$F5Qputrbb" role="jymVt">
      <property role="TrG5h" value="makeUnique" />
      <node concept="17QB3L" id="2$F5QputrI9" role="3clF45" />
      <node concept="3Tm6S6" id="2$F5QputvYb" role="1B3o_S" />
      <node concept="3clFbS" id="2$F5Qputrbf" role="3clF47">
        <node concept="3cpWs8" id="6KkyQm3YW6m" role="3cqZAp">
          <node concept="3cpWsn" id="6KkyQm3YW6n" role="3cpWs9">
            <property role="TrG5h" value="c" />
            <node concept="10Oyi0" id="6KkyQm3YW6k" role="1tU5fm" />
            <node concept="1rXfSq" id="6KkyQm3YW6o" role="33vP2m">
              <ref role="37wK5l" node="6KkyQm3YIHb" resolve="getAndIncrementCounter" />
              <node concept="37vLTw" id="6KkyQm3YW6p" role="37wK5m">
                <ref role="3cqZAo" node="2$F5Qputs7K" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6KkyQm3YVV7" role="3cqZAp">
          <node concept="3K4zz7" id="6KkyQm3YWFm" role="3clFbG">
            <node concept="37vLTw" id="6KkyQm3YWGp" role="3K4E3e">
              <ref role="3cqZAo" node="2$F5Qputs7K" resolve="name" />
            </node>
            <node concept="3cpWs3" id="6KkyQm3YWK4" role="3K4GZi">
              <node concept="37vLTw" id="6KkyQm3YWKp" role="3uHU7w">
                <ref role="3cqZAo" node="6KkyQm3YW6n" resolve="c" />
              </node>
              <node concept="37vLTw" id="6KkyQm3YWH4" role="3uHU7B">
                <ref role="3cqZAo" node="2$F5Qputs7K" resolve="name" />
              </node>
            </node>
            <node concept="3clFbC" id="6KkyQm3YWrJ" role="3K4Cdx">
              <node concept="3cmrfG" id="6KkyQm3YWuO" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="6KkyQm3YW6q" role="3uHU7B">
                <ref role="3cqZAo" node="6KkyQm3YW6n" resolve="c" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2$F5Qputs7K" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="2$F5Qputs7J" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2$F5QputqPl" role="jymVt" />
    <node concept="3clFb_" id="6KkyQm3YIHb" role="jymVt">
      <property role="TrG5h" value="getAndIncrementCounter" />
      <node concept="10Oyi0" id="6KkyQm3YKix" role="3clF45" />
      <node concept="3Tm6S6" id="6KkyQm3YIKB" role="1B3o_S" />
      <node concept="3clFbS" id="6KkyQm3YIHf" role="3clF47">
        <node concept="3cpWs8" id="6KkyQm3YOGH" role="3cqZAp">
          <node concept="3cpWsn" id="6KkyQm3YOGI" role="3cpWs9">
            <property role="TrG5h" value="c" />
            <node concept="3uibUv" id="6KkyQm3YOGz" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
            <node concept="3K4zz7" id="6KkyQm3YTy1" role="33vP2m">
              <node concept="2OqwBi" id="6KkyQm3YTU3" role="3K4E3e">
                <node concept="37vLTw" id="6KkyQm3YTGW" role="2Oq$k0">
                  <ref role="3cqZAo" node="2$F5Qputiuc" resolve="uniqueCounters" />
                </node>
                <node concept="liA8E" id="6KkyQm3YUh_" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                  <node concept="37vLTw" id="6KkyQm3YUrO" role="37wK5m">
                    <ref role="3cqZAo" node="6KkyQm3YIVT" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="3cmrfG" id="6KkyQm3YUxd" role="3K4GZi">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="6KkyQm3YTeZ" role="3K4Cdx">
                <node concept="37vLTw" id="6KkyQm3YTf0" role="2Oq$k0">
                  <ref role="3cqZAo" node="2$F5Qputiuc" resolve="uniqueCounters" />
                </node>
                <node concept="liA8E" id="6KkyQm3YTf1" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                  <node concept="37vLTw" id="6KkyQm3YTf2" role="37wK5m">
                    <ref role="3cqZAo" node="6KkyQm3YIVT" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6KkyQm3YPci" role="3cqZAp">
          <node concept="2OqwBi" id="6KkyQm3YPtG" role="3clFbG">
            <node concept="37vLTw" id="6KkyQm3YPcg" role="2Oq$k0">
              <ref role="3cqZAo" node="2$F5Qputiuc" resolve="uniqueCounters" />
            </node>
            <node concept="liA8E" id="6KkyQm3YPXe" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="37vLTw" id="6KkyQm3YQ59" role="37wK5m">
                <ref role="3cqZAo" node="6KkyQm3YIVT" resolve="name" />
              </node>
              <node concept="3cpWs3" id="6KkyQm44fmr" role="37wK5m">
                <node concept="3cmrfG" id="6KkyQm44fmK" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="6KkyQm44ffB" role="3uHU7B">
                  <ref role="3cqZAo" node="6KkyQm3YOGI" resolve="c" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6KkyQm3YNI3" role="3cqZAp">
          <node concept="37vLTw" id="6KkyQm3YOGN" role="3clFbG">
            <ref role="3cqZAo" node="6KkyQm3YOGI" resolve="c" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6KkyQm3YIVT" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="6KkyQm3YIVS" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2$F5QputiyL" role="jymVt" />
    <node concept="312cEg" id="2$F5Qputiuc" role="jymVt">
      <property role="TrG5h" value="uniqueCounters" />
      <node concept="3Tm6S6" id="2$F5Qputiud" role="1B3o_S" />
      <node concept="3uibUv" id="2$F5QputiuG" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="17QB3L" id="2$F5Qputiv5" role="11_B2D" />
        <node concept="3uibUv" id="2$F5QputiwU" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="2ShNRf" id="2$F5QputlyY" role="33vP2m">
        <node concept="1pGfFk" id="2$F5QputmMW" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="17QB3L" id="2$F5QputmUF" role="1pMfVU" />
          <node concept="3uibUv" id="2$F5Qputn5D" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2$F5QputsV9" role="jymVt" />
    <node concept="312cEg" id="2$F5Qputtl8" role="jymVt">
      <property role="TrG5h" value="cachedUnique" />
      <node concept="3Tm6S6" id="2$F5Qputtl9" role="1B3o_S" />
      <node concept="3uibUv" id="2$F5Qputtyw" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="7HUwyZaPgOl" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="17QB3L" id="2$F5Qputt$o" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="2$F5QputtAZ" role="33vP2m">
        <node concept="1pGfFk" id="2$F5QputtRA" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~IdentityHashMap.&lt;init&gt;()" resolve="IdentityHashMap" />
          <node concept="3uibUv" id="7HUwyZaPgXT" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="17QB3L" id="2$F5Qputu0m" role="1pMfVU" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2$F5QputsHN" role="jymVt" />
    <node concept="3Tm1VV" id="2$F5QputikN" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="7HUwyZauJhz">
    <property role="TrG5h" value="LogicalPattern" />
    <node concept="2tJIrI" id="7HUwyZauJhH" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZauJkq" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="7HUwyZauJkr" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZauJks" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZauJkt" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7HUwyZauJku" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZauJkv" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="7HUwyZauJkw" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZauJkx" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZauJky" role="3clF47" />
      <node concept="37vLTG" id="7HUwyZauJkz" role="3clF46">
        <property role="TrG5h" value="namingContext" />
        <node concept="3uibUv" id="7HUwyZauJk$" role="1tU5fm">
          <ref role="3uigEE" node="2$F5QputikM" resolve="NamingContext" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZauJhM" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZauJox" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="isWildcard" />
      <property role="IEkAT" value="false" />
      <node concept="3clFbS" id="7HUwyZauJoy" role="3clF47" />
      <node concept="3Tm1VV" id="7HUwyZauJoz" role="1B3o_S" />
      <node concept="10P_77" id="7HUwyZauJo$" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7HUwyZaC53m" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaC3Q7" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="type" />
      <node concept="3uibUv" id="7HUwyZaC3XA" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3qTvmN" id="7HUwyZaC3XH" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="7HUwyZaC3Qa" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZaC3Qb" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7HUwyZaC3Pw" role="jymVt" />
    <node concept="3Tm1VV" id="7HUwyZauJh$" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="7HUwyZaNIC5">
    <property role="TrG5h" value="MultiLogicalPattern" />
    <node concept="2tJIrI" id="7HUwyZaNICj" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaC4ZZ" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="cardinality" />
      <property role="IEkAT" value="false" />
      <node concept="3clFbS" id="7HUwyZaC500" role="3clF47" />
      <node concept="3Tm1VV" id="7HUwyZaC501" role="1B3o_S" />
      <node concept="10Oyi0" id="7HUwyZaC5T7" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7HUwyZaNHWd" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaNHY_" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="patternAt" />
      <node concept="37vLTG" id="7HUwyZaNIPJ" role="3clF46">
        <property role="TrG5h" value="idx" />
        <node concept="10Oyi0" id="7HUwyZaNIQ1" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7HUwyZaNHYC" role="3clF47" />
      <node concept="3Tm1VV" id="7HUwyZaNHYD" role="1B3o_S" />
      <node concept="3uibUv" id="7HUwyZaNIPg" role="3clF45">
        <ref role="3uigEE" node="7HUwyZauJhz" resolve="LogicalPattern" />
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZbfyU2" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZbfyWk" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="toArray" />
      <node concept="3clFbS" id="7HUwyZbfyWn" role="3clF47" />
      <node concept="3Tm1VV" id="7HUwyZbfyWo" role="1B3o_S" />
      <node concept="10Q1$e" id="7HUwyZbfyVX" role="3clF45">
        <node concept="3uibUv" id="7HUwyZbfyV8" role="10Q1$1">
          <ref role="3uigEE" node="7HUwyZauJhz" resolve="LogicalPattern" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZauJoi" role="jymVt" />
    <node concept="3Tm1VV" id="7HUwyZaNIC6" role="1B3o_S" />
    <node concept="3uibUv" id="7HUwyZaNICL" role="3HQHJm">
      <ref role="3uigEE" node="7HUwyZauJhz" resolve="LogicalPattern" />
    </node>
  </node>
  <node concept="3HP615" id="7IvepusY4Ez">
    <property role="TrG5h" value="LogicalContext" />
    <node concept="2tJIrI" id="7IvepusY4EL" role="jymVt" />
    <node concept="3clFb_" id="7IvepusY4EY" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="valueFor" />
      <node concept="37vLTG" id="7IvepusY4FP" role="3clF46">
        <property role="TrG5h" value="logicalPattern" />
        <node concept="3uibUv" id="7IvepusY4G3" role="1tU5fm">
          <ref role="3uigEE" node="7HUwyZauJhz" resolve="LogicalPattern" />
        </node>
      </node>
      <node concept="3uibUv" id="7IvepusY4Fi" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="7IvepusY4F1" role="1B3o_S" />
      <node concept="3clFbS" id="7IvepusY4F2" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7IvepusY4EQ" role="jymVt" />
    <node concept="3Tm1VV" id="7IvepusY4E$" role="1B3o_S" />
  </node>
</model>

