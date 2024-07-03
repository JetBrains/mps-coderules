<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:75494708-a5bf-40c3-8a06-1176e662985f(jetbrains.mps.lang.coderules.terms)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="cof4" ref="r:0a9d1d47-250c-4f98-8962-b65edf8b0721(jetbrains.mps.logic.dataform)" />
    <import index="yt73" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.unification(jetbrains.mps.logic.reactor/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1184963466173" name="jetbrains.mps.baseLanguage.collections.structure.ToArrayOperation" flags="nn" index="3_kTaI" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="1RYTbd6oE5l">
    <property role="TrG5h" value="TermUtil" />
    <node concept="2tJIrI" id="1RYTbd6oE5P" role="jymVt" />
    <node concept="Wx3nA" id="1RYTbd6oE68" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="DECLARATION" />
      <node concept="3Tm1VV" id="1RYTbd6oE6u" role="1B3o_S" />
      <node concept="3uibUv" id="1RYTbd6oICU" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="1RYTbd6oE7S" role="33vP2m">
        <property role="Xl_RC" value="_term" />
      </node>
    </node>
    <node concept="2tJIrI" id="1RYTbd6oEa8" role="jymVt" />
    <node concept="Wx3nA" id="1RYTbd6oE9B" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="SPECIFICATION" />
      <node concept="3Tm1VV" id="1RYTbd6oE9C" role="1B3o_S" />
      <node concept="3uibUv" id="1RYTbd6oIJx" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="1RYTbd6oE9E" role="33vP2m">
        <property role="Xl_RC" value="_subterm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1RYTbd6E3Lj" role="jymVt" />
    <node concept="2YIFZL" id="1RYTbd6E3Mh" role="jymVt">
      <property role="TrG5h" value="createSpecTerm" />
      <node concept="37vLTG" id="1RYTbd6E3Ql" role="3clF46">
        <property role="TrG5h" value="spec" />
        <node concept="3uibUv" id="1RYTbd6E3QL" role="1tU5fm">
          <ref role="3uigEE" to="cof4:5JQSuNswOXL" resolve="TermNode" />
        </node>
      </node>
      <node concept="37vLTG" id="1RYTbd6E3P6" role="3clF46">
        <property role="TrG5h" value="declaration" />
        <node concept="17QB3L" id="1RYTbd6E3Pu" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1RYTbd6E3Re" role="3clF46">
        <property role="TrG5h" value="contents" />
        <node concept="8X2XB" id="1RYTbd6E3SK" role="1tU5fm">
          <node concept="3uibUv" id="1RYTbd6E3Sg" role="8Xvag">
            <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1RYTbd6E3MV" role="3clF45">
        <ref role="3uigEE" to="cof4:5JQSuNswOXL" resolve="TermNode" />
      </node>
      <node concept="3Tm1VV" id="1RYTbd6E3Mk" role="1B3o_S" />
      <node concept="3clFbS" id="1RYTbd6E3Ml" role="3clF47">
        <node concept="3cpWs8" id="1RYTbd6Ea_W" role="3cqZAp">
          <node concept="3cpWsn" id="1RYTbd6Ea_X" role="3cpWs9">
            <property role="TrG5h" value="newContents" />
            <node concept="_YKpA" id="1RYTbd6Ea_4" role="1tU5fm">
              <node concept="3uibUv" id="1RYTbd6Ea_7" role="_ZDj9">
                <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
              </node>
            </node>
            <node concept="2ShNRf" id="1RYTbd6Ea_Y" role="33vP2m">
              <node concept="Tc6Ow" id="1RYTbd6Ea_Z" role="2ShVmc">
                <node concept="3uibUv" id="1RYTbd6EaA0" role="HW$YZ">
                  <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RYTbd6EgKq" role="3cqZAp">
          <node concept="2OqwBi" id="1RYTbd6Ehc4" role="3clFbG">
            <node concept="37vLTw" id="1RYTbd6EgKo" role="2Oq$k0">
              <ref role="3cqZAo" node="1RYTbd6Ea_X" resolve="newContents" />
            </node>
            <node concept="TSZUe" id="1RYTbd6Eh$H" role="2OqNvi">
              <node concept="2YIFZM" id="1RYTbd6E4dX" role="25WWJ7">
                <ref role="1Pybhc" to="cof4:1msb0mq99GH" resolve="ValueRole" />
                <ref role="37wK5l" to="cof4:6cHSm2DiUE1" resolve="create" />
                <node concept="37vLTw" id="1RYTbd6Eh_W" role="37wK5m">
                  <ref role="3cqZAo" node="1RYTbd6oE68" resolve="DECLARATION" />
                </node>
                <node concept="2YIFZM" id="1RYTbd6E4OO" role="37wK5m">
                  <ref role="37wK5l" to="cof4:5JQSuNsxb_I" resolve="create" />
                  <ref role="1Pybhc" to="cof4:2xQ7eRAD2dj" resolve="Value" />
                  <node concept="37vLTw" id="1RYTbd6E50m" role="37wK5m">
                    <ref role="3cqZAo" node="1RYTbd6E3P6" resolve="declaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RYTbd6EbLy" role="3cqZAp">
          <node concept="2OqwBi" id="1RYTbd6Eclm" role="3clFbG">
            <node concept="37vLTw" id="1RYTbd6EbLw" role="2Oq$k0">
              <ref role="3cqZAo" node="1RYTbd6Ea_X" resolve="newContents" />
            </node>
            <node concept="X8dFx" id="1RYTbd6EcM1" role="2OqNvi">
              <node concept="2OqwBi" id="1RYTbd6EcZo" role="25WWJ7">
                <node concept="37vLTw" id="1RYTbd6EcRD" role="2Oq$k0">
                  <ref role="3cqZAo" node="1RYTbd6E3Re" resolve="contents" />
                </node>
                <node concept="39bAoz" id="1RYTbd6Edz9" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RYTbd6Ea6D" role="3cqZAp">
          <node concept="2OqwBi" id="1RYTbd6Eb3X" role="3clFbG">
            <node concept="37vLTw" id="1RYTbd6EaA1" role="2Oq$k0">
              <ref role="3cqZAo" node="1RYTbd6Ea_X" resolve="newContents" />
            </node>
            <node concept="TSZUe" id="1RYTbd6Ebru" role="2OqNvi">
              <node concept="2YIFZM" id="1RYTbd6EnAA" role="25WWJ7">
                <ref role="1Pybhc" to="cof4:6YPNC4NYnau" resolve="ChildRole" />
                <ref role="37wK5l" to="cof4:6YPNC4NYnI9" resolve="create" />
                <node concept="37vLTw" id="1RYTbd6EnTq" role="37wK5m">
                  <ref role="3cqZAo" node="1RYTbd6oE9B" resolve="SPECIFICATION" />
                </node>
                <node concept="37vLTw" id="1RYTbd6Ep7h" role="37wK5m">
                  <ref role="3cqZAo" node="1RYTbd6E3Ql" resolve="spec" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RYTbd6E3Ty" role="3cqZAp">
          <node concept="2YIFZM" id="1RYTbd6E3UM" role="3clFbG">
            <ref role="37wK5l" to="cof4:1RYTbd66m3S" resolve="create" />
            <ref role="1Pybhc" to="cof4:5JQSuNswOXL" resolve="TermNode" />
            <node concept="2OqwBi" id="1RYTbd6EemB" role="37wK5m">
              <node concept="37vLTw" id="1RYTbd6Eebr" role="2Oq$k0">
                <ref role="3cqZAo" node="1RYTbd6Ea_X" resolve="newContents" />
              </node>
              <node concept="3_kTaI" id="1RYTbd6EeNL" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1RYTbd6oE5U" role="jymVt" />
    <node concept="2YIFZL" id="1RYTbd6Ek9q" role="jymVt">
      <property role="TrG5h" value="createClosedTerm" />
      <node concept="37vLTG" id="1RYTbd6Ek9r" role="3clF46">
        <property role="TrG5h" value="declaration" />
        <node concept="17QB3L" id="1RYTbd6Ek9s" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1RYTbd6Ek9v" role="3clF46">
        <property role="TrG5h" value="contents" />
        <node concept="8X2XB" id="1RYTbd6Ek9w" role="1tU5fm">
          <node concept="3uibUv" id="1RYTbd6Ek9x" role="8Xvag">
            <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1RYTbd6Ek9y" role="3clF45">
        <ref role="3uigEE" to="cof4:5JQSuNswOXL" resolve="TermNode" />
      </node>
      <node concept="3Tm1VV" id="1RYTbd6Ek9z" role="1B3o_S" />
      <node concept="3clFbS" id="1RYTbd6Ek9$" role="3clF47">
        <node concept="3cpWs8" id="1RYTbd6Ek9_" role="3cqZAp">
          <node concept="3cpWsn" id="1RYTbd6Ek9A" role="3cpWs9">
            <property role="TrG5h" value="newContents" />
            <node concept="_YKpA" id="1RYTbd6Ek9B" role="1tU5fm">
              <node concept="3uibUv" id="1RYTbd6Ek9C" role="_ZDj9">
                <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
              </node>
            </node>
            <node concept="2ShNRf" id="1RYTbd6Ek9D" role="33vP2m">
              <node concept="Tc6Ow" id="1RYTbd6Ek9E" role="2ShVmc">
                <node concept="3uibUv" id="1RYTbd6Ek9F" role="HW$YZ">
                  <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RYTbd6Ek9G" role="3cqZAp">
          <node concept="2OqwBi" id="1RYTbd6Ek9H" role="3clFbG">
            <node concept="37vLTw" id="1RYTbd6Ek9I" role="2Oq$k0">
              <ref role="3cqZAo" node="1RYTbd6Ek9A" resolve="newContents" />
            </node>
            <node concept="TSZUe" id="1RYTbd6Ek9J" role="2OqNvi">
              <node concept="2YIFZM" id="1RYTbd6Ek9K" role="25WWJ7">
                <ref role="1Pybhc" to="cof4:1msb0mq99GH" resolve="ValueRole" />
                <ref role="37wK5l" to="cof4:6cHSm2DiUE1" resolve="create" />
                <node concept="37vLTw" id="1RYTbd6Ek9L" role="37wK5m">
                  <ref role="3cqZAo" node="1RYTbd6oE68" resolve="DECLARATION" />
                </node>
                <node concept="2YIFZM" id="1RYTbd6Ek9M" role="37wK5m">
                  <ref role="37wK5l" to="cof4:5JQSuNsxb_I" resolve="create" />
                  <ref role="1Pybhc" to="cof4:2xQ7eRAD2dj" resolve="Value" />
                  <node concept="37vLTw" id="1RYTbd6Ek9N" role="37wK5m">
                    <ref role="3cqZAo" node="1RYTbd6Ek9r" resolve="declaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RYTbd6Ek9T" role="3cqZAp">
          <node concept="2OqwBi" id="1RYTbd6Ek9U" role="3clFbG">
            <node concept="37vLTw" id="1RYTbd6Ek9V" role="2Oq$k0">
              <ref role="3cqZAo" node="1RYTbd6Ek9A" resolve="newContents" />
            </node>
            <node concept="X8dFx" id="1RYTbd6Ek9W" role="2OqNvi">
              <node concept="2OqwBi" id="1RYTbd6Ek9X" role="25WWJ7">
                <node concept="37vLTw" id="1RYTbd6Ek9Y" role="2Oq$k0">
                  <ref role="3cqZAo" node="1RYTbd6Ek9v" resolve="contents" />
                </node>
                <node concept="39bAoz" id="1RYTbd6Ek9Z" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RYTbd6Eka0" role="3cqZAp">
          <node concept="2YIFZM" id="1RYTbd6Eka1" role="3clFbG">
            <ref role="37wK5l" to="cof4:1RYTbd66m3S" resolve="create" />
            <ref role="1Pybhc" to="cof4:5JQSuNswOXL" resolve="TermNode" />
            <node concept="2OqwBi" id="1RYTbd6Eka2" role="37wK5m">
              <node concept="37vLTw" id="1RYTbd6Eka3" role="2Oq$k0">
                <ref role="3cqZAo" node="1RYTbd6Ek9A" resolve="newContents" />
              </node>
              <node concept="3_kTaI" id="1RYTbd6Eka4" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1RYTbd6EFGp" role="jymVt" />
    <node concept="2YIFZL" id="1RYTbd6EEG1" role="jymVt">
      <property role="TrG5h" value="createOpenTerm" />
      <node concept="37vLTG" id="1RYTbd6EEG2" role="3clF46">
        <property role="TrG5h" value="declaration" />
        <node concept="17QB3L" id="1RYTbd6EEG3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1RYTbd6EEG4" role="3clF46">
        <property role="TrG5h" value="contents" />
        <node concept="8X2XB" id="1RYTbd6EEG5" role="1tU5fm">
          <node concept="3uibUv" id="1RYTbd6EEG6" role="8Xvag">
            <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1RYTbd6EEG7" role="3clF45">
        <ref role="3uigEE" to="cof4:5JQSuNswOXL" resolve="TermNode" />
      </node>
      <node concept="3Tm1VV" id="1RYTbd6EEG8" role="1B3o_S" />
      <node concept="3clFbS" id="1RYTbd6EEG9" role="3clF47">
        <node concept="3cpWs8" id="1RYTbd6EEGa" role="3cqZAp">
          <node concept="3cpWsn" id="1RYTbd6EEGb" role="3cpWs9">
            <property role="TrG5h" value="newContents" />
            <node concept="_YKpA" id="1RYTbd6EEGc" role="1tU5fm">
              <node concept="3uibUv" id="1RYTbd6EEGd" role="_ZDj9">
                <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
              </node>
            </node>
            <node concept="2ShNRf" id="1RYTbd6EEGe" role="33vP2m">
              <node concept="Tc6Ow" id="1RYTbd6EEGf" role="2ShVmc">
                <node concept="3uibUv" id="1RYTbd6EEGg" role="HW$YZ">
                  <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RYTbd6EEGh" role="3cqZAp">
          <node concept="2OqwBi" id="1RYTbd6EEGi" role="3clFbG">
            <node concept="37vLTw" id="1RYTbd6EEGj" role="2Oq$k0">
              <ref role="3cqZAo" node="1RYTbd6EEGb" resolve="newContents" />
            </node>
            <node concept="TSZUe" id="1RYTbd6EEGk" role="2OqNvi">
              <node concept="2YIFZM" id="1RYTbd6EEGl" role="25WWJ7">
                <ref role="1Pybhc" to="cof4:1msb0mq99GH" resolve="ValueRole" />
                <ref role="37wK5l" to="cof4:6cHSm2DiUE1" resolve="create" />
                <node concept="37vLTw" id="1RYTbd6EEGm" role="37wK5m">
                  <ref role="3cqZAo" node="1RYTbd6oE68" resolve="DECLARATION" />
                </node>
                <node concept="2YIFZM" id="1RYTbd6EEGn" role="37wK5m">
                  <ref role="37wK5l" to="cof4:5JQSuNsxb_I" resolve="create" />
                  <ref role="1Pybhc" to="cof4:2xQ7eRAD2dj" resolve="Value" />
                  <node concept="37vLTw" id="1RYTbd6EEGo" role="37wK5m">
                    <ref role="3cqZAo" node="1RYTbd6EEG2" resolve="declaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RYTbd6EEGp" role="3cqZAp">
          <node concept="2OqwBi" id="1RYTbd6EEGq" role="3clFbG">
            <node concept="37vLTw" id="1RYTbd6EEGr" role="2Oq$k0">
              <ref role="3cqZAo" node="1RYTbd6EEGb" resolve="newContents" />
            </node>
            <node concept="X8dFx" id="1RYTbd6EEGs" role="2OqNvi">
              <node concept="2OqwBi" id="1RYTbd6EEGt" role="25WWJ7">
                <node concept="37vLTw" id="1RYTbd6EEGu" role="2Oq$k0">
                  <ref role="3cqZAo" node="1RYTbd6EEG4" resolve="contents" />
                </node>
                <node concept="39bAoz" id="1RYTbd6EEGv" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1RYTbd6EEGw" role="3cqZAp">
          <node concept="1PaTwC" id="1RYTbd6EEGx" role="1aUNEU">
            <node concept="3oM_SD" id="1RYTbd6EEGy" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="1RYTbd6EEGz" role="1PaTwD">
              <property role="3oM_SC" value="create" />
            </node>
            <node concept="3oM_SD" id="1RYTbd6EEG$" role="1PaTwD">
              <property role="3oM_SC" value="wildcard" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RYTbd6EEG_" role="3cqZAp">
          <node concept="2OqwBi" id="1RYTbd6EEGA" role="3clFbG">
            <node concept="37vLTw" id="1RYTbd6EEGB" role="2Oq$k0">
              <ref role="3cqZAo" node="1RYTbd6EEGb" resolve="newContents" />
            </node>
            <node concept="TSZUe" id="1RYTbd6EEGC" role="2OqNvi">
              <node concept="2YIFZM" id="1RYTbd6EEGD" role="25WWJ7">
                <ref role="1Pybhc" to="cof4:6YPNC4NYnau" resolve="ChildRole" />
                <ref role="37wK5l" to="cof4:6YPNC4NYnI9" resolve="create" />
                <node concept="37vLTw" id="1RYTbd6EEGE" role="37wK5m">
                  <ref role="3cqZAo" node="1RYTbd6oE9B" resolve="SPECIFICATION" />
                </node>
                <node concept="2YIFZM" id="1RYTbd6EEGF" role="37wK5m">
                  <ref role="37wK5l" to="cof4:1RYTbd66m3S" resolve="create" />
                  <ref role="1Pybhc" to="cof4:5JQSuNswOXL" resolve="TermNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RYTbd6EEGG" role="3cqZAp">
          <node concept="2YIFZM" id="1RYTbd6EEGH" role="3clFbG">
            <ref role="37wK5l" to="cof4:1RYTbd66m3S" resolve="create" />
            <ref role="1Pybhc" to="cof4:5JQSuNswOXL" resolve="TermNode" />
            <node concept="2OqwBi" id="1RYTbd6EEGI" role="37wK5m">
              <node concept="37vLTw" id="1RYTbd6EEGJ" role="2Oq$k0">
                <ref role="3cqZAo" node="1RYTbd6EEGb" resolve="newContents" />
              </node>
              <node concept="3_kTaI" id="1RYTbd6EEGK" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1RYTbd7gcnR" role="jymVt" />
    <node concept="2YIFZL" id="1RYTbd7gcCu" role="jymVt">
      <property role="TrG5h" value="getSpec" />
      <node concept="37vLTG" id="1RYTbd7gcKe" role="3clF46">
        <property role="TrG5h" value="term" />
        <node concept="3uibUv" id="1RYTbd7gcLF" role="1tU5fm">
          <ref role="3uigEE" to="cof4:5JQSuNswOXL" resolve="TermNode" />
        </node>
      </node>
      <node concept="3uibUv" id="1RYTbd7gqm6" role="3clF45">
        <ref role="3uigEE" to="cof4:5JQSuNswOXL" resolve="TermNode" />
      </node>
      <node concept="3Tm1VV" id="1RYTbd7gcCx" role="1B3o_S" />
      <node concept="3clFbS" id="1RYTbd7gcCy" role="3clF47">
        <node concept="3cpWs8" id="1RYTbd7gfJW" role="3cqZAp">
          <node concept="3cpWsn" id="1RYTbd7gfJX" role="3cpWs9">
            <property role="TrG5h" value="arguments" />
            <node concept="3vKaQO" id="1RYTbd7gfYL" role="1tU5fm">
              <node concept="3qUE_q" id="1RYTbd7gipt" role="3O5elw">
                <node concept="3uibUv" id="1RYTbd7giER" role="3qUE_r">
                  <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1RYTbd7gfJY" role="33vP2m">
              <node concept="37vLTw" id="1RYTbd7gfJZ" role="2Oq$k0">
                <ref role="3cqZAo" node="1RYTbd7gcKe" resolve="term" />
              </node>
              <node concept="liA8E" id="1RYTbd7gfK0" role="2OqNvi">
                <ref role="37wK5l" to="cof4:5JQSuNswjSg" resolve="arguments" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1RYTbd7gmHq" role="3cqZAp">
          <node concept="3cpWsn" id="1RYTbd7gmHr" role="3cpWs9">
            <property role="TrG5h" value="last" />
            <node concept="3uibUv" id="1RYTbd7gmHs" role="1tU5fm">
              <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
            </node>
            <node concept="2OqwBi" id="1RYTbd7gmHt" role="33vP2m">
              <node concept="37vLTw" id="1RYTbd7gmHu" role="2Oq$k0">
                <ref role="3cqZAo" node="1RYTbd7gfJX" resolve="arguments" />
              </node>
              <node concept="1yVyf7" id="1RYTbd7gmHv" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1RYTbd7ghjZ" role="3cqZAp">
          <node concept="3clFbS" id="1RYTbd7ghkk" role="3clFbx">
            <node concept="3cpWs8" id="1RYTbd7gpNc" role="3cqZAp">
              <node concept="3cpWsn" id="1RYTbd7gpNd" role="3cpWs9">
                <property role="TrG5h" value="spec" />
                <node concept="3uibUv" id="1RYTbd7gpKG" role="1tU5fm">
                  <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
                </node>
                <node concept="2OqwBi" id="1RYTbd7gpNe" role="33vP2m">
                  <node concept="1eOMI4" id="1RYTbd7gpNf" role="2Oq$k0">
                    <node concept="10QFUN" id="1RYTbd7gpNg" role="1eOMHV">
                      <node concept="3uibUv" id="1RYTbd7gpNh" role="10QFUM">
                        <ref role="3uigEE" to="cof4:6YPNC4NYnau" resolve="ChildRole" />
                      </node>
                      <node concept="37vLTw" id="1RYTbd7gpNi" role="10QFUP">
                        <ref role="3cqZAo" node="1RYTbd7gmHr" resolve="last" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1RYTbd7gpNj" role="2OqNvi">
                    <ref role="37wK5l" to="cof4:6YPNC4OE9DW" resolve="argument" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1RYTbd7gBTK" role="3cqZAp">
              <node concept="3clFbS" id="1RYTbd7gBTM" role="3clFbx">
                <node concept="3cpWs6" id="1RYTbd7gCsE" role="3cqZAp">
                  <node concept="10QFUN" id="1RYTbd7gDaX" role="3cqZAk">
                    <node concept="3uibUv" id="1RYTbd7gDaV" role="10QFUM">
                      <ref role="3uigEE" to="cof4:5JQSuNswOXL" resolve="TermNode" />
                    </node>
                    <node concept="37vLTw" id="1RYTbd7gDk4" role="10QFUP">
                      <ref role="3cqZAo" node="1RYTbd7gpNd" resolve="spec" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="1RYTbd7gCm5" role="3clFbw">
                <node concept="3uibUv" id="1RYTbd7gCq9" role="2ZW6by">
                  <ref role="3uigEE" to="cof4:5JQSuNswOXL" resolve="TermNode" />
                </node>
                <node concept="37vLTw" id="1RYTbd7gC2J" role="2ZW6bz">
                  <ref role="3cqZAo" node="1RYTbd7gpNd" resolve="spec" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1RYTbd7gDt5" role="3cqZAp">
              <node concept="3clFbS" id="1RYTbd7gDt7" role="3clFbx">
                <node concept="3cpWs6" id="1RYTbd7gDEt" role="3cqZAp">
                  <node concept="10QFUN" id="1RYTbd7gEU3" role="3cqZAk">
                    <node concept="2OqwBi" id="1RYTbd7gETX" role="10QFUP">
                      <node concept="1eOMI4" id="1RYTbd7gETY" role="2Oq$k0">
                        <node concept="10QFUN" id="1RYTbd7gETZ" role="1eOMHV">
                          <node concept="37vLTw" id="1RYTbd7gEU0" role="10QFUP">
                            <ref role="3cqZAo" node="1RYTbd7gpNd" resolve="spec" />
                          </node>
                          <node concept="3uibUv" id="1RYTbd7gEU1" role="10QFUM">
                            <ref role="3uigEE" to="cof4:uNmovXiEd4" resolve="Variable" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1RYTbd7gEU2" role="2OqNvi">
                        <ref role="37wK5l" to="yt73:~Term.get()" resolve="get" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="1RYTbd7gETW" role="10QFUM">
                      <ref role="3uigEE" to="cof4:5JQSuNswOXL" resolve="TermNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="1RYTbd7gDAz" role="3clFbw">
                <node concept="1eOMI4" id="1RYTbd7gDA$" role="3uHU7B">
                  <node concept="2ZW3vV" id="1RYTbd7gDA_" role="1eOMHV">
                    <node concept="3uibUv" id="1RYTbd7gDAA" role="2ZW6by">
                      <ref role="3uigEE" to="cof4:uNmovXiEd4" resolve="Variable" />
                    </node>
                    <node concept="37vLTw" id="1RYTbd7gDAB" role="2ZW6bz">
                      <ref role="3cqZAo" node="1RYTbd7gpNd" resolve="spec" />
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="1RYTbd7gDAD" role="3uHU7w">
                  <node concept="2OqwBi" id="1RYTbd7gDAE" role="1eOMHV">
                    <node concept="1eOMI4" id="1RYTbd7gDAF" role="2Oq$k0">
                      <node concept="10QFUN" id="1RYTbd7gDAG" role="1eOMHV">
                        <node concept="3uibUv" id="1RYTbd7gDAH" role="10QFUM">
                          <ref role="3uigEE" to="cof4:uNmovXiEd4" resolve="Variable" />
                        </node>
                        <node concept="37vLTw" id="1RYTbd7gDAI" role="10QFUP">
                          <ref role="3cqZAo" node="1RYTbd7gpNd" resolve="spec" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1RYTbd7gDAJ" role="2OqNvi">
                      <ref role="37wK5l" to="cof4:4p5SefkhK7Y" resolve="isBound" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="1RYTbd7gkuL" role="3clFbw">
            <node concept="2OqwBi" id="1RYTbd7gkPH" role="3uHU7w">
              <node concept="37vLTw" id="1RYTbd7gkBv" role="2Oq$k0">
                <ref role="3cqZAo" node="1RYTbd6oE9B" resolve="SPECIFICATION" />
              </node>
              <node concept="liA8E" id="1RYTbd7glcI" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="2OqwBi" id="1RYTbd7$4eW" role="37wK5m">
                  <node concept="2OqwBi" id="1RYTbd7gn1Q" role="2Oq$k0">
                    <node concept="1eOMI4" id="1RYTbd7$1Lf" role="2Oq$k0">
                      <node concept="10QFUN" id="1RYTbd7$1Le" role="1eOMHV">
                        <node concept="37vLTw" id="1RYTbd7$1Ld" role="10QFUP">
                          <ref role="3cqZAo" node="1RYTbd7gmHr" resolve="last" />
                        </node>
                        <node concept="3uibUv" id="1RYTbd7$1N2" role="10QFUM">
                          <ref role="3uigEE" to="cof4:6YPNC4NYnau" resolve="ChildRole" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1RYTbd7gn9v" role="2OqNvi">
                      <ref role="37wK5l" to="cof4:1RYTbd7zQ_K" resolve="symbol" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1RYTbd7$4mw" role="2OqNvi">
                    <ref role="37wK5l" to="cof4:1RYTbd7$2p6" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="1RYTbd7gh9m" role="3uHU7B">
              <node concept="3uibUv" id="1RYTbd7gheH" role="2ZW6by">
                <ref role="3uigEE" to="cof4:6YPNC4NYnau" resolve="ChildRole" />
              </node>
              <node concept="37vLTw" id="1RYTbd7gmHx" role="2ZW6bz">
                <ref role="3cqZAo" node="1RYTbd7gmHr" resolve="last" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1RYTbd7gFhg" role="3cqZAp">
          <node concept="10Nm6u" id="1RYTbd7gFuq" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1RYTbd6Ek9p" role="jymVt" />
    <node concept="2YIFZL" id="1RYTbd7gud7" role="jymVt">
      <property role="TrG5h" value="hasSpecification" />
      <node concept="37vLTG" id="1RYTbd7gusH" role="3clF46">
        <property role="TrG5h" value="term" />
        <node concept="3uibUv" id="1RYTbd7guuz" role="1tU5fm">
          <ref role="3uigEE" to="cof4:5JQSuNswOXL" resolve="TermNode" />
        </node>
      </node>
      <node concept="10P_77" id="1RYTbd7guim" role="3clF45" />
      <node concept="3Tm1VV" id="1RYTbd7guda" role="1B3o_S" />
      <node concept="3clFbS" id="1RYTbd7gudb" role="3clF47">
        <node concept="3clFbF" id="1RYTbd7gFGU" role="3cqZAp">
          <node concept="3y3z36" id="1RYTbd7gFWg" role="3clFbG">
            <node concept="10Nm6u" id="1RYTbd7gG0u" role="3uHU7w" />
            <node concept="1rXfSq" id="1RYTbd7gFGS" role="3uHU7B">
              <ref role="37wK5l" node="1RYTbd7gcCu" resolve="getSpec" />
              <node concept="37vLTw" id="1RYTbd7gG7T" role="37wK5m">
                <ref role="3cqZAo" node="1RYTbd7gusH" resolve="term" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1RYTbd6EhMv" role="jymVt" />
    <node concept="3Tm1VV" id="1RYTbd6oE5m" role="1B3o_S" />
  </node>
</model>

