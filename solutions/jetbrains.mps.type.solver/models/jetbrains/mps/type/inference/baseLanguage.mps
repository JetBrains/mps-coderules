<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e67bd817-e7ca-40c9-9f79-95fad12bb615(jetbrains.mps.type.inference.baseLanguage)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" />
    <import index="jfki" ref="f:java_stub#7526e0cf-1ce7-46f8-a555-9eca1e06c23b#jetbrains.mps.unification(jetbrains.mps.unification@java_stub)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="fxg7" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
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
  <node concept="312cEu" id="dkhrtsO46W">
    <property role="TrG5h" value="ClassifierTypes" />
    <node concept="2tJIrI" id="3JgCwkqzaNC" role="jymVt" />
    <node concept="2YIFZL" id="3JgCwkqzU36" role="jymVt">
      <property role="TrG5h" value="isClassifierType" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3JgCwkqzaTe" role="3clF47">
        <node concept="3clFbF" id="3JgCwkqzb6d" role="3cqZAp">
          <node concept="2OqwBi" id="3JgCwkqzb6f" role="3clFbG">
            <node concept="Xl_RD" id="3JgCwkqzb6g" role="2Oq$k0">
              <property role="Xl_RC" value="ClassifierType" />
            </node>
            <node concept="liA8E" id="3JgCwkqzb6h" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="2OqwBi" id="3JgCwkqzb6i" role="37wK5m">
                <node concept="2YIFZM" id="3JgCwkqzb6j" role="2Oq$k0">
                  <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
                  <ref role="37wK5l" to="ie8e:3JgCwkqd8va" resolve="findValue" />
                  <node concept="2OqwBi" id="3AEuFq_R2Qf" role="37wK5m">
                    <node concept="37vLTw" id="3JgCwkqzb6k" role="2Oq$k0">
                      <ref role="3cqZAo" node="3JgCwkqzb3u" resolve="type" />
                    </node>
                    <node concept="liA8E" id="3AEuFq_R2Zo" role="2OqNvi">
                      <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3JgCwkqzb6l" role="37wK5m">
                    <property role="Xl_RC" value="node" />
                  </node>
                  <node concept="Xl_RD" id="3JgCwkqzb6m" role="37wK5m">
                    <property role="Xl_RC" value="concept" />
                  </node>
                </node>
                <node concept="liA8E" id="3JgCwkqzb6n" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:3JgCwkqkUL2" resolve="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3JgCwkqzb3u" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="3JgCwkqzb3t" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="10P_77" id="3JgCwkqzaYl" role="3clF45" />
      <node concept="3Tm1VV" id="3JgCwkqzaTd" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3JgCwkqzbBc" role="jymVt" />
    <node concept="2YIFZL" id="3JgCwkqzUdq" role="jymVt">
      <property role="TrG5h" value="classifier" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3JgCwkqzbuC" role="3clF47">
        <node concept="3clFbF" id="3JgCwkqzchN" role="3cqZAp">
          <node concept="2OqwBi" id="3JgCwkqzbuH" role="3clFbG">
            <node concept="2YIFZM" id="3JgCwkqzbuI" role="2Oq$k0">
              <ref role="37wK5l" to="ie8e:3JgCwkqd8va" resolve="findValue" />
              <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
              <node concept="2OqwBi" id="3AEuFq_R2oX" role="37wK5m">
                <node concept="37vLTw" id="3JgCwkqzbuJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3JgCwkqzbuN" resolve="type" />
                </node>
                <node concept="liA8E" id="3AEuFq_R2y6" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
              <node concept="Xl_RD" id="3JgCwkqzbuK" role="37wK5m">
                <property role="Xl_RC" value="node" />
              </node>
              <node concept="Xl_RD" id="3JgCwkqzbuL" role="37wK5m">
                <property role="Xl_RC" value="classifier" />
              </node>
              <node concept="17QB3L" id="3JgCwkqzK_4" role="3PaCim" />
            </node>
            <node concept="liA8E" id="3JgCwkqzbuM" role="2OqNvi">
              <ref role="37wK5l" to="ie8e:3JgCwkqkUL2" resolve="result" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3JgCwkqzbuN" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="3JgCwkqzbuO" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="17QB3L" id="3JgCwkqzbHa" role="3clF45" />
      <node concept="3Tm1VV" id="3JgCwkqzbuB" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2GO7tyKbcVK" role="jymVt" />
    <node concept="2YIFZL" id="2GO7tyKbd00" role="jymVt">
      <property role="TrG5h" value="parameter" />
      <node concept="3uibUv" id="2GO7tyKbd5t" role="3clF45">
        <ref role="3uigEE" to="k7g3:~List" resolve="List" />
        <node concept="3qUE_q" id="2GO7tyJFIHO" role="11_B2D">
          <node concept="3uibUv" id="2GO7tyJFIHP" role="3qUE_r">
            <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
            <node concept="3qTvmN" id="2GO7tyJFIHQ" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2GO7tyKbd03" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyKbd04" role="3clF47">
        <node concept="3cpWs8" id="2GO7tyKbj8F" role="3cqZAp">
          <node concept="3cpWsn" id="2GO7tyKbj8G" role="3cpWs9">
            <property role="TrG5h" value="findList" />
            <node concept="3uibUv" id="2GO7tyKbj8l" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:3OPtF03nYWl" resolve="Finders.IListFinder" />
            </node>
            <node concept="2YIFZM" id="2GO7tyKbj8H" role="33vP2m">
              <ref role="37wK5l" to="ie8e:3OPtF03pX11" resolve="findList" />
              <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
              <node concept="2OqwBi" id="2GO7tyKbj8I" role="37wK5m">
                <node concept="37vLTw" id="2GO7tyKbj8J" role="2Oq$k0">
                  <ref role="3cqZAo" node="2GO7tyKbgYY" resolve="type" />
                </node>
                <node concept="liA8E" id="2GO7tyKbj8K" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
              <node concept="Xl_RD" id="2GO7tyKbj8L" role="37wK5m">
                <property role="Xl_RC" value="node" />
              </node>
              <node concept="Xl_RD" id="2GO7tyKbj8M" role="37wK5m">
                <property role="Xl_RC" value="parameter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2GO7tyKbioB" role="3cqZAp">
          <node concept="3K4zz7" id="2GO7tyKbkr7" role="3clFbG">
            <node concept="2OqwBi" id="2GO7tyKbkDB" role="3K4E3e">
              <node concept="37vLTw" id="2GO7tyKbkyI" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyKbj8G" resolve="findList" />
              </node>
              <node concept="liA8E" id="2GO7tyKbl3c" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3OPtF03nYWm" resolve="result" />
              </node>
            </node>
            <node concept="2YIFZM" id="2GO7tyKbI9E" role="3K4GZi">
              <ref role="37wK5l" to="k7g3:~Collections.emptyList():java.util.List" resolve="emptyList" />
              <ref role="1Pybhc" to="k7g3:~Collections" resolve="Collections" />
              <node concept="3uibUv" id="2GO7tyKbTje" role="3PaCim">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
                <node concept="3qTvmN" id="2GO7tyKbTrJ" role="11_B2D" />
              </node>
            </node>
            <node concept="2OqwBi" id="2GO7tyKbjAA" role="3K4Cdx">
              <node concept="37vLTw" id="2GO7tyKbj8N" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyKbj8G" resolve="findList" />
              </node>
              <node concept="liA8E" id="2GO7tyKbk2S" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3JgCwkqkUKY" resolve="found" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyKbgYY" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="2GO7tyKbgYX" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="dkhrtsOdY_" role="jymVt" />
    <node concept="3Tm1VV" id="dkhrtsO46X" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3JgCwkq$25v">
    <property role="TrG5h" value="SubclassingTable" />
    <node concept="2tJIrI" id="3JgCwkq$2e6" role="jymVt" />
    <node concept="2tJIrI" id="3JgCwkqB4WU" role="jymVt" />
    <node concept="2YIFZL" id="cnjBgYFMYe" role="jymVt">
      <property role="TrG5h" value="isSubclassOf" />
      <node concept="37vLTG" id="cnjBgYFNoF" role="3clF46">
        <property role="TrG5h" value="subclass" />
        <node concept="17QB3L" id="cnjBgYFNq6" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="cnjBgYFNst" role="3clF46">
        <property role="TrG5h" value="superclass" />
        <node concept="17QB3L" id="cnjBgYFNtU" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="cnjBgYFNj8" role="3clF45" />
      <node concept="3Tm1VV" id="cnjBgYFMYh" role="1B3o_S" />
      <node concept="3clFbS" id="cnjBgYFMYi" role="3clF47">
        <node concept="3clFbJ" id="cnjBgYGnhR" role="3cqZAp">
          <node concept="3clFbS" id="cnjBgYGnhS" role="3clFbx">
            <node concept="3cpWs6" id="cnjBgYGnhT" role="3cqZAp">
              <node concept="3clFbT" id="cnjBgYGnhU" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="cnjBgYGnhV" role="3clFbw">
            <node concept="37vLTw" id="cnjBgYGoyj" role="2Oq$k0">
              <ref role="3cqZAo" node="cnjBgYFNoF" resolve="subclass" />
            </node>
            <node concept="liA8E" id="cnjBgYGnhX" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="37vLTw" id="cnjBgYGnhY" role="37wK5m">
                <ref role="3cqZAo" node="cnjBgYFNst" resolve="superclass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="cnjBgYGpwr" role="3cqZAp">
          <node concept="3clFbS" id="cnjBgYGpws" role="2LFqv$">
            <node concept="3clFbF" id="cnjBgYGjvv" role="3cqZAp">
              <node concept="37vLTI" id="cnjBgYGjvx" role="3clFbG">
                <node concept="2OqwBi" id="cnjBgYFRb8" role="37vLTx">
                  <node concept="2OqwBi" id="cnjBgYFRb9" role="2Oq$k0">
                    <node concept="37vLTw" id="cnjBgYFRba" role="2Oq$k0">
                      <ref role="3cqZAo" node="3JgCwkqB8va" resolve="table" />
                    </node>
                    <node concept="liA8E" id="cnjBgYFRbb" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                      <node concept="37vLTw" id="cnjBgYHpP2" role="37wK5m">
                        <ref role="3cqZAo" node="cnjBgYFNoF" resolve="subclass" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="cnjBgYFRbd" role="2OqNvi">
                    <ref role="37wK5l" node="5s497VrgnIC" resolve="superclass" />
                  </node>
                </node>
                <node concept="37vLTw" id="cnjBgYHpjd" role="37vLTJ">
                  <ref role="3cqZAo" node="cnjBgYFNoF" resolve="subclass" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="cnjBgYFRxC" role="3cqZAp">
              <node concept="3clFbS" id="cnjBgYFRxF" role="3clFbx">
                <node concept="3cpWs6" id="cnjBgYFSEm" role="3cqZAp">
                  <node concept="3clFbT" id="cnjBgYFSL_" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="cnjBgYFRJT" role="3clFbw">
                <node concept="37vLTw" id="cnjBgYHpCd" role="2Oq$k0">
                  <ref role="3cqZAo" node="cnjBgYFNoF" resolve="subclass" />
                </node>
                <node concept="liA8E" id="cnjBgYFS$5" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="37vLTw" id="cnjBgYFSAZ" role="37wK5m">
                    <ref role="3cqZAo" node="cnjBgYFNst" resolve="superclass" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="cnjBgYGpwu" role="2$JKZa">
            <node concept="37vLTw" id="cnjBgYGpwv" role="2Oq$k0">
              <ref role="3cqZAo" node="3JgCwkqB8va" resolve="table" />
            </node>
            <node concept="liA8E" id="cnjBgYGpww" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
              <node concept="37vLTw" id="cnjBgYHpuX" role="37wK5m">
                <ref role="3cqZAo" node="cnjBgYFNoF" resolve="subclass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cnjBgYFT_G" role="3cqZAp">
          <node concept="3clFbT" id="cnjBgYFT2v" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="cnjBgYGGQq" role="jymVt" />
    <node concept="2YIFZL" id="cnjBgYHLlL" role="jymVt">
      <property role="TrG5h" value="toSupertype" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="cnjBgYGHYR" role="3clF47">
        <node concept="3cpWs8" id="cnjBgYH1dj" role="3cqZAp">
          <node concept="3cpWsn" id="cnjBgYH1dk" role="3cpWs9">
            <property role="TrG5h" value="subclass" />
            <node concept="17QB3L" id="cnjBgYH1dg" role="1tU5fm" />
            <node concept="2YIFZM" id="cnjBgYH1dl" role="33vP2m">
              <ref role="37wK5l" node="3JgCwkqzUdq" resolve="classifier" />
              <ref role="1Pybhc" node="dkhrtsO46W" resolve="ClassifierTypes" />
              <node concept="37vLTw" id="cnjBgYH1dm" role="37wK5m">
                <ref role="3cqZAo" node="cnjBgYGQLr" resolve="subtype" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="cnjBgYH37E" role="3cqZAp">
          <node concept="3clFbS" id="cnjBgYH37H" role="3clFbx">
            <node concept="3cpWs6" id="7d$oK1$J5CS" role="3cqZAp">
              <node concept="37vLTw" id="7d$oK1$J67W" role="3cqZAk">
                <ref role="3cqZAo" node="cnjBgYGQLr" resolve="subtype" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="cnjBgYH3N8" role="3clFbw">
            <node concept="37vLTw" id="cnjBgYH3pl" role="2Oq$k0">
              <ref role="3cqZAo" node="cnjBgYH1dk" resolve="subclass" />
            </node>
            <node concept="liA8E" id="cnjBgYH4Qf" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="37vLTw" id="cnjBgYH57f" role="37wK5m">
                <ref role="3cqZAo" node="cnjBgYGRoy" resolve="superclass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="cnjBgYHhOQ" role="3cqZAp">
          <node concept="3clFbS" id="cnjBgYHhOS" role="2LFqv$">
            <node concept="3cpWs8" id="cnjBgYHqqE" role="3cqZAp">
              <node concept="3cpWsn" id="cnjBgYHqqF" role="3cpWs9">
                <property role="TrG5h" value="supr" />
                <node concept="3uibUv" id="cnjBgYHqqG" role="1tU5fm">
                  <ref role="3uigEE" node="3JgCwkqB56x" resolve="SubclassingTable.Superclass" />
                </node>
                <node concept="2OqwBi" id="cnjBgYHqqH" role="33vP2m">
                  <node concept="37vLTw" id="cnjBgYHqqQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JgCwkqB8va" resolve="table" />
                  </node>
                  <node concept="liA8E" id="cnjBgYHqqI" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                    <node concept="37vLTw" id="cnjBgYHqqJ" role="37wK5m">
                      <ref role="3cqZAo" node="cnjBgYH1dk" resolve="subclass" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="cnjBgYHyig" role="3cqZAp">
              <node concept="37vLTI" id="cnjBgYHzb3" role="3clFbG">
                <node concept="2OqwBi" id="cnjBgYHzMu" role="37vLTx">
                  <node concept="37vLTw" id="cnjBgYHzyF" role="2Oq$k0">
                    <ref role="3cqZAo" node="cnjBgYHqqF" resolve="supr" />
                  </node>
                  <node concept="liA8E" id="cnjBgYH$kL" role="2OqNvi">
                    <ref role="37wK5l" node="5s497VrgnIC" resolve="superclass" />
                  </node>
                </node>
                <node concept="37vLTw" id="cnjBgYHyie" role="37vLTJ">
                  <ref role="3cqZAo" node="cnjBgYH1dk" resolve="subclass" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="cnjBgYHrcZ" role="3cqZAp">
              <node concept="37vLTI" id="cnjBgYHrwu" role="3clFbG">
                <node concept="37vLTw" id="cnjBgYHrcX" role="37vLTJ">
                  <ref role="3cqZAo" node="cnjBgYGQLr" resolve="subtype" />
                </node>
                <node concept="3K4zz7" id="cnjBgYHrCA" role="37vLTx">
                  <node concept="2OqwBi" id="cnjBgYHrCB" role="3K4E3e">
                    <node concept="37vLTw" id="cnjBgYHrCC" role="2Oq$k0">
                      <ref role="3cqZAo" node="cnjBgYHqqF" resolve="supr" />
                    </node>
                    <node concept="liA8E" id="cnjBgYHrCD" role="2OqNvi">
                      <ref role="37wK5l" node="3JgCwkqB6vR" resolve="map" />
                      <node concept="37vLTw" id="cnjBgYHrCE" role="37wK5m">
                        <ref role="3cqZAo" node="cnjBgYGQLr" resolve="subtype" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="cnjBgYHrCF" role="3K4GZi" />
                  <node concept="3y3z36" id="cnjBgYHrCG" role="3K4Cdx">
                    <node concept="10Nm6u" id="cnjBgYHrCH" role="3uHU7w" />
                    <node concept="37vLTw" id="cnjBgYHrCI" role="3uHU7B">
                      <ref role="3cqZAo" node="cnjBgYHqqF" resolve="supr" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="cnjBgYHsqC" role="3cqZAp">
              <node concept="3clFbS" id="cnjBgYHsqF" role="3clFbx">
                <node concept="3cpWs6" id="cnjBgYHtP8" role="3cqZAp">
                  <node concept="10Nm6u" id="cnjBgYHuJi" role="3cqZAk" />
                </node>
              </node>
              <node concept="3clFbC" id="cnjBgYHtlB" role="3clFbw">
                <node concept="10Nm6u" id="cnjBgYHt$N" role="3uHU7w" />
                <node concept="37vLTw" id="cnjBgYHt4S" role="3uHU7B">
                  <ref role="3cqZAo" node="cnjBgYGQLr" resolve="subtype" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="cnjBgYHwzy" role="3cqZAp">
              <node concept="3clFbS" id="cnjBgYHwz_" role="3clFbx">
                <node concept="3cpWs6" id="cnjBgYHAQy" role="3cqZAp">
                  <node concept="37vLTw" id="cnjBgYHBN4" role="3cqZAk">
                    <ref role="3cqZAo" node="cnjBgYGQLr" resolve="subtype" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="cnjBgYH_gr" role="3clFbw">
                <node concept="37vLTw" id="cnjBgYH$QI" role="2Oq$k0">
                  <ref role="3cqZAo" node="cnjBgYH1dk" resolve="subclass" />
                </node>
                <node concept="liA8E" id="cnjBgYHAiA" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="37vLTw" id="cnjBgYHA$x" role="37wK5m">
                    <ref role="3cqZAo" node="cnjBgYGRoy" resolve="superclass" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="cnjBgYHiTI" role="2$JKZa">
            <node concept="37vLTw" id="cnjBgYHi$h" role="2Oq$k0">
              <ref role="3cqZAo" node="3JgCwkqB8va" resolve="table" />
            </node>
            <node concept="liA8E" id="cnjBgYHkqD" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
              <node concept="37vLTw" id="cnjBgYHkLZ" role="37wK5m">
                <ref role="3cqZAo" node="cnjBgYH1dk" resolve="subclass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cnjBgYHE56" role="3cqZAp">
          <node concept="10Nm6u" id="cnjBgYHE54" role="3clFbG" />
        </node>
      </node>
      <node concept="37vLTG" id="cnjBgYGQLr" role="3clF46">
        <property role="TrG5h" value="subtype" />
        <node concept="3uibUv" id="cnjBgYGRep" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="cnjBgYGRoy" role="3clF46">
        <property role="TrG5h" value="superclass" />
        <node concept="17QB3L" id="cnjBgYH25o" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="cnjBgYGUT6" role="3clF45">
        <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
      </node>
      <node concept="3Tm1VV" id="cnjBgYGHYQ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="cnjBgYFMCA" role="jymVt" />
    <node concept="2YIFZL" id="3JgCwkq$2mg" role="jymVt">
      <property role="TrG5h" value="supertypeOf" />
      <node concept="37vLTG" id="3JgCwkq$2wp" role="3clF46">
        <property role="TrG5h" value="ct" />
        <node concept="3uibUv" id="3JgCwkq$2z$" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="3uibUv" id="3JgCwkq$2rC" role="3clF45">
        <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
      </node>
      <node concept="3Tm1VV" id="3JgCwkq$2mj" role="1B3o_S" />
      <node concept="3clFbS" id="3JgCwkq$2mk" role="3clF47">
        <node concept="3cpWs8" id="3JgCwkqCdku" role="3cqZAp">
          <node concept="3cpWsn" id="3JgCwkqCdkv" role="3cpWs9">
            <property role="TrG5h" value="supr" />
            <node concept="3uibUv" id="3JgCwkqCdkk" role="1tU5fm">
              <ref role="3uigEE" node="3JgCwkqB56x" resolve="SubclassingTable.Superclass" />
            </node>
            <node concept="2OqwBi" id="3JgCwkqCdkw" role="33vP2m">
              <node concept="37vLTw" id="3JgCwkqCdkx" role="2Oq$k0">
                <ref role="3cqZAo" node="3JgCwkqB8va" resolve="table" />
              </node>
              <node concept="liA8E" id="3JgCwkqCdky" role="2OqNvi">
                <ref role="37wK5l" to="k7g3:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                <node concept="2YIFZM" id="3JgCwkqCdkz" role="37wK5m">
                  <ref role="37wK5l" node="3JgCwkqzUdq" resolve="classifier" />
                  <ref role="1Pybhc" node="dkhrtsO46W" resolve="ClassifierTypes" />
                  <node concept="37vLTw" id="3JgCwkqCdk$" role="37wK5m">
                    <ref role="3cqZAo" node="3JgCwkq$2wp" resolve="ct" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3JgCwkqCdMm" role="3cqZAp">
          <node concept="3K4zz7" id="3JgCwkqCe22" role="3clFbG">
            <node concept="2OqwBi" id="3JgCwkqCexa" role="3K4E3e">
              <node concept="37vLTw" id="3JgCwkqCepe" role="2Oq$k0">
                <ref role="3cqZAo" node="3JgCwkqCdkv" resolve="supr" />
              </node>
              <node concept="liA8E" id="3JgCwkqCeKB" role="2OqNvi">
                <ref role="37wK5l" node="3JgCwkqB6vR" resolve="map" />
                <node concept="37vLTw" id="3JgCwkqCeOo" role="37wK5m">
                  <ref role="3cqZAo" node="3JgCwkq$2wp" resolve="ct" />
                </node>
              </node>
            </node>
            <node concept="10Nm6u" id="3JgCwkqCeQM" role="3K4GZi" />
            <node concept="3y3z36" id="3JgCwkqCdW2" role="3K4Cdx">
              <node concept="10Nm6u" id="3JgCwkqCe0d" role="3uHU7w" />
              <node concept="37vLTw" id="3JgCwkqCdMk" role="3uHU7B">
                <ref role="3cqZAo" node="3JgCwkqCdkv" resolve="supr" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3JgCwkq$2B5" role="jymVt" />
    <node concept="3HP615" id="3JgCwkqB56x" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Superclass" />
      <node concept="2tJIrI" id="3JgCwkqB6oE" role="jymVt" />
      <node concept="3clFb_" id="5s497VrgnIC" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="superclass" />
        <node concept="17QB3L" id="3_ALDc$_5nm" role="3clF45" />
        <node concept="3Tm1VV" id="5s497VrgnIF" role="1B3o_S" />
        <node concept="3clFbS" id="5s497VrgnIG" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="5s497Vrgm10" role="jymVt" />
      <node concept="3clFb_" id="3JgCwkqB6vR" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="map" />
        <node concept="37vLTG" id="3JgCwkqB6_Y" role="3clF46">
          <property role="TrG5h" value="classifierType" />
          <node concept="3uibUv" id="3JgCwkqB6B_" role="1tU5fm">
            <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
          </node>
        </node>
        <node concept="3uibUv" id="3JgCwkqB6yP" role="3clF45">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
        <node concept="3Tm1VV" id="3JgCwkqB6vU" role="1B3o_S" />
        <node concept="3clFbS" id="3JgCwkqB6vV" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="3JgCwkqB6L$" role="jymVt" />
      <node concept="3Tm1VV" id="7d$oK1$_3lo" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2GO7tyJvIIJ" role="jymVt" />
    <node concept="2YIFZL" id="3JgCwkqBzFb" role="jymVt">
      <property role="TrG5h" value="bindingFor" />
      <node concept="37vLTG" id="3JgCwkqB$4n" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3JgCwkqB$5G" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3JgCwkqB$gh" role="3clF46">
        <property role="TrG5h" value="subs" />
        <node concept="3uibUv" id="3JgCwkqB$iv" role="1tU5fm">
          <ref role="3uigEE" to="jfki:~Substitution" resolve="Substitution" />
        </node>
      </node>
      <node concept="3uibUv" id="3JgCwkqBHf4" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
        <node concept="3uibUv" id="3JgCwkqBHte" role="11_B2D">
          <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7d$oK1$_rkF" role="1B3o_S" />
      <node concept="3clFbS" id="3JgCwkqBzFf" role="3clF47">
        <node concept="1DcWWT" id="3JgCwkqB$ze" role="3cqZAp">
          <node concept="3clFbS" id="3JgCwkqB$zf" role="2LFqv$">
            <node concept="3clFbJ" id="3JgCwkqB$HZ" role="3cqZAp">
              <node concept="3clFbS" id="3JgCwkqB$I0" role="3clFbx">
                <node concept="3cpWs6" id="3JgCwkqBEk8" role="3cqZAp">
                  <node concept="10QFUN" id="3JgCwkqBH_f" role="3cqZAk">
                    <node concept="3uibUv" id="3JgCwkqBH_a" role="10QFUM">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
                      <node concept="3uibUv" id="3JgCwkqBH_b" role="11_B2D">
                        <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3JgCwkqBH_c" role="10QFUP">
                      <node concept="37vLTw" id="3JgCwkqBH_d" role="2Oq$k0">
                        <ref role="3cqZAo" node="3JgCwkqB$zi" resolve="b" />
                      </node>
                      <node concept="liA8E" id="3JgCwkqBH_e" role="2OqNvi">
                        <ref role="37wK5l" to="jfki:~Substitution.Binding.node()" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3JgCwkqB$Vh" role="3clFbw">
                <node concept="37vLTw" id="3JgCwkqB$JD" role="2Oq$k0">
                  <ref role="3cqZAo" node="3JgCwkqB$4n" resolve="name" />
                </node>
                <node concept="liA8E" id="3JgCwkqB_JQ" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="3JgCwkqBAnV" role="37wK5m">
                    <node concept="2OqwBi" id="3JgCwkqB_N8" role="2Oq$k0">
                      <node concept="37vLTw" id="3JgCwkqB_M7" role="2Oq$k0">
                        <ref role="3cqZAo" node="3JgCwkqB$zi" resolve="b" />
                      </node>
                      <node concept="liA8E" id="3JgCwkqB_Ub" role="2OqNvi">
                        <ref role="37wK5l" to="jfki:~Substitution.Binding.var()" resolve="var" />
                      </node>
                    </node>
                    <node concept="liA8E" id="56MMu0Aw8Ta" role="2OqNvi">
                      <ref role="37wK5l" to="jfki:~Node.symbol()" resolve="symbol" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3JgCwkqB$zi" role="1Duv9x">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="3JgCwkqB$zm" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution.Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="3JgCwkqB$zn" role="1DdaDG">
            <node concept="37vLTw" id="3JgCwkqB$zo" role="2Oq$k0">
              <ref role="3cqZAo" node="3JgCwkqB$gh" resolve="subs" />
            </node>
            <node concept="liA8E" id="3JgCwkqB$zp" role="2OqNvi">
              <ref role="37wK5l" to="jfki:~Substitution.bindings()" resolve="bindings" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3JgCwkqBFd2" role="3cqZAp">
          <node concept="10Nm6u" id="3JgCwkqBFd0" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VrgwLa" role="jymVt" />
    <node concept="2YIFZL" id="7d$oK1$_1Uk" role="jymVt">
      <property role="TrG5h" value="put" />
      <node concept="37vLTG" id="7d$oK1$_2SY" role="3clF46">
        <property role="TrG5h" value="classifier" />
        <node concept="17QB3L" id="7d$oK1$_2Y1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7d$oK1$_34c" role="3clF46">
        <property role="TrG5h" value="superclass" />
        <node concept="3uibUv" id="7d$oK1$_38s" role="1tU5fm">
          <ref role="3uigEE" node="3JgCwkqB56x" resolve="SubclassingTable.Superclass" />
        </node>
      </node>
      <node concept="3cqZAl" id="7d$oK1$_1Um" role="3clF45" />
      <node concept="3Tm1VV" id="7d$oK1$_1Un" role="1B3o_S" />
      <node concept="3clFbS" id="7d$oK1$_1Uo" role="3clF47">
        <node concept="3clFbF" id="7d$oK1$_45D" role="3cqZAp">
          <node concept="2OqwBi" id="7d$oK1$_4dV" role="3clFbG">
            <node concept="37vLTw" id="7d$oK1$_45C" role="2Oq$k0">
              <ref role="3cqZAo" node="3JgCwkqB8va" resolve="table" />
            </node>
            <node concept="liA8E" id="7d$oK1$_5qW" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="37vLTw" id="7d$oK1$_5yk" role="37wK5m">
                <ref role="3cqZAo" node="7d$oK1$_2SY" resolve="classifier" />
              </node>
              <node concept="37vLTw" id="7d$oK1$_5CI" role="37wK5m">
                <ref role="3cqZAo" node="7d$oK1$_34c" resolve="superclass" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7d$oK1$_0Y4" role="jymVt" />
    <node concept="Wx3nA" id="3JgCwkqB8va" role="jymVt">
      <property role="TrG5h" value="table" />
      <node concept="3Tm6S6" id="3JgCwkqB8vc" role="1B3o_S" />
      <node concept="3uibUv" id="3JgCwkqB8D5" role="1tU5fm">
        <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
        <node concept="17QB3L" id="3JgCwkqB8Fc" role="11_B2D" />
        <node concept="3uibUv" id="3JgCwkqB8KO" role="11_B2D">
          <ref role="3uigEE" node="3JgCwkqB56x" resolve="SubclassingTable.Superclass" />
        </node>
      </node>
      <node concept="2ShNRf" id="3JgCwkqB8W7" role="33vP2m">
        <node concept="1pGfFk" id="3JgCwkqB9eU" role="2ShVmc">
          <ref role="37wK5l" to="k7g3:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="17QB3L" id="3JgCwkqB9za" role="1pMfVU" />
          <node concept="3uibUv" id="3JgCwkqB9ND" role="1pMfVU">
            <ref role="3uigEE" node="3JgCwkqB56x" resolve="SubclassingTable.Superclass" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VrgyWN" role="jymVt" />
    <node concept="2tJIrI" id="5s497Vrgttd" role="jymVt" />
    <node concept="3Tm1VV" id="3JgCwkq$25w" role="1B3o_S" />
  </node>
</model>

