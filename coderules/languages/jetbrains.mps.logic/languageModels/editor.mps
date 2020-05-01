<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5195f849-566d-46a3-bb0a-7ae9911e2652(jetbrains.mps.logic.editor)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="13" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
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
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="ykok" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.constraints(MPS.Core/)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ng" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
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
      <concept id="1196434649611" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_SimpleString" flags="ng" index="2h3Zct">
        <property id="1196434851095" name="text" index="2h4Kg1" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="6089045305654894366" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Default" flags="ng" index="2kknPJ" />
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
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="1177327570013" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Substitute" flags="in" index="ucgPf" />
      <concept id="8478191136883534237" name="jetbrains.mps.lang.editor.structure.IExtensibleSubstituteMenuPart" flags="ng" index="upBLQ">
        <child id="8478191136883534238" name="features" index="upBLP" />
      </concept>
      <concept id="8478191136883534207" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_Selection" flags="ng" index="upBMk">
        <child id="8478191136883534208" name="query" index="upBLF" />
      </concept>
      <concept id="8478191136882577348" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_CreatedNode" flags="ng" index="uqdCJ" />
      <concept id="8478191136882577194" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Select" flags="in" index="uqdF1" />
      <concept id="7991857262589831666" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_prevNode" flags="nn" index="uCyS$" />
      <concept id="1177335944525" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_SubstituteString" flags="in" index="uGdhv" />
      <concept id="4242538589859161874" name="jetbrains.mps.lang.editor.structure.ExplicitHintsSpecification" flags="ng" index="2w$q5c">
        <child id="4242538589859162459" name="hints" index="2w$qW5" />
      </concept>
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="8371900013785948369" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Parameter" flags="ig" index="2$S_p_" />
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
      <concept id="308059530142752797" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Parameterized" flags="ng" index="2F$Pav">
        <child id="8371900013785948359" name="part" index="2$S_pN" />
        <child id="8371900013785948365" name="parameterQuery" index="2$S_pT" />
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
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1235728439575" name="jetbrains.mps.lang.editor.structure.BaseLineCell" flags="ln" index="2R9Tw8" />
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="1149850725784" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedNodeCell" flags="ng" index="2SsqMj" />
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styles" index="V601i" />
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
      <concept id="1630016958697718209" name="jetbrains.mps.lang.editor.structure.IMenuReference_Default" flags="ng" index="2Z_bC8">
        <reference id="1630016958698373342" name="concept" index="2ZyFGn" />
      </concept>
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ng" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
      </concept>
      <concept id="1630016958697286851" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_parameterObject" flags="ng" index="2ZBlsa" />
      <concept id="1630016958697057551" name="jetbrains.mps.lang.editor.structure.IMenuPartParameterized" flags="ng" index="2ZBHr6">
        <child id="1630016958697057552" name="parameterType" index="2ZBHrp" />
      </concept>
      <concept id="1182191800432" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeListFilter" flags="in" index="107P5z" />
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1182233249301" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_childNode" flags="nn" index="12_Ws6" />
      <concept id="1240253180846" name="jetbrains.mps.lang.editor.structure.IndentLayoutNoWrapClassItem" flags="ln" index="34QqEe" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="8998492695583109601" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_CanSubstitute" flags="ig" index="16Na2f" />
      <concept id="8998492695583125082" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_MatchingText" flags="ng" index="16NfWO">
        <child id="8998492695583129244" name="query" index="16NeZM" />
      </concept>
      <concept id="8998492695583129971" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_DescriptionText" flags="ng" index="16NL0t">
        <child id="8998492695583129972" name="query" index="16NL0q" />
      </concept>
      <concept id="8998492695583129991" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_CanSubstitute" flags="ng" index="16NL3D">
        <child id="8998492695583129992" name="query" index="16NL3A" />
      </concept>
      <concept id="1154465273778" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_ParentNode" flags="nn" index="3bvxqY" />
      <concept id="2896773699153795590" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform" flags="ng" index="3cWJ9i">
        <child id="3473224453637651919" name="placeInCell" index="CtIbM" />
      </concept>
      <concept id="7342352913006985483" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Action" flags="ng" index="3eGOop">
        <child id="8612453216082699922" name="substituteHandler" index="3aKz83" />
      </concept>
      <concept id="414384289274424754" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_AddConcept" flags="ng" index="3ft5Ry">
        <reference id="697754674827630451" name="concept" index="4PJHt" />
      </concept>
      <concept id="414384289274418283" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Group" flags="ng" index="3ft6gV">
        <child id="414384289274424750" name="condition" index="3ft5RY" />
        <child id="414384289274424751" name="parts" index="3ft5RZ" />
      </concept>
      <concept id="414384289274418284" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Condition" flags="ig" index="3ft6gW" />
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
      <concept id="3622263992595020489" name="jetbrains.mps.lang.editor.structure.SubstituteMenuItem_DescriptionText_Operation" flags="ng" index="3j5asx" />
      <concept id="3622263992595020491" name="jetbrains.mps.lang.editor.structure.SubstituteMenuItem_OutputConcept_Operation" flags="ng" index="3j5asz" />
      <concept id="3622263992595020486" name="jetbrains.mps.lang.editor.structure.SubstituteMenuItem_MatchingText_Operation" flags="ng" index="3j5asI" />
      <concept id="3622263992592371436" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_WrappedItem" flags="ng" index="3jrdc4" />
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1223387125302" name="jetbrains.mps.lang.editor.structure.QueryFunction_Boolean" flags="in" index="3nzxsE" />
      <concept id="3308396621974580100" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_Default" flags="ng" index="3p36aQ" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1219226236603" name="jetbrains.mps.lang.editor.structure.DrawBracketsStyleClassItem" flags="ln" index="3vyZuw" />
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="7667708318090725848" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentAnchorStyleClassItem" flags="ln" index="1Bsynf" />
      <concept id="7667708318090877006" name="jetbrains.mps.lang.editor.structure.IndentLayoutWrapAnchorStyleClassItem" flags="ln" index="1Bt7hp" />
      <concept id="7991336459489871999" name="jetbrains.mps.lang.editor.structure.IOutputConceptSubstituteMenuPart" flags="ng" index="3EoQpk">
        <reference id="7991336459489872009" name="outputConcept" index="3EoQqy" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="4323500428121274054" name="id" index="2SqHTX" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="4242538589862653897" name="addHints" index="2whIAn" />
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
      <concept id="6684862045052272180" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_NodeToWrap" flags="ng" index="3N4pyC" />
      <concept id="6684862045052059649" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_WrapperHandler" flags="ig" index="3N5aqt" />
      <concept id="6684862045052059291" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Wrapper" flags="ng" index="3N5dw7">
        <child id="6089045305655104958" name="reference" index="2klrvf" />
        <child id="6684862045053873740" name="handler" index="3Na0zg" />
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
      <concept id="2722384699544370949" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Placeholder" flags="ng" index="3VyMlK" />
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
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
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
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
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1180031783296" name="jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation" flags="nn" index="2Zo12i">
        <child id="1180031783297" name="conceptArgument" index="2Zo12j" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="1pt0VTMuXN6">
    <property role="3GE5qa" value="dataform.expression" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmUCq" resolve="DataNodeExpression" />
    <node concept="3EZMnI" id="1pt0VTMv4B6" role="2wV5jI">
      <ref role="1k5W1q" node="7ksQUDZtGfa" resolve="Value" />
      <node concept="1X3_iC" id="2L$SfAAZpKr" role="lGtFl">
        <property role="3V$3am" value="styleItem" />
        <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1219418625346/1219418656006" />
        <node concept="3Xmtl4" id="7ksQUDZx9p7" role="8Wnug">
          <node concept="1wgc9g" id="7ksQUDZx9pr" role="3XvnJa">
            <ref role="1wgcnl" node="7ksQUDZx8O3" resolve="ValueBrackets" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2L$SfABicfA" role="3EZMnx">
        <property role="3F0ifm" value="«" />
        <ref role="1k5W1q" node="2L$SfAAUiQh" resolve="LiteralQuotes" />
        <node concept="VPM3Z" id="2L$SfABitAK" role="3F10Kt" />
        <node concept="11LMrY" id="2L$SfABitwI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="4TI9yUd8aHa" role="3EZMnx">
        <node concept="VPM3Z" id="4TI9yUd8aHc" role="3F10Kt" />
        <node concept="1Bsynf" id="4TI9yUd8aHJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="1Bt7hp" id="4TI9yUd8aHR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F1sOY" id="1pt0VTMv4Bd" role="3EZMnx">
          <ref role="1NtTu8" to="5j4j:6$jH9oLmVNm" resolve="root" />
        </node>
        <node concept="l2Vlx" id="4TI9yUd8aHf" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="2L$SfABicfI" role="3EZMnx">
        <property role="3F0ifm" value="»" />
        <ref role="1k5W1q" node="2L$SfAAUiQh" resolve="LiteralQuotes" />
        <node concept="VPM3Z" id="2L$SfABitAR" role="3F10Kt" />
        <node concept="11L4FC" id="2L$SfABitwK" role="3F10Kt">
          <property role="VOm3f" value="true" />
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
    </node>
  </node>
  <node concept="24kQdi" id="1pt0VTMw5TB">
    <property role="3GE5qa" value="dataform.role" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
    <node concept="3EZMnI" id="1pt0VTMw5TD" role="2wV5jI">
      <node concept="3F0A7n" id="1pt0VTMw5TY" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
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
        <node concept="l2Vlx" id="2L$SfAB6W0l" role="2czzBx" />
        <node concept="3F0ifn" id="3t7_2Fgv2HF" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="empty" />
        </node>
      </node>
      <node concept="2iRfu4" id="2L$SfAB6W0o" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1pt0VTMw7ty">
    <property role="3GE5qa" value="dataform.role" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
    <node concept="3EZMnI" id="1pt0VTMw7t$" role="2wV5jI">
      <node concept="3F0A7n" id="1pt0VTMw7tT" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
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
      </node>
      <node concept="3F2HdR" id="1pt0VTMw7$d" role="3EZMnx">
        <ref role="1NtTu8" to="5j4j:6$jH9oLmYL8" resolve="contents" />
        <node concept="l2Vlx" id="1pt0VTMw7$e" role="2czzBx" />
        <node concept="3F0ifn" id="dfChU1DR3X" role="2czzBI">
          <property role="3F0ifm" value="" />
        </node>
      </node>
      <node concept="2iRfu4" id="2L$SfAB3V2k" role="2iSdaV" />
      <node concept="34QqEe" id="2L$SfAB7zHg" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1pt0VTMw9pG">
    <property role="3GE5qa" value="dataform" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
    <node concept="3EZMnI" id="kTK1BfudHu" role="2wV5jI">
      <node concept="3F0ifn" id="kTK1Bfuec$" role="3EZMnx">
        <property role="3F0ifm" value="'" />
        <node concept="11LMrY" id="kTK1BfusYB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="kTK1BfwkiR" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0A7n" id="1pt0VTMw9vG" role="3EZMnx">
        <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
        <ref role="1NtTu8" to="5j4j:6$jH9oLmYKA" resolve="value" />
        <node concept="VPRnO" id="35Lj3Tim2Yt" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="kTK1BfuecI" role="3EZMnx">
        <property role="3F0ifm" value="'" />
        <node concept="11L4FC" id="kTK1BfusYE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="kTK1Bfwkjy" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="2iRfu4" id="2L$SfAB3HTA" role="2iSdaV" />
    </node>
  </node>
  <node concept="V5hpn" id="1pt0VTMEHm_">
    <property role="TrG5h" value="Logic" />
    <node concept="14StLt" id="1pt0VTMEHmC" role="V601i">
      <property role="TrG5h" value="NodeVariable" />
      <node concept="VechU" id="1pt0VTMEHCC" role="3F10Kt">
        <property role="Vb096" value="fLwANPs/magenta" />
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
      <node concept="1X3_iC" id="2L$SfAASjv4" role="lGtFl">
        <property role="3V$3am" value="styleItem" />
        <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1219418625346/1219418656006" />
        <node concept="30gYXW" id="7ksQUDZtGp4" role="8Wnug">
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
      </node>
      <node concept="1X3_iC" id="2L$SfAAS$xc" role="lGtFl">
        <property role="3V$3am" value="styleItem" />
        <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1219418625346/1219418656006" />
        <node concept="Veino" id="7ksQUDZtGpe" role="8Wnug">
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
    <node concept="14StLt" id="2L$SfAAUiQh" role="V601i">
      <property role="TrG5h" value="LiteralQuotes" />
      <node concept="VechU" id="2L$SfAAUiRW" role="3F10Kt">
        <node concept="mot77" id="2L$SfAAUiS7" role="VblUZ">
          <node concept="3clFbS" id="2L$SfAAUiS8" role="2VODD2">
            <node concept="3clFbF" id="2L$SfAAUiS9" role="3cqZAp">
              <node concept="10M0yZ" id="2L$SfAAUiSa" role="3clFbG">
                <ref role="3cqZAo" node="7LZcKzBF77o" resolve="FG_LOCAL_IDENTIFIER" />
                <ref role="1PxDUh" node="7ksQUDZtHks" resolve="CustomColors" />
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
        <property role="2USNnj" value="gtbM8PH/underlined" />
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
  <node concept="24kQdi" id="6dP_abdQWZZ">
    <property role="3GE5qa" value="dataform" />
    <ref role="1XX52x" to="5j4j:6$jH9oLmYC_" resolve="TermNode" />
    <node concept="3EZMnI" id="kTK1BfuVyd" role="2wV5jI">
      <node concept="3F0ifn" id="kTK1BfuVye" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" node="2L$SfAB7KOq" resolve="OpeningParen" />
      </node>
      <node concept="3F2HdR" id="kTK1BfuVyf" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="5j4j:6$jH9oLnyAp" resolve="role" />
        <node concept="l2Vlx" id="kTK1BfuVyg" role="2czzBx" />
        <node concept="107P5z" id="kTK1BfuVyh" role="12AuX0">
          <node concept="3clFbS" id="kTK1BfuVyi" role="2VODD2">
            <node concept="3clFbF" id="kTK1BfuVyj" role="3cqZAp">
              <node concept="2OqwBi" id="kTK1BfuVyk" role="3clFbG">
                <node concept="12_Ws6" id="kTK1BfuVyl" role="2Oq$k0" />
                <node concept="1mIQ4w" id="kTK1BfuVym" role="2OqNvi">
                  <node concept="chp4Y" id="kTK1BfuVyn" role="cj9EA">
                    <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="kTK1BfuVyp" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="&quot;…&quot;" />
        </node>
        <node concept="4$FPG" id="kTK1BfuVyq" role="4_6I_">
          <node concept="3clFbS" id="kTK1BfuVyr" role="2VODD2">
            <node concept="3clFbF" id="kTK1BfuVys" role="3cqZAp">
              <node concept="2ShNRf" id="kTK1BfuVyt" role="3clFbG">
                <node concept="2fJWfE" id="kTK1BfuVyu" role="2ShVmc">
                  <node concept="3Tqbb2" id="kTK1BfuVyv" role="3zrR0E">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F2HdR" id="kTK1BfuVy$" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <property role="S$F3r" value="false" />
        <ref role="1NtTu8" to="5j4j:6$jH9oLnyAp" resolve="role" />
        <node concept="l2Vlx" id="kTK1BfuVy_" role="2czzBx" />
        <node concept="107P5z" id="kTK1BfuVyT" role="12AuX0">
          <node concept="3clFbS" id="kTK1BfuVyU" role="2VODD2">
            <node concept="3clFbF" id="kTK1BfuVyV" role="3cqZAp">
              <node concept="3fqX7Q" id="428_4iY4X3P" role="3clFbG">
                <node concept="2OqwBi" id="428_4iY4X3R" role="3fr31v">
                  <node concept="12_Ws6" id="428_4iY4X3S" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="428_4iY4X3T" role="2OqNvi">
                    <node concept="chp4Y" id="428_4iY4Xta" role="cj9EA">
                      <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="kTK1BfuVz0" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="&lt;…&gt;" />
          <node concept="34QqEe" id="2L$SfAB6wYl" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="4$FPG" id="2L$SfAAUwFd" role="4_6I_">
          <node concept="3clFbS" id="2L$SfAAUwFe" role="2VODD2">
            <node concept="3clFbF" id="2L$SfAAUwFq" role="3cqZAp">
              <node concept="2ShNRf" id="2L$SfAAUwFo" role="3clFbG">
                <node concept="2fJWfE" id="2L$SfAAUQnc" role="2ShVmc">
                  <node concept="3Tqbb2" id="2L$SfAAUQne" role="3zrR0E">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="kTK1BfuVz7" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" node="2L$SfAB7KQd" resolve="ClosingParen" />
      </node>
      <node concept="l2Vlx" id="kTK1BfuVz9" role="2iSdaV" />
      <node concept="2w$q5c" id="kTK1BfuVza" role="2whIAn" />
      <node concept="VPM3Z" id="kTK1BfwwNl" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2q_78a8W4FU">
    <property role="3GE5qa" value="dataform" />
    <ref role="1XX52x" to="5j4j:2q_78a8W4yS" resolve="Wildcard" />
    <node concept="3EZMnI" id="2q_78a9c7Qy" role="2wV5jI">
      <node concept="3F0ifn" id="2q_78a9c7Sl" role="3EZMnx">
        <property role="3F0ifm" value="_" />
        <ref role="1k5W1q" to="tpen:hFD0yD_" resolve="VariableName" />
      </node>
      <node concept="l2Vlx" id="2q_78a9c7Q_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7E86$tKtiJM">
    <property role="3GE5qa" value="logical.variable" />
    <ref role="1XX52x" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
    <node concept="3EZMnI" id="2E5lcNn2Yfo" role="2wV5jI">
      <node concept="l2Vlx" id="2E5lcNn2Yfr" role="2iSdaV" />
      <node concept="3F0A7n" id="2E5lcNn2YOJ" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="1iWwVK2B1it" resolve="Logical" />
      </node>
      <node concept="3EZMnI" id="5f6wxQ3yfj9" role="3EZMnx">
        <node concept="VPM3Z" id="5f6wxQ3yfja" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="5f6wxQ3yfjb" role="2iSdaV" />
        <node concept="3F0ifn" id="5f6wxQ3yfjc" role="3EZMnx">
          <property role="3F0ifm" value="[" />
          <ref role="1k5W1q" to="tpen:hXb$RYA" resolve="LeftBracket" />
          <node concept="Vb9p2" id="5f6wxQ3yfjd" role="3F10Kt">
            <property role="Vbekb" value="g1_k_vY/BOLD" />
          </node>
          <node concept="11L4FC" id="5f6wxQ3yfje" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="5f6wxQ3yhtj" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="5f6wxQ3yfjf" role="3EZMnx">
          <ref role="1NtTu8" to="5j4j:5f6wxQ3ychO" resolve="cardinalityExpr" />
          <node concept="2w$q5c" id="5f6wxQ3yfjg" role="3xwHhi">
            <node concept="2aJ2om" id="5f6wxQ3yfjh" role="2w$qW5">
              <ref role="2$4xQ3" node="4bWqD4CreCD" resolve="EXPRESSION" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="5f6wxQ3yfji" role="3EZMnx">
          <property role="3F0ifm" value="]" />
          <ref role="1k5W1q" to="tpen:hXb$V4T" resolve="RightBracket" />
          <node concept="Vb9p2" id="5f6wxQ3yfjj" role="3F10Kt">
            <property role="Vbekb" value="g1_k_vY/BOLD" />
          </node>
          <node concept="11L4FC" id="5f6wxQ3yhtr" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="pkWqt" id="5f6wxQ3yfjk" role="pqm2j">
          <node concept="3clFbS" id="5f6wxQ3yfjl" role="2VODD2">
            <node concept="3clFbF" id="5f6wxQ3yfjm" role="3cqZAp">
              <node concept="2OqwBi" id="5f6wxQ3ygCc" role="3clFbG">
                <node concept="2OqwBi" id="5f6wxQ3yfjn" role="2Oq$k0">
                  <node concept="pncrf" id="5f6wxQ3yfjp" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5f6wxQ3ygdk" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:5f6wxQ3ychO" resolve="cardinalityExpr" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5f6wxQ3yh3V" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7E86$tK_Puj">
    <property role="3GE5qa" value="logical.variable" />
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
      <node concept="3EZMnI" id="5f6wxQ3pofa" role="3EZMnx">
        <node concept="VPM3Z" id="5f6wxQ3pofb" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="5f6wxQ3pofc" role="3EZMnx">
          <property role="3F0ifm" value="[" />
          <node concept="11L4FC" id="5f6wxQ3pofd" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="5f6wxQ3pofe" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="5f6wxQ3poff" role="3F10Kt">
            <property role="Vbekb" value="g1_k_vY/BOLD" />
          </node>
        </node>
        <node concept="3F1sOY" id="5f6wxQ3pofg" role="3EZMnx">
          <ref role="1NtTu8" to="5j4j:5f6wxQ3pnWr" resolve="indexExpr" />
          <node concept="2w$q5c" id="5f6wxQ3pofh" role="3xwHhi">
            <node concept="2aJ2om" id="5f6wxQ3pofi" role="2w$qW5">
              <ref role="2$4xQ3" node="4bWqD4CreCD" resolve="EXPRESSION" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="5f6wxQ3pqC1" role="3EZMnx">
          <property role="3F0ifm" value="]" />
          <node concept="11L4FC" id="5f6wxQ3pqMZ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="5f6wxQ3pqN1" role="3F10Kt">
            <property role="Vbekb" value="g1_k_vY/BOLD" />
          </node>
        </node>
        <node concept="l2Vlx" id="5f6wxQ3pofj" role="2iSdaV" />
        <node concept="pkWqt" id="5f6wxQ3pofk" role="pqm2j">
          <node concept="3clFbS" id="5f6wxQ3pofl" role="2VODD2">
            <node concept="3clFbF" id="5f6wxQ3pofm" role="3cqZAp">
              <node concept="2OqwBi" id="5f6wxQ3pofn" role="3clFbG">
                <node concept="2OqwBi" id="5f6wxQ3pofo" role="2Oq$k0">
                  <node concept="pncrf" id="5f6wxQ3pofp" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5f6wxQ3qlcr" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:5f6wxQ3pnWr" resolve="indexExpr" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5f6wxQ3ppDS" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="6p0DfM0eyCU" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1mP5b6jNJde">
    <property role="3GE5qa" value="logical.type" />
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
    <property role="3GE5qa" value="dataform.attribute" />
    <ref role="1XX52x" to="5j4j:dfChU1zo4B" resolve="Splice" />
    <node concept="3EZMnI" id="dfChU1zop0" role="2wV5jI">
      <ref role="1k5W1q" node="7ksQUDZuyMD" resolve="Backquote" />
      <node concept="3F0ifn" id="dfChU1zop1" role="3EZMnx">
        <property role="3F0ifm" value="»" />
        <ref role="1k5W1q" to="tpen:75A9veqzBnk" resolve="AnyBracket" />
        <node concept="VPM3Z" id="2L$SfAAU4UI" role="3F10Kt" />
        <node concept="11LMrY" id="dfChU1zop2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VechU" id="4kX17XeTdVw" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
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
        <node concept="VPM3Z" id="2L$SfAAU4Uy" role="3F10Kt" />
        <node concept="11L4FC" id="dfChU1zop7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="6SKZg6H3umA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VechU" id="4kX17XeTdV$" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
          <node concept="1iSF2X" id="7LZcKzB$q$C" role="VblUZ">
            <property role="1iTho6" value="808080" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="7LZcKzB__08" role="3EZMnx">
        <node concept="VPM3Z" id="7LZcKzB__0a" role="3F10Kt">
          <property role="VOm3f" value="false" />
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
                      <node concept="3n3YKJ" id="2L$SfAASSNv" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="VPM3Z" id="2L$SfAAU4Uj" role="3F10Kt" />
            <node concept="VPxyj" id="2L$SfAAU4Uo" role="3F10Kt" />
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
          <node concept="l2Vlx" id="1OShD0HxxT6" role="2iSdaV" />
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
            <property role="1lJzqX" value="4" />
          </node>
          <node concept="2R9Tw8" id="2L$SfAATnD7" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="dfChU1zopa" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1OShD0HAZ4h">
    <property role="3GE5qa" value="dataform" />
    <ref role="1XX52x" to="5j4j:1OShD0HAY6y" resolve="ListNode" />
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
        <node concept="3mYdg7" id="2L$SfAB4nT6" role="3F10Kt">
          <property role="1413C4" value="list" />
        </node>
      </node>
      <node concept="3F2HdR" id="1OShD0HAZmM" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="5j4j:1OShD0HAZ38" resolve="contents" />
        <node concept="l2Vlx" id="1OShD0HAZmN" role="2czzBx" />
        <node concept="3F0ifn" id="1OShD0HAZmR" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="empty" />
        </node>
        <node concept="tppnM" id="2L$SfAAVkH0" role="sWeuL">
          <node concept="ljvvj" id="2L$SfAAVkH2" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="2L$SfAAVkH4" role="3n$kyP">
              <node concept="3clFbS" id="2L$SfAAVkH5" role="2VODD2">
                <node concept="3clFbF" id="2L$SfAAVkHk" role="3cqZAp">
                  <node concept="2OqwBi" id="2L$SfAAVlCz" role="3clFbG">
                    <node concept="2OqwBi" id="2L$SfAAVkTN" role="2Oq$k0">
                      <node concept="uCyS$" id="2L$SfAAVkHj" role="2Oq$k0" />
                      <node concept="3CFZ6_" id="2L$SfAAVl9l" role="2OqNvi">
                        <node concept="3CFYIy" id="2L$SfAAVlqg" role="3CFYIz">
                          <ref role="3CFYIx" to="5j4j:2L$SfAAUQEl" resolve="NewLineAttribute" />
                        </node>
                      </node>
                    </node>
                    <node concept="3x8VRR" id="2L$SfAAVmpJ" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lj46D" id="2L$SfABahMD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1OShD0HAZmS" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <ref role="1k5W1q" to="tpen:hXb$V4T" resolve="RightBracket" />
        <node concept="11L4FC" id="1OShD0HAZmT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3mYdg7" id="2L$SfAB4nTe" role="3F10Kt">
          <property role="1413C4" value="list" />
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
    <node concept="2tJIrI" id="4bWqD4C2Vzp" role="jymVt" />
    <node concept="Wx3nA" id="4bWqD4C2Vnd" role="jymVt">
      <property role="TrG5h" value="FG_PARAMETER" />
      <node concept="3Tm1VV" id="4bWqD4C2Vne" role="1B3o_S" />
      <node concept="3uibUv" id="4bWqD4C2Vnf" role="1tU5fm">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="4bWqD4C2Vng" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="4bWqD4C2Vnh" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="2ShNRf" id="4bWqD4C2Vni" role="33vP2m">
        <node concept="1pGfFk" id="4bWqD4C2Vnj" role="2ShVmc">
          <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
          <node concept="3uibUv" id="4bWqD4C2Vnm" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="3uibUv" id="4bWqD4C2Vnn" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="37vLTw" id="5yqFHXow7dl" role="37wK5m">
            <ref role="3cqZAo" node="4aJUH_hXiM0" resolve="PURPLE" />
          </node>
          <node concept="37vLTw" id="5yqFHXow7f5" role="37wK5m">
            <ref role="3cqZAo" node="4aJUH_hXiLO" resolve="IRIS" />
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
    <node concept="Wx3nA" id="4bWqD4C7sc7" role="jymVt">
      <property role="TrG5h" value="FG_TERM" />
      <node concept="3Tm1VV" id="4bWqD4C7sc8" role="1B3o_S" />
      <node concept="3uibUv" id="4bWqD4C7sc9" role="1tU5fm">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="4bWqD4C7sca" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="4bWqD4C7scb" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="2ShNRf" id="4bWqD4C7scc" role="33vP2m">
        <node concept="1pGfFk" id="4bWqD4C7scd" role="2ShVmc">
          <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
          <node concept="3uibUv" id="4bWqD4C7sce" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="3uibUv" id="4bWqD4C7scf" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="37vLTw" id="5yqFHXow8xM" role="37wK5m">
            <ref role="3cqZAo" node="4bWqD4C3iOy" resolve="SAPPHIRE" />
          </node>
          <node concept="37vLTw" id="5yqFHXow8zy" role="37wK5m">
            <ref role="3cqZAo" node="4bWqD4C3iOm" resolve="OCEAN" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5yqFHXow7Br" role="jymVt" />
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
    <node concept="2tJIrI" id="4aJUH_hW484" role="jymVt" />
    <node concept="Wx3nA" id="7ksQUDZq4Xq" role="jymVt">
      <property role="TrG5h" value="LAKE" />
      <node concept="3Tm1VV" id="7ksQUDZq4Xr" role="1B3o_S" />
      <node concept="3uibUv" id="7ksQUDZq4Xs" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="7ksQUDZq4Xt" role="33vP2m">
        <node concept="1pGfFk" id="7ksQUDZq4Xu" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="7LZcKzBF6aa" role="37wK5m">
            <property role="2noCCI" value="ED" />
          </node>
          <node concept="2nou5x" id="7LZcKzBF6dW" role="37wK5m">
            <property role="2noCCI" value="FC" />
          </node>
          <node concept="2nou5x" id="7LZcKzBF6l9" role="37wK5m">
            <property role="2noCCI" value="ED" />
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
          <node concept="2nou5x" id="7LZcKzBF6z7" role="37wK5m">
            <property role="2noCCI" value="34" />
          </node>
          <node concept="2nou5x" id="7LZcKzBF6AT" role="37wK5m">
            <property role="2noCCI" value="41" />
          </node>
          <node concept="2nou5x" id="7LZcKzBF6EF" role="37wK5m">
            <property role="2noCCI" value="35" />
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
    <node concept="Wx3nA" id="7LZcKzBExMT" role="jymVt">
      <property role="TrG5h" value="BG_INJECTED_FRAGMENT" />
      <node concept="3Tm1VV" id="7LZcKzBExOS" role="1B3o_S" />
      <node concept="3uibUv" id="7LZcKzBExPz" role="1tU5fm">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="7LZcKzBExQn" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="7LZcKzBExRV" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="2ShNRf" id="7LZcKzBExWk" role="33vP2m">
        <node concept="1pGfFk" id="7LZcKzBF5D7" role="2ShVmc">
          <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
          <node concept="37vLTw" id="7LZcKzBF5V4" role="37wK5m">
            <ref role="3cqZAo" node="7ksQUDZq4Xq" resolve="LAKE" />
          </node>
          <node concept="37vLTw" id="7LZcKzBF5Yn" role="37wK5m">
            <ref role="3cqZAo" node="7ksQUDZq54u" resolve="SWAMP" />
          </node>
          <node concept="3uibUv" id="7LZcKzBF5JO" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="3uibUv" id="7LZcKzBF5Qt" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7LZcKzBExEj" role="jymVt" />
    <node concept="Wx3nA" id="1iWwVK2_wic" role="jymVt">
      <property role="TrG5h" value="BEETROOT" />
      <node concept="3Tm1VV" id="1iWwVK2_wid" role="1B3o_S" />
      <node concept="3uibUv" id="1iWwVK2_wie" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="1iWwVK2_wif" role="33vP2m">
        <node concept="1pGfFk" id="1iWwVK2_wig" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="1iWwVK2_wih" role="37wK5m">
            <property role="2noCCI" value="7F" />
          </node>
          <node concept="2nou5x" id="1iWwVK2_wii" role="37wK5m">
            <property role="2noCCI" value="00" />
          </node>
          <node concept="2nou5x" id="1iWwVK2_wij" role="37wK5m">
            <property role="2noCCI" value="00" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="1iWwVK2_wik" role="lGtFl">
        <node concept="TZ5HA" id="1iWwVK2_wil" role="TZ5H$">
          <node concept="1dT_AC" id="1iWwVK2_wim" role="1dT_Ay">
            <property role="1dT_AB" value="FG for template variable, default scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7LZcKzBFlFB" role="jymVt" />
    <node concept="Wx3nA" id="7LZcKzBFlBy" role="jymVt">
      <property role="TrG5h" value="ROSE" />
      <node concept="3Tm1VV" id="7LZcKzBFlBz" role="1B3o_S" />
      <node concept="3uibUv" id="7LZcKzBFlB$" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="7LZcKzBFlB_" role="33vP2m">
        <node concept="1pGfFk" id="7LZcKzBFlBA" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="7LZcKzBFlBB" role="37wK5m">
            <property role="2noCCI" value="AE" />
          </node>
          <node concept="2nou5x" id="7LZcKzBFlBC" role="37wK5m">
            <property role="2noCCI" value="8A" />
          </node>
          <node concept="2nou5x" id="7LZcKzBFlBD" role="37wK5m">
            <property role="2noCCI" value="BE" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="7LZcKzBFlBE" role="lGtFl">
        <node concept="TZ5HA" id="7LZcKzBFlBF" role="TZ5H$">
          <node concept="1dT_AC" id="7LZcKzBFlBG" role="1dT_Ay">
            <property role="1dT_AB" value="FG for template variable, dark scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7LZcKzBF7vP" role="jymVt" />
    <node concept="Wx3nA" id="7LZcKzBFlL2" role="jymVt">
      <property role="TrG5h" value="FG_TEMPLATE_VARIABLE" />
      <node concept="3Tm1VV" id="7LZcKzBFlL3" role="1B3o_S" />
      <node concept="3uibUv" id="7LZcKzBFlL4" role="1tU5fm">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="7LZcKzBFlL5" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="7LZcKzBFlL6" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="2ShNRf" id="7LZcKzBFlL7" role="33vP2m">
        <node concept="1pGfFk" id="7LZcKzBFlL8" role="2ShVmc">
          <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
          <node concept="37vLTw" id="1iWwVK2_E0N" role="37wK5m">
            <ref role="3cqZAo" node="1iWwVK2_wic" resolve="BEETROOT" />
          </node>
          <node concept="37vLTw" id="7LZcKzBFmem" role="37wK5m">
            <ref role="3cqZAo" node="7LZcKzBFlBy" resolve="ROSE" />
          </node>
          <node concept="3uibUv" id="7LZcKzBFlLb" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="3uibUv" id="7LZcKzBFlLc" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2CEQDIDT_Xu" role="jymVt" />
    <node concept="Wx3nA" id="7LZcKzBFlnm" role="jymVt">
      <property role="TrG5h" value="BLUE" />
      <node concept="3Tm1VV" id="7LZcKzBFlnn" role="1B3o_S" />
      <node concept="3uibUv" id="7LZcKzBFlno" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="7LZcKzBFlnp" role="33vP2m">
        <node concept="1pGfFk" id="7LZcKzBFlnq" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="7LZcKzBFlnr" role="37wK5m">
            <property role="2noCCI" value="00" />
          </node>
          <node concept="2nou5x" id="7LZcKzBFlns" role="37wK5m">
            <property role="2noCCI" value="00" />
          </node>
          <node concept="2nou5x" id="7LZcKzBFlnt" role="37wK5m">
            <property role="2noCCI" value="FF" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="7LZcKzBFlnu" role="lGtFl">
        <node concept="TZ5HA" id="7LZcKzBFlnv" role="TZ5H$">
          <node concept="1dT_AC" id="7LZcKzBFlnw" role="1dT_Ay">
            <property role="1dT_AB" value="FG for CSS property, default scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iWwVK2_wWr" role="jymVt" />
    <node concept="Wx3nA" id="1iWwVK2_wWg" role="jymVt">
      <property role="TrG5h" value="BRIGHTGRAY" />
      <node concept="3Tm1VV" id="1iWwVK2_wWh" role="1B3o_S" />
      <node concept="3uibUv" id="1iWwVK2_wWi" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="1iWwVK2_wWj" role="33vP2m">
        <node concept="1pGfFk" id="1iWwVK2_wWk" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="1iWwVK2_wWl" role="37wK5m">
            <property role="2noCCI" value="BA" />
          </node>
          <node concept="2nou5x" id="1iWwVK2_wWm" role="37wK5m">
            <property role="2noCCI" value="BA" />
          </node>
          <node concept="2nou5x" id="1iWwVK2_wWn" role="37wK5m">
            <property role="2noCCI" value="BA" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="1iWwVK2_wWo" role="lGtFl">
        <node concept="TZ5HA" id="1iWwVK2_wWp" role="TZ5H$">
          <node concept="1dT_AC" id="1iWwVK2_wWq" role="1dT_Ay">
            <property role="1dT_AB" value="FG for CSS property, dark scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iWwVK2_wds" role="jymVt" />
    <node concept="Wx3nA" id="1iWwVK2_x2l" role="jymVt">
      <property role="TrG5h" value="FG_PROPERTY_NAME" />
      <node concept="3Tm1VV" id="1iWwVK2_x2m" role="1B3o_S" />
      <node concept="3uibUv" id="1iWwVK2_x2n" role="1tU5fm">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="1iWwVK2_x2o" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="1iWwVK2_x2p" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="2ShNRf" id="1iWwVK2_x2q" role="33vP2m">
        <node concept="1pGfFk" id="1iWwVK2_x2r" role="2ShVmc">
          <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
          <node concept="37vLTw" id="1iWwVK2_DTk" role="37wK5m">
            <ref role="3cqZAo" node="7LZcKzBFlnm" resolve="BLUE" />
          </node>
          <node concept="37vLTw" id="1iWwVK2_xse" role="37wK5m">
            <ref role="3cqZAo" node="1iWwVK2_wWg" resolve="BRIGHTGRAY" />
          </node>
          <node concept="3uibUv" id="1iWwVK2_x2u" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="3uibUv" id="1iWwVK2_x2v" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iWwVK2_wfA" role="jymVt" />
    <node concept="Wx3nA" id="1iWwVK2_Ba9" role="jymVt">
      <property role="TrG5h" value="DARKGREEN" />
      <node concept="3Tm1VV" id="1iWwVK2_Baa" role="1B3o_S" />
      <node concept="3uibUv" id="1iWwVK2_Bab" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="1iWwVK2_Bac" role="33vP2m">
        <node concept="1pGfFk" id="1iWwVK2_Bad" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="1iWwVK2_Bae" role="37wK5m">
            <property role="2noCCI" value="00" />
          </node>
          <node concept="2nou5x" id="1iWwVK2_Baf" role="37wK5m">
            <property role="2noCCI" value="80" />
          </node>
          <node concept="2nou5x" id="1iWwVK2_Bag" role="37wK5m">
            <property role="2noCCI" value="00" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="1iWwVK2_Bah" role="lGtFl">
        <node concept="TZ5HA" id="1iWwVK2_Bai" role="TZ5H$">
          <node concept="1dT_AC" id="1iWwVK2_Baj" role="1dT_Ay">
            <property role="1dT_AB" value="FG for CSS property value, default scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iWwVK2_Ba8" role="jymVt" />
    <node concept="Wx3nA" id="1iWwVK2_Byu" role="jymVt">
      <property role="TrG5h" value="CURRY" />
      <node concept="3Tm1VV" id="1iWwVK2_Byv" role="1B3o_S" />
      <node concept="3uibUv" id="1iWwVK2_Byw" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="1iWwVK2_Byx" role="33vP2m">
        <node concept="1pGfFk" id="1iWwVK2_Byy" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="1iWwVK2_Byz" role="37wK5m">
            <property role="2noCCI" value="E8" />
          </node>
          <node concept="2nou5x" id="1iWwVK2_By$" role="37wK5m">
            <property role="2noCCI" value="BF" />
          </node>
          <node concept="2nou5x" id="1iWwVK2_By_" role="37wK5m">
            <property role="2noCCI" value="6A" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="1iWwVK2_ByA" role="lGtFl">
        <node concept="TZ5HA" id="1iWwVK2_ByB" role="TZ5H$">
          <node concept="1dT_AC" id="1iWwVK2_ByC" role="1dT_Ay">
            <property role="1dT_AB" value="FG for CSS identifier, dark scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iWwVK2_Byt" role="jymVt" />
    <node concept="Wx3nA" id="1iWwVK2_CSV" role="jymVt">
      <property role="TrG5h" value="FG_KEYWORD" />
      <node concept="3Tm1VV" id="1iWwVK2_CSW" role="1B3o_S" />
      <node concept="3uibUv" id="1iWwVK2_CSX" role="1tU5fm">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="1iWwVK2_CSY" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="1iWwVK2_CSZ" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="2ShNRf" id="1iWwVK2_CT0" role="33vP2m">
        <node concept="1pGfFk" id="1iWwVK2_CT1" role="2ShVmc">
          <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
          <node concept="37vLTw" id="1iWwVK2_DJn" role="37wK5m">
            <ref role="3cqZAo" node="1iWwVK2_Ba9" resolve="DARKGREEN" />
          </node>
          <node concept="37vLTw" id="1iWwVK2_DOn" role="37wK5m">
            <ref role="3cqZAo" node="1iWwVK2_Byu" resolve="CURRY" />
          </node>
          <node concept="3uibUv" id="1iWwVK2_CT4" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="3uibUv" id="1iWwVK2_CT5" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="4aJUH_hW4Mc" role="jymVt">
      <property role="TrG5h" value="DARKGRAY" />
      <node concept="3Tm1VV" id="4aJUH_hW4Md" role="1B3o_S" />
      <node concept="3uibUv" id="4aJUH_hW4Me" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="4aJUH_hW4Mf" role="33vP2m">
        <node concept="1pGfFk" id="4aJUH_hW4Mg" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="4aJUH_hW4Mh" role="37wK5m">
            <property role="2noCCI" value="3D" />
          </node>
          <node concept="2nou5x" id="4aJUH_hW4Mi" role="37wK5m">
            <property role="2noCCI" value="3D" />
          </node>
          <node concept="2nou5x" id="4aJUH_hW4Mj" role="37wK5m">
            <property role="2noCCI" value="3D" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="4aJUH_hW4Mk" role="lGtFl">
        <node concept="TZ5HA" id="4aJUH_hW4Ml" role="TZ5H$">
          <node concept="1dT_AC" id="4aJUH_hW4Mm" role="1dT_Ay">
            <property role="1dT_AB" value="FG for Doc comment tag, default scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4aJUH_hW4Mb" role="jymVt" />
    <node concept="Wx3nA" id="4aJUH_hW4M0" role="jymVt">
      <property role="TrG5h" value="BRICK" />
      <node concept="3Tm1VV" id="4aJUH_hW4M1" role="1B3o_S" />
      <node concept="3uibUv" id="4aJUH_hW4M2" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="4aJUH_hW4M3" role="33vP2m">
        <node concept="1pGfFk" id="4aJUH_hW4M4" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="4aJUH_hW4M5" role="37wK5m">
            <property role="2noCCI" value="8A" />
          </node>
          <node concept="2nou5x" id="4aJUH_hW4M6" role="37wK5m">
            <property role="2noCCI" value="65" />
          </node>
          <node concept="2nou5x" id="4aJUH_hW4M7" role="37wK5m">
            <property role="2noCCI" value="3B" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="4aJUH_hW4M8" role="lGtFl">
        <node concept="TZ5HA" id="4aJUH_hW4M9" role="TZ5H$">
          <node concept="1dT_AC" id="4aJUH_hW4Ma" role="1dT_Ay">
            <property role="1dT_AB" value="BG for Doc comment tag, dark scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4aJUH_hW4LZ" role="jymVt" />
    <node concept="Wx3nA" id="4aJUH_hW4LO" role="jymVt">
      <property role="TrG5h" value="FG_TAG" />
      <node concept="3Tm1VV" id="4aJUH_hW4LP" role="1B3o_S" />
      <node concept="3uibUv" id="4aJUH_hW4LQ" role="1tU5fm">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="4aJUH_hW4LR" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="4aJUH_hW4LS" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="2ShNRf" id="4aJUH_hW4LT" role="33vP2m">
        <node concept="1pGfFk" id="4aJUH_hW4LU" role="2ShVmc">
          <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
          <node concept="37vLTw" id="4aJUH_hW5oI" role="37wK5m">
            <ref role="3cqZAo" node="4aJUH_hW4Mc" resolve="DARKGRAY" />
          </node>
          <node concept="37vLTw" id="4aJUH_hW5s8" role="37wK5m">
            <ref role="3cqZAo" node="4aJUH_hW4M0" resolve="BRICK" />
          </node>
          <node concept="3uibUv" id="4aJUH_hW4LX" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="3uibUv" id="4aJUH_hW4LY" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4aJUH_hWVXT" role="jymVt" />
    <node concept="Wx3nA" id="4aJUH_hWVXI" role="jymVt">
      <property role="TrG5h" value="CERULEAN" />
      <node concept="3Tm1VV" id="4aJUH_hWVXJ" role="1B3o_S" />
      <node concept="3uibUv" id="4aJUH_hWVXK" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="4aJUH_hWVXL" role="33vP2m">
        <node concept="1pGfFk" id="4aJUH_hWVXM" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="4aJUH_hWVXN" role="37wK5m">
            <property role="2noCCI" value="4A" />
          </node>
          <node concept="2nou5x" id="4aJUH_hWVXO" role="37wK5m">
            <property role="2noCCI" value="86" />
          </node>
          <node concept="2nou5x" id="4aJUH_hWVXP" role="37wK5m">
            <property role="2noCCI" value="E8" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="4aJUH_hWVXQ" role="lGtFl">
        <node concept="TZ5HA" id="4aJUH_hWVXR" role="TZ5H$">
          <node concept="1dT_AC" id="4aJUH_hWVXS" role="1dT_Ay">
            <property role="1dT_AB" value="FG for Kotlin Named argument, default scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4aJUH_hWVXH" role="jymVt" />
    <node concept="Wx3nA" id="4aJUH_hWVXy" role="jymVt">
      <property role="TrG5h" value="COBALT" />
      <node concept="3Tm1VV" id="4aJUH_hWVXz" role="1B3o_S" />
      <node concept="3uibUv" id="4aJUH_hWVX$" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="4aJUH_hWVX_" role="33vP2m">
        <node concept="1pGfFk" id="4aJUH_hWVXA" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="4aJUH_hWVXB" role="37wK5m">
            <property role="2noCCI" value="46" />
          </node>
          <node concept="2nou5x" id="4aJUH_hWVXC" role="37wK5m">
            <property role="2noCCI" value="7C" />
          </node>
          <node concept="2nou5x" id="4aJUH_hWVXD" role="37wK5m">
            <property role="2noCCI" value="DA" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="4aJUH_hWVXE" role="lGtFl">
        <node concept="TZ5HA" id="4aJUH_hWVXF" role="TZ5H$">
          <node concept="1dT_AC" id="4aJUH_hWVXG" role="1dT_Ay">
            <property role="1dT_AB" value="BG for Kotlin Named argument, dark scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4aJUH_hWVXx" role="jymVt" />
    <node concept="Wx3nA" id="4aJUH_hWVXm" role="jymVt">
      <property role="TrG5h" value="FG_OPTIONAL" />
      <node concept="3Tm1VV" id="4aJUH_hWVXn" role="1B3o_S" />
      <node concept="3uibUv" id="4aJUH_hWVXo" role="1tU5fm">
        <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
        <node concept="3uibUv" id="4aJUH_hWVXp" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="3uibUv" id="4aJUH_hWVXq" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="2ShNRf" id="4aJUH_hWVXr" role="33vP2m">
        <node concept="1pGfFk" id="4aJUH_hWVXs" role="2ShVmc">
          <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
          <node concept="37vLTw" id="4aJUH_hWWwd" role="37wK5m">
            <ref role="3cqZAo" node="4aJUH_hWVXI" resolve="CERULEAN" />
          </node>
          <node concept="37vLTw" id="4aJUH_hWWzD" role="37wK5m">
            <ref role="3cqZAo" node="4aJUH_hWVXy" resolve="COBALT" />
          </node>
          <node concept="3uibUv" id="4aJUH_hWVXv" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="3uibUv" id="4aJUH_hWVXw" role="1pMfVU">
            <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4bWqD4C7rFE" role="jymVt" />
  </node>
  <node concept="IW6AY" id="4hPXq9Jm69G">
    <property role="3GE5qa" value="logical.variable" />
    <ref role="aqKnT" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
    <node concept="1Qtc8_" id="4hPXq9Jm69H" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm69I" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm69J" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="4hPXq9Jm69K" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="4hPXq9Jm69L" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="4hPXq9Jm69O" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm69M" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm69N" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="7XmdqtdOVNH" role="1Qtc8A">
        <node concept="1hCUdq" id="7XmdqtdOVNJ" role="1hCUd6">
          <node concept="3clFbS" id="7XmdqtdOVNL" role="2VODD2">
            <node concept="3clFbF" id="7XmdqtdOWrG" role="3cqZAp">
              <node concept="Xl_RD" id="7XmdqtdOWrF" role="3clFbG">
                <property role="Xl_RC" value="[" />
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
                  <node concept="3TrEf2" id="5f6wxQ3prR7" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:5f6wxQ3pnWr" resolve="indexExpr" />
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
                    <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
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
                  <node concept="3TrEf2" id="5f6wxQ3pro4" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:5f6wxQ3pnWr" resolve="indexExpr" />
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
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="4hPXq9Jm6at" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="4hPXq9Jm6au" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="4hPXq9Jm6ax" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm6av" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm6aw" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
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
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="4hPXq9Jm6aL" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="4hPXq9Jm6aM" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="4hPXq9Jm6aP" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm6aN" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm6aO" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
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
  <node concept="IW6AY" id="4hPXq9Jm6cb">
    <property role="3GE5qa" value="logical.type" />
    <ref role="aqKnT" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
    <node concept="1Qtc8_" id="4hPXq9Jm6cc" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm6cd" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm6ce" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="4hPXq9Jm6cf" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="4hPXq9Jm6cg" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="4hPXq9Jm6cj" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm6ch" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm6ci" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
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
                      <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
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
    <property role="3GE5qa" value="logical.variable" />
    <ref role="aqKnT" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
    <node concept="1Qtc8_" id="4hPXq9Jm6cT" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm6cU" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm6cV" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="4hPXq9Jm6cW" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="4hPXq9Jm6cX" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="4hPXq9Jm6d0" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jm6cY" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jm6cZ" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="aenpk" id="4hPXq9Jm6d2" role="1Qtc8A">
        <node concept="27VH4U" id="4hPXq9Jm6d3" role="aenpu">
          <node concept="3clFbS" id="4hPXq9Jm6d4" role="2VODD2">
            <node concept="3clFbF" id="4hPXq9Jm6d5" role="3cqZAp">
              <node concept="2OqwBi" id="4hPXq9Jm6d6" role="3clFbG">
                <node concept="2OqwBi" id="4hPXq9Jm6d7" role="2Oq$k0">
                  <node concept="7Obwk" id="4hPXq9Jm6db" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5f6wxQ3yibG" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:5f6wxQ3ychO" resolve="cardinalityExpr" />
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
                    <node concept="3TrEf2" id="5f6wxQ3yhLk" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:5f6wxQ3ychO" resolve="cardinalityExpr" />
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
                      <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
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
  <node concept="2ABfQD" id="4bWqD4CreCC">
    <property role="3GE5qa" value="logical" />
    <property role="TrG5h" value="LogicalValue" />
    <node concept="2BsEeg" id="4bWqD4CreCD" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="EXPRESSION" />
    </node>
  </node>
  <node concept="24kQdi" id="5WBVN_MPIur">
    <property role="3GE5qa" value="logical.item" />
    <ref role="1XX52x" to="5j4j:5WBVN_MESCN" resolve="DataNodeLiteral" />
    <node concept="3EZMnI" id="5WBVN_MPIuK" role="2wV5jI">
      <ref role="1k5W1q" node="7ksQUDZtGfa" resolve="Value" />
      <node concept="1X3_iC" id="2L$SfAATDnX" role="lGtFl">
        <property role="3V$3am" value="styleItem" />
        <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1219418625346/1219418656006" />
        <node concept="3Xmtl4" id="5WBVN_MPIuL" role="8Wnug">
          <node concept="1wgc9g" id="5WBVN_MPIuM" role="3XvnJa">
            <ref role="1wgcnl" node="7ksQUDZx8O3" resolve="ValueBrackets" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5WBVN_MPIuN" role="3EZMnx">
        <property role="3F0ifm" value="«" />
        <ref role="1k5W1q" node="2L$SfAAUiQh" resolve="LiteralQuotes" />
        <node concept="VPM3Z" id="5WBVN_MPIuO" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11LMrY" id="2L$SfAATR86" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="5WBVN_MPIuP" role="3EZMnx">
        <ref role="1NtTu8" to="5j4j:5WBVN_MESCO" resolve="root" />
      </node>
      <node concept="3F0ifn" id="5WBVN_MPIuQ" role="3EZMnx">
        <property role="3F0ifm" value="»" />
        <ref role="1k5W1q" node="2L$SfAAUiQh" resolve="LiteralQuotes" />
        <node concept="VPM3Z" id="5WBVN_MPIuR" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="2L$SfAATR7W" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="5WBVN_MPIuS" role="2iSdaV" />
      <node concept="2Hnlc$" id="5WBVN_MPIuT" role="2whIAn">
        <node concept="3clFbS" id="5WBVN_MPIuU" role="2VODD2">
          <node concept="3clFbF" id="5WBVN_MPIuV" role="3cqZAp">
            <node concept="2OqwBi" id="5WBVN_MPIuW" role="3clFbG">
              <node concept="2ShNRf" id="5WBVN_MPIuX" role="2Oq$k0">
                <node concept="3g6Rrh" id="5WBVN_MPIuY" role="2ShVmc">
                  <node concept="17QB3L" id="5WBVN_MPIuZ" role="3g7fb8" />
                </node>
              </node>
              <node concept="39bAoz" id="5WBVN_MPIv0" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="49obaclcC1Y">
    <property role="3GE5qa" value="logical.item.expression" />
    <ref role="1XX52x" to="5j4j:49obaclcan7" resolve="LogicalItemExpression" />
    <node concept="3EZMnI" id="49obaclcC20" role="2wV5jI">
      <node concept="3F1sOY" id="49obaclcC27" role="3EZMnx">
        <ref role="1NtTu8" to="5j4j:49obaclcanY" resolve="logical" />
      </node>
      <node concept="l2Vlx" id="49obaclcC23" role="2iSdaV" />
    </node>
  </node>
  <node concept="V5hpn" id="JOGAOsxbBZ">
    <property role="TrG5h" value="DataForm" />
    <node concept="14StLt" id="4aJUH_hW38r" role="V601i">
      <property role="TrG5h" value="RuleKeyword" />
      <node concept="3Xmtl4" id="4aJUH_hW3bF" role="3F10Kt">
        <node concept="1wgc9g" id="4aJUH_hW5PN" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:aeM1BF$Ozh" />
        </node>
      </node>
      <node concept="VechU" id="4aJUH_hW5$h" role="3F10Kt">
        <node concept="mot77" id="4aJUH_hW5$m" role="VblUZ">
          <node concept="3clFbS" id="4aJUH_hW5$n" role="2VODD2">
            <node concept="3clFbF" id="4aJUH_hW5CY" role="3cqZAp">
              <node concept="10M0yZ" id="5yqFHXovg0f" role="3clFbG">
                <ref role="3cqZAo" node="4aJUH_hW4LO" resolve="FG_TAG" />
                <ref role="1PxDUh" node="7ksQUDZtHks" resolve="CustomColors" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="14StLt" id="2L$SfAB7KOq" role="V601i">
      <property role="TrG5h" value="OpeningParen" />
      <node concept="3Xmtl4" id="2L$SfAB7KPe" role="3F10Kt">
        <node concept="1wgc9g" id="2L$SfAB7KQa" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:hFCSAw$" resolve="LeftParen" />
        </node>
      </node>
      <node concept="34QqEe" id="2L$SfAB7KPB" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="2L$SfAB7KQd" role="V601i">
      <property role="TrG5h" value="ClosingParen" />
      <node concept="3Xmtl4" id="2L$SfAB7KQe" role="3F10Kt">
        <node concept="1wgc9g" id="2L$SfAB7KRa" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:hFCSUmN" resolve="RightParen" />
        </node>
      </node>
      <node concept="34QqEe" id="2L$SfAB7KQg" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="4bWqD4C9OIl" role="V601i">
      <property role="TrG5h" value="TermFeatureOverride" />
      <node concept="VechU" id="4bWqD4C9OIm" role="3F10Kt">
        <node concept="mot77" id="4bWqD4C9OIn" role="VblUZ">
          <node concept="3clFbS" id="4bWqD4C9OIo" role="2VODD2">
            <node concept="3clFbF" id="4bWqD4C9OIp" role="3cqZAp">
              <node concept="10M0yZ" id="5yqFHXovg0i" role="3clFbG">
                <ref role="3cqZAo" node="4aJUH_hWVXm" resolve="FG_OPTIONAL" />
                <ref role="1PxDUh" node="7ksQUDZtHks" resolve="CustomColors" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="14StLt" id="4bWqD4C2vDI" role="V601i">
      <property role="TrG5h" value="Term" />
      <node concept="Vb9p2" id="3IIf9O_CN_$" role="3F10Kt">
        <property role="Vbekb" value="g1_kEg4/ITALIC" />
      </node>
      <node concept="1X3_iC" id="4bWqD4C9OHF" role="lGtFl">
        <property role="3V$3am" value="styleItem" />
        <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1219418625346/1219418656006" />
        <node concept="VechU" id="4bWqD4C7tOo" role="8Wnug">
          <node concept="mot77" id="4bWqD4C7tOp" role="VblUZ">
            <node concept="3clFbS" id="4bWqD4C7tOq" role="2VODD2">
              <node concept="3clFbF" id="4bWqD4C7tOr" role="3cqZAp">
                <node concept="10M0yZ" id="5yqFHXovg0o" role="3clFbG">
                  <ref role="3cqZAo" node="4bWqD4C7sc7" resolve="FG_TERM" />
                  <ref role="1PxDUh" node="7ksQUDZtHks" resolve="CustomColors" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7lt0LtQg3vn">
    <property role="3GE5qa" value="logical.item" />
    <ref role="1XX52x" to="5j4j:7lt0LtQg3tE" resolve="ExpressionItem" />
    <node concept="3EZMnI" id="7lt0LtQg3vp" role="2wV5jI">
      <node concept="3EZMnI" id="7lt0LtQg3vq" role="3EZMnx">
        <ref role="1k5W1q" node="7ksQUDZuyMD" resolve="Backquote" />
        <node concept="VPM3Z" id="7lt0LtQg3vr" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3vyZuw" id="7lt0LtQg3vs" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F1sOY" id="7lt0LtQg3vy" role="3EZMnx">
          <ref role="1NtTu8" to="5j4j:7lt0LtQg3vl" resolve="code" />
          <node concept="11L4FC" id="7lt0LtQg3vz" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="11LMrY" id="7lt0LtQg3v$" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="l2Vlx" id="7lt0LtQg3vC" role="2iSdaV" />
      </node>
      <node concept="l2Vlx" id="7lt0LtQg3vD" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2L$SfAAUSzE">
    <property role="3GE5qa" value="dataform.attribute" />
    <ref role="1XX52x" to="5j4j:2L$SfAAUQEl" resolve="NewLineAttribute" />
    <node concept="3EZMnI" id="2L$SfAAUSzP" role="2wV5jI">
      <node concept="2SsqMj" id="2L$SfAAUSzW" role="3EZMnx" />
      <node concept="l2Vlx" id="2L$SfAAUSzS" role="2iSdaV" />
      <node concept="3F0ifn" id="2L$SfAAUS$z" role="3EZMnx">
        <property role="3F0ifm" value="↩" />
        <ref role="1ERwB7" node="2L$SfAB9FIw" resolve="NewLineAttribute_DELETE" />
        <node concept="11L4FC" id="2L$SfAAUS_g" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VechU" id="2L$SfAAUS_a" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
        <node concept="2SqB2G" id="2L$SfABae9P" role="2SqHTX">
          <property role="TrG5h" value="NEW_LINE" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="2L$SfAB9FIw">
    <property role="3GE5qa" value="dataform.attribute" />
    <property role="TrG5h" value="NewLineAttribute_DELETE" />
    <ref role="1h_SK9" to="5j4j:2L$SfAAUQEl" resolve="NewLineAttribute" />
    <node concept="1hA7zw" id="2L$SfAB9FIx" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="2L$SfAB9FIy" role="1hA7z_">
        <node concept="3clFbS" id="2L$SfAB9FIz" role="2VODD2">
          <node concept="3clFbF" id="2L$SfAB9FIO" role="3cqZAp">
            <node concept="2OqwBi" id="2L$SfAB9FRc" role="3clFbG">
              <node concept="0IXxy" id="2L$SfAB9FIN" role="2Oq$k0" />
              <node concept="3YRAZt" id="2L$SfAB9Ga$" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="2L$SfABiJdD">
    <property role="3GE5qa" value="logical.item" />
    <ref role="aqKnT" to="5j4j:5WBVN_MESCN" resolve="DataNodeLiteral" />
    <node concept="3eGOop" id="2L$SfABiJeQ" role="3ft7WO">
      <node concept="ucgPf" id="2L$SfABiJeS" role="3aKz83">
        <node concept="3clFbS" id="2L$SfABiJeU" role="2VODD2">
          <node concept="3clFbF" id="2L$SfABiJfm" role="3cqZAp">
            <node concept="2ShNRf" id="2L$SfABiJfk" role="3clFbG">
              <node concept="3zrR0B" id="2L$SfABiJsB" role="2ShVmc">
                <node concept="3Tqbb2" id="2L$SfABiJsD" role="3zrR0E">
                  <ref role="ehGHo" to="5j4j:5WBVN_MESCN" resolve="DataNodeLiteral" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="2L$SfABiJf6" role="upBLP">
        <node concept="2h3Zct" id="2L$SfABiJfd" role="16NeZM">
          <property role="2h4Kg1" value="&lt;&lt;" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="2L$SfABiJyR">
    <property role="3GE5qa" value="dataform.expression" />
    <ref role="aqKnT" to="5j4j:6$jH9oLmUCq" resolve="DataNodeExpression" />
    <node concept="3eGOop" id="2L$SfABiJyS" role="3ft7WO">
      <node concept="ucgPf" id="2L$SfABiJyT" role="3aKz83">
        <node concept="3clFbS" id="2L$SfABiJyU" role="2VODD2">
          <node concept="3clFbF" id="2L$SfABiJOi" role="3cqZAp">
            <node concept="2ShNRf" id="2L$SfABiJOg" role="3clFbG">
              <node concept="3zrR0B" id="2L$SfABiKgF" role="2ShVmc">
                <node concept="3Tqbb2" id="2L$SfABiKgH" role="3zrR0E">
                  <ref role="ehGHo" to="5j4j:6$jH9oLmUCq" resolve="DataNodeExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="2L$SfABiJIs" role="upBLP">
        <node concept="2h3Zct" id="2L$SfABiJO9" role="16NeZM">
          <property role="2h4Kg1" value="&lt;&lt;" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="2L$SfABjiSD">
    <property role="3GE5qa" value="dataform" />
    <ref role="aqKnT" to="5j4j:1OShD0HAY6y" resolve="ListNode" />
    <node concept="3eGOop" id="2L$SfABjiSE" role="3ft7WO">
      <node concept="ucgPf" id="2L$SfABjiSF" role="3aKz83">
        <node concept="3clFbS" id="2L$SfABjiSG" role="2VODD2">
          <node concept="3clFbF" id="2L$SfABjiWV" role="3cqZAp">
            <node concept="2ShNRf" id="2L$SfABjiWT" role="3clFbG">
              <node concept="3zrR0B" id="2L$SfABjjJv" role="2ShVmc">
                <node concept="3Tqbb2" id="2L$SfABjjJx" role="3zrR0E">
                  <ref role="ehGHo" to="5j4j:1OShD0HAY6y" resolve="ListNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="2L$SfABjjS2" role="upBLP">
        <node concept="2h3Zct" id="2L$SfABjjWo" role="16NeZM">
          <property role="2h4Kg1" value="[]" />
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="PltxfI6Klv" role="3ft7WO" />
    <node concept="2VfDsV" id="PltxfI6Kdb" role="3ft7WO" />
  </node>
  <node concept="3p36aQ" id="2L$SfABjk51">
    <property role="3GE5qa" value="dataform" />
    <ref role="aqKnT" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
    <node concept="3eGOop" id="2L$SfABjk52" role="3ft7WO">
      <node concept="16NL3D" id="2L$SfABle2T" role="upBLP">
        <node concept="16Na2f" id="2L$SfABle2V" role="16NL3A">
          <node concept="3clFbS" id="2L$SfABle2X" role="2VODD2">
            <node concept="3clFbF" id="2L$SfABle3a" role="3cqZAp">
              <node concept="22lmx$" id="2L$SfABlefU" role="3clFbG">
                <node concept="3fqX7Q" id="2L$SfABle3c" role="3uHU7w">
                  <node concept="2OqwBi" id="2L$SfABle3d" role="3fr31v">
                    <node concept="3bvxqY" id="2L$SfABle3e" role="2Oq$k0" />
                    <node concept="1mIQ4w" id="2L$SfABle3f" role="2OqNvi">
                      <node concept="chp4Y" id="2L$SfABle3g" role="cj9EA">
                        <ref role="cht4Q" to="5j4j:5lJXKARS0" resolve="DataNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2L$SfABlegd" role="3uHU7B">
                  <node concept="3bvxqY" id="2L$SfABlege" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="2L$SfABlegf" role="2OqNvi">
                    <node concept="chp4Y" id="2L$SfABleqW" role="cj9EA">
                      <ref role="cht4Q" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="ucgPf" id="2L$SfABjk53" role="3aKz83">
        <node concept="3clFbS" id="2L$SfABjk54" role="2VODD2">
          <node concept="3clFbF" id="2L$SfABjk5h" role="3cqZAp">
            <node concept="2ShNRf" id="2L$SfABjk5f" role="3clFbG">
              <node concept="3zrR0B" id="2L$SfABjktI" role="2ShVmc">
                <node concept="3Tqbb2" id="2L$SfABjktK" role="3zrR0E">
                  <ref role="ehGHo" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="2L$SfABjktU" role="upBLP">
        <node concept="2h3Zct" id="2L$SfABjku1" role="16NeZM">
          <property role="2h4Kg1" value="'" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="2L$SfABjzas">
    <property role="3GE5qa" value="dataform.role" />
    <ref role="aqKnT" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
    <node concept="3eGOop" id="2L$SfABjzat" role="3ft7WO">
      <node concept="16NL3D" id="2L$SfABkvr$" role="upBLP">
        <node concept="16Na2f" id="2L$SfABkvrA" role="16NL3A">
          <node concept="3clFbS" id="2L$SfABkvrC" role="2VODD2">
            <node concept="3clFbF" id="2L$SfABkvrY" role="3cqZAp">
              <node concept="22lmx$" id="2L$SfABkVV7" role="3clFbG">
                <node concept="3fqX7Q" id="2L$SfABkYaT" role="3uHU7w">
                  <node concept="2OqwBi" id="2L$SfABkYaV" role="3fr31v">
                    <node concept="3bvxqY" id="2L$SfABkYaW" role="2Oq$k0" />
                    <node concept="1mIQ4w" id="2L$SfABkYaX" role="2OqNvi">
                      <node concept="chp4Y" id="2L$SfABkYaY" role="cj9EA">
                        <ref role="cht4Q" to="5j4j:5lJXKARS0" resolve="DataNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2L$SfABkvVg" role="3uHU7B">
                  <node concept="3bvxqY" id="2L$SfABkvrX" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="2L$SfABkwqg" role="2OqNvi">
                    <node concept="chp4Y" id="2L$SfABkwxM" role="cj9EA">
                      <ref role="cht4Q" to="5j4j:6$jH9oLmYC_" resolve="TermNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="ucgPf" id="2L$SfABjzau" role="3aKz83">
        <node concept="3clFbS" id="2L$SfABjzav" role="2VODD2">
          <node concept="3cpWs8" id="2L$SfABjzzL" role="3cqZAp">
            <node concept="3cpWsn" id="2L$SfABjzzM" role="3cpWs9">
              <property role="TrG5h" value="vr" />
              <node concept="3Tqbb2" id="2L$SfABjzzK" role="1tU5fm">
                <ref role="ehGHo" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
              </node>
              <node concept="2ShNRf" id="2L$SfABjzzN" role="33vP2m">
                <node concept="3zrR0B" id="2L$SfABjzzO" role="2ShVmc">
                  <node concept="3Tqbb2" id="2L$SfABjzzP" role="3zrR0E">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2L$SfABjzaG" role="3cqZAp">
            <node concept="2OqwBi" id="2L$SfABjAIF" role="3clFbG">
              <node concept="2OqwBi" id="2L$SfABjzTU" role="2Oq$k0">
                <node concept="37vLTw" id="2L$SfABjzzQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="2L$SfABjzzM" resolve="vr" />
                </node>
                <node concept="3Tsc0h" id="2L$SfABj$LS" role="2OqNvi">
                  <ref role="3TtcxE" to="5j4j:6$jH9oLmYL8" resolve="contents" />
                </node>
              </node>
              <node concept="WFELt" id="2L$SfABjG6P" role="2OqNvi">
                <ref role="1A0vxQ" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2L$SfABjGON" role="3cqZAp">
            <node concept="37vLTw" id="2L$SfABjGOL" role="3clFbG">
              <ref role="3cqZAo" node="2L$SfABjzzM" resolve="vr" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="2L$SfABjGP6" role="upBLP">
        <node concept="2h3Zct" id="2L$SfABjGPd" role="16NeZM">
          <property role="2h4Kg1" value="value=" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="2L$SfABjGPD">
    <property role="3GE5qa" value="dataform.role" />
    <ref role="aqKnT" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
    <node concept="3eGOop" id="2L$SfABjGPE" role="3ft7WO">
      <node concept="16NL3D" id="2L$SfABkuvD" role="upBLP">
        <node concept="16Na2f" id="2L$SfABkuvF" role="16NL3A">
          <node concept="3clFbS" id="2L$SfABkuvH" role="2VODD2">
            <node concept="3clFbF" id="2L$SfABkuw3" role="3cqZAp">
              <node concept="22lmx$" id="2L$SfABkY_$" role="3clFbG">
                <node concept="2OqwBi" id="2L$SfABkuI9" role="3uHU7B">
                  <node concept="3bvxqY" id="2L$SfABkuw2" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="2L$SfABkv6o" role="2OqNvi">
                    <node concept="chp4Y" id="2L$SfABkvdU" role="cj9EA">
                      <ref role="cht4Q" to="5j4j:6$jH9oLmYC_" resolve="TermNode" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="2L$SfABkY_O" role="3uHU7w">
                  <node concept="2OqwBi" id="2L$SfABkY_P" role="3fr31v">
                    <node concept="3bvxqY" id="2L$SfABkY_Q" role="2Oq$k0" />
                    <node concept="1mIQ4w" id="2L$SfABkY_R" role="2OqNvi">
                      <node concept="chp4Y" id="2L$SfABkY_S" role="cj9EA">
                        <ref role="cht4Q" to="5j4j:5lJXKARS0" resolve="DataNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="ucgPf" id="2L$SfABjGPF" role="3aKz83">
        <node concept="3clFbS" id="2L$SfABjGPG" role="2VODD2">
          <node concept="3clFbF" id="2L$SfABjGPT" role="3cqZAp">
            <node concept="2ShNRf" id="2L$SfABjGPR" role="3clFbG">
              <node concept="3zrR0B" id="2L$SfABjHeI" role="2ShVmc">
                <node concept="3Tqbb2" id="2L$SfABjHeK" role="3zrR0E">
                  <ref role="ehGHo" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="2L$SfABjHeU" role="upBLP">
        <node concept="2h3Zct" id="2L$SfABjHf1" role="16NeZM">
          <property role="2h4Kg1" value="child:" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="2L$SfABjYM9">
    <property role="3GE5qa" value="dataform" />
    <ref role="aqKnT" to="5j4j:2q_78a8W4yS" resolve="Wildcard" />
    <node concept="3eGOop" id="2L$SfABjYMa" role="3ft7WO">
      <node concept="ucgPf" id="2L$SfABjYMb" role="3aKz83">
        <node concept="3clFbS" id="2L$SfABjYMc" role="2VODD2">
          <node concept="3clFbF" id="2L$SfABjYMp" role="3cqZAp">
            <node concept="2ShNRf" id="2L$SfABjYMn" role="3clFbG">
              <node concept="3zrR0B" id="2L$SfABjZaQ" role="2ShVmc">
                <node concept="3Tqbb2" id="2L$SfABjZaS" role="3zrR0E">
                  <ref role="ehGHo" to="5j4j:2q_78a8W4yS" resolve="Wildcard" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="2L$SfABjZb2" role="upBLP">
        <node concept="2h3Zct" id="2L$SfABjZb9" role="16NeZM">
          <property role="2h4Kg1" value="_" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="2L$SfABjZb_">
    <property role="3GE5qa" value="dataform" />
    <ref role="aqKnT" to="5j4j:6$jH9oLmYC_" resolve="TermNode" />
    <node concept="3eGOop" id="2L$SfABjZbA" role="3ft7WO">
      <node concept="16NL3D" id="2L$SfABlcse" role="upBLP">
        <node concept="16Na2f" id="2L$SfABlcsg" role="16NL3A">
          <node concept="3clFbS" id="2L$SfABlcsi" role="2VODD2">
            <node concept="3clFbF" id="2L$SfABlcsv" role="3cqZAp">
              <node concept="22lmx$" id="2L$SfABlc_Q" role="3clFbG">
                <node concept="3fqX7Q" id="2L$SfABlcsx" role="3uHU7w">
                  <node concept="2OqwBi" id="2L$SfABlcsy" role="3fr31v">
                    <node concept="3bvxqY" id="2L$SfABlcsz" role="2Oq$k0" />
                    <node concept="1mIQ4w" id="2L$SfABlcs$" role="2OqNvi">
                      <node concept="chp4Y" id="2L$SfABlcs_" role="cj9EA">
                        <ref role="cht4Q" to="5j4j:5lJXKARS0" resolve="DataNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="22lmx$" id="2L$SfABldj8" role="3uHU7B">
                  <node concept="2OqwBi" id="2L$SfABlcA9" role="3uHU7B">
                    <node concept="3bvxqY" id="2L$SfABlcAa" role="2Oq$k0" />
                    <node concept="1mIQ4w" id="2L$SfABlcAb" role="2OqNvi">
                      <node concept="chp4Y" id="2L$SfABldM4" role="cj9EA">
                        <ref role="cht4Q" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2L$SfABldjp" role="3uHU7w">
                    <node concept="3bvxqY" id="2L$SfABldjq" role="2Oq$k0" />
                    <node concept="1mIQ4w" id="2L$SfABldjr" role="2OqNvi">
                      <node concept="chp4Y" id="2L$SfABldwf" role="cj9EA">
                        <ref role="cht4Q" to="5j4j:1OShD0HAY6y" resolve="ListNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="ucgPf" id="2L$SfABjZbB" role="3aKz83">
        <node concept="3clFbS" id="2L$SfABjZbC" role="2VODD2">
          <node concept="3clFbF" id="2L$SfABjZbP" role="3cqZAp">
            <node concept="2ShNRf" id="2L$SfABjZbN" role="3clFbG">
              <node concept="3zrR0B" id="2L$SfABjZ$q" role="2ShVmc">
                <node concept="3Tqbb2" id="2L$SfABjZ$s" role="3zrR0E">
                  <ref role="ehGHo" to="5j4j:6$jH9oLmYC_" resolve="TermNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="2L$SfABjZ$A" role="upBLP">
        <node concept="2h3Zct" id="2L$SfABjZ$H" role="16NeZM">
          <property role="2h4Kg1" value="()" />
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="2L$SfABlcrT" role="3ft7WO" />
  </node>
  <node concept="24kQdi" id="PltxfHNefA">
    <property role="3GE5qa" value="dataform" />
    <ref role="1XX52x" to="5j4j:PltxfHNb9C" resolve="LogicalVariableDataForm" />
    <node concept="3EZMnI" id="PltxfHNeGf" role="2wV5jI">
      <node concept="3F1sOY" id="PltxfHNeK9" role="3EZMnx">
        <ref role="1NtTu8" to="5j4j:PltxfHNdqi" resolve="variable" />
      </node>
      <node concept="l2Vlx" id="PltxfHNeGi" role="2iSdaV" />
    </node>
  </node>
  <node concept="3p36aQ" id="PltxfIrOTO">
    <property role="3GE5qa" value="dataform" />
    <ref role="aqKnT" to="5j4j:PltxfHNb9C" resolve="LogicalVariableDataForm" />
    <node concept="3N5dw7" id="PltxfIrYl_" role="3ft7WO">
      <node concept="3N5aqt" id="PltxfIrYlA" role="3Na0zg">
        <node concept="3clFbS" id="PltxfIrYlB" role="2VODD2">
          <node concept="3cpWs8" id="PltxfIrYUM" role="3cqZAp">
            <node concept="3cpWsn" id="PltxfIrYUP" role="3cpWs9">
              <property role="TrG5h" value="ldf" />
              <node concept="3Tqbb2" id="PltxfIrYUL" role="1tU5fm">
                <ref role="ehGHo" to="5j4j:PltxfHNb9C" resolve="LogicalVariableDataForm" />
              </node>
              <node concept="2ShNRf" id="PltxfIrZhg" role="33vP2m">
                <node concept="3zrR0B" id="PltxfIrZLl" role="2ShVmc">
                  <node concept="3Tqbb2" id="PltxfIrZLn" role="3zrR0E">
                    <ref role="ehGHo" to="5j4j:PltxfHNb9C" resolve="LogicalVariableDataForm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="PltxfIs0bR" role="3cqZAp">
            <node concept="2OqwBi" id="PltxfIs0KJ" role="3clFbG">
              <node concept="2OqwBi" id="PltxfIs0lT" role="2Oq$k0">
                <node concept="37vLTw" id="PltxfIs0bP" role="2Oq$k0">
                  <ref role="3cqZAo" node="PltxfIrYUP" resolve="ldf" />
                </node>
                <node concept="3TrEf2" id="PltxfIs0$h" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:PltxfHNdqi" resolve="variable" />
                </node>
              </node>
              <node concept="2oxUTD" id="PltxfIs16o" role="2OqNvi">
                <node concept="3N4pyC" id="PltxfIs1hP" role="2oxUTC" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="PltxfIs1o4" role="3cqZAp">
            <node concept="37vLTw" id="PltxfIs1o2" role="3clFbG">
              <ref role="3cqZAo" node="PltxfIrYUP" resolve="ldf" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2kknPJ" id="PltxfIrYvq" role="2klrvf">
        <ref role="2ZyFGn" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
      </node>
    </node>
  </node>
  <node concept="IW6AY" id="59P$gGg4wpJ">
    <property role="3GE5qa" value="logical.item" />
    <ref role="aqKnT" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    <node concept="1Qtc8_" id="59P$gGg4wpK" role="IW6Ez">
      <node concept="3cWJ9i" id="59P$gGg4wpO" role="1Qtc8$">
        <node concept="CtIbL" id="59P$gGg4wpQ" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="mvV$s" id="59P$gGg4wpU" role="1Qtc8A">
        <node concept="mvVNg" id="59P$gGg4wpW" role="mvV$0">
          <node concept="3clFbS" id="59P$gGg4wpX" role="2VODD2">
            <node concept="3clFbF" id="59P$gGg4BIi" role="3cqZAp">
              <node concept="2OqwBi" id="59P$gGg4BRN" role="3clFbG">
                <node concept="7Obwk" id="59P$gGg4BIh" role="2Oq$k0" />
                <node concept="1mfA1w" id="59P$gGg4C0I" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1Qtc8_" id="59P$gGgd3j2" role="IW6Ez">
      <node concept="3cWJ9i" id="59P$gGgd3j3" role="1Qtc8$">
        <node concept="CtIbL" id="59P$gGgd3j4" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
      <node concept="mvV$s" id="59P$gGgd3j5" role="1Qtc8A">
        <node concept="mvVNg" id="59P$gGgd3j6" role="mvV$0">
          <node concept="3clFbS" id="59P$gGgd3j7" role="2VODD2">
            <node concept="3clFbF" id="59P$gGgd3j8" role="3cqZAp">
              <node concept="2OqwBi" id="59P$gGgd3j9" role="3clFbG">
                <node concept="7Obwk" id="59P$gGgd3ja" role="2Oq$k0" />
                <node concept="1mfA1w" id="59P$gGgd3jb" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="49obaclcHw$">
    <property role="3GE5qa" value="logical.item.expression" />
    <ref role="aqKnT" to="5j4j:49obaclcan7" resolve="LogicalItemExpression" />
    <node concept="3ft6gV" id="7zIaasjS8RU" role="3ft7WO">
      <node concept="3N5dw7" id="7XmdqtdNMLp" role="3ft5RZ">
        <node concept="3N5aqt" id="7XmdqtdNMLq" role="3Na0zg">
          <node concept="3clFbS" id="7XmdqtdNMLr" role="2VODD2">
            <node concept="3cpWs8" id="7XmdqtdNSAC" role="3cqZAp">
              <node concept="3cpWsn" id="7XmdqtdNSAD" role="3cpWs9">
                <property role="TrG5h" value="le" />
                <node concept="3Tqbb2" id="7XmdqtdNSAB" role="1tU5fm">
                  <ref role="ehGHo" to="5j4j:49obaclcan7" resolve="LogicalItemExpression" />
                </node>
                <node concept="2ShNRf" id="7XmdqtdNSAE" role="33vP2m">
                  <node concept="3zrR0B" id="7XmdqtdNSAF" role="2ShVmc">
                    <node concept="3Tqbb2" id="7XmdqtdNSAG" role="3zrR0E">
                      <ref role="ehGHo" to="5j4j:49obaclcan7" resolve="LogicalItemExpression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7XmdqtdNMWX" role="3cqZAp">
              <node concept="2OqwBi" id="7XmdqtdNTZn" role="3clFbG">
                <node concept="2OqwBi" id="7XmdqtdNTtp" role="2Oq$k0">
                  <node concept="37vLTw" id="7XmdqtdNSAH" role="2Oq$k0">
                    <ref role="3cqZAo" node="7XmdqtdNSAD" resolve="le" />
                  </node>
                  <node concept="3TrEf2" id="49obaclkKMn" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:49obaclcanY" resolve="logical" />
                  </node>
                </node>
                <node concept="2oxUTD" id="7XmdqtdNUmX" role="2OqNvi">
                  <node concept="3N4pyC" id="7XmdqtdNUwC" role="2oxUTC" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7XmdqtdNUKS" role="3cqZAp">
              <node concept="37vLTw" id="7XmdqtdNUKQ" role="3clFbG">
                <ref role="3cqZAo" node="7XmdqtdNSAD" resolve="le" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2kknPJ" id="7XmdqtdNMPi" role="2klrvf">
          <ref role="2ZyFGn" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
        </node>
        <node concept="16NL3D" id="7LI_gNN91iz" role="upBLP">
          <node concept="16Na2f" id="7LI_gNN91i$" role="16NL3A">
            <node concept="3clFbS" id="7LI_gNN91i_" role="2VODD2">
              <node concept="3clFbF" id="7LI_gNN91rR" role="3cqZAp">
                <node concept="3fqX7Q" id="7LI_gNN92IL" role="3clFbG">
                  <node concept="2OqwBi" id="7LI_gNN92IN" role="3fr31v">
                    <node concept="2OqwBi" id="7LI_gNN92IO" role="2Oq$k0">
                      <node concept="3jrdc4" id="7LI_gNN92IP" role="2Oq$k0" />
                      <node concept="3j5asz" id="7LI_gNN92IQ" role="2OqNvi" />
                    </node>
                    <node concept="2Zo12i" id="7LI_gNN92IR" role="2OqNvi">
                      <node concept="chp4Y" id="7LI_gNN92IS" role="2Zo12j">
                        <ref role="cht4Q" to="5j4j:7lt0LtQg3tE" resolve="ExpressionItem" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3ft6gW" id="7zIaasjS918" role="3ft5RY">
        <node concept="3clFbS" id="7zIaasjS919" role="2VODD2">
          <node concept="3clFbF" id="7zIaasjS9a4" role="3cqZAp">
            <node concept="1Wc70l" id="hYA4RDOcb6" role="3clFbG">
              <node concept="2OqwBi" id="hYA4RDOnBC" role="3uHU7w">
                <node concept="2OqwBi" id="hYA4RDOnc7" role="2Oq$k0">
                  <node concept="3bvxqY" id="hYA4RDOmWl" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="hYA4RDOnnE" role="2OqNvi">
                    <node concept="1xMEDy" id="hYA4RDOnnG" role="1xVPHs">
                      <node concept="chp4Y" id="hYA4RDOntK" role="ri$Ld">
                        <ref role="cht4Q" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="hYA4RDOobn" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3x8VRR" id="hYA4RDOnOm" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="7zIaasjS9a5" role="3uHU7B">
                <node concept="2OqwBi" id="7zIaasjS9a6" role="2Oq$k0">
                  <node concept="3bvxqY" id="7zIaasjS9a7" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="7zIaasjS9a8" role="2OqNvi">
                    <node concept="1xMEDy" id="7zIaasjS9a9" role="1xVPHs">
                      <node concept="chp4Y" id="7zIaasjS9aa" role="ri$Ld">
                        <ref role="cht4Q" to="5j4j:7zIaasjACyh" resolve="EvaluationSubject" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="hYA4RDOmVp" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3w_OXm" id="7zIaasjS9kS" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="hYA4RDImMH" role="3ft7WO" />
  </node>
  <node concept="3p36aQ" id="59P$gGg7gYN">
    <property role="3GE5qa" value="logical.variable" />
    <ref role="aqKnT" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
    <node concept="2F$Pav" id="59P$gGgazeG" role="3ft7WO">
      <node concept="3Tqbb2" id="59P$gGgazeH" role="2ZBHrp" />
      <node concept="2$S_p_" id="59P$gGgazeI" role="2$S_pT">
        <node concept="3clFbS" id="59P$gGgazeJ" role="2VODD2">
          <node concept="3cpWs8" id="59P$gGgazeK" role="3cqZAp">
            <node concept="3cpWsn" id="59P$gGgazeL" role="3cpWs9">
              <property role="TrG5h" value="rd" />
              <node concept="3uibUv" id="59P$gGgazeM" role="1tU5fm">
                <ref role="3uigEE" to="ykok:~ReferenceDescriptor" resolve="ReferenceDescriptor" />
              </node>
              <node concept="2YIFZM" id="59P$gGgazeN" role="33vP2m">
                <ref role="37wK5l" to="ykok:~ModelConstraints.getReferenceDescriptor(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink,int,org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="getReferenceDescriptor" />
                <ref role="1Pybhc" to="ykok:~ModelConstraints" resolve="ModelConstraints" />
                <node concept="3bvxqY" id="59P$gGgazeO" role="37wK5m" />
                <node concept="10Nm6u" id="59P$gGgazeP" role="37wK5m" />
                <node concept="3cmrfG" id="59P$gGgazeQ" role="37wK5m">
                  <property role="3cmrfH" value="-1" />
                </node>
                <node concept="359W_D" id="59P$gGgazeR" role="37wK5m">
                  <ref role="359W_E" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
                  <ref role="359W_F" to="5j4j:7E86$tK_PaH" resolve="declaration" />
                </node>
                <node concept="35c_gC" id="59P$gGgazeS" role="37wK5m">
                  <ref role="35c_gD" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="59P$gGgazeT" role="3cqZAp">
            <node concept="10QFUN" id="59P$gGgazeU" role="3clFbG">
              <node concept="A3Dl8" id="59P$gGgazeV" role="10QFUM">
                <node concept="3Tqbb2" id="59P$gGgazeW" role="A3Ik2" />
              </node>
              <node concept="2OqwBi" id="59P$gGgazeX" role="10QFUP">
                <node concept="2OqwBi" id="59P$gGgazeY" role="2Oq$k0">
                  <node concept="37vLTw" id="59P$gGgazeZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="59P$gGgazeL" resolve="rd" />
                  </node>
                  <node concept="liA8E" id="59P$gGgazf0" role="2OqNvi">
                    <ref role="37wK5l" to="ykok:~ReferenceDescriptor.getScope()" resolve="getScope" />
                  </node>
                </node>
                <node concept="liA8E" id="59P$gGgazf1" role="2OqNvi">
                  <ref role="37wK5l" to="35tq:~Scope.getAvailableElements(java.lang.String)" resolve="getAvailableElements" />
                  <node concept="Xl_RD" id="59P$gGgazf2" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eGOop" id="59P$gGgazf3" role="2$S_pN">
        <ref role="3EoQqy" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
        <node concept="ucgPf" id="59P$gGgazf4" role="3aKz83">
          <node concept="3clFbS" id="59P$gGgazf5" role="2VODD2">
            <node concept="3cpWs8" id="59P$gGgazfc" role="3cqZAp">
              <node concept="3cpWsn" id="59P$gGgazfd" role="3cpWs9">
                <property role="TrG5h" value="lvr" />
                <node concept="3Tqbb2" id="59P$gGgazfe" role="1tU5fm">
                  <ref role="ehGHo" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
                </node>
                <node concept="2ShNRf" id="5HLeEcfyJiW" role="33vP2m">
                  <node concept="3zrR0B" id="5HLeEcfyOTJ" role="2ShVmc">
                    <node concept="3Tqbb2" id="5HLeEcfyOTL" role="3zrR0E">
                      <ref role="ehGHo" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="59P$gGgazfo" role="3cqZAp">
              <node concept="2OqwBi" id="59P$gGgazfp" role="3clFbG">
                <node concept="2OqwBi" id="59P$gGgazfq" role="2Oq$k0">
                  <node concept="37vLTw" id="59P$gGgazfr" role="2Oq$k0">
                    <ref role="3cqZAo" node="59P$gGgazfd" resolve="lvr" />
                  </node>
                  <node concept="3TrEf2" id="59P$gGgazfs" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:7E86$tK_PaH" resolve="declaration" />
                  </node>
                </node>
                <node concept="2oxUTD" id="59P$gGgazft" role="2OqNvi">
                  <node concept="1PxgMI" id="59P$gGgazfu" role="2oxUTC">
                    <node concept="chp4Y" id="59P$gGgazfv" role="3oSUPX">
                      <ref role="cht4Q" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
                    </node>
                    <node concept="2ZBlsa" id="59P$gGgazfw" role="1m5AlR" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="59P$gGgazfx" role="3cqZAp">
              <node concept="37vLTw" id="59P$gGgazLX" role="3clFbG">
                <ref role="3cqZAo" node="59P$gGgazfd" resolve="lvr" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7zIaasjAKs0">
    <property role="3GE5qa" value="logical.item.expression" />
    <ref role="1XX52x" to="5j4j:7zIaasjAAux" resolve="LogicalItemValueExpression" />
    <node concept="3EZMnI" id="7zIaasjAKs2" role="2wV5jI">
      <node concept="3F1sOY" id="7zIaasjAKs3" role="3EZMnx">
        <ref role="1NtTu8" to="5j4j:7zIaasjAKqg" resolve="logical" />
      </node>
      <node concept="l2Vlx" id="7zIaasjAKs4" role="2iSdaV" />
    </node>
  </node>
  <node concept="3p36aQ" id="7zIaasjAP8D">
    <property role="3GE5qa" value="logical.item.expression" />
    <ref role="aqKnT" to="5j4j:7zIaasjAAux" resolve="LogicalItemValueExpression" />
    <node concept="3ft6gV" id="7zIaasjAP8E" role="3ft7WO">
      <node concept="3ft6gW" id="7zIaasjAP8J" role="3ft5RY">
        <node concept="3clFbS" id="7zIaasjAP8K" role="2VODD2">
          <node concept="3clFbF" id="7zIaasjATYl" role="3cqZAp">
            <node concept="2OqwBi" id="7zIaasjAU$I" role="3clFbG">
              <node concept="2OqwBi" id="7zIaasjAUaw" role="2Oq$k0">
                <node concept="3bvxqY" id="7zIaasjATYk" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7zIaasjAUlG" role="2OqNvi">
                  <node concept="1xMEDy" id="7zIaasjAUlI" role="1xVPHs">
                    <node concept="chp4Y" id="7zIaasjAUpy" role="ri$Ld">
                      <ref role="cht4Q" to="5j4j:7zIaasjACyh" resolve="EvaluationSubject" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="7zIaasjAUUX" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="7zIaasjAUMx" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3N5dw7" id="7zIaasjAUVJ" role="3ft5RZ">
        <node concept="3N5aqt" id="7zIaasjAUVK" role="3Na0zg">
          <node concept="3clFbS" id="7zIaasjAUVL" role="2VODD2">
            <node concept="3cpWs8" id="7zIaasjBiCQ" role="3cqZAp">
              <node concept="3cpWsn" id="7zIaasjBiCR" role="3cpWs9">
                <property role="TrG5h" value="live" />
                <node concept="3Tqbb2" id="7zIaasjBiCB" role="1tU5fm">
                  <ref role="ehGHo" to="5j4j:7zIaasjAAux" resolve="LogicalItemValueExpression" />
                </node>
                <node concept="2ShNRf" id="7zIaasjBiCS" role="33vP2m">
                  <node concept="3zrR0B" id="7zIaasjBiCT" role="2ShVmc">
                    <node concept="3Tqbb2" id="7zIaasjBiCU" role="3zrR0E">
                      <ref role="ehGHo" to="5j4j:7zIaasjAAux" resolve="LogicalItemValueExpression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7zIaasjAUYO" role="3cqZAp">
              <node concept="2OqwBi" id="7zIaasjBj9q" role="3clFbG">
                <node concept="2OqwBi" id="7zIaasjBiN8" role="2Oq$k0">
                  <node concept="37vLTw" id="7zIaasjBiCV" role="2Oq$k0">
                    <ref role="3cqZAo" node="7zIaasjBiCR" resolve="live" />
                  </node>
                  <node concept="3TrEf2" id="7zIaasjBiXH" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:7zIaasjAKqg" resolve="logical" />
                  </node>
                </node>
                <node concept="2oxUTD" id="7zIaasjBjmd" role="2OqNvi">
                  <node concept="3N4pyC" id="7zIaasjBjte" role="2oxUTC" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7zIaasjBjvE" role="3cqZAp">
              <node concept="37vLTw" id="7zIaasjBjvC" role="3clFbG">
                <ref role="3cqZAo" node="7zIaasjBiCR" resolve="live" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2kknPJ" id="7zIaasjAUY4" role="2klrvf">
          <ref role="2ZyFGn" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="7zIaasjAP8G" role="3ft7WO" />
  </node>
  <node concept="3p36aQ" id="hYA4RDFy_E">
    <property role="3GE5qa" value="logical.item" />
    <ref role="aqKnT" to="5j4j:7lt0LtQg3tE" resolve="ExpressionItem" />
    <node concept="3ft6gV" id="5HLeEcfozdc" role="3ft7WO">
      <node concept="3N5dw7" id="4hPXq9JmemJ" role="3ft5RZ">
        <node concept="16NfWO" id="oI9YrnjlN" role="upBLP">
          <node concept="uGdhv" id="59P$gGfNL6t" role="16NeZM">
            <node concept="3clFbS" id="59P$gGfNL6v" role="2VODD2">
              <node concept="3clFbJ" id="5HLeEcfwthO" role="3cqZAp">
                <node concept="3clFbS" id="5HLeEcfwti9" role="3clFbx">
                  <node concept="3cpWs6" id="5HLeEcfwtAb" role="3cqZAp">
                    <node concept="2OqwBi" id="5HLeEcfwtAc" role="3cqZAk">
                      <node concept="3jrdc4" id="5HLeEcfwtAd" role="2Oq$k0" />
                      <node concept="3j5asI" id="5HLeEcfwtAe" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="5HLeEcfwsYQ" role="3clFbw">
                  <ref role="37wK5l" node="5HLeEcfuAse" resolve="filterIgnored" />
                  <ref role="1Pybhc" node="5HLeEcfuApQ" resolve="Workarounds" />
                  <node concept="2OqwBi" id="5HLeEcfwt0Y" role="37wK5m">
                    <node concept="3jrdc4" id="5HLeEcfwsZS" role="2Oq$k0" />
                    <node concept="3j5asz" id="5HLeEcfwt6c" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="5HLeEcfwOQs" role="3cqZAp">
                <node concept="1PaTwC" id="5HLeEcfwOYj" role="3ndbpf">
                  <node concept="3oM_SD" id="5HLeEcfwOZl" role="1PaTwD">
                    <property role="3oM_SC" value="intentionally" />
                  </node>
                  <node concept="3oM_SD" id="5HLeEcfwP0e" role="1PaTwD">
                    <property role="3oM_SC" value="meaningless" />
                  </node>
                  <node concept="3oM_SD" id="5HLeEcfwP1U" role="1PaTwD">
                    <property role="3oM_SC" value="pattern" />
                  </node>
                  <node concept="3oM_SD" id="5HLeEcfwP2b" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="5HLeEcfwP2t" role="1PaTwD">
                    <property role="3oM_SC" value="avoid" />
                  </node>
                  <node concept="3oM_SD" id="5HLeEcfwP2A" role="1PaTwD">
                    <property role="3oM_SC" value="entering" />
                  </node>
                  <node concept="3oM_SD" id="5HLeEcfwP2U" role="1PaTwD">
                    <property role="3oM_SC" value="invalid" />
                  </node>
                  <node concept="3oM_SD" id="5HLeEcfwP3z" role="1PaTwD">
                    <property role="3oM_SC" value="constructs" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="5HLeEcfyFik" role="3cqZAp">
                <node concept="1PaTwC" id="5HLeEcfyFil" role="3ndbpf">
                  <node concept="3oM_SD" id="5HLeEcfyFin" role="1PaTwD">
                    <property role="3oM_SC" value="https://youtrack.jetbrains.com/issue/MPS-31790" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5HLeEcfwtjA" role="3cqZAp">
                <node concept="Xl_RD" id="5HLeEcfwtIR" role="3cqZAk">
                  <property role="Xl_RC" value="???" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NL0t" id="59P$gGfNcoT" role="upBLP">
          <node concept="uGdhv" id="59P$gGfNcwi" role="16NL0q">
            <node concept="3clFbS" id="59P$gGfNcwk" role="2VODD2">
              <node concept="3clFbF" id="59P$gGfNc_3" role="3cqZAp">
                <node concept="3cpWs3" id="59P$gGfYHIt" role="3clFbG">
                  <node concept="3cpWs3" id="59P$gGfYHiY" role="3uHU7B">
                    <node concept="3cpWs3" id="59P$gGfNd7y" role="3uHU7B">
                      <node concept="Xl_RD" id="59P$gGfNd8m" role="3uHU7B">
                        <property role="Xl_RC" value="evaluate " />
                      </node>
                      <node concept="2OqwBi" id="59P$gGfOjAf" role="3uHU7w">
                        <node concept="3jrdc4" id="59P$gGfOj_m" role="2Oq$k0" />
                        <node concept="3j5asI" id="59P$gGfYc8m" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="59P$gGfYHIz" role="3uHU7w">
                      <property role="Xl_RC" value=" " />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="59P$gGfYHRX" role="3uHU7w">
                    <node concept="3jrdc4" id="59P$gGfYHQ$" role="2Oq$k0" />
                    <node concept="3j5asx" id="59P$gGfYI6o" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2kknPJ" id="4hPXq9JmemK" role="2klrvf">
          <ref role="2ZyFGn" to="tpee:fz3vP1J" resolve="Expression" />
        </node>
        <node concept="3N5aqt" id="4hPXq9JmemL" role="3Na0zg">
          <node concept="3clFbS" id="4hPXq9JmemM" role="2VODD2">
            <node concept="3cpWs8" id="4hPXq9JmemN" role="3cqZAp">
              <node concept="3cpWsn" id="4hPXq9JmemO" role="3cpWs9">
                <property role="TrG5h" value="eit" />
                <node concept="3Tqbb2" id="4hPXq9JmemP" role="1tU5fm">
                  <ref role="ehGHo" to="5j4j:7lt0LtQg3tE" resolve="ExpressionItem" />
                </node>
                <node concept="2ShNRf" id="4hPXq9JmemQ" role="33vP2m">
                  <node concept="3zrR0B" id="4hPXq9JmemR" role="2ShVmc">
                    <node concept="3Tqbb2" id="4hPXq9JmemS" role="3zrR0E">
                      <ref role="ehGHo" to="5j4j:7lt0LtQg3tE" resolve="ExpressionItem" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4hPXq9JmemT" role="3cqZAp">
              <node concept="2OqwBi" id="4hPXq9JmemU" role="3clFbG">
                <node concept="2OqwBi" id="4hPXq9JmemV" role="2Oq$k0">
                  <node concept="37vLTw" id="hYA4RDD7N_" role="2Oq$k0">
                    <ref role="3cqZAo" node="4hPXq9JmemO" resolve="eit" />
                  </node>
                  <node concept="3TrEf2" id="hYA4RDFAMo" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:7lt0LtQg3vl" resolve="code" />
                  </node>
                </node>
                <node concept="2oxUTD" id="4hPXq9JmemY" role="2OqNvi">
                  <node concept="3N4pyC" id="4hPXq9Jmen2" role="2oxUTC" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4hPXq9Jmen0" role="3cqZAp">
              <node concept="37vLTw" id="hYA4RDD7Uk" role="3clFbG">
                <ref role="3cqZAo" node="4hPXq9JmemO" resolve="eit" />
              </node>
            </node>
          </node>
        </node>
        <node concept="upBMk" id="4hPXq9Jment" role="upBLP">
          <node concept="uqdF1" id="4hPXq9Jmenu" role="upBLF">
            <node concept="3clFbS" id="4hPXq9Jmenv" role="2VODD2">
              <node concept="3clFbF" id="4hPXq9JmenA" role="3cqZAp">
                <node concept="2OqwBi" id="4hPXq9Jmenx" role="3clFbG">
                  <node concept="uqdCJ" id="4hPXq9Jmenw" role="2Oq$k0" />
                  <node concept="1OKiuA" id="4hPXq9Jmeny" role="2OqNvi">
                    <node concept="1Q80Hx" id="4hPXq9Jmenz" role="lBI5i" />
                    <node concept="2B6iha" id="4hPXq9Jmen$" role="lGT1i">
                      <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="4hPXq9Jmen_" role="3dN3m$">
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
  <node concept="24kQdi" id="hYA4REbm2v">
    <property role="3GE5qa" value="logical.item.expression" />
    <ref role="1XX52x" to="5j4j:hYA4REbm1C" resolve="LogicalVariableRefExpression" />
    <node concept="3EZMnI" id="hYA4REb_Wp" role="2wV5jI">
      <node concept="PMmxH" id="hYA4REb_Wz" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="11LMrY" id="hYA4REbEIf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="hYA4REb_WE" role="3EZMnx">
        <ref role="1NtTu8" to="5j4j:hYA4REb_WC" resolve="logical" />
      </node>
      <node concept="l2Vlx" id="hYA4REb_Ws" role="2iSdaV" />
    </node>
  </node>
  <node concept="3p36aQ" id="hYA4REdLc9">
    <property role="3GE5qa" value="logical.item.expression" />
    <ref role="aqKnT" to="5j4j:hYA4REbm1C" resolve="LogicalVariableRefExpression" />
    <node concept="3ft6gV" id="hYA4REdLCV" role="3ft7WO">
      <node concept="3N5dw7" id="hYA4REdLD5" role="3ft5RZ">
        <node concept="3N5aqt" id="hYA4REdLD6" role="3Na0zg">
          <node concept="3clFbS" id="hYA4REdLD7" role="2VODD2">
            <node concept="3cpWs8" id="hYA4REed61" role="3cqZAp">
              <node concept="3cpWsn" id="hYA4REed62" role="3cpWs9">
                <property role="TrG5h" value="lvre" />
                <node concept="3Tqbb2" id="hYA4REed5K" role="1tU5fm">
                  <ref role="ehGHo" to="5j4j:hYA4REbm1C" resolve="LogicalVariableRefExpression" />
                </node>
                <node concept="2ShNRf" id="hYA4REed63" role="33vP2m">
                  <node concept="3zrR0B" id="hYA4REed64" role="2ShVmc">
                    <node concept="3Tqbb2" id="hYA4REed65" role="3zrR0E">
                      <ref role="ehGHo" to="5j4j:hYA4REbm1C" resolve="LogicalVariableRefExpression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="hYA4REdPRg" role="3cqZAp">
              <node concept="2OqwBi" id="hYA4REedAB" role="3clFbG">
                <node concept="2OqwBi" id="hYA4REedff" role="2Oq$k0">
                  <node concept="37vLTw" id="hYA4REed66" role="2Oq$k0">
                    <ref role="3cqZAo" node="hYA4REed62" resolve="lvre" />
                  </node>
                  <node concept="3TrEf2" id="hYA4REedq4" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:hYA4REb_WC" resolve="logical" />
                  </node>
                </node>
                <node concept="2oxUTD" id="hYA4REedR5" role="2OqNvi">
                  <node concept="3N4pyC" id="hYA4REedV4" role="2oxUTC" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="hYA4REedXw" role="3cqZAp">
              <node concept="37vLTw" id="hYA4REedXu" role="3clFbG">
                <ref role="3cqZAo" node="hYA4REed62" resolve="lvre" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2kknPJ" id="hYA4REdLFk" role="2klrvf">
          <ref role="2ZyFGn" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
        </node>
        <node concept="16NfWO" id="hYA4REdLZI" role="upBLP">
          <node concept="uGdhv" id="hYA4REdM0a" role="16NeZM">
            <node concept="3clFbS" id="hYA4REdM0c" role="2VODD2">
              <node concept="3clFbF" id="hYA4REdMFu" role="3cqZAp">
                <node concept="3cpWs3" id="hYA4REdMYf" role="3clFbG">
                  <node concept="2OqwBi" id="hYA4REdO5K" role="3uHU7w">
                    <node concept="3jrdc4" id="hYA4REdNWt" role="2Oq$k0" />
                    <node concept="3j5asI" id="hYA4REdO79" role="2OqNvi" />
                  </node>
                  <node concept="Xl_RD" id="hYA4REdMFt" role="3uHU7B">
                    <property role="Xl_RC" value="&amp;" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NL0t" id="hYA4REdLYW" role="upBLP">
          <node concept="uGdhv" id="hYA4REdOcd" role="16NL0q">
            <node concept="3clFbS" id="hYA4REdOcf" role="2VODD2">
              <node concept="3clFbF" id="hYA4REdOcH" role="3cqZAp">
                <node concept="3cpWs3" id="hYA4REdPqB" role="3clFbG">
                  <node concept="2OqwBi" id="hYA4REdPt8" role="3uHU7w">
                    <node concept="3jrdc4" id="hYA4REdPrQ" role="2Oq$k0" />
                    <node concept="3j5asx" id="hYA4REdPuR" role="2OqNvi" />
                  </node>
                  <node concept="3cpWs3" id="hYA4REdPfc" role="3uHU7B">
                    <node concept="3cpWs3" id="hYA4REdOCB" role="3uHU7B">
                      <node concept="Xl_RD" id="hYA4REdOcG" role="3uHU7B">
                        <property role="Xl_RC" value="reference " />
                      </node>
                      <node concept="2OqwBi" id="hYA4REdOIm" role="3uHU7w">
                        <node concept="3jrdc4" id="hYA4REdODg" role="2Oq$k0" />
                        <node concept="3j5asI" id="hYA4REdONW" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="hYA4REdPoA" role="3uHU7w">
                      <property role="Xl_RC" value=" " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="upBMk" id="hYA4RDCVnm" role="upBLP">
          <node concept="uqdF1" id="hYA4RDCVnk" role="upBLF">
            <node concept="3clFbS" id="hYA4RDCVni" role="2VODD2">
              <node concept="3clFbF" id="hYA4RDCVns" role="3cqZAp">
                <node concept="2OqwBi" id="hYA4RDCVnA" role="3clFbG">
                  <node concept="uqdCJ" id="hYA4RDCVnE" role="2Oq$k0" />
                  <node concept="1OKiuA" id="hYA4RDCVn$" role="2OqNvi">
                    <node concept="1Q80Hx" id="hYA4RDCVny" role="lBI5i" />
                    <node concept="2B6iha" id="hYA4RDCVnw" role="lGT1i">
                      <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="hYA4RDCVnu" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3ft6gW" id="hYA4RE$sIN" role="3ft5RY">
        <node concept="3clFbS" id="hYA4RE$sIO" role="2VODD2">
          <node concept="3cpWs8" id="hYA4RECcA4" role="3cqZAp">
            <node concept="3cpWsn" id="hYA4RECcA5" role="3cpWs9">
              <property role="TrG5h" value="ancestor" />
              <node concept="3Tqbb2" id="hYA4RECcur" role="1tU5fm">
                <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
              </node>
              <node concept="2OqwBi" id="hYA4RECcA6" role="33vP2m">
                <node concept="3bvxqY" id="hYA4RECcA7" role="2Oq$k0" />
                <node concept="2Xjw5R" id="hYA4RECcA8" role="2OqNvi">
                  <node concept="3gmYPX" id="hYA4RECcA9" role="1xVPHs">
                    <node concept="3gn64h" id="hYA4RECcAa" role="3gmYPZ">
                      <ref role="3gnhBz" to="5j4j:hYA4RE$stU" resolve="EvaluationSetting" />
                    </node>
                    <node concept="3gn64h" id="hYA4RECcAb" role="3gmYPZ">
                      <ref role="3gnhBz" to="tpee:fzclF80" resolve="StatementList" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="hYA4RECcAc" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="hYA4RE$B7Z" role="3cqZAp">
            <node concept="22lmx$" id="hYA4RECd9l" role="3clFbG">
              <node concept="2OqwBi" id="hYA4RECmrG" role="3uHU7w">
                <node concept="37vLTw" id="hYA4RECmiZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="hYA4RECcA5" resolve="ancestor" />
                </node>
                <node concept="1mIQ4w" id="hYA4RECmwZ" role="2OqNvi">
                  <node concept="chp4Y" id="hYA4RECm_A" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fzclF80" resolve="StatementList" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="hYA4RE$BGM" role="3uHU7B">
                <node concept="37vLTw" id="hYA4RECcAd" role="2Oq$k0">
                  <ref role="3cqZAo" node="hYA4RECcA5" resolve="ancestor" />
                </node>
                <node concept="3w_OXm" id="hYA4RECcK5" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5HLeEcfuApQ">
    <property role="TrG5h" value="Workarounds" />
    <node concept="2tJIrI" id="5HLeEcfuAqY" role="jymVt" />
    <node concept="2YIFZL" id="5HLeEcfuAse" role="jymVt">
      <property role="TrG5h" value="filterIgnored" />
      <node concept="37vLTG" id="5HLeEcfuAxH" role="3clF46">
        <property role="TrG5h" value="outputConcept" />
        <node concept="3bZ5Sz" id="5HLeEcfuAz8" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5HLeEcfuArN" role="3clF47">
        <node concept="3SKdUt" id="5HLeEcfufGE" role="3cqZAp">
          <node concept="1PaTwC" id="5HLeEcfufGF" role="3ndbpf">
            <node concept="3oM_SD" id="5HLeEcfufGH" role="1PaTwD">
              <property role="3oM_SC" value="work" />
            </node>
            <node concept="3oM_SD" id="5HLeEcfufJ1" role="1PaTwD">
              <property role="3oM_SC" value="around" />
            </node>
            <node concept="3oM_SD" id="5HLeEcfufJr" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5HLeEcfufJy" role="1PaTwD">
              <property role="3oM_SC" value="bug" />
            </node>
            <node concept="3oM_SD" id="5HLeEcfufJE" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5HLeEcfufJX" role="1PaTwD">
              <property role="3oM_SC" value="menu" />
            </node>
            <node concept="3oM_SD" id="5HLeEcfufKr" role="1PaTwD">
              <property role="3oM_SC" value="builder:" />
            </node>
            <node concept="3oM_SD" id="5HLeEcfufKU" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5HLeEcfufLq" role="1PaTwD">
              <property role="3oM_SC" value="following" />
            </node>
            <node concept="3oM_SD" id="5HLeEcfufLL" role="1PaTwD">
              <property role="3oM_SC" value="concepts" />
            </node>
            <node concept="3oM_SD" id="5HLeEcfufM9" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="5HLeEcfufMo" role="1PaTwD">
              <property role="3oM_SC" value="substituted" />
            </node>
            <node concept="3oM_SD" id="5HLeEcfufMW" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5HLeEcfufNx" role="1PaTwD">
              <property role="3oM_SC" value="*any*" />
            </node>
            <node concept="3oM_SD" id="5HLeEcfufOh" role="1PaTwD">
              <property role="3oM_SC" value="pattern" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5HLeEcfuAW7" role="3cqZAp">
          <node concept="1PaTwC" id="5HLeEcfuAW8" role="3ndbpf">
            <node concept="3oM_SD" id="5HLeEcfuAWa" role="1PaTwD">
              <property role="3oM_SC" value="http://127.0.0.1:63320/node?ref=r%3A00000000-0000-4000-0000-011c895902c3%28jetbrains.mps.baseLanguage.editor%29%2F1741258697586958245" />
            </node>
          </node>
        </node>
        <node concept="1_3QMa" id="5HLeEcfueOm" role="3cqZAp">
          <node concept="1pnPoh" id="5HLeEcfuf33" role="1_3QMm">
            <node concept="3gn64h" id="5HLeEcfuf3G" role="1pnPq6">
              <ref role="3gnhBz" to="tpee:fzcmrck" resolve="IntegerConstant" />
            </node>
            <node concept="3clFbS" id="5HLeEcfuf37" role="1pnPq1">
              <node concept="3cpWs6" id="5HLeEcfuf4j" role="3cqZAp">
                <node concept="3clFbT" id="5HLeEcfuf4W" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="5HLeEcfuf9d" role="1_3QMm">
            <node concept="3gn64h" id="5HLeEcfufai" role="1pnPq6">
              <ref role="3gnhBz" to="tpee:3H1xM9LtL2O" resolve="LongLiteral" />
            </node>
            <node concept="3clFbS" id="5HLeEcfuf9f" role="1pnPq1">
              <node concept="3cpWs6" id="5HLeEcfuf9g" role="3cqZAp">
                <node concept="3clFbT" id="5HLeEcfuf9h" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="5HLeEcfufbb" role="1_3QMm">
            <node concept="3gn64h" id="5HLeEcfufcv" role="1pnPq6">
              <ref role="3gnhBz" to="tpee:fzclF81" resolve="BooleanConstant" />
            </node>
            <node concept="3clFbS" id="5HLeEcfufbd" role="1pnPq1">
              <node concept="3cpWs6" id="5HLeEcfufbe" role="3cqZAp">
                <node concept="3clFbT" id="5HLeEcfufbf" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="5HLeEcfufh5" role="1_3QMm">
            <node concept="3gn64h" id="5HLeEcfufiC" role="1pnPq6">
              <ref role="3gnhBz" to="tpee:gbb6qgO" resolve="FloatingPointConstant" />
            </node>
            <node concept="3clFbS" id="5HLeEcfufh7" role="1pnPq1">
              <node concept="3cpWs6" id="5HLeEcfufh8" role="3cqZAp">
                <node concept="3clFbT" id="5HLeEcfufh9" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="5HLeEcfufjP" role="1_3QMm">
            <node concept="3gn64h" id="5HLeEcfuflB" role="1pnPq6">
              <ref role="3gnhBz" to="tpee:4_5hYVHKxAT" resolve="FloatingPointFloatConstant" />
            </node>
            <node concept="3clFbS" id="5HLeEcfufjR" role="1pnPq1">
              <node concept="3cpWs6" id="5HLeEcfufjS" role="3cqZAp">
                <node concept="3clFbT" id="5HLeEcfufjT" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="5HLeEcfufqx" role="1_3QMm">
            <node concept="3gn64h" id="5HLeEcfufsy" role="1pnPq6">
              <ref role="3gnhBz" to="tpee:f$Xl_Og" resolve="StringLiteral" />
            </node>
            <node concept="3clFbS" id="5HLeEcfufqz" role="1pnPq1">
              <node concept="3cpWs6" id="5HLeEcfufq$" role="3cqZAp">
                <node concept="3clFbT" id="5HLeEcfufq_" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="5HLeEcfuAPo" role="1_3QMn">
            <ref role="3cqZAo" node="5HLeEcfuAxH" resolve="outputConcept" />
          </node>
          <node concept="3clFbS" id="5HLeEcfufu8" role="1prKM_">
            <node concept="3cpWs6" id="5HLeEcfufu7" role="3cqZAp">
              <node concept="3clFbT" id="5HLeEcfufzj" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5HLeEcfuAt8" role="3clF45" />
      <node concept="3Tmbuc" id="5HLeEcfuARK" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5HLeEcfuAQA" role="jymVt" />
  </node>
  <node concept="24kQdi" id="1fvYCPAmuWH">
    <property role="3GE5qa" value="dataform" />
    <ref role="1XX52x" to="5j4j:1fvYCPAmuWc" resolve="ConsListNode" />
    <node concept="3EZMnI" id="1fvYCPAmuWJ" role="2wV5jI">
      <node concept="3F2HdR" id="1fvYCPAmz4p" role="3EZMnx">
        <property role="2czwfO" value="::" />
        <ref role="1NtTu8" to="5j4j:1fvYCPAmuWd" resolve="head" />
        <node concept="l2Vlx" id="1fvYCPAmz4r" role="2czzBx" />
        <node concept="tppnM" id="1fvYCPAmz4z" role="sWeuL">
          <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
        </node>
        <node concept="3F0ifn" id="1fvYCPAq5Hn" role="2czzBI">
          <property role="ilYzB" value="&lt;no head&gt;" />
        </node>
      </node>
      <node concept="3F0ifn" id="1fvYCPAmuWW" role="3EZMnx">
        <property role="3F0ifm" value="::" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
      </node>
      <node concept="3F1sOY" id="1fvYCPAmvKK" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <property role="1$x2rV" value="&lt;no tail&gt;" />
        <ref role="1NtTu8" to="5j4j:1fvYCPAmuWf" resolve="tail" />
      </node>
      <node concept="l2Vlx" id="1fvYCPAmuWM" role="2iSdaV" />
    </node>
  </node>
  <node concept="3p36aQ" id="1fvYCPApyrW">
    <property role="3GE5qa" value="dataform" />
    <ref role="aqKnT" to="5j4j:1fvYCPAmuWc" resolve="ConsListNode" />
    <node concept="3eGOop" id="1fvYCPApys2" role="3ft7WO">
      <node concept="ucgPf" id="1fvYCPApys4" role="3aKz83">
        <node concept="3clFbS" id="1fvYCPApys6" role="2VODD2">
          <node concept="3clFbF" id="1fvYCPApzwM" role="3cqZAp">
            <node concept="2ShNRf" id="1fvYCPApzwK" role="3clFbG">
              <node concept="3zrR0B" id="1fvYCPApIpR" role="2ShVmc">
                <node concept="3Tqbb2" id="1fvYCPApIpT" role="3zrR0E">
                  <ref role="ehGHo" to="5j4j:1fvYCPAmuWc" resolve="ConsListNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="1fvYCPApyur" role="upBLP">
        <node concept="uGdhv" id="1fvYCPApyuO" role="16NeZM">
          <node concept="3clFbS" id="1fvYCPApyuQ" role="2VODD2">
            <node concept="3clFbF" id="1fvYCPApyzx" role="3cqZAp">
              <node concept="Xl_RD" id="1fvYCPApyzw" role="3clFbG">
                <property role="Xl_RC" value="::" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NL0t" id="1fvYCPApy_8" role="upBLP">
        <node concept="uGdhv" id="1fvYCPApyAN" role="16NL0q">
          <node concept="3clFbS" id="1fvYCPApyAP" role="2VODD2">
            <node concept="3clFbF" id="1fvYCPApyBn" role="3cqZAp">
              <node concept="2OqwBi" id="1fvYCPApz8A" role="3clFbG">
                <node concept="35c_gC" id="1fvYCPApyBm" role="2Oq$k0">
                  <ref role="35c_gD" to="5j4j:1fvYCPAmuWc" resolve="ConsListNode" />
                </node>
                <node concept="3n3YKJ" id="1fvYCPApzuz" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ft5Ry" id="1fvYCPApyrX" role="3ft7WO">
      <ref role="4PJHt" to="5j4j:1fvYCPAmuWc" resolve="ConsListNode" />
    </node>
  </node>
  <node concept="24kQdi" id="4nUKN9YNYrP">
    <property role="3GE5qa" value="logical.type" />
    <ref role="1XX52x" to="5j4j:7HUwyZb1HXL" resolve="MultiLogicalType" />
    <node concept="3EZMnI" id="4nUKN9YNYrR" role="2wV5jI">
      <node concept="PMmxH" id="4nUKN9YNYwz" role="3EZMnx">
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3EZMnI" id="4nUKN9YNYw$" role="3EZMnx">
        <node concept="VPM3Z" id="4nUKN9YNYw_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="4nUKN9YNYwA" role="3EZMnx">
          <property role="3F0ifm" value="&lt;" />
          <ref role="1k5W1q" to="tpen:75A9veqzBn9" resolve="LeftAngleBracket" />
          <node concept="11L4FC" id="4nUKN9YNYwB" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="4nUKN9YNYwC" role="3EZMnx">
          <ref role="1NtTu8" to="5j4j:5zfvpQ71CIE" resolve="dataType" />
        </node>
        <node concept="3F0ifn" id="4nUKN9YNYwD" role="3EZMnx">
          <property role="3F0ifm" value="&gt;" />
          <ref role="1k5W1q" to="tpen:75A9veqzBna" resolve="RightAngleBracket" />
          <node concept="11LMrY" id="4nUKN9YNYwE" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="l2Vlx" id="4nUKN9YNYwF" role="2iSdaV" />
        <node concept="pkWqt" id="4nUKN9YNYwG" role="pqm2j">
          <node concept="3clFbS" id="4nUKN9YNYwH" role="2VODD2">
            <node concept="3clFbF" id="4nUKN9YNYwI" role="3cqZAp">
              <node concept="2OqwBi" id="4nUKN9YNYwJ" role="3clFbG">
                <node concept="2OqwBi" id="4nUKN9YNYwK" role="2Oq$k0">
                  <node concept="pncrf" id="4nUKN9YNYwL" role="2Oq$k0" />
                  <node concept="Bykcj" id="4nUKN9YNYwM" role="2OqNvi">
                    <node concept="1aIX9F" id="4nUKN9YNYwN" role="1xVPHs">
                      <node concept="26LbJo" id="4nUKN9YNYwO" role="1aIX9E">
                        <ref role="26LbJp" to="5j4j:5zfvpQ71CIE" resolve="dataType" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="4nUKN9YNYwP" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="4nUKN9YNYrU" role="2iSdaV" />
    </node>
  </node>
</model>

