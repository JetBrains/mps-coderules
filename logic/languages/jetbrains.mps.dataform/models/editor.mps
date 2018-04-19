<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:34927e48-bf8d-4708-a63c-2a3e4a3e490e(jetbrains.mps.dataform.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="11" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="dff3" ref="r:575429ab-72f6-4385-a61f-a1f1f27e3490(jetbrains.mps.dataform.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" />
    <import index="vxmb" ref="r:3345f3eb-f61a-42bd-88eb-d9032a80e9a6(jetbrains.mps.lang.typesystem2.editor)" implicit="true" />
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
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
        <child id="928328222691832421" name="separatorTextQuery" index="2gpyvW" />
        <child id="1233141163694" name="separatorStyle" index="sWeuL" />
      </concept>
      <concept id="3459162043708467089" name="jetbrains.mps.lang.editor.structure.CellActionMap_CanExecuteFunction" flags="in" index="jK8Ss" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="3308309804690746362" name="jetbrains.mps.lang.editor.structure.QueryFunction_ColorComposit" flags="ig" index="mot77" />
      <concept id="709996738298806197" name="jetbrains.mps.lang.editor.structure.QueryFunction_SeparatorText" flags="in" index="2o9xnK" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="1177327570013" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Substitute" flags="in" index="ucgPf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="8371900013785948369" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Parameter" flags="ig" index="2$S_p_" />
      <concept id="6718020819487620876" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Default" flags="ng" index="A1WHr" />
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
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styleClass" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
        <child id="1223387335081" name="query" index="3n$kyP" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
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
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="2896773699153795590" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform" flags="ng" index="3cWJ9i">
        <child id="3473224453637651919" name="placeInCell" index="CtIbM" />
      </concept>
      <concept id="7342352913006985483" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Action" flags="ng" index="3eGOop">
        <child id="8612453216082699922" name="substituteHandler" index="3aKz83" />
      </concept>
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <child id="3459162043708468028" name="canExecuteFunction" index="jK8aL" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="5692353713941573329" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText" flags="ig" index="1hCUdq" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1223387125302" name="jetbrains.mps.lang.editor.structure.QueryFunction_Boolean" flags="in" index="3nzxsE" />
      <concept id="3308396621974580100" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_Default" flags="ng" index="3p36aQ" />
      <concept id="7580468736840446506" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_model" flags="nn" index="1rpKSd" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="7667708318090725848" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentAnchorStyleClassItem" flags="ln" index="1Bsynf" />
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
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
      <concept id="4233361609415247331" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Parameter" flags="ig" index="1GhMSn" />
      <concept id="4233361609415240997" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Parameterized" flags="ng" index="1GhOrh">
        <child id="4233361609415240998" name="part" index="1GhOri" />
        <child id="4233361609415241000" name="parameterQuery" index="1GhOrs" />
      </concept>
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ng" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
        <child id="7980428675268276159" name="parts" index="1Qtc8A" />
      </concept>
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="1182511038748" name="jetbrains.mps.lang.smodel.structure.Model_NodesIncludingImportedOperation" flags="nn" index="1j9C0f">
        <reference id="1182511038750" name="concept" index="1j9C0d" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="24kQdi" id="JOGAOsxaCz">
    <ref role="1XX52x" to="dff3:JOGAOsxaCw" resolve="DataFormTable" />
    <node concept="3EZMnI" id="5hSMZ_lNwqE" role="2wV5jI">
      <node concept="3EZMnI" id="5hSMZ_lNwqF" role="3EZMnx">
        <node concept="VPM3Z" id="5hSMZ_lNwqG" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="PMmxH" id="5hSMZ_lNwqH" role="3EZMnx">
          <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
          <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
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
          <ref role="1NtTu8" to="dff3:JOGAOsxaCx" resolve="contents" />
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
              <node concept="10M0yZ" id="JOGAOsxcaN" role="3clFbG">
                <ref role="3cqZAo" node="4aJUH_hW4LO" resolve="FG_TAG" />
                <ref role="1PxDUh" node="7ksQUDZpwgy" resolve="CustomColors" />
              </node>
            </node>
          </node>
        </node>
      </node>
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
  <node concept="24kQdi" id="JOGAOsxiLE">
    <property role="3GE5qa" value="feature" />
    <ref role="1XX52x" to="dff3:JOGAOsxiL_" resolve="DataFormFeature" />
    <node concept="3EZMnI" id="1CcQBrPqjR2" role="2wV5jI">
      <node concept="3F0ifn" id="1CcQBrPqjR9" role="3EZMnx">
        <property role="3F0ifm" value="final" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
        <ref role="1ERwB7" node="JOGAOsxj5_" resolve="DataFormFeature_final" />
        <node concept="pkWqt" id="1CcQBrPqjRc" role="pqm2j">
          <node concept="3clFbS" id="1CcQBrPqjRd" role="2VODD2">
            <node concept="3clFbF" id="1CcQBrPqjYq" role="3cqZAp">
              <node concept="2OqwBi" id="1CcQBrPqkc9" role="3clFbG">
                <node concept="pncrf" id="1CcQBrPqjYp" role="2Oq$k0" />
                <node concept="3TrcHB" id="1CcQBrPqkxi" role="2OqNvi">
                  <ref role="3TsBF5" to="dff3:JOGAOsxiLC" resolve="final" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="1CcQBrPqjR5" role="2iSdaV" />
      <node concept="PMmxH" id="JOGAOsx_Cg" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="4aJUH_hW38r" resolve="RuleKeyword" />
      </node>
      <node concept="3F0A7n" id="JOGAOsx_Ch" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="A1WHr" id="JOGAOsx_Ci" role="3vIgyS">
          <ref role="2ZyFGn" to="dff3:JOGAOsxiL_" resolve="DataFormFeature" />
        </node>
      </node>
      <node concept="3EZMnI" id="JOGAOsx_Cj" role="3EZMnx">
        <node concept="VPM3Z" id="JOGAOsx_Ck" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="JOGAOsx_Cl" role="2iSdaV" />
        <node concept="3F0ifn" id="JOGAOsx_Cm" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="JOGAOsx_Cn" role="3EZMnx">
          <ref role="1NtTu8" to="dff3:JOGAOsxmrx" resolve="getter" />
        </node>
        <node concept="pkWqt" id="JOGAOsx_Co" role="pqm2j">
          <node concept="3clFbS" id="JOGAOsx_Cp" role="2VODD2">
            <node concept="3clFbF" id="JOGAOsx_Cq" role="3cqZAp">
              <node concept="2OqwBi" id="JOGAOsx_Cr" role="3clFbG">
                <node concept="2OqwBi" id="JOGAOsx_Cs" role="2Oq$k0">
                  <node concept="pncrf" id="JOGAOsx_Ct" role="2Oq$k0" />
                  <node concept="3TrEf2" id="JOGAOsx_Cu" role="2OqNvi">
                    <ref role="3Tt5mk" to="dff3:JOGAOsxmrx" resolve="getter" />
                  </node>
                </node>
                <node concept="3x8VRR" id="JOGAOsx_Cv" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="JOGAOsxj5_">
    <property role="TrG5h" value="DataFormFeature_final" />
    <property role="3GE5qa" value="feature" />
    <ref role="1h_SK9" to="dff3:JOGAOsxiL_" resolve="DataFormFeature" />
    <node concept="1hA7zw" id="1CcQBrPqIC5" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="1CcQBrPqIC6" role="1hA7z_">
        <node concept="3clFbS" id="1CcQBrPqIC7" role="2VODD2">
          <node concept="3clFbF" id="1CcQBrPqJok" role="3cqZAp">
            <node concept="2OqwBi" id="1CcQBrPqK8t" role="3clFbG">
              <node concept="2OqwBi" id="1CcQBrPqJwy" role="2Oq$k0">
                <node concept="0IXxy" id="1CcQBrPqJoj" role="2Oq$k0" />
                <node concept="3TrcHB" id="1CcQBrPqJF6" role="2OqNvi">
                  <ref role="3TsBF5" to="dff3:JOGAOsxiLC" resolve="final" />
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
                <ref role="3TsBF5" to="dff3:JOGAOsxiLC" resolve="final" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="IW6AY" id="JOGAOsxkwf">
    <property role="3GE5qa" value="feature" />
    <ref role="aqKnT" to="dff3:JOGAOsxiL_" resolve="DataFormFeature" />
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
                    <ref role="3TsBF5" to="dff3:JOGAOsxiLC" resolve="final" />
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
                    <ref role="3TsBF5" to="dff3:JOGAOsxiLC" resolve="final" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1Qtc8_" id="JOGAOsxAMn" role="IW6Ez">
      <node concept="3cWJ9i" id="JOGAOsxAMo" role="1Qtc8$">
        <node concept="CtIbL" id="JOGAOsxAMp" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="JOGAOsxAMq" role="1Qtc8A">
        <node concept="1hCUdq" id="JOGAOsxAMr" role="1hCUd6">
          <node concept="3clFbS" id="JOGAOsxAMs" role="2VODD2">
            <node concept="3clFbF" id="JOGAOsxAMt" role="3cqZAp">
              <node concept="Xl_RD" id="JOGAOsxAMu" role="3clFbG">
                <property role="Xl_RC" value="=" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="JOGAOsxAMv" role="IWgqQ">
          <node concept="3clFbS" id="JOGAOsxAMw" role="2VODD2">
            <node concept="3clFbF" id="JOGAOsxAMx" role="3cqZAp">
              <node concept="2OqwBi" id="JOGAOsxAMy" role="3clFbG">
                <node concept="2OqwBi" id="JOGAOsxAMz" role="2Oq$k0">
                  <node concept="7Obwk" id="JOGAOsxAM$" role="2Oq$k0" />
                  <node concept="3TrEf2" id="JOGAOsxAM_" role="2OqNvi">
                    <ref role="3Tt5mk" to="dff3:JOGAOsxmrx" resolve="getter" />
                  </node>
                </node>
                <node concept="2DeJnY" id="JOGAOsxAMA" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="JOGAOsxlgm">
    <ref role="1XX52x" to="dff3:JOGAOsxiLy" resolve="DataFormTemplate" />
    <node concept="3EZMnI" id="1pPth$m6bZO" role="2wV5jI">
      <node concept="3F0ifn" id="1pPth$m6bZV" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
      </node>
      <node concept="3F2HdR" id="1pPth$m6c09" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="dff3:JOGAOsxiLz" resolve="feature" />
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
  <node concept="IW6AY" id="JOGAOsxCR1">
    <ref role="aqKnT" to="dff3:JOGAOsxaC9" resolve="DataFormDeclaration" />
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
                    <node concept="chp4Y" id="JOGAOsxD_G" role="3oSUPX">
                      <ref role="cht4Q" to="dff3:JOGAOsxaCw" resolve="DataFormTable" />
                    </node>
                    <node concept="2OqwBi" id="7c96q9tzC66" role="1m5AlR">
                      <node concept="7Obwk" id="7c96q9tzBTo" role="2Oq$k0" />
                      <node concept="2Rxl7S" id="7c96q9tzCw$" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="JOGAOsxE0L" role="2OqNvi">
                    <ref role="3TtcxE" to="dff3:JOGAOsxaCx" resolve="contents" />
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
                      <ref role="3Tt5mk" to="dff3:JOGAOsxaCh" resolve="prototype" />
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
          <ref role="ehGHo" to="dff3:JOGAOsxaC9" resolve="DataFormDeclaration" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="JOGAOsxEW6">
    <ref role="1XX52x" to="dff3:JOGAOsxaC9" resolve="DataFormDeclaration" />
    <node concept="3EZMnI" id="4MEOIDFttNp" role="2wV5jI">
      <node concept="3F0A7n" id="4MEOIDFttNA" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="vxmb:4bWqD4C2vDI" resolve="Term" />
        <node concept="A1WHr" id="7c96q9tzV90" role="3vIgyS">
          <ref role="2ZyFGn" to="dff3:JOGAOsxaC9" resolve="DataFormDeclaration" />
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
          <ref role="1NtTu8" to="dff3:JOGAOsxaCh" resolve="prototype" />
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
                    <ref role="3Tt5mk" to="dff3:JOGAOsxaCh" resolve="prototype" />
                  </node>
                </node>
                <node concept="3x8VRR" id="7c96q9t$p$B" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="4MEOIDFttOZ" role="3EZMnx">
        <ref role="1NtTu8" to="dff3:JOGAOsxaCc" resolve="template" />
      </node>
      <node concept="l2Vlx" id="4MEOIDFttNs" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="JOGAOsxTDr">
    <property role="3GE5qa" value="feature" />
    <ref role="1XX52x" to="dff3:JOGAOsxTDl" resolve="DataFormFeatureOverride" />
    <node concept="3EZMnI" id="1L74NXFMBU5" role="2wV5jI">
      <node concept="1iCGBv" id="1L74NXFMBUc" role="3EZMnx">
        <ref role="1NtTu8" to="dff3:JOGAOsxTDo" resolve="feature" />
        <node concept="1sVBvm" id="1L74NXFMBUe" role="1sWHZn">
          <node concept="3F0A7n" id="1L74NXFMBUl" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" to="vxmb:4bWqD4C9OIl" resolve="TermFeatureOverride" />
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
        <ref role="1NtTu8" to="dff3:JOGAOsxTDm" resolve="getter" />
      </node>
      <node concept="l2Vlx" id="1L74NXFMBU8" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="JOGAOsxX6Q">
    <ref role="1XX52x" to="dff3:JOGAOsxanH" resolve="DataForm" />
    <node concept="3EZMnI" id="1L74NXElXMk" role="2wV5jI">
      <node concept="l2Vlx" id="1L74NXElXMn" role="2iSdaV" />
      <node concept="1iCGBv" id="5hSMZ_l942J" role="3EZMnx">
        <ref role="1NtTu8" to="dff3:JOGAOsxaC6" resolve="decl" />
        <node concept="1sVBvm" id="5hSMZ_l942L" role="1sWHZn">
          <node concept="3F0A7n" id="5hSMZ_l94mH" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" to="vxmb:4bWqD4C2vDI" resolve="Term" />
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
                          <ref role="3TtcxE" to="dff3:JOGAOsxaC4" resolve="override" />
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
          <ref role="1NtTu8" to="dff3:JOGAOsxaC4" resolve="override" />
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
                            <ref role="3TtcxE" to="dff3:JOGAOsxaC4" resolve="override" />
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
                          <ref role="3TtcxE" to="dff3:JOGAOsxaC4" resolve="override" />
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
  <node concept="3p36aQ" id="JOGAOsxYtS">
    <ref role="aqKnT" to="dff3:JOGAOsxanH" resolve="DataForm" />
    <node concept="2F$Pav" id="7XmdqtdOhCF" role="3ft7WO">
      <node concept="3eGOop" id="7XmdqtdOhD8" role="2$S_pN">
        <node concept="ucgPf" id="7XmdqtdOhDa" role="3aKz83">
          <node concept="3clFbS" id="7XmdqtdOhDc" role="2VODD2">
            <node concept="3cpWs8" id="7XmdqtdOxrU" role="3cqZAp">
              <node concept="3cpWsn" id="7XmdqtdOxrV" role="3cpWs9">
                <property role="TrG5h" value="df" />
                <node concept="3Tqbb2" id="7XmdqtdOxrT" role="1tU5fm">
                  <ref role="ehGHo" to="dff3:JOGAOsxanH" resolve="DataForm" />
                </node>
                <node concept="2ShNRf" id="7XmdqtdOxrW" role="33vP2m">
                  <node concept="3zrR0B" id="7XmdqtdOxrX" role="2ShVmc">
                    <node concept="3Tqbb2" id="7XmdqtdOxrY" role="3zrR0E">
                      <ref role="ehGHo" to="dff3:JOGAOsxanH" resolve="DataForm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7XmdqtdOwqy" role="3cqZAp">
              <node concept="2OqwBi" id="7XmdqtdOy$8" role="3clFbG">
                <node concept="2OqwBi" id="7XmdqtdOxL6" role="2Oq$k0">
                  <node concept="37vLTw" id="7XmdqtdOxrZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7XmdqtdOxrV" resolve="df" />
                  </node>
                  <node concept="3TrEf2" id="JOGAOsy1U2" role="2OqNvi">
                    <ref role="3Tt5mk" to="dff3:JOGAOsxaC6" resolve="decl" />
                  </node>
                </node>
                <node concept="2oxUTD" id="7XmdqtdOyM9" role="2OqNvi">
                  <node concept="2ZBlsa" id="7XmdqtdOzev" role="2oxUTC" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7XmdqtdOzwb" role="3cqZAp">
              <node concept="37vLTw" id="7XmdqtdOzw9" role="3clFbG">
                <ref role="3cqZAo" node="7XmdqtdOxrV" resolve="df" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7XmdqtdOhCX" role="2ZBHrp">
        <ref role="ehGHo" to="dff3:JOGAOsxaC9" resolve="DataFormDeclaration" />
      </node>
      <node concept="2$S_p_" id="7XmdqtdOhHi" role="2$S_pT">
        <node concept="3clFbS" id="7XmdqtdOhHj" role="2VODD2">
          <node concept="3clFbF" id="7XmdqtdOrin" role="3cqZAp">
            <node concept="2OqwBi" id="7XmdqtdOu4E" role="3clFbG">
              <node concept="2OqwBi" id="7XmdqtdOrx1" role="2Oq$k0">
                <node concept="1rpKSd" id="7XmdqtdOril" role="2Oq$k0" />
                <node concept="1j9C0f" id="7XmdqtdOrJl" role="2OqNvi">
                  <ref role="1j9C0d" to="dff3:JOGAOsxaCw" resolve="DataFormTable" />
                </node>
              </node>
              <node concept="13MTOL" id="JOGAOsy1e8" role="2OqNvi">
                <ref role="13MTZf" to="dff3:JOGAOsxaCx" resolve="contents" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

