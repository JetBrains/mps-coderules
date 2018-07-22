<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6e0181fc-40ea-4aea-a8b0-3ba2d104ddef(samples.fitch.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="jfgh" ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(samples.fitch.structure)" />
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
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1145572800087" name="jetbrains.mps.lang.smodel.structure.Node_GetPrevSiblingsOperation" flags="nn" index="2Ttrtt" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
    </language>
  </registry>
  <node concept="13h7C7" id="5jVx7S20nJq">
    <property role="3GE5qa" value="proof" />
    <ref role="13h7C2" to="jfgh:3JXBM6C3UQB" resolve="Node" />
    <node concept="13i0hz" id="5jVx7S20nJ_" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="allInScope" />
      <node concept="3Tm1VV" id="5jVx7S20nJA" role="1B3o_S" />
      <node concept="2I9FWS" id="5jVx7S20nJX" role="3clF45" />
      <node concept="3clFbS" id="5jVx7S20nJC" role="3clF47">
        <node concept="3cpWs8" id="5jVx7S20pHO" role="3cqZAp">
          <node concept="3cpWsn" id="5jVx7S20pHP" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="2I9FWS" id="5jVx7S20pHM" role="1tU5fm" />
            <node concept="2ShNRf" id="5jVx7S20pHQ" role="33vP2m">
              <node concept="2T8Vx0" id="5jVx7S20pHR" role="2ShVmc">
                <node concept="2I9FWS" id="5jVx7S20pHS" role="2T96Bj" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jVx7S20p4M" role="3cqZAp">
          <node concept="2OqwBi" id="5jVx7S20r7R" role="3clFbG">
            <node concept="37vLTw" id="5jVx7S20pHT" role="2Oq$k0">
              <ref role="3cqZAo" node="5jVx7S20pHP" resolve="res" />
            </node>
            <node concept="X8dFx" id="5jVx7S20u1s" role="2OqNvi">
              <node concept="2OqwBi" id="5jVx7S20ukK" role="25WWJ7">
                <node concept="13iPFW" id="5jVx7S20ukL" role="2Oq$k0" />
                <node concept="2Ttrtt" id="5jVx7S20ukM" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jVx7S20x$s" role="3cqZAp">
          <node concept="3clFbS" id="5jVx7S20x$u" role="3clFbx">
            <node concept="3clFbF" id="5jVx7S20yHF" role="3cqZAp">
              <node concept="2OqwBi" id="5jVx7S20zzA" role="3clFbG">
                <node concept="37vLTw" id="5jVx7S20yHD" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jVx7S20pHP" resolve="res" />
                </node>
                <node concept="X8dFx" id="5jVx7S20_KG" role="2OqNvi">
                  <node concept="2OqwBi" id="5jVx7S20Den" role="25WWJ7">
                    <node concept="1PxgMI" id="5jVx7S20C$P" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="5jVx7S20CFC" role="3oSUPX">
                        <ref role="cht4Q" to="jfgh:3JXBM6C3UQB" resolve="Node" />
                      </node>
                      <node concept="2OqwBi" id="5jVx7S20Abu" role="1m5AlR">
                        <node concept="13iPFW" id="5jVx7S20_Y8" role="2Oq$k0" />
                        <node concept="1mfA1w" id="5jVx7S20Bs0" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="5jVx7S20EVk" role="2OqNvi">
                      <ref role="37wK5l" node="5jVx7S20nJ_" resolve="allInScope" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5jVx7S20ypd" role="3clFbw">
            <node concept="2OqwBi" id="5jVx7S20xPu" role="2Oq$k0">
              <node concept="13iPFW" id="5jVx7S20xH1" role="2Oq$k0" />
              <node concept="1mfA1w" id="5jVx7S20xYY" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="5jVx7S20yDs" role="2OqNvi">
              <node concept="chp4Y" id="5jVx7S20yFx" role="cj9EA">
                <ref role="cht4Q" to="jfgh:3JXBM6C3UQB" resolve="Node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jVx7S20Frf" role="3cqZAp">
          <node concept="37vLTw" id="5jVx7S20Frd" role="3clFbG">
            <ref role="3cqZAo" node="5jVx7S20pHP" resolve="res" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="5jVx7S20nJr" role="13h7CW">
      <node concept="3clFbS" id="5jVx7S20nJs" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="3w0n0hzjKLx">
    <property role="3GE5qa" value="proof" />
    <ref role="13h7C2" to="jfgh:3JXBM6C5urr" resolve="Root" />
    <node concept="13i0hz" id="3w0n0hzjKLG" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="isRuleSupported" />
      <node concept="37vLTG" id="3w0n0hzjKN7" role="3clF46">
        <property role="TrG5h" value="ruleConcept" />
        <node concept="3bZ5Sz" id="3w0n0hzjKO0" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="3w0n0hzjKLH" role="1B3o_S" />
      <node concept="10P_77" id="3w0n0hzjKLW" role="3clF45" />
      <node concept="3clFbS" id="3w0n0hzjKLJ" role="3clF47" />
    </node>
    <node concept="13hLZK" id="3w0n0hzjKLy" role="13h7CW">
      <node concept="3clFbS" id="3w0n0hzjKLz" role="2VODD2" />
    </node>
  </node>
</model>

