<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7d0ef000-3cef-4963-bee2-388be23913c0(jetbrains.mps.jchr.sandbox.runner.gcd)">
  <persistence version="9" />
  <languages>
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
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
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
      </concept>
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
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
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
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1174914042989" name="jetbrains.mps.baseLanguageInternal.structure.InternalClassifierType" flags="in" index="2eloPW">
        <property id="1174914081067" name="fqClassName" index="2ely0U" />
      </concept>
      <concept id="1173996401517" name="jetbrains.mps.baseLanguageInternal.structure.InternalNewExpression" flags="nn" index="1nCR9W">
        <property id="1173996588177" name="fqClassName" index="1nD$Q0" />
      </concept>
      <concept id="1174294166120" name="jetbrains.mps.baseLanguageInternal.structure.InternalPartialInstanceMethodCall" flags="nn" index="1DoJHT">
        <property id="1174294288199" name="methodName" index="1Dpdpm" />
        <child id="1174313653259" name="returnType" index="1Ez5kq" />
        <child id="1174317636233" name="instance" index="1EMhIo" />
        <child id="1174318197094" name="actualArgument" index="1EOqxR" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="35Lj3TiPwcX">
    <property role="TrG5h" value="Gcd" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="35Lj3TiPwcY" role="1B3o_S" />
    <node concept="2YIFZL" id="35Lj3TiPwcZ" role="jymVt">
      <property role="TrG5h" value="main" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="35Lj3TiPwd0" role="3clF46">
        <property role="TrG5h" value="args" />
        <property role="3TUv4t" value="false" />
        <node concept="10Q1$e" id="35Lj3TiPwd1" role="1tU5fm">
          <node concept="17QB3L" id="35Lj3TiPwd2" role="10Q1$1" />
        </node>
      </node>
      <node concept="3uibUv" id="35Lj3TiPwd3" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="35Lj3TiPwd4" role="3clF47">
        <node concept="3clFbJ" id="35Lj3TiPwd5" role="3cqZAp">
          <node concept="3y3z36" id="35Lj3TiPwd6" role="3clFbw">
            <node concept="2OqwBi" id="35Lj3TiPwd7" role="3uHU7B">
              <node concept="37vLTw" id="35Lj3TiPwd8" role="2Oq$k0">
                <ref role="3cqZAo" node="35Lj3TiPwd0" resolve="args" />
              </node>
              <node concept="1Rwk04" id="35Lj3TiPwd9" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="35Lj3TiPwda" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
          <node concept="SfApY" id="35Lj3TiPwdb" role="9aQIa">
            <node concept="TDmWw" id="35Lj3TiPwdc" role="TEbGg">
              <node concept="3clFbS" id="35Lj3TiPwdd" role="TDEfX">
                <node concept="3clFbF" id="35Lj3TiPwde" role="3cqZAp">
                  <node concept="2OqwBi" id="35Lj3TiPwdf" role="3clFbG">
                    <node concept="10M0yZ" id="35Lj3TiPwdg" role="2Oq$k0">
                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                      <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                    </node>
                    <node concept="liA8E" id="35Lj3TiPwdh" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                      <node concept="2OqwBi" id="35Lj3TiPwdi" role="37wK5m">
                        <node concept="37vLTw" id="35Lj3TiPwdj" role="2Oq$k0">
                          <ref role="3cqZAo" node="35Lj3TiPwdn" resolve="e" />
                        </node>
                        <node concept="liA8E" id="35Lj3TiPwdk" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="35Lj3TiPwdl" role="3cqZAp">
                  <node concept="1rXfSq" id="35Lj3TiPwdm" role="3clFbG">
                    <ref role="37wK5l" node="35Lj3TiPweK" resolve="printUsage" />
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="35Lj3TiPwdn" role="TDEfY">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="3uibUv" id="35Lj3TiPwdo" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="35Lj3TiPwdp" role="SfCbr">
              <node concept="3cpWs8" id="35Lj3TiPwdq" role="3cqZAp">
                <node concept="3cpWsn" id="35Lj3TiPwdr" role="3cpWs9">
                  <property role="3TUv4t" value="true" />
                  <property role="TrG5h" value="i0" />
                  <node concept="3cpWsb" id="35Lj3TiPwds" role="1tU5fm" />
                  <node concept="2YIFZM" id="35Lj3TiPwdt" role="33vP2m">
                    <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                    <ref role="37wK5l" to="wyt6:~Long.parseLong(java.lang.String):long" resolve="parseLong" />
                    <node concept="AH0OO" id="35Lj3TiPwdu" role="37wK5m">
                      <node concept="37vLTw" id="35Lj3TiPwdv" role="AHHXb">
                        <ref role="3cqZAo" node="35Lj3TiPwd0" resolve="args" />
                      </node>
                      <node concept="3cmrfG" id="35Lj3TiPwdw" role="AHEQo">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="35Lj3TiPwdx" role="3cqZAp">
                <node concept="3cpWsn" id="35Lj3TiPwdy" role="3cpWs9">
                  <property role="3TUv4t" value="true" />
                  <property role="TrG5h" value="i1" />
                  <node concept="3cpWsb" id="35Lj3TiPwdz" role="1tU5fm" />
                  <node concept="2YIFZM" id="35Lj3TiPwd$" role="33vP2m">
                    <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                    <ref role="37wK5l" to="wyt6:~Long.parseLong(java.lang.String):long" resolve="parseLong" />
                    <node concept="AH0OO" id="35Lj3TiPwd_" role="37wK5m">
                      <node concept="37vLTw" id="35Lj3TiPwdA" role="AHHXb">
                        <ref role="3cqZAo" node="35Lj3TiPwd0" resolve="args" />
                      </node>
                      <node concept="3cmrfG" id="35Lj3TiPwdB" role="AHEQo">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="35Lj3TiPwdC" role="3cqZAp">
                <node concept="22lmx$" id="35Lj3TiPwdD" role="3clFbw">
                  <node concept="3eOVzh" id="35Lj3TiPwdE" role="3uHU7B">
                    <node concept="37vLTw" id="35Lj3TiPwdF" role="3uHU7B">
                      <ref role="3cqZAo" node="35Lj3TiPwdr" resolve="i0" />
                    </node>
                    <node concept="3cmrfG" id="35Lj3TiPwdG" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3eOVzh" id="35Lj3TiPwdH" role="3uHU7w">
                    <node concept="37vLTw" id="35Lj3TiPwdI" role="3uHU7B">
                      <ref role="3cqZAo" node="35Lj3TiPwdy" resolve="i1" />
                    </node>
                    <node concept="3cmrfG" id="35Lj3TiPwdJ" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="35Lj3TiPwdK" role="3clFbx">
                  <node concept="3clFbF" id="35Lj3TiPwdL" role="3cqZAp">
                    <node concept="1rXfSq" id="35Lj3TiPwdM" role="3clFbG">
                      <ref role="37wK5l" node="35Lj3TiPweK" resolve="printUsage" />
                    </node>
                  </node>
                  <node concept="3cpWs6" id="35Lj3TiPwdN" role="3cqZAp" />
                </node>
              </node>
              <node concept="3SKdUt" id="35Lj3TiPwdO" role="3cqZAp">
                <node concept="3SKdUq" id="35Lj3TiPwdP" role="3SKWNk">
                  <property role="3SKdUp" value="First we create a new JCHR constraint handler:" />
                </node>
              </node>
              <node concept="3cpWs8" id="35Lj3TiPwdQ" role="3cqZAp">
                <node concept="3cpWsn" id="35Lj3TiPwdR" role="3cpWs9">
                  <property role="TrG5h" value="handler" />
                  <node concept="2eloPW" id="35Lj3TiPwdS" role="1tU5fm">
                    <property role="2ely0U" value="jetbrains.mps.jchr.sandbox.GcdHandler" />
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                  <node concept="1nCR9W" id="35Lj3TiPwdT" role="33vP2m">
                    <property role="1nD$Q0" value="jetbrains.mps.jchr.sandbox.GcdHandler" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="35Lj3TiPwdU" role="3cqZAp">
                <node concept="3SKdUq" id="35Lj3TiPwdV" role="3SKWNk">
                  <property role="3SKdUp" value="Next we tell the JCHR handler the following two constraints:             " />
                </node>
              </node>
              <node concept="3clFbF" id="35Lj3TiPwdW" role="3cqZAp">
                <node concept="1DoJHT" id="35Lj3TiPwdX" role="3clFbG">
                  <property role="1Dpdpm" value="tellGcd" />
                  <node concept="37vLTw" id="35Lj3TiPwdY" role="1EOqxR">
                    <ref role="3cqZAo" node="35Lj3TiPwdr" resolve="i0" />
                  </node>
                  <node concept="3cqZAl" id="35Lj3TiPwdZ" role="1Ez5kq" />
                  <node concept="37vLTw" id="35Lj3TiPwe0" role="1EMhIo">
                    <ref role="3cqZAo" node="35Lj3TiPwdR" resolve="handler" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="35Lj3TiPwe1" role="3cqZAp">
                <node concept="1DoJHT" id="35Lj3TiPwe2" role="3clFbG">
                  <property role="1Dpdpm" value="tellGcd" />
                  <node concept="37vLTw" id="35Lj3TiPwe3" role="1EOqxR">
                    <ref role="3cqZAo" node="35Lj3TiPwdy" resolve="i1" />
                  </node>
                  <node concept="3cqZAl" id="35Lj3TiPwe4" role="1Ez5kq" />
                  <node concept="37vLTw" id="35Lj3TiPwe5" role="1EMhIo">
                    <ref role="3cqZAo" node="35Lj3TiPwdR" resolve="handler" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="35Lj3TiPwe6" role="3cqZAp">
                <node concept="3SKdUq" id="35Lj3TiPwe7" role="3SKWNk">
                  <property role="3SKdUp" value="Afterwards we can lookup the constraints in the " />
                </node>
              </node>
              <node concept="3SKdUt" id="35Lj3TiPwe8" role="3cqZAp">
                <node concept="3SKdUq" id="35Lj3TiPwe9" role="3SKWNk">
                  <property role="3SKdUp" value="resulting constraint store: " />
                </node>
              </node>
              <node concept="3cpWs8" id="35Lj3TiPwea" role="3cqZAp">
                <node concept="3cpWsn" id="35Lj3TiPweb" role="3cpWs9">
                  <property role="TrG5h" value="gcds" />
                  <node concept="3uibUv" id="35Lj3TiPwec" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                    <node concept="2eloPW" id="35Lj3TiPwed" role="11_B2D">
                      <property role="2ely0U" value="jetbrains.mps.jchr.sandbox.GcdHandler.GcdConstraint" />
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                  </node>
                  <node concept="1DoJHT" id="35Lj3TiPwee" role="33vP2m">
                    <property role="1Dpdpm" value="getGcdConstraints" />
                    <node concept="3uibUv" id="35Lj3TiPwef" role="1Ez5kq">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="2eloPW" id="35Lj3TiPweg" role="11_B2D">
                        <property role="2ely0U" value="jetbrains.mps.jchr.sandbox.GcdHandler.GcdConstraint" />
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="35Lj3TiPweh" role="1EMhIo">
                      <ref role="3cqZAo" node="35Lj3TiPwdR" resolve="handler" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="35Lj3TiPwei" role="3cqZAp" />
              <node concept="3SKdUt" id="35Lj3TiPwej" role="3cqZAp">
                <node concept="3SKdUq" id="35Lj3TiPwek" role="3SKWNk">
                  <property role="3SKdUp" value="There should be exactly one constraint, containing" />
                </node>
              </node>
              <node concept="3SKdUt" id="35Lj3TiPwel" role="3cqZAp">
                <node concept="3SKdUq" id="35Lj3TiPwem" role="3SKWNk">
                  <property role="3SKdUp" value="the greatest common divider:" />
                </node>
              </node>
              <node concept="1gVbGN" id="35Lj3TiPwen" role="3cqZAp">
                <node concept="3clFbC" id="35Lj3TiPweo" role="1gVkn0">
                  <node concept="2OqwBi" id="35Lj3TiPwep" role="3uHU7B">
                    <node concept="37vLTw" id="35Lj3TiPweq" role="2Oq$k0">
                      <ref role="3cqZAo" node="35Lj3TiPweb" resolve="gcds" />
                    </node>
                    <node concept="liA8E" id="35Lj3TiPwer" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Collection.size():int" resolve="size" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="35Lj3TiPwes" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="35Lj3TiPwet" role="3cqZAp">
                <node concept="3SKdUq" id="35Lj3TiPweu" role="3SKWNk">
                  <property role="3SKdUp" value="Simply print out the result:" />
                </node>
              </node>
              <node concept="3clFbF" id="35Lj3TiPwev" role="3cqZAp">
                <node concept="2OqwBi" id="35Lj3TiPwew" role="3clFbG">
                  <node concept="10M0yZ" id="35Lj3TiPwex" role="2Oq$k0">
                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                    <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                  </node>
                  <node concept="liA8E" id="35Lj3TiPwey" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~PrintStream.printf(java.lang.String,java.lang.Object...):java.io.PrintStream" resolve="printf" />
                    <node concept="Xl_RD" id="35Lj3TiPwez" role="37wK5m">
                      <property role="Xl_RC" value=" ==&gt;  gcd(%d, %d) == %s" />
                    </node>
                    <node concept="37vLTw" id="35Lj3TiPwe$" role="37wK5m">
                      <ref role="3cqZAo" node="35Lj3TiPwdr" resolve="i0" />
                    </node>
                    <node concept="37vLTw" id="35Lj3TiPwe_" role="37wK5m">
                      <ref role="3cqZAo" node="35Lj3TiPwdy" resolve="i1" />
                    </node>
                    <node concept="2OqwBi" id="35Lj3TiPweA" role="37wK5m">
                      <node concept="2OqwBi" id="35Lj3TiPweB" role="2Oq$k0">
                        <node concept="37vLTw" id="35Lj3TiPweC" role="2Oq$k0">
                          <ref role="3cqZAo" node="35Lj3TiPweb" resolve="gcds" />
                        </node>
                        <node concept="liA8E" id="35Lj3TiPweD" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Collection.iterator():java.util.Iterator" resolve="iterator" />
                        </node>
                      </node>
                      <node concept="liA8E" id="35Lj3TiPweE" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="35Lj3TiPweF" role="3clFbx">
            <node concept="3clFbF" id="35Lj3TiPweG" role="3cqZAp">
              <node concept="1rXfSq" id="35Lj3TiPweH" role="3clFbG">
                <ref role="37wK5l" node="35Lj3TiPweK" resolve="printUsage" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="35Lj3TiPweI" role="1B3o_S" />
      <node concept="3cqZAl" id="35Lj3TiPweJ" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="35Lj3TiPweK" role="jymVt">
      <property role="TrG5h" value="printUsage" />
      <property role="DiZV1" value="true" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="35Lj3TiPweL" role="3clF47">
        <node concept="3clFbF" id="35Lj3TiPweM" role="3cqZAp">
          <node concept="2OqwBi" id="35Lj3TiPweN" role="3clFbG">
            <node concept="10M0yZ" id="35Lj3TiPweO" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="35Lj3TiPweP" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="35Lj3TiPweQ" role="37wK5m">
                <property role="Xl_RC" value="Usage: java Gcd &lt;positive int&gt; &lt;positive int&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="35Lj3TiPweR" role="1B3o_S" />
      <node concept="3cqZAl" id="35Lj3TiPweS" role="3clF45" />
    </node>
  </node>
</model>

