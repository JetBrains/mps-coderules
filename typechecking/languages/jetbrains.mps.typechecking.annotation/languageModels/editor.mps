<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:26262999-7049-47d1-a8fc-8e4617b9cd2d(jetbrains.mps.typechecking.annotation.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpc5" ref="r:00000000-0000-4000-0000-011c89590299(jetbrains.mps.lang.editor.editor)" />
    <import index="wcmu" ref="r:1070fac4-bb22-4bb6-b0bf-ec58df816edc(jetbrains.mps.typechecking.annotation.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326896143883" name="jetbrains.mps.lang.editor.structure.CellKeyMap_FunctionParm_selectedNode" flags="nn" index="0GJ7k" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1136916919141" name="jetbrains.mps.lang.editor.structure.CellKeyMapItem" flags="lg" index="2PxR9H">
        <child id="1136916998332" name="keystroke" index="2PyaAO" />
        <child id="1136917325338" name="isApplicableFunction" index="2Pzqsi" />
        <child id="1136920925604" name="executeFunction" index="2PL9iG" />
      </concept>
      <concept id="1136916976737" name="jetbrains.mps.lang.editor.structure.CellKeyMapKeystroke" flags="ng" index="2Py5lD">
        <property id="1136923970223" name="modifiers" index="2PWKIB" />
        <property id="1136923970224" name="keycode" index="2PWKIS" />
      </concept>
      <concept id="1136917249679" name="jetbrains.mps.lang.editor.structure.CellKeyMap_IsApplicableFunction" flags="in" index="2Pz7Y7" />
      <concept id="1136917288805" name="jetbrains.mps.lang.editor.structure.CellKeyMap_ExecuteFunction" flags="in" index="2PzhpH" />
      <concept id="1149850725784" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedNodeCell" flags="ng" index="2SsqMj" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186415722038" name="jetbrains.mps.lang.editor.structure.FontSizeStyleClassItem" flags="ln" index="VSNWy">
        <child id="1221064706952" name="query" index="1d8cEk" />
      </concept>
      <concept id="1081293058843" name="jetbrains.mps.lang.editor.structure.CellKeyMapDeclaration" flags="ig" index="325Ffw">
        <child id="1136930944870" name="item" index="2QnnpI" />
      </concept>
      <concept id="1221057094638" name="jetbrains.mps.lang.editor.structure.QueryFunction_Integer" flags="in" index="1cFabM" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <reference id="1081339532145" name="keyMap" index="34QXea" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="7ycTm4q44Mn">
    <ref role="1XX52x" to="wcmu:7ycTm4q3Xcb" resolve="TypeAnnotation" />
    <node concept="3EZMnI" id="7ycTm4q477k" role="2wV5jI">
      <node concept="2SsqMj" id="7ycTm4q477u" role="3EZMnx">
        <ref role="34QXea" node="7KcYPxpVyXr" resolve="TypeAnnotation_Remove" />
      </node>
      <node concept="3EZMnI" id="7ycTm4q477H" role="3EZMnx">
        <node concept="VPM3Z" id="7ycTm4q477J" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="7ycTm4q477M" role="2iSdaV" />
        <node concept="3F0A7n" id="7ycTm4q478l" role="3EZMnx">
          <ref role="1NtTu8" to="wcmu:7ycTm4q4781" resolve="text" />
          <node concept="VPM3Z" id="7KcYPxpVx8q" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPxyj" id="7KcYPxpVxbf" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VSNWy" id="7ycTm4q4_Mt" role="3F10Kt">
            <node concept="1cFabM" id="7ycTm4q4_Mx" role="1d8cEk">
              <node concept="3clFbS" id="7ycTm4q4_My" role="2VODD2">
                <node concept="3clFbF" id="7ycTm4q4_WP" role="3cqZAp">
                  <node concept="3cmrfG" id="7ycTm4q4_WO" role="3clFbG">
                    <property role="3cmrfH" value="8" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="7ycTm4q477y" role="2iSdaV" />
    </node>
  </node>
  <node concept="325Ffw" id="7KcYPxpVyXr">
    <property role="TrG5h" value="TypeAnnotation_Remove" />
    <node concept="2PxR9H" id="7KcYPxpVyZO" role="2QnnpI">
      <node concept="2Py5lD" id="7KcYPxpVyZP" role="2PyaAO">
        <property role="2PWKIB" value="ctrl" />
        <property role="2PWKIS" value="VK_T" />
      </node>
      <node concept="2PzhpH" id="7KcYPxpVyZQ" role="2PL9iG">
        <node concept="3clFbS" id="7KcYPxpVyZR" role="2VODD2">
          <node concept="3clFbF" id="7KcYPxpV$uL" role="3cqZAp">
            <node concept="2OqwBi" id="7KcYPxpV$DB" role="3clFbG">
              <node concept="2OqwBi" id="7KcYPxpV$vw" role="2Oq$k0">
                <node concept="0GJ7k" id="7KcYPxpV$uK" role="2Oq$k0" />
                <node concept="3CFZ6_" id="7KcYPxpV$_R" role="2OqNvi">
                  <node concept="3CFYIy" id="7KcYPxpV$Bc" role="3CFYIz">
                    <ref role="3CFYIx" to="wcmu:7ycTm4q3Xcb" resolve="TypeAnnotation" />
                  </node>
                </node>
              </node>
              <node concept="3YRAZt" id="7KcYPxpV_29" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2Pz7Y7" id="7KcYPxpVyZW" role="2Pzqsi">
        <node concept="3clFbS" id="7KcYPxpVyZX" role="2VODD2">
          <node concept="3clFbF" id="7KcYPxpVz8Y" role="3cqZAp">
            <node concept="2OqwBi" id="7KcYPxpVzVT" role="3clFbG">
              <node concept="2OqwBi" id="7KcYPxpVz$T" role="2Oq$k0">
                <node concept="0GJ7k" id="7KcYPxpVz8X" role="2Oq$k0" />
                <node concept="3CFZ6_" id="7KcYPxpVzHH" role="2OqNvi">
                  <node concept="3CFYIy" id="7KcYPxpVzNO" role="3CFYIz">
                    <ref role="3CFYIx" to="wcmu:7ycTm4q3Xcb" resolve="TypeAnnotation" />
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="7KcYPxpV$oM" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

