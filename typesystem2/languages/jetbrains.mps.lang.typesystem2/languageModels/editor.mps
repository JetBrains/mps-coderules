<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3345f3eb-f61a-42bd-88eb-d9032a80e9a6(jetbrains.mps.lang.typesystem2.editor)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="hy7p" ref="r:01ee26d6-df00-4ffb-931c-1ddec5984886(jetbrains.mps.lang.typesystem2.util)" />
    <import index="ykok" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.constraints(MPS.Core/)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.builtin.predicate)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" implicit="true" />
    <import index="qgy9" ref="r:5195f849-566d-46a3-bb0a-7ae9911e2652(jetbrains.mps.logic.editor)" implicit="true" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ng" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="6516520003787916624" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Condition" flags="ig" index="27VH4U" />
      <concept id="7429591467341004871" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Group" flags="ng" index="aenpk">
        <child id="7429591467341004872" name="parts" index="aenpr" />
        <child id="7429591467341004877" name="condition" index="aenpu" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <property id="1156252885376" name="separatorLayoutConstraint" index="Q2I2d" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
        <child id="928328222691832421" name="separatorTextQuery" index="2gpyvW" />
        <child id="1233141163694" name="separatorStyle" index="sWeuL" />
      </concept>
      <concept id="1196434649611" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_SimpleString" flags="ng" index="2h3Zct">
        <property id="1196434851095" name="text" index="2h4Kg1" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="3459162043708467089" name="jetbrains.mps.lang.editor.structure.CellActionMap_CanExecuteFunction" flags="in" index="jK8Ss" />
      <concept id="6089045305654894367" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Named" flags="ng" index="2kknPI">
        <reference id="6089045305654944382" name="menu" index="2kkw0f" />
      </concept>
      <concept id="6089045305654894366" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Default" flags="ng" index="2kknPJ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="3308309804690746362" name="jetbrains.mps.lang.editor.structure.QueryFunction_ColorComposit" flags="ig" index="mot77" />
      <concept id="784421273959492578" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_IncludeMenu" flags="ng" index="mvV$s">
        <child id="784421273959492606" name="nodeFunction" index="mvV$0" />
        <child id="6718020819487784677" name="menuReference" index="A14EM" />
      </concept>
      <concept id="784421273959493166" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_TargetNode" flags="ig" index="mvVNg" />
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
      <concept id="8478191136883534207" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_Selection" flags="ng" index="upBMk">
        <child id="8478191136883534208" name="query" index="upBLF" />
      </concept>
      <concept id="8478191136882577348" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_CreatedNode" flags="ng" index="uqdCJ" />
      <concept id="8478191136882577194" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Select" flags="in" index="uqdF1" />
      <concept id="1177335944525" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_SubstituteString" flags="in" index="uGdhv" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="562388756446465666" name="jetbrains.mps.lang.editor.structure.MigratedSideTransformMenuAttribute" flags="ng" index="yp4Wq">
        <property id="562388756446465811" name="transformTag" index="yp4Ub" />
      </concept>
      <concept id="8371900013785948369" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Parameter" flags="ig" index="2$S_p_" />
      <concept id="6718020819487620876" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Default" flags="ng" index="A1WHr" />
      <concept id="6718020819487620873" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Named" flags="ng" index="A1WHu">
        <reference id="6718020819487620874" name="menu" index="A1WHt" />
      </concept>
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
      </concept>
      <concept id="3473224453637651916" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder" flags="ng" index="CtIbL">
        <property id="3473224453637651917" name="placeInCell" index="CtIbK" />
      </concept>
      <concept id="308059530142752797" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Parameterized" flags="ng" index="2F$Pav">
        <child id="8371900013785948359" name="part" index="2$S_pN" />
        <child id="8371900013785948365" name="parameterQuery" index="2$S_pT" />
      </concept>
      <concept id="1638911550608571617" name="jetbrains.mps.lang.editor.structure.TransformationMenu_Default" flags="ng" index="IW6AY" />
      <concept id="1638911550608610798" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute" flags="ig" index="IWg2L" />
      <concept id="1638911550608610278" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action" flags="ng" index="IWgqT">
        <child id="6202297022026447496" name="canExecuteFunction" index="2jiSrf" />
        <child id="1638911550608610281" name="executeFunction" index="IWgqQ" />
        <child id="5692353713941573325" name="textFunction" index="1hCUd6" />
      </concept>
      <concept id="8449131619432941427" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Super" flags="ng" index="L$LW2" />
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="3738029991950788349" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_Named" flags="ng" index="Q6S24" />
      <concept id="1149850725784" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedNodeCell" flags="ng" index="2SsqMj" />
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
      <concept id="1186414999511" name="jetbrains.mps.lang.editor.structure.UnderlinedStyleClassItem" flags="ln" index="VQ3r3">
        <property id="1214316229833" name="underlined" index="2USNnj" />
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
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
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
      <concept id="2115302367868116903" name="jetbrains.mps.lang.editor.structure.GeneratedSubstituteMenuAttribute" flags="ng" index="382kZG" />
      <concept id="1154465273778" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_ParentNode" flags="nn" index="3bvxqY" />
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
        <property id="1139537298254" name="description" index="1hHO97" />
        <child id="3459162043708468028" name="canExecuteFunction" index="jK8aL" />
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
      <concept id="1223386653097" name="jetbrains.mps.lang.editor.structure.StrikeOutStyleSheet" flags="ln" index="3nxI2P" />
      <concept id="1223387125302" name="jetbrains.mps.lang.editor.structure.QueryFunction_Boolean" flags="in" index="3nzxsE" />
      <concept id="1165424453110" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item" flags="ng" index="1oHujT">
        <property id="1165424453111" name="matchingText" index="1oHujS" />
        <child id="1165424453112" name="handlerFunction" index="1oHujR" />
      </concept>
      <concept id="1165424657443" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item_Handler" flags="in" index="1oIgkG" />
      <concept id="3308396621974588243" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_Contribution" flags="ng" index="3p309x">
        <child id="7173407872095451092" name="menuReference" index="1IG6uw" />
      </concept>
      <concept id="3308396621974580100" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_Default" flags="ng" index="3p36aQ" />
      <concept id="7580468736840446506" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_model" flags="nn" index="1rpKSd" />
      <concept id="730181322658904464" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_IncludeMenu" flags="ng" index="1s_PAr">
        <child id="730181322658904467" name="menuReference" index="1s_PAo" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1219226236603" name="jetbrains.mps.lang.editor.structure.DrawBracketsStyleClassItem" flags="ln" index="3vyZuw" />
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="1075375595203" name="jetbrains.mps.lang.editor.structure.CellModel_Error" flags="sg" stub="8104358048506729356" index="1xolST">
        <property id="1075375595204" name="text" index="1xolSY" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="7667708318090725848" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentAnchorStyleClassItem" flags="ln" index="1Bsynf" />
      <concept id="7667708318090877006" name="jetbrains.mps.lang.editor.structure.IndentLayoutWrapAnchorStyleClassItem" flags="ln" index="1Bt7hp" />
      <concept id="7991336459489871999" name="jetbrains.mps.lang.editor.structure.IOutputConceptSubstituteMenuPart" flags="ng" index="3EoQpk">
        <reference id="7991336459489872009" name="outputConcept" index="3EoQqy" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1160590353935" name="usesFolding" index="S$Qs1" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
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
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY">
        <property id="16410578721444372" name="customizeEmptyCell" index="2ru_X1" />
        <child id="16410578721629643" name="emptyCellModel" index="2ruayu" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="843003353410421268" name="jetbrains.mps.lang.editor.structure.IOutputConceptTransformationMenuPart" flags="ng" index="1FNN41">
        <child id="843003353410424960" name="outputConceptReference" index="1FNMel" />
      </concept>
      <concept id="843003353410421233" name="jetbrains.mps.lang.editor.structure.OptionalConceptReference" flags="ng" index="1FNNb$">
        <reference id="843003353410421234" name="concept" index="1FNNbB" />
      </concept>
      <concept id="4233361609415247331" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Parameter" flags="ig" index="1GhMSn" />
      <concept id="4233361609415240997" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Parameterized" flags="ng" index="1GhOrh">
        <child id="4233361609415240998" name="part" index="1GhOri" />
        <child id="4233361609415241000" name="parameterQuery" index="1GhOrs" />
      </concept>
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="nn" index="3GMtW1" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="5624877018226904808" name="jetbrains.mps.lang.editor.structure.TransformationMenu_Named" flags="ng" index="3ICXOK" />
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ng" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="1221634900557" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_Link" flags="nn" index="1J7kdh" />
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
      <concept id="1088612959204" name="jetbrains.mps.lang.editor.structure.CellModel_Alternation" flags="sg" stub="8104358048506729361" index="1QoScp">
        <property id="1088613081987" name="vertical" index="1QpmdY" />
        <child id="1145918517974" name="alternationCondition" index="3e4ffs" />
        <child id="1088612958265" name="ifTrueCellModel" index="1QoS34" />
        <child id="1088612973955" name="ifFalseCellModel" index="1QoVPY" />
      </concept>
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
        <child id="7980428675268276159" name="parts" index="1Qtc8A" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="8428109087107030357" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_ReferenceScope" flags="ng" index="3XHNnq">
        <reference id="8428109087107339113" name="reference" index="3XGfJA" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
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
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
      <concept id="5480835971642155304" name="jetbrains.mps.lang.actions.structure.NF_Model_CreateNewNodeOperation" flags="nn" index="15TzpJ" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204851882688" name="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" flags="ng" index="26LbJo">
        <reference id="1204851882689" name="link" index="26LbJp" />
      </concept>
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="7835263205327057228" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenAndChildAttributesOperation" flags="ng" index="Bykcj" />
      <concept id="1143235216708" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewNodeOperation" flags="nn" index="I8ghe">
        <reference id="1143235391024" name="concept" index="I8UWU" />
      </concept>
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1182511038748" name="jetbrains.mps.lang.smodel.structure.Model_NodesIncludingImportedOperation" flags="nn" index="1j9C0f">
        <reference id="1182511038750" name="concept" index="1j9C0d" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
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
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="6p0DfM0bngw">
    <property role="3GE5qa" value="constraint.template" />
    <ref role="1XX52x" to="wq2x:6p0DfM0asBO" resolve="ConstraintDeclaration" />
    <node concept="3EZMnI" id="6p0DfM0brAq" role="2wV5jI">
      <node concept="3F0A7n" id="6p0DfM0brDT" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="7ksQUDZpyGq" resolve="Constraint" />
      </node>
      <node concept="3F0ifn" id="6p0DfM0brFJ" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F2HdR" id="1CgWc1TzfCk" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="wq2x:1CgWc1TyPxy" resolve="parameters" />
        <node concept="l2Vlx" id="1CgWc1TzfCm" role="2czzBx" />
        <node concept="3F0ifn" id="7XmdqtdvSZm" role="2czzBI">
          <property role="3F0ifm" value="" />
        </node>
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
  <node concept="24kQdi" id="6p0DfM0cz0d">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="wq2x:7eGEHDlgPU4" resolve="Rule" />
    <node concept="3EZMnI" id="6p0DfM0cz1S" role="2wV5jI">
      <node concept="3F0ifn" id="7lt0LtPnME8" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="ljvvj" id="7lt0LtPnN4A" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="7lt0LtPnN4C" role="pqm2j">
          <node concept="3clFbS" id="7lt0LtPnN4D" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPnNbQ" role="3cqZAp">
              <node concept="3eOSWO" id="7lt0LtPnPm5" role="3clFbG">
                <node concept="3cmrfG" id="7lt0LtPnPmb" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="7lt0LtPnNsJ" role="3uHU7B">
                  <node concept="pncrf" id="7lt0LtPnNbP" role="2Oq$k0" />
                  <node concept="2bSWHS" id="7lt0LtPnObH" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="7ksQUDZrjgg" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
      </node>
      <node concept="3F0A7n" id="6p0DfM0c$tx" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="tpen:hshUnm6" resolve="StaticMethod" />
      </node>
      <node concept="3F1sOY" id="5NuEpF1ikEB" role="3EZMnx">
        <property role="1$x2rV" value="standalone" />
        <ref role="1NtTu8" to="wq2x:6wQEDbCCPyR" resolve="input" />
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
            <property role="3F0ifm" value="exactly" />
            <ref role="1ERwB7" node="12yN8DyB6zn" resolve="Rule_ActionMap" />
            <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
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
                <property role="1oHujS" value="exactly" />
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
                    <node concept="3TrEf2" id="6wQEDbCDT0v" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:6wQEDbCCPyR" resolve="input" />
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
          <node concept="VPM3Z" id="4laj_h9ENem" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="l2Vlx" id="4laj_h9ENep" role="2iSdaV" />
          <node concept="3EZMnI" id="6ntBQ9KBkgz" role="3EZMnx">
            <node concept="VPM3Z" id="6ntBQ9KBkg_" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="l2Vlx" id="6ntBQ9KBkgC" role="2iSdaV" />
            <node concept="3EZMnI" id="4nIWweBXSPg" role="3EZMnx">
              <node concept="VPM3Z" id="4nIWweBXSPi" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="ljvvj" id="4laj_h9Oyj_" role="3F10Kt">
                <property role="VOm3f" value="true" />
                <node concept="3nzxsE" id="4nIWweBWLDt" role="3n$kyP">
                  <node concept="3clFbS" id="4nIWweBWLDu" role="2VODD2">
                    <node concept="3clFbF" id="4nIWweBWLR1" role="3cqZAp">
                      <node concept="2OqwBi" id="4nIWweBWNq_" role="3clFbG">
                        <node concept="2OqwBi" id="4nIWweBWM7S" role="2Oq$k0">
                          <node concept="pncrf" id="4nIWweBWLR0" role="2Oq$k0" />
                          <node concept="3TrEf2" id="4nIWweBWMNt" role="2OqNvi">
                            <ref role="3Tt5mk" to="wq2x:5MHpiylGjt8" resolve="iterateParameterBlock" />
                          </node>
                        </node>
                        <node concept="3x8VRR" id="4nIWweBWO9k" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="l2Vlx" id="4nIWweBXSPl" role="2iSdaV" />
              <node concept="3F1sOY" id="4laj_h9Ob6i" role="3EZMnx">
                <property role="1$x2rV" value="apply always" />
                <ref role="1NtTu8" to="wq2x:3KXGt7WSNcl" resolve="condition" />
              </node>
              <node concept="3F0ifn" id="4nIWweBXTUV" role="3EZMnx">
                <property role="3F0ifm" value="," />
                <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
              </node>
            </node>
            <node concept="3EZMnI" id="4nIWweBXUjQ" role="3EZMnx">
              <node concept="l2Vlx" id="4nIWweBXUjR" role="2iSdaV" />
              <node concept="3F1sOY" id="5MHpiylGwfp" role="3EZMnx">
                <property role="1$x2rV" value="only once" />
                <ref role="1NtTu8" to="wq2x:5MHpiylGjt8" resolve="iterateParameterBlock" />
              </node>
              <node concept="3F0ifn" id="4nIWweBXVWb" role="3EZMnx">
                <property role="3F0ifm" value="," />
                <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
              </node>
              <node concept="VPM3Z" id="4nIWweBXU_J" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="ljvvj" id="5MHpiylIEQI" role="3F10Kt">
                <property role="VOm3f" value="true" />
                <node concept="3nzxsE" id="4nIWweBXl7C" role="3n$kyP">
                  <node concept="3clFbS" id="4nIWweBXl7D" role="2VODD2">
                    <node concept="3clFbF" id="4nIWweBXleR" role="3cqZAp">
                      <node concept="2OqwBi" id="4nIWweBXmLP" role="3clFbG">
                        <node concept="2OqwBi" id="4nIWweBXlvI" role="2Oq$k0">
                          <node concept="pncrf" id="4nIWweBXleQ" role="2Oq$k0" />
                          <node concept="3TrEf2" id="4nIWweBXmbH" role="2OqNvi">
                            <ref role="3Tt5mk" to="wq2x:1ffsG7bh6Cz" resolve="requiredNodeBlock" />
                          </node>
                        </node>
                        <node concept="3x8VRR" id="4nIWweBXnsG" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3EZMnI" id="4nIWweBXWkJ" role="3EZMnx">
              <node concept="VPM3Z" id="4nIWweBXWAy" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="ljvvj" id="tIwzd1EXkv" role="3F10Kt">
                <property role="VOm3f" value="true" />
                <node concept="3nzxsE" id="4nIWweBYdno" role="3n$kyP">
                  <node concept="3clFbS" id="4nIWweBYdnp" role="2VODD2">
                    <node concept="3clFbF" id="4nIWweBYduB" role="3cqZAp">
                      <node concept="2OqwBi" id="4nIWweBYeSa" role="3clFbG">
                        <node concept="2OqwBi" id="4nIWweBYdJu" role="2Oq$k0">
                          <node concept="pncrf" id="4nIWweBYduA" role="2Oq$k0" />
                          <node concept="3TrEf2" id="4nIWweC1qNp" role="2OqNvi">
                            <ref role="3Tt5mk" to="wq2x:6wQEDbCHGnY" resolve="letBlock" />
                          </node>
                        </node>
                        <node concept="3x8VRR" id="4nIWweBYfjD" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="l2Vlx" id="4nIWweBXWkK" role="2iSdaV" />
              <node concept="3F1sOY" id="tIwzd1EXki" role="3EZMnx">
                <property role="1$x2rV" value="no extra rules" />
                <ref role="1NtTu8" to="wq2x:1ffsG7bh6Cz" resolve="requiredNodeBlock" />
              </node>
              <node concept="3F0ifn" id="4nIWweBXWAH" role="3EZMnx">
                <property role="3F0ifm" value="," />
                <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
              </node>
            </node>
            <node concept="3EZMnI" id="4nIWweBZDRW" role="3EZMnx">
              <node concept="l2Vlx" id="4nIWweBZDRX" role="2iSdaV" />
              <node concept="3F1sOY" id="1zN1RIkQKV0" role="3EZMnx">
                <property role="1$x2rV" value="no values" />
                <ref role="1NtTu8" to="wq2x:6wQEDbCHGnY" resolve="letBlock" />
              </node>
              <node concept="VPM3Z" id="4nIWweBZEcc" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="ljvvj" id="1zN1RIkQKV1" role="3F10Kt">
                <property role="VOm3f" value="true" />
                <node concept="3nzxsE" id="4nIWweC157m" role="3n$kyP">
                  <node concept="3clFbS" id="4nIWweC157n" role="2VODD2">
                    <node concept="3clFbF" id="4nIWweC15e_" role="3cqZAp">
                      <node concept="2OqwBi" id="4nIWweC16C8" role="3clFbG">
                        <node concept="2OqwBi" id="4nIWweC15vs" role="2Oq$k0">
                          <node concept="pncrf" id="4nIWweC15e$" role="2Oq$k0" />
                          <node concept="3TrEf2" id="4nIWweC1668" role="2OqNvi">
                            <ref role="3Tt5mk" to="wq2x:6wQEDbCLoaZ" resolve="includeClause" />
                          </node>
                        </node>
                        <node concept="3x8VRR" id="4nIWweC17ad" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3F0ifn" id="4nIWweBZZ21" role="3EZMnx">
                <property role="3F0ifm" value="," />
                <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
              </node>
            </node>
            <node concept="3EZMnI" id="4nIWweBYd5u" role="3EZMnx">
              <node concept="l2Vlx" id="4nIWweBYd5v" role="2iSdaV" />
              <node concept="3F1sOY" id="5Ii$nZP0k3L" role="3EZMnx">
                <property role="1$x2rV" value="no fragments" />
                <ref role="1NtTu8" to="wq2x:6wQEDbCLoaZ" resolve="includeClause" />
              </node>
              <node concept="VPM3Z" id="4nIWweBYdne" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="ljvvj" id="5Ii$nZP0k4q" role="3F10Kt">
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
        <node concept="PMmxH" id="4nIWweBWodT" role="3EZMnx">
          <ref role="PMmxG" node="4nIWweBWmzT" resolve="AbstractRule_contents" />
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
      <node concept="3EZMnI" id="4nIWweBIFec" role="3EZMnx">
        <node concept="VPM3Z" id="4nIWweBIFed" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="ljvvj" id="7lt0LtPhUBA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="4nIWweBIFef" role="3EZMnx">
          <property role="3F0ifm" value="&lt;" />
          <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
          <node concept="11LMrY" id="4aJUH_hSNbG" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="4nIWweBIFeo" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="wq2x:PB1R3Y7EcX" resolve="parameter" />
          <node concept="l2Vlx" id="4nIWweBIFep" role="2czzBx" />
          <node concept="3F0ifn" id="4nIWweBIFeq" role="2czzBI" />
        </node>
        <node concept="3F0ifn" id="4aJUH_hLNmu" role="3EZMnx">
          <property role="3F0ifm" value="&gt;" />
          <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
          <node concept="11L4FC" id="4aJUH_hSNlB" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="4nIWweBIFer" role="2iSdaV" />
        <node concept="pkWqt" id="4aJUH_hTEv6" role="pqm2j">
          <node concept="3clFbS" id="4aJUH_hTEv7" role="2VODD2">
            <node concept="3clFbF" id="4aJUH_hTEEw" role="3cqZAp">
              <node concept="2OqwBi" id="4aJUH_hTEEx" role="3clFbG">
                <node concept="2OqwBi" id="4aJUH_hTEEy" role="2Oq$k0">
                  <node concept="pncrf" id="4aJUH_hTEEz" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="4aJUH_hTEE$" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:PB1R3Y7EcX" resolve="parameter" />
                  </node>
                </node>
                <node concept="3GX2aA" id="4aJUH_hTEE_" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="3g$8GQC8l_I" role="3EZMnx">
        <ref role="PMmxG" node="3g$8GQC8l_C" resolve="RuleComponentCode" />
        <node concept="lj46D" id="7lt0LtPhULE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="6p0DfM0cTe3" role="2iSdaV" />
      <node concept="1Bt7hp" id="7lt0LtPhUj$" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6p0DfM0cXHS">
    <property role="3GE5qa" value="rule.component" />
    <ref role="1XX52x" to="wq2x:6p0DfM0a3gA" resolve="Head" />
    <node concept="3EZMnI" id="6p0DfM0cXIK" role="2wV5jI">
      <node concept="3EZMnI" id="PB1R3Y7Kyb" role="3EZMnx">
        <node concept="VPM3Z" id="PB1R3Y7Kyd" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="ljvvj" id="7lt0LtP6RGV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="PB1R3Y7KCo" role="3EZMnx">
          <property role="3F0ifm" value="&lt;" />
          <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
          <node concept="11LMrY" id="4aJUH_hT7OZ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="PB1R3Y7KCA" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="wq2x:PB1R3Y7EcX" resolve="parameter" />
          <node concept="l2Vlx" id="PB1R3Y7KCC" role="2czzBx" />
          <node concept="3F0ifn" id="PB1R3Y8Bfi" role="2czzBI" />
        </node>
        <node concept="3F0ifn" id="4aJUH_hPok9" role="3EZMnx">
          <property role="3F0ifm" value="&gt;" />
          <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
          <node concept="11L4FC" id="4aJUH_hT8iC" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="PB1R3Y7Kyg" role="2iSdaV" />
        <node concept="pkWqt" id="4aJUH_hTDWu" role="pqm2j">
          <node concept="3clFbS" id="4aJUH_hTDWv" role="2VODD2">
            <node concept="3clFbF" id="4aJUH_hTDW_" role="3cqZAp">
              <node concept="2OqwBi" id="4aJUH_hTDWA" role="3clFbG">
                <node concept="2OqwBi" id="4aJUH_hTDWB" role="2Oq$k0">
                  <node concept="pncrf" id="4aJUH_hTDWC" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="4aJUH_hTDWD" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:PB1R3Y7EcX" resolve="parameter" />
                  </node>
                </node>
                <node concept="3GX2aA" id="4aJUH_hTDWE" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="2E5lcNn0INE" role="3EZMnx">
        <node concept="VPM3Z" id="2E5lcNn0ING" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="7lt0LtPcM21" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="4nIWweBHMBe" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="2E5lcNn0J1l" role="3EZMnx">
          <property role="3F0ifm" value="!" />
          <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
          <ref role="1ERwB7" node="7lt0LtPQ8ft" resolve="Head_delete_keep" />
          <node concept="pkWqt" id="4nIWweBHrrS" role="pqm2j">
            <node concept="3clFbS" id="4nIWweBHrrT" role="2VODD2">
              <node concept="3clFbF" id="4nIWweBHrz6" role="3cqZAp">
                <node concept="2OqwBi" id="4nIWweBHrKP" role="3clFbG">
                  <node concept="pncrf" id="4nIWweBHrz5" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4nIWweBHscp" role="2OqNvi">
                    <ref role="3TsBF5" to="wq2x:6p0DfM0bSv$" resolve="keep" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="A1WHu" id="7lt0LtP8tqr" role="3vIgyS">
            <ref role="A1WHt" node="4hPXq9JmegX" resolve="Head_keep_discard" />
          </node>
          <node concept="11LMrY" id="7lt0LtPcMm3" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="2E5lcNn0INJ" role="2iSdaV" />
      </node>
      <node concept="l2Vlx" id="6p0DfM0cXIN" role="2iSdaV" />
      <node concept="3F0ifn" id="7lt0LtPkNxD" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11L4FC" id="7lt0LtPkO2M" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="7lt0LtPkO2R" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="7lt0LtPkO2V" role="pqm2j">
          <node concept="3clFbS" id="7lt0LtPkO2W" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPkOa9" role="3cqZAp">
              <node concept="3eOSWO" id="7lt0LtPmqMl" role="3clFbG">
                <node concept="3cmrfG" id="7lt0LtPmqMr" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="7lt0LtPkRJf" role="3uHU7B">
                  <node concept="2OqwBi" id="7lt0LtPkPoE" role="2Oq$k0">
                    <node concept="2OqwBi" id="7lt0LtPkOnU" role="2Oq$k0">
                      <node concept="pncrf" id="7lt0LtPkOa8" role="2Oq$k0" />
                      <node concept="3TrEf2" id="7lt0LtPkOIo" role="2OqNvi">
                        <ref role="3Tt5mk" to="wq2x:20Ay2VegCfd" resolve="logic" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="7lt0LtPkPSh" role="2OqNvi">
                      <ref role="3TtcxE" to="wq2x:20Ay2VefOqD" resolve="clauses" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="7lt0LtPkUK1" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="3g$8GQC8lMp" role="3EZMnx">
        <ref role="PMmxG" node="3g$8GQC8l_C" resolve="RuleComponentCode" />
      </node>
      <node concept="3F0ifn" id="7lt0LtPkNRF" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="7lt0LtPkO2H" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="7lt0LtPkXWj" role="pqm2j">
          <node concept="3clFbS" id="7lt0LtPkXWk" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPkY80" role="3cqZAp">
              <node concept="3eOSWO" id="7lt0LtPmu58" role="3clFbG">
                <node concept="3cmrfG" id="7lt0LtPmu5e" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="7lt0LtPl1oY" role="3uHU7B">
                  <node concept="2OqwBi" id="7lt0LtPkZ2s" role="2Oq$k0">
                    <node concept="2OqwBi" id="7lt0LtPkYlL" role="2Oq$k0">
                      <node concept="pncrf" id="7lt0LtPkY7Z" role="2Oq$k0" />
                      <node concept="3TrEf2" id="7lt0LtPkYFw" role="2OqNvi">
                        <ref role="3Tt5mk" to="wq2x:20Ay2VegCfd" resolve="logic" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="7lt0LtPkZy0" role="2OqNvi">
                      <ref role="3TtcxE" to="wq2x:20Ay2VefOqD" resolve="clauses" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="7lt0LtPl4pH" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Bt7hp" id="6ntBQ9KE8a9" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="pVoyu" id="7lt0LtPlW24" role="3F10Kt">
        <property role="VOm3f" value="true" />
        <node concept="3nzxsE" id="7lt0LtPlWnD" role="3n$kyP">
          <node concept="3clFbS" id="7lt0LtPlWnE" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPlWuR" role="3cqZAp">
              <node concept="3eOSWO" id="7lt0LtPlYMl" role="3clFbG">
                <node concept="3cmrfG" id="7lt0LtPlYMr" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="7lt0LtPlWGC" role="3uHU7B">
                  <node concept="pncrf" id="7lt0LtPlWuQ" role="2Oq$k0" />
                  <node concept="2bSWHS" id="7lt0LtPlXlG" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6p0DfM0dr8L">
    <ref role="1XX52x" to="wq2x:7eGEHDlgPKk" resolve="Handler" />
    <node concept="3EZMnI" id="6p0DfM0drav" role="2wV5jI">
      <node concept="3F0ifn" id="1HWyn8jLJSL" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="3F0A7n" id="20Ay2Vf2Tqw" role="3EZMnx">
        <property role="1$x2rV" value="initial" />
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="wq2x:20Ay2Vf1h9X" resolve="stage" />
      </node>
      <node concept="3F0ifn" id="1HWyn8jLK3W" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="PMmxH" id="6p0DfM0drif" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
      </node>
      <node concept="3F0A7n" id="6p0DfM0dsvN" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="tpen:hFIVf2f" resolve="ClassName" />
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
      <node concept="3F0ifn" id="1HWyn8jMxgR" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="VPM3Z" id="1HWyn8jNFeC" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="pVoyu" id="1HWyn8jMTHO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="1HWyn8jEAtK" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="wq2x:1HWyn8jEsaE" resolve="constraint" />
        <node concept="l2Vlx" id="1HWyn8jEAtM" role="2czzBx" />
        <node concept="tppnM" id="1HWyn8jEAtQ" role="sWeuL">
          <node concept="ljvvj" id="1HWyn8jEAu1" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="lj46D" id="1HWyn8jEAu6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="1HWyn8jEAub" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="1HWyn8jLKy4" role="2czzBI">
          <property role="ilYzB" value="&lt;no constraints&gt;" />
        </node>
      </node>
      <node concept="3F0ifn" id="4nIWweBYd23" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="VPM3Z" id="1HWyn8jNFex" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="pVoyu" id="1HWyn8jMTHL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="6p0DfM0dsEy" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="wq2x:6p0DfM0bRQj" resolve="rule" />
        <node concept="l2Vlx" id="6p0DfM0dsE$" role="2czzBx" />
        <node concept="lj46D" id="6p0DfM0dsIO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="1HWyn8jMTHG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="tppnM" id="6p0DfM0dwLH" role="sWeuL">
          <node concept="ljvvj" id="6p0DfM0dwOj" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="36tQV5Ansmv" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="VPM3Z" id="36tQV5Ansmw" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="pVoyu" id="36tQV5Ansmx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="36tQV5Ansny" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="wq2x:36tQV5Anslx" resolve="template" />
        <node concept="l2Vlx" id="36tQV5Ansnz" role="2czzBx" />
        <node concept="lj46D" id="36tQV5Ansn$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="36tQV5Ansn_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="tppnM" id="36tQV5AnsnA" role="sWeuL">
          <node concept="ljvvj" id="36tQV5AnsnB" role="3F10Kt">
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
      <node concept="3F0ifn" id="4aJUH_hOrI6" role="3EZMnx">
        <property role="3F0ifm" value="when" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
        <node concept="pVoyu" id="7lt0LtPvYMZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="4aJUH_hOrIe" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="3g$8GQC8lAb" role="3EZMnx">
        <ref role="PMmxG" node="3g$8GQC8l_C" resolve="RuleComponentCode" />
        <node concept="lj46D" id="4nIWweBIE_f" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="6p0DfM0dH8E" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6p0DfM0e8jv">
    <property role="3GE5qa" value="rule.clause" />
    <ref role="1XX52x" to="wq2x:6p0DfM0a6KG" resolve="EmitConstraintStatement" />
    <node concept="3EZMnI" id="6p0DfM0ecFC" role="2wV5jI">
      <node concept="3F0ifn" id="7ksQUDZwl17" role="3EZMnx">
        <property role="3F0ifm" value="&lt;%" />
        <ref role="1k5W1q" node="7LZcKzBE07j" resolve="EmitConstraint" />
      </node>
      <node concept="3EZMnI" id="7LZcKzBFpT_" role="3EZMnx">
        <node concept="VPM3Z" id="7LZcKzBFpTB" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="7LZcKzBFpTE" role="2iSdaV" />
        <node concept="3F1sOY" id="6p0DfM0ecK0" role="3EZMnx">
          <ref role="1NtTu8" to="wq2x:6p0DfM0ajKO" resolve="constraint" />
        </node>
      </node>
      <node concept="3F0ifn" id="7LZcKzBDZM4" role="3EZMnx">
        <property role="3F0ifm" value="%&gt;" />
        <ref role="1k5W1q" node="7LZcKzBE07j" resolve="EmitConstraint" />
      </node>
      <node concept="l2Vlx" id="6p0DfM0ecFF" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6p0DfM0eqz7">
    <property role="3GE5qa" value="constraint" />
    <ref role="1XX52x" to="wq2x:6p0DfM0ang5" resolve="UserConstraint" />
    <node concept="3EZMnI" id="6p0DfM0essP" role="2wV5jI">
      <node concept="1iCGBv" id="6p0DfM0estM" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:6p0DfM0aywA" resolve="template" />
        <node concept="1sVBvm" id="6p0DfM0estO" role="1sWHZn">
          <node concept="3F0A7n" id="6p0DfM0esvB" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" node="7ksQUDZpyGq" resolve="Constraint" />
            <node concept="A1WHu" id="7lt0LtPdZoN" role="3vIgyS">
              <ref role="A1WHt" node="7lt0LtPdW_J" resolve="UserConstraint_include_body" />
            </node>
          </node>
        </node>
        <node concept="A1WHu" id="7lt0LtPeTbG" role="3vIgyS">
          <ref role="A1WHt" node="7lt0LtPdW_J" resolve="UserConstraint_include_body" />
        </node>
      </node>
      <node concept="3F0ifn" id="6p0DfM0esxr" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F2HdR" id="6p0DfM0fgtW" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="wq2x:6p0DfM0et2r" resolve="argument" />
        <node concept="l2Vlx" id="6p0DfM0fgtY" role="2czzBx" />
        <node concept="tppnM" id="6p0DfM0fn5n" role="sWeuL">
          <node concept="11L4FC" id="6p0DfM0fnhd" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="7LZcKzBt78X" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="7LZcKzBt791" role="3n$kyP">
              <node concept="3clFbS" id="7LZcKzBt792" role="2VODD2">
                <node concept="3clFbF" id="7LZcKzBt7gf" role="3cqZAp">
                  <node concept="3eOSWO" id="7LZcKzBte5h" role="3clFbG">
                    <node concept="3cmrfG" id="7LZcKzBte5n" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="2OqwBi" id="7LZcKzBt9Dh" role="3uHU7B">
                      <node concept="2OqwBi" id="7LZcKzBt7ru" role="2Oq$k0">
                        <node concept="pncrf" id="7LZcKzBt7ge" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="7LZcKzBt7VD" role="2OqNvi">
                          <ref role="3TtcxE" to="wq2x:6p0DfM0et2r" resolve="argument" />
                        </node>
                      </node>
                      <node concept="34oBXx" id="7LZcKzBtc8s" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Bsynf" id="2q_78a8Me41" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="3kjrYXAtIlL" role="2czzBI">
          <property role="3F0ifm" value="" />
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
      <node concept="VQ3r3" id="7km57PkbRWe" role="3F10Kt">
        <property role="2USNnj" value="2" />
      </node>
    </node>
    <node concept="14StLt" id="7ksQUDZpyGq" role="V601i">
      <property role="TrG5h" value="Constraint" />
      <node concept="3Xmtl4" id="7km57Pka_Qr" role="3F10Kt">
        <node concept="1wgc9g" id="7km57Pka_Qx" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:hFD2Y0y" resolve="MethodName" />
        </node>
      </node>
      <node concept="VechU" id="7km57PkaAqi" role="3F10Kt">
        <node concept="mot77" id="7km57PkaAqn" role="VblUZ">
          <node concept="3clFbS" id="7km57PkaAqo" role="2VODD2">
            <node concept="3clFbF" id="7km57PkaAuV" role="3cqZAp">
              <node concept="10M0yZ" id="7km57PkaAxf" role="3clFbG">
                <ref role="1PxDUh" node="7ksQUDZpwgy" resolve="CustomColors" />
                <ref role="3cqZAo" node="1iWwVK2_CSV" resolve="FG_KEYWORD" />
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
      <node concept="VechU" id="7km57PkbneC" role="3F10Kt">
        <node concept="mot77" id="7km57PkbneD" role="VblUZ">
          <node concept="3clFbS" id="7km57PkbneE" role="2VODD2">
            <node concept="3clFbF" id="7km57PkbneF" role="3cqZAp">
              <node concept="10M0yZ" id="7km57PkbneG" role="3clFbG">
                <ref role="1PxDUh" node="7ksQUDZpwgy" resolve="CustomColors" />
                <ref role="3cqZAo" node="1iWwVK2_CSV" resolve="FG_KEYWORD" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="14StLt" id="7LZcKzBE07j" role="V601i">
      <property role="TrG5h" value="EmitConstraint" />
      <node concept="30gYXW" id="7LZcKzBE08H" role="3F10Kt">
        <node concept="mot77" id="7LZcKzBE08O" role="VblUZ">
          <node concept="3clFbS" id="7LZcKzBE08P" role="2VODD2">
            <node concept="3clFbF" id="7LZcKzBFmHU" role="3cqZAp">
              <node concept="10M0yZ" id="7LZcKzBFmHT" role="3clFbG">
                <ref role="1PxDUh" node="7ksQUDZpwgy" resolve="CustomColors" />
                <ref role="3cqZAo" node="7LZcKzBExMT" resolve="BG_INJECTED_FRAGMENT" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="14StLt" id="4bWqD4C2vDI" role="V601i">
      <property role="TrG5h" value="Term" />
      <node concept="Vb9p2" id="4bWqD4C3WFH" role="3F10Kt">
        <property role="Vbekb" value="ITALIC" />
      </node>
      <node concept="1X3_iC" id="4bWqD4C9OHF" role="lGtFl">
        <property role="3V$3am" value="styleItem" />
        <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1219418625346/1219418656006" />
        <node concept="VechU" id="4bWqD4C7tOo" role="8Wnug">
          <node concept="mot77" id="4bWqD4C7tOp" role="VblUZ">
            <node concept="3clFbS" id="4bWqD4C7tOq" role="2VODD2">
              <node concept="3clFbF" id="4bWqD4C7tOr" role="3cqZAp">
                <node concept="10M0yZ" id="4bWqD4C7tWW" role="3clFbG">
                  <ref role="3cqZAo" node="4bWqD4C7sc7" resolve="FG_TERM" />
                  <ref role="1PxDUh" node="7ksQUDZpwgy" resolve="CustomColors" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="14StLt" id="1iWwVK2_Eea" role="V601i">
      <property role="TrG5h" value="TermParam" />
      <node concept="3Xmtl4" id="4bWqD4C9dB6" role="3F10Kt">
        <node concept="1wgc9g" id="4bWqD4C9dB7" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:aeM1BF$xqy" />
        </node>
      </node>
      <node concept="Vb9p2" id="4bWqD4C9dB8" role="3F10Kt">
        <property role="Vbekb" value="ITALIC" />
      </node>
      <node concept="VQ3r3" id="4bWqD4C9dB9" role="3F10Kt">
        <property role="2USNnj" value="2" />
      </node>
    </node>
    <node concept="14StLt" id="4bWqD4C4CM3" role="V601i">
      <property role="TrG5h" value="TermFeature" />
      <node concept="1X3_iC" id="4bWqD4C9ORm" role="lGtFl">
        <property role="3V$3am" value="styleItem" />
        <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1219418625346/1219418656006" />
        <node concept="VechU" id="4bWqD4C4CM7" role="8Wnug">
          <node concept="mot77" id="4bWqD4C4CM8" role="VblUZ">
            <node concept="3clFbS" id="4bWqD4C4CM9" role="2VODD2">
              <node concept="3clFbF" id="4bWqD4C4CMa" role="3cqZAp">
                <node concept="10M0yZ" id="4bWqD4C7NXG" role="3clFbG">
                  <ref role="3cqZAo" node="4bWqD4C7sc7" resolve="FG_TERM" />
                  <ref role="1PxDUh" node="7ksQUDZpwgy" resolve="CustomColors" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="14StLt" id="4bWqD4C9OIl" role="V601i">
      <property role="TrG5h" value="TermFeatureOverride" />
      <node concept="VechU" id="4bWqD4C9OIm" role="3F10Kt">
        <node concept="mot77" id="4bWqD4C9OIn" role="VblUZ">
          <node concept="3clFbS" id="4bWqD4C9OIo" role="2VODD2">
            <node concept="3clFbF" id="4bWqD4C9OIp" role="3cqZAp">
              <node concept="10M0yZ" id="4bWqD4CabQ6" role="3clFbG">
                <ref role="3cqZAo" node="4aJUH_hWVXm" resolve="FG_OPTIONAL" />
                <ref role="1PxDUh" node="7ksQUDZpwgy" resolve="CustomColors" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="14StLt" id="1iWwVK2DU4l" role="V601i">
      <property role="TrG5h" value="TermBrackets" />
      <node concept="3vyZuw" id="7ksQUDZx8Pi" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="VLuvy" id="7ksQUDZx8Pj" role="3F10Kt">
        <node concept="mot77" id="1iWwVK2DTqL" role="VblUZ">
          <node concept="3clFbS" id="1iWwVK2DTqV" role="2VODD2">
            <node concept="3clFbF" id="1iWwVK2DTyA" role="3cqZAp">
              <node concept="10M0yZ" id="1iWwVK2DTBo" role="3clFbG">
                <ref role="1PxDUh" node="7ksQUDZpwgy" resolve="CustomColors" />
                <ref role="3cqZAo" node="7LZcKzBF77o" resolve="FG_LOCAL_IDENTIFIER" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
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
              <node concept="10M0yZ" id="4aJUH_hW5HV" role="3clFbG">
                <ref role="3cqZAo" node="4aJUH_hW4LO" resolve="FG_TAG" />
                <ref role="1PxDUh" node="7ksQUDZpwgy" resolve="CustomColors" />
              </node>
            </node>
          </node>
        </node>
      </node>
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
        <ref role="1NtTu8" to="wq2x:6p0DfM0iCzc" resolve="declaration" />
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
    <property role="3GE5qa" value="constraint" />
    <ref role="1XX52x" to="wq2x:6p0DfM0oBcI" resolve="UnifiesConstraint" />
    <node concept="3EZMnI" id="6p0DfM0oEan" role="2wV5jI">
      <node concept="3F1sOY" id="6p0DfM0oETK" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:6p0DfM0oEeG" resolve="assignee" />
      </node>
      <node concept="PMmxH" id="6T06Mm3M2PZ" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F1sOY" id="6p0DfM0oEV$" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:6p0DfM0oEna" resolve="value" />
      </node>
      <node concept="l2Vlx" id="6p0DfM0oEaq" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2E5lcNn0247">
    <property role="3GE5qa" value="constraint.typespecific" />
    <ref role="1XX52x" to="wq2x:2E5lcNn01_F" resolve="TypeofConstraint" />
    <node concept="3EZMnI" id="2E5lcNn029o" role="2wV5jI">
      <node concept="3F0ifn" id="2E5lcNn02h6" role="3EZMnx">
        <property role="3F0ifm" value="typeof" />
        <ref role="1k5W1q" node="7ksQUDZpd8b" resolve="ConstraintKeyword" />
        <node concept="A1WHu" id="7lt0LtPPJ7M" role="3vIgyS">
          <ref role="A1WHt" node="7lt0LtPPlhU" resolve="TypeofConstraint_include_body" />
        </node>
      </node>
      <node concept="3F0ifn" id="2E5lcNn02_C" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F1sOY" id="2E5lcNn03CI" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:2E5lcNn035O" resolve="anchor" />
      </node>
      <node concept="3F0ifn" id="2E5lcNn02_M" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="3F0ifn" id="2E5lcNn02i2" role="3EZMnx">
        <property role="3F0ifm" value="is" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
      </node>
      <node concept="3F1sOY" id="2E5lcNn03LN" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:2E5lcNn03mK" resolve="assignedType" />
      </node>
      <node concept="l2Vlx" id="2E5lcNn029r" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2E5lcNn5Urm">
    <property role="3GE5qa" value="constraint.variable" />
    <ref role="1XX52x" to="wq2x:2E5lcNn5Ub2" resolve="LocalDeclarationStatement" />
    <node concept="3EZMnI" id="2E5lcNn5Use" role="2wV5jI">
      <node concept="3F0ifn" id="7ksQUDZwld6" role="3EZMnx">
        <property role="3F0ifm" value="&lt;%" />
        <ref role="1k5W1q" node="7LZcKzBE07j" resolve="EmitConstraint" />
      </node>
      <node concept="3EZMnI" id="7LZcKzBG6BW" role="3EZMnx">
        <node concept="VPM3Z" id="7LZcKzBG6BY" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="7LZcKzBG6C1" role="2iSdaV" />
        <node concept="PMmxH" id="5zfvpQ72j0B" role="3EZMnx">
          <ref role="PMmxG" node="5zfvpQ72h2k" resolve="LogicVariableDeclarationStatement_type" />
        </node>
        <node concept="3F2HdR" id="2E5lcNn5Uyr" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="5j4j:2E5lcNn8k3O" resolve="declaration" />
          <node concept="l2Vlx" id="2E5lcNn5Uyt" role="2czzBx" />
          <node concept="tppnM" id="2E5lcNn5UO3" role="sWeuL">
            <node concept="11L4FC" id="2E5lcNn5UT9" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="2E5lcNn5Ush" role="2iSdaV" />
      <node concept="3F0ifn" id="7LZcKzBG6CN" role="3EZMnx">
        <property role="3F0ifm" value="%&gt;" />
        <ref role="1k5W1q" node="7LZcKzBE07j" resolve="EmitConstraint" />
      </node>
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
          <property role="3F0ifm" value="apply if" />
          <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
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
        <ref role="1NtTu8" to="wq2x:5MHpiylFYj$" resolve="type" />
      </node>
      <node concept="3F0A7n" id="5MHpiylEt3I" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="7ksQUDZqpsE" resolve="InputName" />
      </node>
      <node concept="l2Vlx" id="5MHpiylEt1Y" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5MHpiylKVlP">
    <property role="3GE5qa" value="rule.code.parameter" />
    <ref role="1XX52x" to="wq2x:5MHpiylKSq8" resolve="RuleParameterReference" />
    <node concept="3EZMnI" id="5MHpiylKVop" role="2wV5jI">
      <node concept="1iCGBv" id="5MHpiylKVr2" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:5MHpiylKVev" resolve="declaration" />
        <node concept="1sVBvm" id="5MHpiylKVr4" role="1sWHZn">
          <node concept="3F0A7n" id="5MHpiylKVtH" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" node="7ksQUDZqpsE" resolve="InputName" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5MHpiylKVos" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5NuEpF1iiTM">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="wq2x:5NuEpF1if3e" resolve="RuleInputSpecification" />
    <node concept="3EZMnI" id="5NuEpF1iiVw" role="2wV5jI">
      <node concept="3F0ifn" id="5NuEpF1ijhd" role="3EZMnx">
        <property role="3F0ifm" value="for each" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
      </node>
      <node concept="1iCGBv" id="5NuEpF1ijhe" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:5NuEpF1iiA0" resolve="applicableConcept" />
        <node concept="1sVBvm" id="5NuEpF1ijhf" role="1sWHZn">
          <node concept="3F0A7n" id="5NuEpF1ijhg" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" node="7ksQUDZqcLh" resolve="ConceptName" />
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="5NuEpF1ijhh" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:5NuEpF1ihrB" resolve="input" />
      </node>
      <node concept="l2Vlx" id="5NuEpF1iiVz" role="2iSdaV" />
      <node concept="3EZMnI" id="36tQV5AyfuC" role="3EZMnx">
        <node concept="VPM3Z" id="36tQV5AyfuD" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="ljvvj" id="36tQV5AyfuE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="1QoScp" id="36tQV5AyfuF" role="3EZMnx">
          <property role="1QpmdY" value="true" />
          <node concept="3F0ifn" id="36tQV5AyfuG" role="1QoS34">
            <property role="3F0ifm" value="exactly" />
            <ref role="1ERwB7" node="12yN8DyB6zn" resolve="Rule_ActionMap" />
            <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
            <node concept="OXEIz" id="36tQV5AyfuH" role="P5bDN">
              <node concept="1oHujT" id="36tQV5AyfuI" role="OY2wv">
                <property role="1oHujS" value="including all subconcepts" />
                <node concept="1oIgkG" id="36tQV5AyfuJ" role="1oHujR">
                  <node concept="3clFbS" id="36tQV5AyfuK" role="2VODD2">
                    <node concept="3clFbF" id="36tQV5AyfuL" role="3cqZAp">
                      <node concept="37vLTI" id="36tQV5AyfuM" role="3clFbG">
                        <node concept="3clFbT" id="36tQV5AyfuN" role="37vLTx">
                          <property role="3clFbU" value="false" />
                        </node>
                        <node concept="2OqwBi" id="36tQV5AyfuO" role="37vLTJ">
                          <node concept="3GMtW1" id="36tQV5AyfuP" role="2Oq$k0" />
                          <node concept="3TrcHB" id="36tQV5AyfuQ" role="2OqNvi">
                            <ref role="3TsBF5" to="wq2x:36tQV5Ayfuv" resolve="exactMatch" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="pkWqt" id="36tQV5AyfuR" role="3e4ffs">
            <node concept="3clFbS" id="36tQV5AyfuS" role="2VODD2">
              <node concept="3clFbF" id="36tQV5AyfuT" role="3cqZAp">
                <node concept="2OqwBi" id="36tQV5AyfuU" role="3clFbG">
                  <node concept="pncrf" id="36tQV5AyfuV" role="2Oq$k0" />
                  <node concept="3TrcHB" id="36tQV5AyfuW" role="2OqNvi">
                    <ref role="3TsBF5" to="wq2x:36tQV5Ayfuv" resolve="exactMatch" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="36tQV5AyfuX" role="1QoVPY">
            <property role="3F0ifm" value="" />
            <property role="ilYzB" value="including all subconcepts" />
            <ref role="1ERwB7" node="12yN8DyB6zn" resolve="Rule_ActionMap" />
            <node concept="OXEIz" id="36tQV5AyfuY" role="P5bDN">
              <node concept="1oHujT" id="36tQV5AyfuZ" role="OY2wv">
                <property role="1oHujS" value="exactly" />
                <node concept="1oIgkG" id="36tQV5Ayfv0" role="1oHujR">
                  <node concept="3clFbS" id="36tQV5Ayfv1" role="2VODD2">
                    <node concept="3clFbF" id="36tQV5Ayfv2" role="3cqZAp">
                      <node concept="37vLTI" id="36tQV5Ayfv3" role="3clFbG">
                        <node concept="3clFbT" id="36tQV5Ayfv4" role="37vLTx">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="2OqwBi" id="36tQV5Ayfv5" role="37vLTJ">
                          <node concept="3GMtW1" id="36tQV5Ayfv6" role="2Oq$k0" />
                          <node concept="3TrcHB" id="36tQV5Ayfv7" role="2OqNvi">
                            <ref role="3TsBF5" to="wq2x:36tQV5Ayfuv" resolve="exactMatch" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="pkWqt" id="36tQV5Ayfv8" role="pqm2j">
            <node concept="3clFbS" id="36tQV5Ayfv9" role="2VODD2">
              <node concept="3clFbF" id="36tQV5Ayfva" role="3cqZAp">
                <node concept="2OqwBi" id="36tQV5Ayfvb" role="3clFbG">
                  <node concept="2OqwBi" id="36tQV5Ayfvc" role="2Oq$k0">
                    <node concept="pncrf" id="36tQV5Ayfvd" role="2Oq$k0" />
                    <node concept="3TrEf2" id="36tQV5Ayfve" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:5NuEpF1ihrB" resolve="input" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="36tQV5Ayfvf" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="36tQV5Ayfvg" role="2iSdaV" />
        <node concept="pkWqt" id="36tQV5AyfHe" role="pqm2j">
          <node concept="3clFbS" id="36tQV5AyfHf" role="2VODD2">
            <node concept="3clFbF" id="36tQV5AyiO6" role="3cqZAp">
              <node concept="3fqX7Q" id="36tQV5AymYc" role="3clFbG">
                <node concept="2YIFZM" id="36tQV5AymYe" role="3fr31v">
                  <ref role="37wK5l" to="i8bi:5IkW5anFfpR" resolve="hasValue" />
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <node concept="pncrf" id="36tQV5AymYf" role="37wK5m" />
                  <node concept="355D3s" id="36tQV5AymYg" role="37wK5m">
                    <ref role="355D3t" to="wq2x:5NuEpF1if3e" resolve="RuleInputSpecification" />
                    <ref role="355D3u" to="wq2x:36tQV5Ayfuv" resolve="exactMatch" />
                  </node>
                  <node concept="10Nm6u" id="36tQV5AymYh" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="60B5zVESCE$">
    <property role="3GE5qa" value="constraint.variable" />
    <ref role="1XX52x" to="wq2x:60B5zVESvAi" resolve="LogicVariableConstraint" />
    <node concept="3EZMnI" id="60B5zVESIDp" role="2wV5jI">
      <node concept="PMmxH" id="60B5zVESIFc" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="7ksQUDZpyGq" resolve="Constraint" />
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
        <ref role="1NtTu8" to="wq2x:60B5zVESBfb" resolve="variable" />
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
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
      </node>
      <node concept="3F1sOY" id="1zN1RIkNk8v" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:5MHpiylFI5Z" resolve="parameter" />
      </node>
      <node concept="3F0ifn" id="1zN1RIkNk8w" role="3EZMnx">
        <property role="3F0ifm" value="in" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
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
        <property role="3F0ifm" value="using" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
      </node>
      <node concept="3F1sOY" id="1zN1RIkQuBk" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:5MHpiylFI5Z" resolve="parameter" />
      </node>
      <node concept="3F0ifn" id="1zN1RIkQuBl" role="3EZMnx">
        <property role="3F0ifm" value="=" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
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
        <property role="3F0ifm" value="also apply rules for" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
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
        <ref role="1NtTu8" to="wq2x:4EfgX2EvGcc" resolve="expression" />
      </node>
      <node concept="l2Vlx" id="4EfgX2EvGmB" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6infEALDvtu">
    <property role="3GE5qa" value="constraint" />
    <ref role="1XX52x" to="wq2x:6infEALDvmn" resolve="AssertExpressionConstraint" />
    <node concept="3EZMnI" id="6infEALDvB0" role="2wV5jI">
      <node concept="3F0ifn" id="6infEALDvB7" role="3EZMnx">
        <property role="3F0ifm" value="assert" />
        <ref role="1k5W1q" node="7ksQUDZpyGq" resolve="Constraint" />
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
        <ref role="1NtTu8" to="wq2x:4EfgX2EvGcc" resolve="expression" />
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
    <node concept="Wx3nA" id="7ksQUDZx7BM" role="jymVt">
      <property role="TrG5h" value="CALM" />
      <node concept="3Tm1VV" id="7ksQUDZx7BN" role="1B3o_S" />
      <node concept="3uibUv" id="7ksQUDZx7BO" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
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
      <node concept="z59LJ" id="7ksQUDZx7BU" role="lGtFl">
        <node concept="TZ5HA" id="7ksQUDZx7BV" role="TZ5H$">
          <node concept="1dT_AC" id="7ksQUDZx7BW" role="1dT_Ay">
            <property role="1dT_AB" value="FG for JavaScript local identifier, default scheme" />
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
      <node concept="z59LJ" id="7ksQUDZx8vC" role="lGtFl">
        <node concept="TZ5HA" id="7ksQUDZx8vD" role="TZ5H$">
          <node concept="1dT_AC" id="7ksQUDZx8vE" role="1dT_Ay">
            <property role="1dT_AB" value="FG for Default identifier, dark scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7LZcKzBF74q" role="jymVt" />
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
          <node concept="37vLTw" id="7LZcKzBF7qS" role="37wK5m">
            <ref role="3cqZAo" node="7ksQUDZx7BM" resolve="CALM" />
          </node>
          <node concept="37vLTw" id="7LZcKzBF7ub" role="37wK5m">
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
    <node concept="2tJIrI" id="1iWwVK2_win" role="jymVt" />
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
    <node concept="2tJIrI" id="1iWwVK2DQSH" role="jymVt" />
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
      <property role="TrG5h" value="BG_EXPRESSION" />
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
          <node concept="37vLTw" id="1iWwVK2DR0l" role="37wK5m">
            <ref role="3cqZAo" node="7ksQUDZpwh9" resolve="SKY" />
          </node>
          <node concept="37vLTw" id="1iWwVK2DR0p" role="37wK5m">
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
    <node concept="2tJIrI" id="4aJUH_hW484" role="jymVt" />
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
    <node concept="2tJIrI" id="4bWqD4C2Vzp" role="jymVt" />
    <node concept="Wx3nA" id="4bWqD4C2Vn_" role="jymVt">
      <property role="TrG5h" value="PURPLE" />
      <node concept="3Tm1VV" id="4bWqD4C2VnA" role="1B3o_S" />
      <node concept="3uibUv" id="4bWqD4C2VnB" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="4bWqD4C2VnC" role="33vP2m">
        <node concept="1pGfFk" id="4bWqD4C2VnD" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="4bWqD4C2VnE" role="37wK5m">
            <property role="2noCCI" value="66" />
          </node>
          <node concept="2nou5x" id="4bWqD4C2VnF" role="37wK5m">
            <property role="2noCCI" value="0E" />
          </node>
          <node concept="2nou5x" id="4bWqD4C2VnG" role="37wK5m">
            <property role="2noCCI" value="7A" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="4bWqD4C2VnH" role="lGtFl">
        <node concept="TZ5HA" id="4bWqD4C2VnI" role="TZ5H$">
          <node concept="1dT_AC" id="4bWqD4C2VnJ" role="1dT_Ay">
            <property role="1dT_AB" value="FG for instance field, default scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4bWqD4C2Vn$" role="jymVt" />
    <node concept="Wx3nA" id="4bWqD4C2Vnp" role="jymVt">
      <property role="TrG5h" value="IRIS" />
      <node concept="3Tm1VV" id="4bWqD4C2Vnq" role="1B3o_S" />
      <node concept="3uibUv" id="4bWqD4C2Vnr" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="4bWqD4C2Vns" role="33vP2m">
        <node concept="1pGfFk" id="4bWqD4C2Vnt" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="2nou5x" id="4bWqD4C2Vnu" role="37wK5m">
            <property role="2noCCI" value="98" />
          </node>
          <node concept="2nou5x" id="4bWqD4C2Vnv" role="37wK5m">
            <property role="2noCCI" value="76" />
          </node>
          <node concept="2nou5x" id="4bWqD4C2Vnw" role="37wK5m">
            <property role="2noCCI" value="AA" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="4bWqD4C2Vnx" role="lGtFl">
        <node concept="TZ5HA" id="4bWqD4C2Vny" role="TZ5H$">
          <node concept="1dT_AC" id="4bWqD4C2Vnz" role="1dT_Ay">
            <property role="1dT_AB" value="BG for instance field, dark scheme" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4bWqD4C2Vno" role="jymVt" />
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
          <node concept="37vLTw" id="4bWqD4C2W2W" role="37wK5m">
            <ref role="3cqZAo" node="4bWqD4C2Vn_" resolve="PURPLE" />
          </node>
          <node concept="37vLTw" id="4bWqD4C2W7w" role="37wK5m">
            <ref role="3cqZAo" node="4bWqD4C2Vnp" resolve="IRIS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4bWqD4C2VgG" role="jymVt" />
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
    <node concept="2tJIrI" id="4bWqD4C7rWX" role="jymVt" />
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
          <node concept="37vLTw" id="4bWqD4C7tk4" role="37wK5m">
            <ref role="3cqZAo" node="4bWqD4C3iOy" resolve="SAPPHIRE" />
          </node>
          <node concept="37vLTw" id="4bWqD4C7tqo" role="37wK5m">
            <ref role="3cqZAo" node="4bWqD4C3iOm" resolve="OCEAN" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4bWqD4C7rFE" role="jymVt" />
    <node concept="3Tm1VV" id="7ksQUDZpwgz" role="1B3o_S" />
  </node>
  <node concept="PKFIW" id="5zfvpQ72h2k">
    <property role="3GE5qa" value="constraint.variable" />
    <property role="TrG5h" value="LogicVariableDeclarationStatement_type" />
    <ref role="1XX52x" to="wq2x:2E5lcNn8iYG" resolve="LogicVariableDeclarationStatement" />
    <node concept="3EZMnI" id="5zfvpQ72h2m" role="2wV5jI">
      <node concept="1HlG4h" id="5zfvpQ72h85" role="3EZMnx">
        <ref role="1k5W1q" to="qgy9:1iWwVK2B1it" resolve="Logical" />
        <node concept="1HfYo3" id="5zfvpQ72h86" role="1HlULh">
          <node concept="3TQlhw" id="5zfvpQ72h87" role="1Hhtcw">
            <node concept="3clFbS" id="5zfvpQ72h88" role="2VODD2">
              <node concept="3clFbF" id="1iWwVK2CjDz" role="3cqZAp">
                <node concept="2OqwBi" id="1iWwVK2CkjZ" role="3clFbG">
                  <node concept="35c_gC" id="1iWwVK2CjDx" role="2Oq$k0">
                    <ref role="35c_gD" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
                  </node>
                  <node concept="3n3YKJ" id="1iWwVK2CkOe" role="2OqNvi" />
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
          <ref role="1NtTu8" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
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
              <node concept="2OqwBi" id="30XHGaOG64p" role="3clFbG">
                <node concept="2OqwBi" id="5zfvpQ71HvF" role="2Oq$k0">
                  <node concept="pncrf" id="5zfvpQ71Hqr" role="2Oq$k0" />
                  <node concept="Bykcj" id="30XHGaOG64m" role="2OqNvi">
                    <node concept="1aIX9F" id="30XHGaOG64n" role="1xVPHs">
                      <node concept="26LbJo" id="30XHGaOG64o" role="1aIX9E">
                        <ref role="26LbJp" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="30XHGaOG64q" role="2OqNvi" />
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
                      <ref role="3TtcxE" to="wq2x:5bC6UNlwzV7" resolve="part" />
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
            <ref role="1NtTu8" to="wq2x:5bC6UNlwzV7" resolve="part" />
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
            <ref role="1NtTu8" to="wq2x:5bC6UNlwzV7" resolve="part" />
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
    <node concept="3EZMnI" id="5f6wxQ38Bak" role="2wV5jI">
      <node concept="3F0A7n" id="1CgWc1Tz5pk" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3EZMnI" id="5f6wxQ38Bau" role="3EZMnx">
        <node concept="VPM3Z" id="5f6wxQ38Baw" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="5f6wxQ38Fpf" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
          <node concept="11L4FC" id="5f6wxQ38FJz" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="5f6wxQ38F2V" role="3EZMnx">
          <ref role="1NtTu8" to="wq2x:5f6wxQ38Bap" resolve="dataType" />
        </node>
        <node concept="l2Vlx" id="5f6wxQ38Baz" role="2iSdaV" />
        <node concept="pkWqt" id="5f6wxQ38BaE" role="pqm2j">
          <node concept="3clFbS" id="5f6wxQ38BaF" role="2VODD2">
            <node concept="3clFbF" id="5f6wxQ38BhS" role="3cqZAp">
              <node concept="2OqwBi" id="5f6wxQ38Eb1" role="3clFbG">
                <node concept="2OqwBi" id="5f6wxQ38BuP" role="2Oq$k0">
                  <node concept="pncrf" id="5f6wxQ38BhR" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5f6wxQ38D56" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:5f6wxQ38Bap" resolve="dataType" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5f6wxQ38EKx" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5f6wxQ38Bal" role="2iSdaV" />
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
              <node concept="3YRAZt" id="5bC6UNlwTSX" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="3g$8GQC8l_C">
    <property role="TrG5h" value="RuleComponentCode" />
    <ref role="1XX52x" to="wq2x:6p0DfM0a3d3" resolve="RuleComponent" />
    <node concept="3EZMnI" id="3g$8GQC8l_D" role="2wV5jI">
      <property role="S$Qs1" value="true" />
      <node concept="VPM3Z" id="3g$8GQC8l_E" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="lj46D" id="7lt0LtPcpoS" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="l2Vlx" id="3g$8GQC8l_G" role="2iSdaV" />
      <node concept="3F1sOY" id="20Ay2VegChs" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:20Ay2VegCfd" resolve="logic" />
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
        <ref role="1NtTu8" to="wq2x:tIwzd1_VRv" resolve="code" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1pPth$m5B5c">
    <property role="3GE5qa" value="macro" />
    <ref role="1XX52x" to="wq2x:1pPth$m5B4X" resolve="MacroTable" />
    <node concept="3EZMnI" id="1pPth$m5B5e" role="2wV5jI">
      <node concept="3EZMnI" id="1pPth$m5QfK" role="3EZMnx">
        <node concept="VPM3Z" id="1pPth$m5QfM" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="PMmxH" id="1pPth$m5B5r" role="3EZMnx">
          <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
          <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
        </node>
        <node concept="3F0A7n" id="1pPth$m5Qhl" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="1pPth$m7BnZ" role="3EZMnx">
          <property role="3F0ifm" value=" " />
          <node concept="VPxyj" id="1pPth$m7C6F" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPM3Z" id="1pPth$m7C4Q" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="pVoyu" id="3TnYLtqfPoW" role="3F10Kt">
            <property role="VOm3f" value="true" />
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
          <ref role="1NtTu8" to="wq2x:1pPth$m5B4Y" resolve="macro" />
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
    <property role="3GE5qa" value="macro.decl" />
    <ref role="1XX52x" to="wq2x:1pPth$m5Bbz" resolve="MacroDeclaration" />
    <node concept="3EZMnI" id="1pPth$m6099" role="2wV5jI">
      <node concept="3F0ifn" id="7IysFeA7AdY" role="3EZMnx">
        <property role="3F0ifm" value="macro" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
      </node>
      <node concept="3F0A7n" id="1pPth$m609g" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="tpen:hshUnm6" resolve="StaticMethod" />
      </node>
      <node concept="3F0ifn" id="7IysFeA6Upz" role="3EZMnx">
        <property role="3F0ifm" value="expands" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
      </node>
      <node concept="3F1sOY" id="6DOfTm$zYlt" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:6DOfTm$zUE3" resolve="input" />
      </node>
      <node concept="3F2HdR" id="7IysFeA0yd6" role="3EZMnx">
        <property role="Q2I2d" value="punctuation" />
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="wq2x:7IysFeA0yca" resolve="parameter" />
        <node concept="l2Vlx" id="7IysFeA0yd8" role="2czzBx" />
        <node concept="tppnM" id="7IysFeA5bgI" role="sWeuL">
          <node concept="ljvvj" id="7IysFeA5bgL" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="lj46D" id="7Xmdqtdxyyv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="7Xmdqtdxyyw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="7XmdqtdxJfq" role="2czzBI">
          <property role="3F0ifm" value="no parameters" />
          <ref role="1k5W1q" to="tpen:hinfsDb" resolve="EmptyCell" />
          <node concept="Vb9p2" id="7Xmdqtdys5T" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7Xmdqtdxz9p" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="lj46D" id="7IysFeA6Us2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="7IysFeA6UuT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="7Xmdqtdxznr" role="pqm2j">
          <node concept="3clFbS" id="7Xmdqtdxzns" role="2VODD2">
            <node concept="3clFbF" id="7XmdqtdxzuD" role="3cqZAp">
              <node concept="2OqwBi" id="7XmdqtdxE7p" role="3clFbG">
                <node concept="2OqwBi" id="7XmdqtdxzHW" role="2Oq$k0">
                  <node concept="pncrf" id="7XmdqtdxzuC" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="7Xmdqtdx$jq" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:7IysFeA0yca" resolve="parameter" />
                  </node>
                </node>
                <node concept="3GX2aA" id="7XmdqtdxIQ$" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="7IysFe_ZQch" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:7IysFe_ZQc2" resolve="body" />
        <node concept="lj46D" id="4MEOIDF_LeC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="4MEOIDF_LeD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="1pPth$m609c" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1pPth$m6bZM">
    <property role="3GE5qa" value="term" />
    <ref role="1XX52x" to="wq2x:1pPth$m5o9D" resolve="TermTemplate" />
    <node concept="3EZMnI" id="1pPth$m6bZO" role="2wV5jI">
      <node concept="3F0ifn" id="1pPth$m6bZV" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
      </node>
      <node concept="3F2HdR" id="1pPth$m6c09" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="wq2x:1pPth$m5oa9" resolve="feature" />
        <node concept="l2Vlx" id="1pPth$m6c0b" role="2czzBx" />
        <node concept="lj46D" id="4MEOIDFC6i4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="4MEOIDFC6kS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="tppnM" id="1pPth$m6pwx" role="sWeuL">
          <node concept="ljvvj" id="1pPth$m6pwB" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="7c96q9tVi07" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="&lt;no features&gt;" />
        </node>
      </node>
      <node concept="3F0ifn" id="1pPth$m6c01" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
        <node concept="pVoyu" id="4MEOIDFC6ny" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="1pPth$m6bZR" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1pPth$m6rC8">
    <property role="3GE5qa" value="term.feature" />
    <ref role="1XX52x" to="wq2x:1pPth$m5oa5" resolve="TermFeature" />
    <node concept="1xolST" id="2N2MQGCLx7i" role="2wV5jI">
      <property role="1xolSY" value="&lt;no feature&gt;" />
    </node>
  </node>
  <node concept="24kQdi" id="2N2MQGCKV7Q">
    <property role="3GE5qa" value="term.feature" />
    <ref role="1XX52x" to="wq2x:1pPth$m5oae" resolve="ValueTermFeature" />
    <node concept="3EZMnI" id="2N2MQGCKV7S" role="2wV5jI">
      <node concept="PMmxH" id="2N2MQGCKV7V" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
      </node>
      <node concept="3F0A7n" id="7c96q9tZPww" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="A1WHr" id="7c96q9tZPGl" role="3vIgyS">
          <ref role="2ZyFGn" to="wq2x:1pPth$m5oae" resolve="ValueTermFeature" />
        </node>
      </node>
      <node concept="3EZMnI" id="7c96q9tX6ns" role="3EZMnx">
        <node concept="VPM3Z" id="7c96q9tX6nu" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="7c96q9tX6nx" role="2iSdaV" />
        <node concept="3F0ifn" id="2N2MQGCKV87" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="1hX44vME_qf" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no value&gt;" />
          <ref role="1NtTu8" to="wq2x:1hX44vMEjQe" resolve="getter" />
        </node>
        <node concept="pkWqt" id="7c96q9tX6nW" role="pqm2j">
          <node concept="3clFbS" id="7c96q9tX6nX" role="2VODD2">
            <node concept="3clFbF" id="7c96q9tX6va" role="3cqZAp">
              <node concept="2OqwBi" id="7c96q9tX7HZ" role="3clFbG">
                <node concept="2OqwBi" id="7c96q9tX6HF" role="2Oq$k0">
                  <node concept="pncrf" id="7c96q9tX6v9" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7c96q9tX74S" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:1hX44vMEjQe" resolve="getter" />
                  </node>
                </node>
                <node concept="3x8VRR" id="7c96q9tX8pM" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="2N2MQGCKV7W" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2N2MQGCLx6w">
    <property role="3GE5qa" value="term.feature" />
    <ref role="1XX52x" to="wq2x:1pPth$m5oaL" resolve="ChildTermFeature" />
    <node concept="3EZMnI" id="2N2MQGCLx6y" role="2wV5jI">
      <node concept="PMmxH" id="2L20jGt8dZ2" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
      </node>
      <node concept="3F0A7n" id="7c96q9tZOq2" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="A1WHr" id="7c96q9tZO_R" role="3vIgyS">
          <ref role="2ZyFGn" to="wq2x:1pPth$m5oaL" resolve="ChildTermFeature" />
        </node>
      </node>
      <node concept="3EZMnI" id="7c96q9tX41A" role="3EZMnx">
        <node concept="VPM3Z" id="7c96q9tX41C" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="7c96q9tX41F" role="2iSdaV" />
        <node concept="3F0ifn" id="2L20jGt8dZ3" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="2L20jGt8dZ4" role="3EZMnx">
          <ref role="1NtTu8" to="wq2x:2L20jGt8dYg" resolve="getter" />
        </node>
        <node concept="pkWqt" id="7c96q9tX424" role="pqm2j">
          <node concept="3clFbS" id="7c96q9tX425" role="2VODD2">
            <node concept="3clFbF" id="7c96q9tX49i" role="3cqZAp">
              <node concept="2OqwBi" id="7c96q9tX5oE" role="3clFbG">
                <node concept="2OqwBi" id="7c96q9tX4nN" role="2Oq$k0">
                  <node concept="pncrf" id="7c96q9tX49h" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7c96q9tX4Rv" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:2L20jGt8dYg" resolve="getter" />
                  </node>
                </node>
                <node concept="3x8VRR" id="7c96q9tX64t" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="2N2MQGCLx6A" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2N2MQGCLx6L">
    <property role="3GE5qa" value="term.feature" />
    <ref role="1XX52x" to="wq2x:1pPth$m5oa6" resolve="ListTermFeature" />
    <node concept="3EZMnI" id="2N2MQGCLx6N" role="2wV5jI">
      <node concept="PMmxH" id="2N2MQGCLx6Q" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
      </node>
      <node concept="3F0A7n" id="7c96q9tZOL1" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="A1WHr" id="7c96q9tZOWX" role="3vIgyS">
          <ref role="2ZyFGn" to="wq2x:1pPth$m5oa6" resolve="ListTermFeature" />
        </node>
      </node>
      <node concept="3EZMnI" id="7c96q9tX1su" role="3EZMnx">
        <node concept="VPM3Z" id="7c96q9tX1sw" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="7c96q9tX1sz" role="2iSdaV" />
        <node concept="3F0ifn" id="3AWu6EmboZh" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="3AWu6EmboZi" role="3EZMnx">
          <ref role="1NtTu8" to="wq2x:3AWu6Embo_Z" resolve="getter" />
        </node>
        <node concept="pkWqt" id="7c96q9tX1sW" role="pqm2j">
          <node concept="3clFbS" id="7c96q9tX1sX" role="2VODD2">
            <node concept="3clFbF" id="7c96q9tX1$a" role="3cqZAp">
              <node concept="2OqwBi" id="7c96q9tX32P" role="3clFbG">
                <node concept="2OqwBi" id="7c96q9tX1MF" role="2Oq$k0">
                  <node concept="pncrf" id="7c96q9tX1$9" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7c96q9tX2lZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:3AWu6Embo_Z" resolve="getter" />
                  </node>
                </node>
                <node concept="3x8VRR" id="7c96q9tX3IC" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="2N2MQGCLx6R" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6wQEDbCHtaR">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="wq2x:6wQEDbCHt15" resolve="Fragment" />
    <node concept="3EZMnI" id="6wQEDbCHtaT" role="2wV5jI">
      <node concept="PMmxH" id="6wQEDbCHtaU" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
      </node>
      <node concept="3F0A7n" id="6wQEDbCHtaV" role="3EZMnx">
        <ref role="1k5W1q" to="tpen:hshUnm6" resolve="StaticMethod" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F1sOY" id="6wQEDbCHtaW" role="3EZMnx">
        <property role="1$x2rV" value="with no input" />
        <ref role="1NtTu8" to="wq2x:6wQEDbCCPyR" resolve="input" />
      </node>
      <node concept="3EZMnI" id="6wQEDbCHtbA" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <node concept="VPM3Z" id="6wQEDbCHtbB" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="6wQEDbCHtbC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="6wQEDbCHtbD" role="2iSdaV" />
        <node concept="3EZMnI" id="6wQEDbCHtbE" role="3EZMnx">
          <node concept="VPM3Z" id="6wQEDbCHtck" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="l2Vlx" id="6wQEDbCHtcl" role="2iSdaV" />
          <node concept="3EZMnI" id="6wQEDbCHtcm" role="3EZMnx">
            <node concept="VPM3Z" id="6wQEDbCHtcn" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="l2Vlx" id="6wQEDbCHtco" role="2iSdaV" />
            <node concept="3F1sOY" id="6wQEDbCHtct" role="3EZMnx">
              <property role="1$x2rV" value="no required nodes" />
              <ref role="1NtTu8" to="wq2x:1ffsG7bh6Cz" resolve="requiredNodeBlock" />
              <node concept="pVoyu" id="6wQEDbCL1N1" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="ljvvj" id="6wQEDbCHtcu" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="3F1sOY" id="6wQEDbCHtcv" role="3EZMnx">
              <property role="1$x2rV" value="with no bindings" />
              <ref role="1NtTu8" to="wq2x:6wQEDbCHGnY" resolve="letBlock" />
              <node concept="ljvvj" id="6wQEDbCHtcw" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="6wQEDbCHtcx" role="3EZMnx">
          <ref role="1k5W1q" to="tpen:hshO_Yc" resolve="Comment" />
          <node concept="VPM3Z" id="6wQEDbCHtcy" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="ljvvj" id="6wQEDbCHtcz" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="PMmxH" id="4nIWweBWowO" role="3EZMnx">
          <ref role="PMmxG" node="4nIWweBWmzT" resolve="AbstractRule_contents" />
        </node>
        <node concept="3F0ifn" id="6wQEDbCHtcZ" role="AHCbl">
          <property role="3F0ifm" value="..." />
          <ref role="1k5W1q" to="tpen:4vxLnq9T43C" resolve="FoldedCell" />
        </node>
      </node>
      <node concept="l2Vlx" id="6wQEDbCHtd0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6wQEDbCL4Fx">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="wq2x:6wQEDbCL4Fi" resolve="IncludeFragmentClause" />
    <node concept="3EZMnI" id="6wQEDbCL4Fz" role="2wV5jI">
      <node concept="3F0ifn" id="6wQEDbCL4G3" role="3EZMnx">
        <property role="3F0ifm" value="include fragment" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
      </node>
      <node concept="1iCGBv" id="6wQEDbCL4FI" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:6wQEDbCL4Fj" resolve="fragment" />
        <node concept="1sVBvm" id="6wQEDbCL4FK" role="1sWHZn">
          <node concept="3F0A7n" id="6wQEDbCL4FV" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="6wQEDbCL4FA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="PB1R3Y7Ej_">
    <property role="3GE5qa" value="constraint.variable" />
    <ref role="1XX52x" to="wq2x:PB1R3Y7Ed7" resolve="RulePartParameterDeclaration" />
    <node concept="3EZMnI" id="PB1R3Y7JcH" role="2wV5jI">
      <node concept="3EZMnI" id="1iWwVK2CnQR" role="3EZMnx">
        <node concept="VPM3Z" id="1iWwVK2CnQS" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F1sOY" id="1iWwVK2CnQV" role="3EZMnx">
          <property role="1$x2rV" value="term" />
          <property role="2ru_X1" value="true" />
          <ref role="1NtTu8" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
          <node concept="3F0ifn" id="4nIWweBGFL1" role="2ruayu">
            <property role="3F0ifm" value="term" />
            <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
          </node>
        </node>
        <node concept="l2Vlx" id="1iWwVK2CnQY" role="2iSdaV" />
      </node>
      <node concept="3F2HdR" id="PB1R3Y8j_E" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="5j4j:2E5lcNn8k3O" resolve="declaration" />
        <node concept="l2Vlx" id="PB1R3Y8j_G" role="2czzBx" />
      </node>
      <node concept="l2Vlx" id="PB1R3Y7Jd7" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1hX44vMFocR">
    <ref role="1XX52x" to="wq2x:1hX44vMFoce" resolve="CodeBlock" />
    <node concept="PMmxH" id="1hX44vMKXQP" role="2wV5jI">
      <ref role="PMmxG" node="1hX44vMKXy$" resolve="CodeBlockComponent" />
    </node>
  </node>
  <node concept="PKFIW" id="1hX44vMKXy$">
    <property role="TrG5h" value="CodeBlockComponent" />
    <ref role="1XX52x" to="wq2x:1hX44vMFoce" resolve="CodeBlock" />
    <node concept="3EZMnI" id="1hX44vMFqnP" role="2wV5jI">
      <property role="S$Qs1" value="true" />
      <node concept="VPM3Z" id="1hX44vMFqnQ" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="pVoyu" id="1hX44vMFqnR" role="3F10Kt">
        <property role="VOm3f" value="true" />
        <node concept="3nzxsE" id="1hX44vMFqnS" role="3n$kyP">
          <node concept="3clFbS" id="1hX44vMFqnT" role="2VODD2">
            <node concept="3clFbF" id="1hX44vMFqnU" role="3cqZAp">
              <node concept="3fqX7Q" id="1hX44vMFqnV" role="3clFbG">
                <node concept="2OqwBi" id="1hX44vMFqnW" role="3fr31v">
                  <node concept="2OqwBi" id="1hX44vMFqnX" role="2Oq$k0">
                    <node concept="pncrf" id="1hX44vMFqnY" role="2Oq$k0" />
                    <node concept="2qgKlT" id="1hX44vMFqnZ" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="1hX44vMFqo0" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:i0z3USV" resolve="isOneLiner" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="lj46D" id="1hX44vMFqo1" role="3F10Kt">
        <property role="VOm3f" value="true" />
        <node concept="3nzxsE" id="1hX44vMFqo2" role="3n$kyP">
          <node concept="3clFbS" id="1hX44vMFqo3" role="2VODD2">
            <node concept="3clFbF" id="1hX44vMFqo4" role="3cqZAp">
              <node concept="3fqX7Q" id="1hX44vMFqo5" role="3clFbG">
                <node concept="2OqwBi" id="1hX44vMFqo6" role="3fr31v">
                  <node concept="2OqwBi" id="1hX44vMFqo7" role="2Oq$k0">
                    <node concept="pncrf" id="1hX44vMFqo8" role="2Oq$k0" />
                    <node concept="2qgKlT" id="1hX44vMFqo9" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="1hX44vMFqoa" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:i0z3USV" resolve="isOneLiner" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="ljvvj" id="1hX44vMFqob" role="3F10Kt">
        <property role="VOm3f" value="true" />
        <node concept="3nzxsE" id="1hX44vMFqoc" role="3n$kyP">
          <node concept="3clFbS" id="1hX44vMFqod" role="2VODD2">
            <node concept="3clFbF" id="1hX44vMFqoe" role="3cqZAp">
              <node concept="3fqX7Q" id="1hX44vMFqof" role="3clFbG">
                <node concept="2OqwBi" id="1hX44vMFqog" role="3fr31v">
                  <node concept="2OqwBi" id="1hX44vMFqoh" role="2Oq$k0">
                    <node concept="pncrf" id="1hX44vMFqoi" role="2Oq$k0" />
                    <node concept="2qgKlT" id="1hX44vMFqoj" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="1hX44vMFqok" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:i0z3USV" resolve="isOneLiner" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="1hX44vMFqol" role="2iSdaV" />
      <node concept="3F1sOY" id="1hX44vMFqom" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:tIwzd1_VRv" resolve="code" />
      </node>
      <node concept="3F0ifn" id="1hX44vMFqGR" role="AHCbl">
        <property role="3F0ifm" value="{...}" />
        <ref role="1k5W1q" to="tpen:4vxLnq9T43C" resolve="FoldedCell" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1hX44vMKXUu">
    <property role="3GE5qa" value="term.feature" />
    <ref role="1XX52x" to="wq2x:1hX44vMEjQg" resolve="GetterBlock" />
    <node concept="3EZMnI" id="1hX44vMLUfw" role="2wV5jI">
      <node concept="3F0ifn" id="1hX44vMLHrt" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="lj46D" id="1hX44vMLVUg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="1hX44vMLIyI" role="pqm2j">
          <node concept="3clFbS" id="1hX44vMLIyJ" role="2VODD2">
            <node concept="3clFbF" id="1hX44vMLIHr" role="3cqZAp">
              <node concept="3fqX7Q" id="1hX44vMLIHs" role="3clFbG">
                <node concept="2OqwBi" id="1hX44vMLIHt" role="3fr31v">
                  <node concept="2OqwBi" id="1hX44vMLIHu" role="2Oq$k0">
                    <node concept="pncrf" id="1hX44vMLIHv" role="2Oq$k0" />
                    <node concept="2qgKlT" id="1hX44vMLIHw" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="1hX44vMLIHx" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:i0z3USV" resolve="isOneLiner" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="1hX44vMLVla" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="1hX44vMM8pW" role="3EZMnx">
        <node concept="VPM3Z" id="1hX44vMM8pY" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="1hX44vMM8LZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="1hX44vMM8q1" role="2iSdaV" />
        <node concept="3EZMnI" id="1hX44vMLGMt" role="3EZMnx">
          <property role="S$Qs1" value="true" />
          <node concept="VPM3Z" id="1hX44vMLGMu" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="pVoyu" id="1hX44vMLGMv" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="1hX44vMLGMw" role="3n$kyP">
              <node concept="3clFbS" id="1hX44vMLGMx" role="2VODD2">
                <node concept="3clFbF" id="1hX44vMLGMy" role="3cqZAp">
                  <node concept="3fqX7Q" id="1hX44vMLGMz" role="3clFbG">
                    <node concept="2OqwBi" id="1hX44vMLGM$" role="3fr31v">
                      <node concept="2OqwBi" id="1hX44vMLGM_" role="2Oq$k0">
                        <node concept="pncrf" id="1hX44vMLGMA" role="2Oq$k0" />
                        <node concept="2qgKlT" id="1hX44vMLGMB" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="1hX44vMLGMC" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:i0z3USV" resolve="isOneLiner" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="lj46D" id="1hX44vMLGMD" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="1hX44vMLGME" role="3n$kyP">
              <node concept="3clFbS" id="1hX44vMLGMF" role="2VODD2">
                <node concept="3clFbF" id="1hX44vMLGMG" role="3cqZAp">
                  <node concept="3fqX7Q" id="1hX44vMLGMH" role="3clFbG">
                    <node concept="2OqwBi" id="1hX44vMLGMI" role="3fr31v">
                      <node concept="2OqwBi" id="1hX44vMLGMJ" role="2Oq$k0">
                        <node concept="pncrf" id="1hX44vMLGMK" role="2Oq$k0" />
                        <node concept="2qgKlT" id="1hX44vMLGML" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="1hX44vMLGMM" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:i0z3USV" resolve="isOneLiner" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="ljvvj" id="1hX44vMLGMN" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="1hX44vMLGMO" role="3n$kyP">
              <node concept="3clFbS" id="1hX44vMLGMP" role="2VODD2">
                <node concept="3clFbF" id="1hX44vMLGMQ" role="3cqZAp">
                  <node concept="3fqX7Q" id="1hX44vMLGMR" role="3clFbG">
                    <node concept="2OqwBi" id="1hX44vMLGMS" role="3fr31v">
                      <node concept="2OqwBi" id="1hX44vMLGMT" role="2Oq$k0">
                        <node concept="pncrf" id="1hX44vMLGMU" role="2Oq$k0" />
                        <node concept="2qgKlT" id="1hX44vMLGMV" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="1hX44vMLGMW" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:i0z3USV" resolve="isOneLiner" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="l2Vlx" id="1hX44vMLGMX" role="2iSdaV" />
          <node concept="3F1sOY" id="1hX44vMLGMY" role="3EZMnx">
            <ref role="1NtTu8" to="wq2x:tIwzd1_VRv" resolve="code" />
          </node>
          <node concept="3F0ifn" id="1hX44vMLGMZ" role="AHCbl">
            <property role="3F0ifm" value="{...}" />
            <ref role="1k5W1q" to="tpen:4vxLnq9T43C" resolve="FoldedCell" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="1hX44vMLI2S" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
        <node concept="pkWqt" id="1hX44vMLJeD" role="pqm2j">
          <node concept="3clFbS" id="1hX44vMLJeE" role="2VODD2">
            <node concept="3clFbF" id="1hX44vMLJp_" role="3cqZAp">
              <node concept="3fqX7Q" id="1hX44vMLJpA" role="3clFbG">
                <node concept="2OqwBi" id="1hX44vMLJpB" role="3fr31v">
                  <node concept="2OqwBi" id="1hX44vMLJpC" role="2Oq$k0">
                    <node concept="pncrf" id="1hX44vMLJpD" role="2Oq$k0" />
                    <node concept="2qgKlT" id="1hX44vMLJpE" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="1hX44vMLJpF" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:i0z3USV" resolve="isOneLiner" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lj46D" id="1hX44vMLWdP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="1hX44vMLXnf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="1hX44vMLUfx" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="18kNIl0jL7w">
    <property role="3GE5qa" value="constraint.typespecific" />
    <ref role="1XX52x" to="wq2x:18kNIl0jL2T" resolve="ExpandPseudoConstraint" />
    <node concept="3EZMnI" id="18kNIl0jL7y" role="2wV5jI">
      <node concept="3F1sOY" id="18kNIl0jL7z" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:18kNIl0jL_z" resolve="logical" />
      </node>
      <node concept="3F0ifn" id="18kNIl0jL7$" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
      </node>
      <node concept="PMmxH" id="6DOfTm$5j2d" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="7ksQUDZpd8b" resolve="ConstraintKeyword" />
      </node>
      <node concept="3F1sOY" id="18kNIl0jMiT" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:18kNIl0jL3E" resolve="origin" />
      </node>
      <node concept="l2Vlx" id="18kNIl0jL8a" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7IysFe_ZPXL">
    <property role="3GE5qa" value="macro.decl" />
    <ref role="1XX52x" to="wq2x:7IysFe_ZPXH" resolve="MacroBodyLogicalDeclaration" />
    <node concept="3EZMnI" id="7IysFe_ZPXN" role="2wV5jI">
      <node concept="3EZMnI" id="1iWwVK2Coka" role="3EZMnx">
        <node concept="3F1sOY" id="1iWwVK2Coke" role="3EZMnx">
          <property role="39s7Ar" value="true" />
          <property role="2ru_X1" value="true" />
          <ref role="1NtTu8" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
          <node concept="3F0ifn" id="7XmdqtdBsrv" role="2ruayu">
            <property role="3F0ifm" value="term" />
            <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
          </node>
        </node>
        <node concept="VPM3Z" id="1iWwVK2Cokb" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="1iWwVK2Cokh" role="2iSdaV" />
      </node>
      <node concept="3F2HdR" id="7IysFe_ZPXS" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="5j4j:2E5lcNn8k3O" resolve="declaration" />
        <node concept="l2Vlx" id="7IysFe_ZPXT" role="2czzBx" />
      </node>
      <node concept="l2Vlx" id="7IysFe_ZPXU" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7IysFe_ZQ5Q">
    <property role="3GE5qa" value="macro.decl" />
    <ref role="1XX52x" to="wq2x:7IysFe_ZPX_" resolve="MacroBody" />
    <node concept="3EZMnI" id="7IysFe_ZQ6e" role="2wV5jI">
      <node concept="3F0ifn" id="7IysFe_ZQ6E" role="3EZMnx">
        <property role="3F0ifm" value="produce" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
        <node concept="pVoyu" id="7IysFeA7AiM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="A1WHr" id="7XmdqtdBqvb" role="3vIgyS">
          <ref role="2ZyFGn" to="wq2x:7IysFe_ZPX_" resolve="MacroBody" />
        </node>
      </node>
      <node concept="3EZMnI" id="7XmdqtdB5Cs" role="3EZMnx">
        <node concept="3F0ifn" id="7XmdqtdBODP" role="3EZMnx">
          <property role="3F0ifm" value="&lt;" />
          <node concept="11LMrY" id="7XmdqtdCbtb" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="VPM3Z" id="7XmdqtdB5Cu" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F2HdR" id="7XmdqtdBqWY" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="wq2x:7IysFe_ZPXE" resolve="parameter" />
          <node concept="l2Vlx" id="7XmdqtdBqWZ" role="2czzBx" />
          <node concept="3F0ifn" id="7XmdqtdBqX0" role="2czzBI">
            <property role="ilYzB" value="&lt;no logical&gt;" />
          </node>
        </node>
        <node concept="3F0ifn" id="7XmdqtdBqD7" role="3EZMnx">
          <property role="3F0ifm" value="&gt;" />
          <node concept="11L4FC" id="7XmdqtdCbtd" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="7XmdqtdB5Cx" role="2iSdaV" />
        <node concept="pkWqt" id="7XmdqtdB5CX" role="pqm2j">
          <node concept="3clFbS" id="7XmdqtdB5CY" role="2VODD2">
            <node concept="3clFbF" id="7XmdqtdB5Kb" role="3cqZAp">
              <node concept="2OqwBi" id="7XmdqtdB8mq" role="3clFbG">
                <node concept="2OqwBi" id="7XmdqtdB5X8" role="2Oq$k0">
                  <node concept="pncrf" id="7XmdqtdB5Ka" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="7XmdqtdB6gS" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:7IysFe_ZPXE" resolve="parameter" />
                  </node>
                </node>
                <node concept="3GX2aA" id="7XmdqtdBbEN" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="7XmdqtdBOYd" role="3EZMnx">
        <node concept="VPM3Z" id="7XmdqtdBOYf" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="7XmdqtdBP8N" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="7XmdqtdBP8V" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="7XmdqtdBOYi" role="2iSdaV" />
        <node concept="3F0ifn" id="7XmdqtdBsKt" role="3EZMnx">
          <property role="3F0ifm" value="%%" />
          <ref role="1k5W1q" node="7LZcKzBE07j" resolve="EmitConstraint" />
          <node concept="ljvvj" id="7XmdqtdBt4D" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3EZMnI" id="7IysFe_ZQ8b" role="3EZMnx">
          <property role="S$Qs1" value="true" />
          <node concept="VPM3Z" id="7IysFe_ZQ8c" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="pVoyu" id="7IysFe_ZQ8d" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="7IysFe_ZQ8e" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="7IysFe_ZQ8f" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="7IysFe_ZQ8g" role="2iSdaV" />
          <node concept="3F1sOY" id="7IysFe_ZQ8h" role="3EZMnx">
            <ref role="1NtTu8" to="wq2x:7IysFe_ZPXC" resolve="code" />
          </node>
        </node>
        <node concept="3F0ifn" id="7XmdqtdBtpv" role="3EZMnx">
          <property role="3F0ifm" value="%%" />
          <ref role="1k5W1q" node="7LZcKzBE07j" resolve="EmitConstraint" />
          <node concept="pVoyu" id="7XmdqtdBtHH" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="7IysFe_ZQ6f" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7IysFeA0ybR">
    <property role="3GE5qa" value="macro.decl" />
    <ref role="1XX52x" to="wq2x:7IysFeA0yb0" resolve="MacroParameterDeclaration" />
    <node concept="3EZMnI" id="7IysFeA0ybT" role="2wV5jI">
      <node concept="3F1sOY" id="7IysFeA0yc0" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:7IysFeA0ybI" resolve="type" />
      </node>
      <node concept="3F0A7n" id="7IysFeA0yc6" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="tpen:hshQ_OE" resolve="Field" />
      </node>
      <node concept="3F0ifn" id="7IysFeA5xBX" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F1sOY" id="7IysFeA5xC7" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:7IysFeA5xBQ" resolve="init" />
      </node>
      <node concept="l2Vlx" id="7IysFeA0ybW" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7IysFeA1vun">
    <property role="3GE5qa" value="macro.decl" />
    <ref role="1XX52x" to="wq2x:7IysFeA1uPa" resolve="MacroParameterReference" />
    <node concept="3EZMnI" id="7IysFeA1vup" role="2wV5jI">
      <node concept="1iCGBv" id="7IysFeA1vuw" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:7IysFeA1uTj" resolve="parameter" />
        <node concept="1sVBvm" id="7IysFeA1vuy" role="1sWHZn">
          <node concept="3F0A7n" id="7IysFeA1vuD" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" to="tpen:hshQ_OE" resolve="Field" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="7IysFeA1vus" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7IysFeA5Lea">
    <property role="3GE5qa" value="macro.code" />
    <ref role="1XX52x" to="wq2x:7IysFeA5Lco" resolve="InitBlock" />
    <node concept="3EZMnI" id="7IysFeA5LyV" role="2wV5jI">
      <node concept="3F0ifn" id="7IysFeA5LyW" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="lj46D" id="7IysFeA5LyX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="7IysFeA5LyY" role="pqm2j">
          <node concept="3clFbS" id="7IysFeA5LyZ" role="2VODD2">
            <node concept="3clFbF" id="7IysFeA5Lz0" role="3cqZAp">
              <node concept="3fqX7Q" id="7IysFeA5Lz1" role="3clFbG">
                <node concept="2OqwBi" id="7IysFeA5Lz2" role="3fr31v">
                  <node concept="2OqwBi" id="7IysFeA5Lz3" role="2Oq$k0">
                    <node concept="pncrf" id="7IysFeA5Lz4" role="2Oq$k0" />
                    <node concept="2qgKlT" id="7IysFeA5Lz5" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="7IysFeA5Lz6" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:i0z3USV" resolve="isOneLiner" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="7IysFeA5Lz7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="7IysFeA5Lz8" role="3EZMnx">
        <node concept="VPM3Z" id="7IysFeA5Lz9" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="7IysFeA5Lza" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="7IysFeA5Lzb" role="2iSdaV" />
        <node concept="3EZMnI" id="7IysFeA5Lzc" role="3EZMnx">
          <property role="S$Qs1" value="true" />
          <node concept="VPM3Z" id="7IysFeA5Lzd" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="pVoyu" id="7IysFeA5Lze" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="7IysFeA5Lzf" role="3n$kyP">
              <node concept="3clFbS" id="7IysFeA5Lzg" role="2VODD2">
                <node concept="3clFbF" id="7IysFeA5Lzh" role="3cqZAp">
                  <node concept="3fqX7Q" id="7IysFeA5Lzi" role="3clFbG">
                    <node concept="2OqwBi" id="7IysFeA5Lzj" role="3fr31v">
                      <node concept="2OqwBi" id="7IysFeA5Lzk" role="2Oq$k0">
                        <node concept="pncrf" id="7IysFeA5Lzl" role="2Oq$k0" />
                        <node concept="2qgKlT" id="7IysFeA5Lzm" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="7IysFeA5Lzn" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:i0z3USV" resolve="isOneLiner" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="lj46D" id="7IysFeA5Lzo" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="7IysFeA5Lzp" role="3n$kyP">
              <node concept="3clFbS" id="7IysFeA5Lzq" role="2VODD2">
                <node concept="3clFbF" id="7IysFeA5Lzr" role="3cqZAp">
                  <node concept="3fqX7Q" id="7IysFeA5Lzs" role="3clFbG">
                    <node concept="2OqwBi" id="7IysFeA5Lzt" role="3fr31v">
                      <node concept="2OqwBi" id="7IysFeA5Lzu" role="2Oq$k0">
                        <node concept="pncrf" id="7IysFeA5Lzv" role="2Oq$k0" />
                        <node concept="2qgKlT" id="7IysFeA5Lzw" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="7IysFeA5Lzx" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:i0z3USV" resolve="isOneLiner" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="ljvvj" id="7IysFeA5Lzy" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="7IysFeA5Lzz" role="3n$kyP">
              <node concept="3clFbS" id="7IysFeA5Lz$" role="2VODD2">
                <node concept="3clFbF" id="7IysFeA5Lz_" role="3cqZAp">
                  <node concept="3fqX7Q" id="7IysFeA5LzA" role="3clFbG">
                    <node concept="2OqwBi" id="7IysFeA5LzB" role="3fr31v">
                      <node concept="2OqwBi" id="7IysFeA5LzC" role="2Oq$k0">
                        <node concept="pncrf" id="7IysFeA5LzD" role="2Oq$k0" />
                        <node concept="2qgKlT" id="7IysFeA5LzE" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="7IysFeA5LzF" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:i0z3USV" resolve="isOneLiner" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="l2Vlx" id="7IysFeA5LzG" role="2iSdaV" />
          <node concept="3F1sOY" id="7IysFeA5LzH" role="3EZMnx">
            <ref role="1NtTu8" to="wq2x:tIwzd1_VRv" resolve="code" />
          </node>
          <node concept="3F0ifn" id="7IysFeA5LzI" role="AHCbl">
            <property role="3F0ifm" value="{...}" />
            <ref role="1k5W1q" to="tpen:4vxLnq9T43C" resolve="FoldedCell" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7IysFeA5LzJ" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
        <node concept="pkWqt" id="7IysFeA5LzK" role="pqm2j">
          <node concept="3clFbS" id="7IysFeA5LzL" role="2VODD2">
            <node concept="3clFbF" id="7IysFeA5LzM" role="3cqZAp">
              <node concept="3fqX7Q" id="7IysFeA5LzN" role="3clFbG">
                <node concept="2OqwBi" id="7IysFeA5LzO" role="3fr31v">
                  <node concept="2OqwBi" id="7IysFeA5LzP" role="2Oq$k0">
                    <node concept="pncrf" id="7IysFeA5LzQ" role="2Oq$k0" />
                    <node concept="2qgKlT" id="7IysFeA5LzR" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:i0zv5tb" resolve="getStatementList" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="7IysFeA5LzS" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:i0z3USV" resolve="isOneLiner" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lj46D" id="7IysFeA5LzT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="7IysFeA5LzU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7IysFeA5LzV" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7IysFeA99pm">
    <property role="3GE5qa" value="macro.code" />
    <ref role="1XX52x" to="wq2x:7IysFeA99oR" resolve="MacroLogicalExpression" />
    <node concept="3EZMnI" id="7IysFeA99po" role="2wV5jI">
      <node concept="PMmxH" id="7IysFeA99pp" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" to="qgy9:1iWwVK2B1it" resolve="Logical" />
        <node concept="Vb9p2" id="7XmdqtdDfDo" role="3F10Kt">
          <property role="Vbekb" value="ITALIC" />
        </node>
      </node>
      <node concept="l2Vlx" id="7IysFeA99pr" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3TnYLtqfh$h">
    <property role="3GE5qa" value="macro.code.with" />
    <ref role="1XX52x" to="wq2x:3TnYLtqfhzx" resolve="ContextParameterDeclaration" />
    <node concept="3EZMnI" id="3TnYLtqfh$j" role="2wV5jI">
      <node concept="3F1sOY" id="3TnYLtqfh$x" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:3TnYLtqfhzO" resolve="type" />
      </node>
      <node concept="3F0A7n" id="3TnYLtqfh$F" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="3TnYLtqfh$m" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3TnYLtqfh_m">
    <property role="3GE5qa" value="macro.code.with" />
    <ref role="1XX52x" to="wq2x:3TnYLtqfh$J" resolve="ContextParameterReference" />
    <node concept="3EZMnI" id="3TnYLtqfh_o" role="2wV5jI">
      <node concept="1iCGBv" id="3TnYLtqfh_v" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:3TnYLtqfh$T" resolve="parameter" />
        <node concept="1sVBvm" id="3TnYLtqfh_x" role="1sWHZn">
          <node concept="3F0A7n" id="3TnYLtqfh_C" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6hqFpWmO6yq" role="3EZMnx">
        <property role="3F0ifm" value="from context" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="l2Vlx" id="3TnYLtqfh_r" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3TnYLtqgQZv">
    <property role="3GE5qa" value="macro.code.with" />
    <ref role="1XX52x" to="wq2x:3TnYLtqgQYU" resolve="WithContextStatement" />
    <node concept="3EZMnI" id="3TnYLtqgQZx" role="2wV5jI">
      <node concept="l2Vlx" id="3TnYLtqgQZ$" role="2iSdaV" />
      <node concept="PMmxH" id="3TnYLtqgQZH" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
        <node concept="VPxyj" id="3TnYLtqhLap" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3TnYLtqgQZM" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
      </node>
      <node concept="1iCGBv" id="3TnYLtqgRYv" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:3TnYLtqgRY3" resolve="parameter" />
        <node concept="1sVBvm" id="3TnYLtqgRYx" role="1sWHZn">
          <node concept="3F0A7n" id="3TnYLtqgRYN" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3TnYLtqgR7G" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F1sOY" id="3TnYLtqgR8k" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:3TnYLtqgQZ0" resolve="init" />
      </node>
      <node concept="3F0ifn" id="3TnYLtqgQZU" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="3F0ifn" id="3TnYLtqgR0i" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="3TnYLtqhL6t" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="3TnYLtqhL8g" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="3TnYLtqgR0_" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:3TnYLtqgQYV" resolve="body" />
        <node concept="lj46D" id="3TnYLtqgR3d" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3TnYLtqgR3E" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
        <node concept="pVoyu" id="3TnYLtqgR77" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1L74NXElXMi">
    <property role="3GE5qa" value="term" />
    <ref role="1XX52x" to="wq2x:1L74NXElX0R" resolve="Term" />
    <node concept="3EZMnI" id="1L74NXElXMk" role="2wV5jI">
      <node concept="l2Vlx" id="1L74NXElXMn" role="2iSdaV" />
      <node concept="1iCGBv" id="5hSMZ_l942J" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:5hSMZ_l93p$" resolve="termDecl" />
        <node concept="1sVBvm" id="5hSMZ_l942L" role="1sWHZn">
          <node concept="3F0A7n" id="5hSMZ_l94mH" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" node="4bWqD4C2vDI" resolve="Term" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="1L74NXFNJ0S" role="3EZMnx">
        <node concept="VPM3Z" id="1L74NXFNJ0U" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="1L74NXFNJ0X" role="2iSdaV" />
        <node concept="3F0ifn" id="1L74NXFNj3F" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
          <node concept="ljvvj" id="1L74NXFNj7v" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="1L74NXFOUM5" role="3n$kyP">
              <node concept="3clFbS" id="1L74NXFOUM6" role="2VODD2">
                <node concept="3clFbF" id="1L74NXFOUWS" role="3cqZAp">
                  <node concept="3eOSWO" id="1L74NXFP2wG" role="3clFbG">
                    <node concept="3cmrfG" id="1L74NXFP2wM" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="2OqwBi" id="1L74NXFOXiD" role="3uHU7B">
                      <node concept="2OqwBi" id="1L74NXFOV8F" role="2Oq$k0">
                        <node concept="pncrf" id="1L74NXFOUWR" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="1L74NXFOVBn" role="2OqNvi">
                          <ref role="3TtcxE" to="wq2x:1L74NXFNj2L" resolve="override" />
                        </node>
                      </node>
                      <node concept="34oBXx" id="1L74NXFP0h0" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F2HdR" id="1L74NXFNj7x" role="3EZMnx">
          <ref role="1NtTu8" to="wq2x:1L74NXFNj2L" resolve="override" />
          <node concept="l2Vlx" id="1L74NXFNj7z" role="2czzBx" />
          <node concept="lj46D" id="1L74NXFNj9o" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2o9xnK" id="1L74NXFPnXQ" role="2gpyvW">
            <node concept="3clFbS" id="1L74NXFPnXR" role="2VODD2">
              <node concept="3clFbF" id="1L74NXFPoax" role="3cqZAp">
                <node concept="Xl_RD" id="1L74NXFPoaw" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="tppnM" id="1L74NXFPoKM" role="sWeuL">
            <node concept="ljvvj" id="1L74NXFPoKV" role="3F10Kt">
              <property role="VOm3f" value="true" />
              <node concept="3nzxsE" id="4bWqD4CgyAD" role="3n$kyP">
                <node concept="3clFbS" id="4bWqD4CgyAE" role="2VODD2">
                  <node concept="3clFbF" id="4bWqD4CgyHR" role="3cqZAp">
                    <node concept="3eOSWO" id="4bWqD4CgEAp" role="3clFbG">
                      <node concept="3cmrfG" id="4bWqD4CgEAv" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="2OqwBi" id="4bWqD4Cg_p8" role="3uHU7B">
                        <node concept="2OqwBi" id="4bWqD4CgyVA" role="2Oq$k0">
                          <node concept="pncrf" id="4bWqD4CgyHQ" role="2Oq$k0" />
                          <node concept="3Tsc0h" id="4bWqD4Cgzzg" role="2OqNvi">
                            <ref role="3TtcxE" to="wq2x:1L74NXFNj2L" resolve="override" />
                          </node>
                        </node>
                        <node concept="34oBXx" id="4bWqD4CgCks" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="Lu45F8B7eI" role="2czzBI">
            <property role="3F0ifm" value="" />
          </node>
        </node>
        <node concept="3F0ifn" id="1L74NXFNj3T" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
          <node concept="pVoyu" id="1L74NXFNj5N" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="1L74NXFP31o" role="3n$kyP">
              <node concept="3clFbS" id="1L74NXFP31p" role="2VODD2">
                <node concept="3clFbF" id="1L74NXFP3eX" role="3cqZAp">
                  <node concept="3eOSWO" id="1L74NXFPaP5" role="3clFbG">
                    <node concept="3cmrfG" id="1L74NXFPaPb" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="2OqwBi" id="1L74NXFP5$I" role="3uHU7B">
                      <node concept="2OqwBi" id="1L74NXFP3qK" role="2Oq$k0">
                        <node concept="pncrf" id="1L74NXFP3eW" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="1L74NXFP3Ts" role="2OqNvi">
                          <ref role="3TtcxE" to="wq2x:1L74NXFNj2L" resolve="override" />
                        </node>
                      </node>
                      <node concept="34oBXx" id="1L74NXFP8_p" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Bsynf" id="1L74NXFNylb" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1L74NXEmFKo">
    <property role="3GE5qa" value="macro.invoke" />
    <ref role="1XX52x" to="wq2x:1L74NXEmFJU" resolve="MacroArgumentList" />
    <node concept="3EZMnI" id="1L74NXEmFMy" role="2wV5jI">
      <node concept="3F2HdR" id="1L74NXEmFY1" role="3EZMnx">
        <property role="2czwfO" value="," />
        <property role="Q2I2d" value="punctuation" />
        <ref role="1NtTu8" to="wq2x:1L74NXEmFJV" resolve="binding" />
        <node concept="l2Vlx" id="1L74NXEmFY2" role="2czzBx" />
        <node concept="3F0ifn" id="1L74NXEmFY3" role="2czzBI">
          <property role="3F0ifm" value="" />
        </node>
      </node>
      <node concept="l2Vlx" id="1L74NXEmFM_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1L74NXEmHyT">
    <property role="3GE5qa" value="macro.invoke" />
    <ref role="1XX52x" to="wq2x:1L74NXEmF9s" resolve="MacroParameterBinding" />
    <node concept="3EZMnI" id="1L74NXEmHyV" role="2wV5jI">
      <node concept="3EZMnI" id="1L74NXGKmQR" role="3EZMnx">
        <node concept="VPM3Z" id="1L74NXGKmQT" role="3F10Kt">
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
        <node concept="1iCGBv" id="1L74NXEmHyW" role="3EZMnx">
          <ref role="1NtTu8" to="wq2x:1L74NXEmG0t" resolve="parameter" />
          <node concept="1sVBvm" id="1L74NXEmHyX" role="1sWHZn">
            <node concept="3F0A7n" id="1L74NXEmHyY" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <ref role="1k5W1q" to="tpen:hshQ_OE" resolve="Field" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="1L74NXEmHyZ" role="3EZMnx">
          <property role="3F0ifm" value="=" />
          <node concept="11L4FC" id="1L74NXEmHz0" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="1L74NXEmHz1" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="1L74NXGK7zP" role="3EZMnx">
          <ref role="1NtTu8" to="wq2x:1L74NXGK1G1" resolve="code" />
        </node>
        <node concept="l2Vlx" id="1L74NXGKmQW" role="2iSdaV" />
      </node>
      <node concept="l2Vlx" id="1L74NXEmHz3" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1L74NXFMBU3">
    <property role="3GE5qa" value="term" />
    <ref role="1XX52x" to="wq2x:1L74NXFMz6j" resolve="TermFeatureOverride" />
    <node concept="3EZMnI" id="1L74NXFMBU5" role="2wV5jI">
      <node concept="1iCGBv" id="1L74NXFMBUc" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:1L74NXFMz74" resolve="feature" />
        <node concept="1sVBvm" id="1L74NXFMBUe" role="1sWHZn">
          <node concept="3F0A7n" id="1L74NXFMBUl" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" node="4bWqD4C9OIl" resolve="TermFeatureOverride" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7LZcKzBBdCO" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="7LZcKzBBqUE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="1L74NXFMBX2" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:1L74NXFMBVS" resolve="term" />
      </node>
      <node concept="l2Vlx" id="1L74NXFMBU8" role="2iSdaV" />
    </node>
  </node>
  <node concept="3ICXOK" id="4hPXq9JmegX">
    <property role="TrG5h" value="Head_keep_discard" />
    <property role="3GE5qa" value="rule.component" />
    <ref role="aqKnT" to="wq2x:6p0DfM0a3gA" resolve="Head" />
    <node concept="yp4Wq" id="4hPXq9JmegY" role="lGtFl">
      <property role="yp4Ub" value="ext_1_RTransform" />
    </node>
    <node concept="1Qtc8_" id="4hPXq9Jmeh1" role="IW6Ez">
      <node concept="3cWJ9i" id="7lt0LtPgBg6" role="1Qtc8$">
        <node concept="CtIbL" id="7lt0LtPgBg8" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
        <node concept="CtIbL" id="7lt0LtPhpr0" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="aenpk" id="4nIWweBLxJX" role="1Qtc8A">
        <node concept="IWgqT" id="4hPXq9Jmehb" role="aenpr">
          <node concept="1hCUdq" id="4hPXq9Jmehc" role="1hCUd6">
            <node concept="3clFbS" id="4hPXq9Jmehd" role="2VODD2">
              <node concept="3clFbF" id="4hPXq9Jmehe" role="3cqZAp">
                <node concept="Xl_RD" id="4hPXq9Jmehf" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="4hPXq9Jmehg" role="IWgqQ">
            <node concept="3clFbS" id="4hPXq9Jmehh" role="2VODD2">
              <node concept="3clFbF" id="4hPXq9Jmehi" role="3cqZAp">
                <node concept="37vLTI" id="4hPXq9Jmehj" role="3clFbG">
                  <node concept="3clFbT" id="4hPXq9Jmehk" role="37vLTx">
                    <property role="3clFbU" value="false" />
                  </node>
                  <node concept="2OqwBi" id="4hPXq9Jmehl" role="37vLTJ">
                    <node concept="7Obwk" id="4hPXq9Jmehq" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4hPXq9Jmehn" role="2OqNvi">
                      <ref role="3TsBF5" to="wq2x:6p0DfM0bSv$" resolve="keep" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4hPXq9Jmehx" role="3cqZAp">
                <node concept="2OqwBi" id="4hPXq9Jmehs" role="3clFbG">
                  <node concept="7Obwk" id="4hPXq9Jmehr" role="2Oq$k0" />
                  <node concept="1OKiuA" id="4hPXq9Jmeht" role="2OqNvi">
                    <node concept="1Q80Hx" id="4hPXq9Jmehu" role="lBI5i" />
                    <node concept="2B6iha" id="4hPXq9Jmehv" role="lGT1i">
                      <property role="1lyBwo" value="mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="4hPXq9Jmehw" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqGtN" id="7lt0LtP7DGx" role="2jZA2a">
            <node concept="3cqJkl" id="7lt0LtP7DGy" role="3cqGtW">
              <node concept="3clFbS" id="7lt0LtP7DGz" role="2VODD2">
                <node concept="3clFbF" id="7lt0LtP7DRA" role="3cqZAp">
                  <node concept="Xl_RD" id="7lt0LtP7DR_" role="3clFbG">
                    <property role="Xl_RC" value="discard" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="4nIWweBLxVd" role="aenpu">
          <node concept="3clFbS" id="4nIWweBLxVe" role="2VODD2">
            <node concept="3clFbF" id="4nIWweBLy2r" role="3cqZAp">
              <node concept="2OqwBi" id="4nIWweBLyFn" role="3clFbG">
                <node concept="7Obwk" id="4nIWweBLyFo" role="2Oq$k0" />
                <node concept="3TrcHB" id="4nIWweBLyFp" role="2OqNvi">
                  <ref role="3TsBF5" to="wq2x:6p0DfM0bSv$" resolve="keep" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="aenpk" id="4hPXq9Jmeh3" role="1Qtc8A">
        <node concept="27VH4U" id="4hPXq9Jmeh4" role="aenpu">
          <node concept="3clFbS" id="4hPXq9Jmeh5" role="2VODD2">
            <node concept="3clFbF" id="4hPXq9Jmeh6" role="3cqZAp">
              <node concept="3fqX7Q" id="4nIWweBL$pI" role="3clFbG">
                <node concept="2OqwBi" id="4nIWweBL$pK" role="3fr31v">
                  <node concept="7Obwk" id="4nIWweBL$pL" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4nIWweBL$pM" role="2OqNvi">
                    <ref role="3TsBF5" to="wq2x:6p0DfM0bSv$" resolve="keep" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="4nIWweBH1ca" role="aenpr">
          <node concept="1hCUdq" id="4nIWweBH1cc" role="1hCUd6">
            <node concept="3clFbS" id="4nIWweBH1ce" role="2VODD2">
              <node concept="3clFbF" id="4nIWweBH1v7" role="3cqZAp">
                <node concept="Xl_RD" id="4nIWweBH1v6" role="3clFbG">
                  <property role="Xl_RC" value="!" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="4nIWweBH1cg" role="IWgqQ">
            <node concept="3clFbS" id="4nIWweBH1ci" role="2VODD2">
              <node concept="3clFbF" id="4nIWweBH1SF" role="3cqZAp">
                <node concept="37vLTI" id="4nIWweBH1SG" role="3clFbG">
                  <node concept="3clFbT" id="4nIWweBH1Zl" role="37vLTx">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="2OqwBi" id="4nIWweBH1SI" role="37vLTJ">
                    <node concept="7Obwk" id="4nIWweBH1SJ" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4nIWweBH1SK" role="2OqNvi">
                      <ref role="3TsBF5" to="wq2x:6p0DfM0bSv$" resolve="keep" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4nIWweBH1SL" role="3cqZAp">
                <node concept="2OqwBi" id="4nIWweBH1SM" role="3clFbG">
                  <node concept="7Obwk" id="4nIWweBH1SN" role="2Oq$k0" />
                  <node concept="1OKiuA" id="4nIWweBH1SO" role="2OqNvi">
                    <node concept="1Q80Hx" id="4nIWweBH1SP" role="lBI5i" />
                    <node concept="2B6iha" id="4nIWweBH1SQ" role="lGT1i">
                      <property role="1lyBwo" value="mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="4nIWweBH1SR" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqGtN" id="7lt0LtP7EIE" role="2jZA2a">
            <node concept="3cqJkl" id="7lt0LtP7EIF" role="3cqGtW">
              <node concept="3clFbS" id="7lt0LtP7EIG" role="2VODD2">
                <node concept="3clFbF" id="7lt0LtP7ETJ" role="3cqZAp">
                  <node concept="Xl_RD" id="7lt0LtP7ETI" role="3clFbG">
                    <property role="Xl_RC" value="keep" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1Qtc8_" id="4aJUH_hTlaK" role="IW6Ez">
      <node concept="3cWJ9i" id="4aJUH_hTlaL" role="1Qtc8$">
        <node concept="CtIbL" id="4aJUH_hTlaM" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="4aJUH_hTlaN" role="1Qtc8A">
        <node concept="1hCUdq" id="4aJUH_hTlaO" role="1hCUd6">
          <node concept="3clFbS" id="4aJUH_hTlaP" role="2VODD2">
            <node concept="3clFbF" id="4aJUH_hTlaQ" role="3cqZAp">
              <node concept="Xl_RD" id="4aJUH_hTlaR" role="3clFbG">
                <property role="Xl_RC" value="&lt;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="4aJUH_hTlaS" role="IWgqQ">
          <node concept="3clFbS" id="4aJUH_hTlaT" role="2VODD2">
            <node concept="3clFbF" id="4aJUH_hTlaU" role="3cqZAp">
              <node concept="2OqwBi" id="4aJUH_hTlaV" role="3clFbG">
                <node concept="2OqwBi" id="4aJUH_hTlaW" role="2Oq$k0">
                  <node concept="7Obwk" id="4aJUH_hTlaX" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="4aJUH_hTlaY" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:PB1R3Y7EcX" resolve="parameter" />
                  </node>
                </node>
                <node concept="2DeJg1" id="4aJUH_hU8cH" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="4aJUH_hTlb0" role="2jiSrf">
          <node concept="3clFbS" id="4aJUH_hTlb1" role="2VODD2">
            <node concept="3clFbF" id="4aJUH_hTlb2" role="3cqZAp">
              <node concept="2OqwBi" id="4aJUH_hTlb3" role="3clFbG">
                <node concept="2OqwBi" id="4aJUH_hTlb4" role="2Oq$k0">
                  <node concept="7Obwk" id="4aJUH_hTlb5" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="4aJUH_hTlb6" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:PB1R3Y7EcX" resolve="parameter" />
                  </node>
                </node>
                <node concept="1v1jN8" id="4aJUH_hTlb7" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="IW6AY" id="4hPXq9JmeiU">
    <ref role="aqKnT" to="wq2x:2E5lcNn8iYG" resolve="LogicVariableDeclarationStatement" />
    <node concept="1Qtc8_" id="4hPXq9JmeiV" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9JmeiW" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9JmeiX" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
        <node concept="CtIbL" id="4hPXq9JmeiY" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="4hPXq9JmeiZ" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="4hPXq9Jmej2" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jmej0" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jmej1" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="aenpk" id="4hPXq9Jmej4" role="1Qtc8A">
        <node concept="27VH4U" id="4hPXq9Jmej5" role="aenpu">
          <node concept="3clFbS" id="4hPXq9Jmej6" role="2VODD2">
            <node concept="3clFbF" id="4hPXq9Jmej7" role="3cqZAp">
              <node concept="2OqwBi" id="4hPXq9Jmej8" role="3clFbG">
                <node concept="2OqwBi" id="4hPXq9Jmej9" role="2Oq$k0">
                  <node concept="7Obwk" id="4hPXq9Jmejd" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4hPXq9Jmejb" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
                  </node>
                </node>
                <node concept="3w_OXm" id="4hPXq9Jmejc" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="4hPXq9Jmeje" role="aenpr">
          <node concept="1hCUdq" id="4hPXq9Jmejf" role="1hCUd6">
            <node concept="3clFbS" id="4hPXq9Jmejg" role="2VODD2">
              <node concept="3clFbF" id="4hPXq9Jmejh" role="3cqZAp">
                <node concept="Xl_RD" id="4hPXq9Jmeji" role="3clFbG">
                  <property role="Xl_RC" value="&lt;" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="4hPXq9Jmejj" role="IWgqQ">
            <node concept="3clFbS" id="4hPXq9Jmejk" role="2VODD2">
              <node concept="3clFbF" id="4hPXq9Jmejl" role="3cqZAp">
                <node concept="2OqwBi" id="4hPXq9Jmejm" role="3clFbG">
                  <node concept="2OqwBi" id="4hPXq9Jmejn" role="2Oq$k0">
                    <node concept="7Obwk" id="4hPXq9Jmejt" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4hPXq9Jmejp" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="4hPXq9Jmejq" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="4hPXq9Jmej$" role="3cqZAp">
                <node concept="2OqwBi" id="4hPXq9Jmejv" role="3clFbG">
                  <node concept="7Obwk" id="4hPXq9Jmeju" role="2Oq$k0" />
                  <node concept="1OKiuA" id="4hPXq9Jmejw" role="2OqNvi">
                    <node concept="1Q80Hx" id="4hPXq9Jmejx" role="lBI5i" />
                    <node concept="2B6iha" id="4hPXq9Jmejy" role="lGT1i">
                      <property role="1lyBwo" value="mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="4hPXq9Jmejz" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1FNNb$" id="4hPXq9Jmej_" role="1FNMel">
            <ref role="1FNNbB" to="tpee:fzcpWvK" resolve="LocalVariableDeclarationStatement" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="IW6AY" id="4hPXq9JmejC">
    <property role="3GE5qa" value="macro" />
    <ref role="aqKnT" to="wq2x:7IysFe_ZPXH" resolve="MacroBodyLogicalDeclaration" />
    <node concept="1Qtc8_" id="4hPXq9JmejD" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9JmejE" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9JmejF" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
        <node concept="CtIbL" id="4hPXq9JmejG" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="4hPXq9JmejH" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="4hPXq9JmejK" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9JmejI" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9JmejJ" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="aenpk" id="4hPXq9JmejM" role="1Qtc8A">
        <node concept="27VH4U" id="4hPXq9JmejN" role="aenpu">
          <node concept="3clFbS" id="4hPXq9JmejO" role="2VODD2">
            <node concept="3clFbF" id="4hPXq9JmejP" role="3cqZAp">
              <node concept="2OqwBi" id="4hPXq9JmejQ" role="3clFbG">
                <node concept="2OqwBi" id="4hPXq9JmejR" role="2Oq$k0">
                  <node concept="7Obwk" id="4hPXq9JmejV" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4hPXq9JmejT" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
                  </node>
                </node>
                <node concept="3w_OXm" id="4hPXq9JmejU" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="4hPXq9JmejW" role="aenpr">
          <node concept="1hCUdq" id="4hPXq9JmejX" role="1hCUd6">
            <node concept="3clFbS" id="4hPXq9JmejY" role="2VODD2">
              <node concept="3clFbF" id="4hPXq9JmejZ" role="3cqZAp">
                <node concept="Xl_RD" id="4hPXq9Jmek0" role="3clFbG">
                  <property role="Xl_RC" value="&lt;" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="4hPXq9Jmek1" role="IWgqQ">
            <node concept="3clFbS" id="4hPXq9Jmek2" role="2VODD2">
              <node concept="3clFbF" id="4hPXq9Jmek3" role="3cqZAp">
                <node concept="2OqwBi" id="4hPXq9Jmek4" role="3clFbG">
                  <node concept="2OqwBi" id="4hPXq9Jmek5" role="2Oq$k0">
                    <node concept="7Obwk" id="4hPXq9Jmekb" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4hPXq9Jmek7" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="4hPXq9Jmek8" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="4hPXq9Jmeki" role="3cqZAp">
                <node concept="2OqwBi" id="4hPXq9Jmekd" role="3clFbG">
                  <node concept="7Obwk" id="4hPXq9Jmekc" role="2Oq$k0" />
                  <node concept="1OKiuA" id="4hPXq9Jmeke" role="2OqNvi">
                    <node concept="1Q80Hx" id="4hPXq9Jmekf" role="lBI5i" />
                    <node concept="2B6iha" id="4hPXq9Jmekg" role="lGT1i">
                      <property role="1lyBwo" value="mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="4hPXq9Jmekh" role="3dN3m$">
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
  <node concept="IW6AY" id="4hPXq9Jmekl">
    <ref role="aqKnT" to="wq2x:PB1R3Y7Ed7" resolve="RulePartParameterDeclaration" />
    <node concept="1Qtc8_" id="4hPXq9Jmekm" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jmekn" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jmeko" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
        <node concept="CtIbL" id="4hPXq9Jmekp" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="4hPXq9Jmekq" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="4hPXq9Jmekt" role="IW6Ez">
      <node concept="3cWJ9i" id="4hPXq9Jmekr" role="1Qtc8$">
        <node concept="CtIbL" id="4hPXq9Jmeks" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="aenpk" id="4hPXq9Jmekv" role="1Qtc8A">
        <node concept="27VH4U" id="4hPXq9Jmekw" role="aenpu">
          <node concept="3clFbS" id="4hPXq9Jmekx" role="2VODD2">
            <node concept="3clFbF" id="4hPXq9Jmeky" role="3cqZAp">
              <node concept="2OqwBi" id="4hPXq9Jmekz" role="3clFbG">
                <node concept="2OqwBi" id="4hPXq9Jmek$" role="2Oq$k0">
                  <node concept="7Obwk" id="4hPXq9JmekC" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4hPXq9JmekA" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
                  </node>
                </node>
                <node concept="3w_OXm" id="4hPXq9JmekB" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="4hPXq9JmekD" role="aenpr">
          <node concept="1hCUdq" id="4hPXq9JmekE" role="1hCUd6">
            <node concept="3clFbS" id="4hPXq9JmekF" role="2VODD2">
              <node concept="3clFbF" id="4hPXq9JmekG" role="3cqZAp">
                <node concept="Xl_RD" id="4hPXq9JmekH" role="3clFbG">
                  <property role="Xl_RC" value="&lt;" />
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="4hPXq9JmekI" role="IWgqQ">
            <node concept="3clFbS" id="4hPXq9JmekJ" role="2VODD2">
              <node concept="3clFbF" id="4hPXq9JmekK" role="3cqZAp">
                <node concept="2OqwBi" id="4hPXq9JmekL" role="3clFbG">
                  <node concept="2OqwBi" id="4hPXq9JmekM" role="2Oq$k0">
                    <node concept="7Obwk" id="4hPXq9JmekS" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4hPXq9JmekO" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:5zfvpQ72gqq" resolve="dataType" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="4hPXq9JmekP" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="4hPXq9JmekZ" role="3cqZAp">
                <node concept="2OqwBi" id="4hPXq9JmekU" role="3clFbG">
                  <node concept="7Obwk" id="4hPXq9JmekT" role="2Oq$k0" />
                  <node concept="1OKiuA" id="4hPXq9JmekV" role="2OqNvi">
                    <node concept="1Q80Hx" id="4hPXq9JmekW" role="lBI5i" />
                    <node concept="2B6iha" id="4hPXq9JmekX" role="lGT1i">
                      <property role="1lyBwo" value="mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="4hPXq9JmekY" role="3dN3m$">
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
  <node concept="3p36aQ" id="4hPXq9Jmem8">
    <ref role="aqKnT" to="wq2x:4EfgX2EvF4i" resolve="ExpressionConstraint" />
    <node concept="3ft6gV" id="4hPXq9Jmema" role="3ft7WO">
      <node concept="3ft6gW" id="4hPXq9Jmemb" role="3ft5RY">
        <node concept="3clFbS" id="4hPXq9Jmemc" role="2VODD2">
          <node concept="3clFbF" id="4hPXq9Jmemd" role="3cqZAp">
            <node concept="3fqX7Q" id="4hPXq9Jmeme" role="3clFbG">
              <node concept="1eOMI4" id="4hPXq9Jmemg" role="3fr31v">
                <node concept="3clFbC" id="4hPXq9Jmemh" role="1eOMHV">
                  <node concept="1J7kdh" id="4hPXq9Jmemi" role="3uHU7B" />
                  <node concept="10Nm6u" id="4hPXq9Jmemj" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3N5dw7" id="4hPXq9JmemJ" role="3ft5RZ">
        <node concept="2kknPJ" id="4hPXq9JmemK" role="2klrvf">
          <ref role="2ZyFGn" to="tpee:fz3vP1J" resolve="Expression" />
        </node>
        <node concept="3N5aqt" id="4hPXq9JmemL" role="3Na0zg">
          <node concept="3clFbS" id="4hPXq9JmemM" role="2VODD2">
            <node concept="3cpWs8" id="4hPXq9JmemN" role="3cqZAp">
              <node concept="3cpWsn" id="4hPXq9JmemO" role="3cpWs9">
                <property role="TrG5h" value="ec" />
                <node concept="3Tqbb2" id="4hPXq9JmemP" role="1tU5fm">
                  <ref role="ehGHo" to="wq2x:4EfgX2EvF4i" resolve="ExpressionConstraint" />
                </node>
                <node concept="2ShNRf" id="4hPXq9JmemQ" role="33vP2m">
                  <node concept="3zrR0B" id="4hPXq9JmemR" role="2ShVmc">
                    <node concept="3Tqbb2" id="4hPXq9JmemS" role="3zrR0E">
                      <ref role="ehGHo" to="wq2x:4EfgX2EvF4i" resolve="ExpressionConstraint" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4hPXq9JmemT" role="3cqZAp">
              <node concept="2OqwBi" id="4hPXq9JmemU" role="3clFbG">
                <node concept="2OqwBi" id="4hPXq9JmemV" role="2Oq$k0">
                  <node concept="37vLTw" id="4hPXq9JmemW" role="2Oq$k0">
                    <ref role="3cqZAo" node="4hPXq9JmemO" resolve="ec" />
                  </node>
                  <node concept="3TrEf2" id="4hPXq9JmemX" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:4EfgX2EvGcc" resolve="expression" />
                  </node>
                </node>
                <node concept="2oxUTD" id="4hPXq9JmemY" role="2OqNvi">
                  <node concept="3N4pyC" id="4hPXq9Jmen2" role="2oxUTC" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4hPXq9Jmen0" role="3cqZAp">
              <node concept="37vLTw" id="4hPXq9Jmen1" role="3clFbG">
                <ref role="3cqZAo" node="4hPXq9JmemO" resolve="ec" />
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
                      <property role="1lyBwo" value="mostRelevant" />
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
    <node concept="2VfDsV" id="4hPXq9JmeBe" role="3ft7WO" />
    <node concept="3ft5Ry" id="4hPXq9JmeBf" role="3ft7WO">
      <ref role="4PJHt" to="wq2x:4EfgX2EvF4i" resolve="ExpressionConstraint" />
    </node>
  </node>
  <node concept="3p309x" id="4hPXq9JmenD">
    <property role="TrG5h" value="Expression_Contribution" />
    <node concept="2kknPJ" id="4hPXq9JmenE" role="1IG6uw">
      <ref role="2ZyFGn" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1s_PAr" id="4hPXq9Jmesz" role="3ft7WO">
      <node concept="2kknPI" id="4hPXq9Jmes$" role="1s_PAo">
        <ref role="2kkw0f" node="4hPXq9JmerR" resolve="MacroLogical_Expression" />
      </node>
    </node>
    <node concept="1s_PAr" id="4hPXq9Jmeth" role="3ft7WO">
      <node concept="2kknPI" id="4hPXq9Jmeti" role="1s_PAo">
        <ref role="2kkw0f" node="4hPXq9Jmes_" resolve="MacroDeclaration_parameter" />
      </node>
    </node>
  </node>
  <node concept="Q6S24" id="4hPXq9JmerR">
    <property role="TrG5h" value="MacroLogical_Expression" />
    <property role="3GE5qa" value="macro" />
    <ref role="aqKnT" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="3ft6gV" id="4hPXq9JmerT" role="3ft7WO">
      <node concept="3ft6gW" id="4hPXq9JmerU" role="3ft5RY">
        <node concept="3clFbS" id="4hPXq9JmerV" role="2VODD2">
          <node concept="3clFbF" id="4hPXq9JmerW" role="3cqZAp">
            <node concept="2OqwBi" id="4hPXq9JmerX" role="3clFbG">
              <node concept="2OqwBi" id="4hPXq9JmerY" role="2Oq$k0">
                <node concept="3bvxqY" id="4hPXq9Jmes5" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4hPXq9Jmes0" role="2OqNvi">
                  <node concept="1xMEDy" id="4hPXq9Jmes1" role="1xVPHs">
                    <node concept="chp4Y" id="4hPXq9Jmes2" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:7IysFe_ZPX_" resolve="MacroBody" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="4hPXq9Jmes3" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="4hPXq9Jmes4" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3ft5Ry" id="4hPXq9Jmesw" role="3ft5RZ">
        <ref role="4PJHt" to="wq2x:7IysFeA99oR" resolve="MacroLogicalExpression" />
      </node>
    </node>
  </node>
  <node concept="Q6S24" id="4hPXq9Jmes_">
    <property role="TrG5h" value="MacroDeclaration_parameter" />
    <property role="3GE5qa" value="macro" />
    <ref role="aqKnT" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="3ft6gV" id="4hPXq9JmesB" role="3ft7WO">
      <node concept="3ft6gW" id="4hPXq9JmesC" role="3ft5RY">
        <node concept="3clFbS" id="4hPXq9JmesD" role="2VODD2">
          <node concept="3clFbF" id="4hPXq9JmesE" role="3cqZAp">
            <node concept="2OqwBi" id="4hPXq9JmesF" role="3clFbG">
              <node concept="2OqwBi" id="4hPXq9JmesG" role="2Oq$k0">
                <node concept="3bvxqY" id="4hPXq9JmesN" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4hPXq9JmesI" role="2OqNvi">
                  <node concept="1xMEDy" id="4hPXq9JmesJ" role="1xVPHs">
                    <node concept="chp4Y" id="4hPXq9JmesK" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:1pPth$m5Bbz" resolve="MacroDeclaration" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="4hPXq9JmesL" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="4hPXq9JmesM" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1s_PAr" id="3yBNtx8$qrr" role="3ft5RZ">
        <node concept="2kknPI" id="3yBNtx8$qrs" role="1s_PAo">
          <ref role="2kkw0f" node="3yBNtx8$qnP" resolve="MacroParameterReference_SmartReference" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3p309x" id="4hPXq9Jmetj">
    <property role="TrG5h" value="Statement_Contribution" />
    <node concept="2kknPJ" id="4hPXq9Jmetk" role="1IG6uw">
      <ref role="2ZyFGn" to="tpee:fzclF8l" resolve="Statement" />
    </node>
    <node concept="1s_PAr" id="4hPXq9Jmeuh" role="3ft7WO">
      <node concept="2kknPI" id="4hPXq9Jmeui" role="1s_PAo">
        <ref role="2kkw0f" node="4hPXq9Jmetl" resolve="Statement_wrap_AbstractConstraint_EmitConstraintStatement" />
      </node>
    </node>
    <node concept="1s_PAr" id="4hPXq9JmezV" role="3ft7WO">
      <node concept="2kknPI" id="4hPXq9JmezW" role="1s_PAo">
        <ref role="2kkw0f" node="4hPXq9Jmew8" resolve="Statement_subst_LogicVarDeclarationStatement" />
      </node>
    </node>
  </node>
  <node concept="Q6S24" id="4hPXq9Jmetl">
    <property role="TrG5h" value="Statement_wrap_AbstractConstraint_EmitConstraintStatement" />
    <ref role="aqKnT" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="3N5dw7" id="4hPXq9Jmetn" role="3ft7WO">
      <ref role="3EoQqy" to="wq2x:6p0DfM0a6KG" resolve="EmitConstraintStatement" />
      <node concept="2kknPJ" id="4hPXq9Jmeto" role="2klrvf">
        <ref role="2ZyFGn" to="wq2x:6p0DfM0ajMA" resolve="AbstractConstraint" />
      </node>
      <node concept="3N5aqt" id="4hPXq9Jmetp" role="3Na0zg">
        <node concept="3clFbS" id="4hPXq9Jmetq" role="2VODD2">
          <node concept="3cpWs8" id="4hPXq9Jmetr" role="3cqZAp">
            <node concept="3cpWsn" id="4hPXq9Jmets" role="3cpWs9">
              <property role="TrG5h" value="ecs" />
              <node concept="3Tqbb2" id="4hPXq9Jmett" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:6p0DfM0a6KG" resolve="EmitConstraintStatement" />
              </node>
              <node concept="2ShNRf" id="4hPXq9Jmetu" role="33vP2m">
                <node concept="3zrR0B" id="4hPXq9Jmetv" role="2ShVmc">
                  <node concept="3Tqbb2" id="4hPXq9Jmetw" role="3zrR0E">
                    <ref role="ehGHo" to="wq2x:6p0DfM0a6KG" resolve="EmitConstraintStatement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4hPXq9Jmetx" role="3cqZAp">
            <node concept="2OqwBi" id="4hPXq9Jmety" role="3clFbG">
              <node concept="2OqwBi" id="4hPXq9Jmetz" role="2Oq$k0">
                <node concept="37vLTw" id="4hPXq9Jmet$" role="2Oq$k0">
                  <ref role="3cqZAo" node="4hPXq9Jmets" resolve="ecs" />
                </node>
                <node concept="3TrEf2" id="4hPXq9Jmet_" role="2OqNvi">
                  <ref role="3Tt5mk" to="wq2x:6p0DfM0ajKO" resolve="constraint" />
                </node>
              </node>
              <node concept="2oxUTD" id="4hPXq9JmetA" role="2OqNvi">
                <node concept="3N4pyC" id="4hPXq9JmetE" role="2oxUTC" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4hPXq9JmetC" role="3cqZAp">
            <node concept="37vLTw" id="4hPXq9JmetD" role="3clFbG">
              <ref role="3cqZAo" node="4hPXq9Jmets" resolve="ecs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="upBMk" id="4hPXq9Jmeu5" role="upBLP">
        <node concept="uqdF1" id="4hPXq9Jmeu6" role="upBLF">
          <node concept="3clFbS" id="4hPXq9Jmeu7" role="2VODD2">
            <node concept="3clFbF" id="4hPXq9Jmeue" role="3cqZAp">
              <node concept="2OqwBi" id="4hPXq9Jmeu9" role="3clFbG">
                <node concept="uqdCJ" id="4hPXq9Jmeu8" role="2Oq$k0" />
                <node concept="1OKiuA" id="4hPXq9Jmeua" role="2OqNvi">
                  <node concept="1Q80Hx" id="4hPXq9Jmeub" role="lBI5i" />
                  <node concept="2B6iha" id="4hPXq9Jmeuc" role="lGT1i">
                    <property role="1lyBwo" value="mostRelevant" />
                  </node>
                  <node concept="3cmrfG" id="4hPXq9Jmeud" role="3dN3m$">
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
  <node concept="Q6S24" id="4hPXq9Jmew8">
    <property role="TrG5h" value="Statement_subst_LogicVarDeclarationStatement" />
    <ref role="aqKnT" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="3ft6gV" id="4hPXq9Jmewa" role="3ft7WO">
      <node concept="3ft6gW" id="4hPXq9Jmewb" role="3ft5RY">
        <node concept="3clFbS" id="4hPXq9Jmewc" role="2VODD2">
          <node concept="3clFbF" id="4hPXq9Jmewd" role="3cqZAp">
            <node concept="2OqwBi" id="4hPXq9Jmewe" role="3clFbG">
              <node concept="2OqwBi" id="4hPXq9Jmewf" role="2Oq$k0">
                <node concept="3bvxqY" id="4hPXq9Jmewm" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4hPXq9Jmewh" role="2OqNvi">
                  <node concept="3gmYPX" id="2tI9bOlhlwu" role="1xVPHs">
                    <node concept="3gn64h" id="2tI9bOlhlwv" role="3gmYPZ">
                      <ref role="3gnhBz" to="wq2x:6p0DfM0a3gA" resolve="Head" />
                    </node>
                    <node concept="3gn64h" id="2tI9bOlhlZF" role="3gmYPZ">
                      <ref role="3gnhBz" to="wq2x:7IysFe_ZPX_" resolve="MacroBody" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="4hPXq9Jmewk" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="4hPXq9Jmewl" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3eGOop" id="4hPXq9JmewM" role="3ft5RZ">
        <ref role="3EoQqy" to="wq2x:2E5lcNn5Ub2" resolve="LocalDeclarationStatement" />
        <node concept="16NfWO" id="4hPXq9JmewN" role="upBLP">
          <node concept="uGdhv" id="4hPXq9JmewO" role="16NeZM">
            <node concept="3clFbS" id="4hPXq9JmewP" role="2VODD2">
              <node concept="3clFbF" id="4hPXq9JmewQ" role="3cqZAp">
                <node concept="2OqwBi" id="4hPXq9JmewR" role="3clFbG">
                  <node concept="35c_gC" id="4hPXq9JmewS" role="2Oq$k0">
                    <ref role="35c_gD" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
                  </node>
                  <node concept="3n3YKJ" id="4hPXq9JmewT" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ucgPf" id="4hPXq9Jmexk" role="3aKz83">
          <node concept="3clFbS" id="4hPXq9Jmexl" role="2VODD2">
            <node concept="3cpWs8" id="7km57Pk7Lj4" role="3cqZAp">
              <node concept="3cpWsn" id="7km57Pk7Lj5" role="3cpWs9">
                <property role="TrG5h" value="locds" />
                <node concept="3Tqbb2" id="7km57Pk7Lj2" role="1tU5fm">
                  <ref role="ehGHo" to="wq2x:2E5lcNn5Ub2" resolve="LocalDeclarationStatement" />
                </node>
                <node concept="2OqwBi" id="7km57Pk7Lj6" role="33vP2m">
                  <node concept="1rpKSd" id="7km57Pk7Lj7" role="2Oq$k0" />
                  <node concept="15TzpJ" id="7km57Pk7Lj8" role="2OqNvi">
                    <ref role="I8UWU" to="wq2x:2E5lcNn5Ub2" resolve="LocalDeclarationStatement" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7km57Pk7Khu" role="3cqZAp">
              <node concept="37vLTw" id="7km57Pk7Lj9" role="3clFbG">
                <ref role="3cqZAo" node="7km57Pk7Lj5" resolve="locds" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ft6gV" id="4hPXq9JmexW" role="3ft7WO">
      <node concept="3ft6gW" id="4hPXq9JmexX" role="3ft5RY">
        <node concept="3clFbS" id="4hPXq9JmexY" role="2VODD2">
          <node concept="3cpWs8" id="4hPXq9JmexZ" role="3cqZAp">
            <node concept="3cpWsn" id="4hPXq9Jmey0" role="3cpWs9">
              <property role="TrG5h" value="smd" />
              <node concept="3Tqbb2" id="4hPXq9Jmey1" role="1tU5fm">
                <ref role="ehGHo" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
              </node>
              <node concept="2OqwBi" id="4hPXq9Jmey2" role="33vP2m">
                <node concept="3bvxqY" id="4hPXq9Jmeyl" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4hPXq9Jmey4" role="2OqNvi">
                  <node concept="1xMEDy" id="4hPXq9Jmey5" role="1xVPHs">
                    <node concept="chp4Y" id="4hPXq9Jmey6" role="ri$Ld">
                      <ref role="cht4Q" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4hPXq9Jmey7" role="3cqZAp">
            <node concept="22lmx$" id="4hPXq9Jmey8" role="3clFbG">
              <node concept="2OqwBi" id="4hPXq9Jmey9" role="3uHU7B">
                <node concept="2OqwBi" id="4hPXq9Jmeya" role="2Oq$k0">
                  <node concept="3bvxqY" id="4hPXq9Jmeym" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="4hPXq9Jmeyc" role="2OqNvi">
                    <node concept="1xMEDy" id="4hPXq9Jmeyd" role="1xVPHs">
                      <node concept="chp4Y" id="4hPXq9Jmeye" role="ri$Ld">
                        <ref role="cht4Q" to="wq2x:6p0DfM0a3TO" resolve="Body" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="4hPXq9Jmeyf" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3x8VRR" id="4hPXq9Jmeyg" role="2OqNvi" />
              </node>
              <node concept="3y3z36" id="4hPXq9Jmeyh" role="3uHU7w">
                <node concept="10Nm6u" id="4hPXq9Jmeyi" role="3uHU7w" />
                <node concept="2YIFZM" id="4hPXq9Jmeyj" role="3uHU7B">
                  <ref role="37wK5l" to="hy7p:746Sd4ujSOx" resolve="templateMethodKind" />
                  <ref role="1Pybhc" to="hy7p:746Sd4ujSKb" resolve="RuleTemplateUtil" />
                  <node concept="37vLTw" id="4hPXq9Jmeyk" role="37wK5m">
                    <ref role="3cqZAo" node="4hPXq9Jmey0" resolve="smd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eGOop" id="4hPXq9JmeyM" role="3ft5RZ">
        <ref role="3EoQqy" to="wq2x:2E5lcNn5Ub2" resolve="LocalDeclarationStatement" />
        <node concept="16NfWO" id="4hPXq9JmeyN" role="upBLP">
          <node concept="uGdhv" id="4hPXq9JmeyO" role="16NeZM">
            <node concept="3clFbS" id="4hPXq9JmeyP" role="2VODD2">
              <node concept="3clFbF" id="4hPXq9JmeyQ" role="3cqZAp">
                <node concept="2OqwBi" id="4hPXq9JmeyR" role="3clFbG">
                  <node concept="35c_gC" id="4hPXq9JmeyS" role="2Oq$k0">
                    <ref role="35c_gD" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
                  </node>
                  <node concept="3n3YKJ" id="4hPXq9JmeyT" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ucgPf" id="4hPXq9Jmezk" role="3aKz83">
          <node concept="3clFbS" id="4hPXq9Jmezl" role="2VODD2">
            <node concept="3cpWs8" id="4hPXq9Jmezm" role="3cqZAp">
              <node concept="3cpWsn" id="4hPXq9Jmezn" role="3cpWs9">
                <property role="TrG5h" value="lds" />
                <node concept="3Tqbb2" id="4hPXq9Jmezo" role="1tU5fm">
                  <ref role="ehGHo" to="wq2x:2E5lcNn5Ub2" resolve="LocalDeclarationStatement" />
                </node>
                <node concept="2OqwBi" id="4hPXq9Jmezp" role="33vP2m">
                  <node concept="1rpKSd" id="4hPXq9Jmezu" role="2Oq$k0" />
                  <node concept="15TzpJ" id="4hPXq9Jmezr" role="2OqNvi">
                    <ref role="I8UWU" to="wq2x:2E5lcNn5Ub2" resolve="LocalDeclarationStatement" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4hPXq9Jmezs" role="3cqZAp">
              <node concept="37vLTw" id="4hPXq9Jmezt" role="3clFbG">
                <ref role="3cqZAo" node="4hPXq9Jmezn" resolve="lds" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="4hPXq9JmeBh">
    <property role="3GE5qa" value="macro" />
    <ref role="aqKnT" to="wq2x:7IysFeA99oR" resolve="MacroLogicalExpression" />
  </node>
  <node concept="3p36aQ" id="4hPXq9JmeBi">
    <property role="3GE5qa" value="macro" />
    <ref role="aqKnT" to="wq2x:7IysFeA1uPa" resolve="MacroParameterReference" />
  </node>
  <node concept="3p36aQ" id="4hPXq9JmeBj">
    <ref role="aqKnT" to="wq2x:2E5lcNn5Ub2" resolve="LocalDeclarationStatement" />
  </node>
  <node concept="3p36aQ" id="4hPXq9JmeBm">
    <ref role="aqKnT" to="wq2x:3TnYLtqfh$J" resolve="ContextParameterReference" />
    <node concept="3XHNnq" id="6hqFpWmNvFW" role="3ft7WO">
      <ref role="3XGfJA" to="wq2x:3TnYLtqfh$T" resolve="parameter" />
    </node>
  </node>
  <node concept="24kQdi" id="2vGNdoJLd0e">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="wq2x:2vGNdoJLd0b" resolve="ConstraintReference" />
    <node concept="3EZMnI" id="2vGNdoJLd0g" role="2wV5jI">
      <node concept="l2Vlx" id="2vGNdoJLd0j" role="2iSdaV" />
      <node concept="1iCGBv" id="2vGNdoJMIn4" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:2vGNdoJLd0c" resolve="constraint" />
        <node concept="1sVBvm" id="2vGNdoJMIn5" role="1sWHZn">
          <node concept="3F0A7n" id="2vGNdoJMIna" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4MEOIDFfpTe">
    <property role="3GE5qa" value="constraint.typespecific" />
    <ref role="1XX52x" to="wq2x:4MEOIDFfpSk" resolve="CallMacroPseudoConstraint" />
    <node concept="3EZMnI" id="4MEOIDFfpTg" role="2wV5jI">
      <node concept="3F1sOY" id="4MEOIDFfpTn" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:4MEOIDFfpT9" resolve="logical" />
      </node>
      <node concept="3F0ifn" id="4MEOIDFfpTt" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
      </node>
      <node concept="PMmxH" id="6DOfTm$5ikq" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="7ksQUDZpd8b" resolve="ConstraintKeyword" />
      </node>
      <node concept="1iCGBv" id="5hSMZ_lpX5n" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:5hSMZ_lpUoi" resolve="declaration" />
        <ref role="1k5W1q" node="7ksQUDZpd8b" resolve="ConstraintKeyword" />
        <node concept="1sVBvm" id="5hSMZ_lpX5p" role="1sWHZn">
          <node concept="3F0A7n" id="5hSMZ_lpX5$" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
        <node concept="Vb9p2" id="6DOfTm$8sUZ" role="3F10Kt">
          <property role="Vbekb" value="BOLD_ITALIC" />
        </node>
      </node>
      <node concept="3F0ifn" id="5hSMZ_lrdys" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
        <node concept="11LMrY" id="5hSMZ_lrdyu" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3Xmtl4" id="6DOfTm$83po" role="3F10Kt">
          <node concept="1wgc9g" id="6DOfTm$8sJu" role="3XvnJa">
            <ref role="1wgcnl" node="7ksQUDZpd8b" resolve="ConstraintKeyword" />
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="5hSMZ_lrdyv" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="wq2x:5hSMZ_lrcKO" resolve="argument" />
        <node concept="3nxI2P" id="5hSMZ_lrdyw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="4bWqD4Chtoh" role="2ruayu">
          <property role="3F0ifm" value="" />
        </node>
      </node>
      <node concept="3F0ifn" id="5hSMZ_lrdyy" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
        <node concept="11L4FC" id="5hSMZ_lrdyz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3Xmtl4" id="6DOfTm$83p_" role="3F10Kt">
          <node concept="1wgc9g" id="6DOfTm$8sJx" role="3XvnJa">
            <ref role="1wgcnl" node="7ksQUDZpd8b" resolve="ConstraintKeyword" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="4MEOIDFfpTj" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4MEOIDFttNn">
    <property role="3GE5qa" value="term" />
    <ref role="1XX52x" to="wq2x:4MEOIDFttoe" resolve="TermDeclaration" />
    <node concept="3EZMnI" id="4MEOIDFttNp" role="2wV5jI">
      <node concept="3F0A7n" id="4MEOIDFttNA" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="4bWqD4C2vDI" resolve="Term" />
        <node concept="A1WHr" id="7c96q9tzV90" role="3vIgyS">
          <ref role="2ZyFGn" to="wq2x:4MEOIDFttoe" resolve="TermDeclaration" />
        </node>
      </node>
      <node concept="3EZMnI" id="7c96q9t$nwo" role="3EZMnx">
        <node concept="VPM3Z" id="7c96q9t$nwq" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="7c96q9t$nEV" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="1iCGBv" id="7c96q9t$nF1" role="3EZMnx">
          <ref role="1NtTu8" to="wq2x:7c96q9tz_UX" resolve="prototype" />
          <node concept="1sVBvm" id="7c96q9t$nF3" role="1sWHZn">
            <node concept="3F0A7n" id="7c96q9t$nFb" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="7c96q9t$nwt" role="2iSdaV" />
        <node concept="pkWqt" id="7c96q9t$nFe" role="pqm2j">
          <node concept="3clFbS" id="7c96q9t$nFf" role="2VODD2">
            <node concept="3clFbF" id="7c96q9t$nMs" role="3cqZAp">
              <node concept="2OqwBi" id="7c96q9t$oYZ" role="3clFbG">
                <node concept="2OqwBi" id="7c96q9t$o0b" role="2Oq$k0">
                  <node concept="pncrf" id="7c96q9t$nMr" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7c96q9t$owX" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:7c96q9tz_UX" resolve="prototype" />
                  </node>
                </node>
                <node concept="3x8VRR" id="7c96q9t$p$B" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="4MEOIDFttOZ" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:4MEOIDFttNk" resolve="template" />
      </node>
      <node concept="l2Vlx" id="4MEOIDFttNs" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="20Ay2VefOqG">
    <property role="3GE5qa" value="rule.clause" />
    <ref role="1XX52x" to="wq2x:20Ay2VefOqC" resolve="LogicalClauseList" />
    <node concept="3EZMnI" id="20Ay2VefOqI" role="2wV5jI">
      <node concept="3F2HdR" id="20Ay2VefOqP" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="wq2x:20Ay2VefOqD" resolve="clauses" />
        <node concept="l2Vlx" id="20Ay2VefOqR" role="2czzBx" />
        <node concept="tppnM" id="20Ay2VefOqU" role="sWeuL">
          <node concept="VPxyj" id="7lt0LtPagxW" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VPM3Z" id="7lt0LtPagy4" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="20Ay2VefOqW" role="3F10Kt">
            <node concept="3nzxsE" id="7lt0LtPbqbN" role="3n$kyP">
              <node concept="3clFbS" id="7lt0LtPbqbO" role="2VODD2">
                <node concept="3clFbF" id="7lt0LtPbqqY" role="3cqZAp">
                  <node concept="3eOSWO" id="7lt0LtPby8x" role="3clFbG">
                    <node concept="3cmrfG" id="7lt0LtPby8B" role="3uHU7w">
                      <property role="3cmrfH" value="3" />
                    </node>
                    <node concept="2OqwBi" id="7lt0LtPbsPa" role="3uHU7B">
                      <node concept="2OqwBi" id="7lt0LtPbqBb" role="2Oq$k0">
                        <node concept="pncrf" id="7lt0LtPbqqX" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="7lt0LtPbr1F" role="2OqNvi">
                          <ref role="3TtcxE" to="wq2x:20Ay2VefOqD" resolve="clauses" />
                        </node>
                      </node>
                      <node concept="34oBXx" id="7lt0LtPbvND" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="4nIWweBNHhV" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="&lt;no clauses&gt;" />
        </node>
      </node>
      <node concept="l2Vlx" id="20Ay2VefOqL" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="20Ay2VefOBt">
    <property role="3GE5qa" value="rule.clause" />
    <ref role="1XX52x" to="wq2x:20Ay2VefOBs" resolve="ConstraintLogicalClause" />
    <node concept="3EZMnI" id="20Ay2VefOBv" role="2wV5jI">
      <node concept="3F1sOY" id="20Ay2VefOBC" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:20Ay2VefOBA" resolve="constraint" />
      </node>
      <node concept="l2Vlx" id="20Ay2VefOBy" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="20Ay2Vei7Gb">
    <property role="3GE5qa" value="rule.clause" />
    <ref role="1XX52x" to="wq2x:20Ay2Vei7FH" resolve="TemplateLogicalClause" />
    <node concept="3EZMnI" id="20Ay2Vei7Gd" role="2wV5jI">
      <node concept="3F0ifn" id="20Ay2Vei7Gk" role="3EZMnx">
        <property role="3F0ifm" value="%%" />
        <ref role="1k5W1q" node="7LZcKzBE07j" resolve="EmitConstraint" />
        <node concept="ljvvj" id="4nIWweBP0sl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="20Ay2VeizvC" role="3EZMnx">
        <node concept="VPM3Z" id="20Ay2VeizvE" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="1Bsynf" id="20Ay2Veizxz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="20Ay2VeizvH" role="2iSdaV" />
        <node concept="3F1sOY" id="20Ay2Vei7Gy" role="3EZMnx">
          <ref role="1NtTu8" to="wq2x:20Ay2Vei7FI" resolve="code" />
          <node concept="lj46D" id="20Ay2VelQOH" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pVoyu" id="20Ay2VelQOI" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="20Ay2Vei7Gq" role="3EZMnx">
        <property role="3F0ifm" value="%%" />
        <ref role="1k5W1q" node="7LZcKzBE07j" resolve="EmitConstraint" />
        <node concept="pVoyu" id="4nIWweBP0u2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="20Ay2Vei7Gg" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="1CcQBrPqjQg">
    <property role="3GE5qa" value="term.feature" />
    <property role="TrG5h" value="TermFeature_final_name" />
    <ref role="1XX52x" to="wq2x:1pPth$m5oa5" resolve="TermFeature" />
    <node concept="3EZMnI" id="1CcQBrPqjR2" role="2wV5jI">
      <node concept="3F0ifn" id="1CcQBrPqjR9" role="3EZMnx">
        <property role="3F0ifm" value="final" />
        <ref role="1ERwB7" node="1CcQBrPqIC4" resolve="TermFeature_delete_final" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
        <node concept="pkWqt" id="1CcQBrPqjRc" role="pqm2j">
          <node concept="3clFbS" id="1CcQBrPqjRd" role="2VODD2">
            <node concept="3clFbF" id="1CcQBrPqjYq" role="3cqZAp">
              <node concept="2OqwBi" id="1CcQBrPqkc9" role="3clFbG">
                <node concept="pncrf" id="1CcQBrPqjYp" role="2Oq$k0" />
                <node concept="3TrcHB" id="1CcQBrPqkxi" role="2OqNvi">
                  <ref role="3TsBF5" to="wq2x:1CcQBrPqjP1" resolve="final" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="1CcQBrPqjR5" role="2iSdaV" />
      <node concept="3F0A7n" id="1CcQBrPqlvG" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="4bWqD4C4CM3" resolve="TermFeature" />
        <node concept="A1WHr" id="1CcQBrPqp6y" role="3vIgyS">
          <ref role="2ZyFGn" to="wq2x:1pPth$m5oa5" resolve="TermFeature" />
        </node>
      </node>
    </node>
  </node>
  <node concept="IW6AY" id="1CcQBrPqlWO">
    <property role="3GE5qa" value="term.feature" />
    <ref role="aqKnT" to="wq2x:1pPth$m5oa5" resolve="TermFeature" />
    <node concept="1Qtc8_" id="1CcQBrPqlWP" role="IW6Ez">
      <node concept="3cWJ9i" id="1CcQBrPqlWT" role="1Qtc8$">
        <node concept="CtIbL" id="1CcQBrPqlWV" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
      </node>
      <node concept="IWgqT" id="1CcQBrPqlWZ" role="1Qtc8A">
        <node concept="1hCUdq" id="1CcQBrPqlX0" role="1hCUd6">
          <node concept="3clFbS" id="1CcQBrPqlX1" role="2VODD2">
            <node concept="3clFbF" id="1CcQBrPqm5F" role="3cqZAp">
              <node concept="Xl_RD" id="1CcQBrPqm5E" role="3clFbG">
                <property role="Xl_RC" value="final" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="1CcQBrPqlX2" role="IWgqQ">
          <node concept="3clFbS" id="1CcQBrPqlX3" role="2VODD2">
            <node concept="3clFbF" id="1CcQBrPqnP6" role="3cqZAp">
              <node concept="2OqwBi" id="1CcQBrPqoCB" role="3clFbG">
                <node concept="2OqwBi" id="1CcQBrPqnXk" role="2Oq$k0">
                  <node concept="7Obwk" id="1CcQBrPqnP5" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1CcQBrPqo7Q" role="2OqNvi">
                    <ref role="3TsBF5" to="wq2x:1CcQBrPqjP1" resolve="final" />
                  </node>
                </node>
                <node concept="tyxLq" id="1CcQBrPqoQT" role="2OqNvi">
                  <node concept="3clFbT" id="1CcQBrPqoUG" role="tz02z">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="1CcQBrPqmmK" role="2jiSrf">
          <node concept="3clFbS" id="1CcQBrPqmmL" role="2VODD2">
            <node concept="3clFbF" id="1CcQBrPqmu4" role="3cqZAp">
              <node concept="3fqX7Q" id="1CcQBrPqnFp" role="3clFbG">
                <node concept="2OqwBi" id="1CcQBrPqnFr" role="3fr31v">
                  <node concept="7Obwk" id="1CcQBrPqnFs" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1CcQBrPqnFt" role="2OqNvi">
                    <ref role="3TsBF5" to="wq2x:1CcQBrPqjP1" resolve="final" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="1CcQBrPqIC4">
    <property role="3GE5qa" value="term.feature" />
    <property role="TrG5h" value="TermFeature_delete_final" />
    <ref role="1h_SK9" to="wq2x:1pPth$m5oa5" resolve="TermFeature" />
    <node concept="1hA7zw" id="1CcQBrPqIC5" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="1CcQBrPqIC6" role="1hA7z_">
        <node concept="3clFbS" id="1CcQBrPqIC7" role="2VODD2">
          <node concept="3clFbF" id="1CcQBrPqJok" role="3cqZAp">
            <node concept="2OqwBi" id="1CcQBrPqK8t" role="3clFbG">
              <node concept="2OqwBi" id="1CcQBrPqJwy" role="2Oq$k0">
                <node concept="0IXxy" id="1CcQBrPqJoj" role="2Oq$k0" />
                <node concept="3TrcHB" id="1CcQBrPqJF6" role="2OqNvi">
                  <ref role="3TsBF5" to="wq2x:1CcQBrPqjP1" resolve="final" />
                </node>
              </node>
              <node concept="tyxLq" id="1CcQBrPqKmJ" role="2OqNvi">
                <node concept="3clFbT" id="1CcQBrPqKpf" role="tz02z">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="1CcQBrPqICj" role="jK8aL">
        <node concept="3clFbS" id="1CcQBrPqICk" role="2VODD2">
          <node concept="3clFbF" id="1CcQBrPqIJx" role="3cqZAp">
            <node concept="2OqwBi" id="1CcQBrPqIXg" role="3clFbG">
              <node concept="0IXxy" id="1CcQBrPqIJw" role="2Oq$k0" />
              <node concept="3TrcHB" id="1CcQBrPqJeO" role="2OqNvi">
                <ref role="3TsBF5" to="wq2x:1CcQBrPqjP1" resolve="final" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1CcQBrQdzxX">
    <property role="3GE5qa" value="constraint" />
    <ref role="1XX52x" to="wq2x:1CcQBrQdzwG" resolve="EqualsConstraint" />
    <node concept="3EZMnI" id="1CcQBrQdzxZ" role="2wV5jI">
      <node concept="3F1sOY" id="1CcQBrQdzy9" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:1CcQBrQdzxt" resolve="left" />
      </node>
      <node concept="PMmxH" id="6T06Mm3LX2O" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F1sOY" id="1CcQBrQdzyx" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:1CcQBrQdzxv" resolve="right" />
      </node>
      <node concept="l2Vlx" id="1CcQBrQdzy2" role="2iSdaV" />
    </node>
  </node>
  <node concept="3p36aQ" id="4nIWweBNZTp">
    <property role="3GE5qa" value="rule.clause" />
    <ref role="aqKnT" to="wq2x:20Ay2VefOBs" resolve="ConstraintLogicalClause" />
    <node concept="3N5dw7" id="4nIWweBNZTx" role="3ft7WO">
      <node concept="3N5aqt" id="4nIWweBNZTy" role="3Na0zg">
        <node concept="3clFbS" id="4nIWweBNZTz" role="2VODD2">
          <node concept="3cpWs8" id="4nIWweBO68o" role="3cqZAp">
            <node concept="3cpWsn" id="4nIWweBO68p" role="3cpWs9">
              <property role="TrG5h" value="clc" />
              <node concept="3Tqbb2" id="4nIWweBO68m" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:20Ay2VefOBs" resolve="ConstraintLogicalClause" />
              </node>
              <node concept="2ShNRf" id="4nIWweBO68q" role="33vP2m">
                <node concept="3zrR0B" id="4nIWweBO68r" role="2ShVmc">
                  <node concept="3Tqbb2" id="4nIWweBO68s" role="3zrR0E">
                    <ref role="ehGHo" to="wq2x:20Ay2VefOBs" resolve="ConstraintLogicalClause" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4nIWweBO5FV" role="3cqZAp">
            <node concept="37vLTI" id="4nIWweBO74r" role="3clFbG">
              <node concept="3N4pyC" id="4nIWweBO7dV" role="37vLTx" />
              <node concept="2OqwBi" id="4nIWweBO6oc" role="37vLTJ">
                <node concept="37vLTw" id="4nIWweBO68t" role="2Oq$k0">
                  <ref role="3cqZAo" node="4nIWweBO68p" resolve="clc" />
                </node>
                <node concept="3TrEf2" id="4nIWweBO6$V" role="2OqNvi">
                  <ref role="3Tt5mk" to="wq2x:20Ay2VefOBA" resolve="constraint" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4nIWweBO7t$" role="3cqZAp">
            <node concept="37vLTw" id="4nIWweBO7ty" role="3clFbG">
              <ref role="3cqZAo" node="4nIWweBO68p" resolve="clc" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2kknPJ" id="4nIWweBNZXq" role="2klrvf">
        <ref role="2ZyFGn" to="wq2x:6p0DfM0ajMA" resolve="AbstractConstraint" />
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="4nIWweBOqNz">
    <property role="3GE5qa" value="rule.clause" />
    <ref role="aqKnT" to="wq2x:20Ay2Vei7FH" resolve="TemplateLogicalClause" />
    <node concept="3eGOop" id="4nIWweBOr4C" role="3ft7WO">
      <node concept="ucgPf" id="4nIWweBOr4D" role="3aKz83">
        <node concept="3clFbS" id="4nIWweBOr4E" role="2VODD2">
          <node concept="3cpWs8" id="4nIWweBPhUX" role="3cqZAp">
            <node concept="3cpWsn" id="4nIWweBPhUY" role="3cpWs9">
              <property role="TrG5h" value="tlc" />
              <node concept="3Tqbb2" id="4nIWweBPhUV" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:20Ay2Vei7FH" resolve="TemplateLogicalClause" />
              </node>
              <node concept="2ShNRf" id="4nIWweBPhUZ" role="33vP2m">
                <node concept="3zrR0B" id="4nIWweBPhV0" role="2ShVmc">
                  <node concept="3Tqbb2" id="4nIWweBPhV1" role="3zrR0E">
                    <ref role="ehGHo" to="wq2x:20Ay2Vei7FH" resolve="TemplateLogicalClause" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4nIWweBOrYW" role="3cqZAp">
            <node concept="2OqwBi" id="4nIWweBPiW9" role="3clFbG">
              <node concept="2OqwBi" id="4nIWweBPiiH" role="2Oq$k0">
                <node concept="37vLTw" id="4nIWweBPhV2" role="2Oq$k0">
                  <ref role="3cqZAo" node="4nIWweBPhUY" resolve="tlc" />
                </node>
                <node concept="3TrEf2" id="4nIWweBPivv" role="2OqNvi">
                  <ref role="3Tt5mk" to="wq2x:20Ay2Vei7FI" resolve="code" />
                </node>
              </node>
              <node concept="2DeJnY" id="4nIWweBPjCl" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="4nIWweBPjWy" role="3cqZAp">
            <node concept="37vLTw" id="4nIWweBPjWw" role="3clFbG">
              <ref role="3cqZAo" node="4nIWweBPhUY" resolve="tlc" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NL0t" id="4nIWweBP0mv" role="upBLP">
        <node concept="2h3Zct" id="4nIWweBP0q$" role="16NL0q">
          <property role="2h4Kg1" value="template clause" />
        </node>
      </node>
      <node concept="16NfWO" id="4nIWweBOII2" role="upBLP">
        <node concept="2h3Zct" id="4nIWweBOIU9" role="16NeZM">
          <property role="2h4Kg1" value="%%" />
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="4nIWweBWmzT">
    <property role="3GE5qa" value="rule" />
    <property role="TrG5h" value="AbstractRule_contents" />
    <ref role="1XX52x" to="wq2x:4EfgX2ET3GH" resolve="AbstractRule" />
    <node concept="3EZMnI" id="4nIWweBWnbh" role="2wV5jI">
      <node concept="3F0ifn" id="7lt0LtPbW0Z" role="3EZMnx">
        <property role="3F0ifm" value="match" />
        <node concept="pkWqt" id="7lt0LtPogjW" role="pqm2j">
          <node concept="3clFbS" id="7lt0LtPogjX" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPogra" role="3cqZAp">
              <node concept="2OqwBi" id="7lt0LtPojtg" role="3clFbG">
                <node concept="2OqwBi" id="7lt0LtPogEv" role="2Oq$k0">
                  <node concept="pncrf" id="7lt0LtPogr9" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="7lt0LtPoh3$" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:1ffsG7bCfL5" resolve="head" />
                  </node>
                </node>
                <node concept="3GX2aA" id="7lt0LtPonfd" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="A1WHr" id="7lt0LtPvdPO" role="3vIgyS">
          <ref role="2ZyFGn" to="wq2x:4EfgX2ET3GH" resolve="AbstractRule" />
        </node>
      </node>
      <node concept="3F2HdR" id="7lt0LtPpFGY" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="wq2x:7lt0LtPpFwP" resolve="parameter" />
        <node concept="l2Vlx" id="7lt0LtPpFH0" role="2czzBx" />
        <node concept="pkWqt" id="7lt0LtPuwon" role="pqm2j">
          <node concept="3clFbS" id="7lt0LtPuwoo" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPuwv_" role="3cqZAp">
              <node concept="2OqwBi" id="7lt0LtPuzwY" role="3clFbG">
                <node concept="2OqwBi" id="7lt0LtPuwIU" role="2Oq$k0">
                  <node concept="pncrf" id="7lt0LtPuwv$" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="7lt0LtPuxlV" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:7lt0LtPpFwP" resolve="parameter" />
                  </node>
                </node>
                <node concept="3GX2aA" id="7lt0LtPuAXl" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="tppnM" id="7lt0LtPzGQv" role="sWeuL">
          <node concept="ljvvj" id="7lt0LtPzH0I" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="1Bsynf" id="7lt0LtP$5EF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="4nIWweBWnbs" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:1ffsG7bCfL5" resolve="head" />
        <node concept="l2Vlx" id="4nIWweBWnbt" role="2czzBx" />
        <node concept="3F0ifn" id="4nIWweBWnbC" role="2czzBI">
          <property role="3F0ifm" value="auto" />
          <ref role="1k5W1q" to="tpen:hinfsDb" resolve="EmptyCell" />
          <node concept="Vb9p2" id="4nIWweBWnbD" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
        </node>
      </node>
      <node concept="VPM3Z" id="4nIWweBWnbO" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="3F2HdR" id="4nIWweBWnbP" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="wq2x:1ffsG7bFM2v" resolve="guard" />
        <node concept="l2Vlx" id="4nIWweBWnbQ" role="2czzBx" />
        <node concept="tppnM" id="4nIWweBWnbR" role="sWeuL">
          <node concept="ljvvj" id="4nIWweBWnbS" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="ljvvj" id="4nIWweBWnc2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="4nIWweBWnc3" role="2czzBI">
          <ref role="1k5W1q" to="tpen:hinfsDb" resolve="EmptyCell" />
          <node concept="Vb9p2" id="4nIWweBWnc4" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
        </node>
        <node concept="pkWqt" id="4aJUH_hQTcx" role="pqm2j">
          <node concept="3clFbS" id="4aJUH_hQTcy" role="2VODD2">
            <node concept="3clFbF" id="4aJUH_hQTjJ" role="3cqZAp">
              <node concept="2OqwBi" id="4aJUH_hQWM_" role="3clFbG">
                <node concept="2OqwBi" id="4aJUH_hQTz2" role="2Oq$k0">
                  <node concept="pncrf" id="4aJUH_hQTjI" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="4aJUH_hQU7M" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:1ffsG7bFM2v" resolve="guard" />
                  </node>
                </node>
                <node concept="3GX2aA" id="4aJUH_hR0so" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4nIWweBWnc5" role="3EZMnx">
        <property role="3F0ifm" value="&lt;──&gt;" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
        <node concept="VPxyj" id="4aJUH_hNMGn" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPM3Z" id="4aJUH_hNMo5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="7lt0LtPmU6o" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="4nIWweBWnc6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="4nIWweBWncf" role="3EZMnx">
        <property role="2czwfO" value="else" />
        <ref role="1NtTu8" to="wq2x:1ffsG7bIxDv" resolve="body" />
        <node concept="l2Vlx" id="4nIWweBWncg" role="2czzBx" />
        <node concept="tppnM" id="4nIWweBWnch" role="sWeuL">
          <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
        </node>
        <node concept="3F0ifn" id="4nIWweBWnct" role="2czzBI">
          <property role="3F0ifm" value="empty" />
          <ref role="1k5W1q" to="tpen:hinfsDb" resolve="EmptyCell" />
          <node concept="Vb9p2" id="4nIWweBWncu" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="4nIWweBWncv" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="60zk4o7reO3">
    <ref role="1XX52x" to="wq2x:60zk4o7reud" resolve="LogicalContextExpression" />
    <node concept="3EZMnI" id="60zk4o7reO5" role="2wV5jI">
      <node concept="PMmxH" id="60zk4o7reOc" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="l2Vlx" id="60zk4o7reO8" role="2iSdaV" />
    </node>
  </node>
  <node concept="3p36aQ" id="60zk4o7rjGu">
    <ref role="aqKnT" to="wq2x:60zk4o7reud" resolve="LogicalContextExpression" />
    <node concept="3ft5Ry" id="60zk4o7rjGM" role="3ft7WO">
      <ref role="4PJHt" to="wq2x:60zk4o7reud" resolve="LogicalContextExpression" />
    </node>
    <node concept="3eGOop" id="60zk4o7rjGV" role="3ft7WO">
      <node concept="ucgPf" id="60zk4o7rjGX" role="3aKz83">
        <node concept="3clFbS" id="60zk4o7rjGZ" role="2VODD2">
          <node concept="3clFbF" id="60zk4o7rke2" role="3cqZAp">
            <node concept="2ShNRf" id="60zk4o7rke0" role="3clFbG">
              <node concept="3zrR0B" id="60zk4o7rkQR" role="2ShVmc">
                <node concept="3Tqbb2" id="60zk4o7rkQT" role="3zrR0E">
                  <ref role="ehGHo" to="wq2x:60zk4o7reud" resolve="LogicalContextExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NL3D" id="60zk4o7rjSy" role="upBLP">
        <node concept="16Na2f" id="60zk4o7rjSz" role="16NL3A">
          <node concept="3clFbS" id="60zk4o7rjS$" role="2VODD2">
            <node concept="3clFbF" id="60zk4o7rk3B" role="3cqZAp">
              <node concept="2OqwBi" id="60zk4o7rmgB" role="3clFbG">
                <node concept="2OqwBi" id="60zk4o7rlsL" role="2Oq$k0">
                  <node concept="3bvxqY" id="60zk4o7rk3A" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="60zk4o7rlE6" role="2OqNvi">
                    <node concept="3gmYPX" id="60zk4o7rRh8" role="1xVPHs">
                      <node concept="3gn64h" id="60zk4o7rRID" role="3gmYPZ">
                        <ref role="3gnhBz" to="wq2x:4EfgX2EvF4i" resolve="ExpressionConstraint" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="60zk4o7rn3v" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3x8VRR" id="60zk4o7rmDV" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="IW6AY" id="4aJUH_hQkmn">
    <property role="3GE5qa" value="rule" />
    <ref role="aqKnT" to="wq2x:4EfgX2ET3GH" resolve="AbstractRule" />
    <node concept="1Qtc8_" id="7lt0LtPuBvy" role="IW6Ez">
      <node concept="IWgqT" id="7lt0LtPuC9q" role="1Qtc8A">
        <node concept="1hCUdq" id="7lt0LtPuC9s" role="1hCUd6">
          <node concept="3clFbS" id="7lt0LtPuC9u" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPuCib" role="3cqZAp">
              <node concept="Xl_RD" id="7lt0LtPuCia" role="3clFbG">
                <property role="Xl_RC" value="&lt;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="7lt0LtPuC9w" role="IWgqQ">
          <node concept="3clFbS" id="7lt0LtPuC9y" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPuJaJ" role="3cqZAp">
              <node concept="2OqwBi" id="7lt0LtPuLx0" role="3clFbG">
                <node concept="2OqwBi" id="7lt0LtPuJkj" role="2Oq$k0">
                  <node concept="7Obwk" id="7lt0LtPuJaI" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="7lt0LtPuJJY" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:7lt0LtPpFwP" resolve="parameter" />
                  </node>
                </node>
                <node concept="WFELt" id="7lt0LtPuOMK" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="7lt0LtPuCzg" role="2jiSrf">
          <node concept="3clFbS" id="7lt0LtPuCzh" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPuCE$" role="3cqZAp">
              <node concept="2OqwBi" id="7lt0LtPuFBB" role="3clFbG">
                <node concept="2OqwBi" id="7lt0LtPuCTT" role="2Oq$k0">
                  <node concept="7Obwk" id="7lt0LtPuCEz" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="7lt0LtPuDs$" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:7lt0LtPpFwP" resolve="parameter" />
                  </node>
                </node>
                <node concept="1v1jN8" id="7lt0LtPuJ0n" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="7lt0LtPuC9i" role="1Qtc8$">
        <node concept="CtIbL" id="7lt0LtPuC9k" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
    </node>
    <node concept="1Qtc8_" id="4aJUH_hQkmo" role="IW6Ez">
      <node concept="3cWJ9i" id="4aJUH_hQkms" role="1Qtc8$">
        <node concept="CtIbL" id="4aJUH_hQkmu" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
      </node>
      <node concept="IWgqT" id="4aJUH_hQkmy" role="1Qtc8A">
        <node concept="1hCUdq" id="4aJUH_hQkmz" role="1hCUd6">
          <node concept="3clFbS" id="4aJUH_hQkm$" role="2VODD2">
            <node concept="3clFbF" id="4aJUH_hQkve" role="3cqZAp">
              <node concept="Xl_RD" id="4aJUH_hQkvd" role="3clFbG">
                <property role="Xl_RC" value="when" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="4aJUH_hQkm_" role="IWgqQ">
          <node concept="3clFbS" id="4aJUH_hQkmA" role="2VODD2">
            <node concept="3clFbF" id="4aJUH_hQrKa" role="3cqZAp">
              <node concept="2OqwBi" id="4aJUH_hQuBE" role="3clFbG">
                <node concept="2OqwBi" id="4aJUH_hQrTG" role="2Oq$k0">
                  <node concept="7Obwk" id="4aJUH_hQrK9" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="4aJUH_hQsjP" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:1ffsG7bFM2v" resolve="guard" />
                  </node>
                </node>
                <node concept="2DeJg1" id="4aJUH_hU9kG" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="4aJUH_hQkKj" role="2jiSrf">
          <node concept="3clFbS" id="4aJUH_hQkKk" role="2VODD2">
            <node concept="3clFbF" id="4aJUH_hQkRB" role="3cqZAp">
              <node concept="2OqwBi" id="4aJUH_hQnQe" role="3clFbG">
                <node concept="2OqwBi" id="4aJUH_hQl6U" role="2Oq$k0">
                  <node concept="7Obwk" id="4aJUH_hQkRA" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="4aJUH_hQlrg" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:1ffsG7bFM2v" resolve="guard" />
                  </node>
                </node>
                <node concept="1v1jN8" id="4aJUH_hQr_U" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="IW6AY" id="4aJUH_hSgoo">
    <property role="3GE5qa" value="rule.component" />
    <ref role="aqKnT" to="wq2x:6p0DfM0a3TO" resolve="Body" />
    <node concept="1Qtc8_" id="4aJUH_hSgop" role="IW6Ez">
      <node concept="IWgqT" id="4aJUH_hSgo_" role="1Qtc8A">
        <node concept="1hCUdq" id="4aJUH_hSgoB" role="1hCUd6">
          <node concept="3clFbS" id="4aJUH_hSgoD" role="2VODD2">
            <node concept="3clFbF" id="4aJUH_hSgxm" role="3cqZAp">
              <node concept="Xl_RD" id="4aJUH_hSgxl" role="3clFbG">
                <property role="Xl_RC" value="&lt;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="4aJUH_hSgoF" role="IWgqQ">
          <node concept="3clFbS" id="4aJUH_hSgoH" role="2VODD2">
            <node concept="3clFbF" id="4aJUH_hSmZW" role="3cqZAp">
              <node concept="2OqwBi" id="4aJUH_hSqLv" role="3clFbG">
                <node concept="2OqwBi" id="4aJUH_hSn8a" role="2Oq$k0">
                  <node concept="7Obwk" id="4aJUH_hSmZV" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="4aJUH_hSnsJ" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:PB1R3Y7EcX" resolve="parameter" />
                  </node>
                </node>
                <node concept="2DeJg1" id="4aJUH_hU6SR" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="4aJUH_hSgDW" role="2jiSrf">
          <node concept="3clFbS" id="4aJUH_hSgDX" role="2VODD2">
            <node concept="3clFbF" id="4aJUH_hSgLg" role="3cqZAp">
              <node concept="2OqwBi" id="4aJUH_hSjxw" role="3clFbG">
                <node concept="2OqwBi" id="4aJUH_hSgYZ" role="2Oq$k0">
                  <node concept="7Obwk" id="4aJUH_hSgLf" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="4aJUH_hShqA" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:PB1R3Y7EcX" resolve="parameter" />
                  </node>
                </node>
                <node concept="1v1jN8" id="4aJUH_hSmPV" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="4aJUH_hSgot" role="1Qtc8$">
        <node concept="CtIbL" id="4aJUH_hSgov" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5hSMZ_lNwqC">
    <property role="3GE5qa" value="term" />
    <ref role="1XX52x" to="wq2x:5hSMZ_lNwqz" resolve="TermTable" />
    <node concept="3EZMnI" id="5hSMZ_lNwqE" role="2wV5jI">
      <node concept="3EZMnI" id="5hSMZ_lNwqF" role="3EZMnx">
        <node concept="VPM3Z" id="5hSMZ_lNwqG" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="PMmxH" id="5hSMZ_lNwqH" role="3EZMnx">
          <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
          <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        </node>
        <node concept="3F0A7n" id="5hSMZ_lNwqI" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
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
          <ref role="1NtTu8" to="wq2x:5hSMZ_lNwq$" resolve="termDeclaration" />
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
  <node concept="IW6AY" id="7XmdqtdBbWm">
    <property role="3GE5qa" value="macro.decl" />
    <ref role="aqKnT" to="wq2x:7IysFe_ZPX_" resolve="MacroBody" />
    <node concept="1Qtc8_" id="7XmdqtdBbWt" role="IW6Ez">
      <node concept="IWgqT" id="7XmdqtdBcyH" role="1Qtc8A">
        <node concept="1hCUdq" id="7XmdqtdBcyJ" role="1hCUd6">
          <node concept="3clFbS" id="7XmdqtdBcyL" role="2VODD2">
            <node concept="3clFbF" id="7XmdqtdBcFu" role="3cqZAp">
              <node concept="Xl_RD" id="7XmdqtdBcFt" role="3clFbG">
                <property role="Xl_RC" value="&lt;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="7XmdqtdBcyN" role="IWgqQ">
          <node concept="3clFbS" id="7XmdqtdBcyP" role="2VODD2">
            <node concept="3clFbF" id="7XmdqtdBjdA" role="3cqZAp">
              <node concept="2OqwBi" id="7XmdqtdBmUm" role="3clFbG">
                <node concept="2OqwBi" id="7XmdqtdBjla" role="2Oq$k0">
                  <node concept="7Obwk" id="7XmdqtdBjd_" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="7XmdqtdBjAX" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:7IysFe_ZPXE" resolve="parameter" />
                  </node>
                </node>
                <node concept="2DeJg1" id="7XmdqtdBq7M" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="7XmdqtdBcWz" role="2jiSrf">
          <node concept="3clFbS" id="7XmdqtdBcW$" role="2VODD2">
            <node concept="3clFbF" id="7XmdqtdBd3R" role="3cqZAp">
              <node concept="2OqwBi" id="7XmdqtdBfJ8" role="3clFbG">
                <node concept="2OqwBi" id="7XmdqtdBdgO" role="2Oq$k0">
                  <node concept="7Obwk" id="7XmdqtdBd3Q" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="7XmdqtdBdDA" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:7IysFe_ZPXE" resolve="parameter" />
                  </node>
                </node>
                <node concept="1v1jN8" id="7XmdqtdBj3$" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="7XmdqtdBcyx" role="1Qtc8$">
        <node concept="CtIbL" id="7XmdqtdBcyz" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="7XmdqtdOhwc">
    <property role="3GE5qa" value="term" />
    <ref role="aqKnT" to="wq2x:1L74NXElX0R" resolve="Term" />
    <node concept="2F$Pav" id="7XmdqtdOhCF" role="3ft7WO">
      <node concept="3eGOop" id="7XmdqtdOhD8" role="2$S_pN">
        <node concept="ucgPf" id="7XmdqtdOhDa" role="3aKz83">
          <node concept="3clFbS" id="7XmdqtdOhDc" role="2VODD2">
            <node concept="3cpWs8" id="7XmdqtdOxrU" role="3cqZAp">
              <node concept="3cpWsn" id="7XmdqtdOxrV" role="3cpWs9">
                <property role="TrG5h" value="term" />
                <node concept="3Tqbb2" id="7XmdqtdOxrT" role="1tU5fm">
                  <ref role="ehGHo" to="wq2x:1L74NXElX0R" resolve="Term" />
                </node>
                <node concept="2ShNRf" id="7XmdqtdOxrW" role="33vP2m">
                  <node concept="3zrR0B" id="7XmdqtdOxrX" role="2ShVmc">
                    <node concept="3Tqbb2" id="7XmdqtdOxrY" role="3zrR0E">
                      <ref role="ehGHo" to="wq2x:1L74NXElX0R" resolve="Term" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7XmdqtdOwqy" role="3cqZAp">
              <node concept="2OqwBi" id="7XmdqtdOy$8" role="3clFbG">
                <node concept="2OqwBi" id="7XmdqtdOxL6" role="2Oq$k0">
                  <node concept="37vLTw" id="7XmdqtdOxrZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7XmdqtdOxrV" resolve="term" />
                  </node>
                  <node concept="3TrEf2" id="7XmdqtdOy9$" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:5hSMZ_l93p$" resolve="termDecl" />
                  </node>
                </node>
                <node concept="2oxUTD" id="7XmdqtdOyM9" role="2OqNvi">
                  <node concept="2ZBlsa" id="7XmdqtdOzev" role="2oxUTC" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7XmdqtdOzwb" role="3cqZAp">
              <node concept="37vLTw" id="7XmdqtdOzw9" role="3clFbG">
                <ref role="3cqZAo" node="7XmdqtdOxrV" resolve="term" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7XmdqtdOhCX" role="2ZBHrp">
        <ref role="ehGHo" to="wq2x:4MEOIDFttoe" resolve="TermDeclaration" />
      </node>
      <node concept="2$S_p_" id="7XmdqtdOhHi" role="2$S_pT">
        <node concept="3clFbS" id="7XmdqtdOhHj" role="2VODD2">
          <node concept="3clFbF" id="7XmdqtdOrin" role="3cqZAp">
            <node concept="2OqwBi" id="7XmdqtdOu4E" role="3clFbG">
              <node concept="2OqwBi" id="7XmdqtdOrx1" role="2Oq$k0">
                <node concept="1rpKSd" id="7XmdqtdOril" role="2Oq$k0" />
                <node concept="1j9C0f" id="7XmdqtdOrJl" role="2OqNvi">
                  <ref role="1j9C0d" to="wq2x:5hSMZ_lNwqz" resolve="TermTable" />
                </node>
              </node>
              <node concept="13MTOL" id="7XmdqtdOw1o" role="2OqNvi">
                <ref role="13MTZf" to="wq2x:5hSMZ_lNwq$" resolve="termDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Q6S24" id="3yBNtx8$qnP">
    <property role="TrG5h" value="MacroParameterReference_SmartReference" />
    <property role="3GE5qa" value="macro.decl" />
    <ref role="aqKnT" to="wq2x:7IysFeA1uPa" resolve="MacroParameterReference" />
    <node concept="3XHNnq" id="3yBNtx8$qnO" role="3ft7WO">
      <ref role="3XGfJA" to="wq2x:7IysFeA1uTj" resolve="parameter" />
    </node>
    <node concept="382kZG" id="3yBNtx8$qnQ" role="lGtFl" />
  </node>
  <node concept="24kQdi" id="6hqFpWmM97Z">
    <property role="3GE5qa" value="macro.code.with" />
    <ref role="1XX52x" to="wq2x:6hqFpWmM6I9" resolve="ContextParameterContainer" />
    <node concept="3EZMnI" id="6hqFpWmM98y" role="2wV5jI">
      <node concept="PMmxH" id="6hqFpWmM98G" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0A7n" id="6hqFpWmM98P" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3EZMnI" id="6hqFpWmM98X" role="3EZMnx">
        <node concept="VPM3Z" id="6hqFpWmM98Z" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F2HdR" id="6hqFpWmM99a" role="3EZMnx">
          <ref role="1NtTu8" to="wq2x:6hqFpWmM98w" resolve="parameter" />
          <node concept="l2Vlx" id="6hqFpWmM99c" role="2czzBx" />
          <node concept="2o9xnK" id="6hqFpWmM99h" role="2gpyvW">
            <node concept="3clFbS" id="6hqFpWmM99i" role="2VODD2">
              <node concept="3clFbF" id="6hqFpWmM9hJ" role="3cqZAp">
                <node concept="Xl_RD" id="6hqFpWmM9hI" role="3clFbG">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="tppnM" id="6hqFpWmM9yC" role="sWeuL">
            <node concept="ljvvj" id="6hqFpWmM9AT" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="lj46D" id="6hqFpWmM9B6" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pVoyu" id="6hqFpWmM9AV" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="6hqFpWmM992" role="2iSdaV" />
      </node>
      <node concept="l2Vlx" id="6hqFpWmM98_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7smgEqggf15">
    <ref role="1XX52x" to="wq2x:7smgEqggf12" resolve="NodeAnchor" />
    <node concept="3EZMnI" id="7smgEqggf17" role="2wV5jI">
      <node concept="3F0ifn" id="7smgEqggf1e" role="3EZMnx">
        <property role="3F0ifm" value="@" />
        <node concept="11LMrY" id="7smgEqggf1o" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7smgEqggf1k" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:7smgEqggf13" resolve="node" />
      </node>
      <node concept="l2Vlx" id="7smgEqggf1a" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6DOfTm$zRmy">
    <property role="3GE5qa" value="macro.decl" />
    <ref role="1XX52x" to="wq2x:6DOfTm$zRmf" resolve="MacroInputDeclaration" />
    <node concept="3EZMnI" id="6DOfTm$zRm$" role="2wV5jI">
      <node concept="3F1sOY" id="6DOfTm$zWc6" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:6DOfTm$zVok" resolve="type" />
      </node>
      <node concept="3F0A7n" id="6DOfTm$zRm_" role="3EZMnx">
        <ref role="1k5W1q" node="7ksQUDZqpsE" resolve="InputName" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="6DOfTm$zRmA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6DOfTm$$CHm">
    <property role="3GE5qa" value="macro.code" />
    <ref role="1XX52x" to="wq2x:6DOfTm$$CHj" resolve="MacroInputReference" />
    <node concept="3EZMnI" id="6DOfTm$$CHo" role="2wV5jI">
      <node concept="1iCGBv" id="6DOfTm$$CHv" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:6DOfTm$$CHk" resolve="declaration" />
        <node concept="1sVBvm" id="6DOfTm$$CHx" role="1sWHZn">
          <node concept="3F0A7n" id="6DOfTm$$CHC" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="6DOfTm$$CHr" role="2iSdaV" />
    </node>
  </node>
  <node concept="IW6AY" id="5f6wxQ38FK1">
    <property role="3GE5qa" value="constraint.template" />
    <ref role="aqKnT" to="wq2x:1CgWc1TyPXm" resolve="ConstraintParameterDeclaration" />
    <node concept="1Qtc8_" id="5f6wxQ38FK6" role="IW6Ez">
      <node concept="3cWJ9i" id="5f6wxQ38FKa" role="1Qtc8$">
        <node concept="CtIbL" id="5f6wxQ38FKc" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="5f6wxQ38FKg" role="1Qtc8A">
        <node concept="1hCUdq" id="5f6wxQ38FKh" role="1hCUd6">
          <node concept="3clFbS" id="5f6wxQ38FKi" role="2VODD2">
            <node concept="3clFbF" id="5f6wxQ38Gz$" role="3cqZAp">
              <node concept="Xl_RD" id="5f6wxQ38Gzz" role="3clFbG">
                <property role="Xl_RC" value=":" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="5f6wxQ38FKj" role="IWgqQ">
          <node concept="3clFbS" id="5f6wxQ38FKk" role="2VODD2">
            <node concept="3clFbF" id="5f6wxQ38IGu" role="3cqZAp">
              <node concept="2OqwBi" id="5f6wxQ38Joo" role="3clFbG">
                <node concept="2OqwBi" id="5f6wxQ38IO2" role="2Oq$k0">
                  <node concept="7Obwk" id="5f6wxQ38IGt" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5f6wxQ38J6T" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:5f6wxQ38Bap" resolve="dataType" />
                  </node>
                </node>
                <node concept="2oxUTD" id="5f6wxQ38JNe" role="2OqNvi">
                  <node concept="2ShNRf" id="5f6wxQ38JVp" role="2oxUTC">
                    <node concept="3zrR0B" id="5f6wxQ38LN$" role="2ShVmc">
                      <node concept="3Tqbb2" id="5f6wxQ38LNA" role="3zrR0E">
                        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cqGtN" id="5f6wxQ38FSR" role="2jZA2a">
          <node concept="3cqJkl" id="5f6wxQ38FSS" role="3cqGtW">
            <node concept="3clFbS" id="5f6wxQ38FST" role="2VODD2">
              <node concept="3clFbF" id="5f6wxQ38G1s" role="3cqZAp">
                <node concept="Xl_RD" id="5f6wxQ38G1r" role="3clFbG">
                  <property role="Xl_RC" value="specify type" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="5f6wxQ38GOD" role="2jiSrf">
          <node concept="3clFbS" id="5f6wxQ38GOE" role="2VODD2">
            <node concept="3clFbF" id="5f6wxQ38GW3" role="3cqZAp">
              <node concept="2OqwBi" id="5f6wxQ38HZj" role="3clFbG">
                <node concept="2OqwBi" id="5f6wxQ38H90" role="2Oq$k0">
                  <node concept="7Obwk" id="5f6wxQ38GW2" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5f6wxQ38HyR" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:5f6wxQ38Bap" resolve="dataType" />
                  </node>
                </node>
                <node concept="3w_OXm" id="5f6wxQ38Ix9" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5WBVN_MT8FF">
    <ref role="1XX52x" to="wq2x:5WBVN_MT8FC" resolve="ExpressionItem" />
    <node concept="3EZMnI" id="6p0DfM0hL7k" role="2wV5jI">
      <node concept="3EZMnI" id="6p0DfM0hLg3" role="3EZMnx">
        <ref role="1k5W1q" to="qgy9:7ksQUDZuyMD" resolve="Backquote" />
        <node concept="VPM3Z" id="6p0DfM0hLg4" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3vyZuw" id="5WBVN_MT8FH" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="1Bsynf" id="5WBVN_MT8FI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="1Bt7hp" id="5WBVN_MT8FJ" role="3F10Kt">
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
          <ref role="1NtTu8" to="wq2x:5WBVN_MT8FD" resolve="code" />
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
  <node concept="3p36aQ" id="5WBVN_MT8Gq">
    <ref role="aqKnT" to="wq2x:5WBVN_MT8FC" resolve="ExpressionItem" />
    <node concept="3eGOop" id="5WBVN_MT8K$" role="3ft7WO">
      <ref role="3EoQqy" to="wq2x:5WBVN_MT8FC" resolve="ExpressionItem" />
      <node concept="ucgPf" id="5WBVN_MT8K_" role="3aKz83">
        <node concept="3clFbS" id="5WBVN_MT8KA" role="2VODD2">
          <node concept="3clFbF" id="5WBVN_MT8Wa" role="3cqZAp">
            <node concept="2ShNRf" id="5WBVN_MT8W8" role="3clFbG">
              <node concept="3zrR0B" id="5WBVN_MT9fd" role="2ShVmc">
                <node concept="3Tqbb2" id="5WBVN_MT9ff" role="3zrR0E">
                  <ref role="ehGHo" to="wq2x:5WBVN_MT8FC" resolve="ExpressionItem" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="5WBVN_MT8Sc" role="upBLP">
        <node concept="2h3Zct" id="5WBVN_MT8W1" role="16NeZM">
          <property role="2h4Kg1" value="`" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1HWyn8iJ_xC">
    <ref role="1XX52x" to="wq2x:1HWyn8iJ_xB" resolve="CopyItem" />
    <node concept="3EZMnI" id="1HWyn8iJ_xE" role="2wV5jI">
      <node concept="PMmxH" id="1HWyn8iJ_xR" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0ifn" id="1HWyn8iJ_y0" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F1sOY" id="1HWyn8iJ_Iy" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:1HWyn8iJ_Iq" resolve="origin" />
      </node>
      <node concept="3F0ifn" id="1HWyn8iJ_y8" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="1HWyn8iJ_xH" role="2iSdaV" />
    </node>
  </node>
  <node concept="IW6AY" id="7c96q9tzBpf">
    <property role="3GE5qa" value="term" />
    <ref role="aqKnT" to="wq2x:4MEOIDFttoe" resolve="TermDeclaration" />
    <node concept="1Qtc8_" id="7c96q9tzBpk" role="IW6Ez">
      <node concept="3cWJ9i" id="7c96q9tzBpo" role="1Qtc8$">
        <node concept="CtIbL" id="7c96q9tzBpq" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="1GhOrh" id="7c96q9tzBEG" role="1Qtc8A">
        <node concept="1GhMSn" id="7c96q9tzBEH" role="1GhOrs">
          <node concept="3clFbS" id="7c96q9tzBEI" role="2VODD2">
            <node concept="3clFbF" id="7c96q9tzBTp" role="3cqZAp">
              <node concept="2OqwBi" id="7c96q9tzG9T" role="3clFbG">
                <node concept="2OqwBi" id="7c96q9tzDQK" role="2Oq$k0">
                  <node concept="1PxgMI" id="7c96q9tzDxt" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="7c96q9tzDAX" role="3oSUPX">
                      <ref role="cht4Q" to="wq2x:5hSMZ_lNwqz" resolve="TermTable" />
                    </node>
                    <node concept="2OqwBi" id="7c96q9tzC66" role="1m5AlR">
                      <node concept="7Obwk" id="7c96q9tzBTo" role="2Oq$k0" />
                      <node concept="2Rxl7S" id="7c96q9tzCw$" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="7c96q9tzE7T" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:5hSMZ_lNwq$" resolve="termDeclaration" />
                  </node>
                </node>
                <node concept="3zZkjj" id="7c96q9tzR0w" role="2OqNvi">
                  <node concept="1bVj0M" id="7c96q9tzR0y" role="23t8la">
                    <node concept="3clFbS" id="7c96q9tzR0z" role="1bW5cS">
                      <node concept="3clFbF" id="7c96q9tzR0$" role="3cqZAp">
                        <node concept="3y3z36" id="7c96q9tzR0_" role="3clFbG">
                          <node concept="7Obwk" id="7c96q9tzR0A" role="3uHU7w" />
                          <node concept="37vLTw" id="7c96q9tzR0B" role="3uHU7B">
                            <ref role="3cqZAo" node="7c96q9tzR0C" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7c96q9tzR0C" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7c96q9tzR0D" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="7c96q9tzRbb" role="1GhOri">
          <node concept="1hCUdq" id="7c96q9tzRbd" role="1hCUd6">
            <node concept="3clFbS" id="7c96q9tzRbf" role="2VODD2">
              <node concept="3clFbF" id="7c96q9tzSTy" role="3cqZAp">
                <node concept="3cpWs3" id="7c96q9tzU1a" role="3clFbG">
                  <node concept="2OqwBi" id="7c96q9tzUuJ" role="3uHU7w">
                    <node concept="2ZBlsa" id="7c96q9tzU9N" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7c96q9tzUM7" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7c96q9tzSTx" role="3uHU7B">
                    <property role="Xl_RC" value=":" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="7c96q9tzRbh" role="IWgqQ">
            <node concept="3clFbS" id="7c96q9tzRbj" role="2VODD2">
              <node concept="3clFbF" id="7c96q9tzRuk" role="3cqZAp">
                <node concept="2OqwBi" id="7c96q9tzSoV" role="3clFbG">
                  <node concept="2OqwBi" id="7c96q9tzRSM" role="2Oq$k0">
                    <node concept="7Obwk" id="7c96q9tzRuj" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7c96q9tzS3S" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:7c96q9tz_UX" resolve="prototype" />
                    </node>
                  </node>
                  <node concept="2oxUTD" id="7c96q9tzSBG" role="2OqNvi">
                    <node concept="2ZBlsa" id="7c96q9tzSGf" role="2oxUTC" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tqbb2" id="7c96q9tzBJN" role="2ZBHrp">
          <ref role="ehGHo" to="wq2x:4MEOIDFttoe" resolve="TermDeclaration" />
        </node>
      </node>
    </node>
  </node>
  <node concept="IW6AY" id="7c96q9tX9rC">
    <property role="3GE5qa" value="term.feature" />
    <ref role="aqKnT" to="wq2x:1pPth$m5oae" resolve="ValueTermFeature" />
    <node concept="1Qtc8_" id="7c96q9tX9rH" role="IW6Ez">
      <node concept="3cWJ9i" id="7c96q9tX9rL" role="1Qtc8$">
        <node concept="CtIbL" id="7c96q9tX9rN" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="7c96q9tX9rR" role="1Qtc8A">
        <node concept="1hCUdq" id="7c96q9tX9rS" role="1hCUd6">
          <node concept="3clFbS" id="7c96q9tX9rT" role="2VODD2">
            <node concept="3clFbF" id="7c96q9tX9$z" role="3cqZAp">
              <node concept="Xl_RD" id="7c96q9tX9$y" role="3clFbG">
                <property role="Xl_RC" value="=" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="7c96q9tX9rU" role="IWgqQ">
          <node concept="3clFbS" id="7c96q9tX9rV" role="2VODD2">
            <node concept="3clFbF" id="7c96q9tX9PH" role="3cqZAp">
              <node concept="2OqwBi" id="7c96q9tXaUN" role="3clFbG">
                <node concept="2OqwBi" id="7c96q9tX9Y_" role="2Oq$k0">
                  <node concept="7Obwk" id="7c96q9tX9PG" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7c96q9tXank" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:1hX44vMEjQe" resolve="getter" />
                  </node>
                </node>
                <node concept="2DeJnY" id="7c96q9tXCSZ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="IW6AY" id="7c96q9tXbSs">
    <property role="3GE5qa" value="term.feature" />
    <ref role="aqKnT" to="wq2x:1pPth$m5oaL" resolve="ChildTermFeature" />
    <node concept="1Qtc8_" id="7c96q9tXbSx" role="IW6Ez">
      <node concept="3cWJ9i" id="7c96q9tXbSy" role="1Qtc8$">
        <node concept="CtIbL" id="7c96q9tXbSz" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="7c96q9tXbS$" role="1Qtc8A">
        <node concept="1hCUdq" id="7c96q9tXbS_" role="1hCUd6">
          <node concept="3clFbS" id="7c96q9tXbSA" role="2VODD2">
            <node concept="3clFbF" id="7c96q9tXbSB" role="3cqZAp">
              <node concept="Xl_RD" id="7c96q9tXbSC" role="3clFbG">
                <property role="Xl_RC" value="=" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="7c96q9tXbSD" role="IWgqQ">
          <node concept="3clFbS" id="7c96q9tXbSE" role="2VODD2">
            <node concept="3clFbF" id="7c96q9tXbSF" role="3cqZAp">
              <node concept="2OqwBi" id="7c96q9tXbSG" role="3clFbG">
                <node concept="2OqwBi" id="7c96q9tXbSH" role="2Oq$k0">
                  <node concept="7Obwk" id="7c96q9tXbSI" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7c96q9tXciu" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:2L20jGt8dYg" resolve="getter" />
                  </node>
                </node>
                <node concept="2DeJnY" id="7c96q9tXCua" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="IW6AY" id="7c96q9tXcUx">
    <property role="3GE5qa" value="term.feature" />
    <ref role="aqKnT" to="wq2x:1pPth$m5oa6" resolve="ListTermFeature" />
    <node concept="1Qtc8_" id="7c96q9tXcUA" role="IW6Ez">
      <node concept="3cWJ9i" id="7c96q9tXcUB" role="1Qtc8$">
        <node concept="CtIbL" id="7c96q9tXcUC" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="7c96q9tXcUD" role="1Qtc8A">
        <node concept="1hCUdq" id="7c96q9tXcUE" role="1hCUd6">
          <node concept="3clFbS" id="7c96q9tXcUF" role="2VODD2">
            <node concept="3clFbF" id="7c96q9tXcUG" role="3cqZAp">
              <node concept="Xl_RD" id="7c96q9tXcUH" role="3clFbG">
                <property role="Xl_RC" value="=" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="7c96q9tXcUI" role="IWgqQ">
          <node concept="3clFbS" id="7c96q9tXcUJ" role="2VODD2">
            <node concept="3clFbF" id="7c96q9tXcUK" role="3cqZAp">
              <node concept="2OqwBi" id="7c96q9tXcUL" role="3clFbG">
                <node concept="2OqwBi" id="7c96q9tXcUM" role="2Oq$k0">
                  <node concept="7Obwk" id="7c96q9tXcUN" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7c96q9tXdkz" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:3AWu6Embo_Z" resolve="getter" />
                  </node>
                </node>
                <node concept="2DeJnY" id="7c96q9tXC3l" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3pMFS1zdejC">
    <ref role="1XX52x" to="wq2x:3pMFS1zdeji" resolve="Substitution" />
    <node concept="3EZMnI" id="3pMFS1zdejE" role="2wV5jI">
      <node concept="PMmxH" id="3pMFS1zdejL" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0ifn" id="3pMFS1zdejQ" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F1sOY" id="3pMFS1zdek8" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:3pMFS1zdejv" resolve="origin" />
      </node>
      <node concept="3F0ifn" id="3pMFS1zdekr" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <ref role="1k5W1q" to="tpen:hXb$RYA" resolve="LeftBracket" />
      </node>
      <node concept="3F1sOY" id="3pMFS1zdekU" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:3pMFS1zdej$" resolve="pattern" />
      </node>
      <node concept="3F0ifn" id="3pMFS1zdelk" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
        <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
      </node>
      <node concept="3F1sOY" id="3pMFS1zdemp" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:3pMFS1zdejx" resolve="replacement" />
      </node>
      <node concept="3F0ifn" id="3pMFS1zdekL" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <ref role="1k5W1q" to="tpen:hXb$V4T" resolve="RightBracket" />
      </node>
      <node concept="3F0ifn" id="3pMFS1zdejY" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="3pMFS1zdejH" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="36tQV5AmIt3">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="wq2x:36tQV5AmIt0" resolve="ConstraintRuleStatement" />
    <node concept="3EZMnI" id="36tQV5AB4ng" role="2wV5jI">
      <node concept="3EZMnI" id="36tQV5ABts7" role="3EZMnx">
        <node concept="lj46D" id="36tQV5ACfrF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="36tQV5ABts9" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="36tQV5ABtsc" role="2iSdaV" />
        <node concept="3F1sOY" id="36tQV5AB4nq" role="3EZMnx">
          <ref role="1NtTu8" to="wq2x:36tQV5AmIt1" resolve="rule" />
        </node>
      </node>
      <node concept="l2Vlx" id="36tQV5AB4nj" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="36tQV5AmMLP">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="wq2x:36tQV5AmIsB" resolve="ConstraintRule" />
    <node concept="3EZMnI" id="36tQV5AmMLR" role="2wV5jI">
      <node concept="3F0ifn" id="7lt0LtPkqU5" role="3EZMnx">
        <property role="3F0ifm" value="match" />
      </node>
      <node concept="3F2HdR" id="7lt0LtPHSzb" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="wq2x:7lt0LtPHSaf" resolve="parameter" />
        <node concept="l2Vlx" id="7lt0LtPHSzc" role="2czzBx" />
        <node concept="pkWqt" id="7lt0LtPHSzd" role="pqm2j">
          <node concept="3clFbS" id="7lt0LtPHSze" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPHSzf" role="3cqZAp">
              <node concept="2OqwBi" id="7lt0LtPHSzg" role="3clFbG">
                <node concept="2OqwBi" id="7lt0LtPHSzh" role="2Oq$k0">
                  <node concept="pncrf" id="7lt0LtPHSzi" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="7lt0LtPHSzj" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:7lt0LtPHSaf" resolve="parameter" />
                  </node>
                </node>
                <node concept="3GX2aA" id="7lt0LtPHSzk" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="tppnM" id="7lt0LtPHSzl" role="sWeuL">
          <node concept="ljvvj" id="7lt0LtPHSzm" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="1Bsynf" id="7lt0LtPHSzn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="36tQV5AmMLS" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:36tQV5AmIsU" resolve="head" />
        <node concept="l2Vlx" id="36tQV5AmMLT" role="2czzBx" />
        <node concept="ljvvj" id="36tQV5AmMLU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="36tQV5AmMLV" role="2czzBI">
          <property role="3F0ifm" value="auto" />
          <ref role="1k5W1q" to="tpen:hinfsDb" resolve="EmptyCell" />
          <node concept="Vb9p2" id="36tQV5AmMLW" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
        </node>
      </node>
      <node concept="VPM3Z" id="36tQV5AmMLX" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="3F2HdR" id="36tQV5AmMLY" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="wq2x:36tQV5AmIsV" resolve="guard" />
        <node concept="l2Vlx" id="36tQV5AmMLZ" role="2czzBx" />
        <node concept="tppnM" id="36tQV5AmMM0" role="sWeuL">
          <node concept="ljvvj" id="36tQV5AmMM1" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="ljvvj" id="36tQV5AmMM2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="36tQV5AmMM3" role="2czzBI">
          <ref role="1k5W1q" to="tpen:hinfsDb" resolve="EmptyCell" />
          <node concept="Vb9p2" id="36tQV5AmMM4" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
        </node>
        <node concept="pkWqt" id="36tQV5AmMM5" role="pqm2j">
          <node concept="3clFbS" id="36tQV5AmMM6" role="2VODD2">
            <node concept="3clFbF" id="36tQV5AmMM7" role="3cqZAp">
              <node concept="2OqwBi" id="36tQV5AmMM8" role="3clFbG">
                <node concept="2OqwBi" id="36tQV5AmMM9" role="2Oq$k0">
                  <node concept="pncrf" id="36tQV5AmMMa" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="36tQV5AmMMb" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:36tQV5AmIsV" resolve="guard" />
                  </node>
                </node>
                <node concept="3GX2aA" id="36tQV5AmMMc" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="36tQV5AmMMd" role="3EZMnx">
        <property role="3F0ifm" value="&lt;──&gt;" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
        <node concept="VPxyj" id="36tQV5AmMMe" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="VPM3Z" id="36tQV5AmMMf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="36tQV5AmMMg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="A1WHr" id="7lt0LtPPklW" role="3vIgyS">
          <ref role="2ZyFGn" to="wq2x:36tQV5AmIsB" resolve="ConstraintRule" />
        </node>
      </node>
      <node concept="3EZMnI" id="36tQV5AmMMh" role="3EZMnx">
        <node concept="ljvvj" id="36tQV5AmMMi" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="36tQV5AmMMj" role="2iSdaV" />
        <node concept="3F2HdR" id="36tQV5AmMMk" role="3EZMnx">
          <property role="2czwfO" value="else" />
          <ref role="1NtTu8" to="wq2x:36tQV5AmIsW" resolve="body" />
          <node concept="l2Vlx" id="36tQV5AmMMl" role="2czzBx" />
          <node concept="tppnM" id="36tQV5AmMMm" role="sWeuL">
            <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
          </node>
          <node concept="3F0ifn" id="36tQV5AmMMn" role="2czzBI">
            <property role="3F0ifm" value="empty" />
            <ref role="1k5W1q" to="tpen:hinfsDb" resolve="EmptyCell" />
            <node concept="Vb9p2" id="36tQV5AmMMo" role="3F10Kt">
              <property role="Vbekb" value="BOLD" />
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="36tQV5AmMMp" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="36tQV5AmNr7">
    <property role="3GE5qa" value="rule" />
    <ref role="1XX52x" to="wq2x:36tQV5AmIsf" resolve="RuleTemplate" />
    <node concept="3EZMnI" id="36tQV5AmNNV" role="2wV5jI">
      <node concept="PMmxH" id="36tQV5AmNO2" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0A7n" id="36tQV5AmNOb" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F1sOY" id="36tQV5AmNOj" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:36tQV5AmIsx" resolve="input" />
        <node concept="ljvvj" id="36tQV5AynMl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="36tQV5AmNNY" role="2iSdaV" />
      <node concept="3EZMnI" id="36tQV5AmP0Z" role="3EZMnx">
        <node concept="VPM3Z" id="36tQV5AmP10" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="ljvvj" id="36tQV5AyoeJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="36tQV5AmP1a" role="2iSdaV" />
        <node concept="3F1sOY" id="36tQV5AmP1b" role="3EZMnx">
          <property role="1$x2rV" value="apply always" />
          <ref role="1NtTu8" to="wq2x:36tQV5AmQgD" resolve="condition" />
        </node>
      </node>
      <node concept="3F0ifn" id="36tQV5AmPZK" role="3EZMnx">
        <ref role="1k5W1q" to="tpen:hshO_Yc" resolve="Comment" />
        <node concept="VPM3Z" id="36tQV5AmPZL" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="ljvvj" id="36tQV5AmPZM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="36tQV5AmO_Z" role="3EZMnx">
        <node concept="lj46D" id="7lt0LtP1xfB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="36tQV5AmOA1" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F1sOY" id="36tQV5AmONt" role="3EZMnx">
          <ref role="1NtTu8" to="wq2x:36tQV5AmIss" resolve="code" />
        </node>
        <node concept="l2Vlx" id="36tQV5AmOA4" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="36tQV5BDpoC">
    <property role="3GE5qa" value="rule.code" />
    <ref role="1XX52x" to="wq2x:36tQV5BDmft" resolve="RequireStatement" />
    <node concept="3EZMnI" id="36tQV5BDpso" role="2wV5jI">
      <node concept="PMmxH" id="36tQV5BDpsy" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F1sOY" id="36tQV5BDpsN" role="3EZMnx">
        <ref role="1NtTu8" to="wq2x:36tQV5BDmjo" resolve="node" />
      </node>
      <node concept="3F0ifn" id="36tQV5BDpsV" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="36tQV5BDpsr" role="2iSdaV" />
    </node>
  </node>
  <node concept="3ICXOK" id="7lt0LtPdW_J">
    <property role="3GE5qa" value="constraint" />
    <property role="TrG5h" value="UserConstraint_include_body" />
    <ref role="aqKnT" to="wq2x:6p0DfM0ang5" resolve="UserConstraint" />
    <node concept="1Qtc8_" id="7lt0LtPdW_K" role="IW6Ez">
      <node concept="aenpk" id="7lt0LtPe0nG" role="1Qtc8A">
        <node concept="27VH4U" id="7lt0LtPe0si" role="aenpu">
          <node concept="3clFbS" id="7lt0LtPe0sj" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPe0zw" role="3cqZAp">
              <node concept="1Wc70l" id="7lt0LtPwop6" role="3clFbG">
                <node concept="3clFbC" id="7lt0LtPwop7" role="3uHU7w">
                  <node concept="3cmrfG" id="7lt0LtPwop8" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="7lt0LtPwop9" role="3uHU7B">
                    <node concept="7Obwk" id="7lt0LtPwopa" role="2Oq$k0" />
                    <node concept="2bSWHS" id="7lt0LtPwopb" role="2OqNvi" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7lt0LtPwopc" role="3uHU7B">
                  <node concept="2OqwBi" id="7lt0LtPwopd" role="2Oq$k0">
                    <node concept="7Obwk" id="7lt0LtPwope" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="7lt0LtPwopf" role="2OqNvi">
                      <node concept="1xMEDy" id="7lt0LtPwopg" role="1xVPHs">
                        <node concept="chp4Y" id="7lt0LtPwoph" role="ri$Ld">
                          <ref role="cht4Q" to="wq2x:6p0DfM0a3gA" resolve="Head" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3x8VRR" id="7lt0LtPwopi" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="mvV$s" id="7lt0LtPdXkM" role="aenpr">
          <node concept="A1WHu" id="7lt0LtPdXkO" role="A14EM">
            <ref role="A1WHt" node="4hPXq9JmegX" resolve="Head_keep_discard" />
          </node>
          <node concept="mvVNg" id="7lt0LtPdXkW" role="mvV$0">
            <node concept="3clFbS" id="7lt0LtPdXkX" role="2VODD2">
              <node concept="3clFbF" id="7lt0LtPdXp6" role="3cqZAp">
                <node concept="2OqwBi" id="7lt0LtPdX$z" role="3clFbG">
                  <node concept="7Obwk" id="7lt0LtPdXp5" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="7lt0LtPdXVm" role="2OqNvi">
                    <node concept="1xMEDy" id="7lt0LtPdXVo" role="1xVPHs">
                      <node concept="chp4Y" id="7lt0LtPdY1t" role="ri$Ld">
                        <ref role="cht4Q" to="wq2x:6p0DfM0a3gA" resolve="Head" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="7lt0LtPh0wz" role="1Qtc8$">
        <node concept="CtIbL" id="7lt0LtPh0w_" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7lt0LtPpFq5">
    <property role="3GE5qa" value="rule.component" />
    <ref role="1XX52x" to="wq2x:7lt0LtPpEVM" resolve="ParameterContainer" />
    <node concept="3EZMnI" id="7lt0LtPpFq7" role="2wV5jI">
      <node concept="3F0ifn" id="7lt0LtPpFqe" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
        <node concept="11LMrY" id="7lt0LtPpFqf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="7lt0LtPpFqg" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="wq2x:7lt0LtPpF3M" resolve="parameter" />
        <node concept="l2Vlx" id="7lt0LtPpFqh" role="2czzBx" />
        <node concept="3F0ifn" id="7lt0LtPpFqi" role="2czzBI" />
      </node>
      <node concept="3F0ifn" id="7lt0LtPpFqj" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
        <node concept="11L4FC" id="7lt0LtPpFqk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7lt0LtPpFqa" role="2iSdaV" />
    </node>
  </node>
  <node concept="IW6AY" id="7lt0LtPHSPP">
    <property role="3GE5qa" value="rule" />
    <ref role="aqKnT" to="wq2x:36tQV5AmIsB" resolve="ConstraintRule" />
    <node concept="1Qtc8_" id="7lt0LtPHTO_" role="IW6Ez">
      <node concept="IWgqT" id="7lt0LtPHTOA" role="1Qtc8A">
        <node concept="1hCUdq" id="7lt0LtPHTOB" role="1hCUd6">
          <node concept="3clFbS" id="7lt0LtPHTOC" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPHTOD" role="3cqZAp">
              <node concept="Xl_RD" id="7lt0LtPHTOE" role="3clFbG">
                <property role="Xl_RC" value="&lt;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="7lt0LtPHTOF" role="IWgqQ">
          <node concept="3clFbS" id="7lt0LtPHTOG" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPHTOH" role="3cqZAp">
              <node concept="2OqwBi" id="7lt0LtPHTOI" role="3clFbG">
                <node concept="2OqwBi" id="7lt0LtPHTOJ" role="2Oq$k0">
                  <node concept="7Obwk" id="7lt0LtPHTOK" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="7lt0LtPHTOL" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:7lt0LtPHSaf" resolve="parameter" />
                  </node>
                </node>
                <node concept="WFELt" id="7lt0LtPHTOM" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="7lt0LtPHTON" role="2jiSrf">
          <node concept="3clFbS" id="7lt0LtPHTOO" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPHTOP" role="3cqZAp">
              <node concept="2OqwBi" id="7lt0LtPHTOQ" role="3clFbG">
                <node concept="2OqwBi" id="7lt0LtPHTOR" role="2Oq$k0">
                  <node concept="7Obwk" id="7lt0LtPHTOS" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="7lt0LtPHTOT" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:7lt0LtPHSaf" resolve="parameter" />
                  </node>
                </node>
                <node concept="1v1jN8" id="7lt0LtPHTOU" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="7lt0LtPHTOV" role="1Qtc8$">
        <node concept="CtIbL" id="7lt0LtPHTOW" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
    </node>
    <node concept="1Qtc8_" id="7lt0LtPPjkL" role="IW6Ez">
      <node concept="3cWJ9i" id="7lt0LtPPjkM" role="1Qtc8$">
        <node concept="CtIbL" id="7lt0LtPPjkN" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
      </node>
      <node concept="IWgqT" id="7lt0LtPPjkO" role="1Qtc8A">
        <node concept="1hCUdq" id="7lt0LtPPjkP" role="1hCUd6">
          <node concept="3clFbS" id="7lt0LtPPjkQ" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPPjkR" role="3cqZAp">
              <node concept="Xl_RD" id="7lt0LtPPjkS" role="3clFbG">
                <property role="Xl_RC" value="when" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="7lt0LtPPjkT" role="IWgqQ">
          <node concept="3clFbS" id="7lt0LtPPjkU" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPPjkV" role="3cqZAp">
              <node concept="2OqwBi" id="7lt0LtPPjkW" role="3clFbG">
                <node concept="2OqwBi" id="7lt0LtPPjkX" role="2Oq$k0">
                  <node concept="7Obwk" id="7lt0LtPPjkY" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="7lt0LtPPjkZ" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:36tQV5AmIsV" resolve="guard" />
                  </node>
                </node>
                <node concept="2DeJg1" id="7lt0LtPPjl0" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="7lt0LtPPjl1" role="2jiSrf">
          <node concept="3clFbS" id="7lt0LtPPjl2" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPPjl3" role="3cqZAp">
              <node concept="2OqwBi" id="7lt0LtPPjl4" role="3clFbG">
                <node concept="2OqwBi" id="7lt0LtPPjl5" role="2Oq$k0">
                  <node concept="7Obwk" id="7lt0LtPPjl6" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="7lt0LtPPjl7" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:36tQV5AmIsV" resolve="guard" />
                  </node>
                </node>
                <node concept="1v1jN8" id="7lt0LtPPjl8" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICXOK" id="7lt0LtPPlhU">
    <property role="3GE5qa" value="constraint.typespecific" />
    <property role="TrG5h" value="TypeofConstraint_include_body" />
    <ref role="aqKnT" to="wq2x:2E5lcNn01_F" resolve="TypeofConstraint" />
    <node concept="1Qtc8_" id="7lt0LtPPlhV" role="IW6Ez">
      <node concept="aenpk" id="7lt0LtPPlhW" role="1Qtc8A">
        <node concept="27VH4U" id="7lt0LtPPlhX" role="aenpu">
          <node concept="3clFbS" id="7lt0LtPPlhY" role="2VODD2">
            <node concept="3clFbF" id="7lt0LtPPlhZ" role="3cqZAp">
              <node concept="1Wc70l" id="7lt0LtPPli0" role="3clFbG">
                <node concept="3clFbC" id="7lt0LtPPli1" role="3uHU7w">
                  <node concept="3cmrfG" id="7lt0LtPPli2" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="7lt0LtPPli3" role="3uHU7B">
                    <node concept="7Obwk" id="7lt0LtPPli4" role="2Oq$k0" />
                    <node concept="2bSWHS" id="7lt0LtPPli5" role="2OqNvi" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7lt0LtPPli6" role="3uHU7B">
                  <node concept="2OqwBi" id="7lt0LtPPli7" role="2Oq$k0">
                    <node concept="7Obwk" id="7lt0LtPPli8" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="7lt0LtPPli9" role="2OqNvi">
                      <node concept="1xMEDy" id="7lt0LtPPlia" role="1xVPHs">
                        <node concept="chp4Y" id="7lt0LtPPlib" role="ri$Ld">
                          <ref role="cht4Q" to="wq2x:6p0DfM0a3gA" resolve="Head" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3x8VRR" id="7lt0LtPPlic" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="mvV$s" id="7lt0LtPPlid" role="aenpr">
          <node concept="A1WHu" id="7lt0LtPPlie" role="A14EM">
            <ref role="A1WHt" node="4hPXq9JmegX" resolve="Head_keep_discard" />
          </node>
          <node concept="mvVNg" id="7lt0LtPPlif" role="mvV$0">
            <node concept="3clFbS" id="7lt0LtPPlig" role="2VODD2">
              <node concept="3clFbF" id="7lt0LtPPlih" role="3cqZAp">
                <node concept="2OqwBi" id="7lt0LtPPlii" role="3clFbG">
                  <node concept="7Obwk" id="7lt0LtPPlij" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="7lt0LtPPlik" role="2OqNvi">
                    <node concept="1xMEDy" id="7lt0LtPPlil" role="1xVPHs">
                      <node concept="chp4Y" id="7lt0LtPPlim" role="ri$Ld">
                        <ref role="cht4Q" to="wq2x:6p0DfM0a3gA" resolve="Head" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="7lt0LtPPlin" role="1Qtc8$">
        <node concept="CtIbL" id="7lt0LtPPlio" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="7lt0LtPQ8ft">
    <property role="3GE5qa" value="rule.component" />
    <property role="TrG5h" value="Head_delete_keep" />
    <ref role="1h_SK9" to="wq2x:6p0DfM0a3gA" resolve="Head" />
    <node concept="1hA7zw" id="7lt0LtPQ8fu" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <property role="1hHO97" value="Make Discard" />
      <node concept="1hAIg9" id="7lt0LtPQ8fv" role="1hA7z_">
        <node concept="3clFbS" id="7lt0LtPQ8fw" role="2VODD2">
          <node concept="3clFbF" id="7lt0LtPQa4Q" role="3cqZAp">
            <node concept="37vLTI" id="7lt0LtPQa4R" role="3clFbG">
              <node concept="3clFbT" id="7lt0LtPQa4S" role="37vLTx">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="2OqwBi" id="7lt0LtPQa4T" role="37vLTJ">
                <node concept="0IXxy" id="7lt0LtPQaiE" role="2Oq$k0" />
                <node concept="3TrcHB" id="7lt0LtPQaza" role="2OqNvi">
                  <ref role="3TsBF5" to="wq2x:6p0DfM0bSv$" resolve="keep" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7lt0LtPQa4W" role="3cqZAp">
            <node concept="2OqwBi" id="7lt0LtPQa4X" role="3clFbG">
              <node concept="0IXxy" id="7lt0LtPQaAU" role="2Oq$k0" />
              <node concept="1OKiuA" id="7lt0LtPQa4Z" role="2OqNvi">
                <node concept="1Q80Hx" id="7lt0LtPQa50" role="lBI5i" />
                <node concept="2B6iha" id="7lt0LtPQa51" role="lGT1i">
                  <property role="1lyBwo" value="mostRelevant" />
                </node>
                <node concept="3cmrfG" id="7lt0LtPQa52" role="3dN3m$">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="7lt0LtPQ8fG" role="jK8aL">
        <node concept="3clFbS" id="7lt0LtPQ8fH" role="2VODD2">
          <node concept="3clFbF" id="7lt0LtPQ8mU" role="3cqZAp">
            <node concept="2OqwBi" id="7lt0LtPQ8$F" role="3clFbG">
              <node concept="0IXxy" id="7lt0LtPQ8mT" role="2Oq$k0" />
              <node concept="3TrcHB" id="7lt0LtPQ91u" role="2OqNvi">
                <ref role="3TsBF5" to="wq2x:6p0DfM0bSv$" resolve="keep" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

