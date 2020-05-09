<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:28026be8-9bf8-4f54-9319-0ca8a6d1299d(typechecking.samples.baseLanguage.helloWorld)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="0fda14cc-a416-4c81-869a-2175d8b3325d" name="jetbrains.mps.baseLanguageExt" version="0" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534555686" name="jetbrains.mps.baseLanguage.structure.CharType" flags="in" index="10Pfzv" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
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
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="3Qp4N06bAlL">
    <property role="TrG5h" value="HelloWorld" />
    <node concept="2tJIrI" id="3Qp4N06bAlM" role="jymVt" />
    <node concept="2YIFZL" id="3Qp4N06bAlN" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="3Qp4N06bAlO" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="1X3_iC" id="1j288BfG4z_" role="lGtFl">
          <property role="3V$3am" value="type" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/4972933694980447171/5680397130376446158" />
          <node concept="10Q1$e" id="3Qp4N06bAlP" role="8Wnug">
            <node concept="17QB3L" id="3Qp4N06bAlQ" role="10Q1$1" />
          </node>
        </node>
        <node concept="3uibUv" id="1j288BfG4zZ" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="1j288BfG4$Z" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3Qp4N06bAlR" role="3clF45" />
      <node concept="3Tm1VV" id="3Qp4N06bAlS" role="1B3o_S" />
      <node concept="3clFbS" id="3Qp4N06bAlT" role="3clF47">
        <node concept="3clFbH" id="3Qp4N06bAlU" role="3cqZAp" />
        <node concept="3clFbF" id="3Qp4N06bAlV" role="3cqZAp">
          <node concept="2OqwBi" id="3Qp4N06bAlW" role="3clFbG">
            <node concept="10M0yZ" id="3Qp4N06bAlX" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="3Qp4N06bAlY" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="Xl_RD" id="3Qp4N06bAlZ" role="37wK5m">
                <property role="Xl_RC" value="Hello, world!" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Qp4N06bAm0" role="3cqZAp" />
        <node concept="3clFbF" id="3xj1Usc_LDz" role="3cqZAp">
          <node concept="2OqwBi" id="6flDoy9UcrU" role="3clFbG">
            <node concept="2YIFZM" id="3xj1Usc_M0M" role="2Oq$k0">
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <ref role="37wK5l" to="wyt6:~System.getenv()" resolve="getenv" />
            </node>
            <node concept="liA8E" id="6flDoy9UcGV" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="Xl_RD" id="6flDoy9UcNr" role="37wK5m">
                <property role="Xl_RC" value="MPS_HOME" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6Yb9hAqKtVR" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="6F9w2VbPHVD" role="jymVt" />
    <node concept="3clFb_" id="xaaVXuKsdJ" role="jymVt">
      <property role="TrG5h" value="foo2" />
      <node concept="37vLTG" id="xaaVXuNF5O" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="10P_77" id="xaaVXuNF6C" role="1tU5fm" />
      </node>
      <node concept="10Oyi0" id="xaaVXuKsk$" role="3clF45" />
      <node concept="3Tm1VV" id="xaaVXuKsdM" role="1B3o_S" />
      <node concept="3clFbS" id="xaaVXuKsdN" role="3clF47">
        <node concept="3cpWs8" id="xaaVXuKshQ" role="3cqZAp">
          <node concept="3cpWsn" id="xaaVXuKshT" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="xaaVXuKshP" role="1tU5fm" />
            <node concept="3cmrfG" id="xaaVXuTSli" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="xaaVXuRNWp" role="3cqZAp">
          <node concept="3clFbS" id="xaaVXuRNWr" role="3clFbx">
            <node concept="3clFbH" id="xaaVXuRNWq" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="xaaVXuRNXB" role="3clFbw">
            <ref role="3cqZAo" node="xaaVXuNF5O" resolve="b" />
          </node>
          <node concept="9aQIb" id="xaaVXuRNZm" role="9aQIa">
            <node concept="3clFbS" id="xaaVXuRNZn" role="9aQI4">
              <node concept="3clFbF" id="xaaVXuRO0l" role="3cqZAp">
                <node concept="37vLTI" id="xaaVXuTipu" role="3clFbG">
                  <node concept="37vLTw" id="xaaVXuRO0k" role="37vLTJ">
                    <ref role="3cqZAo" node="xaaVXuKshT" resolve="i" />
                  </node>
                  <node concept="3cpWs3" id="xaaVXuV3uG" role="37vLTx">
                    <node concept="37vLTw" id="xaaVXuV3vH" role="3uHU7B">
                      <ref role="3cqZAo" node="xaaVXuKshT" resolve="i" />
                    </node>
                    <node concept="3cmrfG" id="xaaVXuTSm$" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xaaVXuROyH" role="3cqZAp">
          <node concept="37vLTw" id="xaaVXuTiK2" role="3clFbG">
            <ref role="3cqZAo" node="xaaVXuKshT" resolve="i" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="xaaVXuQc1F" role="jymVt" />
    <node concept="3clFb_" id="xaaVXuQbWy" role="jymVt">
      <property role="TrG5h" value="foo" />
      <node concept="37vLTG" id="xaaVXuQbWz" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="10P_77" id="xaaVXuQbW$" role="1tU5fm" />
      </node>
      <node concept="10Oyi0" id="xaaVXuQbW_" role="3clF45" />
      <node concept="3Tm1VV" id="xaaVXuQbWA" role="1B3o_S" />
      <node concept="3clFbS" id="xaaVXuQbWB" role="3clF47">
        <node concept="3cpWs8" id="xaaVXuQbWC" role="3cqZAp">
          <node concept="3cpWsn" id="xaaVXuQbWD" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="xaaVXuQbWE" role="1tU5fm" />
            <node concept="3cmrfG" id="xaaVXuQbWF" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="xaaVXuQbWG" role="3cqZAp">
          <node concept="3cpWsn" id="xaaVXuQbWH" role="3cpWs9">
            <property role="TrG5h" value="j" />
            <node concept="10Oyi0" id="xaaVXuQbWI" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="5YmBCzQR0rU" role="3cqZAp">
          <node concept="3cpWsn" id="5YmBCzQR0rX" role="3cpWs9">
            <property role="TrG5h" value="k" />
            <node concept="10Oyi0" id="5YmBCzQR0rS" role="1tU5fm" />
            <node concept="3cmrfG" id="79EwspgEGIx" role="33vP2m">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="xaaVXuQbWJ" role="3cqZAp">
          <node concept="3clFbS" id="xaaVXuQbWK" role="3clFbx">
            <node concept="3clFbF" id="xaaVXuQbWL" role="3cqZAp">
              <node concept="37vLTI" id="xaaVXuQbWM" role="3clFbG">
                <node concept="3cpWs3" id="xaaVXuQbWN" role="37vLTx">
                  <node concept="37vLTw" id="xaaVXuQbWO" role="3uHU7B">
                    <ref role="3cqZAo" node="xaaVXuQbWH" resolve="j" />
                  </node>
                  <node concept="3cmrfG" id="xaaVXuQbWP" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
                <node concept="37vLTw" id="xaaVXuQbWQ" role="37vLTJ">
                  <ref role="3cqZAo" node="xaaVXuQbWD" resolve="i" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="xaaVXuQbWR" role="3cqZAp">
              <node concept="37vLTI" id="xaaVXuQbWS" role="3clFbG">
                <node concept="3cpWs3" id="xaaVXuQbWT" role="37vLTx">
                  <node concept="37vLTw" id="xaaVXuQbWU" role="3uHU7B">
                    <ref role="3cqZAo" node="xaaVXuQbWD" resolve="i" />
                  </node>
                  <node concept="3cmrfG" id="xaaVXuQbWV" role="3uHU7w">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
                <node concept="37vLTw" id="xaaVXuQbWW" role="37vLTJ">
                  <ref role="3cqZAo" node="xaaVXuQbWD" resolve="i" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="xaaVXuQbWX" role="3cqZAp">
              <node concept="37vLTI" id="xaaVXuQbWY" role="3clFbG">
                <node concept="3cpWs3" id="xaaVXuQbWZ" role="37vLTx">
                  <node concept="3cmrfG" id="xaaVXuQbX0" role="3uHU7w">
                    <property role="3cmrfH" value="5" />
                  </node>
                  <node concept="37vLTw" id="5YmBCzQR0ty" role="3uHU7B">
                    <ref role="3cqZAo" node="5YmBCzQR0rX" resolve="k" />
                  </node>
                </node>
                <node concept="37vLTw" id="xaaVXuQbX2" role="37vLTJ">
                  <ref role="3cqZAo" node="xaaVXuQbWH" resolve="j" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="xaaVXuQbX9" role="3clFbw">
            <ref role="3cqZAo" node="xaaVXuQbWz" resolve="b" />
          </node>
          <node concept="3eNFk2" id="79EwspgE48k" role="3eNLev">
            <node concept="3clFbS" id="79EwspgE48m" role="3eOfB_">
              <node concept="3clFbF" id="79EwspgEH6m" role="3cqZAp">
                <node concept="37vLTI" id="79EwspgEHo0" role="3clFbG">
                  <node concept="3cmrfG" id="79EwspgEHoo" role="37vLTx">
                    <property role="3cmrfH" value="3" />
                  </node>
                  <node concept="37vLTw" id="79EwspgEH6k" role="37vLTJ">
                    <ref role="3cqZAo" node="5YmBCzQR0rX" resolve="k" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="79EwspgEHVc" role="3cqZAp">
                <node concept="3clFbS" id="79EwspgEHVe" role="3clFbx">
                  <node concept="3clFbF" id="79EwspgE5yp" role="3cqZAp">
                    <node concept="37vLTI" id="79EwspgE5NG" role="3clFbG">
                      <node concept="37vLTw" id="79EwspgE5yo" role="37vLTJ">
                        <ref role="3cqZAo" node="xaaVXuQbWD" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="79EwspgEGXu" role="37vLTx">
                        <ref role="3cqZAo" node="5YmBCzQR0rX" resolve="k" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="79EwspgEHVL" role="3clFbw">
                  <ref role="3cqZAo" node="xaaVXuQbWz" resolve="b" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="79EwspgE48$" role="3eO9$A">
              <node concept="37vLTw" id="79EwspgE48M" role="3fr31v">
                <ref role="3cqZAo" node="xaaVXuQbWz" resolve="b" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="79EwspgE482" role="3cqZAp" />
        <node concept="3clFbF" id="xaaVXuQbXa" role="3cqZAp">
          <node concept="3cpWs3" id="xaaVXuQbXb" role="3clFbG">
            <node concept="37vLTw" id="xaaVXuQbXc" role="3uHU7w">
              <ref role="3cqZAo" node="xaaVXuQbWH" resolve="j" />
            </node>
            <node concept="37vLTw" id="xaaVXuQbXd" role="3uHU7B">
              <ref role="3cqZAo" node="xaaVXuQbWD" resolve="i" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="xaaVXuKsaF" role="jymVt" />
    <node concept="3clFb_" id="6Yb9hAqXNiI" role="jymVt">
      <property role="TrG5h" value="bar" />
      <node concept="10Oyi0" id="5_Vai8e3Tfq" role="3clF45" />
      <node concept="3Tm1VV" id="6Yb9hAqXNiL" role="1B3o_S" />
      <node concept="3clFbS" id="6Yb9hAqXNiM" role="3clF47">
        <node concept="3cpWs8" id="6Yb9hAqXNKL" role="3cqZAp">
          <node concept="3cpWsn" id="6Yb9hAqXNKM" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="6Yb9hAqXNKN" role="1tU5fm" />
            <node concept="3cmrfG" id="5pIcDR7IZYI" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6Yb9hAqXNKP" role="3cqZAp">
          <node concept="3cpWsn" id="6Yb9hAqXNKQ" role="3cpWs9">
            <property role="TrG5h" value="j" />
            <node concept="10Oyi0" id="6Yb9hAqXNKR" role="1tU5fm" />
            <node concept="3cpWs3" id="6Yb9hAqXNKS" role="33vP2m">
              <node concept="3cmrfG" id="6Yb9hAqXNKT" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="6F9w2VbQD53" role="3uHU7B">
                <ref role="3cqZAo" node="6Yb9hAqXNKM" resolve="i" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6F9w2VbR6IJ" role="3cqZAp">
          <node concept="3clFbS" id="6F9w2VbR6IL" role="3clFbx">
            <node concept="3clFbF" id="5_Vai8e2_nS" role="3cqZAp">
              <node concept="37vLTI" id="5_Vai8e2_Vs" role="3clFbG">
                <node concept="3cpWs3" id="5_Vai8e2Aeq" role="37vLTx">
                  <node concept="3cmrfG" id="5_Vai8e2AeB" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="6F9w2VbR5tX" role="3uHU7B">
                    <ref role="3cqZAo" node="6Yb9hAqXNKQ" resolve="j" />
                  </node>
                </node>
                <node concept="37vLTw" id="5_Vai8e2_nQ" role="37vLTJ">
                  <ref role="3cqZAo" node="6Yb9hAqXNKQ" resolve="j" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="xaaVXuK5SU" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="xaaVXuK1yb" role="3clFbw">
            <node concept="3cmrfG" id="xaaVXuK1yx" role="3uHU7w">
              <property role="3cmrfH" value="42" />
            </node>
            <node concept="3cpWs3" id="xaaVXuK0TH" role="3uHU7B">
              <node concept="37vLTw" id="xaaVXuK0vT" role="3uHU7B">
                <ref role="3cqZAo" node="6Yb9hAqXNKM" resolve="i" />
              </node>
              <node concept="37vLTw" id="xaaVXuK0TU" role="3uHU7w">
                <ref role="3cqZAo" node="6Yb9hAqXNKQ" resolve="j" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="6F9w2VbRR3_" role="9aQIa">
            <node concept="3clFbS" id="6F9w2VbRR3A" role="9aQI4">
              <node concept="3clFbF" id="xaaVXuKGsb" role="3cqZAp">
                <node concept="37vLTI" id="xaaVXuKGII" role="3clFbG">
                  <node concept="3cmrfG" id="xaaVXuKGJ6" role="37vLTx">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="37vLTw" id="xaaVXuKGs9" role="37vLTJ">
                    <ref role="3cqZAo" node="6Yb9hAqXNKM" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="6F9w2VbSWsk" role="3cqZAp">
                <node concept="3clFbS" id="6F9w2VbSWsm" role="9aQI4">
                  <node concept="9aQIb" id="6F9w2VbSWud" role="3cqZAp">
                    <node concept="3clFbS" id="6F9w2VbSWuf" role="9aQI4">
                      <node concept="3clFbF" id="6F9w2VbRR4$" role="3cqZAp">
                        <node concept="37vLTI" id="6F9w2VbRRnA" role="3clFbG">
                          <node concept="3cpWs3" id="6F9w2VbRRFj" role="37vLTx">
                            <node concept="3cmrfG" id="6F9w2VbRRFw" role="3uHU7w">
                              <property role="3cmrfH" value="2" />
                            </node>
                            <node concept="37vLTw" id="6F9w2VbRRnY" role="3uHU7B">
                              <ref role="3cqZAo" node="6Yb9hAqXNKQ" resolve="j" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="6F9w2VbRRoZ" role="37vLTJ">
                            <ref role="3cqZAo" node="6Yb9hAqXNKM" resolve="i" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="xaaVXuOQvL" role="3cqZAp" />
              <node concept="3clFbF" id="xaaVXuK5UI" role="3cqZAp">
                <node concept="37vLTI" id="xaaVXuK5UJ" role="3clFbG">
                  <node concept="3cpWs3" id="xaaVXuK5UK" role="37vLTx">
                    <node concept="3cmrfG" id="xaaVXuK5UL" role="3uHU7w">
                      <property role="3cmrfH" value="3" />
                    </node>
                    <node concept="37vLTw" id="xaaVXuK5VZ" role="3uHU7B">
                      <ref role="3cqZAo" node="6Yb9hAqXNKM" resolve="i" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="xaaVXuK5UN" role="37vLTJ">
                    <ref role="3cqZAo" node="6Yb9hAqXNKM" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="xaaVXuK5TM" role="3cqZAp" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xaaVXuK38b" role="3cqZAp">
          <node concept="37vLTw" id="xaaVXuKGRE" role="3clFbG">
            <ref role="3cqZAo" node="6Yb9hAqXNKQ" resolve="j" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Yb9hAqXNAk" role="jymVt" />
    <node concept="3clFb_" id="7t5VLKHf_4i" role="jymVt">
      <property role="TrG5h" value="greeet" />
      <node concept="3uibUv" id="4JRKVCv7Fdc" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3Tm1VV" id="7t5VLKHf_4l" role="1B3o_S" />
      <node concept="3clFbS" id="7t5VLKHf_4m" role="3clF47">
        <node concept="3cpWs8" id="6Yb9hAqQ9MC" role="3cqZAp">
          <node concept="3cpWsn" id="6Yb9hAqQ9MF" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="6Yb9hAqQ9MA" role="1tU5fm" />
            <node concept="3cmrfG" id="6Yb9hAqUcTn" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6Yb9hAqQafR" role="3cqZAp">
          <node concept="3cpWsn" id="6Yb9hAqQafU" role="3cpWs9">
            <property role="TrG5h" value="j" />
            <node concept="10Oyi0" id="6Yb9hAqQafP" role="1tU5fm" />
            <node concept="3cpWs3" id="6Yb9hAqTw2x" role="33vP2m">
              <node concept="3cmrfG" id="6Yb9hAqTw2I" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="6Yb9hAqTvzp" role="3uHU7B">
                <ref role="3cqZAo" node="6Yb9hAqQ9MF" resolve="i" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Yb9hAqQO_0" role="3cqZAp">
          <node concept="37vLTI" id="6Yb9hAqQP0$" role="3clFbG">
            <node concept="3cpWs3" id="6Yb9hAqQPoz" role="37vLTx">
              <node concept="3cmrfG" id="6Yb9hAqQPoK" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="6Yb9hAqSPL5" role="3uHU7B">
                <ref role="3cqZAo" node="6Yb9hAqQafU" resolve="j" />
              </node>
            </node>
            <node concept="37vLTw" id="6Yb9hAqQO$Y" role="37vLTJ">
              <ref role="3cqZAo" node="6Yb9hAqQafU" resolve="j" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5bC6UNlLkml" role="3cqZAp">
          <node concept="3cpWsn" id="5bC6UNlLkmm" role="3cpWs9">
            <property role="TrG5h" value="res1" />
            <node concept="3uibUv" id="5bC6UNlLkmn" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3g$8GQBMAw9" role="3cqZAp">
          <node concept="3cpWsn" id="3g$8GQBMAwa" role="3cpWs9">
            <property role="TrG5h" value="res2" />
            <node concept="3uibUv" id="3g$8GQBMAJi" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="3K4zz7" id="3g$8GQBMAwb" role="33vP2m">
              <node concept="Xl_RD" id="3g$8GQBMAwc" role="3K4E3e">
                <property role="Xl_RC" value="wow" />
              </node>
              <node concept="Xl_RD" id="3g$8GQBMAwd" role="3K4GZi">
                <property role="Xl_RC" value="foo" />
              </node>
              <node concept="2OqwBi" id="3g$8GQBPjso" role="3K4Cdx">
                <node concept="37vLTw" id="3g$8GQBMAwg" role="2Oq$k0">
                  <ref role="3cqZAo" node="5bC6UNlLkmm" resolve="res1" />
                </node>
                <node concept="liA8E" id="3g$8GQBPjvy" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="Xl_RD" id="3g$8GQBPjwK" role="37wK5m">
                    <property role="Xl_RC" value="bcd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4EfgX2EJmvH" role="3cqZAp">
          <node concept="3clFbS" id="4EfgX2EJmvJ" role="3clFbx">
            <node concept="3cpWs6" id="4EfgX2EJmxt" role="3cqZAp">
              <node concept="Xl_RD" id="6Kcfpq7_lrL" role="3cqZAk">
                <property role="Xl_RC" value="asd" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4EfgX2EJmCK" role="3clFbw">
            <node concept="10M0yZ" id="3g$8GQBT7fi" role="3uHU7w">
              <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
              <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
            </node>
            <node concept="10M0yZ" id="3g$8GQBT7cU" role="3uHU7B">
              <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
              <ref role="3cqZAo" to="wyt6:~Boolean.FALSE" resolve="FALSE" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6Yb9hAqNzAJ" role="3cqZAp">
          <node concept="Xl_RD" id="6Yb9hAqNzAK" role="3cqZAk">
            <property role="Xl_RC" value="Hello" />
          </node>
        </node>
        <node concept="3clFbJ" id="6Yb9hAqN_gQ" role="3cqZAp">
          <node concept="3clFbS" id="6Yb9hAqN_gS" role="3clFbx">
            <node concept="3cpWs6" id="6Yb9hAqN__w" role="3cqZAp">
              <node concept="Xl_RD" id="6Yb9hAqN_A0" role="3cqZAk">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
          <node concept="3clFbT" id="6Yb9hAqN_vu" role="3clFbw">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="W6bnNduvXA" role="jymVt" />
    <node concept="3clFb_" id="W6bnNduwiN" role="jymVt">
      <property role="TrG5h" value="foo" />
      <node concept="37vLTG" id="W6bnNduwoV" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="10Oyi0" id="W6bnNduwq2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="W6bnNduwqA" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="W6bnNduwrJ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="6Yb9hAqN_WY" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="10Pfzv" id="6Yb9hAqNA6d" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="W6bnNduy34" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="W6bnNduwiQ" role="1B3o_S" />
      <node concept="3clFbS" id="W6bnNduwiR" role="3clF47">
        <node concept="3clFbF" id="W6bnNduwsF" role="3cqZAp">
          <node concept="2OqwBi" id="W6bnNduw$$" role="3clFbG">
            <node concept="37vLTw" id="W6bnNduwsE" role="2Oq$k0">
              <ref role="3cqZAo" node="W6bnNduw42" resolve="table" />
            </node>
            <node concept="liA8E" id="W6bnNduwWl" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Hashtable.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="W6bnNdux9p" role="37wK5m">
                <ref role="3cqZAo" node="W6bnNduwoV" resolve="key" />
              </node>
              <node concept="37vLTw" id="W6bnNduxEF" role="37wK5m">
                <ref role="3cqZAo" node="W6bnNduwqA" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="W6bnNduwfs" role="jymVt" />
    <node concept="312cEg" id="W6bnNduw42" role="jymVt">
      <property role="TrG5h" value="table" />
      <node concept="3Tm6S6" id="W6bnNduw43" role="1B3o_S" />
      <node concept="3uibUv" id="W6bnNduw7t" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Hashtable" resolve="Hashtable" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3Qp4N06bAm1" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4$OyT8IR$52">
    <property role="TrG5h" value="TestInheritance" />
    <node concept="2tJIrI" id="4$OyT8IR$5u" role="jymVt" />
    <node concept="3HP615" id="4$OyT8IRNNC" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Data" />
      <node concept="3Tm1VV" id="4$OyT8IRNND" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4$OyT8IRIAW" role="jymVt" />
    <node concept="312cEu" id="4$OyT8IRDmV" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Utility" />
      <node concept="3clFb_" id="4$OyT8IRDnW" role="jymVt">
        <property role="TrG5h" value="get" />
        <node concept="10Oyi0" id="4$OyT8IRDou" role="3clF45" />
        <node concept="3Tm1VV" id="4$OyT8IRDnZ" role="1B3o_S" />
        <node concept="3clFbS" id="4$OyT8IRDo0" role="3clF47">
          <node concept="3clFbF" id="4$OyT8IRO9f" role="3cqZAp">
            <node concept="3cmrfG" id="4$OyT8IRO9e" role="3clFbG">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4$OyT8IRO2g" role="3clF46">
          <property role="TrG5h" value="data" />
          <node concept="3uibUv" id="4$OyT8IRO2f" role="1tU5fm">
            <ref role="3uigEE" node="4$OyT8IRNNC" resolve="TestInheritance.Data" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4$OyT8IRDmW" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4$OyT8IRDmk" role="jymVt" />
    <node concept="312cEu" id="4$OyT8IS47k" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="A" />
      <node concept="3Tm1VV" id="4$OyT8IS47l" role="1B3o_S" />
      <node concept="3uibUv" id="4$OyT8IS99h" role="EKbjA">
        <ref role="3uigEE" node="4$OyT8IRNNC" resolve="TestInheritance.Data" />
      </node>
    </node>
    <node concept="2tJIrI" id="4$OyT8IRDlX" role="jymVt" />
    <node concept="312cEu" id="4$OyT8IS9by" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="B" />
      <node concept="3Tm1VV" id="4$OyT8IS9bz" role="1B3o_S" />
      <node concept="3uibUv" id="4$OyT8IS9gW" role="1zkMxy">
        <ref role="3uigEE" node="4$OyT8IS47k" resolve="TestInheritance.A" />
      </node>
    </node>
    <node concept="2tJIrI" id="4$OyT8IRDm8" role="jymVt" />
    <node concept="312cEu" id="4$OyT8IS40Y" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Victim" />
      <node concept="2tJIrI" id="4$OyT8IS42h" role="jymVt" />
      <node concept="3Tm1VV" id="4$OyT8IS40Z" role="1B3o_S" />
      <node concept="3clFb_" id="4$OyT8IRDl3" role="jymVt">
        <property role="TrG5h" value="test" />
        <node concept="10Oyi0" id="4$OyT8IS9zG" role="3clF45" />
        <node concept="3Tm1VV" id="4$OyT8IRDl6" role="1B3o_S" />
        <node concept="3clFbS" id="4$OyT8IRDl7" role="3clF47">
          <node concept="3cpWs8" id="4$OyT8IRTm$" role="3cqZAp">
            <node concept="3cpWsn" id="4$OyT8IRTm_" role="3cpWs9">
              <property role="TrG5h" value="util" />
              <node concept="3uibUv" id="4$OyT8IRTmA" role="1tU5fm">
                <ref role="3uigEE" node="4$OyT8IRDmV" resolve="TestInheritance.Utility" />
              </node>
              <node concept="10Nm6u" id="4$OyT8IRTny" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbH" id="4$OyT8IRTnN" role="3cqZAp" />
          <node concept="3cpWs8" id="4$OyT8IS9w$" role="3cqZAp">
            <node concept="3cpWsn" id="4$OyT8IS9w_" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="10Oyi0" id="4$OyT8IS9wv" role="1tU5fm" />
              <node concept="2OqwBi" id="4$OyT8IS9wA" role="33vP2m">
                <node concept="37vLTw" id="4$OyT8IS9wB" role="2Oq$k0">
                  <ref role="3cqZAo" node="4$OyT8IRTm_" resolve="util" />
                </node>
                <node concept="liA8E" id="4$OyT8IS9wC" role="2OqNvi">
                  <ref role="37wK5l" node="4$OyT8IRDnW" resolve="get" />
                  <node concept="Xjq3P" id="4$OyT8IS9wD" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4$OyT8IS9FX" role="3cqZAp" />
          <node concept="3cpWs6" id="4$OyT8IS9D$" role="3cqZAp">
            <node concept="37vLTw" id="4$OyT8IS9ES" role="3cqZAk">
              <ref role="3cqZAo" node="4$OyT8IS9w_" resolve="a" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4$OyT8IS9Ke" role="1zkMxy">
        <ref role="3uigEE" node="4$OyT8IS9by" resolve="TestInheritance.B" />
      </node>
    </node>
    <node concept="2tJIrI" id="4$OyT8IS3ZP" role="jymVt" />
    <node concept="2tJIrI" id="4$OyT8IR$5z" role="jymVt" />
    <node concept="2tJIrI" id="4$OyT8IR$5B" role="jymVt" />
    <node concept="3Tm1VV" id="4$OyT8IR$53" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4M5CNSfDyo1">
    <property role="TrG5h" value="Subclassing" />
    <node concept="2tJIrI" id="4M5CNSfDyof" role="jymVt" />
    <node concept="312cEu" id="4M5CNSfDyrF" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Container" />
      <node concept="3Tm1VV" id="4M5CNSfDyrG" role="1B3o_S" />
      <node concept="16euLQ" id="4M5CNSfDys$" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="4M5CNSfDyug" role="jymVt" />
    <node concept="312cEu" id="4M5CNSfDyqN" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="A" />
      <node concept="3Tm1VV" id="4M5CNSfDyqO" role="1B3o_S" />
      <node concept="16euLQ" id="4M5CNSfDyvs" role="16eVyc">
        <property role="TrG5h" value="S" />
      </node>
    </node>
    <node concept="2tJIrI" id="4M5CNSfDyoq" role="jymVt" />
    <node concept="312cEu" id="4M5CNSfDyuR" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="B" />
      <node concept="3Tm1VV" id="4M5CNSfDyuS" role="1B3o_S" />
      <node concept="3uibUv" id="4M5CNSfDywq" role="1zkMxy">
        <ref role="3uigEE" node="4M5CNSfDyqN" resolve="Subclassing.A" />
        <node concept="3uibUv" id="4M5CNSfDywR" role="11_B2D">
          <ref role="3uigEE" node="4M5CNSfDyrF" resolve="Subclassing.Container" />
          <node concept="16syzq" id="4M5CNSfDyxy" role="11_B2D">
            <ref role="16sUi3" node="4M5CNSfDyw9" resolve="U" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="4M5CNSfDyw9" role="16eVyc">
        <property role="TrG5h" value="U" />
      </node>
    </node>
    <node concept="2tJIrI" id="4M5CNSfDyoD" role="jymVt" />
    <node concept="312cEu" id="4M5CNSfDyyq" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="C" />
      <node concept="3Tm1VV" id="4M5CNSfDyyr" role="1B3o_S" />
      <node concept="3uibUv" id="4M5CNSfDyzu" role="1zkMxy">
        <ref role="3uigEE" node="4M5CNSfDyuR" resolve="Subclassing.B" />
        <node concept="3uibUv" id="4M5CNSfDDwy" role="11_B2D">
          <ref role="3uigEE" node="4M5CNSfDCQI" resolve="Subclassing.D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4M5CNSfDyoS" role="jymVt" />
    <node concept="312cEu" id="4M5CNSfDCQI" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="D" />
      <node concept="3Tm1VV" id="4M5CNSfDCQJ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4M5CNSfDDbL" role="jymVt" />
    <node concept="3clFb_" id="4M5CNSfDyA3" role="jymVt">
      <property role="TrG5h" value="testc" />
      <node concept="37vLTG" id="4M5CNSfDyB4" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="4M5CNSfDyBo" role="1tU5fm">
          <ref role="3uigEE" node="4M5CNSfDyyq" resolve="Subclassing.C" />
        </node>
      </node>
      <node concept="3cqZAl" id="4M5CNSfDyA5" role="3clF45" />
      <node concept="3Tm1VV" id="4M5CNSfDyA6" role="1B3o_S" />
      <node concept="3clFbS" id="4M5CNSfDyA7" role="3clF47">
        <node concept="3clFbF" id="4M5CNSfDyIP" role="3cqZAp">
          <node concept="1rXfSq" id="4M5CNSfDyIN" role="3clFbG">
            <ref role="37wK5l" node="4M5CNSfDyDb" resolve="testb" />
            <node concept="37vLTw" id="4M5CNSfDyKo" role="37wK5m">
              <ref role="3cqZAo" node="4M5CNSfDyB4" resolve="c" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="_04VjSktXG" role="3cqZAp">
          <node concept="3cpWsn" id="_04VjSktXH" role="3cpWs9">
            <property role="TrG5h" value="d" />
            <node concept="3uibUv" id="_04VjSktXE" role="1tU5fm">
              <ref role="3uigEE" node="4M5CNSfDCQI" resolve="Subclassing.D" />
            </node>
            <node concept="1rXfSq" id="_04VjSktXI" role="33vP2m">
              <ref role="37wK5l" node="4M5CNSfDyTP" resolve="testa" />
              <node concept="37vLTw" id="_04VjSktXJ" role="37wK5m">
                <ref role="3cqZAo" node="4M5CNSfDyB4" resolve="c" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4M5CNSfDypy" role="jymVt" />
    <node concept="3clFb_" id="4M5CNSfDyDb" role="jymVt">
      <property role="TrG5h" value="testb" />
      <node concept="37vLTG" id="4M5CNSfDyEM" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="3uibUv" id="4M5CNSfDyGz" role="1tU5fm">
          <ref role="3uigEE" node="4M5CNSfDyuR" resolve="Subclassing.B" />
          <node concept="16syzq" id="4M5CNSfDyHD" role="11_B2D">
            <ref role="16sUi3" node="4M5CNSfDyFB" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4M5CNSfDyDd" role="3clF45" />
      <node concept="3Tm1VV" id="4M5CNSfDyDe" role="1B3o_S" />
      <node concept="3clFbS" id="4M5CNSfDyDf" role="3clF47">
        <node concept="3clFbF" id="4M5CNSfDzx$" role="3cqZAp">
          <node concept="1rXfSq" id="4M5CNSfDzxz" role="3clFbG">
            <ref role="37wK5l" node="4M5CNSfDyTP" resolve="testa" />
            <node concept="37vLTw" id="4M5CNSfDzyK" role="37wK5m">
              <ref role="3cqZAo" node="4M5CNSfDyEM" resolve="b" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="4M5CNSfDyFB" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
    </node>
    <node concept="2tJIrI" id="4M5CNSfDyCu" role="jymVt" />
    <node concept="3clFb_" id="4M5CNSfDyTP" role="jymVt">
      <property role="TrG5h" value="testa" />
      <node concept="37vLTG" id="4M5CNSfDz3_" role="3clF46">
        <property role="TrG5h" value="a" />
        <node concept="3uibUv" id="4M5CNSfDzdP" role="1tU5fm">
          <ref role="3uigEE" node="4M5CNSfDyqN" resolve="Subclassing.A" />
          <node concept="3uibUv" id="_04VjSksZo" role="11_B2D">
            <ref role="3uigEE" node="4M5CNSfDyrF" resolve="Subclassing.Container" />
            <node concept="16syzq" id="_04VjSktFi" role="11_B2D">
              <ref role="16sUi3" node="_04VjSkrKz" resolve="V" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16syzq" id="_04VjSksm$" role="3clF45">
        <ref role="16sUi3" node="_04VjSkrKz" resolve="V" />
      </node>
      <node concept="3Tm1VV" id="4M5CNSfDyTS" role="1B3o_S" />
      <node concept="3clFbS" id="4M5CNSfDyTT" role="3clF47">
        <node concept="3clFbF" id="_04VjSksAt" role="3cqZAp">
          <node concept="10Nm6u" id="_04VjSksAs" role="3clFbG" />
        </node>
      </node>
      <node concept="16euLQ" id="_04VjSkrKz" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
      <node concept="16euLQ" id="4M5CNSfDz89" role="16eVyc">
        <property role="TrG5h" value="W" />
        <node concept="3uibUv" id="4M5CNSfDzcU" role="3ztrMU">
          <ref role="3uigEE" node="4M5CNSfDyrF" resolve="Subclassing.Container" />
          <node concept="16syzq" id="_04VjSksb5" role="11_B2D">
            <ref role="16sUi3" node="_04VjSkrKz" resolve="V" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4M5CNSfDyqs" role="jymVt" />
    <node concept="3Tm1VV" id="4M5CNSfDyo2" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4pwDyRBUfJN">
    <property role="TrG5h" value="Scopes" />
    <node concept="2tJIrI" id="4pwDyRBUfNV" role="jymVt" />
    <node concept="3clFb_" id="4pwDyRBUfPG" role="jymVt">
      <property role="TrG5h" value="foo" />
      <node concept="37vLTG" id="4pwDyRBUfUc" role="3clF46">
        <property role="TrG5h" value="a" />
        <node concept="3uibUv" id="4pwDyRBUg14" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="4pwDyRBUfPI" role="3clF45" />
      <node concept="3Tm1VV" id="4pwDyRBUfPJ" role="1B3o_S" />
      <node concept="3clFbS" id="4pwDyRBUfPK" role="3clF47">
        <node concept="3clFbF" id="4pwDyRBUg98" role="3cqZAp">
          <node concept="2OqwBi" id="4pwDyRBUgj5" role="3clFbG">
            <node concept="37vLTw" id="4pwDyRBUg96" role="2Oq$k0">
              <ref role="3cqZAo" node="4pwDyRBUfUc" resolve="a" />
            </node>
            <node concept="liA8E" id="4pwDyRBUhA1" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4pwDyRBXB8U" role="jymVt" />
    <node concept="312cEu" id="4pwDyRBXBeE" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Moo" />
      <node concept="2tJIrI" id="4pwDyRBXBkV" role="jymVt" />
      <node concept="3clFb_" id="4pwDyRBXBN_" role="jymVt">
        <property role="TrG5h" value="callMe" />
        <node concept="3cqZAl" id="4pwDyRBXBNB" role="3clF45" />
        <node concept="3Tm1VV" id="4pwDyRBXBNC" role="1B3o_S" />
        <node concept="3clFbS" id="4pwDyRBXBND" role="3clF47" />
      </node>
      <node concept="3clFb_" id="4pwDyRC0ZhT" role="jymVt">
        <property role="TrG5h" value="get" />
        <node concept="16syzq" id="4pwDyRC18nO" role="3clF45">
          <ref role="16sUi3" node="4pwDyRC16_E" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="4pwDyRC0ZhV" role="1B3o_S" />
        <node concept="3clFbS" id="4pwDyRC0ZhW" role="3clF47">
          <node concept="3clFbF" id="4pwDyRC0ZL1" role="3cqZAp">
            <node concept="10Nm6u" id="4pwDyRC0ZL0" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4pwDyRBXBeF" role="1B3o_S" />
      <node concept="16euLQ" id="4pwDyRC16_E" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="4pwDyRBXBq5" role="jymVt" />
    <node concept="312cEu" id="3KN3A4u_Isj" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="A" />
      <node concept="3Tm1VV" id="3KN3A4u_Isk" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3KN3A4u_IEY" role="jymVt" />
    <node concept="3clFb_" id="4pwDyRBXBtp" role="jymVt">
      <property role="TrG5h" value="bar" />
      <node concept="37vLTG" id="4pwDyRBXBzp" role="3clF46">
        <property role="TrG5h" value="m" />
        <node concept="3uibUv" id="4pwDyRBXBCX" role="1tU5fm">
          <ref role="3uigEE" node="4pwDyRBXBeE" resolve="Scopes.Moo" />
          <node concept="3qUE_q" id="3KN3A4u_ITd" role="11_B2D">
            <node concept="3uibUv" id="3KN3A4u_IVw" role="3qUE_r">
              <ref role="3uigEE" node="3KN3A4u_Isj" resolve="Scopes.A" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4pwDyRBXBtr" role="3clF45" />
      <node concept="3Tm1VV" id="4pwDyRBXBts" role="1B3o_S" />
      <node concept="3clFbS" id="4pwDyRBXBtt" role="3clF47">
        <node concept="3clFbF" id="4pwDyRBXBWM" role="3cqZAp">
          <node concept="2OqwBi" id="4pwDyRBXC6Z" role="3clFbG">
            <node concept="37vLTw" id="4pwDyRBXBWL" role="2Oq$k0">
              <ref role="3cqZAo" node="4pwDyRBXBzp" resolve="m" />
            </node>
            <node concept="liA8E" id="4pwDyRBXCyA" role="2OqNvi">
              <ref role="37wK5l" node="4pwDyRBXBN_" resolve="callMe" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KN3A4u_IXY" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4u_IXZ" role="3cpWs9">
            <property role="TrG5h" value="aa" />
            <node concept="3uibUv" id="3KN3A4u_IY0" role="1tU5fm">
              <ref role="3uigEE" node="3KN3A4u_Isj" resolve="Scopes.A" />
            </node>
            <node concept="2OqwBi" id="3KN3A4u_IY1" role="33vP2m">
              <node concept="37vLTw" id="3KN3A4u_IY2" role="2Oq$k0">
                <ref role="3cqZAo" node="4pwDyRBXBzp" resolve="m" />
              </node>
              <node concept="liA8E" id="3KN3A4u_IY3" role="2OqNvi">
                <ref role="37wK5l" node="4pwDyRC0ZhT" resolve="get" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4pwDyRC4xXg" role="jymVt" />
    <node concept="312cEu" id="4pwDyRC4y77" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Schmoo" />
      <node concept="2tJIrI" id="4pwDyRC4yh2" role="jymVt" />
      <node concept="3clFb_" id="4pwDyRC4yhu" role="jymVt">
        <property role="TrG5h" value="callMe" />
        <node concept="3cqZAl" id="4pwDyRC4yhv" role="3clF45" />
        <node concept="3Tm1VV" id="4pwDyRC4yhw" role="1B3o_S" />
        <node concept="3clFbS" id="4pwDyRC4yhx" role="3clF47" />
      </node>
      <node concept="3clFb_" id="4pwDyRC4yhy" role="jymVt">
        <property role="TrG5h" value="get" />
        <node concept="3uibUv" id="4pwDyRC4yiC" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3Tm1VV" id="4pwDyRC4yh$" role="1B3o_S" />
        <node concept="3clFbS" id="4pwDyRC4yh_" role="3clF47">
          <node concept="3clFbF" id="4pwDyRC4yhA" role="3cqZAp">
            <node concept="10Nm6u" id="4pwDyRC4yhB" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4pwDyRC4y78" role="1B3o_S" />
      <node concept="2tJIrI" id="4pwDyRC4z1J" role="jymVt" />
    </node>
    <node concept="2tJIrI" id="4pwDyRC4z2N" role="jymVt" />
    <node concept="3clFb_" id="4pwDyRC4yjS" role="jymVt">
      <property role="TrG5h" value="bazz" />
      <node concept="37vLTG" id="4pwDyRC4yjT" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="3uibUv" id="4pwDyRC4zf1" role="1tU5fm">
          <ref role="3uigEE" node="4pwDyRC4y77" resolve="Scopes.Schmoo" />
        </node>
      </node>
      <node concept="3cqZAl" id="4pwDyRC4yjW" role="3clF45" />
      <node concept="3Tm1VV" id="4pwDyRC4yjX" role="1B3o_S" />
      <node concept="3clFbS" id="4pwDyRC4yjY" role="3clF47">
        <node concept="3clFbF" id="4pwDyRC4yjZ" role="3cqZAp">
          <node concept="2OqwBi" id="4pwDyRC4yk0" role="3clFbG">
            <node concept="37vLTw" id="4pwDyRC4yk1" role="2Oq$k0">
              <ref role="3cqZAo" node="4pwDyRC4yjT" resolve="s" />
            </node>
            <node concept="liA8E" id="4pwDyRC4yk2" role="2OqNvi">
              <ref role="37wK5l" node="4pwDyRC4yhu" resolve="callMe" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4pwDyRC4yk5" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="4pwDyRC4yjR" role="jymVt" />
    <node concept="3Tm1VV" id="4pwDyRBUfJO" role="1B3o_S" />
  </node>
</model>

