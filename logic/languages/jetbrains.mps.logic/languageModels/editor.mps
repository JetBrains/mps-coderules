<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5195f849-566d-46a3-bb0a-7ae9911e2652(jetbrains.mps.logic.editor)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="7" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="i51s" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.smodel.generator.smodelAdapter(MPS.Core/)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="5ueo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.style(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ng" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
        <child id="2597348684684069742" name="contextHints" index="CpUAK" />
      </concept>
      <concept id="1176897764478" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeFactory" flags="in" index="4$FPG" />
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="6516520003787916624" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Condition" flags="ig" index="27VH4U" />
      <concept id="7429591467341004871" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Group" flags="ng" index="aenpk">
        <child id="7429591467341004872" name="parts" index="aenpr" />
        <child id="7429591467341004877" name="condition" index="aenpu" />
      </concept>
      <concept id="6822301196700715228" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference" flags="ig" index="2aJ2om">
        <reference id="5944657839026714445" name="hint" index="2$4xQ3" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <property id="1160590307797" name="usesFolding" index="S$F3r" />
        <child id="1176897874615" name="nodeFactory" index="4_6I_" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
        <child id="1233141163694" name="separatorStyle" index="sWeuL" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="3308309804690746362" name="jetbrains.mps.lang.editor.structure.QueryFunction_ColorComposit" flags="ig" index="mot77" />
      <concept id="784421273959492578" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_IncludeMenu" flags="ng" index="mvV$s">
        <child id="784421273959492606" name="nodeFunction" index="mvV$0" />
      </concept>
      <concept id="784421273959493166" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_TargetNode" flags="ig" index="mvVNg" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="1177327570013" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Substitute" flags="in" index="ucgPf" />
      <concept id="8478191136883534237" name="jetbrains.mps.lang.editor.structure.IExtensibleSubstituteMenuPart" flags="ng" index="upBLQ">
        <child id="8478191136883534238" name="features" index="upBLP" />
      </concept>
      <concept id="1177335944525" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_SubstituteString" flags="in" index="uGdhv" />
      <concept id="4242538589859161874" name="jetbrains.mps.lang.editor.structure.ExplicitHintsSpecification" flags="ng" index="2w$q5c">
        <child id="4242538589859162459" name="hints" index="2w$qW5" />
      </concept>
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="5944657839000868711" name="jetbrains.mps.lang.editor.structure.ConceptEditorContextHints" flags="ig" index="2ABfQD">
        <child id="5944657839000877563" name="hints" index="2ABdcP" />
      </concept>
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
      </concept>
      <concept id="5944657839003601246" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclaration" flags="ig" index="2BsEeg">
        <property id="168363875802087287" name="showInUI" index="2gpH_U" />
      </concept>
      <concept id="3473224453637651916" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder" flags="ng" index="CtIbL">
        <property id="3473224453637651917" name="placeInCell" index="CtIbK" />
      </concept>
      <concept id="6150987479542522273" name="jetbrains.mps.lang.editor.structure.QueryHintsSpecification" flags="ig" index="2Hnlc$" />
      <concept id="1638911550608571617" name="jetbrains.mps.lang.editor.structure.TransformationMenu_Default" flags="ng" index="IW6AY" />
      <concept id="1638911550608610798" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute" flags="ig" index="IWg2L" />
      <concept id="1638911550608610278" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action" flags="ng" index="IWgqT">
        <child id="6202297022026447496" name="canExecuteFunction" index="2jiSrf" />
        <child id="1638911550608610281" name="executeFunction" index="IWgqQ" />
        <child id="5692353713941573325" name="textFunction" index="1hCUd6" />
      </concept>
      <concept id="8449131619432941427" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Super" flags="ng" index="L$LW2" />
      <concept id="1216308599511" name="jetbrains.mps.lang.editor.structure.PositionStyleClassItem" flags="ln" index="LD5Jc" />
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1235728439575" name="jetbrains.mps.lang.editor.structure.BaseLineCell" flags="ln" index="2R9Tw8" />
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styleClass" index="V601i" />
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
      <concept id="615427434521884870" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Subconcepts" flags="ng" index="2VfDsV" />
      <concept id="1186413799158" name="jetbrains.mps.lang.editor.structure.BracketColorStyleClassItem" flags="ln" index="VLuvy" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
        <child id="1223387335081" name="query" index="3n$kyP" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186414949600" name="jetbrains.mps.lang.editor.structure.AutoDeletableStyleClassItem" flags="ln" index="VPRnO" />
      <concept id="1186414999511" name="jetbrains.mps.lang.editor.structure.UnderlinedStyleClassItem" flags="ln" index="VQ3r3">
        <property id="1214316229833" name="underlined" index="2USNnj" />
      </concept>
      <concept id="1186415722038" name="jetbrains.mps.lang.editor.structure.FontSizeStyleClassItem" flags="ln" index="VSNWy">
        <property id="1221209241505" name="value" index="1lJzqX" />
      </concept>
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ng" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
      </concept>
      <concept id="1182191800432" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeListFilter" flags="in" index="107P5z" />
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1182233249301" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_childNode" flags="nn" index="12_Ws6" />
      <concept id="1240253180846" name="jetbrains.mps.lang.editor.structure.IndentLayoutNoWrapClassItem" flags="ln" index="34QqEe" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="8998492695583125082" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_MatchingText" flags="ng" index="16NfWO">
        <child id="8998492695583129244" name="query" index="16NeZM" />
      </concept>
      <concept id="1838685759388685703" name="jetbrains.mps.lang.editor.structure.TransformationFeature_DescriptionText" flags="ng" index="3cqGtN">
        <child id="1838685759388685704" name="query" index="3cqGtW" />
      </concept>
      <concept id="1838685759388690401" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_DescriptionText" flags="ig" index="3cqJkl" />
      <concept id="2896773699153795590" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform" flags="ng" index="3cWJ9i">
        <child id="3473224453637651919" name="placeInCell" index="CtIbM" />
      </concept>
      <concept id="7342352913006985483" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Action" flags="ng" index="3eGOop">
        <child id="8612453216082699922" name="substituteHandler" index="3aKz83" />
      </concept>
      <concept id="414384289274424754" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_AddConcept" flags="ng" index="3ft5Ry">
        <reference id="697754674827630451" name="concept" index="4PJHt" />
      </concept>
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="5692353713941573329" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText" flags="ig" index="1hCUdq" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1225456267680" name="jetbrains.mps.lang.editor.structure.RGBColor" flags="ng" index="1iSF2X">
        <property id="1225456424731" name="value" index="1iTho6" />
      </concept>
      <concept id="7291101478617127464" name="jetbrains.mps.lang.editor.structure.IExtensibleTransformationMenuPart" flags="ng" index="1joUw2">
        <child id="8954657570916349207" name="features" index="2jZA2a" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1223387125302" name="jetbrains.mps.lang.editor.structure.QueryFunction_Boolean" flags="in" index="3nzxsE" />
      <concept id="3308396621974580100" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_Default" flags="ng" index="3p36aQ" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1219226236603" name="jetbrains.mps.lang.editor.structure.DrawBracketsStyleClassItem" flags="ln" index="3vyZuw" />
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="7667708318090725848" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentAnchorStyleClassItem" flags="ln" index="1Bsynf" />
      <concept id="7667708318090877006" name="jetbrains.mps.lang.editor.structure.IndentLayoutWrapAnchorStyleClassItem" flags="ln" index="1Bt7hp" />
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="4242538589862653897" name="addHints" index="2whIAn" />
        <child id="4242538589862654489" name="removeHints" index="2whJh7" />
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
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY">
        <child id="5861024100072578575" name="addHints" index="3xwHhi" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR">
        <reference id="1173177718857" name="elementActionMap" index="APP_o" />
        <child id="7279578193766667846" name="addHints" index="78xua" />
        <child id="1182233390675" name="filter" index="12AuX0" />
      </concept>
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ng" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
        <child id="3604384757217586546" name="selectionStart" index="3dN3m$" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
        <child id="7980428675268276159" name="parts" index="1Qtc8A" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1179360813171" name="jetbrains.mps.baseLanguage.structure.HexIntegerLiteral" flags="nn" index="2nou5x">
        <property id="1179360856892" name="value" index="2noCCI" />
      </concept>
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
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
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
      </concept>
      <concept id="5455284157993911097" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitPart" flags="ng" index="2pJxcK">
        <child id="5455284157993911094" name="expression" index="2pJxcZ" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709738802" name="jetbrains.mps.lang.quotation.structure.NodeBuilderList" flags="nn" index="36be1Y">
        <child id="8182547171709738803" name="nodes" index="36be1Z" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204851882688" name="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" flags="ng" index="26LbJo">
        <reference id="1204851882689" name="link" index="26LbJp" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1138676077309" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="nn" index="uoxfO">
        <reference id="1138676095763" name="enumMember" index="uo_Cq" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="7835263205327057228" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenAndChildAttributesOperation" flags="ng" index="Bykcj" />
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt">
        <reference id="1139877738879" name="concept" index="1A0vxQ" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="6973815483243445083" name="jetbrains.mps.lang.smodel.structure.EnumMemberValueRefExpression" flags="nn" index="3f7Wdw">
        <reference id="6973815483243565416" name="member" index="3f7u_j" />
        <reference id="6973815483243564601" name="enum" index="3f7vo2" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1146171026731" name="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum" flags="nn" index="3t7uKx">
        <child id="1146171026732" name="value" index="3t7uKA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="1pt0VTMuXN6">
    <ref role="1XX52x" to="5j4j:6$jH9oLmUCq" resolve="TreeFormExpression" />
    <node concept="3EZMnI" id="1pt0VTMv4B6" role="2wV5jI">
      <ref role="1k5W1q" node="7ksQUDZtGfa" resolve="Value" />
      <node concept="3Xmtl4" id="7ksQUDZx9p7" role="3F10Kt">
        <node concept="1wgc9g" id="7ksQUDZx9pr" role="3XvnJa">
          <ref role="1wgcnl" node="7ksQUDZx8O3" resolve="ValueBrackets" />
        </node>
      </node>
      <node concept="3F0ifn" id="35Lj3TiZA7X" role="3EZMnx">
        <node concept="VPM3Z" id="6p0DfM0p$QV" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F1sOY" id="1pt0VTMv4Bd" role="3EZMnx">
        <ref role="1NtTu8" to="5j4j:6$jH9oLmVNm" resolve="root" />
      </node>
      <node concept="3F0ifn" id="35Lj3TiZAUr" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="VPM3Z" id="6p0DfM0p_6F" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="l2Vlx" id="35Lj3TiUy$d" role="2iSdaV" />
      <node concept="2Hnlc$" id="6dP_abdGibY" role="2whIAn">
        <node concept="3clFbS" id="6dP_abdGibZ" role="2VODD2">
          <node concept="3clFbF" id="6dP_abdGjCE" role="3cqZAp">
            <node concept="2OqwBi" id="6dP_abdGoXo" role="3clFbG">
              <node concept="2ShNRf" id="6dP_abdGjCA" role="2Oq$k0">
                <node concept="3g6Rrh" id="6dP_abdGjZI" role="2ShVmc">
                  <node concept="17QB3L" id="6dP_abdGkiu" role="3g7fb8" />
                </node>
              </node>
              <node concept="39bAoz" id="6dP_abdGq4$" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="lj46D" id="7xE5ZvRRdUw" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1pt0VTMvWxi">
    <property role="3GE5qa" value="treeform" />
    <ref role="1XX52x" to="5j4j:6$jH9oLnyB1" resolve="Symbol" />
    <node concept="3F0A7n" id="1pt0VTMvWxk" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      <node concept="34QqEe" id="1pt0VTMzehM" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1pt0VTMw5TB">
    <property role="3GE5qa" value="role" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
    <node concept="3EZMnI" id="1pt0VTMw5TD" role="2wV5jI">
      <node concept="3F0A7n" id="1pt0VTMw5TY" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
        <node concept="34QqEe" id="1pt0VTMz66k" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1pt0VTMw5U7" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
        <node concept="11L4FC" id="3qvzBqWCMp9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="3t7_2Fgv2H_" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="5j4j:6$jH9oLmYFB" resolve="contents" />
        <node concept="l2Vlx" id="3t7_2Fgv2HA" role="2czzBx" />
        <node concept="ljvvj" id="3t7_2Fgv2HB" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="3t7_2Fgv2HC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="tppnM" id="3t7_2Fgv2HD" role="sWeuL">
          <node concept="ljvvj" id="3t7_2Fgv2HE" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3t7_2Fgv2HF" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="empty" />
        </node>
      </node>
      <node concept="l2Vlx" id="1pt0VTMw5TG" role="2iSdaV" />
      <node concept="lj46D" id="6dP_abdJmoV" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1pt0VTMw7ty">
    <property role="3GE5qa" value="role" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
    <node concept="3EZMnI" id="1pt0VTMw7t$" role="2wV5jI">
      <node concept="3F0A7n" id="1pt0VTMw7tT" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="34QqEe" id="1pt0VTMypUt" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3Xmtl4" id="1lUeO1NkL0x" role="3F10Kt">
          <node concept="1wgc9g" id="1lUeO1NkL1w" role="3XvnJa">
            <ref role="1wgcnl" to="tpen:aeM1BF$B9t" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1pt0VTMw7tL" role="3EZMnx">
        <property role="3F0ifm" value="=" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
        <node concept="11L4FC" id="3qvzBqWCnwI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="3qvzBqWCnyz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="34QqEe" id="1pt0VTMypXO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1pt0VTMywc8" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F2HdR" id="1pt0VTMw7$d" role="3EZMnx">
        <ref role="1NtTu8" to="5j4j:6$jH9oLmYL8" resolve="contents" />
        <ref role="1ERwB7" node="38jpnomVCZ5" resolve="ValueRole_INSERT" />
        <node concept="l2Vlx" id="1pt0VTMw7$e" role="2czzBx" />
        <node concept="3F0ifn" id="dfChU1DR3X" role="2czzBI">
          <property role="3F0ifm" value="" />
        </node>
      </node>
      <node concept="3F0ifn" id="1pt0VTMw7ue" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="1pt0VTMw7tB" role="2iSdaV" />
      <node concept="ljvvj" id="6dP_abdLWxW" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1pt0VTMw9pG">
    <property role="3GE5qa" value="treeform" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
    <node concept="3F0A7n" id="1pt0VTMw9vG" role="2wV5jI">
      <ref role="1NtTu8" to="5j4j:6$jH9oLmYKA" resolve="value" />
      <ref role="1ERwB7" node="3qvzBqWFBjP" resolve="ValueHolder_DELETE" />
      <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
      <node concept="VPRnO" id="35Lj3Tim2Yt" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1pt0VTMBsMB">
    <property role="3GE5qa" value="role.value" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
    <node concept="2aJ2om" id="1pt0VTMBsMD" role="CpUAK">
      <ref role="2$4xQ3" node="3qvzBqWBql5" resolve="CONCEPT_ROLE" />
    </node>
    <node concept="3F2HdR" id="1pt0VTMBxQF" role="2wV5jI">
      <ref role="1NtTu8" to="5j4j:6$jH9oLmYL8" resolve="contents" />
      <ref role="1k5W1q" to="tpen:hFIVf2f" resolve="ClassName" />
      <ref role="1ERwB7" node="38jpnomVCZ5" resolve="ValueRole_INSERT" />
      <ref role="APP_o" node="3qvzBqWFBjP" resolve="ValueHolder_DELETE" />
    </node>
  </node>
  <node concept="V5hpn" id="1pt0VTMEHm_">
    <property role="TrG5h" value="Logic" />
    <node concept="14StLt" id="1pt0VTMEHmC" role="V601i">
      <property role="TrG5h" value="NodeVariable" />
      <node concept="VechU" id="1pt0VTMEHCC" role="3F10Kt">
        <property role="Vb096" value="magenta" />
        <node concept="1iSF2X" id="5lJXKCxiC" role="VblUZ">
          <property role="1iTho6" value="CC6699" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="7ksQUDZy5cR" role="V601i">
      <property role="TrG5h" value="Substituted" />
      <node concept="3Xmtl4" id="7ksQUDZy5eD" role="3F10Kt">
        <node concept="1wgc9g" id="7ksQUDZy5eJ" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:aeM1BF$GT0" />
        </node>
      </node>
      <node concept="34QqEe" id="6SKZg6H42CM" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="VPM3Z" id="6SKZg6H45Aw" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
    </node>
    <node concept="14StLt" id="7ksQUDZy5i9" role="V601i">
      <property role="TrG5h" value="SubstitutedBrackets" />
      <node concept="3vyZuw" id="7ksQUDZy5jB" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="VLuvy" id="7ksQUDZy5jC" role="3F10Kt">
        <node concept="1iSF2X" id="7ksQUDZy6wJ" role="VblUZ">
          <property role="1iTho6" value="808080" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="7ksQUDZtGfa" role="V601i">
      <property role="TrG5h" value="Value" />
      <node concept="30gYXW" id="7ksQUDZtGp4" role="3F10Kt">
        <node concept="mot77" id="1iWwVK2DRUO" role="VblUZ">
          <node concept="3clFbS" id="1iWwVK2DRUY" role="2VODD2">
            <node concept="3clFbF" id="1iWwVK2DS2M" role="3cqZAp">
              <node concept="10M0yZ" id="1iWwVK2DS2L" role="3clFbG">
                <ref role="1PxDUh" node="7ksQUDZtHks" resolve="CustomColors" />
                <ref role="3cqZAo" node="1iWwVK2DP_M" resolve="BG_DB_EXPRESSION" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Veino" id="7ksQUDZtGpe" role="3F10Kt">
        <node concept="mot77" id="1iWwVK2DRvl" role="VblUZ">
          <node concept="3clFbS" id="1iWwVK2DRvv" role="2VODD2">
            <node concept="3clFbF" id="1iWwVK2DRHc" role="3cqZAp">
              <node concept="10M0yZ" id="1iWwVK2DRHb" role="3clFbG">
                <ref role="1PxDUh" node="7ksQUDZtHks" resolve="CustomColors" />
                <ref role="3cqZAo" node="1iWwVK2DP_M" resolve="BG_DB_EXPRESSION" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="14StLt" id="7ksQUDZx8O3" role="V601i">
      <property role="TrG5h" value="ValueBrackets" />
      <node concept="3vyZuw" id="7ksQUDZx8Pi" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="VLuvy" id="7ksQUDZx8Pj" role="3F10Kt">
        <node concept="mot77" id="1iWwVK2DTqL" role="VblUZ">
          <node concept="3clFbS" id="1iWwVK2DTqV" role="2VODD2">
            <node concept="3clFbF" id="1iWwVK2DTyA" role="3cqZAp">
              <node concept="10M0yZ" id="1iWwVK2DTBo" role="3clFbG">
                <ref role="1PxDUh" node="7ksQUDZtHks" resolve="CustomColors" />
                <ref role="3cqZAo" node="7LZcKzBF77o" resolve="FG_LOCAL_IDENTIFIER" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="14StLt" id="7ksQUDZuyMD" role="V601i">
      <property role="TrG5h" value="Backquote" />
      <node concept="30gYXW" id="7ksQUDZuyNr" role="3F10Kt">
        <node concept="mot77" id="1iWwVK2DW08" role="VblUZ">
          <node concept="3clFbS" id="1iWwVK2DW0i" role="2VODD2">
            <node concept="3clFbF" id="1iWwVK2DWcA" role="3cqZAp">
              <node concept="10M0yZ" id="1iWwVK2DWc_" role="3clFbG">
                <ref role="1PxDUh" node="7ksQUDZtHks" resolve="CustomColors" />
                <ref role="3cqZAo" node="1iWwVK2DV36" resolve="BG_TEXT_EXPRESSION" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Veino" id="7ksQUDZuyN_" role="3F10Kt">
        <node concept="mot77" id="1iWwVK2DWod" role="VblUZ">
          <node concept="3clFbS" id="1iWwVK2DWon" role="2VODD2">
            <node concept="3clFbF" id="1iWwVK2DWvG" role="3cqZAp">
              <node concept="10M0yZ" id="1iWwVK2DWvF" role="3clFbG">
                <ref role="1PxDUh" node="7ksQUDZtHks" resolve="CustomColors" />
                <ref role="3cqZAo" node="1iWwVK2DV36" resolve="BG_TEXT_EXPRESSION" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="VQ3r3" id="7ksQUDZuOmp" role="3F10Kt">
        <property role="2USNnj" value="2" />
      </node>
    </node>
    <node concept="14StLt" id="1iWwVK2B1it" role="V601i">
      <property role="TrG5h" value="Logical" />
      <node concept="VechU" id="4bWqD4CaXxK" role="3F10Kt">
        <node concept="mot77" id="4bWqD4CaXxN" role="VblUZ">
          <node concept="3clFbS" id="4bWqD4CaXxO" role="2VODD2">
            <node concept="3clFbF" id="4bWqD4CaXAr" role="3cqZAp">
              <node concept="10M0yZ" id="4bWqD4CaXFo" role="3clFbG">
                <ref role="3cqZAo" node="4bWqD4CaWqs" resolve="FG_METHOD" />
                <ref role="1PxDUh" node="7ksQUDZtHks" resolve="CustomColors" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2ABfQD" id="6dP_abdFxyH">
    <property role="TrG5h" value="NodeHints" />
    <node concept="2BsEeg" id="6dP_abdFyt9" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="GENERIC" />
    </node>
    <node concept="2BsEeg" id="6dP_abdTZPC" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="CONCEPT_INSTANCE" />
    </node>
    <node concept="2BsEeg" id="25SygBrhtsk" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="CLASSIFIER_TYPE" />
    </node>
    <node concept="2BsEeg" id="3qvzBqWBql5" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="CONCEPT_ROLE" />
    </node>
    <node concept="2BsEeg" id="3qvzBqWBql6" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="PARAMETER_ROLE" />
    </node>
  </node>
  <node concept="24kQdi" id="6dP_abdG2vL">
    <property role="3GE5qa" value="treeform" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
    <node concept="2aJ2om" id="6dP_abdG2$T" role="CpUAK">
      <ref role="2$4xQ3" node="6dP_abdFyt9" resolve="GENERIC" />
    </node>
    <node concept="3EZMnI" id="3UWDOwQX9zs" role="2wV5jI">
      <node concept="PMmxH" id="3UWDOwQX9zt" role="3EZMnx">
        <ref role="PMmxG" node="45hxFudhNQ$" resolve="Node_Switch" />
        <node concept="pkWqt" id="3UWDOwQX9zu" role="pqm2j">
          <node concept="3clFbS" id="3UWDOwQX9zv" role="2VODD2">
            <node concept="3clFbF" id="3UWDOwQX9zw" role="3cqZAp">
              <node concept="3fqX7Q" id="3UWDOwQYXW0" role="3clFbG">
                <node concept="2OqwBi" id="3UWDOwQYXW1" role="3fr31v">
                  <node concept="2OqwBi" id="3UWDOwQYXW2" role="2Oq$k0">
                    <node concept="pncrf" id="3UWDOwQYXW3" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3UWDOwQYXW4" role="2OqNvi">
                      <ref role="3TsBF5" to="5j4j:6dP_abdQoiG" resolve="kind" />
                    </node>
                  </node>
                  <node concept="3t7uKx" id="3UWDOwQYXW5" role="2OqNvi">
                    <node concept="uoxfO" id="3UWDOwQYXW6" role="3t7uKA">
                      <ref role="uo_Cq" to="5j4j:1dOf$WH0KX6" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="3UWDOwQX9zB" role="3EZMnx">
        <ref role="PMmxG" node="6dP_abdRe7A" resolve="Node_GENERIC" />
        <node concept="pkWqt" id="3UWDOwQX9zC" role="pqm2j">
          <node concept="3clFbS" id="3UWDOwQX9zD" role="2VODD2">
            <node concept="3clFbF" id="3UWDOwQX9zE" role="3cqZAp">
              <node concept="2OqwBi" id="3UWDOwQX9zG" role="3clFbG">
                <node concept="2OqwBi" id="3UWDOwQX9zH" role="2Oq$k0">
                  <node concept="pncrf" id="3UWDOwQX9zI" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3UWDOwQX9zJ" role="2OqNvi">
                    <ref role="3TsBF5" to="5j4j:6dP_abdQoiG" resolve="kind" />
                  </node>
                </node>
                <node concept="3t7uKx" id="3UWDOwQX9zK" role="2OqNvi">
                  <node concept="uoxfO" id="3UWDOwQX9zL" role="3t7uKA">
                    <ref role="uo_Cq" to="5j4j:1dOf$WH0KX6" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="3UWDOwQX9zM" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="6dP_abdQqhT">
    <property role="TrG5h" value="Node_Inspector" />
    <property role="3GE5qa" value="treeform" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
    <node concept="3EZMnI" id="6dP_abdQqoF" role="2wV5jI">
      <node concept="3F0ifn" id="6dP_abdR3F1" role="3EZMnx">
        <property role="3F0ifm" value="show as:" />
      </node>
      <node concept="3F0A7n" id="6dP_abdQqAn" role="3EZMnx">
        <ref role="1NtTu8" to="5j4j:6dP_abdQoiG" resolve="kind" />
      </node>
      <node concept="l2Vlx" id="6dP_abdQqoI" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6dP_abdQWZZ">
    <property role="3GE5qa" value="treeform" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
    <node concept="PMmxH" id="6dP_abdQXdF" role="6VMZX">
      <ref role="PMmxG" node="6dP_abdQqhT" resolve="Node_Inspector" />
    </node>
    <node concept="PMmxH" id="45hxFudi2p4" role="2wV5jI">
      <ref role="PMmxG" node="45hxFudhNQ$" resolve="Node_Switch" />
    </node>
  </node>
  <node concept="PKFIW" id="6dP_abdRe7A">
    <property role="TrG5h" value="Node_GENERIC" />
    <property role="3GE5qa" value="treeform.generic" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
    <node concept="3EZMnI" id="6dP_abdReN_" role="2wV5jI">
      <node concept="3F0ifn" id="6dP_abdReNA" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F2HdR" id="6dP_abdReNB" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="5j4j:6$jH9oLnyAp" resolve="role" />
        <node concept="l2Vlx" id="6dP_abdReNC" role="2czzBx" />
        <node concept="107P5z" id="6dP_abdReND" role="12AuX0">
          <node concept="3clFbS" id="6dP_abdReNE" role="2VODD2">
            <node concept="3clFbF" id="6dP_abdReNF" role="3cqZAp">
              <node concept="2OqwBi" id="6dP_abdReNG" role="3clFbG">
                <node concept="12_Ws6" id="6dP_abdReNH" role="2Oq$k0" />
                <node concept="1mIQ4w" id="6dP_abdReNI" role="2OqNvi">
                  <node concept="chp4Y" id="6dP_abdReNJ" role="cj9EA">
                    <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lj46D" id="7xE5ZvRRGF7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="6dP_abdReNR" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="&quot;…&quot;" />
        </node>
        <node concept="4$FPG" id="1dOf$WH0pk8" role="4_6I_">
          <node concept="3clFbS" id="1dOf$WH0pk9" role="2VODD2">
            <node concept="3clFbF" id="1dOf$WH0ptA" role="3cqZAp">
              <node concept="2ShNRf" id="1dOf$WH0pNC" role="3clFbG">
                <node concept="2fJWfE" id="1dOf$WH0pND" role="2ShVmc">
                  <node concept="3Tqbb2" id="1dOf$WH0pNE" role="3zrR0E">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="6dP_abdReNS" role="3EZMnx">
        <node concept="lj46D" id="7xE5ZvRQNFl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="6dP_abdReNT" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="6dP_abdReNU" role="2iSdaV" />
        <node concept="3F2HdR" id="6dP_abdReNV" role="3EZMnx">
          <property role="2czwfO" value="," />
          <property role="S$F3r" value="false" />
          <ref role="1NtTu8" to="5j4j:6$jH9oLnyAp" resolve="role" />
          <node concept="l2Vlx" id="6dP_abdReNW" role="2czzBx" />
          <node concept="pVoyu" id="6dP_abdReNX" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="6dP_abdReNY" role="3n$kyP">
              <node concept="3clFbS" id="6dP_abdReNZ" role="2VODD2">
                <node concept="3clFbF" id="6dP_abdReO0" role="3cqZAp">
                  <node concept="2OqwBi" id="6dP_abdReO1" role="3clFbG">
                    <node concept="2OqwBi" id="6dP_abdReO2" role="2Oq$k0">
                      <node concept="pncrf" id="6dP_abdReO3" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="6dP_abdReO4" role="2OqNvi">
                        <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" resolve="role" />
                      </node>
                    </node>
                    <node concept="2HwmR7" id="6dP_abdReO5" role="2OqNvi">
                      <node concept="1bVj0M" id="6dP_abdReO6" role="23t8la">
                        <node concept="3clFbS" id="6dP_abdReO7" role="1bW5cS">
                          <node concept="3clFbF" id="6dP_abdReO8" role="3cqZAp">
                            <node concept="2OqwBi" id="6dP_abdReO9" role="3clFbG">
                              <node concept="37vLTw" id="6dP_abdReOa" role="2Oq$k0">
                                <ref role="3cqZAo" node="6dP_abdReOd" resolve="it" />
                              </node>
                              <node concept="1mIQ4w" id="6dP_abdReOb" role="2OqNvi">
                                <node concept="chp4Y" id="6dP_abdReOc" role="cj9EA">
                                  <ref role="cht4Q" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="6dP_abdReOd" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="6dP_abdReOe" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="lj46D" id="6dP_abdReOf" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="107P5z" id="6dP_abdReOg" role="12AuX0">
            <node concept="3clFbS" id="6dP_abdReOh" role="2VODD2">
              <node concept="3clFbF" id="6dP_abdReOi" role="3cqZAp">
                <node concept="2OqwBi" id="6dP_abdReOj" role="3clFbG">
                  <node concept="12_Ws6" id="6dP_abdReOk" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="6dP_abdReOl" role="2OqNvi">
                    <node concept="chp4Y" id="6dP_abdReOm" role="cj9EA">
                      <ref role="cht4Q" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="6dP_abdReOt" role="2czzBI">
            <property role="3F0ifm" value="" />
            <property role="ilYzB" value="&lt;…&gt;" />
          </node>
          <node concept="4$FPG" id="1dOf$WH0qsc" role="4_6I_">
            <node concept="3clFbS" id="1dOf$WH0qsd" role="2VODD2">
              <node concept="3clFbF" id="1dOf$WH0qCa" role="3cqZAp">
                <node concept="2ShNRf" id="1dOf$WH0rd6" role="3clFbG">
                  <node concept="2fJWfE" id="1dOf$WH0rd7" role="2ShVmc">
                    <node concept="3Tqbb2" id="1dOf$WH0rd8" role="3zrR0E">
                      <ref role="ehGHo" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6dP_abdReOu" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
        <node concept="34QqEe" id="6dP_abdReOv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="6dP_abdReOw" role="2iSdaV" />
      <node concept="2w$q5c" id="6dP_abdReOx" role="2whIAn">
        <node concept="2aJ2om" id="6dP_abdReOy" role="2w$qW5">
          <ref role="2$4xQ3" node="6dP_abdFyt9" resolve="GENERIC" />
        </node>
      </node>
      <node concept="lj46D" id="7xE5ZvRR6qn" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="6dP_abdU8FR">
    <property role="TrG5h" value="Node_CONCEPT_INSTANCE" />
    <property role="3GE5qa" value="treeform.conceptInstance" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
    <node concept="3EZMnI" id="6dP_abdU8FS" role="2wV5jI">
      <node concept="3F2HdR" id="6dP_abdUhAq" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="5j4j:6$jH9oLnyAp" resolve="role" />
        <ref role="1ERwB7" node="38jpnomWVAh" resolve="Node_concept_INSERT" />
        <node concept="l2Vlx" id="6dP_abdUhAr" role="2czzBx" />
        <node concept="107P5z" id="6dP_abdUhAs" role="12AuX0">
          <node concept="3clFbS" id="6dP_abdUhAt" role="2VODD2">
            <node concept="3clFbF" id="38jpnomWHtB" role="3cqZAp">
              <node concept="2OqwBi" id="6dP_abdUkke" role="3clFbG">
                <node concept="3f7Wdw" id="6dP_abdUjki" role="2Oq$k0">
                  <ref role="3f7u_j" to="5j4j:6dP_abdUiHP" />
                  <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                </node>
                <node concept="liA8E" id="6dP_abdUlpZ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="6dP_abdUo8U" role="37wK5m">
                    <node concept="1PxgMI" id="6dP_abdUo8V" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="12_Ws6" id="6dP_abdUo8W" role="1m5AlR" />
                      <node concept="chp4Y" id="6fXjIfxgndQ" role="3oSUPX">
                        <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="6dP_abdUo8X" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="6dP_abdUhAD" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="6dP_abdUhAE" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no concept" />
        </node>
        <node concept="2w$q5c" id="6dP_abdUpMP" role="78xua">
          <node concept="2aJ2om" id="6dP_abdUpMQ" role="2w$qW5">
            <ref role="2$4xQ3" node="3qvzBqWBql5" resolve="CONCEPT_ROLE" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6dP_abdU8FT" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F2HdR" id="6dP_abdU8FU" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="5j4j:6$jH9oLnyAp" resolve="role" />
        <node concept="l2Vlx" id="6dP_abdU8FV" role="2czzBx" />
        <node concept="107P5z" id="6dP_abdU8FW" role="12AuX0">
          <node concept="3clFbS" id="6dP_abdU8FX" role="2VODD2">
            <node concept="3clFbF" id="38jpnomXB_D" role="3cqZAp">
              <node concept="1Wc70l" id="38jpnomXDwk" role="3clFbG">
                <node concept="3fqX7Q" id="38jpnomXDRF" role="3uHU7w">
                  <node concept="2OqwBi" id="38jpnomXF7y" role="3fr31v">
                    <node concept="3f7Wdw" id="38jpnomXF7z" role="2Oq$k0">
                      <ref role="3f7u_j" to="5j4j:6dP_abdUiHP" />
                      <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                    </node>
                    <node concept="liA8E" id="38jpnomXF7$" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                      <node concept="2OqwBi" id="38jpnomXF7_" role="37wK5m">
                        <node concept="1PxgMI" id="38jpnomXF7A" role="2Oq$k0">
                          <property role="1BlNFB" value="true" />
                          <node concept="12_Ws6" id="38jpnomXF7B" role="1m5AlR" />
                          <node concept="chp4Y" id="6fXjIfxgndU" role="3oSUPX">
                            <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="38jpnomXF7C" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="38jpnomXBZ5" role="3uHU7B">
                  <node concept="12_Ws6" id="38jpnomXB_B" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="38jpnomXCD9" role="2OqNvi">
                    <node concept="chp4Y" id="38jpnomXD2l" role="cj9EA">
                      <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="6dP_abdU8G9" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="6dP_abdU8Ga" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no values" />
        </node>
        <node concept="4$FPG" id="1dOf$WH0mAX" role="4_6I_">
          <node concept="3clFbS" id="1dOf$WH0mAY" role="2VODD2">
            <node concept="3clFbF" id="1dOf$WH0mQe" role="3cqZAp">
              <node concept="2ShNRf" id="1dOf$WH0ndv" role="3clFbG">
                <node concept="2fJWfE" id="1dOf$WH0ndw" role="2ShVmc">
                  <node concept="3Tqbb2" id="1dOf$WH0ndx" role="3zrR0E">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="6dP_abdU8Gb" role="3EZMnx">
        <node concept="VPM3Z" id="6dP_abdU8Gc" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="6dP_abdU8Gd" role="2iSdaV" />
        <node concept="3F2HdR" id="6dP_abdU8Ge" role="3EZMnx">
          <property role="2czwfO" value="," />
          <property role="S$F3r" value="false" />
          <ref role="1NtTu8" to="5j4j:6$jH9oLnyAp" resolve="role" />
          <node concept="l2Vlx" id="6dP_abdU8Gf" role="2czzBx" />
          <node concept="pVoyu" id="6dP_abdU8Gg" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="6dP_abdU8Gh" role="3n$kyP">
              <node concept="3clFbS" id="6dP_abdU8Gi" role="2VODD2">
                <node concept="3clFbF" id="6dP_abdU8Gj" role="3cqZAp">
                  <node concept="2OqwBi" id="6dP_abdU8Gk" role="3clFbG">
                    <node concept="2OqwBi" id="6dP_abdU8Gl" role="2Oq$k0">
                      <node concept="pncrf" id="6dP_abdU8Gm" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="6dP_abdU8Gn" role="2OqNvi">
                        <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" resolve="role" />
                      </node>
                    </node>
                    <node concept="2HwmR7" id="6dP_abdU8Go" role="2OqNvi">
                      <node concept="1bVj0M" id="6dP_abdU8Gp" role="23t8la">
                        <node concept="3clFbS" id="6dP_abdU8Gq" role="1bW5cS">
                          <node concept="3clFbF" id="6dP_abdU8Gr" role="3cqZAp">
                            <node concept="2OqwBi" id="6dP_abdU8Gs" role="3clFbG">
                              <node concept="37vLTw" id="6dP_abdU8Gt" role="2Oq$k0">
                                <ref role="3cqZAo" node="6dP_abdU8Gw" resolve="it" />
                              </node>
                              <node concept="1mIQ4w" id="6dP_abdU8Gu" role="2OqNvi">
                                <node concept="chp4Y" id="6dP_abdU8Gv" role="cj9EA">
                                  <ref role="cht4Q" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="6dP_abdU8Gw" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="6dP_abdU8Gx" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="lj46D" id="6dP_abdU8Gy" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="107P5z" id="6dP_abdU8Gz" role="12AuX0">
            <node concept="3clFbS" id="6dP_abdU8G$" role="2VODD2">
              <node concept="3clFbF" id="6dP_abdU8G_" role="3cqZAp">
                <node concept="2OqwBi" id="6dP_abdU8GA" role="3clFbG">
                  <node concept="12_Ws6" id="6dP_abdU8GB" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="6dP_abdU8GC" role="2OqNvi">
                    <node concept="chp4Y" id="6dP_abdU8GD" role="cj9EA">
                      <ref role="cht4Q" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="6dP_abdU8GK" role="2czzBI">
            <property role="3F0ifm" value="" />
            <property role="ilYzB" value="no children" />
          </node>
          <node concept="4$FPG" id="1dOf$WH0nTZ" role="4_6I_">
            <node concept="3clFbS" id="1dOf$WH0nU0" role="2VODD2">
              <node concept="3clFbF" id="1dOf$WH0oev" role="3cqZAp">
                <node concept="2ShNRf" id="1dOf$WH0ou9" role="3clFbG">
                  <node concept="2fJWfE" id="1dOf$WH0oua" role="2ShVmc">
                    <node concept="3Tqbb2" id="1dOf$WH0oub" role="3zrR0E">
                      <ref role="ehGHo" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6dP_abdU8GL" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
        <node concept="34QqEe" id="6dP_abdU8GM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="6dP_abdU8GN" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1dOf$WGVWsS">
    <property role="3GE5qa" value="treeform.conceptInstance" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
    <node concept="2aJ2om" id="1dOf$WGW6cZ" role="CpUAK">
      <ref role="2$4xQ3" node="6dP_abdTZPC" resolve="CONCEPT_INSTANCE" />
    </node>
    <node concept="3EZMnI" id="3UWDOwQX51i" role="2wV5jI">
      <node concept="PMmxH" id="1dOf$WGW6dR" role="3EZMnx">
        <ref role="PMmxG" node="45hxFudhNQ$" resolve="Node_Switch" />
        <node concept="pkWqt" id="3UWDOwQX55I" role="pqm2j">
          <node concept="3clFbS" id="3UWDOwQX55J" role="2VODD2">
            <node concept="3clFbF" id="3UWDOwQX5mM" role="3cqZAp">
              <node concept="3fqX7Q" id="3UWDOwQYVMN" role="3clFbG">
                <node concept="2OqwBi" id="3UWDOwQYVMO" role="3fr31v">
                  <node concept="2OqwBi" id="3UWDOwQYVMP" role="2Oq$k0">
                    <node concept="pncrf" id="3UWDOwQYVMQ" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3UWDOwQYVMR" role="2OqNvi">
                      <ref role="3TsBF5" to="5j4j:6dP_abdQoiG" resolve="kind" />
                    </node>
                  </node>
                  <node concept="3t7uKx" id="3UWDOwQYVMS" role="2OqNvi">
                    <node concept="uoxfO" id="3UWDOwQYVMT" role="3t7uKA">
                      <ref role="uo_Cq" to="5j4j:1dOf$WH0KX6" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="3UWDOwQX53Z" role="3EZMnx">
        <ref role="PMmxG" node="6dP_abdU8FR" resolve="Node_CONCEPT_INSTANCE" />
        <node concept="pkWqt" id="3UWDOwQX7Pz" role="pqm2j">
          <node concept="3clFbS" id="3UWDOwQX7P$" role="2VODD2">
            <node concept="3clFbF" id="3UWDOwQX7V2" role="3cqZAp">
              <node concept="2OqwBi" id="3UWDOwQX8vT" role="3clFbG">
                <node concept="2OqwBi" id="3UWDOwQX8vU" role="2Oq$k0">
                  <node concept="pncrf" id="3UWDOwQX8vV" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3UWDOwQX8vW" role="2OqNvi">
                    <ref role="3TsBF5" to="5j4j:6dP_abdQoiG" resolve="kind" />
                  </node>
                </node>
                <node concept="3t7uKx" id="3UWDOwQX8vX" role="2OqNvi">
                  <node concept="uoxfO" id="3UWDOwQX8vY" role="3t7uKA">
                    <ref role="uo_Cq" to="5j4j:1dOf$WH0KX6" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="3UWDOwQX51j" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="25SygBrhI1O">
    <property role="TrG5h" value="Node_CLASSIFIER_TYPE" />
    <property role="3GE5qa" value="treeform.classifierType" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
    <node concept="3EZMnI" id="25SygBrhI1P" role="2wV5jI">
      <node concept="3F2HdR" id="25SygBrhI1Q" role="3EZMnx">
        <ref role="1NtTu8" to="5j4j:6$jH9oLnyAp" resolve="role" />
        <ref role="1ERwB7" node="3qvzBqW$CPb" resolve="Node_classifier_INSERT" />
        <node concept="l2Vlx" id="25SygBrhI1R" role="2czzBx" />
        <node concept="107P5z" id="25SygBrhI1S" role="12AuX0">
          <node concept="3clFbS" id="25SygBrhI1T" role="2VODD2">
            <node concept="3clFbF" id="3qvzBqW_lbT" role="3cqZAp">
              <node concept="2OqwBi" id="25SygBrhI1W" role="3clFbG">
                <node concept="3f7Wdw" id="25SygBrhI1X" role="2Oq$k0">
                  <ref role="3f7u_j" to="5j4j:25SygBrhNIm" />
                  <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                </node>
                <node concept="liA8E" id="25SygBrhI1Y" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="25SygBrhI1Z" role="37wK5m">
                    <node concept="1PxgMI" id="25SygBrhI20" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="12_Ws6" id="25SygBrhI21" role="1m5AlR" />
                      <node concept="chp4Y" id="6fXjIfxgndW" role="3oSUPX">
                        <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="25SygBrhI22" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="25SygBrhI27" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="25SygBrhI28" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no concept" />
        </node>
        <node concept="2w$q5c" id="25SygBrhI29" role="78xua">
          <node concept="2aJ2om" id="25SygBrhI2a" role="2w$qW5">
            <ref role="2$4xQ3" node="3qvzBqWBql5" resolve="CONCEPT_ROLE" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="3qvzBqWCZUJ" role="3EZMnx">
        <node concept="VPM3Z" id="3qvzBqWCZUL" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="3qvzBqWCZUO" role="2iSdaV" />
        <node concept="3F0ifn" id="25SygBrhI2r" role="3EZMnx">
          <property role="3F0ifm" value="&lt;" />
          <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
        </node>
        <node concept="3F2HdR" id="25SygBrhI2s" role="3EZMnx">
          <ref role="1NtTu8" to="5j4j:6$jH9oLnyAp" resolve="role" />
          <ref role="1ERwB7" node="3qvzBqW_MPf" resolve="Node_parameter_INSERT" />
          <node concept="l2Vlx" id="25SygBrhI2t" role="2czzBx" />
          <node concept="107P5z" id="25SygBrhI2u" role="12AuX0">
            <node concept="3clFbS" id="25SygBrhI2v" role="2VODD2">
              <node concept="3clFbF" id="3qvzBqW_yL6" role="3cqZAp">
                <node concept="2OqwBi" id="6MozwwzUpNf" role="3clFbG">
                  <node concept="3f7Wdw" id="6MozwwzUpNg" role="2Oq$k0">
                    <ref role="3f7u_j" to="5j4j:6MozwwzUqt8" />
                    <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                  </node>
                  <node concept="liA8E" id="6MozwwzUpNh" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="2OqwBi" id="6MozwwzUpNi" role="37wK5m">
                      <node concept="1PxgMI" id="6MozwwzUpNj" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="12_Ws6" id="6MozwwzUpNk" role="1m5AlR" />
                        <node concept="chp4Y" id="6fXjIfxgndX" role="3oSUPX">
                          <ref role="cht4Q" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="6MozwwzUpNl" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="ljvvj" id="25SygBrhI2W" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="25SygBrhI2X" role="2czzBI">
            <property role="3F0ifm" value="" />
            <property role="ilYzB" value=" " />
          </node>
          <node concept="2w$q5c" id="6MozwwzUrD5" role="78xua">
            <node concept="2aJ2om" id="6MozwwzUrD6" role="2w$qW5">
              <ref role="2$4xQ3" node="3qvzBqWBql6" resolve="PARAMETER_ROLE" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="25SygBrhI3E" role="3EZMnx">
          <property role="3F0ifm" value="&gt;" />
          <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
          <node concept="34QqEe" id="25SygBrhI3F" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="pkWqt" id="3qvzBqWD0cr" role="pqm2j">
          <node concept="3clFbS" id="3qvzBqWD0cs" role="2VODD2">
            <node concept="3clFbF" id="3qvzBqWD0n8" role="3cqZAp">
              <node concept="2OqwBi" id="3qvzBqWD1TE" role="3clFbG">
                <node concept="2OqwBi" id="3qvzBqWD0rg" role="2Oq$k0">
                  <node concept="pncrf" id="3qvzBqWD0n7" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3qvzBqWD0PQ" role="2OqNvi">
                    <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" resolve="role" />
                  </node>
                </node>
                <node concept="2HwmR7" id="3qvzBqWD4CU" role="2OqNvi">
                  <node concept="1bVj0M" id="3qvzBqWD4CW" role="23t8la">
                    <node concept="3clFbS" id="3qvzBqWD4CX" role="1bW5cS">
                      <node concept="3clFbF" id="3qvzBqWD4Vm" role="3cqZAp">
                        <node concept="2OqwBi" id="3qvzBqWD4Vn" role="3clFbG">
                          <node concept="3f7Wdw" id="3qvzBqWD4Vo" role="2Oq$k0">
                            <ref role="3f7u_j" to="5j4j:6MozwwzUqt8" />
                            <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                          </node>
                          <node concept="liA8E" id="3qvzBqWD4Vp" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                            <node concept="2OqwBi" id="3qvzBqWD4Vq" role="37wK5m">
                              <node concept="1PxgMI" id="3qvzBqWD4Vr" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="37vLTw" id="3qvzBqWD5Du" role="1m5AlR">
                                  <ref role="3cqZAo" node="3qvzBqWD4CY" resolve="it" />
                                </node>
                                <node concept="chp4Y" id="6fXjIfxgndL" role="3oSUPX">
                                  <ref role="cht4Q" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="3qvzBqWD6t4" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3qvzBqWD4CY" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="3qvzBqWD4CZ" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="25SygBrhI3G" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="25SygBrjB10">
    <property role="3GE5qa" value="treeform.classifierType" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
    <node concept="2aJ2om" id="25SygBrjB4q" role="CpUAK">
      <ref role="2$4xQ3" node="25SygBrhtsk" resolve="CLASSIFIER_TYPE" />
    </node>
    <node concept="3EZMnI" id="3UWDOwQWRaF" role="2wV5jI">
      <node concept="PMmxH" id="25SygBrjB5i" role="3EZMnx">
        <ref role="PMmxG" node="45hxFudhNQ$" resolve="Node_Switch" />
        <node concept="pkWqt" id="3UWDOwQWRhD" role="pqm2j">
          <node concept="3clFbS" id="3UWDOwQWRhE" role="2VODD2">
            <node concept="3clFbF" id="3UWDOwQWRtM" role="3cqZAp">
              <node concept="3fqX7Q" id="3UWDOwQYWOW" role="3clFbG">
                <node concept="2OqwBi" id="3UWDOwQYWOX" role="3fr31v">
                  <node concept="2OqwBi" id="3UWDOwQYWOY" role="2Oq$k0">
                    <node concept="pncrf" id="3UWDOwQYWOZ" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3UWDOwQYWP0" role="2OqNvi">
                      <ref role="3TsBF5" to="5j4j:6dP_abdQoiG" resolve="kind" />
                    </node>
                  </node>
                  <node concept="3t7uKx" id="3UWDOwQYWP1" role="2OqNvi">
                    <node concept="uoxfO" id="3UWDOwQYWP2" role="3t7uKA">
                      <ref role="uo_Cq" to="5j4j:1dOf$WH0KX6" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="3UWDOwQWRfU" role="3EZMnx">
        <ref role="PMmxG" node="25SygBrhI1O" resolve="Node_CLASSIFIER_TYPE" />
        <node concept="pkWqt" id="3UWDOwQX3ZK" role="pqm2j">
          <node concept="3clFbS" id="3UWDOwQX3ZL" role="2VODD2">
            <node concept="3clFbF" id="3UWDOwQX4aM" role="3cqZAp">
              <node concept="2OqwBi" id="3UWDOwQX4mI" role="3clFbG">
                <node concept="2OqwBi" id="3UWDOwQX4mJ" role="2Oq$k0">
                  <node concept="pncrf" id="3UWDOwQX4mK" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3UWDOwQX4mL" role="2OqNvi">
                    <ref role="3TsBF5" to="5j4j:6dP_abdQoiG" resolve="kind" />
                  </node>
                </node>
                <node concept="3t7uKx" id="3UWDOwQX4mM" role="2OqNvi">
                  <node concept="uoxfO" id="3UWDOwQX4mN" role="3t7uKA">
                    <ref role="uo_Cq" to="5j4j:1dOf$WH0KX6" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="3UWDOwQWRaG" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="45hxFudhNQ$">
    <property role="TrG5h" value="Node_Switch" />
    <property role="3GE5qa" value="treeform" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
    <node concept="3EZMnI" id="6dP_abdQX9j" role="2wV5jI">
      <node concept="3EZMnI" id="6dP_abdRnko" role="3EZMnx">
        <node concept="VPM3Z" id="6dP_abdRnkq" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="PMmxH" id="6dP_abdRfVH" role="3EZMnx">
          <ref role="PMmxG" node="6dP_abdRe7A" resolve="Node_GENERIC" />
        </node>
        <node concept="l2Vlx" id="6dP_abdRnkt" role="2iSdaV" />
        <node concept="pkWqt" id="6dP_abdRBsF" role="pqm2j">
          <node concept="3clFbS" id="6dP_abdRBsG" role="2VODD2">
            <node concept="3clFbF" id="1dOf$WH1Eui" role="3cqZAp">
              <node concept="22lmx$" id="3UWDOwQYJs0" role="3clFbG">
                <node concept="2OqwBi" id="1dOf$WH1FdG" role="3uHU7B">
                  <node concept="2OqwBi" id="1dOf$WH1Ezk" role="2Oq$k0">
                    <node concept="pncrf" id="1dOf$WH1Eug" role="2Oq$k0" />
                    <node concept="3TrcHB" id="1dOf$WH1ETK" role="2OqNvi">
                      <ref role="3TsBF5" to="5j4j:6dP_abdQoiG" resolve="kind" />
                    </node>
                  </node>
                  <node concept="3t7uKx" id="1dOf$WH1GpQ" role="2OqNvi">
                    <node concept="uoxfO" id="1dOf$WH1GpS" role="3t7uKA">
                      <ref role="uo_Cq" to="5j4j:45hxFudjYuy" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3UWDOwQYJEB" role="3uHU7w">
                  <node concept="2OqwBi" id="3UWDOwQYJEC" role="2Oq$k0">
                    <node concept="pncrf" id="3UWDOwQYJED" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3UWDOwQYJEE" role="2OqNvi">
                      <ref role="3TsBF5" to="5j4j:6dP_abdQoiG" resolve="kind" />
                    </node>
                  </node>
                  <node concept="3t7uKx" id="3UWDOwQYJEF" role="2OqNvi">
                    <node concept="uoxfO" id="3UWDOwQYJEG" role="3t7uKA">
                      <ref role="uo_Cq" to="5j4j:1dOf$WH0KX6" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2w$q5c" id="6dP_abdRFFX" role="2whIAn">
          <node concept="2aJ2om" id="6dP_abdRFUa" role="2w$qW5">
            <ref role="2$4xQ3" node="6dP_abdFyt9" resolve="GENERIC" />
          </node>
        </node>
        <node concept="2w$q5c" id="6dP_abdU5Vi" role="2whJh7">
          <node concept="2aJ2om" id="6dP_abdU5Vj" role="2w$qW5">
            <ref role="2$4xQ3" node="6dP_abdTZPC" resolve="CONCEPT_INSTANCE" />
          </node>
          <node concept="2aJ2om" id="25SygBrhG$w" role="2w$qW5">
            <ref role="2$4xQ3" node="25SygBrhtsk" resolve="CLASSIFIER_TYPE" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="6dP_abdTV70" role="3EZMnx">
        <node concept="VPM3Z" id="6dP_abdTV72" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="PMmxH" id="6dP_abdTV73" role="3EZMnx">
          <ref role="PMmxG" node="6dP_abdU8FR" resolve="Node_CONCEPT_INSTANCE" />
        </node>
        <node concept="l2Vlx" id="6dP_abdTV74" role="2iSdaV" />
        <node concept="pkWqt" id="6dP_abdTV75" role="pqm2j">
          <node concept="3clFbS" id="6dP_abdTV76" role="2VODD2">
            <node concept="3clFbF" id="1dOf$WH1TjG" role="3cqZAp">
              <node concept="2OqwBi" id="1dOf$WH1TjH" role="3clFbG">
                <node concept="2OqwBi" id="1dOf$WH1TjI" role="2Oq$k0">
                  <node concept="pncrf" id="1dOf$WH1TjJ" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1dOf$WH1TjK" role="2OqNvi">
                    <ref role="3TsBF5" to="5j4j:6dP_abdQoiG" resolve="kind" />
                  </node>
                </node>
                <node concept="3t7uKx" id="1dOf$WH1TjL" role="2OqNvi">
                  <node concept="uoxfO" id="1dOf$WH1TjM" role="3t7uKA">
                    <ref role="uo_Cq" to="5j4j:6dP_abdTU2g" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2w$q5c" id="6dP_abdTV7e" role="2whIAn">
          <node concept="2aJ2om" id="6dP_abdU0fs" role="2w$qW5">
            <ref role="2$4xQ3" node="6dP_abdTZPC" resolve="CONCEPT_INSTANCE" />
          </node>
        </node>
        <node concept="2w$q5c" id="6dP_abdTVJN" role="2whJh7">
          <node concept="2aJ2om" id="6dP_abdTYci" role="2w$qW5">
            <ref role="2$4xQ3" node="6dP_abdFyt9" resolve="GENERIC" />
          </node>
          <node concept="2aJ2om" id="25SygBrhGC0" role="2w$qW5">
            <ref role="2$4xQ3" node="25SygBrhtsk" resolve="CLASSIFIER_TYPE" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="25SygBrhzjG" role="3EZMnx">
        <node concept="VPM3Z" id="25SygBrhzjI" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="PMmxH" id="25SygBrhzjJ" role="3EZMnx">
          <ref role="PMmxG" node="25SygBrhI1O" resolve="Node_CLASSIFIER_TYPE" />
        </node>
        <node concept="l2Vlx" id="25SygBrhzjK" role="2iSdaV" />
        <node concept="pkWqt" id="25SygBrhzjL" role="pqm2j">
          <node concept="3clFbS" id="25SygBrhzjM" role="2VODD2">
            <node concept="3clFbF" id="25SygBrhzjN" role="3cqZAp">
              <node concept="2OqwBi" id="25SygBrhzjO" role="3clFbG">
                <node concept="2OqwBi" id="25SygBrhzjP" role="2Oq$k0">
                  <node concept="pncrf" id="25SygBrhzjQ" role="2Oq$k0" />
                  <node concept="3TrcHB" id="25SygBrhzjR" role="2OqNvi">
                    <ref role="3TsBF5" to="5j4j:6dP_abdQoiG" resolve="kind" />
                  </node>
                </node>
                <node concept="3t7uKx" id="25SygBrhzjS" role="2OqNvi">
                  <node concept="uoxfO" id="25SygBrhzjT" role="3t7uKA">
                    <ref role="uo_Cq" to="5j4j:6dP_abdQo2a" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2w$q5c" id="25SygBrhzjU" role="2whIAn">
          <node concept="2aJ2om" id="25SygBrhGEB" role="2w$qW5">
            <ref role="2$4xQ3" node="25SygBrhtsk" resolve="CLASSIFIER_TYPE" />
          </node>
        </node>
        <node concept="2w$q5c" id="25SygBrhzjW" role="2whJh7">
          <node concept="2aJ2om" id="25SygBrhzjX" role="2w$qW5">
            <ref role="2$4xQ3" node="6dP_abdFyt9" resolve="GENERIC" />
          </node>
          <node concept="2aJ2om" id="25SygBrhGGl" role="2w$qW5">
            <ref role="2$4xQ3" node="6dP_abdTZPC" resolve="CONCEPT_INSTANCE" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="6dP_abdQX9m" role="2iSdaV" />
      <node concept="2w$q5c" id="6dP_abdRg7C" role="2whIAn">
        <node concept="2aJ2om" id="6dP_abdRg8w" role="2w$qW5">
          <ref role="2$4xQ3" node="6dP_abdFyt9" resolve="GENERIC" />
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="6MozwwzWhZX">
    <property role="TrG5h" value="ChildRole_PARAMETER_ROLE" />
    <property role="3GE5qa" value="role.child" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
    <node concept="3EZMnI" id="6MozwwzXWQc" role="2wV5jI">
      <node concept="3EZMnI" id="6MozwwzW__h" role="3EZMnx">
        <node concept="3F2HdR" id="6MozwwzXL5O" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="5j4j:6$jH9oLmYFB" resolve="contents" />
          <node concept="l2Vlx" id="6MozwwzXL5P" role="2czzBx" />
          <node concept="3F0ifn" id="3qvzBqWAg$M" role="2czzBI">
            <property role="3F0ifm" value="" />
            <property role="ilYzB" value="no parameters" />
          </node>
        </node>
        <node concept="l2Vlx" id="6MozwwzW__k" role="2iSdaV" />
      </node>
      <node concept="l2Vlx" id="6MozwwzXWQf" role="2iSdaV" />
      <node concept="2w$q5c" id="6MozwwzXWWt" role="2whJh7">
        <node concept="2aJ2om" id="6MozwwzXWWu" role="2w$qW5">
          <ref role="2$4xQ3" node="3qvzBqWBql6" resolve="PARAMETER_ROLE" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="JY9mryTii6">
    <property role="3GE5qa" value="role.child" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
    <node concept="PMmxH" id="JY9mryTs3X" role="2wV5jI">
      <ref role="PMmxG" node="6MozwwzWhZX" resolve="ChildRole_PARAMETER_ROLE" />
    </node>
    <node concept="2aJ2om" id="JY9mryTs35" role="CpUAK">
      <ref role="2$4xQ3" node="3qvzBqWBql6" resolve="PARAMETER_ROLE" />
    </node>
  </node>
  <node concept="1h_SRR" id="38jpnomVCZ5">
    <property role="TrG5h" value="ValueRole_INSERT" />
    <property role="3GE5qa" value="role.value" />
    <ref role="1h_SK9" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
    <node concept="1hA7zw" id="38jpnomVDlF" role="1h_SK8">
      <property role="1hAc7j" value="insert_action_id" />
      <node concept="1hAIg9" id="38jpnomVDlG" role="1hA7z_">
        <node concept="3clFbS" id="38jpnomVDlH" role="2VODD2">
          <node concept="3clFbJ" id="38jpnomVIW2" role="3cqZAp">
            <node concept="3clFbS" id="38jpnomVIW3" role="3clFbx">
              <node concept="3clFbF" id="38jpnomVMwk" role="3cqZAp">
                <node concept="2OqwBi" id="38jpnomVNxW" role="3clFbG">
                  <node concept="2OqwBi" id="38jpnomVMy8" role="2Oq$k0">
                    <node concept="0IXxy" id="38jpnomVMwj" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="38jpnomVMTC" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLmYL8" resolve="contents" />
                    </node>
                  </node>
                  <node concept="2DeJg1" id="38jpnomVPIA" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="38jpnomVKg8" role="3clFbw">
              <node concept="2OqwBi" id="38jpnomVIYC" role="2Oq$k0">
                <node concept="0IXxy" id="38jpnomVIWk" role="2Oq$k0" />
                <node concept="3Tsc0h" id="38jpnomVJmc" role="2OqNvi">
                  <ref role="3TtcxE" to="5j4j:6$jH9oLmYL8" resolve="contents" />
                </node>
              </node>
              <node concept="1v1jN8" id="38jpnomVMum" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="38jpnomVDmb" role="1h_SK8">
      <property role="1hAc7j" value="insert_before_action_id" />
      <node concept="1hAIg9" id="38jpnomVDmf" role="1hA7z_">
        <node concept="3clFbS" id="38jpnomVDmj" role="2VODD2">
          <node concept="3SKdUt" id="38jpnomW2UU" role="3cqZAp">
            <node concept="3SKdUq" id="38jpnomW2UW" role="3SKWNk">
              <property role="3SKdUp" value="do nothing" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="38jpnomWVAh">
    <property role="3GE5qa" value="treeform.conceptInstance" />
    <property role="TrG5h" value="Node_concept_INSERT" />
    <ref role="1h_SK9" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
    <node concept="1hA7zw" id="38jpnomWVAi" role="1h_SK8">
      <property role="1hAc7j" value="insert_action_id" />
      <node concept="1hAIg9" id="38jpnomWVAj" role="1hA7z_">
        <node concept="3clFbS" id="38jpnomWVAk" role="2VODD2">
          <node concept="3clFbJ" id="38jpnomWVA_" role="3cqZAp">
            <node concept="3clFbS" id="38jpnomWVAA" role="3clFbx">
              <node concept="3clFbF" id="38jpnomX3tA" role="3cqZAp">
                <node concept="2OqwBi" id="38jpnomX4ot" role="3clFbG">
                  <node concept="2OqwBi" id="38jpnomX3uI" role="2Oq$k0">
                    <node concept="0IXxy" id="38jpnomX3t_" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="38jpnomX3Ja" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" resolve="role" />
                    </node>
                  </node>
                  <node concept="TSZUe" id="38jpnomX6Xr" role="2OqNvi">
                    <node concept="2pJPEk" id="38jpnomX79W" role="25WWJ7">
                      <node concept="2pJPED" id="38jpnomX7nk" role="2pJPEn">
                        <ref role="2pJxaS" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                        <node concept="2pJxcG" id="38jpnomX8hb" role="2pJxcM">
                          <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                          <node concept="3f7Wdw" id="38jpnomX8pj" role="2pJxcZ">
                            <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                            <ref role="3f7u_j" to="5j4j:6dP_abdUiHP" />
                          </node>
                        </node>
                        <node concept="2pIpSj" id="38jpnomX7$V" role="2pJxcM">
                          <ref role="2pIpSl" to="5j4j:6$jH9oLmYL8" resolve="contents" />
                          <node concept="36be1Y" id="38jpnomX7Sd" role="2pJxcZ">
                            <node concept="2pJPED" id="38jpnomX7Ty" role="36be1Z">
                              <ref role="2pJxaS" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="38jpnomX3j_" role="3clFbw">
              <node concept="2OqwBi" id="38jpnomX3jA" role="3fr31v">
                <node concept="2OqwBi" id="38jpnomX3jB" role="2Oq$k0">
                  <node concept="0IXxy" id="38jpnomX3jC" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="38jpnomX3jD" role="2OqNvi">
                    <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" resolve="role" />
                  </node>
                </node>
                <node concept="2HwmR7" id="38jpnomX3jE" role="2OqNvi">
                  <node concept="1bVj0M" id="38jpnomX3jF" role="23t8la">
                    <node concept="3clFbS" id="38jpnomX3jG" role="1bW5cS">
                      <node concept="3clFbF" id="38jpnomX3jH" role="3cqZAp">
                        <node concept="2OqwBi" id="38jpnomX3jI" role="3clFbG">
                          <node concept="3f7Wdw" id="38jpnomX3jJ" role="2Oq$k0">
                            <ref role="3f7u_j" to="5j4j:6dP_abdUiHP" />
                            <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                          </node>
                          <node concept="liA8E" id="38jpnomX3jK" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                            <node concept="2OqwBi" id="38jpnomX3jL" role="37wK5m">
                              <node concept="1PxgMI" id="38jpnomX3jM" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="37vLTw" id="38jpnomX3jN" role="1m5AlR">
                                  <ref role="3cqZAo" node="38jpnomX3jP" resolve="it" />
                                </node>
                                <node concept="chp4Y" id="6fXjIfxgndY" role="3oSUPX">
                                  <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="38jpnomX3jO" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="38jpnomX3jP" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="38jpnomX3jQ" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="38jpnomWVAo" role="1h_SK8">
      <property role="1hAc7j" value="insert_before_action_id" />
      <node concept="1hAIg9" id="38jpnomWVAp" role="1hA7z_">
        <node concept="3clFbS" id="38jpnomWVAq" role="2VODD2">
          <node concept="3SKdUt" id="38jpnomWVAx" role="3cqZAp">
            <node concept="3SKdUq" id="38jpnomWVAz" role="3SKWNk">
              <property role="3SKdUp" value="do nothing" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="3qvzBqW$CPb">
    <property role="3GE5qa" value="treeform.classifierType" />
    <property role="TrG5h" value="Node_classifier_INSERT" />
    <ref role="1h_SK9" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
    <node concept="1hA7zw" id="3qvzBqW$CPi" role="1h_SK8">
      <property role="1hAc7j" value="insert_action_id" />
      <node concept="1hAIg9" id="3qvzBqW$CPj" role="1hA7z_">
        <node concept="3clFbS" id="3qvzBqW$CPk" role="2VODD2">
          <node concept="3clFbJ" id="3qvzBqW$Fvo" role="3cqZAp">
            <node concept="3clFbS" id="3qvzBqW$Fvp" role="3clFbx">
              <node concept="3clFbF" id="3qvzBqW$Fvq" role="3cqZAp">
                <node concept="2OqwBi" id="3qvzBqW$Fvr" role="3clFbG">
                  <node concept="2OqwBi" id="3qvzBqW$Fvs" role="2Oq$k0">
                    <node concept="0IXxy" id="3qvzBqW$Fvt" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="3qvzBqW$Fvu" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" resolve="role" />
                    </node>
                  </node>
                  <node concept="TSZUe" id="3qvzBqW$Fvv" role="2OqNvi">
                    <node concept="2pJPEk" id="3qvzBqW$Fvw" role="25WWJ7">
                      <node concept="2pJPED" id="3qvzBqW$Fvx" role="2pJPEn">
                        <ref role="2pJxaS" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                        <node concept="2pJxcG" id="3qvzBqW$Fvy" role="2pJxcM">
                          <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                          <node concept="3f7Wdw" id="3qvzBqW$Fvz" role="2pJxcZ">
                            <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                            <ref role="3f7u_j" to="5j4j:25SygBrhNIm" />
                          </node>
                        </node>
                        <node concept="2pIpSj" id="3qvzBqW$Fv$" role="2pJxcM">
                          <ref role="2pIpSl" to="5j4j:6$jH9oLmYL8" resolve="contents" />
                          <node concept="36be1Y" id="3qvzBqW$Fv_" role="2pJxcZ">
                            <node concept="2pJPED" id="3qvzBqW$FvA" role="36be1Z">
                              <ref role="2pJxaS" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="3qvzBqW$FvB" role="3clFbw">
              <node concept="2OqwBi" id="3qvzBqW$FvC" role="3fr31v">
                <node concept="2OqwBi" id="3qvzBqW$FvD" role="2Oq$k0">
                  <node concept="0IXxy" id="3qvzBqW$FvE" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3qvzBqW$FvF" role="2OqNvi">
                    <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" resolve="role" />
                  </node>
                </node>
                <node concept="2HwmR7" id="3qvzBqW$FvG" role="2OqNvi">
                  <node concept="1bVj0M" id="3qvzBqW$FvH" role="23t8la">
                    <node concept="3clFbS" id="3qvzBqW$FvI" role="1bW5cS">
                      <node concept="3clFbF" id="3qvzBqW$FvJ" role="3cqZAp">
                        <node concept="2OqwBi" id="3qvzBqW$FvK" role="3clFbG">
                          <node concept="3f7Wdw" id="3qvzBqW$FvL" role="2Oq$k0">
                            <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                            <ref role="3f7u_j" to="5j4j:25SygBrhNIm" />
                          </node>
                          <node concept="liA8E" id="3qvzBqW$FvM" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                            <node concept="2OqwBi" id="3qvzBqW$FvN" role="37wK5m">
                              <node concept="1PxgMI" id="3qvzBqW$FvO" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="37vLTw" id="3qvzBqW$FvP" role="1m5AlR">
                                  <ref role="3cqZAo" node="3qvzBqW$FvR" resolve="it" />
                                </node>
                                <node concept="chp4Y" id="6fXjIfxgndZ" role="3oSUPX">
                                  <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="3qvzBqW$FvQ" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3qvzBqW$FvR" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="3qvzBqW$FvS" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="3qvzBqW$CPo" role="1h_SK8">
      <property role="1hAc7j" value="insert_before_action_id" />
      <node concept="1hAIg9" id="3qvzBqW$CPp" role="1hA7z_">
        <node concept="3clFbS" id="3qvzBqW$CPq" role="2VODD2">
          <node concept="3SKdUt" id="3qvzBqW$CPx" role="3cqZAp">
            <node concept="3SKdUq" id="3qvzBqW$CPz" role="3SKWNk">
              <property role="3SKdUp" value="do nothing" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="3qvzBqW_MPf">
    <property role="3GE5qa" value="treeform.classifierType" />
    <property role="TrG5h" value="Node_parameter_INSERT" />
    <ref role="1h_SK9" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
    <node concept="1hA7zw" id="3qvzBqW_MPg" role="1h_SK8">
      <property role="1hAc7j" value="insert_action_id" />
      <node concept="1hAIg9" id="3qvzBqW_MPh" role="1hA7z_">
        <node concept="3clFbS" id="3qvzBqW_MPi" role="2VODD2">
          <node concept="3clFbJ" id="3qvzBqW_MPj" role="3cqZAp">
            <node concept="3clFbS" id="3qvzBqW_MPk" role="3clFbx">
              <node concept="3cpWs8" id="3t7_2Fgv3Xw" role="3cqZAp">
                <node concept="3cpWsn" id="3t7_2Fgv3Xx" role="3cpWs9">
                  <property role="TrG5h" value="cr" />
                  <node concept="3Tqbb2" id="3t7_2Fgv3Xv" role="1tU5fm">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                  </node>
                  <node concept="2pJPEk" id="3t7_2Fgv3Xy" role="33vP2m">
                    <node concept="2pJPED" id="3t7_2Fgv3Xz" role="2pJPEn">
                      <ref role="2pJxaS" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                      <node concept="2pJxcG" id="3t7_2Fgv3X$" role="2pJxcM">
                        <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                        <node concept="3f7Wdw" id="3t7_2Fgv3X_" role="2pJxcZ">
                          <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                          <ref role="3f7u_j" to="5j4j:6MozwwzUqt8" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3qvzBqW_MPl" role="3cqZAp">
                <node concept="2OqwBi" id="3qvzBqW_MPm" role="3clFbG">
                  <node concept="2OqwBi" id="3qvzBqW_MPn" role="2Oq$k0">
                    <node concept="0IXxy" id="3qvzBqW_MPo" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="3qvzBqW_MPp" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" resolve="role" />
                    </node>
                  </node>
                  <node concept="TSZUe" id="3qvzBqW_MPq" role="2OqNvi">
                    <node concept="37vLTw" id="3t7_2Fgv3XA" role="25WWJ7">
                      <ref role="3cqZAo" node="3t7_2Fgv3Xx" resolve="cr" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3t7_2Fgv4kl" role="3cqZAp">
                <node concept="2OqwBi" id="3t7_2Fgv5pF" role="3clFbG">
                  <node concept="2OqwBi" id="3t7_2Fgv4t8" role="2Oq$k0">
                    <node concept="37vLTw" id="3t7_2Fgv4kj" role="2Oq$k0">
                      <ref role="3cqZAo" node="3t7_2Fgv3Xx" resolve="cr" />
                    </node>
                    <node concept="3Tsc0h" id="3t7_2Fgv4D0" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLmYFB" resolve="contents" />
                    </node>
                  </node>
                  <node concept="2DeJg1" id="3t7_2Fgv99t" role="2OqNvi">
                    <ref role="1A0vxQ" to="5j4j:1OShD0HAY6y" resolve="List" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="3qvzBqW_MPy" role="3clFbw">
              <node concept="2OqwBi" id="3qvzBqW_MPz" role="3fr31v">
                <node concept="2OqwBi" id="3qvzBqW_MP$" role="2Oq$k0">
                  <node concept="0IXxy" id="3qvzBqW_MP_" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3qvzBqW_MPA" role="2OqNvi">
                    <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" resolve="role" />
                  </node>
                </node>
                <node concept="2HwmR7" id="3qvzBqW_MPB" role="2OqNvi">
                  <node concept="1bVj0M" id="3qvzBqW_MPC" role="23t8la">
                    <node concept="3clFbS" id="3qvzBqW_MPD" role="1bW5cS">
                      <node concept="3clFbF" id="3qvzBqW_MPE" role="3cqZAp">
                        <node concept="2OqwBi" id="3qvzBqW_MPF" role="3clFbG">
                          <node concept="3f7Wdw" id="3qvzBqW_MPG" role="2Oq$k0">
                            <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                            <ref role="3f7u_j" to="5j4j:6MozwwzUqt8" />
                          </node>
                          <node concept="liA8E" id="3qvzBqW_MPH" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                            <node concept="2OqwBi" id="3qvzBqW_MPI" role="37wK5m">
                              <node concept="1PxgMI" id="3qvzBqW_MPJ" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="37vLTw" id="3qvzBqW_MPK" role="1m5AlR">
                                  <ref role="3cqZAo" node="3qvzBqW_MPM" resolve="it" />
                                </node>
                                <node concept="chp4Y" id="6fXjIfxgne0" role="3oSUPX">
                                  <ref role="cht4Q" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="3qvzBqW_MPL" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3qvzBqW_MPM" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="3qvzBqW_MPN" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="3qvzBqW_MPO" role="1h_SK8">
      <property role="1hAc7j" value="insert_before_action_id" />
      <node concept="1hAIg9" id="3qvzBqW_MPP" role="1hA7z_">
        <node concept="3clFbS" id="3qvzBqW_MPQ" role="2VODD2">
          <node concept="3SKdUt" id="3qvzBqW_MPR" role="3cqZAp">
            <node concept="3SKdUq" id="3qvzBqW_MPS" role="3SKWNk">
              <property role="3SKdUp" value="do nothing" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="3qvzBqWFBjP">
    <property role="3GE5qa" value="treeform" />
    <property role="TrG5h" value="ValueHolder_DELETE" />
    <ref role="1h_SK9" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
    <node concept="1hA7zw" id="3qvzBqWEI5t" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="3qvzBqWEI5u" role="1hA7z_">
        <node concept="3clFbS" id="3qvzBqWEI5v" role="2VODD2">
          <node concept="3clFbJ" id="35Lj3TimztR" role="3cqZAp">
            <node concept="3clFbS" id="35Lj3TimztU" role="3clFbx">
              <node concept="3clFbF" id="35Lj3TimzDA" role="3cqZAp">
                <node concept="2OqwBi" id="35Lj3Tim$h8" role="3clFbG">
                  <node concept="1PxgMI" id="35Lj3Tim$b7" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="2OqwBi" id="35Lj3TimzW2" role="1m5AlR">
                      <node concept="2OqwBi" id="35Lj3TimzEI" role="2Oq$k0">
                        <node concept="0IXxy" id="35Lj3TimzD_" role="2Oq$k0" />
                        <node concept="1mfA1w" id="35Lj3TimzNb" role="2OqNvi" />
                      </node>
                      <node concept="1mfA1w" id="35Lj3Tim$37" role="2OqNvi" />
                    </node>
                    <node concept="chp4Y" id="6fXjIfxgndO" role="3oSUPX">
                      <ref role="cht4Q" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
                    </node>
                  </node>
                  <node concept="3YRAZt" id="35Lj3Tim$ss" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="35Lj3Timzyy" role="3clFbw">
              <node concept="3f7Wdw" id="35Lj3Timzyz" role="2Oq$k0">
                <ref role="3f7u_j" to="5j4j:25SygBrhNIm" />
                <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
              </node>
              <node concept="liA8E" id="35Lj3Timzy$" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="2OqwBi" id="35Lj3Timzy_" role="37wK5m">
                  <node concept="1PxgMI" id="35Lj3TimzyA" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="2OqwBi" id="35Lj3TimzyB" role="1m5AlR">
                      <node concept="0IXxy" id="35Lj3TimzyC" role="2Oq$k0" />
                      <node concept="1mfA1w" id="35Lj3TimzyD" role="2OqNvi" />
                    </node>
                    <node concept="chp4Y" id="6fXjIfxgndV" role="3oSUPX">
                      <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="35Lj3TimzyE" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="35Lj3Tikkz8" role="1h_SK8">
      <property role="1hAc7j" value="backspace_action_id" />
      <node concept="1hAIg9" id="35Lj3Tikkz9" role="1hA7z_">
        <node concept="3clFbS" id="35Lj3Tikkza" role="2VODD2">
          <node concept="3clFbJ" id="35Lj3TimM_y" role="3cqZAp">
            <node concept="3clFbS" id="35Lj3TimM_z" role="3clFbx">
              <node concept="3clFbF" id="35Lj3TimM_$" role="3cqZAp">
                <node concept="2OqwBi" id="35Lj3TimM__" role="3clFbG">
                  <node concept="1PxgMI" id="35Lj3TimM_A" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="2OqwBi" id="35Lj3TimM_B" role="1m5AlR">
                      <node concept="2OqwBi" id="35Lj3TimM_C" role="2Oq$k0">
                        <node concept="0IXxy" id="35Lj3TimM_D" role="2Oq$k0" />
                        <node concept="1mfA1w" id="35Lj3TimM_E" role="2OqNvi" />
                      </node>
                      <node concept="1mfA1w" id="35Lj3TimM_F" role="2OqNvi" />
                    </node>
                    <node concept="chp4Y" id="6fXjIfxgne1" role="3oSUPX">
                      <ref role="cht4Q" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
                    </node>
                  </node>
                  <node concept="3YRAZt" id="35Lj3TimM_G" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="35Lj3TimM_H" role="3clFbw">
              <node concept="3f7Wdw" id="35Lj3TimM_I" role="2Oq$k0">
                <ref role="3f7u_j" to="5j4j:25SygBrhNIm" />
                <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
              </node>
              <node concept="liA8E" id="35Lj3TimM_J" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="2OqwBi" id="35Lj3TimM_K" role="37wK5m">
                  <node concept="1PxgMI" id="35Lj3TimM_L" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="2OqwBi" id="35Lj3TimM_M" role="1m5AlR">
                      <node concept="0IXxy" id="35Lj3TimM_N" role="2Oq$k0" />
                      <node concept="1mfA1w" id="35Lj3TimM_O" role="2OqNvi" />
                    </node>
                    <node concept="chp4Y" id="6fXjIfxgndP" role="3oSUPX">
                      <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="35Lj3TimM_P" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2q_78a8W4FU">
    <property role="3GE5qa" value="treeform" />
    <ref role="1XX52x" to="5j4j:2q_78a8W4yS" resolve="Wildcard" />
    <node concept="3EZMnI" id="2q_78a9c7Qy" role="2wV5jI">
      <node concept="3F0ifn" id="2q_78a9c7Sl" role="3EZMnx">
        <property role="3F0ifm" value="_" />
        <ref role="1k5W1q" to="tpen:hFD0yD_" resolve="VariableName" />
      </node>
      <node concept="l2Vlx" id="2q_78a9c7Q_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7E86$tKsqua">
    <property role="3GE5qa" value="logical" />
    <ref role="1XX52x" to="5j4j:7E86$tKskWj" resolve="LogicalValue" />
    <node concept="3EZMnI" id="6p0DfM0hL7k" role="2wV5jI">
      <node concept="3EZMnI" id="6p0DfM0hLg3" role="3EZMnx">
        <ref role="1k5W1q" node="7ksQUDZuyMD" resolve="Backquote" />
        <node concept="VPM3Z" id="6p0DfM0hLg4" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3vyZuw" id="6p0DfM0hLg7" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="1Bsynf" id="6p0DfM0hLga" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="1Bt7hp" id="6p0DfM0hLgb" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="6p0DfM0hLgc" role="3EZMnx">
          <property role="3F0ifm" value="`" />
          <node concept="VPM3Z" id="6p0DfM0oSne" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="11LMrY" id="7ksQUDZvzEx" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="6p0DfM0hLgd" role="3EZMnx">
          <ref role="1NtTu8" to="5j4j:7E86$tKsqnr" resolve="code" />
          <node concept="11L4FC" id="7ksQUDZvFEO" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="11LMrY" id="7ksQUDZvFHv" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0ifn" id="6p0DfM0hLge" role="3EZMnx">
          <property role="3F0ifm" value="`" />
          <node concept="VPM3Z" id="6p0DfM0oSd3" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="11L4FC" id="7ksQUDZvzGl" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="6p0DfM0hLgf" role="2iSdaV" />
      </node>
      <node concept="l2Vlx" id="6p0DfM0hL7n" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7E86$tKt5HF">
    <property role="3GE5qa" value="logical" />
    <ref role="1XX52x" to="5j4j:7E86$tKt5sV" resolve="ExpressionLogicalVariable" />
    <node concept="3EZMnI" id="7E86$tKt68D" role="2wV5jI">
      <node concept="3F0ifn" id="6Ng87FPWMwT" role="3EZMnx">
        <property role="3F0ifm" value="$" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="11LMrY" id="6Ng87FPWMAV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7E86$tKt6my" role="3EZMnx">
        <ref role="1NtTu8" to="5j4j:7E86$tKt5BI" resolve="expression" />
      </node>
      <node concept="l2Vlx" id="7E86$tKt68G" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7E86$tKtiJM">
    <property role="3GE5qa" value="logical" />
    <ref role="1XX52x" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
    <node concept="3EZMnI" id="2E5lcNn2Yfo" role="2wV5jI">
      <node concept="l2Vlx" id="2E5lcNn2Yfr" role="2iSdaV" />
      <node concept="3F0A7n" id="2E5lcNn2YOJ" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="1iWwVK2B1it" resolve="Logical" />
      </node>
      <node concept="3EZMnI" id="2E5lcNndMdC" role="3EZMnx">
        <node concept="VPM3Z" id="2E5lcNndMdD" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="2E5lcNndMdE" role="2iSdaV" />
        <node concept="3F0ifn" id="7ksQUDZtxa1" role="3EZMnx">
          <property role="3F0ifm" value="[" />
          <ref role="1k5W1q" to="tpen:hXb$RYA" resolve="LeftBracket" />
          <node concept="Vb9p2" id="4bWqD4CqpeC" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
          <node concept="11L4FC" id="7ksQUDZu3Mf" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="2E5lcNndMdI" role="3EZMnx">
          <ref role="1NtTu8" to="5j4j:7E86$tKtioV" resolve="cardinality" />
          <node concept="2w$q5c" id="4bWqD4CreQV" role="3xwHhi">
            <node concept="2aJ2om" id="4bWqD4CreQW" role="2w$qW5">
              <ref role="2$4xQ3" node="4bWqD4CreCD" resolve="EXPRESSION" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="7ksQUDZtxmJ" role="3EZMnx">
          <property role="3F0ifm" value="]" />
          <ref role="1k5W1q" to="tpen:hXb$V4T" resolve="RightBracket" />
          <node concept="Vb9p2" id="4bWqD4CqpeG" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
        </node>
        <node concept="pkWqt" id="2E5lcNndN30" role="pqm2j">
          <node concept="3clFbS" id="2E5lcNndN31" role="2VODD2">
            <node concept="3clFbF" id="2E5lcNndNe5" role="3cqZAp">
              <node concept="2OqwBi" id="30XHGaOG64W" role="3clFbG">
                <node concept="2OqwBi" id="2E5lcNndNiC" role="2Oq$k0">
                  <node concept="pncrf" id="2E5lcNndNe4" role="2Oq$k0" />
                  <node concept="Bykcj" id="30XHGaOG64T" role="2OqNvi">
                    <node concept="1aIX9F" id="30XHGaOG64U" role="1xVPHs">
                      <node concept="26LbJo" id="30XHGaOG64V" role="1aIX9E">
                        <ref role="26LbJp" to="5j4j:7E86$tKtioV" resolve="cardinality" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="30XHGaOG64X" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7E86$tK_Puj">
    <property role="3GE5qa" value="logical" />
    <ref role="1XX52x" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
    <node concept="3EZMnI" id="6p0DfM0eyCR" role="2wV5jI">
      <node concept="1iCGBv" id="2E5lcNn53QK" role="3EZMnx">
        <ref role="1NtTu8" to="5j4j:7E86$tK_PaH" resolve="declaration" />
        <node concept="1sVBvm" id="2E5lcNn53QM" role="1sWHZn">
          <node concept="3F0A7n" id="2E5lcNn54qR" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" node="1iWwVK2B1it" resolve="Logical" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="6p0DfM0nJrG" role="3EZMnx">
        <node concept="VPM3Z" id="6p0DfM0nJrI" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="4bWqD4CsaJm" role="3EZMnx">
          <property role="3F0ifm" value="#" />
          <node concept="11L4FC" id="4bWqD4CsaUs" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="4bWqD4CsaUx" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="4bWqD4CsaUD" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
        </node>
        <node concept="3F1sOY" id="6p0DfM0nLOu" role="3EZMnx">
          <ref role="1k5W1q" node="7ksQUDZtGfa" resolve="Value" />
          <ref role="1NtTu8" to="5j4j:4xOAf2nhhJX" resolve="position" />
          <node concept="2w$q5c" id="4bWqD4CreUJ" role="3xwHhi">
            <node concept="2aJ2om" id="4bWqD4CreUK" role="2w$qW5">
              <ref role="2$4xQ3" node="4bWqD4CreCD" resolve="EXPRESSION" />
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="6p0DfM0nJrL" role="2iSdaV" />
        <node concept="pkWqt" id="6p0DfM0nJuq" role="pqm2j">
          <node concept="3clFbS" id="6p0DfM0nJur" role="2VODD2">
            <node concept="3clFbF" id="6p0DfM0nJDv" role="3cqZAp">
              <node concept="2OqwBi" id="30XHGaOG64R" role="3clFbG">
                <node concept="2OqwBi" id="6p0DfM0nJIt" role="2Oq$k0">
                  <node concept="pncrf" id="6p0DfM0nJDu" role="2Oq$k0" />
                  <node concept="Bykcj" id="30XHGaOG64O" role="2OqNvi">
                    <node concept="1aIX9F" id="30XHGaOG64P" role="1xVPHs">
                      <node concept="26LbJo" id="30XHGaOG64Q" role="1aIX9E">
                        <ref role="26LbJp" to="5j4j:4xOAf2nhhJX" resolve="position" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="30XHGaOG64S" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="6p0DfM0eyCU" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1mP5b6jNJde">
    <property role="3GE5qa" value="logical" />
    <ref role="1XX52x" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
    <node concept="3EZMnI" id="6Ng87FPVAz_" role="2wV5jI">
      <node concept="PMmxH" id="6Ng87FPVA_o" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
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
          <ref role="1NtTu8" to="5j4j:5zfvpQ71CIE" resolve="dataType" />
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
              <node concept="2OqwBi" id="30XHGaOG651" role="3clFbG">
                <node concept="2OqwBi" id="5zfvpQ71HvF" role="2Oq$k0">
                  <node concept="pncrf" id="5zfvpQ71Hqr" role="2Oq$k0" />
                  <node concept="Bykcj" id="30XHGaOG64Y" role="2OqNvi">
                    <node concept="1aIX9F" id="30XHGaOG64Z" role="1xVPHs">
                      <node concept="26LbJo" id="30XHGaOG650" role="1aIX9E">
                        <ref role="26LbJp" to="5j4j:5zfvpQ71CIE" resolve="dataType" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="30XHGaOG652" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="6Ng87FPVAzC" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="dfChU1zo92">
    <property role="3GE5qa" value="treeform" />
    <ref role="1XX52x" to="5j4j:dfChU1zo4B" resolve="Splice" />
    <node concept="3EZMnI" id="dfChU1zop0" role="2wV5jI">
      <ref role="1k5W1q" node="7ksQUDZuyMD" resolve="Backquote" />
      <node concept="3F0ifn" id="dfChU1zop1" role="3EZMnx">
        <property role="3F0ifm" value="»" />
        <ref role="1k5W1q" to="tpen:75A9veqzBnk" resolve="AnyBracket" />
        <node concept="11LMrY" id="dfChU1zop2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VechU" id="4kX17XeTdVw" role="3F10Kt">
          <property role="Vb096" value="DARK_GREEN" />
          <node concept="1iSF2X" id="7LZcKzB$q$_" role="VblUZ">
            <property role="1iTho6" value="808080" />
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="dfChU1zop5" role="3EZMnx">
        <ref role="1NtTu8" to="5j4j:dfChU1zo4I" resolve="expression" />
      </node>
      <node concept="3F0ifn" id="dfChU1zop6" role="3EZMnx">
        <property role="3F0ifm" value="«" />
        <ref role="1k5W1q" to="tpen:75A9veqzBnk" resolve="AnyBracket" />
        <ref role="1ERwB7" node="dfChU1_gaJ" resolve="SpliceNode_DELETE" />
        <node concept="11L4FC" id="dfChU1zop7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="6SKZg6H3umA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VechU" id="4kX17XeTdV$" role="3F10Kt">
          <property role="Vb096" value="DARK_GREEN" />
          <node concept="1iSF2X" id="7LZcKzB$q$C" role="VblUZ">
            <property role="1iTho6" value="808080" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="7LZcKzB__08" role="3EZMnx">
        <node concept="VPM3Z" id="7LZcKzB__0a" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="7LZcKzB__dQ" role="3EZMnx">
          <property role="3F0ifm" value=" " />
          <node concept="VPxyj" id="4bWqD4CiTjH" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPM3Z" id="4bWqD4CiTjP" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VSNWy" id="7LZcKzB__SX" role="3F10Kt">
            <property role="1lJzqX" value="6" />
          </node>
        </node>
        <node concept="2iRkQZ" id="7LZcKzB__0d" role="2iSdaV" />
        <node concept="3EZMnI" id="1OShD0HxxT1" role="3EZMnx">
          <node concept="1HlG4h" id="3sttX4FAE4H" role="3EZMnx">
            <node concept="1HfYo3" id="3sttX4FAE4J" role="1HlULh">
              <node concept="3TQlhw" id="3sttX4FAE4L" role="1Hhtcw">
                <node concept="3clFbS" id="3sttX4FAE4N" role="2VODD2">
                  <node concept="3clFbF" id="3sttX4FAEaO" role="3cqZAp">
                    <node concept="2OqwBi" id="3sttX4FAFkG" role="3clFbG">
                      <node concept="2OqwBi" id="3sttX4FAEVV" role="2Oq$k0">
                        <node concept="2OqwBi" id="3sttX4FAEg5" role="2Oq$k0">
                          <node concept="pncrf" id="3sttX4FAEaN" role="2Oq$k0" />
                          <node concept="1mfA1w" id="3sttX4FAE_d" role="2OqNvi" />
                        </node>
                        <node concept="2yIwOk" id="3sttX4FAFad" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="3sttX4FAFzJ" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="1OShD0HxxT3" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3Xmtl4" id="7ksQUDZy5uc" role="3F10Kt">
            <node concept="1wgc9g" id="7ksQUDZy5ur" role="3XvnJa">
              <ref role="1wgcnl" node="7ksQUDZy5cR" resolve="Substituted" />
            </node>
          </node>
          <node concept="LD5Jc" id="7LZcKzB_yV7" role="3F10Kt" />
          <node concept="VSNWy" id="7LZcKzB_wAq" role="3F10Kt">
            <property role="1lJzqX" value="8" />
          </node>
          <node concept="2R9Tw8" id="7LZcKzB_LJc" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="1OShD0HxxT6" role="2iSdaV" />
        </node>
      </node>
      <node concept="l2Vlx" id="dfChU1zopa" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="dfChU1_gaJ">
    <property role="TrG5h" value="SpliceNode_DELETE" />
    <property role="3GE5qa" value="treeform" />
    <ref role="1h_SK9" to="5j4j:dfChU1zo4B" resolve="Splice" />
    <node concept="1hA7zw" id="dfChU1_gaK" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="dfChU1_gaL" role="1hA7z_">
        <node concept="3clFbS" id="dfChU1_gaM" role="2VODD2">
          <node concept="3clFbF" id="dfChU1_gf2" role="3cqZAp">
            <node concept="2OqwBi" id="dfChU1_ggR" role="3clFbG">
              <node concept="0IXxy" id="dfChU1_gf1" role="2Oq$k0" />
              <node concept="3YRAZt" id="dfChU1_gta" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1OShD0HAZ4h">
    <property role="3GE5qa" value="treeform" />
    <ref role="1XX52x" to="5j4j:1OShD0HAY6y" resolve="List" />
    <node concept="3EZMnI" id="1OShD0HAZmx" role="2wV5jI">
      <node concept="VPM3Z" id="1OShD0HAZmy" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="l2Vlx" id="1OShD0HAZmz" role="2iSdaV" />
      <node concept="3F0ifn" id="1OShD0HAZm$" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <ref role="1k5W1q" to="tpen:hXb$RYA" resolve="LeftBracket" />
        <node concept="11L4FC" id="1OShD0HAZm_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11LMrY" id="1OShD0HAZmA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="1OShD0HAZmB" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="1OShD0HAZmC" role="3n$kyP">
            <node concept="3clFbS" id="1OShD0HAZmD" role="2VODD2">
              <node concept="3clFbF" id="1OShD0HAZmE" role="3cqZAp">
                <node concept="3eOSWO" id="1OShD0HAZmF" role="3clFbG">
                  <node concept="3cmrfG" id="1OShD0HAZmG" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="1OShD0HAZmH" role="3uHU7B">
                    <node concept="2OqwBi" id="1OShD0HAZmI" role="2Oq$k0">
                      <node concept="pncrf" id="1OShD0HAZmJ" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="1OShD0HB0L4" role="2OqNvi">
                        <ref role="3TtcxE" to="5j4j:1OShD0HAZ38" resolve="contents" />
                      </node>
                    </node>
                    <node concept="34oBXx" id="1OShD0HAZmL" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F2HdR" id="1OShD0HAZmM" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="5j4j:1OShD0HAZ38" resolve="contents" />
        <node concept="l2Vlx" id="1OShD0HAZmN" role="2czzBx" />
        <node concept="lj46D" id="1OShD0HAZmO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="tppnM" id="1OShD0HAZmP" role="sWeuL">
          <node concept="ljvvj" id="1OShD0HAZmQ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="1OShD0HAZmR" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="empty" />
        </node>
      </node>
      <node concept="3F0ifn" id="1OShD0HAZmS" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <ref role="1k5W1q" to="tpen:hXb$V4T" resolve="RightBracket" />
        <node concept="11L4FC" id="1OShD0HAZmT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7ksQUDZtHks">
    <property role="TrG5h" value="CustomColors" />
    <node concept="2tJIrI" id="7ksQUDZtHkA" role="jymVt" />
    <node concept="Wx3nA" id="7ksQUDZpwh9" role="jymVt">
      <property role="TrG5h" value="SKY" />
      <node concept="3Tm1VV" id="7ksQUDZpwht" role="1B3o_S" />
      <node concept="3uibUv" id="7ksQUDZpwhO" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="7ksQUDZpwrN" role="33vP2m">
        <node concept="1pGfFk" id="7ksQUDZpwrK" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="1iWwVK2DOEL" role="37wK5m">
            <property role="2noCCI" value="E5" />
          </node>
          <node concept="2nou5x" id="1iWwVK2DOGu" role="37wK5m">
            <property role="2noCCI" value="FA" />
          </node>
          <node concept="2nou5x" id="1iWwVK2DOHE" role="37wK5m">
            <property role="2noCCI" value="FC" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="7ksQUDZpxjY" role="lGtFl">
        <node concept="TZ5HA" id="7ksQUDZpxjZ" role="TZ5H$">
          <node concept="1dT_AC" id="7ksQUDZpxk0" role="1dT_Ay">
            <property role="1dT_AB" value="BG for Database expressions, default scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ksQUDZpxrN" role="jymVt" />
    <node concept="Wx3nA" id="7ksQUDZpxlc" role="jymVt">
      <property role="TrG5h" value="DIRT" />
      <node concept="3Tm1VV" id="7ksQUDZpxld" role="1B3o_S" />
      <node concept="3uibUv" id="7ksQUDZpxle" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="7ksQUDZpxlf" role="33vP2m">
        <node concept="1pGfFk" id="7ksQUDZpxlg" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="1iWwVK2DOQS" role="37wK5m">
            <property role="2noCCI" value="3E" />
          </node>
          <node concept="2nou5x" id="1iWwVK2DOS_" role="37wK5m">
            <property role="2noCCI" value="38" />
          </node>
          <node concept="2nou5x" id="1iWwVK2DOTL" role="37wK5m">
            <property role="2noCCI" value="50" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="7ksQUDZpxlk" role="lGtFl">
        <node concept="TZ5HA" id="7ksQUDZpxll" role="TZ5H$">
          <node concept="1dT_AC" id="7ksQUDZpxlm" role="1dT_Ay">
            <property role="1dT_AB" value="BG for Database expressions, dark scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ksQUDZq5db" role="jymVt" />
    <node concept="Wx3nA" id="1iWwVK2DP_M" role="jymVt">
      <property role="TrG5h" value="BG_DB_EXPRESSION" />
      <node concept="3Tm1VV" id="1iWwVK2DP_N" role="1B3o_S" />
      <node concept="3uibUv" id="1iWwVK2DP_O" role="1tU5fm">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="1iWwVK2DP_P" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="1iWwVK2DP_Q" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="2ShNRf" id="1iWwVK2DP_R" role="33vP2m">
        <node concept="1pGfFk" id="1iWwVK2DP_S" role="2ShVmc">
          <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
          <node concept="37vLTw" id="1iWwVK2DQNI" role="37wK5m">
            <ref role="3cqZAo" node="7ksQUDZpwh9" resolve="SKY" />
          </node>
          <node concept="37vLTw" id="1iWwVK2DQR3" role="37wK5m">
            <ref role="3cqZAo" node="7ksQUDZpxlc" resolve="DIRT" />
          </node>
          <node concept="3uibUv" id="1iWwVK2DP_V" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="3uibUv" id="1iWwVK2DP_W" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iWwVK2DPxc" role="jymVt" />
    <node concept="Wx3nA" id="7ksQUDZuyXB" role="jymVt">
      <property role="TrG5h" value="DAY" />
      <node concept="3Tm1VV" id="7ksQUDZuyXC" role="1B3o_S" />
      <node concept="3uibUv" id="7ksQUDZuyXD" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="7ksQUDZuyXE" role="33vP2m">
        <node concept="1pGfFk" id="7ksQUDZuyXF" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="1iWwVK2DOZ2" role="37wK5m">
            <property role="2noCCI" value="FF" />
          </node>
          <node concept="2nou5x" id="1iWwVK2DP2f" role="37wK5m">
            <property role="2noCCI" value="FF" />
          </node>
          <node concept="2nou5x" id="1iWwVK2DP2W" role="37wK5m">
            <property role="2noCCI" value="FF" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="7ksQUDZuyXJ" role="lGtFl">
        <node concept="TZ5HA" id="7ksQUDZuyXK" role="TZ5H$">
          <node concept="1dT_AC" id="7ksQUDZuyXL" role="1dT_Ay">
            <property role="1dT_AB" value="BG for Default text expressions, default scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ksQUDZwkZd" role="jymVt" />
    <node concept="Wx3nA" id="7ksQUDZuzA1" role="jymVt">
      <property role="TrG5h" value="NIGHT" />
      <node concept="3Tm1VV" id="7ksQUDZuzA2" role="1B3o_S" />
      <node concept="3uibUv" id="7ksQUDZuzA3" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="7ksQUDZuzA4" role="33vP2m">
        <node concept="1pGfFk" id="7ksQUDZuzA5" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="1iWwVK2DP8n" role="37wK5m">
            <property role="2noCCI" value="2B" />
          </node>
          <node concept="2nou5x" id="1iWwVK2DPcf" role="37wK5m">
            <property role="2noCCI" value="2B" />
          </node>
          <node concept="2nou5x" id="1iWwVK2DPcl" role="37wK5m">
            <property role="2noCCI" value="2B" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="7ksQUDZuzA9" role="lGtFl">
        <node concept="TZ5HA" id="7ksQUDZuzAa" role="TZ5H$">
          <node concept="1dT_AC" id="7ksQUDZuzAb" role="1dT_Ay">
            <property role="1dT_AB" value="BG for Default text expressions, dark scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ksQUDZuyXM" role="jymVt" />
    <node concept="Wx3nA" id="1iWwVK2DV36" role="jymVt">
      <property role="TrG5h" value="BG_TEXT_EXPRESSION" />
      <node concept="3Tm1VV" id="1iWwVK2DV37" role="1B3o_S" />
      <node concept="3uibUv" id="1iWwVK2DV38" role="1tU5fm">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="1iWwVK2DV39" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="1iWwVK2DV3a" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="2ShNRf" id="1iWwVK2DV3b" role="33vP2m">
        <node concept="1pGfFk" id="1iWwVK2DV3c" role="2ShVmc">
          <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
          <node concept="37vLTw" id="1iWwVK2DVHC" role="37wK5m">
            <ref role="3cqZAo" node="7ksQUDZuyXB" resolve="DAY" />
          </node>
          <node concept="37vLTw" id="1iWwVK2DVME" role="37wK5m">
            <ref role="3cqZAo" node="7ksQUDZuzA1" resolve="NIGHT" />
          </node>
          <node concept="3uibUv" id="1iWwVK2DV3f" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="3uibUv" id="1iWwVK2DV3g" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iWwVK2DVBH" role="jymVt" />
    <node concept="Wx3nA" id="7ksQUDZx7BM" role="jymVt">
      <property role="TrG5h" value="CALM" />
      <node concept="3Tm1VV" id="7ksQUDZx7BN" role="1B3o_S" />
      <node concept="3uibUv" id="7ksQUDZx7BO" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="z59LJ" id="7ksQUDZx7BU" role="lGtFl">
        <node concept="TZ5HA" id="7ksQUDZx7BV" role="TZ5H$">
          <node concept="1dT_AC" id="7ksQUDZx7BW" role="1dT_Ay">
            <property role="1dT_AB" value="FG for JavaScript local variable, default scheme" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="7ksQUDZx7BP" role="33vP2m">
        <node concept="1pGfFk" id="7ksQUDZx7BQ" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="7LZcKzBF6PU" role="37wK5m">
            <property role="2noCCI" value="45" />
          </node>
          <node concept="2nou5x" id="7LZcKzBF6R4" role="37wK5m">
            <property role="2noCCI" value="83" />
          </node>
          <node concept="2nou5x" id="7LZcKzBF6Se" role="37wK5m">
            <property role="2noCCI" value="83" />
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
      <node concept="z59LJ" id="7ksQUDZx8vC" role="lGtFl">
        <node concept="TZ5HA" id="7ksQUDZx8vD" role="TZ5H$">
          <node concept="1dT_AC" id="7ksQUDZx8vE" role="1dT_Ay">
            <property role="1dT_AB" value="FG for Default identifier, dark scheme" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="7ksQUDZx8vz" role="33vP2m">
        <node concept="1pGfFk" id="7ksQUDZx8v$" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="7LZcKzBF6Z3" role="37wK5m">
            <property role="2noCCI" value="A9" />
          </node>
          <node concept="2nou5x" id="7LZcKzBF70I" role="37wK5m">
            <property role="2noCCI" value="B7" />
          </node>
          <node concept="2nou5x" id="7LZcKzBF72n" role="37wK5m">
            <property role="2noCCI" value="C6" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ksQUDZtHkC" role="jymVt" />
    <node concept="Wx3nA" id="7LZcKzBF77o" role="jymVt">
      <property role="TrG5h" value="FG_LOCAL_IDENTIFIER" />
      <node concept="3Tm1VV" id="7LZcKzBF77p" role="1B3o_S" />
      <node concept="3uibUv" id="7LZcKzBF77q" role="1tU5fm">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="7LZcKzBF77r" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="7LZcKzBF77s" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="2ShNRf" id="7LZcKzBF77t" role="33vP2m">
        <node concept="1pGfFk" id="7LZcKzBF77u" role="2ShVmc">
          <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
          <node concept="37vLTw" id="7LZcKzBF87O" role="37wK5m">
            <ref role="3cqZAo" node="7ksQUDZx7BM" resolve="CALM" />
          </node>
          <node concept="37vLTw" id="7LZcKzBF8cZ" role="37wK5m">
            <ref role="3cqZAo" node="7ksQUDZx8vw" resolve="STORM" />
          </node>
          <node concept="3uibUv" id="7LZcKzBF77x" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="3uibUv" id="7LZcKzBF77y" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4aJUH_hXiMb" role="jymVt" />
    <node concept="Wx3nA" id="4bWqD4CaWqO" role="jymVt">
      <property role="TrG5h" value="OLIVE" />
      <node concept="3Tm1VV" id="4bWqD4CaWqP" role="1B3o_S" />
      <node concept="3uibUv" id="4bWqD4CaWqQ" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="z59LJ" id="4bWqD4CaWqR" role="lGtFl">
        <node concept="TZ5HA" id="4bWqD4CaWqS" role="TZ5H$">
          <node concept="1dT_AC" id="4bWqD4CaWqT" role="1dT_Ay">
            <property role="1dT_AB" value="FG for JavaScript instance method, default scheme" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="4bWqD4CaWqU" role="33vP2m">
        <node concept="1pGfFk" id="4bWqD4CaWqV" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="4bWqD4CaWqW" role="37wK5m">
            <property role="2noCCI" value="7A" />
          </node>
          <node concept="2nou5x" id="4bWqD4CaWqX" role="37wK5m">
            <property role="2noCCI" value="7A" />
          </node>
          <node concept="2nou5x" id="4bWqD4CaWqY" role="37wK5m">
            <property role="2noCCI" value="43" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4bWqD4CaWqN" role="jymVt" />
    <node concept="Wx3nA" id="4bWqD4CaWqC" role="jymVt">
      <property role="TrG5h" value="PEACH" />
      <node concept="3Tm1VV" id="4bWqD4CaWqD" role="1B3o_S" />
      <node concept="3uibUv" id="4bWqD4CaWqE" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="z59LJ" id="4bWqD4CaWqF" role="lGtFl">
        <node concept="TZ5HA" id="4bWqD4CaWqG" role="TZ5H$">
          <node concept="1dT_AC" id="4bWqD4CaWqH" role="1dT_Ay">
            <property role="1dT_AB" value="FG for Default identifier, dark scheme" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="4bWqD4CaWqI" role="33vP2m">
        <node concept="1pGfFk" id="4bWqD4CaWqJ" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="4bWqD4CaWqK" role="37wK5m">
            <property role="2noCCI" value="FF" />
          </node>
          <node concept="2nou5x" id="4bWqD4CaWqL" role="37wK5m">
            <property role="2noCCI" value="C6" />
          </node>
          <node concept="2nou5x" id="4bWqD4CaWqM" role="37wK5m">
            <property role="2noCCI" value="6D" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4bWqD4CaWqB" role="jymVt" />
    <node concept="Wx3nA" id="4bWqD4CaWqs" role="jymVt">
      <property role="TrG5h" value="FG_METHOD" />
      <node concept="3Tm1VV" id="4bWqD4CaWqt" role="1B3o_S" />
      <node concept="3uibUv" id="4bWqD4CaWqu" role="1tU5fm">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="4bWqD4CaWqv" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="4bWqD4CaWqw" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="2ShNRf" id="4bWqD4CaWqx" role="33vP2m">
        <node concept="1pGfFk" id="4bWqD4CaWqy" role="2ShVmc">
          <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
          <node concept="3uibUv" id="4bWqD4CaWq_" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="3uibUv" id="4bWqD4CaWqA" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="37vLTw" id="4bWqD4CaXsJ" role="37wK5m">
            <ref role="3cqZAo" node="4bWqD4CaWqO" resolve="OLIVE" />
          </node>
          <node concept="37vLTw" id="4bWqD4CaXw1" role="37wK5m">
            <ref role="3cqZAo" node="4bWqD4CaWqC" resolve="PEACH" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4bWqD4CaWqr" role="jymVt" />
    <node concept="Wx3nA" id="4aJUH_hXiM0" role="jymVt">
      <property role="TrG5h" value="PURPLE" />
      <node concept="3Tm1VV" id="4aJUH_hXiM1" role="1B3o_S" />
      <node concept="3uibUv" id="4aJUH_hXiM2" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="z59LJ" id="4aJUH_hXiM3" role="lGtFl">
        <node concept="TZ5HA" id="4aJUH_hXiM4" role="TZ5H$">
          <node concept="1dT_AC" id="4aJUH_hXiM5" role="1dT_Ay">
            <property role="1dT_AB" value="FG for Language Defaults Instance field, default scheme" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="4aJUH_hXiM6" role="33vP2m">
        <node concept="1pGfFk" id="4aJUH_hXiM7" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="4aJUH_hXiM8" role="37wK5m">
            <property role="2noCCI" value="66" />
          </node>
          <node concept="2nou5x" id="4aJUH_hXiM9" role="37wK5m">
            <property role="2noCCI" value="0E" />
          </node>
          <node concept="2nou5x" id="4aJUH_hXiMa" role="37wK5m">
            <property role="2noCCI" value="7A" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4aJUH_hXiLZ" role="jymVt" />
    <node concept="Wx3nA" id="4aJUH_hXiLO" role="jymVt">
      <property role="TrG5h" value="IRIS" />
      <node concept="3Tm1VV" id="4aJUH_hXiLP" role="1B3o_S" />
      <node concept="3uibUv" id="4aJUH_hXiLQ" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="z59LJ" id="4aJUH_hXiLR" role="lGtFl">
        <node concept="TZ5HA" id="4aJUH_hXiLS" role="TZ5H$">
          <node concept="1dT_AC" id="4aJUH_hXiLT" role="1dT_Ay">
            <property role="1dT_AB" value="FG for Language Defaults Instance field, dark scheme" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="4aJUH_hXiLU" role="33vP2m">
        <node concept="1pGfFk" id="4aJUH_hXiLV" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="4aJUH_hXiLW" role="37wK5m">
            <property role="2noCCI" value="98" />
          </node>
          <node concept="2nou5x" id="4aJUH_hXiLX" role="37wK5m">
            <property role="2noCCI" value="76" />
          </node>
          <node concept="2nou5x" id="4aJUH_hXiLY" role="37wK5m">
            <property role="2noCCI" value="AA" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4bWqD4C3iOH" role="jymVt" />
    <node concept="Wx3nA" id="4bWqD4C3iOy" role="jymVt">
      <property role="TrG5h" value="SAPPHIRE" />
      <node concept="3Tm1VV" id="4bWqD4C3iOz" role="1B3o_S" />
      <node concept="3uibUv" id="4bWqD4C3iO$" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="4bWqD4C3iO_" role="33vP2m">
        <node concept="1pGfFk" id="4bWqD4C3iOA" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="4bWqD4C3iOB" role="37wK5m">
            <property role="2noCCI" value="20" />
          </node>
          <node concept="2nou5x" id="4bWqD4C3iOC" role="37wK5m">
            <property role="2noCCI" value="99" />
          </node>
          <node concept="2nou5x" id="4bWqD4C3iOD" role="37wK5m">
            <property role="2noCCI" value="9E" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="4bWqD4C3iOE" role="lGtFl">
        <node concept="TZ5HA" id="4bWqD4C3iOF" role="TZ5H$">
          <node concept="1dT_AC" id="4bWqD4C3iOG" role="1dT_Ay">
            <property role="1dT_AB" value="FG for Java type parameter, default scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4bWqD4C3iOx" role="jymVt" />
    <node concept="Wx3nA" id="4bWqD4C3iOm" role="jymVt">
      <property role="TrG5h" value="OCEAN" />
      <node concept="3Tm1VV" id="4bWqD4C3iOn" role="1B3o_S" />
      <node concept="3uibUv" id="4bWqD4C3iOo" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="4bWqD4C3iOp" role="33vP2m">
        <node concept="1pGfFk" id="4bWqD4C3iOq" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="4bWqD4C3iOr" role="37wK5m">
            <property role="2noCCI" value="50" />
          </node>
          <node concept="2nou5x" id="4bWqD4C3iOs" role="37wK5m">
            <property role="2noCCI" value="78" />
          </node>
          <node concept="2nou5x" id="4bWqD4C3iOt" role="37wK5m">
            <property role="2noCCI" value="74" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="4bWqD4C3iOu" role="lGtFl">
        <node concept="TZ5HA" id="4bWqD4C3iOv" role="TZ5H$">
          <node concept="1dT_AC" id="4bWqD4C3iOw" role="1dT_Ay">
            <property role="1dT_AB" value="BG for Java type parameter, dark scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4bWqD4C3iOl" role="jymVt" />
    <node concept="Wx3nA" id="4aJUH_hXiLC" role="jymVt">
      <property role="TrG5h" value="FG_LOGICAL" />
      <node concept="3Tm1VV" id="4aJUH_hXiLD" role="1B3o_S" />
      <node concept="3uibUv" id="4aJUH_hXiLE" role="1tU5fm">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="4aJUH_hXiLF" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="4aJUH_hXiLG" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="2ShNRf" id="4aJUH_hXiLH" role="33vP2m">
        <node concept="1pGfFk" id="4aJUH_hXiLI" role="2ShVmc">
          <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
          <node concept="3uibUv" id="4aJUH_hXiLL" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="3uibUv" id="4aJUH_hXiLM" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="37vLTw" id="4bWqD4C5nuS" role="37wK5m">
            <ref role="3cqZAo" node="4aJUH_hXiM0" resolve="PURPLE" />
          </node>
          <node concept="37vLTw" id="4bWqD4C5nqh" role="37wK5m">
            <ref role="3cqZAo" node="4aJUH_hXiLO" resolve="IRIS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4bWqD4C3kBk" role="jymVt" />
    <node concept="Wx3nA" id="7ksQUDZy5Fh" role="jymVt">
      <property role="TrG5h" value="DELFG" />
      <node concept="3Tm1VV" id="7ksQUDZy5Fi" role="1B3o_S" />
      <node concept="3uibUv" id="7ksQUDZy5Fj" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="7ksQUDZy5Fk" role="33vP2m">
        <node concept="1pGfFk" id="7ksQUDZy5Fl" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="1iWwVK2DPpx" role="37wK5m">
            <property role="2noCCI" value="C3" />
          </node>
          <node concept="2nou5x" id="1iWwVK2DPra" role="37wK5m">
            <property role="2noCCI" value="C3" />
          </node>
          <node concept="2nou5x" id="1iWwVK2DPrg" role="37wK5m">
            <property role="2noCCI" value="C3" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="7ksQUDZy5Fp" role="lGtFl">
        <node concept="TZ5HA" id="7ksQUDZy5Fq" role="TZ5H$">
          <node concept="1dT_AC" id="7ksQUDZy5Fr" role="1dT_Ay">
            <property role="1dT_AB" value="FG for Deleted text, default scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ksQUDZy6pO" role="jymVt" />
    <node concept="Wx3nA" id="7ksQUDZy66n" role="jymVt">
      <property role="TrG5h" value="DELBG" />
      <node concept="3Tm1VV" id="7ksQUDZy66o" role="1B3o_S" />
      <node concept="3uibUv" id="7ksQUDZy66p" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="7ksQUDZy66q" role="33vP2m">
        <node concept="1pGfFk" id="7ksQUDZy66r" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="1iWwVK2DPuq" role="37wK5m">
            <property role="2noCCI" value="F0" />
          </node>
          <node concept="2nou5x" id="1iWwVK2DPw3" role="37wK5m">
            <property role="2noCCI" value="F0" />
          </node>
          <node concept="2nou5x" id="1iWwVK2DPw9" role="37wK5m">
            <property role="2noCCI" value="F0" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="7ksQUDZy66v" role="lGtFl">
        <node concept="TZ5HA" id="7ksQUDZy66w" role="TZ5H$">
          <node concept="1dT_AC" id="7ksQUDZy66x" role="1dT_Ay">
            <property role="1dT_AB" value="BG for Deleted text, default scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7ksQUDZtHkt" role="1B3o_S" />
  </node>
  <node concept="24kQdi" id="4sSe4$p4oOX">
    <property role="3GE5qa" value="logical" />
    <ref role="1XX52x" to="5j4j:4sSe4$p4oOM" resolve="PatternLogicalVariable" />
    <node concept="3EZMnI" id="4sSe4$p4oOZ" role="2wV5jI">
      <node concept="3F1sOY" id="4sSe4$p4oPk" role="3EZMnx">
        <ref role="1NtTu8" to="5j4j:4sSe4$p4oON" resolve="variable" />
      </node>
      <node concept="3F0ifn" id="4sSe4$p4oPc" role="3EZMnx">
        <property role="3F0ifm" value="=" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
      </node>
      <node concept="3F1sOY" id="4sSe4$p4oP6" role="3EZMnx">
        <ref role="1NtTu8" to="5j4j:4sSe4$p4oOP" resolve="value" />
      </node>
      <node concept="l2Vlx" id="4sSe4$p4oP2" role="2iSdaV" />
    </node>
  </node>
  <node concept="IW6AY" id="4hPXq9Jm69G">
    <property role="3GE5qa" value="logical" />
    <ref role="aqKnT" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
    <node concept="1Qtc8_" id="4hPXq9Jm69H" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm69I" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm69J" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
        <node concept="CtIbL" id="4hPXq9Jm69K" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="4hPXq9Jm69L" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="4hPXq9Jm69O" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm69M" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm69N" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="7XmdqtdOX91" role="1Qtc8A">
        <node concept="1hCUdq" id="7XmdqtdOX93" role="1hCUd6">
          <node concept="3clFbS" id="7XmdqtdOX95" role="2VODD2">
            <node concept="3clFbF" id="7XmdqtdOXue" role="3cqZAp">
              <node concept="Xl_RD" id="7XmdqtdOXud" role="3clFbG">
                <property role="Xl_RC" value="=" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="7XmdqtdOX97" role="IWgqQ">
          <node concept="3clFbS" id="7XmdqtdOX99" role="2VODD2">
            <node concept="3cpWs8" id="4sSe4$p4w5F" role="3cqZAp">
              <node concept="3cpWsn" id="4sSe4$p4w5G" role="3cpWs9">
                <property role="TrG5h" value="plv" />
                <node concept="3Tqbb2" id="4sSe4$p4w5D" role="1tU5fm">
                  <ref role="ehGHo" to="5j4j:4sSe4$p4oOM" resolve="PatternLogicalVariable" />
                </node>
                <node concept="2ShNRf" id="4sSe4$p4w5H" role="33vP2m">
                  <node concept="3zrR0B" id="4sSe4$p4w5I" role="2ShVmc">
                    <node concept="3Tqbb2" id="4sSe4$p4w5J" role="3zrR0E">
                      <ref role="ehGHo" to="5j4j:4sSe4$p4oOM" resolve="PatternLogicalVariable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4sSe4$p4FXc" role="3cqZAp">
              <node concept="2OqwBi" id="4sSe4$p4G3j" role="3clFbG">
                <node concept="7Obwk" id="7XmdqtdP6NV" role="2Oq$k0" />
                <node concept="1P9Npp" id="4sSe4$p4Ggq" role="2OqNvi">
                  <node concept="37vLTw" id="4sSe4$p4Gl8" role="1P9ThW">
                    <ref role="3cqZAo" node="4sSe4$p4w5G" resolve="plv" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4sSe4$p4vIY" role="3cqZAp">
              <node concept="37vLTI" id="4sSe4$p4wuf" role="3clFbG">
                <node concept="2OqwBi" id="4sSe4$p4wBZ" role="37vLTx">
                  <node concept="7Obwk" id="7XmdqtdP6Oq" role="2Oq$k0" />
                  <node concept="3YRAZt" id="4sSe4$p4wJS" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="4sSe4$p4we2" role="37vLTJ">
                  <node concept="37vLTw" id="4sSe4$p4w5K" role="2Oq$k0">
                    <ref role="3cqZAo" node="4sSe4$p4w5G" resolve="plv" />
                  </node>
                  <node concept="3TrEf2" id="4sSe4$p4wkM" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:4sSe4$p4oON" resolve="variable" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4sSe4$p4wSN" role="3cqZAp">
              <node concept="2OqwBi" id="7XmdqtdPl4B" role="3clFbG">
                <node concept="2OqwBi" id="4sSe4$p4wYQ" role="2Oq$k0">
                  <node concept="37vLTw" id="4sSe4$p4wSL" role="2Oq$k0">
                    <ref role="3cqZAo" node="4sSe4$p4w5G" resolve="plv" />
                  </node>
                  <node concept="3TrEf2" id="4sSe4$p4x9l" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:4sSe4$p4oOP" resolve="value" />
                  </node>
                </node>
                <node concept="2DeJnY" id="7XmdqtdPlo$" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="IWgqT" id="7XmdqtdOVNH" role="1Qtc8A">
        <node concept="1hCUdq" id="7XmdqtdOVNJ" role="1hCUd6">
          <node concept="3clFbS" id="7XmdqtdOVNL" role="2VODD2">
            <node concept="3clFbF" id="7XmdqtdOWrG" role="3cqZAp">
              <node concept="Xl_RD" id="7XmdqtdOWrF" role="3clFbG">
                <property role="Xl_RC" value="#" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="7XmdqtdOVNN" role="IWgqQ">
          <node concept="3clFbS" id="7XmdqtdOVNP" role="2VODD2">
            <node concept="3clFbF" id="7XmdqtdOWGL" role="3cqZAp">
              <node concept="2OqwBi" id="7XmdqtdOWGM" role="3clFbG">
                <node concept="2OqwBi" id="7XmdqtdOWGN" role="2Oq$k0">
                  <node concept="7Obwk" id="7XmdqtdOWGO" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7XmdqtdOWGP" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:4xOAf2nhhJX" resolve="position" />
                  </node>
                </node>
                <node concept="2DeJnY" id="7XmdqtdOWGQ" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="7XmdqtdOWGR" role="3cqZAp">
              <node concept="2OqwBi" id="7XmdqtdOWGS" role="3clFbG">
                <node concept="7Obwk" id="7XmdqtdOWGT" role="2Oq$k0" />
                <node concept="1OKiuA" id="7XmdqtdOWGU" role="2OqNvi">
                  <node concept="1Q80Hx" id="7XmdqtdOWGV" role="lBI5i" />
                  <node concept="2B6iha" id="7XmdqtdOWGW" role="lGT1i">
                    <property role="1lyBwo" value="mostRelevant" />
                  </node>
                  <node concept="3cmrfG" id="7XmdqtdOWGX" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="7XmdqtdOW8N" role="2jiSrf">
          <node concept="3clFbS" id="7XmdqtdOW8O" role="2VODD2">
            <node concept="3clFbF" id="7XmdqtdOWg1" role="3cqZAp">
              <node concept="2OqwBi" id="7XmdqtdOWg2" role="3clFbG">
                <node concept="2OqwBi" id="7XmdqtdOWg3" role="2Oq$k0">
                  <node concept="7Obwk" id="7XmdqtdOWg4" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7XmdqtdOWg5" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:4xOAf2nhhJX" resolve="position" />
                  </node>
                </node>
                <node concept="3w_OXm" id="7XmdqtdOWg6" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="IW6AY" id="4hPXq9Jm6ap">
    <ref role="aqKnT" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
    <node concept="1Qtc8_" id="4hPXq9Jm6aq" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm6ar" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm6as" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
        <node concept="CtIbL" id="4hPXq9Jm6at" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="4hPXq9Jm6au" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="4hPXq9Jm6ax" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm6av" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm6aw" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="mvV$s" id="4hPXq9Jm6az" role="1Qtc8A">
        <node concept="mvVNg" id="4hPXq9Jm6a$" role="mvV$0">
          <node concept="3clFbS" id="4hPXq9Jm6a_" role="2VODD2">
            <node concept="3clFbF" id="4hPXq9Jm6aA" role="3cqZAp">
              <node concept="2OqwBi" id="4hPXq9Jm6aB" role="3clFbG">
                <node concept="7Obwk" id="4hPXq9Jm6aE" role="2Oq$k0" />
                <node concept="1mfA1w" id="4hPXq9Jm6aD" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="IW6AY" id="4hPXq9Jm6aH">
    <ref role="aqKnT" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
    <node concept="1Qtc8_" id="4hPXq9Jm6aI" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm6aJ" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm6aK" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
        <node concept="CtIbL" id="4hPXq9Jm6aL" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="4hPXq9Jm6aM" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="4hPXq9Jm6aP" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm6aN" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm6aO" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="mvV$s" id="4hPXq9Jm6aR" role="1Qtc8A">
        <node concept="mvVNg" id="4hPXq9Jm6aS" role="mvV$0">
          <node concept="3clFbS" id="4hPXq9Jm6aT" role="2VODD2">
            <node concept="3clFbF" id="4hPXq9Jm6aU" role="3cqZAp">
              <node concept="2OqwBi" id="4hPXq9Jm6aV" role="3clFbG">
                <node concept="7Obwk" id="4hPXq9Jm6aY" role="2Oq$k0" />
                <node concept="1mfA1w" id="4hPXq9Jm6aX" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="IW6AY" id="4hPXq9Jm6b1">
    <ref role="aqKnT" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
    <node concept="1Qtc8_" id="4hPXq9Jm6b2" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm6b3" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm6b4" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
        <node concept="CtIbL" id="4hPXq9Jm6b5" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="4hPXq9Jm6b6" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="4hPXq9Jm6b9" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm6b7" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm6b8" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="aenpk" id="4hPXq9Jm6bb" role="1Qtc8A">
        <node concept="27VH4U" id="4hPXq9Jm6bc" role="aenpu">
          <node concept="3clFbS" id="4hPXq9Jm6bd" role="2VODD2">
            <node concept="3clFbF" id="4hPXq9Jm6be" role="3cqZAp">
              <node concept="3fqX7Q" id="4hPXq9Jm6bf" role="3clFbG">
                <node concept="2OqwBi" id="4hPXq9Jm6bg" role="3fr31v">
                  <node concept="2OqwBi" id="4hPXq9Jm6bh" role="2Oq$k0">
                    <node concept="7Obwk" id="4hPXq9Jm6bx" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4hPXq9Jm6bj" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" resolve="role" />
                    </node>
                  </node>
                  <node concept="2HwmR7" id="4hPXq9Jm6bk" role="2OqNvi">
                    <node concept="1bVj0M" id="4hPXq9Jm6bl" role="23t8la">
                      <node concept="3clFbS" id="4hPXq9Jm6bm" role="1bW5cS">
                        <node concept="3clFbF" id="4hPXq9Jm6bn" role="3cqZAp">
                          <node concept="2OqwBi" id="4hPXq9Jm6bo" role="3clFbG">
                            <node concept="3f7Wdw" id="4hPXq9Jm6bp" role="2Oq$k0">
                              <ref role="3f7u_j" to="5j4j:6MozwwzUqt8" />
                              <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                            </node>
                            <node concept="liA8E" id="4hPXq9Jm6bq" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                              <node concept="2OqwBi" id="4hPXq9Jm6br" role="37wK5m">
                                <node concept="1PxgMI" id="4hPXq9Jm6bs" role="2Oq$k0">
                                  <property role="1BlNFB" value="true" />
                                  <node concept="37vLTw" id="4hPXq9Jm6bt" role="1m5AlR">
                                    <ref role="3cqZAo" node="4hPXq9Jm6bv" resolve="it" />
                                  </node>
                                  <node concept="chp4Y" id="6fXjIfxgne3" role="3oSUPX">
                                    <ref role="cht4Q" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="4hPXq9Jm6bu" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="4hPXq9Jm6bv" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="4hPXq9Jm6bw" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="4hPXq9Jm6by" role="aenpr">
          <node concept="1hCUdq" id="4hPXq9Jm6bz" role="1hCUd6">
            <node concept="3clFbS" id="4hPXq9Jm6b$" role="2VODD2">
              <node concept="3clFbF" id="4hPXq9Jm6b_" role="3cqZAp">
                <node concept="Xl_RD" id="4hPXq9Jm6bA" role="3clFbG">
                  <property role="Xl_RC" value="&lt;" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqGtN" id="4hPXq9Jm6bB" role="2jZA2a">
            <node concept="3cqJkl" id="4hPXq9Jm6bC" role="3cqGtW">
              <node concept="3clFbS" id="4hPXq9Jm6bD" role="2VODD2">
                <node concept="3clFbF" id="4hPXq9Jm6bE" role="3cqZAp">
                  <node concept="Xl_RD" id="4hPXq9Jm6bF" role="3clFbG">
                    <property role="Xl_RC" value="add parameter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="4hPXq9Jm6bG" role="IWgqQ">
            <node concept="3clFbS" id="4hPXq9Jm6bH" role="2VODD2">
              <node concept="3cpWs8" id="4hPXq9Jm6bI" role="3cqZAp">
                <node concept="3cpWsn" id="4hPXq9Jm6bJ" role="3cpWs9">
                  <property role="TrG5h" value="cr" />
                  <node concept="3Tqbb2" id="4hPXq9Jm6bK" role="1tU5fm">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                  </node>
                  <node concept="2pJPEk" id="4hPXq9Jm6bL" role="33vP2m">
                    <node concept="2pJPED" id="4hPXq9Jm6bM" role="2pJPEn">
                      <ref role="2pJxaS" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                      <node concept="2pJxcG" id="4hPXq9Jm6bN" role="2pJxcM">
                        <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                        <node concept="3f7Wdw" id="4hPXq9Jm6bO" role="2pJxcZ">
                          <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                          <ref role="3f7u_j" to="5j4j:6MozwwzUqt8" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4hPXq9Jm6bP" role="3cqZAp">
                <node concept="2OqwBi" id="4hPXq9Jm6bQ" role="3clFbG">
                  <node concept="2OqwBi" id="4hPXq9Jm6bR" role="2Oq$k0">
                    <node concept="7Obwk" id="4hPXq9Jm6c2" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4hPXq9Jm6bT" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" resolve="role" />
                    </node>
                  </node>
                  <node concept="TSZUe" id="4hPXq9Jm6bU" role="2OqNvi">
                    <node concept="37vLTw" id="4hPXq9Jm6bV" role="25WWJ7">
                      <ref role="3cqZAo" node="4hPXq9Jm6bJ" resolve="cr" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4hPXq9Jm6c8" role="3cqZAp">
                <node concept="2OqwBi" id="4hPXq9Jm6c3" role="3clFbG">
                  <node concept="2OqwBi" id="4hPXq9Jm6bX" role="2Oq$k0">
                    <node concept="2OqwBi" id="4hPXq9Jm6bY" role="2Oq$k0">
                      <node concept="37vLTw" id="4hPXq9Jm6bZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="4hPXq9Jm6bJ" resolve="cr" />
                      </node>
                      <node concept="3Tsc0h" id="4hPXq9Jm6c0" role="2OqNvi">
                        <ref role="3TtcxE" to="5j4j:6$jH9oLmYFB" resolve="contents" />
                      </node>
                    </node>
                    <node concept="2DeJg1" id="4hPXq9Jm6c1" role="2OqNvi">
                      <ref role="1A0vxQ" to="5j4j:1OShD0HAY6y" resolve="List" />
                    </node>
                  </node>
                  <node concept="1OKiuA" id="4hPXq9Jm6c4" role="2OqNvi">
                    <node concept="1Q80Hx" id="4hPXq9Jm6c5" role="lBI5i" />
                    <node concept="2B6iha" id="4hPXq9Jm6c6" role="lGT1i">
                      <property role="1lyBwo" value="mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="4hPXq9Jm6c7" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="IW6AY" id="4hPXq9Jm6cb">
    <property role="3GE5qa" value="logical" />
    <ref role="aqKnT" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
    <node concept="1Qtc8_" id="4hPXq9Jm6cc" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm6cd" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm6ce" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
        <node concept="CtIbL" id="4hPXq9Jm6cf" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="4hPXq9Jm6cg" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="4hPXq9Jm6cj" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm6ch" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm6ci" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="aenpk" id="4hPXq9Jm6cl" role="1Qtc8A">
        <node concept="27VH4U" id="4hPXq9Jm6cm" role="aenpu">
          <node concept="3clFbS" id="4hPXq9Jm6cn" role="2VODD2">
            <node concept="3clFbF" id="4hPXq9Jm6co" role="3cqZAp">
              <node concept="2OqwBi" id="4hPXq9Jm6cp" role="3clFbG">
                <node concept="2OqwBi" id="4hPXq9Jm6cq" role="2Oq$k0">
                  <node concept="7Obwk" id="4hPXq9Jm6cu" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4hPXq9Jm6cs" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:5zfvpQ71CIE" resolve="dataType" />
                  </node>
                </node>
                <node concept="3w_OXm" id="4hPXq9Jm6ct" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="4hPXq9Jm6cv" role="aenpr">
          <node concept="1hCUdq" id="4hPXq9Jm6cw" role="1hCUd6">
            <node concept="3clFbS" id="4hPXq9Jm6cx" role="2VODD2">
              <node concept="3clFbF" id="4hPXq9Jm6cy" role="3cqZAp">
                <node concept="Xl_RD" id="4hPXq9Jm6cz" role="3clFbG">
                  <property role="Xl_RC" value="&lt;" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="4hPXq9Jm6c$" role="IWgqQ">
            <node concept="3clFbS" id="4hPXq9Jm6c_" role="2VODD2">
              <node concept="3clFbF" id="4hPXq9Jm6cA" role="3cqZAp">
                <node concept="2OqwBi" id="4hPXq9Jm6cB" role="3clFbG">
                  <node concept="2OqwBi" id="4hPXq9Jm6cC" role="2Oq$k0">
                    <node concept="7Obwk" id="4hPXq9Jm6cI" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4hPXq9Jm6cE" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:5zfvpQ71CIE" resolve="dataType" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="4hPXq9Jm6cF" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="4hPXq9Jm6cP" role="3cqZAp">
                <node concept="2OqwBi" id="4hPXq9Jm6cK" role="3clFbG">
                  <node concept="7Obwk" id="4hPXq9Jm6cJ" role="2Oq$k0" />
                  <node concept="1OKiuA" id="4hPXq9Jm6cL" role="2OqNvi">
                    <node concept="1Q80Hx" id="4hPXq9Jm6cM" role="lBI5i" />
                    <node concept="2B6iha" id="4hPXq9Jm6cN" role="lGT1i">
                      <property role="1lyBwo" value="mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="4hPXq9Jm6cO" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="IW6AY" id="4hPXq9Jm6cS">
    <property role="3GE5qa" value="logical" />
    <ref role="aqKnT" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
    <node concept="1Qtc8_" id="4hPXq9Jm6cT" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm6cU" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm6cV" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
        <node concept="CtIbL" id="4hPXq9Jm6cW" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="4hPXq9Jm6cX" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="4hPXq9Jm6d0" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm6cY" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm6cZ" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="aenpk" id="4hPXq9Jm6d2" role="1Qtc8A">
        <node concept="27VH4U" id="4hPXq9Jm6d3" role="aenpu">
          <node concept="3clFbS" id="4hPXq9Jm6d4" role="2VODD2">
            <node concept="3clFbF" id="4hPXq9Jm6d5" role="3cqZAp">
              <node concept="2OqwBi" id="4hPXq9Jm6d6" role="3clFbG">
                <node concept="2OqwBi" id="4hPXq9Jm6d7" role="2Oq$k0">
                  <node concept="7Obwk" id="4hPXq9Jm6db" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4hPXq9Jm6d9" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:7E86$tKtioV" resolve="cardinality" />
                  </node>
                </node>
                <node concept="3w_OXm" id="4hPXq9Jm6da" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="4hPXq9Jm6dc" role="aenpr">
          <node concept="1hCUdq" id="4hPXq9Jm6dd" role="1hCUd6">
            <node concept="3clFbS" id="4hPXq9Jm6de" role="2VODD2">
              <node concept="3clFbF" id="4hPXq9Jm6df" role="3cqZAp">
                <node concept="Xl_RD" id="4hPXq9Jm6dg" role="3clFbG">
                  <property role="Xl_RC" value="[" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="4hPXq9Jm6dh" role="IWgqQ">
            <node concept="3clFbS" id="4hPXq9Jm6di" role="2VODD2">
              <node concept="3clFbF" id="4hPXq9Jm6dj" role="3cqZAp">
                <node concept="2OqwBi" id="4hPXq9Jm6dk" role="3clFbG">
                  <node concept="2OqwBi" id="4hPXq9Jm6dl" role="2Oq$k0">
                    <node concept="7Obwk" id="4hPXq9Jm6dr" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4hPXq9Jm6dn" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:7E86$tKtioV" resolve="cardinality" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="4hPXq9Jm6do" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="4hPXq9Jm6dy" role="3cqZAp">
                <node concept="2OqwBi" id="4hPXq9Jm6dt" role="3clFbG">
                  <node concept="7Obwk" id="4hPXq9Jm6ds" role="2Oq$k0" />
                  <node concept="1OKiuA" id="4hPXq9Jm6du" role="2OqNvi">
                    <node concept="1Q80Hx" id="4hPXq9Jm6dv" role="lBI5i" />
                    <node concept="2B6iha" id="4hPXq9Jm6dw" role="lGT1i">
                      <property role="1lyBwo" value="mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="4hPXq9Jm6dx" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="4hPXq9Jm7Cm">
    <ref role="aqKnT" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
    <node concept="3eGOop" id="4hPXq9Jm7Co" role="3ft7WO">
      <node concept="16NfWO" id="4hPXq9Jm7Cp" role="upBLP">
        <node concept="uGdhv" id="4hPXq9Jm7Cq" role="16NeZM">
          <node concept="3clFbS" id="4hPXq9Jm7Cr" role="2VODD2">
            <node concept="3clFbF" id="4hPXq9Jm7Cs" role="3cqZAp">
              <node concept="3f7Wdw" id="4hPXq9Jm7Ct" role="3clFbG">
                <ref role="3f7vo2" to="5j4j:5A$IBX$fPei" resolve="StandardValue" />
                <ref role="3f7u_j" to="5j4j:5A$IBX$fPej" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="ucgPf" id="4hPXq9Jm7CS" role="3aKz83">
        <node concept="3clFbS" id="4hPXq9Jm7CT" role="2VODD2">
          <node concept="3clFbF" id="4hPXq9Jm7CU" role="3cqZAp">
            <node concept="2pJPEk" id="4hPXq9Jm7CV" role="3clFbG">
              <node concept="2pJPED" id="4hPXq9Jm7CW" role="2pJPEn">
                <ref role="2pJxaS" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
                <node concept="2pIpSj" id="4hPXq9Jm7CX" role="2pJxcM">
                  <ref role="2pIpSl" to="5j4j:6$jH9oLnyAp" resolve="role" />
                  <node concept="36be1Y" id="4hPXq9Jm7CY" role="2pJxcZ">
                    <node concept="2pJPED" id="4hPXq9Jm7CZ" role="36be1Z">
                      <ref role="2pJxaS" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                      <node concept="2pJxcG" id="4hPXq9Jm7D0" role="2pJxcM">
                        <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                        <node concept="3f7Wdw" id="4hPXq9Jm7D1" role="2pJxcZ">
                          <ref role="3f7u_j" to="5j4j:6dP_abdUiHP" />
                          <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                        </node>
                      </node>
                      <node concept="2pIpSj" id="4hPXq9Jm7D2" role="2pJxcM">
                        <ref role="2pIpSl" to="5j4j:6$jH9oLmYL8" resolve="contents" />
                        <node concept="2pJPED" id="4hPXq9Jm7D3" role="2pJxcZ">
                          <ref role="2pJxaS" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
                          <node concept="2pJxcG" id="4hPXq9Jm7D4" role="2pJxcM">
                            <ref role="2pJxcJ" to="5j4j:6$jH9oLmYKA" resolve="value" />
                            <node concept="3f7Wdw" id="4hPXq9Jm7D5" role="2pJxcZ">
                              <ref role="3f7u_j" to="5j4j:5A$IBX$fPej" />
                              <ref role="3f7vo2" to="5j4j:5A$IBX$fPei" resolve="StandardValue" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2pJPED" id="4hPXq9Jm7D6" role="36be1Z">
                      <ref role="2pJxaS" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                      <node concept="2pJxcG" id="4hPXq9Jm7D7" role="2pJxcM">
                        <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                        <node concept="3f7Wdw" id="4hPXq9Jm7D8" role="2pJxcZ">
                          <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                          <ref role="3f7u_j" to="5j4j:25SygBrhNIm" />
                        </node>
                      </node>
                      <node concept="2pIpSj" id="4hPXq9Jm7D9" role="2pJxcM">
                        <ref role="2pIpSl" to="5j4j:6$jH9oLmYL8" resolve="contents" />
                        <node concept="2pJPED" id="4hPXq9Jm7Da" role="2pJxcZ">
                          <ref role="2pJxaS" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2VfDsV" id="4hPXq9Jm7DB" role="3ft7WO" />
    <node concept="3ft5Ry" id="4hPXq9Jm7DC" role="3ft7WO">
      <ref role="4PJHt" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
    </node>
  </node>
  <node concept="24kQdi" id="4bWqD4CreCA">
    <property role="3GE5qa" value="logical" />
    <ref role="1XX52x" to="5j4j:7E86$tKskWj" resolve="LogicalValue" />
    <node concept="2aJ2om" id="4bWqD4CreCH" role="CpUAK">
      <ref role="2$4xQ3" node="4bWqD4CreCD" resolve="EXPRESSION" />
    </node>
    <node concept="3EZMnI" id="4bWqD4CqZjd" role="2wV5jI">
      <node concept="3EZMnI" id="4bWqD4CrUV0" role="3EZMnx">
        <ref role="1k5W1q" node="7ksQUDZuyMD" resolve="Backquote" />
        <node concept="3F1sOY" id="4bWqD4CqZjm" role="3EZMnx">
          <ref role="1NtTu8" to="5j4j:7E86$tKsqnr" resolve="code" />
          <node concept="11L4FC" id="4bWqD4CqZjn" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="11LMrY" id="4bWqD4CqZjo" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="VPM3Z" id="4bWqD4CrUVe" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3vyZuw" id="4bWqD4CrUVf" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="4bWqD4CrUV5" role="2iSdaV" />
      </node>
      <node concept="l2Vlx" id="4bWqD4CqZjt" role="2iSdaV" />
    </node>
  </node>
  <node concept="2ABfQD" id="4bWqD4CreCC">
    <property role="3GE5qa" value="logical" />
    <property role="TrG5h" value="LogicalValue" />
    <node concept="2BsEeg" id="4bWqD4CreCD" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="EXPRESSION" />
    </node>
  </node>
</model>

