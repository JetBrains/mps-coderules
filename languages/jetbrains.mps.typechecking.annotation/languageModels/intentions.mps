<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8991efa4-0db2-4f35-8467-4fdbae2564cc(jetbrains.mps.typechecking.annotation.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="-1" />
    <use id="0b80a2e8-f9f1-47b3-823f-56eb115bca42" name="jetbrains.mps.typechecking.annotation" version="0" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="0" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wcmu" ref="r:1070fac4-bb22-4bb6-b0bf-ec58df816edc(jetbrains.mps.typechecking.annotation.structure)" />
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpfp" ref="r:00000000-0000-4000-0000-011c89590519(jetbrains.mps.baseLanguage.regexp.jetbrains.mps.regexp.accessory)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
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
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795771125" name="jetbrains.mps.lang.intentions.structure.IsApplicableBlock" flags="in" index="2SaL7w" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093995" name="isApplicableFunction" index="2ZfVeh" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1140133623887" name="jetbrains.mps.lang.smodel.structure.Node_DeleteOperation" flags="nn" index="1PgB_6" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp">
      <concept id="1175161264766" name="jetbrains.mps.baseLanguage.regexp.structure.LineStartRegexp" flags="ng" index="2t4tHJ" />
      <concept id="1175169009571" name="jetbrains.mps.baseLanguage.regexp.structure.FindMatchStatement" flags="nn" index="2ty0qM">
        <child id="1175169023932" name="expr" index="2ty3UH" />
        <child id="1175169154112" name="body" index="2tyzPh" />
      </concept>
      <concept id="1174482804200" name="jetbrains.mps.baseLanguage.regexp.structure.PlusRegexp" flags="ng" index="1OClNT" />
      <concept id="1174482808826" name="jetbrains.mps.baseLanguage.regexp.structure.StarRegexp" flags="ng" index="1OCmVF" />
      <concept id="1174484562151" name="jetbrains.mps.baseLanguage.regexp.structure.SeqRegexp" flags="ng" index="1OJ37Q" />
      <concept id="1174485167097" name="jetbrains.mps.baseLanguage.regexp.structure.BinaryRegexp" flags="ng" index="1OLmFC">
        <child id="1174485176897" name="left" index="1OLpdg" />
        <child id="1174485181039" name="right" index="1OLqdY" />
      </concept>
      <concept id="1174485235885" name="jetbrains.mps.baseLanguage.regexp.structure.UnaryRegexp" flags="ng" index="1OLBAW">
        <child id="1174485243418" name="regexp" index="1OLDsb" />
      </concept>
      <concept id="1174510540317" name="jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression" flags="nn" index="1Qi9sc">
        <child id="1174510571016" name="regexp" index="1QigWp" />
      </concept>
      <concept id="1174555732504" name="jetbrains.mps.baseLanguage.regexp.structure.PredefinedSymbolClassRegexp" flags="ng" index="1SYyG9">
        <reference id="1174555843709" name="symbolClass" index="1SYXPG" />
      </concept>
      <concept id="1174556813606" name="jetbrains.mps.baseLanguage.regexp.structure.DotRegexp" flags="ng" index="1T2EwR" />
      <concept id="1174564062919" name="jetbrains.mps.baseLanguage.regexp.structure.MatchParensRegexp" flags="ng" index="1Tukvm">
        <child id="1174564160889" name="regexp" index="1TuGhC" />
      </concept>
      <concept id="1174565027678" name="jetbrains.mps.baseLanguage.regexp.structure.MatchVariableReference" flags="nn" index="1TxZTf">
        <reference id="1174565035929" name="match" index="1Ty1U8" />
      </concept>
      <concept id="1174653354106" name="jetbrains.mps.baseLanguage.regexp.structure.RegexpUsingConstruction" flags="ng" index="1YMW5F">
        <child id="1174653387388" name="regexp" index="1YN4dH" />
      </concept>
    </language>
  </registry>
  <node concept="2S6QgY" id="7ycTm4q5vdg">
    <property role="TrG5h" value="AddTypeAnnotation" />
    <ref role="2ZfgGC" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="2S6ZIM" id="7ycTm4q5vdh" role="2ZfVej">
      <node concept="3clFbS" id="7ycTm4q5vdi" role="2VODD2">
        <node concept="3clFbF" id="7ycTm4q5vYr" role="3cqZAp">
          <node concept="Xl_RD" id="7ycTm4q5vYq" role="3clFbG">
            <property role="Xl_RC" value="Add Type Annotation" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7ycTm4q5vdj" role="2ZfgGD">
      <node concept="3clFbS" id="7ycTm4q5vdk" role="2VODD2">
        <node concept="3cpWs8" id="7KcYPxpU_xE" role="3cqZAp">
          <node concept="3cpWsn" id="7KcYPxpU_xF" role="3cpWs9">
            <property role="TrG5h" value="ann" />
            <node concept="3Tqbb2" id="7KcYPxpU_xD" role="1tU5fm">
              <ref role="ehGHo" to="wcmu:7ycTm4q3Xcb" resolve="TypeAnnotation" />
            </node>
            <node concept="2OqwBi" id="7KcYPxpU_xG" role="33vP2m">
              <node concept="2OqwBi" id="7KcYPxpU_xH" role="2Oq$k0">
                <node concept="2Sf5sV" id="7KcYPxpU_xI" role="2Oq$k0" />
                <node concept="3CFZ6_" id="7KcYPxpU_xJ" role="2OqNvi">
                  <node concept="3CFYIy" id="7KcYPxpU_xK" role="3CFYIz">
                    <ref role="3CFYIx" to="wcmu:7ycTm4q3Xcb" resolve="TypeAnnotation" />
                  </node>
                </node>
              </node>
              <node concept="zfrQC" id="7KcYPxpU_xL" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7KcYPxpVjXp" role="3cqZAp">
          <node concept="3cpWsn" id="7KcYPxpVjXq" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="3uibUv" id="7KcYPxpVjXo" role="1tU5fm">
              <ref role="3uigEE" to="e2lb:~String" resolve="String" />
            </node>
            <node concept="2YIFZM" id="7KcYPxpVjXr" role="33vP2m">
              <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
              <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
              <node concept="2OqwBi" id="7KcYPxpVjXs" role="37wK5m">
                <node concept="2Sf5sV" id="7KcYPxpVjXt" role="2Oq$k0" />
                <node concept="3JvlWi" id="7KcYPxpVjXu" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2ty0qM" id="7KcYPxpVn6u" role="3cqZAp">
          <node concept="1Qi9sc" id="7KcYPxpVn6w" role="1YN4dH">
            <node concept="1OJ37Q" id="7KcYPxpVodN" role="1QigWp">
              <node concept="1Tukvm" id="7KcYPxpVocz" role="1OLpdg">
                <property role="TrG5h" value="prefix" />
                <node concept="1OJ37Q" id="7KcYPxpVodd" role="1TuGhC">
                  <node concept="2t4tHJ" id="7KcYPxpVocS" role="1OLpdg" />
                  <node concept="1OClNT" id="7KcYPxpVody" role="1OLqdY">
                    <node concept="1SYyG9" id="7KcYPxpVodg" role="1OLDsb">
                      <ref role="1SYXPG" to="tpfp:h5SUH0W" resolve="\S" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1OCmVF" id="7KcYPxpVoei" role="1OLqdY">
                <node concept="1T2EwR" id="7KcYPxpVodM" role="1OLDsb" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="7KcYPxpVnO0" role="2ty3UH">
            <ref role="3cqZAo" node="7KcYPxpVjXq" resolve="text" />
          </node>
          <node concept="3clFbS" id="7KcYPxpVn6$" role="2tyzPh">
            <node concept="3clFbF" id="7KcYPxpU$XN" role="3cqZAp">
              <node concept="37vLTI" id="7KcYPxpUA6X" role="3clFbG">
                <node concept="37vLTw" id="7KcYPxpVoQp" role="37vLTJ">
                  <ref role="3cqZAo" node="7KcYPxpVjXq" resolve="text" />
                </node>
                <node concept="1TxZTf" id="7KcYPxpVoks" role="37vLTx">
                  <ref role="1Ty1U8" node="7KcYPxpVocz" resolve="prefix" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7KcYPxpVouM" role="3cqZAp">
          <node concept="37vLTI" id="7KcYPxpVouN" role="3clFbG">
            <node concept="2OqwBi" id="7KcYPxpVouO" role="37vLTJ">
              <node concept="37vLTw" id="7KcYPxpVouP" role="2Oq$k0">
                <ref role="3cqZAo" node="7KcYPxpU_xF" resolve="ann" />
              </node>
              <node concept="3TrcHB" id="7KcYPxpVouQ" role="2OqNvi">
                <ref role="3TsBF5" to="wcmu:7ycTm4q4781" resolve="text" />
              </node>
            </node>
            <node concept="37vLTw" id="7KcYPxpVoQM" role="37vLTx">
              <ref role="3cqZAo" node="7KcYPxpVjXq" resolve="text" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="7ycTm4q5wol" role="2ZfVeh">
      <node concept="3clFbS" id="7ycTm4q5wom" role="2VODD2">
        <node concept="3clFbF" id="7KcYPxpU$0y" role="3cqZAp">
          <node concept="2OqwBi" id="7KcYPxpU$sQ" role="3clFbG">
            <node concept="2OqwBi" id="7KcYPxpU$43" role="2Oq$k0">
              <node concept="2Sf5sV" id="7KcYPxpU$0x" role="2Oq$k0" />
              <node concept="3CFZ6_" id="7KcYPxpU$eF" role="2OqNvi">
                <node concept="3CFYIy" id="7KcYPxpU$kM" role="3CFYIz">
                  <ref role="3CFYIx" to="wcmu:7ycTm4q3Xcb" resolve="TypeAnnotation" />
                </node>
              </node>
            </node>
            <node concept="3w_OXm" id="7KcYPxpU$Rx" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="7KcYPxpVfgR">
    <property role="TrG5h" value="RemoveTypeAnnotation" />
    <ref role="2ZfgGC" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="2S6ZIM" id="7KcYPxpVfgS" role="2ZfVej">
      <node concept="3clFbS" id="7KcYPxpVfgT" role="2VODD2">
        <node concept="3clFbF" id="7KcYPxpVfth" role="3cqZAp">
          <node concept="Xl_RD" id="7KcYPxpVftg" role="3clFbG">
            <property role="Xl_RC" value="Remove Type Annotation" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7KcYPxpVfgU" role="2ZfgGD">
      <node concept="3clFbS" id="7KcYPxpVfgV" role="2VODD2">
        <node concept="3clFbF" id="7KcYPxpVhIw" role="3cqZAp">
          <node concept="2OqwBi" id="7KcYPxpVhUa" role="3clFbG">
            <node concept="2OqwBi" id="7KcYPxpVhJj" role="2Oq$k0">
              <node concept="2Sf5sV" id="7KcYPxpVhIv" role="2Oq$k0" />
              <node concept="3CFZ6_" id="7KcYPxpVhPa" role="2OqNvi">
                <node concept="3CFYIy" id="7KcYPxpVhQa" role="3CFYIz">
                  <ref role="3CFYIx" to="wcmu:7ycTm4q3Xcb" resolve="TypeAnnotation" />
                </node>
              </node>
            </node>
            <node concept="1PgB_6" id="7KcYPxpVigA" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="7KcYPxpVfRk" role="2ZfVeh">
      <node concept="3clFbS" id="7KcYPxpVfRl" role="2VODD2">
        <node concept="3clFbF" id="7KcYPxpVfYA" role="3cqZAp">
          <node concept="2OqwBi" id="7KcYPxpVhdN" role="3clFbG">
            <node concept="2OqwBi" id="7KcYPxpVgP1" role="2Oq$k0">
              <node concept="2Sf5sV" id="7KcYPxpVfY_" role="2Oq$k0" />
              <node concept="3CFZ6_" id="7KcYPxpVgZC" role="2OqNvi">
                <node concept="3CFYIy" id="7KcYPxpVh5J" role="3CFYIz">
                  <ref role="3CFYIx" to="wcmu:7ycTm4q3Xcb" resolve="TypeAnnotation" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="7KcYPxpVhCu" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

