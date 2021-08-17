<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2e850586-b012-4b1a-9080-68602bc3e8c1(jetbrains.mps.lang.typechecking.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="zfi7" ref="r:39840d4e-f61c-4452-88c5-75b1eb10e892(jetbrains.mps.lang.typechecking.structure)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="vxmb" ref="r:3345f3eb-f61a-42bd-88eb-d9032a80e9a6(jetbrains.mps.lang.coderules.editor)" implicit="true" />
    <import index="qgy9" ref="r:5195f849-566d-46a3-bb0a-7ae9911e2652(jetbrains.mps.logic.editor)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="5991739802479784073" name="jetbrains.mps.lang.editor.structure.MenuTypeDefault" flags="ng" index="22hDWj" />
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ng" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="2000375450116423800" name="jetbrains.mps.lang.editor.structure.SubstituteMenu" flags="ng" index="22mcaB" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="928328222691832421" name="separatorTextQuery" index="2gpyvW" />
        <child id="1233141163694" name="separatorStyle" index="sWeuL" />
      </concept>
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="709996738298806197" name="jetbrains.mps.lang.editor.structure.QueryFunction_SeparatorText" flags="in" index="2o9xnK" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="1177327570013" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Substitute" flags="in" index="ucgPf" />
      <concept id="8478191136883534237" name="jetbrains.mps.lang.editor.structure.IExtensibleSubstituteMenuPart" flags="ng" index="upBLQ">
        <child id="8478191136883534238" name="features" index="upBLP" />
      </concept>
      <concept id="1177335944525" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_SubstituteString" flags="in" index="uGdhv" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ng" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
        <child id="5991739802479788259" name="type" index="22hAXT" />
      </concept>
      <concept id="8998492695583125082" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_MatchingText" flags="ng" index="16NfWO">
        <child id="8998492695583129244" name="query" index="16NeZM" />
      </concept>
      <concept id="1154465273778" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_ParentNode" flags="nn" index="3bvxqY" />
      <concept id="7342352913006985483" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Action" flags="ng" index="3eGOop">
        <child id="8612453216082699922" name="substituteHandler" index="3aKz83" />
      </concept>
      <concept id="414384289274418283" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Group" flags="ng" index="3ft6gV">
        <child id="414384289274424750" name="condition" index="3ft5RY" />
        <child id="414384289274424751" name="parts" index="3ft5RZ" />
      </concept>
      <concept id="414384289274418284" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Condition" flags="ig" index="3ft6gW" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1082639509531" name="nullText" index="ilYzB" />
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
  <node concept="24kQdi" id="7lmP5gALJrJ">
    <property role="3GE5qa" value="query" />
    <ref role="1XX52x" to="zfi7:7lmP5gALJri" resolve="TypecheckingQueries" />
    <node concept="3EZMnI" id="7lmP5gALJrL" role="2wV5jI">
      <node concept="PMmxH" id="7lmP5gALJrS" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0ifn" id="5EDW3XE0PmJ" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="VPM3Z" id="5EDW3XE0PmK" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="pVoyu" id="5EDW3XE0PmL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="7lmP5gALLXW" role="3EZMnx">
        <ref role="1NtTu8" to="zfi7:7lmP5gALKoA" resolve="template" />
        <node concept="lj46D" id="7lmP5gALLYk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="7lmP5gALLYl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="7lmP5gALLXY" role="2czzBx" />
        <node concept="tppnM" id="7lmP5gAY_9S" role="sWeuL">
          <node concept="ljvvj" id="7lmP5gAY_9U" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2o9xnK" id="7lmP5gAY_SK" role="2gpyvW">
          <node concept="3clFbS" id="7lmP5gAY_SL" role="2VODD2">
            <node concept="3clFbF" id="7lmP5gAY_Xp" role="3cqZAp">
              <node concept="Xl_RD" id="7lmP5gAY_Xo" role="3clFbG">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="7lmP5gALJrO" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7lmP5gALJRi">
    <property role="3GE5qa" value="query" />
    <ref role="1XX52x" to="zfi7:7lmP5gALJP$" resolve="TypecheckingQueryTemplate" />
    <node concept="3EZMnI" id="7lmP5gALQbc" role="2wV5jI">
      <node concept="3F0ifn" id="7lmP5gALQbj" role="3EZMnx">
        <property role="ilYzB" value="&lt;choose from menu&gt;" />
        <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
        <node concept="VPM3Z" id="7lmP5gALRmO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPxyj" id="7lmP5gALRmT" role="3F10Kt" />
      </node>
      <node concept="l2Vlx" id="7lmP5gALQbf" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7lmP5gALP1c">
    <property role="3GE5qa" value="query" />
    <ref role="1XX52x" to="zfi7:7lmP5gALJQ1" resolve="CheckQueryTemplate" />
    <node concept="PMmxH" id="7lmP5gAYxcx" role="2wV5jI">
      <ref role="PMmxG" node="7lmP5gAYx5Q" resolve="TypecheckingQueryTemplate_component" />
    </node>
  </node>
  <node concept="24kQdi" id="7lmP5gALP8w">
    <property role="3GE5qa" value="query" />
    <ref role="1XX52x" to="zfi7:7lmP5gALKDQ" resolve="TypeofQueryTemplate" />
    <node concept="PMmxH" id="7lmP5gAYx6D" role="2wV5jI">
      <ref role="PMmxG" node="7lmP5gAYx5Q" resolve="TypecheckingQueryTemplate_component" />
    </node>
  </node>
  <node concept="24kQdi" id="7lmP5gAYc72">
    <property role="3GE5qa" value="query" />
    <ref role="1XX52x" to="zfi7:7lmP5gAYc5S" resolve="TypecheckingQueryParameter" />
    <node concept="3EZMnI" id="5EDW3XEaRlR" role="2wV5jI">
      <node concept="PMmxH" id="5EDW3XEaRlY" role="3EZMnx">
        <ref role="1k5W1q" to="vxmb:7ksQUDZqpsE" resolve="InputName" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="l2Vlx" id="5EDW3XEaRlU" role="2iSdaV" />
    </node>
  </node>
  <node concept="22mcaB" id="7lmP5gAYcrc">
    <property role="3GE5qa" value="query" />
    <ref role="aqKnT" to="zfi7:7lmP5gAYc5S" resolve="TypecheckingQueryParameter" />
    <node concept="3ft6gV" id="5EDW3XEaQms" role="3ft7WO">
      <node concept="3eGOop" id="5EDW3XEc8hU" role="3ft5RZ">
        <node concept="ucgPf" id="5EDW3XEc8hW" role="3aKz83">
          <node concept="3clFbS" id="5EDW3XEc8hY" role="2VODD2">
            <node concept="3clFbF" id="5EDW3XEc8jh" role="3cqZAp">
              <node concept="2ShNRf" id="5EDW3XEc8jf" role="3clFbG">
                <node concept="3zrR0B" id="5EDW3XEc9io" role="2ShVmc">
                  <node concept="3Tqbb2" id="5EDW3XEc9iq" role="3zrR0E">
                    <ref role="ehGHo" to="zfi7:7lmP5gAYc5S" resolve="TypecheckingQueryParameter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NfWO" id="5EDW3XEcbS2" role="upBLP">
          <node concept="uGdhv" id="5EDW3XEcbSQ" role="16NeZM">
            <node concept="3clFbS" id="5EDW3XEcbSS" role="2VODD2">
              <node concept="3clFbF" id="5EDW3XEcbXN" role="3cqZAp">
                <node concept="Xl_RD" id="7lmP5gAYtY0" role="3clFbG">
                  <property role="Xl_RC" value="query" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3ft6gW" id="5EDW3XEaQmu" role="3ft5RY">
        <node concept="3clFbS" id="5EDW3XEaQmv" role="2VODD2">
          <node concept="3clFbF" id="5EDW3XEaQqz" role="3cqZAp">
            <node concept="2OqwBi" id="5EDW3XEaQYy" role="3clFbG">
              <node concept="2OqwBi" id="5EDW3XEaQun" role="2Oq$k0">
                <node concept="3bvxqY" id="5EDW3XEaQqy" role="2Oq$k0" />
                <node concept="2Xjw5R" id="5EDW3XEaQA0" role="2OqNvi">
                  <node concept="1xMEDy" id="5EDW3XEaQA2" role="1xVPHs">
                    <node concept="chp4Y" id="7lmP5gAYoWj" role="ri$Ld">
                      <ref role="cht4Q" to="zfi7:7lmP5gALJP$" resolve="TypecheckingQueryTemplate" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="5EDW3XEaQNF" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="5EDW3XEaRfS" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="22hDWj" id="7lmP5gAYcry" role="22hAXT" />
  </node>
  <node concept="PKFIW" id="7lmP5gAYx5Q">
    <property role="TrG5h" value="TypecheckingQueryTemplate_component" />
    <property role="3GE5qa" value="query" />
    <ref role="1XX52x" to="zfi7:7lmP5gALJP$" resolve="TypecheckingQueryTemplate" />
    <node concept="3EZMnI" id="7lmP5gAYx6d" role="2wV5jI">
      <node concept="l2Vlx" id="7lmP5gAYx6e" role="2iSdaV" />
      <node concept="PMmxH" id="7lmP5gAYx6f" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="Vb9p2" id="7lmP5gAYzQe" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="7lmP5gAYz$k" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F0ifn" id="7lmP5gAYzQw" role="3EZMnx">
        <property role="3F0ifm" value="query" />
        <node concept="Vb9p2" id="7lmP5gAYzQN" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="7lmP5gAYz$K" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="3F0ifn" id="7lmP5gAYx6g" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="7lmP5gAYx6h" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="7lmP5gAYx6i" role="3EZMnx">
        <node concept="lj46D" id="7lmP5gAYx6j" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="7lmP5gAYx6k" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F1sOY" id="7lmP5gAYx6l" role="3EZMnx">
          <ref role="1NtTu8" to="zfi7:7lmP5gALJP_" resolve="code" />
        </node>
        <node concept="l2Vlx" id="7lmP5gAYx6m" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="7lmP5gAYx6n" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
        <node concept="pVoyu" id="7lmP5gAYx6o" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="7lmP5gAYx6p" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7lmP5gAYJ1k">
    <property role="3GE5qa" value="query" />
    <ref role="1XX52x" to="zfi7:7lmP5gAYIZq" resolve="ConvertsQueryTemplate" />
    <node concept="PMmxH" id="7lmP5gAYJ23" role="2wV5jI">
      <ref role="PMmxG" node="7lmP5gAYx5Q" resolve="TypecheckingQueryTemplate_component" />
    </node>
  </node>
  <node concept="24kQdi" id="7lmP5gAYJor">
    <property role="3GE5qa" value="query" />
    <ref role="1XX52x" to="zfi7:7lmP5gAYJev" resolve="CoerceToQueryTemplate" />
    <node concept="PMmxH" id="7lmP5gAYJpa" role="2wV5jI">
      <ref role="PMmxG" node="7lmP5gAYx5Q" resolve="TypecheckingQueryTemplate_component" />
    </node>
  </node>
  <node concept="24kQdi" id="6wBZuQUFfnV">
    <ref role="1XX52x" to="zfi7:6wBZuQUF2vT" resolve="TypeTermTable" />
    <node concept="3EZMnI" id="5hSMZ_lNwqE" role="2wV5jI">
      <node concept="3EZMnI" id="5hSMZ_lNwqF" role="3EZMnx">
        <node concept="VPM3Z" id="5hSMZ_lNwqG" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="PMmxH" id="5hSMZ_lNwqH" role="3EZMnx">
          <ref role="1k5W1q" to="qgy9:4aJUH_hW38r" resolve="RuleKeyword" />
          <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        </node>
        <node concept="3F0A7n" id="5hSMZ_lNwqI" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3EZMnI" id="7LI_gNMlkLy" role="3EZMnx">
          <node concept="VPM3Z" id="7LI_gNMlkL$" role="3F10Kt" />
          <node concept="3F0ifn" id="7LI_gNMllqp" role="3EZMnx">
            <property role="3F0ifm" value="extends" />
          </node>
          <node concept="1iCGBv" id="7LI_gNMllzg" role="3EZMnx">
            <ref role="1NtTu8" to="zfi7:6wBZuQUF9QY" resolve="extended" />
            <node concept="1sVBvm" id="7LI_gNMllzi" role="1sWHZn">
              <node concept="3F0A7n" id="7LI_gNMll$4" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="l2Vlx" id="7LI_gNMlkLB" role="2iSdaV" />
          <node concept="pkWqt" id="7LI_gNMlkLO" role="pqm2j">
            <node concept="3clFbS" id="7LI_gNMlkLP" role="2VODD2">
              <node concept="3clFbF" id="7LI_gNMlkQ1" role="3cqZAp">
                <node concept="2OqwBi" id="7LI_gNMlle8" role="3clFbG">
                  <node concept="2OqwBi" id="7LI_gNMll4h" role="2Oq$k0">
                    <node concept="pncrf" id="7LI_gNMlkQ0" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7LI_gNMlldg" role="2OqNvi">
                      <ref role="3Tt5mk" to="zfi7:6wBZuQUF9QY" resolve="extended" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="7LI_gNMlljP" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="5hSMZ_lNwqJ" role="3EZMnx">
          <property role="3F0ifm" value=" " />
          <node concept="VPxyj" id="5hSMZ_lNwqK" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPM3Z" id="5hSMZ_lNwqL" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="pVoyu" id="5hSMZ_lNwqM" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="5hSMZ_lNwqN" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="5hSMZ_lNwqO" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5hSMZ_lNwrb" role="3EZMnx">
        <node concept="VPM3Z" id="5hSMZ_lNwrc" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F2HdR" id="5hSMZ_lNwrd" role="3EZMnx">
          <property role="2czwfO" value=" " />
          <ref role="1NtTu8" to="zfi7:6wBZuQUF99Q" resolve="contents" />
          <node concept="pj6Ft" id="5hSMZ_lNwre" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="5hSMZ_lNwrf" role="2czzBx" />
          <node concept="tppnM" id="4bWqD4CjBOI" role="sWeuL">
            <node concept="ljvvj" id="4bWqD4CjBOK" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="5hSMZ_lNwrg" role="2iSdaV" />
      </node>
      <node concept="l2Vlx" id="5hSMZ_lNwrh" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6wBZuQUFpkt">
    <ref role="1XX52x" to="zfi7:6wBZuQUFd0b" resolve="TypeTermDeclaration" />
    <node concept="3EZMnI" id="4MEOIDFttNp" role="2wV5jI">
      <node concept="PMmxH" id="6wBZuQUGw5w" role="3EZMnx">
        <ref role="PMmxG" to="vxmb:6wBZuQUGpjH" resolve="TermDeclaration_Editor" />
      </node>
      <node concept="3F0ifn" id="6wBZuQUGwsL" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
      </node>
      <node concept="3F1sOY" id="6wBZuQUG4uD" role="3EZMnx">
        <ref role="1NtTu8" to="zfi7:6wBZuQUG3fi" resolve="builder" />
      </node>
      <node concept="l2Vlx" id="4MEOIDFttNs" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6wBZuQUG4V5">
    <ref role="1XX52x" to="zfi7:6wBZuQUG1yn" resolve="TypeNodeBuilder" />
    <node concept="3EZMnI" id="6wBZuQUG4Xz" role="2wV5jI">
      <node concept="3F1sOY" id="6wBZuQUG5Ff" role="3EZMnx">
        <ref role="1NtTu8" to="zfi7:6wBZuQUG57q" resolve="body" />
      </node>
      <node concept="l2Vlx" id="6wBZuQUG4XA" role="2iSdaV" />
    </node>
  </node>
</model>

