<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9dec6437-6097-4be2-891f-1792da0df61f(samples.lambdacalc.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="8tt8" ref="r:e74c1bfc-387b-4b4b-abee-2eb77ee510ec(samples.lambdacalc.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="3g9UT2j94eo">
    <property role="3GE5qa" value="type" />
    <ref role="13h7C2" to="8tt8:3_qfG1EP6Of" resolve="FunType" />
    <node concept="13hLZK" id="3g9UT2j94ep" role="13h7CW">
      <node concept="3clFbS" id="3g9UT2j94eq" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3g9UT2j94ez" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="3g9UT2j94fF" role="1B3o_S" />
      <node concept="3clFbS" id="3g9UT2j94iG" role="3clF47">
        <node concept="3cpWs8" id="3g9UT2j9tnW" role="3cqZAp">
          <node concept="3cpWsn" id="3g9UT2j9tnX" role="3cpWs9">
            <property role="TrG5h" value="arg" />
            <node concept="17QB3L" id="3g9UT2j9tnU" role="1tU5fm" />
            <node concept="2EnYce" id="3g9UT2j9tnY" role="33vP2m">
              <node concept="2OqwBi" id="3g9UT2j9tnZ" role="2Oq$k0">
                <node concept="13iPFW" id="3g9UT2j9to0" role="2Oq$k0" />
                <node concept="3TrEf2" id="3g9UT2j9to1" role="2OqNvi">
                  <ref role="3Tt5mk" to="8tt8:3_qfG1EP6Op" resolve="argType" />
                </node>
              </node>
              <node concept="2qgKlT" id="3g9UT2j9to2" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3g9UT2j9y4S" role="3cqZAp">
          <node concept="3cpWsn" id="3g9UT2j9y4T" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="17QB3L" id="3g9UT2j9y4Q" role="1tU5fm" />
            <node concept="2EnYce" id="3g9UT2j9y4U" role="33vP2m">
              <node concept="2OqwBi" id="3g9UT2j9y4V" role="2Oq$k0">
                <node concept="13iPFW" id="3g9UT2j9y4W" role="2Oq$k0" />
                <node concept="3TrEf2" id="3g9UT2j9y4X" role="2OqNvi">
                  <ref role="3Tt5mk" to="8tt8:3_qfG1EP6O_" resolve="resType" />
                </node>
              </node>
              <node concept="2qgKlT" id="3g9UT2j9y4Y" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3g9UT2j959x" role="3cqZAp">
          <node concept="3cpWs3" id="3g9UT2j98F7" role="3clFbG">
            <node concept="1eOMI4" id="3g9UT2j9yFi" role="3uHU7w">
              <node concept="3K4zz7" id="3g9UT2j9zdX" role="1eOMHV">
                <node concept="37vLTw" id="3g9UT2j9zpP" role="3K4E3e">
                  <ref role="3cqZAo" node="3g9UT2j9y4T" resolve="res" />
                </node>
                <node concept="Xl_RD" id="3g9UT2j9zdZ" role="3K4GZi">
                  <property role="Xl_RC" value="?" />
                </node>
                <node concept="3y3z36" id="3g9UT2j9ze0" role="3K4Cdx">
                  <node concept="10Nm6u" id="3g9UT2j9ze1" role="3uHU7w" />
                  <node concept="37vLTw" id="3g9UT2j9zph" role="3uHU7B">
                    <ref role="3cqZAo" node="3g9UT2j9y4T" resolve="res" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs3" id="3g9UT2j9wmh" role="3uHU7B">
              <node concept="1eOMI4" id="3g9UT2j9xEV" role="3uHU7B">
                <node concept="3K4zz7" id="3g9UT2j9xPw" role="1eOMHV">
                  <node concept="37vLTw" id="3g9UT2j9xPx" role="3K4E3e">
                    <ref role="3cqZAo" node="3g9UT2j9tnX" resolve="arg" />
                  </node>
                  <node concept="Xl_RD" id="3g9UT2j9xPy" role="3K4GZi">
                    <property role="Xl_RC" value="?" />
                  </node>
                  <node concept="3y3z36" id="3g9UT2j9xPz" role="3K4Cdx">
                    <node concept="10Nm6u" id="3g9UT2j9xP$" role="3uHU7w" />
                    <node concept="37vLTw" id="3g9UT2j9xP_" role="3uHU7B">
                      <ref role="3cqZAo" node="3g9UT2j9tnX" resolve="arg" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3g9UT2j97GC" role="3uHU7w">
                <property role="Xl_RC" value=" -&gt; " />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3g9UT2j94iH" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3g9UT2j9Iup">
    <property role="3GE5qa" value="type" />
    <ref role="13h7C2" to="8tt8:3g9UT2j9I06" resolve="VarType" />
    <node concept="13hLZK" id="3g9UT2j9Iuq" role="13h7CW">
      <node concept="3clFbS" id="3g9UT2j9Iur" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3g9UT2j9Iu$" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="3g9UT2j9IvG" role="1B3o_S" />
      <node concept="3clFbS" id="3g9UT2j9IvH" role="3clF47">
        <node concept="3clFbF" id="12dHl3ZCh6s" role="3cqZAp">
          <node concept="2OqwBi" id="3g9UT2j9IHa" role="3clFbG">
            <node concept="13iPFW" id="3g9UT2j9IzN" role="2Oq$k0" />
            <node concept="3TrcHB" id="3g9UT2j9IRP" role="2OqNvi">
              <ref role="3TsBF5" to="8tt8:3g9UT2j9Itl" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3g9UT2j9IvI" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="12dHl3ZCFbd">
    <property role="3GE5qa" value="type" />
    <ref role="13h7C2" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
    <node concept="13hLZK" id="12dHl3ZCFbe" role="13h7CW">
      <node concept="3clFbS" id="12dHl3ZCFbf" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="12dHl3ZCFbo" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="12dHl3ZCFcx" role="1B3o_S" />
      <node concept="3clFbS" id="12dHl3ZCFix" role="3clF47">
        <node concept="3clFbF" id="12dHl3ZCFqk" role="3cqZAp">
          <node concept="3cpWs3" id="12dHl3ZCFWS" role="3clFbG">
            <node concept="2EnYce" id="12dHl3ZCJ3U" role="3uHU7w">
              <node concept="2OqwBi" id="12dHl3ZCG91" role="2Oq$k0">
                <node concept="13iPFW" id="12dHl3ZCFXg" role="2Oq$k0" />
                <node concept="3TrEf2" id="12dHl3ZCGjV" role="2OqNvi">
                  <ref role="3Tt5mk" to="8tt8:12dHl3ZCFaI" resolve="type" />
                </node>
              </node>
              <node concept="2qgKlT" id="12dHl3ZCJqZ" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
              </node>
            </node>
            <node concept="Xl_RD" id="12dHl3ZCFqj" role="3uHU7B">
              <property role="Xl_RC" value="forall." />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="12dHl3ZCFiy" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="JqEP$8shbD">
    <property role="3GE5qa" value="type" />
    <ref role="13h7C2" to="8tt8:JqEP$8shba" resolve="PairType" />
    <node concept="13hLZK" id="JqEP$8shbE" role="13h7CW">
      <node concept="3clFbS" id="JqEP$8shbF" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="JqEP$8shop" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="JqEP$8shoq" role="1B3o_S" />
      <node concept="3clFbS" id="JqEP$8shor" role="3clF47">
        <node concept="3cpWs8" id="JqEP$8shos" role="3cqZAp">
          <node concept="3cpWsn" id="JqEP$8shot" role="3cpWs9">
            <property role="TrG5h" value="fst" />
            <node concept="17QB3L" id="JqEP$8shou" role="1tU5fm" />
            <node concept="2EnYce" id="JqEP$8shov" role="33vP2m">
              <node concept="2OqwBi" id="JqEP$8show" role="2Oq$k0">
                <node concept="13iPFW" id="JqEP$8shox" role="2Oq$k0" />
                <node concept="3TrEf2" id="JqEP$8sidJ" role="2OqNvi">
                  <ref role="3Tt5mk" to="8tt8:JqEP$8shbd" resolve="fstType" />
                </node>
              </node>
              <node concept="2qgKlT" id="JqEP$8shoz" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="JqEP$8sho$" role="3cqZAp">
          <node concept="3cpWsn" id="JqEP$8sho_" role="3cpWs9">
            <property role="TrG5h" value="snd" />
            <node concept="17QB3L" id="JqEP$8shoA" role="1tU5fm" />
            <node concept="2EnYce" id="JqEP$8shoB" role="33vP2m">
              <node concept="2OqwBi" id="JqEP$8shoC" role="2Oq$k0">
                <node concept="13iPFW" id="JqEP$8shoD" role="2Oq$k0" />
                <node concept="3TrEf2" id="JqEP$8sivF" role="2OqNvi">
                  <ref role="3Tt5mk" to="8tt8:JqEP$8shbb" resolve="sndType" />
                </node>
              </node>
              <node concept="2qgKlT" id="JqEP$8shoF" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="JqEP$8shoG" role="3cqZAp">
          <node concept="3cpWs3" id="JqEP$8sjpp" role="3clFbG">
            <node concept="Xl_RD" id="JqEP$8sjKT" role="3uHU7w">
              <property role="Xl_RC" value=")" />
            </node>
            <node concept="3cpWs3" id="JqEP$8shoH" role="3uHU7B">
              <node concept="1eOMI4" id="JqEP$8shoI" role="3uHU7w">
                <node concept="3K4zz7" id="JqEP$8shoJ" role="1eOMHV">
                  <node concept="37vLTw" id="JqEP$8shoK" role="3K4E3e">
                    <ref role="3cqZAo" node="JqEP$8sho_" resolve="snd" />
                  </node>
                  <node concept="Xl_RD" id="JqEP$8shoL" role="3K4GZi">
                    <property role="Xl_RC" value="?" />
                  </node>
                  <node concept="3y3z36" id="JqEP$8shoM" role="3K4Cdx">
                    <node concept="10Nm6u" id="JqEP$8shoN" role="3uHU7w" />
                    <node concept="37vLTw" id="JqEP$8shoO" role="3uHU7B">
                      <ref role="3cqZAo" node="JqEP$8sho_" resolve="snd" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs3" id="JqEP$8shoP" role="3uHU7B">
                <node concept="3cpWs3" id="JqEP$8sj6n" role="3uHU7B">
                  <node concept="Xl_RD" id="JqEP$8sjcf" role="3uHU7B">
                    <property role="Xl_RC" value="(" />
                  </node>
                  <node concept="1eOMI4" id="JqEP$8shoQ" role="3uHU7w">
                    <node concept="3K4zz7" id="JqEP$8shoR" role="1eOMHV">
                      <node concept="37vLTw" id="JqEP$8shoS" role="3K4E3e">
                        <ref role="3cqZAo" node="JqEP$8shot" resolve="fst" />
                      </node>
                      <node concept="Xl_RD" id="JqEP$8shoT" role="3K4GZi">
                        <property role="Xl_RC" value="?" />
                      </node>
                      <node concept="3y3z36" id="JqEP$8shoU" role="3K4Cdx">
                        <node concept="10Nm6u" id="JqEP$8shoV" role="3uHU7w" />
                        <node concept="37vLTw" id="JqEP$8shoW" role="3uHU7B">
                          <ref role="3cqZAo" node="JqEP$8shot" resolve="fst" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="JqEP$8shoX" role="3uHU7w">
                  <property role="Xl_RC" value=", " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="JqEP$8shoY" role="3clF45" />
    </node>
  </node>
</model>

