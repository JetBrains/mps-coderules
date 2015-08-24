<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3345f3eb-f61a-42bd-88eb-d9032a80e9a6(jetbrains.mps.lang.typesystem2.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="tp2u" ref="r:00000000-0000-4000-0000-011c8959032a(jetbrains.mps.baseLanguage.collections.editor)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="qgy9" ref="r:5195f849-566d-46a3-bb0a-7ae9911e2652(jetbrains.mps.logic.editor)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" implicit="true" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
        <child id="1233141163694" name="separatorStyle" index="sWeuL" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="3308309804690746362" name="jetbrains.mps.lang.editor.structure.QueryFunction_ColorComposit" flags="ig" index="mot77" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="6150987479542522273" name="jetbrains.mps.lang.editor.structure.QueryHintsSpecification" flags="ig" index="2Hnlc$" />
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1149850725784" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedNodeCell" flags="ng" index="2SsqMj" />
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styleClass" index="V601i" />
      </concept>
      <concept id="1214320119173" name="jetbrains.mps.lang.editor.structure.SideTransformAnchorTagStyleClassItem" flags="ln" index="2V7CMv">
        <property id="1214320119174" name="tag" index="2V7CMs" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186404574412" name="jetbrains.mps.lang.editor.structure.BackgroundColorStyleClassItem" flags="ln" index="Veino" />
      <concept id="1186413799158" name="jetbrains.mps.lang.editor.structure.BracketColorStyleClassItem" flags="ln" index="VLuvy" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
        <child id="1223387335081" name="query" index="3n$kyP" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1225456267680" name="jetbrains.mps.lang.editor.structure.RGBColor" flags="ng" index="1iSF2X">
        <property id="1225456424731" name="value" index="1iTho6" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1223387125302" name="jetbrains.mps.lang.editor.structure.QueryFunction_Boolean" flags="in" index="3nzxsE" />
      <concept id="1165424453110" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item" flags="ng" index="1oHujT">
        <property id="1165424453111" name="matchingText" index="1oHujS" />
        <child id="1165424453112" name="handlerFunction" index="1oHujR" />
      </concept>
      <concept id="1165424657443" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item_Handler" flags="in" index="1oIgkG" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1219226236603" name="jetbrains.mps.lang.editor.structure.DrawBracketsStyleClassItem" flags="ln" index="3vyZuw" />
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="1075375595203" name="jetbrains.mps.lang.editor.structure.CellModel_Error" flags="sg" stub="8104358048506729356" index="1xolST">
        <property id="1075375595204" name="text" index="1xolSY" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="7667708318090725848" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentAnchorStyleClassItem" flags="ln" index="1Bsynf" />
      <concept id="7667708318090877006" name="jetbrains.mps.lang.editor.structure.IndentLayoutWrapAnchorStyleClassItem" flags="ln" index="1Bt7hp" />
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1160590353935" name="usesFolding" index="S$Qs1" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="4242538589862653897" name="addHints" index="2whIAn" />
        <child id="7723470090030138869" name="foldedCellModel" index="AHCbl" />
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
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="nn" index="3GMtW1" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1088612959204" name="jetbrains.mps.lang.editor.structure.CellModel_Alternation" flags="sg" stub="8104358048506729361" index="1QoScp">
        <property id="1088613081987" name="vertical" index="1QpmdY" />
        <child id="1145918517974" name="alternationCondition" index="3e4ffs" />
        <child id="1088612958265" name="ifTrueCellModel" index="1QoS34" />
        <child id="1088612973955" name="ifFalseCellModel" index="1QoVPY" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
      <concept id="1176809959526" name="jetbrains.mps.lang.editor.structure.QueryFunction_Color" flags="in" index="3ZlJ5R" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
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
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1140133623887" name="jetbrains.mps.lang.smodel.structure.Node_DeleteOperation" flags="nn" index="1PgB_6" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="1172424058054" name="jetbrains.mps.lang.smodel.structure.ConceptRefExpression" flags="nn" index="3TUQnm">
        <reference id="1172424100906" name="conceptDeclaration" index="3TV0OU" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
    </language>
  </registry>
  <node concept="24kQdi" id="6p0DfM0bngw">
    <property role="3GE5qa" value="constraint.template" />
    <ref role="1XX52x" to="wq2x:6p0DfM0asBO" resolve="ConstraintDeclaration" />
    <node concept="3EZMnI" id="6p0DfM0brAq" role="2wV5jI">
      <node concept="3F0A7n" id="6p0DfM0brDT" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="tpen:hshUnm6" resolve="StaticMethod" />
      </node>
      <node concept="3F0ifn" id="6p0DfM0brFJ" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F2HdR" id="1CgWc1TzfCk" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="wq2x:1CgWc1TyPxy" />
        <node concept="l2Vlx" id="1CgWc1TzfCm" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="1CgWc1TzfCx" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="3F0ifn" id="1CgWc1TzfEr" role="3EZMnx">
        <property role="3F0ifm" value="/" />
      </node>
      <node concept="3F0A7n" id="1CgWc1TzfEF" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:6p0DfM0azKj" resolve="arity" />
      </node>
      <node concept="l2Vlx" id="6p0DfM0brAt" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6p0DfM0b_1e">
    <property role="3GE5qa" value="constraint.template" />
    <ref role="1XX52x" to="wq2x:6p0DfM0asb7" resolve="Solver" />
    <node concept="3EZMnI" id="6p0DfM0b_2W" role="2wV5jI">
      <node concept="PMmxH" id="6p0DfM0eyV3" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0A7n" id="6p0DfM0bMtP" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="6p0DfM0dx7K" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6p0DfM0dC8C" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="ljvvj" id="6p0DfM0dCc8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="6p0DfM0bCtT" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="wq2x:6p0DfM0asSt" />
        <node concept="l2Vlx" id="6p0DfM0bCtV" role="2czzBx" />
        <node concept="lj46D" id="6p0DfM0bHGL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="6p0DfM0bHCf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="tppnM" id="6p0DfM0bJiC" role="sWeuL">
          <node concept="ljvvj" id="6p0DfM0bJm5" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="6p0DfM0b_2Z" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6p0DfM0cz0d">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="wq2x:7eGEHDlgPU4" resolve="Rule" />
    <node concept="3EZMnI" id="6p0DfM0cz1S" role="2wV5jI">
      <node concept="PMmxH" id="7ksQUDZrjgg" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="6p0DfM0c$tx" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="tpen:hshUnm6" resolve="StaticMethod" />
      </node>
      <node concept="3F1sOY" id="5NuEpF1ikEB" role="3EZMnx">
        <property role="1$x2rV" value="with no input" />
        <ref role="1NtTu8" to="wq2x:5NuEpF1iiJF" />
      </node>
      <node concept="3EZMnI" id="3cHjmmLOA9h" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <node concept="VPM3Z" id="3cHjmmLOA9j" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="7yvZ58ORPXb" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="3cHjmmLOA9m" role="2iSdaV" />
        <node concept="3EZMnI" id="4laj_h9ENek" role="3EZMnx">
          <node concept="3F0ifn" id="7yvZ58OS0$g" role="3EZMnx">
            <node concept="ljvvj" id="7yvZ58OS0Ig" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3EZMnI" id="12yN8DyAo8k" role="3EZMnx">
            <node concept="VPM3Z" id="12yN8DyAo8m" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="ljvvj" id="12yN8DyAosy" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="1QoScp" id="12yN8DyANJQ" role="3EZMnx">
              <property role="1QpmdY" value="true" />
              <node concept="3F0ifn" id="12yN8DyAOYy" role="1QoS34">
                <property role="3F0ifm" value="exact match" />
                <ref role="1ERwB7" node="12yN8DyB6zn" resolve="Rule_ActionMap" />
                <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
                <node concept="OXEIz" id="12yN8DyD8Fy" role="P5bDN">
                  <node concept="1oHujT" id="12yN8DyD8F$" role="OY2wv">
                    <property role="1oHujS" value="including all subconcepts" />
                    <node concept="1oIgkG" id="12yN8DyD8F_" role="1oHujR">
                      <node concept="3clFbS" id="12yN8DyD8FA" role="2VODD2">
                        <node concept="3clFbF" id="12yN8DyD8FJ" role="3cqZAp">
                          <node concept="37vLTI" id="12yN8DyD9$S" role="3clFbG">
                            <node concept="3clFbT" id="12yN8DyD9_g" role="37vLTx">
                              <property role="3clFbU" value="false" />
                            </node>
                            <node concept="2OqwBi" id="12yN8DyD8Hd" role="37vLTJ">
                              <node concept="3GMtW1" id="12yN8DyD8FI" role="2Oq$k0" />
                              <node concept="3TrcHB" id="12yN8DyD91b" role="2OqNvi">
                                <ref role="3TsBF5" to="wq2x:1ffsG7bAGF$" resolve="exactMatch" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="pkWqt" id="12yN8DyANJT" role="3e4ffs">
                <node concept="3clFbS" id="12yN8DyANJV" role="2VODD2">
                  <node concept="3clFbF" id="12yN8DyANVH" role="3cqZAp">
                    <node concept="2OqwBi" id="12yN8DyAO0g" role="3clFbG">
                      <node concept="pncrf" id="12yN8DyANVG" role="2Oq$k0" />
                      <node concept="3TrcHB" id="12yN8DyAOuo" role="2OqNvi">
                        <ref role="3TsBF5" to="wq2x:1ffsG7bAGF$" resolve="exactMatch" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3F0ifn" id="12yN8DyAPgB" role="1QoVPY">
                <property role="3F0ifm" value="" />
                <property role="ilYzB" value="including all subconcepts" />
                <ref role="1ERwB7" node="12yN8DyB6zn" resolve="Rule_ActionMap" />
                <node concept="OXEIz" id="12yN8DyAPyG" role="P5bDN">
                  <node concept="1oHujT" id="12yN8DyAPyI" role="OY2wv">
                    <property role="1oHujS" value="exact match" />
                    <node concept="1oIgkG" id="12yN8DyAPyJ" role="1oHujR">
                      <node concept="3clFbS" id="12yN8DyAPyK" role="2VODD2">
                        <node concept="3clFbF" id="12yN8DyAPyT" role="3cqZAp">
                          <node concept="37vLTI" id="12yN8DyAQaX" role="3clFbG">
                            <node concept="3clFbT" id="12yN8DyAQbD" role="37vLTx">
                              <property role="3clFbU" value="true" />
                            </node>
                            <node concept="2OqwBi" id="12yN8DyAP$n" role="37vLTJ">
                              <node concept="3GMtW1" id="12yN8DyAPyS" role="2Oq$k0" />
                              <node concept="3TrcHB" id="12yN8DyAPSl" role="2OqNvi">
                                <ref role="3TsBF5" to="wq2x:1ffsG7bAGF$" resolve="exactMatch" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="pkWqt" id="5NuEpF1l$mw" role="pqm2j">
                <node concept="3clFbS" id="5NuEpF1l$mx" role="2VODD2">
                  <node concept="3clFbF" id="5NuEpF1l$zV" role="3cqZAp">
                    <node concept="2OqwBi" id="5NuEpF1l_LP" role="3clFbG">
                      <node concept="2OqwBi" id="5NuEpF1l$Cx" role="2Oq$k0">
                        <node concept="pncrf" id="5NuEpF1l$zU" role="2Oq$k0" />
                        <node concept="3TrEf2" id="5NuEpF1l_w7" role="2OqNvi">
                          <ref role="3Tt5mk" to="wq2x:5NuEpF1iiJF" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="5NuEpF1lAeL" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="l2Vlx" id="12yN8DyAo8p" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="3x8pcoFsL7o" role="3EZMnx">
            <node concept="VPM3Z" id="3x8pcoFsL7p" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="ljvvj" id="3x8pcoFsL7q" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="1QoScp" id="3x8pcoFsL7r" role="3EZMnx">
              <property role="1QpmdY" value="true" />
              <node concept="3F0ifn" id="3x8pcoFsL7s" role="1QoS34">
                <property role="3F0ifm" value="apply after specific rules" />
                <ref role="1ERwB7" node="12yN8DyB6zn" resolve="Rule_ActionMap" />
                <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
                <node concept="OXEIz" id="3x8pcoFsL7t" role="P5bDN">
                  <node concept="1oHujT" id="3x8pcoFsL7u" role="OY2wv">
                    <property role="1oHujS" value="apply before specific rules" />
                    <node concept="1oIgkG" id="3x8pcoFsL7v" role="1oHujR">
                      <node concept="3clFbS" id="3x8pcoFsL7w" role="2VODD2">
                        <node concept="3clFbF" id="3x8pcoFsL7x" role="3cqZAp">
                          <node concept="37vLTI" id="3x8pcoFsL7y" role="3clFbG">
                            <node concept="3clFbT" id="3x8pcoFsL7z" role="37vLTx">
                              <property role="3clFbU" value="false" />
                            </node>
                            <node concept="2OqwBi" id="3x8pcoFsL7$" role="37vLTJ">
                              <node concept="3GMtW1" id="3x8pcoFsL7_" role="2Oq$k0" />
                              <node concept="3TrcHB" id="3x8pcoFsMnr" role="2OqNvi">
                                <ref role="3TsBF5" to="wq2x:3x8pcoFsKIi" resolve="postProcess" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="pkWqt" id="3x8pcoFsL7B" role="3e4ffs">
                <node concept="3clFbS" id="3x8pcoFsL7C" role="2VODD2">
                  <node concept="3clFbF" id="3x8pcoFsL7D" role="3cqZAp">
                    <node concept="2OqwBi" id="3x8pcoFsL7E" role="3clFbG">
                      <node concept="pncrf" id="3x8pcoFsL7F" role="2Oq$k0" />
                      <node concept="3TrcHB" id="3x8pcoFsLHV" role="2OqNvi">
                        <ref role="3TsBF5" to="wq2x:3x8pcoFsKIi" resolve="postProcess" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3F0ifn" id="3x8pcoFsL7H" role="1QoVPY">
                <property role="3F0ifm" value="" />
                <property role="ilYzB" value="apply before specific rules" />
                <ref role="1ERwB7" node="12yN8DyB6zn" resolve="Rule_ActionMap" />
                <node concept="OXEIz" id="3x8pcoFsL7I" role="P5bDN">
                  <node concept="1oHujT" id="3x8pcoFsL7J" role="OY2wv">
                    <property role="1oHujS" value="apply after specific rules" />
                    <node concept="1oIgkG" id="3x8pcoFsL7K" role="1oHujR">
                      <node concept="3clFbS" id="3x8pcoFsL7L" role="2VODD2">
                        <node concept="3clFbF" id="3x8pcoFsL7M" role="3cqZAp">
                          <node concept="37vLTI" id="3x8pcoFsL7N" role="3clFbG">
                            <node concept="3clFbT" id="3x8pcoFsL7O" role="37vLTx">
                              <property role="3clFbU" value="true" />
                            </node>
                            <node concept="2OqwBi" id="3x8pcoFsL7P" role="37vLTJ">
                              <node concept="3GMtW1" id="3x8pcoFsL7Q" role="2Oq$k0" />
                              <node concept="3TrcHB" id="3x8pcoFsMVZ" role="2OqNvi">
                                <ref role="3TsBF5" to="wq2x:3x8pcoFsKIi" resolve="postProcess" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="pkWqt" id="3x8pcoFsL7S" role="pqm2j">
                <node concept="3clFbS" id="3x8pcoFsL7T" role="2VODD2">
                  <node concept="3clFbF" id="3x8pcoFsL7U" role="3cqZAp">
                    <node concept="2OqwBi" id="3x8pcoFsL7V" role="3clFbG">
                      <node concept="2OqwBi" id="3x8pcoFsL7W" role="2Oq$k0">
                        <node concept="pncrf" id="3x8pcoFsL7X" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3x8pcoFsL7Y" role="2OqNvi">
                          <ref role="3Tt5mk" to="wq2x:5NuEpF1iiJF" />
                        </node>
                      </node>
                      <node concept="3w_OXm" id="3x8pcoFsLq3" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="l2Vlx" id="3x8pcoFsL80" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="4laj_h9ENem" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="l2Vlx" id="4laj_h9ENep" role="2iSdaV" />
          <node concept="3EZMnI" id="6ntBQ9KBkgz" role="3EZMnx">
            <node concept="VPM3Z" id="6ntBQ9KBkg_" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="l2Vlx" id="6ntBQ9KBkgC" role="2iSdaV" />
            <node concept="3F1sOY" id="4laj_h9Ob6i" role="3EZMnx">
              <property role="1$x2rV" value="applicable always" />
              <ref role="1NtTu8" to="wq2x:1ffsG7bnJXK" />
              <node concept="ljvvj" id="4laj_h9Oyj_" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="3F1sOY" id="5MHpiylGwfp" role="3EZMnx">
              <property role="1$x2rV" value="apply once" />
              <ref role="1NtTu8" to="wq2x:5MHpiylGjt8" />
              <node concept="ljvvj" id="5MHpiylIEQI" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="3F1sOY" id="tIwzd1EXki" role="3EZMnx">
              <property role="1$x2rV" value="no required nodes" />
              <ref role="1NtTu8" to="wq2x:1ffsG7bh6Cz" />
              <node concept="ljvvj" id="tIwzd1EXkv" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="3F1sOY" id="1zN1RIkQKV0" role="3EZMnx">
              <property role="1$x2rV" value="with no bindings" />
              <ref role="1NtTu8" to="wq2x:1zN1RIkQKTu" />
              <node concept="ljvvj" id="1zN1RIkQKV1" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="4laj_h9PMzP" role="3EZMnx">
          <ref role="1k5W1q" to="tpen:hshO_Yc" resolve="Comment" />
          <node concept="VPM3Z" id="4laj_h9PNEv" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="ljvvj" id="4laj_h9PMFs" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3EZMnI" id="6p0DfM0cD7x" role="3EZMnx">
          <node concept="VPM3Z" id="6p0DfM0cD7z" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F2HdR" id="6p0DfM0cDlu" role="3EZMnx">
            <property role="2czwfO" value=" " />
            <ref role="1NtTu8" to="wq2x:1ffsG7bCfL5" />
            <node concept="l2Vlx" id="6p0DfM0cDlw" role="2czzBx" />
            <node concept="tppnM" id="6p0DfM0cDtL" role="sWeuL">
              <node concept="ljvvj" id="6p0DfM0cDwl" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="lj46D" id="4laj_h9P6VX" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="ljvvj" id="6p0DfM0cHqp" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="3F0ifn" id="6p0DfM0dQCN" role="2czzBI">
              <property role="3F0ifm" value="no head" />
              <ref role="1k5W1q" to="tpen:hinfsDb" resolve="EmptyCell" />
              <node concept="Vb9p2" id="4laj_h9HAqe" role="3F10Kt">
                <property role="Vbekb" value="BOLD" />
              </node>
            </node>
          </node>
          <node concept="3F2HdR" id="6p0DfM0cFgR" role="3EZMnx">
            <property role="2czwfO" value=" " />
            <ref role="1NtTu8" to="wq2x:1ffsG7bFM2v" />
            <node concept="l2Vlx" id="6p0DfM0cFgS" role="2czzBx" />
            <node concept="tppnM" id="6p0DfM0cFgT" role="sWeuL">
              <node concept="ljvvj" id="6p0DfM0cFgU" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="lj46D" id="4laj_h9P70e" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="ljvvj" id="6p0DfM0cJvt" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="3F0ifn" id="6p0DfM0cOkh" role="2czzBI">
              <property role="3F0ifm" value="unconditionally" />
              <ref role="1k5W1q" to="tpen:hinfsDb" resolve="EmptyCell" />
              <node concept="Vb9p2" id="4laj_h9HAEL" role="3F10Kt">
                <property role="Vbekb" value="BOLD" />
              </node>
            </node>
          </node>
          <node concept="3F2HdR" id="6p0DfM0cJyJ" role="3EZMnx">
            <property role="2czwfO" value=" " />
            <ref role="1NtTu8" to="wq2x:1ffsG7bIxDv" />
            <node concept="l2Vlx" id="6p0DfM0cJyK" role="2czzBx" />
            <node concept="tppnM" id="6p0DfM0cJyL" role="sWeuL">
              <node concept="ljvvj" id="6p0DfM0cJyM" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="lj46D" id="4laj_h9P73D" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="ljvvj" id="6p0DfM0cJyN" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="3F0ifn" id="6p0DfM0e2e1" role="2czzBI">
              <property role="3F0ifm" value="no body" />
              <ref role="1k5W1q" to="tpen:hinfsDb" resolve="EmptyCell" />
              <node concept="Vb9p2" id="4laj_h9HAWS" role="3F10Kt">
                <property role="Vbekb" value="BOLD" />
              </node>
            </node>
          </node>
          <node concept="l2Vlx" id="6p0DfM0cD7A" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="7yvZ58ORv4v" role="AHCbl">
          <property role="3F0ifm" value="..." />
          <ref role="1k5W1q" to="tpen:4vxLnq9T43C" resolve="FoldedCell" />
        </node>
      </node>
      <node concept="l2Vlx" id="6p0DfM0cz1V" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6p0DfM0cTci">
    <property role="3GE5qa" value="rule.component" />
    <ref role="1XX52x" to="wq2x:6p0DfM0a3TO" resolve="Body" />
    <node concept="3EZMnI" id="6p0DfM0cTe0" role="2wV5jI">
      <node concept="3F0ifn" id="6p0DfM0cTeX" role="3EZMnx">
        <property role="3F0ifm" value="produce" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="6p0DfM0cTrR" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
      </node>
      <node concept="PMmxH" id="3g$8GQC8l_I" role="3EZMnx">
        <ref role="PMmxG" node="3g$8GQC8l_C" resolve="RuleCompomentCode" />
      </node>
      <node concept="3F0ifn" id="6p0DfM0cTsP" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="l2Vlx" id="6p0DfM0cTe3" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6p0DfM0cXHS">
    <property role="3GE5qa" value="rule.component" />
    <ref role="1XX52x" to="wq2x:6p0DfM0a3gA" resolve="Head" />
    <node concept="3EZMnI" id="6p0DfM0cXIK" role="2wV5jI">
      <node concept="3EZMnI" id="2E5lcNn0INE" role="3EZMnx">
        <node concept="VPM3Z" id="2E5lcNn0ING" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="2E5lcNn0J1l" role="3EZMnx">
          <property role="3F0ifm" value="match" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
          <node concept="2V7CMv" id="2E5lcNn1d$W" role="3F10Kt">
            <property role="2V7CMs" value="ext_1_RTransform" />
          </node>
        </node>
        <node concept="l2Vlx" id="2E5lcNn0INJ" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="2E5lcNn0JfO" role="3EZMnx">
        <node concept="VPM3Z" id="2E5lcNn0JfQ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="2E5lcNn0Jtz" role="3EZMnx">
          <property role="3F0ifm" value="and discard" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
          <ref role="1ERwB7" node="2E5lcNn0$dr" resolve="Head_keep" />
        </node>
        <node concept="l2Vlx" id="2E5lcNn0JfT" role="2iSdaV" />
        <node concept="pkWqt" id="2E5lcNn1IvJ" role="pqm2j">
          <node concept="3clFbS" id="2E5lcNn1IvK" role="2VODD2">
            <node concept="3clFbF" id="2E5lcNn1IXp" role="3cqZAp">
              <node concept="3fqX7Q" id="2E5lcNn1J_F" role="3clFbG">
                <node concept="2OqwBi" id="2E5lcNn1J_G" role="3fr31v">
                  <node concept="pncrf" id="2E5lcNn1J_H" role="2Oq$k0" />
                  <node concept="3TrcHB" id="2E5lcNn1J_I" role="2OqNvi">
                    <ref role="3TsBF5" to="wq2x:6p0DfM0bSv$" resolve="keep" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="6p0DfM0cXIN" role="2iSdaV" />
      <node concept="3F0ifn" id="6p0DfM0d9xz" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
      </node>
      <node concept="PMmxH" id="3g$8GQC8lMp" role="3EZMnx">
        <ref role="PMmxG" node="3g$8GQC8l_C" resolve="RuleCompomentCode" />
      </node>
      <node concept="3F0ifn" id="6p0DfM0d9QY" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="1Bt7hp" id="6ntBQ9KE8a9" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6p0DfM0dr8L">
    <ref role="1XX52x" to="wq2x:7eGEHDlgPKk" resolve="Handler" />
    <node concept="3EZMnI" id="6p0DfM0drav" role="2wV5jI">
      <node concept="PMmxH" id="6p0DfM0drif" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="6p0DfM0dsvN" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="tpen:hFIVf2f" resolve="ClassName" />
        <node concept="ljvvj" id="6p0DfM0dsAz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6p0DfM0d$K5" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="ljvvj" id="6p0DfM0d$Or" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="5MHpiylytSl" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPxyj" id="5MHpiylytV0" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F2HdR" id="6p0DfM0dsEy" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="wq2x:6p0DfM0bRQj" />
        <node concept="l2Vlx" id="6p0DfM0dsE$" role="2czzBx" />
        <node concept="lj46D" id="6p0DfM0dsIO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="1Bsynf" id="6p0DfM0dsLq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="tppnM" id="6p0DfM0dwLH" role="sWeuL">
          <node concept="ljvvj" id="6p0DfM0dwOj" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="6p0DfM0dray" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6p0DfM0dGcS">
    <property role="3GE5qa" value="rule.component" />
    <ref role="1XX52x" to="wq2x:6p0DfM0a3Qe" resolve="Guard" />
    <node concept="3EZMnI" id="6p0DfM0dH8B" role="2wV5jI">
      <node concept="3F0ifn" id="6p0DfM0dHcW" role="3EZMnx">
        <property role="3F0ifm" value="with guard" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="6p0DfM0dHlY" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
      </node>
      <node concept="PMmxH" id="3g$8GQC8lAb" role="3EZMnx">
        <ref role="PMmxG" node="3g$8GQC8l_C" resolve="RuleCompomentCode" />
      </node>
      <node concept="3F0ifn" id="6p0DfM0dHmW" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="l2Vlx" id="6p0DfM0dH8E" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6p0DfM0e8jv">
    <ref role="1XX52x" to="wq2x:6p0DfM0a6KG" resolve="EmitConstraintStatement" />
    <node concept="3EZMnI" id="6p0DfM0ecFC" role="2wV5jI">
      <ref role="1k5W1q" node="7ksQUDZpyGq" resolve="Constraint" />
      <node concept="3F0ifn" id="7ksQUDZwl17" role="3EZMnx">
        <property role="3F0ifm" value="‹‹" />
      </node>
      <node concept="3F1sOY" id="6p0DfM0ecK0" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:6p0DfM0ajKO" />
      </node>
      <node concept="l2Vlx" id="6p0DfM0ecFF" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6p0DfM0eqz7">
    <property role="3GE5qa" value="constraint" />
    <ref role="1XX52x" to="wq2x:6p0DfM0ang5" resolve="UserConstraint" />
    <node concept="3EZMnI" id="6p0DfM0essP" role="2wV5jI">
      <node concept="1iCGBv" id="6p0DfM0estM" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:6p0DfM0aywA" />
        <node concept="1sVBvm" id="6p0DfM0estO" role="1sWHZn">
          <node concept="3F0A7n" id="6p0DfM0esvB" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" to="tpen:hFD2Y0y" resolve="MethodName" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6p0DfM0esxr" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F2HdR" id="6p0DfM0fgtW" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="wq2x:6p0DfM0et2r" />
        <node concept="l2Vlx" id="6p0DfM0fgtY" role="2czzBx" />
        <node concept="tppnM" id="6p0DfM0fn5n" role="sWeuL">
          <node concept="11L4FC" id="6p0DfM0fnhd" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="1Bsynf" id="2q_78a8Me41" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6p0DfM0eszj" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="6p0DfM0essS" role="2iSdaV" />
    </node>
  </node>
  <node concept="V5hpn" id="6p0DfM0fyiq">
    <property role="TrG5h" value="Rules" />
    <node concept="14StLt" id="6p0DfM0qaop" role="V601i">
      <property role="TrG5h" value="DefaultBackground" />
      <node concept="30gYXW" id="6p0DfM0qaoq" role="3F10Kt">
        <property role="Vb096" value="magenta" />
        <node concept="1iSF2X" id="6p0DfM0qaor" role="VblUZ">
          <property role="1iTho6" value="FFFFFF" />
        </node>
      </node>
      <node concept="Veino" id="6p0DfM0qaos" role="3F10Kt">
        <property role="Vb096" value="magenta" />
        <node concept="1iSF2X" id="6p0DfM0qaot" role="VblUZ">
          <property role="1iTho6" value="FFFFFF" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="6p0DfM0fyq3" role="V601i">
      <property role="TrG5h" value="EmitStatement" />
      <node concept="30gYXW" id="5lJXKGbJw" role="3F10Kt">
        <property role="Vb096" value="magenta" />
        <node concept="1iSF2X" id="5lJXKGbJy" role="VblUZ">
          <property role="1iTho6" value="EEFFFF" />
        </node>
      </node>
      <node concept="Veino" id="5lJXKGvHt" role="3F10Kt">
        <property role="Vb096" value="magenta" />
        <node concept="1iSF2X" id="5lJXKGvHv" role="VblUZ">
          <property role="1iTho6" value="EEFFFF" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="6p0DfM0hll6" role="V601i">
      <property role="TrG5h" value="EmitStatementCode" />
      <node concept="30gYXW" id="6p0DfM0hll7" role="3F10Kt">
        <property role="Vb096" value="magenta" />
        <node concept="1iSF2X" id="6p0DfM0hll8" role="VblUZ">
          <property role="1iTho6" value="F9F9FF" />
        </node>
      </node>
      <node concept="Veino" id="6p0DfM0hll9" role="3F10Kt">
        <property role="Vb096" value="magenta" />
        <node concept="1iSF2X" id="6p0DfM0hlla" role="VblUZ">
          <property role="1iTho6" value="F9F9FF" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="7ksQUDZqcLh" role="V601i">
      <property role="TrG5h" value="ConceptName" />
      <node concept="3Xmtl4" id="7ksQUDZqcWD" role="3F10Kt">
        <node concept="1wgc9g" id="7ksQUDZqivn" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:aeM1BF$_eX" />
        </node>
      </node>
      <node concept="Vb9p2" id="7ksQUDZqivu" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="7ksQUDZqpsE" role="V601i">
      <property role="TrG5h" value="InputName" />
      <node concept="3Xmtl4" id="7ksQUDZqpsF" role="3F10Kt">
        <node concept="1wgc9g" id="7ksQUDZr5wg" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:aeM1BF$xqy" />
        </node>
      </node>
      <node concept="Vb9p2" id="7ksQUDZqpsH" role="3F10Kt">
        <property role="Vbekb" value="ITALIC" />
      </node>
    </node>
    <node concept="14StLt" id="7ksQUDZpyGq" role="V601i">
      <property role="TrG5h" value="Constraint" />
      <node concept="30gYXW" id="7ksQUDZpy9X" role="3F10Kt">
        <node concept="3ZlJ5R" id="7ksQUDZpy9Z" role="VblUZ">
          <node concept="3clFbS" id="7ksQUDZpya0" role="2VODD2">
            <node concept="3clFbF" id="7ksQUDZpya1" role="3cqZAp">
              <node concept="3K4zz7" id="7ksQUDZpya2" role="3clFbG">
                <node concept="10M0yZ" id="7ksQUDZpya3" role="3K4E3e">
                  <ref role="1PxDUh" node="7ksQUDZpwgy" resolve="CustomColors" />
                  <ref role="3cqZAo" node="7ksQUDZq54u" resolve="SWAMP" />
                </node>
                <node concept="10M0yZ" id="7ksQUDZpya4" role="3K4GZi">
                  <ref role="1PxDUh" node="7ksQUDZpwgy" resolve="CustomColors" />
                  <ref role="3cqZAo" node="7ksQUDZq4Xq" resolve="LAKE" />
                </node>
                <node concept="2OqwBi" id="7ksQUDZpya5" role="3K4Cdx">
                  <node concept="2YIFZM" id="7ksQUDZpya6" role="2Oq$k0">
                    <ref role="37wK5l" to="hox0:~StyleRegistry.getInstance():jetbrains.mps.openapi.editor.style.StyleRegistry" resolve="getInstance" />
                    <ref role="1Pybhc" to="hox0:~StyleRegistry" resolve="StyleRegistry" />
                  </node>
                  <node concept="liA8E" id="7ksQUDZpya7" role="2OqNvi">
                    <ref role="37wK5l" to="hox0:~StyleRegistry.isDarkTheme():boolean" resolve="isDarkTheme" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Veino" id="7ksQUDZpS7M" role="3F10Kt">
        <node concept="3ZlJ5R" id="7ksQUDZpS7O" role="VblUZ">
          <node concept="3clFbS" id="7ksQUDZpS7P" role="2VODD2">
            <node concept="3clFbF" id="7ksQUDZpS7Q" role="3cqZAp">
              <node concept="3K4zz7" id="7ksQUDZpS7R" role="3clFbG">
                <node concept="10M0yZ" id="7ksQUDZpS7S" role="3K4E3e">
                  <ref role="1PxDUh" node="7ksQUDZpwgy" resolve="CustomColors" />
                  <ref role="3cqZAo" node="7ksQUDZq54u" resolve="SWAMP" />
                </node>
                <node concept="10M0yZ" id="7ksQUDZpS7T" role="3K4GZi">
                  <ref role="1PxDUh" node="7ksQUDZpwgy" resolve="CustomColors" />
                  <ref role="3cqZAo" node="7ksQUDZq4Xq" resolve="LAKE" />
                </node>
                <node concept="2OqwBi" id="7ksQUDZpS7U" role="3K4Cdx">
                  <node concept="2YIFZM" id="7ksQUDZpS7V" role="2Oq$k0">
                    <ref role="37wK5l" to="hox0:~StyleRegistry.getInstance():jetbrains.mps.openapi.editor.style.StyleRegistry" resolve="getInstance" />
                    <ref role="1Pybhc" to="hox0:~StyleRegistry" resolve="StyleRegistry" />
                  </node>
                  <node concept="liA8E" id="7ksQUDZpS7W" role="2OqNvi">
                    <ref role="37wK5l" to="hox0:~StyleRegistry.isDarkTheme():boolean" resolve="isDarkTheme" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="14StLt" id="7ksQUDZpd8b" role="V601i">
      <property role="TrG5h" value="ConstraintKeyword" />
      <node concept="3Xmtl4" id="7ksQUDZpda1" role="3F10Kt">
        <node concept="1wgc9g" id="7ksQUDZpda5" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:aeM1BF$Ozh" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="7ksQUDZx8O3" role="V601i">
      <property role="TrG5h" value="TypeBrackets" />
      <node concept="3vyZuw" id="7ksQUDZx8Pi" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="VLuvy" id="7ksQUDZx8Pj" role="3F10Kt" />
      <node concept="VLuvy" id="2CEQDIDT_Lg" role="3F10Kt">
        <node concept="mot77" id="2CEQDIDTAz5" role="VblUZ">
          <node concept="3clFbS" id="2CEQDIDTAz6" role="2VODD2">
            <node concept="3clFbF" id="2CEQDIDTAzY" role="3cqZAp">
              <node concept="2ShNRf" id="2CEQDIDTAzW" role="3clFbG">
                <node concept="1pGfFk" id="2CEQDIDTCs2" role="2ShVmc">
                  <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
                  <node concept="10M0yZ" id="2CEQDIDTCBw" role="37wK5m">
                    <ref role="1PxDUh" node="7ksQUDZpwgy" resolve="CustomColors" />
                    <ref role="3cqZAo" node="7ksQUDZx8vw" resolve="STORM" />
                  </node>
                  <node concept="10M0yZ" id="2CEQDIDTCEl" role="37wK5m">
                    <ref role="1PxDUh" node="7ksQUDZpwgy" resolve="CustomColors" />
                    <ref role="3cqZAo" node="7ksQUDZx7BM" resolve="CALM" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6p0DfM0g5pD">
    <ref role="1XX52x" to="wq2x:7eGEHDlgPU1" resolve="NewTypeConstraint" />
    <node concept="3EZMnI" id="6p0DfM0g5sd" role="2wV5jI">
      <node concept="3F1sOY" id="6p0DfM0geOX" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:6p0DfM0gdsG" />
      </node>
      <node concept="3F0ifn" id="6p0DfM0geHd" role="3EZMnx">
        <property role="3F0ifm" value="=" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
      </node>
      <node concept="3F0ifn" id="6p0DfM0g5uQ" role="3EZMnx">
        <property role="3F0ifm" value="new type" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="3elRT3bDoOz" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:75A9veqzBn9" resolve="LeftAngleBracket" />
      </node>
      <node concept="3F1sOY" id="6Ng87FPSMT3" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:6Ng87FPS9JH" />
      </node>
      <node concept="3F0ifn" id="3elRT3bDoPL" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:75A9veqzBna" resolve="RightAngleBracket" />
        <node concept="2V7CMv" id="3elRT3bDpTY" role="3F10Kt">
          <property role="2V7CMs" value="ext_1_RTransform" />
        </node>
        <node concept="11LMrY" id="3elRT3bDUOu" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="3elRT3bDpwa" role="3EZMnx">
        <node concept="VPM3Z" id="3elRT3bDpwc" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="3elRT3bDpxp" role="3EZMnx">
          <property role="3F0ifm" value="@" />
          <node concept="11LMrY" id="3elRT3bE5Dl" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="3elRT3bDpwf" role="2iSdaV" />
        <node concept="3F1sOY" id="6p0DfM0hSix" role="3EZMnx">
          <ref role="1NtTu8" to="wq2x:6p0DfM0gvH4" />
        </node>
        <node concept="pkWqt" id="3elRT3bEs9u" role="pqm2j">
          <node concept="3clFbS" id="3elRT3bEs9v" role="2VODD2">
            <node concept="3clFbF" id="3elRT3bEskC" role="3cqZAp">
              <node concept="2OqwBi" id="3elRT3bEtph" role="3clFbG">
                <node concept="2OqwBi" id="3elRT3bEsxn" role="2Oq$k0">
                  <node concept="pncrf" id="3elRT3bEskB" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3elRT3bEt1x" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:6p0DfM0gvH4" />
                  </node>
                </node>
                <node concept="3x8VRR" id="3elRT3bEtDq" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6p0DfM0gT2F" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F2HdR" id="6p0DfM0gTiP" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="wq2x:6p0DfM0gSN1" />
        <node concept="l2Vlx" id="6p0DfM0gTiR" role="2czzBx" />
        <node concept="3F0ifn" id="3elRT3bEO60" role="2czzBI" />
      </node>
      <node concept="3F0ifn" id="6p0DfM0gT3J" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="6p0DfM0g5sg" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6p0DfM0ibrF">
    <property role="3GE5qa" value="rule.input" />
    <ref role="1XX52x" to="wq2x:6p0DfM0ia8T" resolve="RuleInputDeclaration" />
    <node concept="3EZMnI" id="6p0DfM0ibsz" role="2wV5jI">
      <node concept="3F0A7n" id="6p0DfM0ibum" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="7ksQUDZqpsE" resolve="InputName" />
      </node>
      <node concept="l2Vlx" id="6p0DfM0ibsA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6p0DfM0iCWl">
    <property role="3GE5qa" value="rule.input" />
    <ref role="1XX52x" to="wq2x:6p0DfM0im$2" resolve="RuleInputReference" />
    <node concept="3EZMnI" id="6p0DfM0iCXd" role="2wV5jI">
      <node concept="1iCGBv" id="6p0DfM0iCZ0" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:6p0DfM0iCzc" />
        <node concept="1sVBvm" id="6p0DfM0iCZ2" role="1sWHZn">
          <node concept="3F0A7n" id="6p0DfM0iCZZ" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" node="7ksQUDZqpsE" resolve="InputName" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="6p0DfM0iCXg" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6p0DfM0oE9v">
    <property role="3GE5qa" value="constraint.typespecific" />
    <ref role="1XX52x" to="wq2x:6p0DfM0oBcI" resolve="AssignConstraint" />
    <node concept="3EZMnI" id="6p0DfM0oEan" role="2wV5jI">
      <node concept="3F1sOY" id="6p0DfM0oETK" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:6p0DfM0oEeG" />
      </node>
      <node concept="3F0ifn" id="6p0DfM0oEFm" role="3EZMnx">
        <property role="3F0ifm" value="=" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
      </node>
      <node concept="3F1sOY" id="6p0DfM0oEV$" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:6p0DfM0oEna" />
      </node>
      <node concept="l2Vlx" id="6p0DfM0oEaq" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6p0DfM0pR3S">
    <ref role="1XX52x" to="wq2x:6p0DfM0pKSO" resolve="LogicalExpression" />
    <node concept="3EZMnI" id="6p0DfM0pRaY" role="2wV5jI">
      <node concept="3F0ifn" id="7nuzzkr4kdj" role="3EZMnx">
        <property role="3F0ifm" value="«" />
        <node concept="11LMrY" id="7nuzzkr4otD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VechU" id="7nuzzkr4ou_" role="3F10Kt">
          <property role="Vb096" value="DARK_MAGENTA" />
        </node>
      </node>
      <node concept="3F1sOY" id="6p0DfM0pRb0" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:6p0DfM0pQge" />
        <ref role="1k5W1q" node="7ksQUDZpyGq" resolve="Constraint" />
      </node>
      <node concept="3F0ifn" id="7nuzzkr4kdr" role="3EZMnx">
        <property role="3F0ifm" value="»" />
        <node concept="11L4FC" id="7nuzzkr4ouE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VechU" id="7nuzzkr4ouG" role="3F10Kt">
          <property role="Vb096" value="DARK_MAGENTA" />
        </node>
      </node>
      <node concept="l2Vlx" id="6p0DfM0pRb1" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2E5lcNn0247">
    <property role="3GE5qa" value="constraint.typespecific" />
    <ref role="1XX52x" to="wq2x:2E5lcNn01_F" resolve="TypeofConstraint" />
    <node concept="3EZMnI" id="2E5lcNn029o" role="2wV5jI">
      <node concept="3F0ifn" id="2E5lcNn02h6" role="3EZMnx">
        <property role="3F0ifm" value="typeof" />
        <ref role="1k5W1q" node="7ksQUDZpd8b" resolve="ConstraintKeyword" />
      </node>
      <node concept="3F0ifn" id="2E5lcNn02_C" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F1sOY" id="2E5lcNn03CI" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:2E5lcNn035O" />
      </node>
      <node concept="3F0ifn" id="2E5lcNn02_M" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="3F0ifn" id="2E5lcNn02i2" role="3EZMnx">
        <property role="3F0ifm" value="=" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
      </node>
      <node concept="3F1sOY" id="2E5lcNn03LN" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:2E5lcNn03mK" />
      </node>
      <node concept="l2Vlx" id="2E5lcNn029r" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="2E5lcNn0$dr">
    <property role="3GE5qa" value="rule.component" />
    <property role="TrG5h" value="Head_keep" />
    <ref role="1h_SK9" to="wq2x:6p0DfM0a3gA" resolve="Head" />
    <node concept="1hA7zw" id="2E5lcNn0$f8" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="2E5lcNn0$f9" role="1hA7z_">
        <node concept="3clFbS" id="2E5lcNn0$fa" role="2VODD2">
          <node concept="3clFbF" id="2E5lcNn0$QX" role="3cqZAp">
            <node concept="37vLTI" id="2E5lcNn0_EV" role="3clFbG">
              <node concept="3clFbT" id="2E5lcNn0_OH" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="2E5lcNn0$Sr" role="37vLTJ">
                <node concept="0IXxy" id="2E5lcNn0$QW" role="2Oq$k0" />
                <node concept="3TrcHB" id="2E5lcNn0_e5" role="2OqNvi">
                  <ref role="3TsBF5" to="wq2x:6p0DfM0bSv$" resolve="keep" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2E5lcNn5kyh">
    <property role="3GE5qa" value="constraint.variable" />
    <ref role="1XX52x" to="wq2x:2E5lcNn5kn6" resolve="ParameterDeclarationStatement" />
    <node concept="3EZMnI" id="2E5lcNn5kz9" role="2wV5jI">
      <ref role="1k5W1q" node="7ksQUDZpyGq" resolve="Constraint" />
      <node concept="3F0ifn" id="7ksQUDZwl6Z" role="3EZMnx">
        <property role="3F0ifm" value="‹‹" />
      </node>
      <node concept="PMmxH" id="5zfvpQ72iUq" role="3EZMnx">
        <ref role="PMmxG" node="5zfvpQ72h2k" resolve="LogicVariableDeclarationStatement_type" />
      </node>
      <node concept="3F2HdR" id="2E5lcNn5kR1" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="wq2x:2E5lcNn8k3O" />
        <node concept="l2Vlx" id="2E5lcNn5kR3" role="2czzBx" />
        <node concept="tppnM" id="2E5lcNn5V3B" role="sWeuL">
          <node concept="11L4FC" id="2E5lcNn5V5l" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="2E5lcNn5kzc" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2E5lcNn5Urm">
    <property role="3GE5qa" value="constraint.variable" />
    <ref role="1XX52x" to="wq2x:2E5lcNn5Ub2" resolve="LocalDeclarationStatement" />
    <node concept="3EZMnI" id="2E5lcNn5Use" role="2wV5jI">
      <ref role="1k5W1q" node="7ksQUDZpyGq" resolve="Constraint" />
      <node concept="3F0ifn" id="7ksQUDZwld6" role="3EZMnx">
        <property role="3F0ifm" value="‹‹" />
      </node>
      <node concept="PMmxH" id="5zfvpQ72j0B" role="3EZMnx">
        <ref role="PMmxG" node="5zfvpQ72h2k" resolve="LogicVariableDeclarationStatement_type" />
      </node>
      <node concept="3F2HdR" id="2E5lcNn5Uyr" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="wq2x:2E5lcNn8k3O" />
        <node concept="l2Vlx" id="2E5lcNn5Uyt" role="2czzBx" />
        <node concept="tppnM" id="2E5lcNn5UO3" role="sWeuL">
          <node concept="11L4FC" id="2E5lcNn5UT9" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="2E5lcNn5Ush" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4laj_h9P4sB">
    <property role="3GE5qa" value="rule.code" />
    <ref role="1XX52x" to="wq2x:4laj_h9P4cy" resolve="Condition" />
    <node concept="3EZMnI" id="4laj_h9P4C7" role="2wV5jI">
      <node concept="3EZMnI" id="6ntBQ9KCpY2" role="3EZMnx">
        <node concept="VPM3Z" id="6ntBQ9KCpY4" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="6ntBQ9KCpY7" role="2iSdaV" />
        <node concept="3F0ifn" id="4laj_h9P4C8" role="3EZMnx">
          <property role="3F0ifm" value="applicable if" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        </node>
      </node>
      <node concept="3F0ifn" id="4laj_h9P4C9" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
      </node>
      <node concept="PMmxH" id="3g$8GQC8vbw" role="3EZMnx">
        <ref role="PMmxG" node="3g$8GQC8utT" resolve="RuleCodeBlockCode" />
      </node>
      <node concept="3F0ifn" id="4laj_h9P4Cd" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="l2Vlx" id="4laj_h9P4Cf" role="2iSdaV" />
      <node concept="1Bsynf" id="6ntBQ9KDVXM" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="12yN8DyB6zn">
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="Rule_ActionMap" />
    <ref role="1h_SK9" to="wq2x:7eGEHDlgPU4" resolve="Rule" />
    <node concept="1hA7zw" id="12yN8DyB6zo" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="12yN8DyB6zp" role="1hA7z_">
        <node concept="3clFbS" id="12yN8DyB6zq" role="2VODD2">
          <node concept="3clFbF" id="12yN8DyB6zz" role="3cqZAp">
            <node concept="37vLTI" id="12yN8DyB7bx" role="3clFbG">
              <node concept="3clFbT" id="12yN8DyB7bT" role="37vLTx">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="2OqwBi" id="12yN8DyB6_1" role="37vLTJ">
                <node concept="0IXxy" id="12yN8DyB6zy" role="2Oq$k0" />
                <node concept="3TrcHB" id="12yN8DyB6SZ" role="2OqNvi">
                  <ref role="3TsBF5" to="wq2x:1ffsG7bAGF$" resolve="exactMatch" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5MHpiylEt0d">
    <property role="3GE5qa" value="rule.code.parameter" />
    <ref role="1XX52x" to="wq2x:5MHpiylEsuT" resolve="RuleParameterDeclaration" />
    <node concept="3EZMnI" id="5MHpiylEt1V" role="2wV5jI">
      <node concept="3F1sOY" id="5MHpiylFYu9" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:5MHpiylFYj$" />
      </node>
      <node concept="3F0A7n" id="5MHpiylEt3I" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="5MHpiylEt1Y" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5MHpiylKVlP">
    <property role="3GE5qa" value="rule.code.parameter" />
    <ref role="1XX52x" to="wq2x:5MHpiylKSq8" resolve="RuleParameterReference" />
    <node concept="3EZMnI" id="5MHpiylKVop" role="2wV5jI">
      <node concept="1iCGBv" id="5MHpiylKVr2" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:5MHpiylKVev" />
        <node concept="1sVBvm" id="5MHpiylKVr4" role="1sWHZn">
          <node concept="3F0A7n" id="5MHpiylKVtH" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5MHpiylKVos" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2q_78a8IMQO">
    <property role="3GE5qa" value="constraint" />
    <ref role="1XX52x" to="wq2x:2q_78a8IM1S" resolve="JavaConstraint" />
    <node concept="3EZMnI" id="2q_78a8IMYs" role="2wV5jI">
      <node concept="3F0A7n" id="2q_78a8IN0f" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:2q_78a8IMIA" resolve="template" />
      </node>
      <node concept="l2Vlx" id="2q_78a8IMYv" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5NuEpF1iiTM">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="wq2x:5NuEpF1if3e" resolve="RuleInputSpecification" />
    <node concept="3EZMnI" id="5NuEpF1iiVw" role="2wV5jI">
      <node concept="3F0ifn" id="5NuEpF1ijhd" role="3EZMnx">
        <property role="3F0ifm" value="for" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="1iCGBv" id="5NuEpF1ijhe" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:5NuEpF1iiA0" />
        <node concept="1sVBvm" id="5NuEpF1ijhf" role="1sWHZn">
          <node concept="3F0A7n" id="5NuEpF1ijhg" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" node="7ksQUDZqcLh" resolve="ConceptName" />
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="5NuEpF1ijhh" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:5NuEpF1ihrB" />
      </node>
      <node concept="l2Vlx" id="5NuEpF1iiVz" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="60B5zVESCE$">
    <property role="3GE5qa" value="constraint.variable" />
    <ref role="1XX52x" to="wq2x:60B5zVESvAi" resolve="LogicVariableConstraint" />
    <node concept="3EZMnI" id="60B5zVESIDp" role="2wV5jI">
      <node concept="PMmxH" id="60B5zVESIFc" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="Vb9p2" id="7xE5ZvRYuIK" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="60B5zVESIG7" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="11L4FC" id="60B5zVESM_C" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="60B5zVEVkAd" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="60B5zVEUKuc" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:60B5zVESBfb" />
      </node>
      <node concept="3F0ifn" id="60B5zVESIGf" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
        <node concept="11L4FC" id="60B5zVEVkOb" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="60B5zVESIDs" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1zN1RIkNjYB">
    <property role="3GE5qa" value="rule.code.parameter" />
    <ref role="1XX52x" to="wq2x:1zN1RIkNhnM" resolve="IterateParameterBlock" />
    <node concept="3EZMnI" id="1zN1RIkNk8t" role="2wV5jI">
      <node concept="3F0ifn" id="1zN1RIkNk8u" role="3EZMnx">
        <property role="3F0ifm" value="repeat for each" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F1sOY" id="1zN1RIkNk8v" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:5MHpiylFI5Z" />
      </node>
      <node concept="3F0ifn" id="1zN1RIkNk8w" role="3EZMnx">
        <property role="3F0ifm" value="in" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="1zN1RIkNk8x" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
      </node>
      <node concept="PMmxH" id="3g$8GQC8uOH" role="3EZMnx">
        <ref role="PMmxG" node="3g$8GQC8utT" resolve="RuleCodeBlockCode" />
      </node>
      <node concept="3F0ifn" id="1zN1RIkNk95" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="l2Vlx" id="1zN1RIkNk96" role="2iSdaV" />
      <node concept="1Bsynf" id="1zN1RIkNk97" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1zN1RIkQu_f">
    <property role="3GE5qa" value="rule.code.parameter" />
    <ref role="1XX52x" to="wq2x:1zN1RIkQtcr" resolve="BoundParameterBlock" />
    <node concept="3EZMnI" id="1zN1RIkQuBi" role="2wV5jI">
      <node concept="3F0ifn" id="1zN1RIkQuBj" role="3EZMnx">
        <property role="3F0ifm" value="with" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F1sOY" id="1zN1RIkQuBk" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:5MHpiylFI5Z" />
      </node>
      <node concept="3F0ifn" id="1zN1RIkQuBl" role="3EZMnx">
        <property role="3F0ifm" value="bound to" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="1zN1RIkQuBm" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
      </node>
      <node concept="PMmxH" id="3g$8GQC8uus" role="3EZMnx">
        <ref role="PMmxG" node="3g$8GQC8utT" resolve="RuleCodeBlockCode" />
      </node>
      <node concept="3F0ifn" id="1zN1RIkQuBU" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="l2Vlx" id="1zN1RIkQuBV" role="2iSdaV" />
      <node concept="1Bsynf" id="1zN1RIkQuBW" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="tIwzd1EV_9">
    <property role="3GE5qa" value="rule.code" />
    <ref role="1XX52x" to="wq2x:tIwzd1EOs6" resolve="RequiredNodeBlock" />
    <node concept="3EZMnI" id="tIwzd1EVN3" role="2wV5jI">
      <node concept="3F0ifn" id="tIwzd1EVN6" role="3EZMnx">
        <property role="3F0ifm" value="require templates for" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="tIwzd1EVN7" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
      </node>
      <node concept="PMmxH" id="3g$8GQC8uYl" role="3EZMnx">
        <ref role="PMmxG" node="3g$8GQC8utT" resolve="RuleCodeBlockCode" />
      </node>
      <node concept="3F0ifn" id="tIwzd1EVNF" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="l2Vlx" id="tIwzd1EVNG" role="2iSdaV" />
      <node concept="1Bsynf" id="tIwzd1EVNH" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4EfgX2EvGdG">
    <property role="3GE5qa" value="constraint" />
    <ref role="1XX52x" to="wq2x:4EfgX2EvF4i" resolve="ExpressionConstraint" />
    <node concept="3EZMnI" id="4EfgX2EvGm$" role="2wV5jI">
      <node concept="3F1sOY" id="4EfgX2EvGGa" role="3EZMnx">
        <property role="1cu_pB" value="2" />
        <ref role="1NtTu8" to="wq2x:4EfgX2EvGcc" />
      </node>
      <node concept="l2Vlx" id="4EfgX2EvGmB" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1ffsG7bLfm7">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="wq2x:1ffsG7bLeN5" resolve="RulePart" />
    <node concept="3EZMnI" id="1ffsG7bLfsl" role="2wV5jI">
      <node concept="3F0ifn" id="1ffsG7bLfsm" role="3EZMnx">
        <property role="3F0ifm" value="rule template fragment" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="1ffsG7bLfsn" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="tpen:hshUnm6" resolve="StaticMethod" />
      </node>
      <node concept="3F0ifn" id="1ffsG7bLh33" role="3EZMnx">
        <property role="3F0ifm" value="extending" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="1iCGBv" id="1ffsG7bLgBx" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:1ffsG7bLfTr" />
        <node concept="1sVBvm" id="1ffsG7bLgBz" role="1sWHZn">
          <node concept="3F0A7n" id="1ffsG7bLgKd" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
        <node concept="ljvvj" id="1ffsG7bLTzm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="1ffsG7bLfsq" role="3EZMnx">
        <property role="S$Qs1" value="false" />
        <node concept="VPM3Z" id="1ffsG7bLfsr" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="1ffsG7bLfss" role="2iSdaV" />
        <node concept="3EZMnI" id="1ffsG7bLfst" role="3EZMnx">
          <node concept="VPM3Z" id="1ffsG7bLft7" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="lj46D" id="1ffsG7bLft8" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="1Bsynf" id="1ffsG7bLft9" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="1ffsG7bLfta" role="2iSdaV" />
          <node concept="3EZMnI" id="1ffsG7bLftb" role="3EZMnx">
            <node concept="VPM3Z" id="1ffsG7bLftc" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="l2Vlx" id="1ffsG7bLftd" role="2iSdaV" />
            <node concept="3F1sOY" id="1ffsG7bLfte" role="3EZMnx">
              <property role="1$x2rV" value="applicable always" />
              <ref role="1NtTu8" to="wq2x:1ffsG7bnJXK" />
              <node concept="ljvvj" id="1ffsG7bLftf" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="3F1sOY" id="1ffsG7bLfti" role="3EZMnx">
              <property role="1$x2rV" value="no required nodes" />
              <ref role="1NtTu8" to="wq2x:1ffsG7bh6Cz" />
              <node concept="ljvvj" id="1ffsG7bLftj" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="1ffsG7bLftm" role="3EZMnx">
          <property role="3F0ifm" value=" " />
          <ref role="1k5W1q" to="tpen:hshO_Yc" resolve="Comment" />
          <node concept="VPM3Z" id="1ffsG7bLftn" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="lj46D" id="1ffsG7bLfto" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="1ffsG7bLftp" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3EZMnI" id="1ffsG7bLftq" role="3EZMnx">
          <node concept="VPM3Z" id="1ffsG7bLftr" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="lj46D" id="1ffsG7bLfts" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="1Bsynf" id="1ffsG7bLftt" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F2HdR" id="1ffsG7bLftu" role="3EZMnx">
            <property role="2czwfO" value=" " />
            <ref role="1NtTu8" to="wq2x:1ffsG7bCfL5" />
            <node concept="l2Vlx" id="1ffsG7bLftv" role="2czzBx" />
            <node concept="tppnM" id="1ffsG7bLftw" role="sWeuL">
              <node concept="ljvvj" id="1ffsG7bLftx" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="lj46D" id="1ffsG7bLfty" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="ljvvj" id="1ffsG7bLftz" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="3F0ifn" id="1ffsG7bLft$" role="2czzBI">
              <property role="3F0ifm" value="no head" />
              <ref role="1k5W1q" to="tpen:hinfsDb" resolve="EmptyCell" />
              <node concept="Vb9p2" id="1ffsG7bLft_" role="3F10Kt">
                <property role="Vbekb" value="BOLD" />
              </node>
            </node>
          </node>
          <node concept="3F2HdR" id="1ffsG7bLftA" role="3EZMnx">
            <property role="2czwfO" value=" " />
            <ref role="1NtTu8" to="wq2x:1ffsG7bFM2v" />
            <node concept="l2Vlx" id="1ffsG7bLftB" role="2czzBx" />
            <node concept="tppnM" id="1ffsG7bLftC" role="sWeuL">
              <node concept="ljvvj" id="1ffsG7bLftD" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="lj46D" id="1ffsG7bLftE" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="ljvvj" id="1ffsG7bLftF" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="3F0ifn" id="1ffsG7bLftG" role="2czzBI">
              <property role="3F0ifm" value="unconditionally" />
              <ref role="1k5W1q" to="tpen:hinfsDb" resolve="EmptyCell" />
              <node concept="Vb9p2" id="1ffsG7bLftH" role="3F10Kt">
                <property role="Vbekb" value="BOLD" />
              </node>
            </node>
          </node>
          <node concept="3F2HdR" id="1ffsG7bLftI" role="3EZMnx">
            <property role="2czwfO" value=" " />
            <ref role="1NtTu8" to="wq2x:1ffsG7bIxDv" />
            <node concept="l2Vlx" id="1ffsG7bLftJ" role="2czzBx" />
            <node concept="tppnM" id="1ffsG7bLftK" role="sWeuL">
              <node concept="ljvvj" id="1ffsG7bLftL" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="lj46D" id="1ffsG7bLftM" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="ljvvj" id="1ffsG7bLftN" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="3F0ifn" id="1ffsG7bLftO" role="2czzBI">
              <property role="3F0ifm" value="no body" />
              <ref role="1k5W1q" to="tpen:hinfsDb" resolve="EmptyCell" />
              <node concept="Vb9p2" id="1ffsG7bLftP" role="3F10Kt">
                <property role="Vbekb" value="BOLD" />
              </node>
            </node>
          </node>
          <node concept="l2Vlx" id="1ffsG7bLftQ" role="2iSdaV" />
        </node>
      </node>
      <node concept="l2Vlx" id="1ffsG7bLftR" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6infEALDvtu">
    <property role="3GE5qa" value="constraint" />
    <ref role="1XX52x" to="wq2x:6infEALDvmn" resolve="AssertExpressionConstraint" />
    <node concept="3EZMnI" id="6infEALDvB0" role="2wV5jI">
      <node concept="3F0ifn" id="6infEALDvB7" role="3EZMnx">
        <property role="3F0ifm" value="assert" />
        <node concept="Vb9p2" id="6infEALDvDM" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="6infEALDvWY" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
        <node concept="11LMrY" id="6infEALDw9k" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="6infEALEWJm" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:4EfgX2EvGcc" />
      </node>
      <node concept="3F0ifn" id="6infEALDvX8" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
        <node concept="11L4FC" id="6infEALDw8t" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="6infEALDvB3" role="2iSdaV" />
    </node>
  </node>
  <node concept="312cEu" id="7ksQUDZpwgy">
    <property role="TrG5h" value="CustomColors" />
    <node concept="2tJIrI" id="7ksQUDZtH$w" role="jymVt" />
    <node concept="Wx3nA" id="7ksQUDZq4Xq" role="jymVt">
      <property role="TrG5h" value="LAKE" />
      <node concept="3Tm1VV" id="7ksQUDZq4Xr" role="1B3o_S" />
      <node concept="3uibUv" id="7ksQUDZq4Xs" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="7ksQUDZq4Xt" role="33vP2m">
        <node concept="1pGfFk" id="7ksQUDZq4Xu" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="7ksQUDZq4Xv" role="37wK5m">
            <property role="3cmrfH" value="237" />
          </node>
          <node concept="3cmrfG" id="7ksQUDZq4Xw" role="37wK5m">
            <property role="3cmrfH" value="252" />
          </node>
          <node concept="3cmrfG" id="7ksQUDZq4Xx" role="37wK5m">
            <property role="3cmrfH" value="237" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="7ksQUDZq4Xy" role="lGtFl">
        <node concept="TZ5HA" id="7ksQUDZq4Xz" role="TZ5H$">
          <node concept="1dT_AC" id="7ksQUDZq4X$" role="1dT_Ay">
            <property role="1dT_AB" value="BG for Injected fragment, default scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ksQUDZq5ef" role="jymVt" />
    <node concept="Wx3nA" id="7ksQUDZq54u" role="jymVt">
      <property role="TrG5h" value="SWAMP" />
      <node concept="3Tm1VV" id="7ksQUDZq54v" role="1B3o_S" />
      <node concept="3uibUv" id="7ksQUDZq54w" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="7ksQUDZq54x" role="33vP2m">
        <node concept="1pGfFk" id="7ksQUDZq54y" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="7ksQUDZq54z" role="37wK5m">
            <property role="3cmrfH" value="54" />
          </node>
          <node concept="3cmrfG" id="7ksQUDZq54$" role="37wK5m">
            <property role="3cmrfH" value="65" />
          </node>
          <node concept="3cmrfG" id="7ksQUDZq54_" role="37wK5m">
            <property role="3cmrfH" value="53" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="7ksQUDZq54A" role="lGtFl">
        <node concept="TZ5HA" id="7ksQUDZq54B" role="TZ5H$">
          <node concept="1dT_AC" id="7ksQUDZq54C" role="1dT_Ay">
            <property role="1dT_AB" value="BG for Injected fragment, dark scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ksQUDZpwgT" role="jymVt" />
    <node concept="Wx3nA" id="7ksQUDZx7BM" role="jymVt">
      <property role="TrG5h" value="CALM" />
      <node concept="3Tm1VV" id="7ksQUDZx7BN" role="1B3o_S" />
      <node concept="3uibUv" id="7ksQUDZx7BO" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="7ksQUDZx7BP" role="33vP2m">
        <node concept="1pGfFk" id="7ksQUDZx7BQ" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="7ksQUDZx7BR" role="37wK5m">
            <property role="3cmrfH" value="69" />
          </node>
          <node concept="3cmrfG" id="7ksQUDZx7BS" role="37wK5m">
            <property role="3cmrfH" value="131" />
          </node>
          <node concept="3cmrfG" id="7ksQUDZx8gg" role="37wK5m">
            <property role="3cmrfH" value="131" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="7ksQUDZx7BU" role="lGtFl">
        <node concept="TZ5HA" id="7ksQUDZx7BV" role="TZ5H$">
          <node concept="1dT_AC" id="7ksQUDZx7BW" role="1dT_Ay">
            <property role="1dT_AB" value="BG for JavaScript local variable, default scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ksQUDZx8_J" role="jymVt" />
    <node concept="Wx3nA" id="7ksQUDZx8vw" role="jymVt">
      <property role="TrG5h" value="STORM" />
      <node concept="3Tm1VV" id="7ksQUDZx8vx" role="1B3o_S" />
      <node concept="3uibUv" id="7ksQUDZx8vy" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="7ksQUDZx8vz" role="33vP2m">
        <node concept="1pGfFk" id="7ksQUDZx8v$" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="7ksQUDZx8v_" role="37wK5m">
            <property role="3cmrfH" value="169" />
          </node>
          <node concept="3cmrfG" id="7ksQUDZx8vA" role="37wK5m">
            <property role="3cmrfH" value="183" />
          </node>
          <node concept="3cmrfG" id="7ksQUDZx8vB" role="37wK5m">
            <property role="3cmrfH" value="198" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="7ksQUDZx8vC" role="lGtFl">
        <node concept="TZ5HA" id="7ksQUDZx8vD" role="TZ5H$">
          <node concept="1dT_AC" id="7ksQUDZx8vE" role="1dT_Ay">
            <property role="1dT_AB" value="BG for Default identifier, dark scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2CEQDIDT_Xu" role="jymVt" />
    <node concept="3Tm1VV" id="7ksQUDZpwgz" role="1B3o_S" />
  </node>
  <node concept="PKFIW" id="5zfvpQ72h2k">
    <property role="3GE5qa" value="constraint.variable" />
    <property role="TrG5h" value="LogicVariableDeclarationStatement_type" />
    <ref role="1XX52x" to="wq2x:2E5lcNn8iYG" resolve="LogicVariableDeclarationStatement" />
    <node concept="3EZMnI" id="5zfvpQ72h2m" role="2wV5jI">
      <node concept="1HlG4h" id="5zfvpQ72h85" role="3EZMnx">
        <ref role="1k5W1q" node="7ksQUDZpd8b" resolve="ConstraintKeyword" />
        <node concept="1HfYo3" id="5zfvpQ72h86" role="1HlULh">
          <node concept="3TQlhw" id="5zfvpQ72h87" role="1Hhtcw">
            <node concept="3clFbS" id="5zfvpQ72h88" role="2VODD2">
              <node concept="3clFbF" id="5zfvpQ72h89" role="3cqZAp">
                <node concept="2OqwBi" id="5zfvpQ72h8a" role="3clFbG">
                  <node concept="3TUQnm" id="5zfvpQ72h8b" role="2Oq$k0">
                    <ref role="3TV0OU" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
                  </node>
                  <node concept="3TrcHB" id="5zfvpQ72h8c" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Vb9p2" id="5zfvpQ72h8d" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3EZMnI" id="5zfvpQ71CIP" role="3EZMnx">
        <node concept="VPM3Z" id="5zfvpQ71CIR" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="5zfvpQ71CJ1" role="3EZMnx">
          <property role="3F0ifm" value="&lt;" />
          <ref role="1k5W1q" to="tpen:75A9veqzBn9" resolve="LeftAngleBracket" />
          <node concept="11L4FC" id="5zfvpQ71Hl0" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="5zfvpQ71Hlk" role="3EZMnx">
          <ref role="1NtTu8" to="wq2x:5zfvpQ72gqq" />
        </node>
        <node concept="3F0ifn" id="5zfvpQ71Hl8" role="3EZMnx">
          <property role="3F0ifm" value="&gt;" />
          <ref role="1k5W1q" to="tpen:75A9veqzBna" resolve="RightAngleBracket" />
          <node concept="11LMrY" id="5zfvpQ72fTF" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="l2Vlx" id="5zfvpQ71CIU" role="2iSdaV" />
        <node concept="pkWqt" id="5zfvpQ71Hlr" role="pqm2j">
          <node concept="3clFbS" id="5zfvpQ71Hls" role="2VODD2">
            <node concept="3clFbF" id="5zfvpQ71Hqs" role="3cqZAp">
              <node concept="2OqwBi" id="5zfvpQ71P0M" role="3clFbG">
                <node concept="2OqwBi" id="5zfvpQ71HvF" role="2Oq$k0">
                  <node concept="pncrf" id="5zfvpQ71Hqr" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5zfvpQ72hTc" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:5zfvpQ72gqq" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5zfvpQ71Ppx" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5zfvpQ72h2p" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1CgWc1Tyjl0">
    <property role="3GE5qa" value="comment" />
    <ref role="1XX52x" to="wq2x:1CgWc1Tyjkw" resolve="Comment" />
    <node concept="3EZMnI" id="1CgWc1Tyjla" role="2wV5jI">
      <node concept="1QoScp" id="5bC6UNlxbE$" role="3EZMnx">
        <property role="1QpmdY" value="true" />
        <ref role="1k5W1q" to="tpen:hshO_Yc" resolve="Comment" />
        <node concept="pkWqt" id="5bC6UNlxbEB" role="3e4ffs">
          <node concept="3clFbS" id="5bC6UNlxbED" role="2VODD2">
            <node concept="3clFbF" id="5bC6UNlxbMj" role="3cqZAp">
              <node concept="3eOSWO" id="5bC6UNlxifO" role="3clFbG">
                <node concept="3cmrfG" id="5bC6UNlxifU" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="5bC6UNlxdn0" role="3uHU7B">
                  <node concept="2OqwBi" id="5bC6UNlxbR7" role="2Oq$k0">
                    <node concept="pncrf" id="5bC6UNlxbMi" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5bC6UNlxcaw" role="2OqNvi">
                      <ref role="3TtcxE" to="wq2x:5bC6UNlwzV7" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="5bC6UNlxgnU" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="5bC6UNlxiZC" role="1QoVPY">
          <node concept="3F0ifn" id="5bC6UNlxj7j" role="3EZMnx">
            <property role="3F0ifm" value="//" />
          </node>
          <node concept="3F2HdR" id="5bC6UNlxj75" role="3EZMnx">
            <ref role="1NtTu8" to="wq2x:5bC6UNlwzV7" />
            <ref role="1ERwB7" node="5bC6UNlwTHw" resolve="Comment_Actions" />
            <node concept="l2Vlx" id="5bC6UNlxj76" role="2czzBx" />
            <node concept="pj6Ft" id="5bC6UNlxj77" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="l2Vlx" id="5bC6UNlxiZF" role="2iSdaV" />
          <node concept="VPM3Z" id="5bC6UNlxiZG" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3EZMnI" id="5bC6UNlw$ho" role="1QoS34">
          <node concept="3F0ifn" id="1CgWc1TyjlO" role="3EZMnx">
            <property role="3F0ifm" value="/*" />
          </node>
          <node concept="3F2HdR" id="5bC6UNlwzV$" role="3EZMnx">
            <ref role="1NtTu8" to="wq2x:5bC6UNlwzV7" />
            <ref role="1ERwB7" node="5bC6UNlwTHw" resolve="Comment_Actions" />
            <node concept="l2Vlx" id="5bC6UNlwZVQ" role="2czzBx" />
            <node concept="pj6Ft" id="5bC6UNlxQMX" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="5bC6UNlw$gP" role="3EZMnx">
            <property role="3F0ifm" value="*/" />
          </node>
          <node concept="l2Vlx" id="5bC6UNlw$ht" role="2iSdaV" />
        </node>
      </node>
      <node concept="2SsqMj" id="1CgWc1Tyjm4" role="3EZMnx" />
      <node concept="2iRkQZ" id="1CgWc1Tyjld" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1CgWc1Tz5p9">
    <property role="3GE5qa" value="constraint.template" />
    <ref role="1XX52x" to="wq2x:1CgWc1TyPXm" resolve="ConstraintParameterDeclaration" />
    <node concept="3F0A7n" id="1CgWc1Tz5pk" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
    </node>
  </node>
  <node concept="1h_SRR" id="5bC6UNlwTHw">
    <property role="3GE5qa" value="comment" />
    <property role="TrG5h" value="Comment_Actions" />
    <ref role="1h_SK9" to="wq2x:1CgWc1Tyjkw" resolve="Comment" />
    <node concept="1hA7zw" id="5bC6UNlwTHx" role="1h_SK8">
      <property role="1hAc7j" value="backspace_action_id" />
      <node concept="1hAIg9" id="5bC6UNlwTHy" role="1hA7z_">
        <node concept="3clFbS" id="5bC6UNlwTHz" role="2VODD2">
          <node concept="3clFbF" id="5bC6UNlwTHG" role="3cqZAp">
            <node concept="2OqwBi" id="5bC6UNlwTJv" role="3clFbG">
              <node concept="0IXxy" id="5bC6UNlwTHF" role="2Oq$k0" />
              <node concept="1PgB_6" id="5bC6UNlwTSX" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="3g$8GQC8l_C">
    <property role="TrG5h" value="RuleCompomentCode" />
    <ref role="1XX52x" to="wq2x:6p0DfM0a3d3" resolve="RuleComponent" />
    <node concept="3EZMnI" id="3g$8GQC8l_D" role="2wV5jI">
      <property role="S$Qs1" value="true" />
      <node concept="VPM3Z" id="3g$8GQC8l_E" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="pVoyu" id="3g$8GQC8veT" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="lj46D" id="3g$8GQC8l_F" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="ljvvj" id="3g$8GQC8vdz" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="l2Vlx" id="3g$8GQC8l_G" role="2iSdaV" />
      <node concept="3F1sOY" id="3g$8GQC8l_H" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:6p0DfM0a5m9" />
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="3g$8GQC8utT">
    <property role="TrG5h" value="RuleCodeBlockCode" />
    <ref role="1XX52x" to="wq2x:tIwzd1_CMa" resolve="RuleCodeBlock" />
    <node concept="3EZMnI" id="3g$8GQC8utU" role="2wV5jI">
      <property role="S$Qs1" value="true" />
      <node concept="VPM3Z" id="3g$8GQC8utV" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="pVoyu" id="3g$8GQC8utW" role="3F10Kt">
        <property role="VOm3f" value="true" />
        <node concept="3nzxsE" id="3g$8GQC8utX" role="3n$kyP">
          <node concept="3clFbS" id="3g$8GQC8utY" role="2VODD2">
            <node concept="3clFbF" id="3g$8GQC8utZ" role="3cqZAp">
              <node concept="3fqX7Q" id="3g$8GQC8uu0" role="3clFbG">
                <node concept="2OqwBi" id="3g$8GQC8uu1" role="3fr31v">
                  <node concept="2OqwBi" id="3g$8GQC8uu2" role="2Oq$k0">
                    <node concept="pncrf" id="3g$8GQC8uu3" role="2Oq$k0" />
                    <node concept="2qgKlT" id="3g$8GQC8uu4" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="3g$8GQC8uu5" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:i0z3USV" resolve="isOneLiner" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="lj46D" id="3g$8GQC8uu6" role="3F10Kt">
        <property role="VOm3f" value="true" />
        <node concept="3nzxsE" id="3g$8GQC8uu7" role="3n$kyP">
          <node concept="3clFbS" id="3g$8GQC8uu8" role="2VODD2">
            <node concept="3clFbF" id="3g$8GQC8uu9" role="3cqZAp">
              <node concept="3fqX7Q" id="3g$8GQC8uua" role="3clFbG">
                <node concept="2OqwBi" id="3g$8GQC8uub" role="3fr31v">
                  <node concept="2OqwBi" id="3g$8GQC8uuc" role="2Oq$k0">
                    <node concept="pncrf" id="3g$8GQC8uud" role="2Oq$k0" />
                    <node concept="2qgKlT" id="3g$8GQC8uue" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="3g$8GQC8uuf" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:i0z3USV" resolve="isOneLiner" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="ljvvj" id="3g$8GQC8uug" role="3F10Kt">
        <property role="VOm3f" value="true" />
        <node concept="3nzxsE" id="3g$8GQC8uuh" role="3n$kyP">
          <node concept="3clFbS" id="3g$8GQC8uui" role="2VODD2">
            <node concept="3clFbF" id="3g$8GQC8uuj" role="3cqZAp">
              <node concept="3fqX7Q" id="3g$8GQC8uuk" role="3clFbG">
                <node concept="2OqwBi" id="3g$8GQC8uul" role="3fr31v">
                  <node concept="2OqwBi" id="3g$8GQC8uum" role="2Oq$k0">
                    <node concept="pncrf" id="3g$8GQC8uun" role="2Oq$k0" />
                    <node concept="2qgKlT" id="3g$8GQC8uuo" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="3g$8GQC8uup" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:i0z3USV" resolve="isOneLiner" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="3g$8GQC8uuq" role="2iSdaV" />
      <node concept="3F1sOY" id="3g$8GQC8uur" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:tIwzd1_VRv" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1pPth$m5B5c">
    <property role="3GE5qa" value="type" />
    <ref role="1XX52x" to="wq2x:1pPth$m5B4X" resolve="TypeTable" />
    <node concept="3EZMnI" id="1pPth$m5B5e" role="2wV5jI">
      <node concept="3EZMnI" id="1pPth$m5QfK" role="3EZMnx">
        <node concept="VPM3Z" id="1pPth$m5QfM" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="PMmxH" id="1pPth$m5B5r" role="3EZMnx">
          <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        </node>
        <node concept="3F0A7n" id="1pPth$m5Qhl" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="ljvvj" id="1pPth$m5SGW" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="1pPth$m7BnZ" role="3EZMnx">
          <property role="3F0ifm" value=" " />
          <node concept="VPxyj" id="1pPth$m7C6F" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPM3Z" id="1pPth$m7C4Q" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="ljvvj" id="1pPth$m7BpI" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="1pPth$m5QfP" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="1pPth$m5Qgv" role="3EZMnx">
        <node concept="VPM3Z" id="1pPth$m5Qgx" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="1pPth$m5Qg$" role="2iSdaV" />
        <node concept="3F2HdR" id="1pPth$m5Bbp" role="3EZMnx">
          <property role="2czwfO" value=" " />
          <ref role="1NtTu8" to="wq2x:1pPth$m5B4Y" />
          <node concept="l2Vlx" id="1pPth$m5Bbr" role="2czzBx" />
          <node concept="pj6Ft" id="1pPth$m5Bbw" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="tppnM" id="1pPth$m7_Ta" role="sWeuL">
            <node concept="pVoyu" id="1pPth$m7_Ti" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="ljvvj" id="1pPth$m7_Td" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="1pPth$m5B5h" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1pPth$m6097">
    <property role="3GE5qa" value="type" />
    <ref role="1XX52x" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
    <node concept="3EZMnI" id="1pPth$m6099" role="2wV5jI">
      <node concept="3F0A7n" id="1pPth$m609g" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="tpen:hshUnm6" resolve="StaticMethod" />
      </node>
      <node concept="3F0ifn" id="1pPth$m609m" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="1pPth$m609u" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:1pPth$m5BbA" />
      </node>
      <node concept="l2Vlx" id="1pPth$m609c" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1pPth$m6bZM">
    <property role="3GE5qa" value="type" />
    <ref role="1XX52x" to="wq2x:1pPth$m5o9D" resolve="TypeTermTemplate" />
    <node concept="3EZMnI" id="1pPth$m6bZO" role="2wV5jI">
      <node concept="3F0ifn" id="1pPth$m6bZV" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F2HdR" id="1pPth$m6c09" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="wq2x:1pPth$m5oa9" />
        <node concept="l2Vlx" id="1pPth$m6c0b" role="2czzBx" />
        <node concept="1Bsynf" id="1pPth$m6ptC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="tppnM" id="1pPth$m6pwx" role="sWeuL">
          <node concept="ljvvj" id="1pPth$m6pwB" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1pPth$m6c01" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="l2Vlx" id="1pPth$m6bZR" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1pPth$m6rC8">
    <property role="3GE5qa" value="type.feature" />
    <ref role="1XX52x" to="wq2x:1pPth$m5oa5" resolve="TypeFeature" />
    <node concept="1xolST" id="2N2MQGCLx7i" role="2wV5jI">
      <property role="1xolSY" value="&lt;no feature&gt;" />
    </node>
  </node>
  <node concept="24kQdi" id="2N2MQGCKV7Q">
    <property role="3GE5qa" value="type.feature" />
    <ref role="1XX52x" to="wq2x:1pPth$m5oae" resolve="StringTypeFeature" />
    <node concept="3EZMnI" id="2N2MQGCKV7S" role="2wV5jI">
      <node concept="3F0A7n" id="2N2MQGCKV7T" role="3EZMnx">
        <ref role="1k5W1q" to="tpen:hshQ_OE" resolve="Field" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2N2MQGCKV7U" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="PMmxH" id="2N2MQGCKV7V" role="3EZMnx">
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0ifn" id="2N2MQGCKV87" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0A7n" id="2N2MQGCKV8j" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no default value&gt;" />
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="wq2x:2N2MQGCKV7J" resolve="value" />
      </node>
      <node concept="l2Vlx" id="2N2MQGCKV7W" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2N2MQGCLx6w">
    <property role="3GE5qa" value="type.feature" />
    <ref role="1XX52x" to="wq2x:1pPth$m5oaL" resolve="ChildTypeFeature" />
    <node concept="3EZMnI" id="2N2MQGCLx6y" role="2wV5jI">
      <node concept="3F0A7n" id="2N2MQGCLx6z" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="tpen:hshQ_OE" resolve="Field" />
      </node>
      <node concept="3F0ifn" id="2N2MQGCLx6$" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="PMmxH" id="2N2MQGCLx6_" role="3EZMnx">
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="l2Vlx" id="2N2MQGCLx6A" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2N2MQGCLx6L">
    <property role="3GE5qa" value="type.feature" />
    <ref role="1XX52x" to="wq2x:1pPth$m5oa6" resolve="ListTypeFeature" />
    <node concept="3EZMnI" id="2N2MQGCLx6N" role="2wV5jI">
      <node concept="3F0A7n" id="2N2MQGCLx6O" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="tpen:hshQ_OE" resolve="Field" />
      </node>
      <node concept="3F0ifn" id="2N2MQGCLx6P" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="PMmxH" id="2N2MQGCLx6Q" role="3EZMnx">
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="l2Vlx" id="2N2MQGCLx6R" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2N2MQGCLx72">
    <property role="3GE5qa" value="type.feature" />
    <ref role="1XX52x" to="wq2x:1pPth$m5oaG" resolve="ReferenceTypeFeature" />
    <node concept="3EZMnI" id="2N2MQGCLx74" role="2wV5jI">
      <node concept="3F0A7n" id="2N2MQGCLx75" role="3EZMnx">
        <ref role="1k5W1q" to="tpen:hshQ_OE" resolve="Field" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2N2MQGCLx76" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="PMmxH" id="2N2MQGCLx77" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="l2Vlx" id="2N2MQGCLx78" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2CEQDIDTdJz">
    <property role="3GE5qa" value="type" />
    <ref role="1XX52x" to="wq2x:2CEQDIDRX6M" resolve="TypeTerm" />
    <node concept="3EZMnI" id="1pt0VTMv4B6" role="2wV5jI">
      <node concept="1iCGBv" id="6SKZg6H4nse" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:2CEQDIDTdBu" />
        <node concept="1sVBvm" id="6SKZg6H4nsg" role="1sWHZn">
          <node concept="3F0ifn" id="6SKZg6H4nsJ" role="2wV5jI">
            <property role="3F0ifm" value=":" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="2CEQDIE0VTa" role="3EZMnx">
        <ref role="1k5W1q" to="qgy9:7ksQUDZtGfa" resolve="Value" />
        <node concept="3Xmtl4" id="6SKZg6H4k8p" role="3F10Kt">
          <node concept="1wgc9g" id="6SKZg6H4k8E" role="3XvnJa">
            <ref role="1wgcnl" to="qgy9:7ksQUDZx8O3" resolve="ValueBrackets" />
          </node>
        </node>
        <node concept="lj46D" id="2CEQDIE0W1v" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="1Bsynf" id="6SKZg6H3wnF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="2CEQDIE0VTf" role="2iSdaV" />
        <node concept="3F0ifn" id="35Lj3TiZA7X" role="3EZMnx">
          <node concept="VPM3Z" id="6p0DfM0p$QV" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="1pt0VTMv4Bd" role="3EZMnx">
          <ref role="1NtTu8" to="5j4j:6$jH9oLmVNm" />
        </node>
        <node concept="3F0ifn" id="35Lj3TiZAUr" role="3EZMnx">
          <property role="3F0ifm" value="" />
          <node concept="VPM3Z" id="6p0DfM0p_6F" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="2Hnlc$" id="6SKZg6H33aY" role="2whIAn">
          <node concept="3clFbS" id="6SKZg6H33aZ" role="2VODD2">
            <node concept="3clFbF" id="6SKZg6H33b0" role="3cqZAp">
              <node concept="2OqwBi" id="6SKZg6H33b1" role="3clFbG">
                <node concept="2ShNRf" id="6SKZg6H33b2" role="2Oq$k0">
                  <node concept="3g6Rrh" id="6SKZg6H33b3" role="2ShVmc">
                    <node concept="17QB3L" id="6SKZg6H33b4" role="3g7fb8" />
                  </node>
                </node>
                <node concept="39bAoz" id="6SKZg6H33b5" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="35Lj3TiUy$d" role="2iSdaV" />
      <node concept="VPM3Z" id="2CEQDIE0W4u" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
    </node>
  </node>
</model>

