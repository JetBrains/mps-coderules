<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9c80bc3e-1982-4e7d-8fe4-1b25a1c02635(jetbrains.mps.lang.typechecking.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="zfi7" ref="r:39840d4e-f61c-4452-88c5-75b1eb10e892(jetbrains.mps.lang.typechecking.structure)" />
    <import index="tpeu" ref="r:00000000-0000-4000-0000-011c895902fa(jetbrains.mps.lang.smodel.behavior)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.coderules.typechecking.service)" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU">
        <reference id="7400021826771268269" name="concept" index="2sp9C9" />
      </concept>
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="7lmP5gAXQeM">
    <ref role="13h7C2" to="zfi7:7lmP5gALJP$" resolve="TypecheckingQueryTemplate" />
    <node concept="13i0hz" id="7lmP5gAXQfi" role="13h7CS">
      <property role="TrG5h" value="getQueryInterface" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="7lmP5gAXQfj" role="1B3o_S" />
      <node concept="2sp9CU" id="7lmP5gAXSmE" role="3clF45">
        <ref role="2sp9C9" to="tpee:g7pOWCK" resolve="Classifier" />
      </node>
      <node concept="3clFbS" id="7lmP5gAXQfl" role="3clF47">
        <node concept="3cpWs6" id="7lmP5gAXQhD" role="3cqZAp">
          <node concept="2tJFMh" id="7lmP5gAXQk$" role="3cqZAk">
            <node concept="ZC_QK" id="7lmP5gAXQmm" role="2tJFKM">
              <ref role="2aWVGs" to="i348:5EDW3XDYeWv" resolve="Query" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="7lmP5gAXQeN" role="13h7CW">
      <node concept="3clFbS" id="7lmP5gAXQeO" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7lmP5gAXSzm">
    <ref role="13h7C2" to="zfi7:7lmP5gALJQ1" resolve="CheckQueryTemplate" />
    <node concept="13hLZK" id="7lmP5gAXSzn" role="13h7CW">
      <node concept="3clFbS" id="7lmP5gAXSzo" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7lmP5gAXSzQ" role="13h7CS">
      <property role="TrG5h" value="getQueryInterface" />
      <ref role="13i0hy" node="7lmP5gAXQfi" resolve="getQueryInterface" />
      <node concept="3Tm1VV" id="7lmP5gAXSzR" role="1B3o_S" />
      <node concept="3clFbS" id="7lmP5gAXSzX" role="3clF47">
        <node concept="3clFbF" id="7lmP5gAXT1d" role="3cqZAp">
          <node concept="2tJFMh" id="7lmP5gAXT1b" role="3clFbG">
            <node concept="ZC_QK" id="7lmP5gAXT2X" role="2tJFKM">
              <ref role="2aWVGs" to="tj24:5EDW3XDYNPr" resolve="CheckQuery" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2sp9CU" id="7lmP5gAXSzY" role="3clF45">
        <ref role="2sp9C9" to="tpee:g7pOWCK" resolve="Classifier" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7lmP5gAXT$3">
    <ref role="13h7C2" to="zfi7:7lmP5gALKDQ" resolve="TypeofQueryTemplate" />
    <node concept="13hLZK" id="7lmP5gAXT$4" role="13h7CW">
      <node concept="3clFbS" id="7lmP5gAXT$5" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7lmP5gAXT$z" role="13h7CS">
      <property role="TrG5h" value="getQueryInterface" />
      <ref role="13i0hy" node="7lmP5gAXQfi" resolve="getQueryInterface" />
      <node concept="3Tm1VV" id="7lmP5gAXT$$" role="1B3o_S" />
      <node concept="3clFbS" id="7lmP5gAXT$E" role="3clF47">
        <node concept="3clFbF" id="7lmP5gAXTD2" role="3cqZAp">
          <node concept="2tJFMh" id="7lmP5gAXTCW" role="3clFbG">
            <node concept="ZC_QK" id="7lmP5gAXTEM" role="2tJFKM">
              <ref role="2aWVGs" to="tj24:1T5MAgP$8dd" resolve="TypeOfQuery" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2sp9CU" id="7lmP5gAXT$F" role="3clF45">
        <ref role="2sp9C9" to="tpee:g7pOWCK" resolve="Classifier" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7lmP5gAYgV9">
    <ref role="13h7C2" to="zfi7:7lmP5gAYc5S" resolve="TypecheckingQueryParameter" />
    <node concept="13i0hz" id="7lmP5gAYgVD" role="13h7CS">
      <property role="TrG5h" value="getTypecheckingQueryTemplate" />
      <node concept="3Tm1VV" id="7lmP5gAYgVE" role="1B3o_S" />
      <node concept="3Tqbb2" id="7lmP5gAYgVT" role="3clF45">
        <ref role="ehGHo" to="zfi7:7lmP5gALJP$" resolve="TypecheckingQueryTemplate" />
      </node>
      <node concept="3clFbS" id="7lmP5gAYgVG" role="3clF47">
        <node concept="3clFbF" id="7lmP5gAYgZP" role="3cqZAp">
          <node concept="2OqwBi" id="7lmP5gAYh9z" role="3clFbG">
            <node concept="13iPFW" id="7lmP5gAYgZO" role="2Oq$k0" />
            <node concept="2Xjw5R" id="7lmP5gAYhiD" role="2OqNvi">
              <node concept="1xMEDy" id="7lmP5gAYhiF" role="1xVPHs">
                <node concept="chp4Y" id="7lmP5gAYhkS" role="ri$Ld">
                  <ref role="cht4Q" to="zfi7:7lmP5gALJP$" resolve="TypecheckingQueryTemplate" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="7lmP5gAYgVa" role="13h7CW">
      <node concept="3clFbS" id="7lmP5gAYgVb" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7lmP5gAYJ47">
    <ref role="13h7C2" to="zfi7:7lmP5gAYIZq" resolve="ConvertsQueryTemplate" />
    <node concept="13hLZK" id="7lmP5gAYJ48" role="13h7CW">
      <node concept="3clFbS" id="7lmP5gAYJ49" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7lmP5gAYJ4Z" role="13h7CS">
      <property role="TrG5h" value="getQueryInterface" />
      <ref role="13i0hy" node="7lmP5gAXQfi" resolve="getQueryInterface" />
      <node concept="3Tm1VV" id="7lmP5gAYJ50" role="1B3o_S" />
      <node concept="3clFbS" id="7lmP5gAYJ56" role="3clF47">
        <node concept="3clFbF" id="7lmP5gAYJ9o" role="3cqZAp">
          <node concept="2tJFMh" id="7lmP5gAYJ9m" role="3clFbG">
            <node concept="ZC_QK" id="7lmP5gAYJb8" role="2tJFKM">
              <ref role="2aWVGs" to="tj24:5EDW3XDYNS7" resolve="ConvertQuery" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2sp9CU" id="7lmP5gAYJ57" role="3clF45">
        <ref role="2sp9C9" to="tpee:g7pOWCK" resolve="Classifier" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7lmP5gAYJq0">
    <ref role="13h7C2" to="zfi7:7lmP5gAYJev" resolve="CoerceToQueryTemplate" />
    <node concept="13hLZK" id="7lmP5gAYJq1" role="13h7CW">
      <node concept="3clFbS" id="7lmP5gAYJq2" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7lmP5gAYJqS" role="13h7CS">
      <property role="TrG5h" value="getQueryInterface" />
      <ref role="13i0hy" node="7lmP5gAXQfi" resolve="getQueryInterface" />
      <node concept="3Tm1VV" id="7lmP5gAYJqT" role="1B3o_S" />
      <node concept="3clFbS" id="7lmP5gAYJqZ" role="3clF47">
        <node concept="3clFbF" id="7lmP5gAYJvh" role="3cqZAp">
          <node concept="2tJFMh" id="7lmP5gAYJvf" role="3clFbG">
            <node concept="ZC_QK" id="7lmP5gAYJx1" role="2tJFKM">
              <ref role="2aWVGs" to="tj24:5EDW3XDYNTS" resolve="CoerceQuery" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2sp9CU" id="7lmP5gAYJr0" role="3clF45">
        <ref role="2sp9C9" to="tpee:g7pOWCK" resolve="Classifier" />
      </node>
    </node>
  </node>
</model>

