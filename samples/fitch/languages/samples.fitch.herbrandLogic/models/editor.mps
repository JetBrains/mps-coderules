<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0b1f15f7-167a-449c-aaf4-e2a3be522c90(samples.fitch.herbrandLogic.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="12" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="bw37" ref="r:faa478da-573c-4c9e-99e4-b87297289505(samples.fitch.herbrandLogic.structure)" />
    <import index="27wh" ref="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(samples.fitch.propositionalLogic.structure)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="8v9h" ref="r:873e37f0-b045-47b9-ae9e-db79c2628975(samples.fitch.editor)" />
    <import index="jfgh" ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(samples.fitch.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpfp" ref="r:00000000-0000-4000-0000-011c89590519(jetbrains.mps.baseLanguage.regexp.jetbrains.mps.regexp.accessory)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ng" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="6822301196700715228" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference" flags="ig" index="2aJ2om">
        <reference id="5944657839026714445" name="hint" index="2$4xQ3" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
        <child id="1233141163694" name="separatorStyle" index="sWeuL" />
      </concept>
      <concept id="1196434649611" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_SimpleString" flags="ng" index="2h3Zct">
        <property id="1196434851095" name="text" index="2h4Kg1" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="3459162043708467089" name="jetbrains.mps.lang.editor.structure.CellActionMap_CanExecuteFunction" flags="in" index="jK8Ss" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="1177327274449" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_pattern" flags="nn" index="ub8z3" />
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
      <concept id="6718020819487620876" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Default" flags="ng" index="A1WHr" />
      <concept id="3473224453637651916" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder" flags="ng" index="CtIbL">
        <property id="3473224453637651917" name="placeInCell" index="CtIbK" />
      </concept>
      <concept id="1638911550608571617" name="jetbrains.mps.lang.editor.structure.TransformationMenu_Default" flags="ng" index="IW6AY" />
      <concept id="1638911550608610798" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute" flags="ig" index="IWg2L" />
      <concept id="1638911550608610278" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action" flags="ng" index="IWgqT">
        <child id="1638911550608610281" name="executeFunction" index="IWgqQ" />
        <child id="5692353713941573325" name="textFunction" index="1hCUd6" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW">
        <child id="7033942394258392116" name="overridenEditorComponent" index="1PM95z" />
      </concept>
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="4323500428136740385" name="jetbrains.mps.lang.editor.structure.CellIdReferenceSelector" flags="ng" index="2TlHUq">
        <reference id="4323500428136742952" name="id" index="2TlMyj" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1630016958697718209" name="jetbrains.mps.lang.editor.structure.IMenuReference_Default" flags="ng" index="2Z_bC8">
        <reference id="1630016958698373342" name="concept" index="2ZyFGn" />
      </concept>
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ng" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="8998492695583125082" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_MatchingText" flags="ng" index="16NfWO">
        <child id="8998492695583129244" name="query" index="16NeZM" />
      </concept>
      <concept id="8998492695583129971" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_DescriptionText" flags="ng" index="16NL0t">
        <child id="8998492695583129972" name="query" index="16NL0q" />
      </concept>
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
        <property id="1139537298254" name="description" index="1hHO97" />
        <child id="3459162043708468028" name="canExecuteFunction" index="jK8aL" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="5692353713941573329" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText" flags="ig" index="1hCUdq" />
      <concept id="3308396621974580100" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_Default" flags="ng" index="3p36aQ" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="4323500428121274054" name="id" index="2SqHTX" />
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
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR">
        <child id="7279578193766667846" name="addHints" index="78xua" />
      </concept>
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ng" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="5624877018228264944" name="jetbrains.mps.lang.editor.structure.TransformationMenuContribution" flags="ng" index="3INDKC">
        <child id="6718020819489956031" name="menuReference" index="AmTjC" />
      </concept>
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
      </concept>
      <concept id="7033942394256351208" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclarationReference" flags="ng" index="1PE4EZ">
        <reference id="7033942394256351817" name="editorComponent" index="1PE7su" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
        <child id="7980428675268276159" name="parts" index="1Qtc8A" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
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
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1139867745658" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithNewOperation" flags="nn" index="1_qnLN">
        <reference id="1139867957129" name="concept" index="1_rbq0" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
    <language id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp">
      <concept id="1174482804200" name="jetbrains.mps.baseLanguage.regexp.structure.PlusRegexp" flags="ng" index="1OClNT" />
      <concept id="1174485235885" name="jetbrains.mps.baseLanguage.regexp.structure.UnaryRegexp" flags="ng" index="1OLBAW">
        <child id="1174485243418" name="regexp" index="1OLDsb" />
      </concept>
      <concept id="1174510540317" name="jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression" flags="nn" index="1Qi9sc">
        <child id="1174510571016" name="regexp" index="1QigWp" />
      </concept>
      <concept id="1174512414484" name="jetbrains.mps.baseLanguage.regexp.structure.MatchRegexpStatement" flags="nn" index="1QpiS5">
        <child id="1174512427594" name="body" index="1Qpmdr" />
        <child id="1174512569438" name="expr" index="1QpSPf" />
      </concept>
      <concept id="1174555732504" name="jetbrains.mps.baseLanguage.regexp.structure.PredefinedSymbolClassRegexp" flags="ng" index="1SYyG9">
        <reference id="1174555843709" name="symbolClass" index="1SYXPG" />
      </concept>
      <concept id="1174653354106" name="jetbrains.mps.baseLanguage.regexp.structure.RegexpUsingConstruction" flags="ng" index="1YMW5F">
        <child id="1174653387388" name="regexp" index="1YN4dH" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
    </language>
  </registry>
  <node concept="24kQdi" id="2DPo4JTS3fE">
    <property role="3GE5qa" value="sentence" />
    <ref role="1XX52x" to="bw37:2DPo4JTRwsP" resolve="Function" />
    <node concept="3EZMnI" id="2DPo4JTS3fG" role="2wV5jI">
      <node concept="3F0A7n" id="2DPo4JTS3fN" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2DPo4JTS3fT" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11L4FC" id="2DPo4JTS3fX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="2DPo4JTSWf8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="2DPo4JTS3gj" role="3EZMnx">
        <property role="2czwfO" value="," />
        <property role="1cu_pB" value="0" />
        <ref role="1NtTu8" to="bw37:2DPo4JTRwtv" resolve="argument" />
        <ref role="1ERwB7" node="2DPo4JTT9wr" resolve="Function_DeleteArguments" />
        <node concept="l2Vlx" id="2DPo4JTS3gl" role="2czzBx" />
        <node concept="tppnM" id="2DPo4JTS3gt" role="sWeuL">
          <node concept="11L4FC" id="2DPo4JTS3gv" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="2DPo4JTSWfp" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="&lt;no arguments&gt;" />
          <node concept="2SqB2G" id="Vo$tzLDz3Y" role="2SqHTX">
            <property role="TrG5h" value="ARGUMENT" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2DPo4JTS3g4" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1ERwB7" node="2DPo4JTT9wr" resolve="Function_DeleteArguments" />
        <node concept="11L4FC" id="2DPo4JTSWfk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="2DPo4JTS3fJ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2DPo4JTS3gx">
    <property role="3GE5qa" value="sentence" />
    <ref role="1XX52x" to="bw37:2DPo4JTRwsM" resolve="Variable" />
    <node concept="3EZMnI" id="2DPo4JTS3gz" role="2wV5jI">
      <node concept="3F0A7n" id="2DPo4JTS3gE" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="2DPo4JTS3gA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2DPo4JTS3gH">
    <property role="3GE5qa" value="sentence" />
    <ref role="1XX52x" to="bw37:2DPo4JTRwsI" resolve="Object" />
    <node concept="3EZMnI" id="2DPo4JTS3gJ" role="2wV5jI">
      <node concept="3F0A7n" id="2DPo4JTS3gQ" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="2DPo4JTS3gM" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2DPo4JTS3gT">
    <property role="3GE5qa" value="sentence" />
    <ref role="1XX52x" to="bw37:2DPo4JTRwtx" resolve="Relation" />
    <node concept="3EZMnI" id="2DPo4JTS3gV" role="2wV5jI">
      <node concept="3F0A7n" id="2DPo4JTS3gW" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2DPo4JTS3gX" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11L4FC" id="2DPo4JTSUQi" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="2DPo4JTSTwl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="2DPo4JTS3gZ" role="3EZMnx">
        <property role="2czwfO" value="," />
        <property role="1cu_pB" value="0" />
        <ref role="1NtTu8" to="bw37:2DPo4JTRwtF" resolve="member" />
        <ref role="1ERwB7" node="2DPo4JTTm8h" resolve="Relation_DeleteMembers" />
        <node concept="l2Vlx" id="2DPo4JTS3h0" role="2czzBx" />
        <node concept="tppnM" id="2DPo4JTS3h1" role="sWeuL">
          <node concept="11L4FC" id="2DPo4JTS3h2" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="2DPo4JTSRTA" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="&lt;no members&gt;" />
          <node concept="2SqB2G" id="Vo$tzLDwhX" role="2SqHTX">
            <property role="TrG5h" value="MEMBER" />
          </node>
        </node>
        <node concept="VPxyj" id="Vo$tzLDts_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2DPo4JTS3h3" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1ERwB7" node="2DPo4JTTm8h" resolve="Relation_DeleteMembers" />
        <node concept="11L4FC" id="2DPo4JTSTwp" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="2DPo4JTS3h5" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2DPo4JTS3hE">
    <property role="3GE5qa" value="sentence" />
    <ref role="1XX52x" to="bw37:2DPo4JTRwtd" resolve="Forall" />
    <node concept="3EZMnI" id="2DPo4JTSb6B" role="2wV5jI">
      <node concept="3F0ifn" id="2DPo4JTSb6C" role="3EZMnx">
        <property role="3F0ifm" value="∀" />
      </node>
      <node concept="3F1sOY" id="2DPo4JTSb6D" role="3EZMnx">
        <ref role="1NtTu8" to="bw37:2DPo4JTRwtr" resolve="variable" />
      </node>
      <node concept="3F0ifn" id="2DPo4JTSb6E" role="3EZMnx">
        <property role="3F0ifm" value="." />
        <node concept="11L4FC" id="2DPo4JTSb6F" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="2DPo4JTSb6G" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="2DPo4JTSb6H" role="2iSdaV" />
      <node concept="3F1sOY" id="2DPo4JTSb6I" role="3EZMnx">
        <ref role="1NtTu8" to="bw37:2DPo4JTRwts" resolve="sentence" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2DPo4JTS3hT">
    <property role="3GE5qa" value="sentence" />
    <ref role="1XX52x" to="bw37:2DPo4JTRwtj" resolve="Exists" />
    <node concept="3EZMnI" id="2DPo4JTS3hV" role="2wV5jI">
      <node concept="3F0ifn" id="2DPo4JTS3i2" role="3EZMnx">
        <property role="3F0ifm" value="∃" />
      </node>
      <node concept="3F1sOY" id="2DPo4JTSb64" role="3EZMnx">
        <ref role="1NtTu8" to="bw37:2DPo4JTRwto" resolve="variable" />
      </node>
      <node concept="3F0ifn" id="2DPo4JTSb6c" role="3EZMnx">
        <property role="3F0ifm" value="." />
        <node concept="11L4FC" id="2DPo4JTSb6h" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="2DPo4JTSb6z" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="2DPo4JTS3hY" role="2iSdaV" />
      <node concept="3F1sOY" id="2DPo4JTSb6p" role="3EZMnx">
        <ref role="1NtTu8" to="bw37:2DPo4JTRwtm" resolve="sentence" />
      </node>
    </node>
  </node>
  <node concept="3INDKC" id="2DPo4JTSM67">
    <property role="TrG5h" value="Proposition_ConvertToRelation" />
    <node concept="1Qtc8_" id="2DPo4JTSM6c" role="IW6Ez">
      <node concept="3cWJ9i" id="2DPo4JTSM6g" role="1Qtc8$">
        <node concept="CtIbL" id="2DPo4JTSM6i" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="2DPo4JTSM6m" role="1Qtc8A">
        <node concept="1hCUdq" id="2DPo4JTSM6n" role="1hCUd6">
          <node concept="3clFbS" id="2DPo4JTSM6o" role="2VODD2">
            <node concept="3clFbF" id="2DPo4JTSMeY" role="3cqZAp">
              <node concept="Xl_RD" id="2DPo4JTSMeX" role="3clFbG">
                <property role="Xl_RC" value="(" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="2DPo4JTSM6p" role="IWgqQ">
          <node concept="3clFbS" id="2DPo4JTSM6q" role="2VODD2">
            <node concept="3cpWs8" id="2DPo4JTSPog" role="3cqZAp">
              <node concept="3cpWsn" id="2DPo4JTSPoh" role="3cpWs9">
                <property role="TrG5h" value="prop" />
                <node concept="3Tqbb2" id="2DPo4JTSPof" role="1tU5fm">
                  <ref role="ehGHo" to="27wh:3JXBM6C3Cn8" resolve="Proposition" />
                </node>
                <node concept="7Obwk" id="2DPo4JTSPoi" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="2DPo4JTSOLY" role="3cqZAp">
              <node concept="3cpWsn" id="2DPo4JTSOLZ" role="3cpWs9">
                <property role="TrG5h" value="rel" />
                <node concept="3Tqbb2" id="2DPo4JTSOLV" role="1tU5fm">
                  <ref role="ehGHo" to="bw37:2DPo4JTRwtx" resolve="Relation" />
                </node>
                <node concept="2OqwBi" id="2DPo4JTSOM0" role="33vP2m">
                  <node concept="37vLTw" id="2DPo4JTSPoj" role="2Oq$k0">
                    <ref role="3cqZAo" node="2DPo4JTSPoh" resolve="prop" />
                  </node>
                  <node concept="1_qnLN" id="2DPo4JTSOM2" role="2OqNvi">
                    <ref role="1_rbq0" to="bw37:2DPo4JTRwtx" resolve="Relation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2DPo4JTSMw4" role="3cqZAp">
              <node concept="37vLTI" id="2DPo4JTSPUw" role="3clFbG">
                <node concept="2OqwBi" id="2DPo4JTSQ7s" role="37vLTx">
                  <node concept="37vLTw" id="2DPo4JTSPXc" role="2Oq$k0">
                    <ref role="3cqZAo" node="2DPo4JTSPoh" resolve="prop" />
                  </node>
                  <node concept="3TrcHB" id="2DPo4JTSQmD" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2DPo4JTSPbi" role="37vLTJ">
                  <node concept="37vLTw" id="2DPo4JTSOM3" role="2Oq$k0">
                    <ref role="3cqZAo" node="2DPo4JTSOLZ" resolve="rel" />
                  </node>
                  <node concept="3TrcHB" id="2DPo4JTSPqM" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="Vo$tzLDqhu" role="3cqZAp">
              <node concept="2OqwBi" id="Vo$tzLDlVn" role="3clFbG">
                <node concept="37vLTw" id="Vo$tzLDlMa" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DPo4JTSOLZ" resolve="rel" />
                </node>
                <node concept="1OKiuA" id="Vo$tzLDqcy" role="2OqNvi">
                  <node concept="1Q80Hx" id="Vo$tzLDqoG" role="lBI5i" />
                  <node concept="2TlHUq" id="Vo$tzLDwji" role="lGT1i">
                    <ref role="2TlMyj" node="Vo$tzLDwhX" resolve="MEMBER" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="A1WHr" id="2DPo4JTSM69" role="AmTjC">
      <ref role="2ZyFGn" to="27wh:3JXBM6C3Cn8" resolve="Proposition" />
    </node>
  </node>
  <node concept="IW6AY" id="2DPo4JTT2gW">
    <property role="3GE5qa" value="sentence" />
    <ref role="aqKnT" to="bw37:2DPo4JTRwsI" resolve="Object" />
    <node concept="1Qtc8_" id="2DPo4JTT2gX" role="IW6Ez">
      <node concept="IWgqT" id="2DPo4JTT2gY" role="1Qtc8A">
        <node concept="1hCUdq" id="2DPo4JTT2gZ" role="1hCUd6">
          <node concept="3clFbS" id="2DPo4JTT2h0" role="2VODD2">
            <node concept="3clFbF" id="2DPo4JTT2h1" role="3cqZAp">
              <node concept="Xl_RD" id="2DPo4JTT2h2" role="3clFbG">
                <property role="Xl_RC" value="(" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="2DPo4JTT2h3" role="IWgqQ">
          <node concept="3clFbS" id="2DPo4JTT2h4" role="2VODD2">
            <node concept="3cpWs8" id="2DPo4JTT2h5" role="3cqZAp">
              <node concept="3cpWsn" id="2DPo4JTT2h6" role="3cpWs9">
                <property role="TrG5h" value="obj" />
                <node concept="3Tqbb2" id="2DPo4JTT2h7" role="1tU5fm">
                  <ref role="ehGHo" to="bw37:2DPo4JTRwsI" resolve="Object" />
                </node>
                <node concept="7Obwk" id="2DPo4JTT2h8" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="2DPo4JTT2h9" role="3cqZAp">
              <node concept="3cpWsn" id="2DPo4JTT2ha" role="3cpWs9">
                <property role="TrG5h" value="fun" />
                <node concept="3Tqbb2" id="2DPo4JTT2hb" role="1tU5fm">
                  <ref role="ehGHo" to="bw37:2DPo4JTRwsP" resolve="Function" />
                </node>
                <node concept="2OqwBi" id="2DPo4JTT2hc" role="33vP2m">
                  <node concept="37vLTw" id="2DPo4JTT2hd" role="2Oq$k0">
                    <ref role="3cqZAo" node="2DPo4JTT2h6" resolve="obj" />
                  </node>
                  <node concept="1_qnLN" id="2DPo4JTT2he" role="2OqNvi">
                    <ref role="1_rbq0" to="bw37:2DPo4JTRwsP" resolve="Function" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2DPo4JTT2hf" role="3cqZAp">
              <node concept="37vLTI" id="2DPo4JTT2hg" role="3clFbG">
                <node concept="2OqwBi" id="2DPo4JTT2hh" role="37vLTx">
                  <node concept="37vLTw" id="2DPo4JTT2hi" role="2Oq$k0">
                    <ref role="3cqZAo" node="2DPo4JTT2h6" resolve="obj" />
                  </node>
                  <node concept="3TrcHB" id="2DPo4JTT2hj" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2DPo4JTT2hk" role="37vLTJ">
                  <node concept="37vLTw" id="2DPo4JTT2hl" role="2Oq$k0">
                    <ref role="3cqZAo" node="2DPo4JTT2ha" resolve="fun" />
                  </node>
                  <node concept="3TrcHB" id="2DPo4JTT2hm" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="Vo$tzLDzt7" role="3cqZAp">
              <node concept="2OqwBi" id="Vo$tzLDzER" role="3clFbG">
                <node concept="37vLTw" id="Vo$tzLDzt5" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DPo4JTT2ha" resolve="fun" />
                </node>
                <node concept="1OKiuA" id="Vo$tzLD$4p" role="2OqNvi">
                  <node concept="1Q80Hx" id="Vo$tzLD$6T" role="lBI5i" />
                  <node concept="2TlHUq" id="Vo$tzLD$av" role="lGT1i">
                    <ref role="2TlMyj" node="Vo$tzLDz3Y" resolve="ARGUMENT" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="2DPo4JTT2hn" role="1Qtc8$">
        <node concept="CtIbL" id="2DPo4JTT2ho" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="2DPo4JTT9wr">
    <property role="TrG5h" value="Function_DeleteArguments" />
    <property role="3GE5qa" value="sentence" />
    <ref role="1h_SK9" to="bw37:2DPo4JTRwsP" resolve="Function" />
    <node concept="1hA7zw" id="2DPo4JTT9BG" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <property role="1hHO97" value="Delete argument list" />
      <node concept="1hAIg9" id="2DPo4JTT9BH" role="1hA7z_">
        <node concept="3clFbS" id="2DPo4JTT9BI" role="2VODD2">
          <node concept="3cpWs8" id="2DPo4JTTgFv" role="3cqZAp">
            <node concept="3cpWsn" id="2DPo4JTTgFw" role="3cpWs9">
              <property role="TrG5h" value="fun" />
              <node concept="3Tqbb2" id="2DPo4JTTgFu" role="1tU5fm">
                <ref role="ehGHo" to="bw37:2DPo4JTRwsP" resolve="Function" />
              </node>
              <node concept="0IXxy" id="2DPo4JTTgFx" role="33vP2m" />
            </node>
          </node>
          <node concept="3cpWs8" id="2DPo4JTTft8" role="3cqZAp">
            <node concept="3cpWsn" id="2DPo4JTTft9" role="3cpWs9">
              <property role="TrG5h" value="obj" />
              <node concept="3Tqbb2" id="2DPo4JTTft7" role="1tU5fm">
                <ref role="ehGHo" to="bw37:2DPo4JTRwsI" resolve="Object" />
              </node>
              <node concept="2OqwBi" id="2DPo4JTTfta" role="33vP2m">
                <node concept="37vLTw" id="2DPo4JTTgFy" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DPo4JTTgFw" resolve="fun" />
                </node>
                <node concept="1_qnLN" id="2DPo4JTTftc" role="2OqNvi">
                  <ref role="1_rbq0" to="bw37:2DPo4JTRwsI" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2DPo4JTTeSA" role="3cqZAp">
            <node concept="37vLTI" id="2DPo4JTTgCK" role="3clFbG">
              <node concept="2OqwBi" id="2DPo4JTThk6" role="37vLTx">
                <node concept="37vLTw" id="2DPo4JTTgX9" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DPo4JTTgFw" resolve="fun" />
                </node>
                <node concept="3TrcHB" id="2DPo4JTThx0" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="2OqwBi" id="2DPo4JTTfBq" role="37vLTJ">
                <node concept="37vLTw" id="2DPo4JTTftd" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DPo4JTTft9" resolve="obj" />
                </node>
                <node concept="3TrcHB" id="2DPo4JTTfOj" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="2DPo4JTT9BU" role="jK8aL">
        <node concept="3clFbS" id="2DPo4JTT9BV" role="2VODD2">
          <node concept="3clFbF" id="2DPo4JTT9J4" role="3cqZAp">
            <node concept="2OqwBi" id="2DPo4JTTbSn" role="3clFbG">
              <node concept="2OqwBi" id="2DPo4JTT9WP" role="2Oq$k0">
                <node concept="0IXxy" id="2DPo4JTT9J3" role="2Oq$k0" />
                <node concept="3Tsc0h" id="2DPo4JTTagP" role="2OqNvi">
                  <ref role="3TtcxE" to="bw37:2DPo4JTRwtv" resolve="argument" />
                </node>
              </node>
              <node concept="1v1jN8" id="2DPo4JTTeIB" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="2DPo4JTTm8h">
    <property role="TrG5h" value="Relation_DeleteMembers" />
    <property role="3GE5qa" value="sentence" />
    <ref role="1h_SK9" to="bw37:2DPo4JTRwtx" resolve="Relation" />
    <node concept="1hA7zw" id="2DPo4JTTm8i" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <property role="1hHO97" value="Delete members list" />
      <node concept="1hAIg9" id="2DPo4JTTm8j" role="1hA7z_">
        <node concept="3clFbS" id="2DPo4JTTm8k" role="2VODD2">
          <node concept="3cpWs8" id="2DPo4JTTtnV" role="3cqZAp">
            <node concept="3cpWsn" id="2DPo4JTTtnW" role="3cpWs9">
              <property role="TrG5h" value="rel" />
              <node concept="3Tqbb2" id="2DPo4JTTtnU" role="1tU5fm">
                <ref role="ehGHo" to="bw37:2DPo4JTRwtx" resolve="Relation" />
              </node>
              <node concept="0IXxy" id="2DPo4JTTtnX" role="33vP2m" />
            </node>
          </node>
          <node concept="3cpWs8" id="2DPo4JTTsed" role="3cqZAp">
            <node concept="3cpWsn" id="2DPo4JTTsee" role="3cpWs9">
              <property role="TrG5h" value="prop" />
              <node concept="3Tqbb2" id="2DPo4JTTsea" role="1tU5fm">
                <ref role="ehGHo" to="27wh:3JXBM6C3Cn8" resolve="Proposition" />
              </node>
              <node concept="2OqwBi" id="2DPo4JTTsef" role="33vP2m">
                <node concept="37vLTw" id="2DPo4JTTtnY" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DPo4JTTtnW" resolve="rel" />
                </node>
                <node concept="1_qnLN" id="2DPo4JTTseh" role="2OqNvi">
                  <ref role="1_rbq0" to="27wh:3JXBM6C3Cn8" resolve="Proposition" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2DPo4JTTrBN" role="3cqZAp">
            <node concept="37vLTI" id="2DPo4JTTtlc" role="3clFbG">
              <node concept="2OqwBi" id="2DPo4JTTtUc" role="37vLTx">
                <node concept="37vLTw" id="2DPo4JTTtD_" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DPo4JTTtnW" resolve="rel" />
                </node>
                <node concept="3TrcHB" id="2DPo4JTTu76" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="2OqwBi" id="2DPo4JTTsnS" role="37vLTJ">
                <node concept="37vLTw" id="2DPo4JTTsei" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DPo4JTTsee" resolve="prop" />
                </node>
                <node concept="3TrcHB" id="2DPo4JTTs$L" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="2DPo4JTTm8w" role="jK8aL">
        <node concept="3clFbS" id="2DPo4JTTm8x" role="2VODD2">
          <node concept="3clFbF" id="2DPo4JTTmfE" role="3cqZAp">
            <node concept="2OqwBi" id="2DPo4JTTo_p" role="3clFbG">
              <node concept="2OqwBi" id="2DPo4JTTmtr" role="2Oq$k0">
                <node concept="0IXxy" id="2DPo4JTTmfD" role="2Oq$k0" />
                <node concept="3Tsc0h" id="2DPo4JTTmXR" role="2OqNvi">
                  <ref role="3TtcxE" to="bw37:2DPo4JTRwtF" resolve="member" />
                </node>
              </node>
              <node concept="1v1jN8" id="2DPo4JTTrtO" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="2DPo4JTTz2r">
    <property role="3GE5qa" value="sentence" />
    <ref role="aqKnT" to="bw37:2DPo4JTRwsI" resolve="Object" />
    <node concept="3eGOop" id="2DPo4JTTz6H" role="3ft7WO">
      <node concept="16NL0t" id="2DPo4JTTA7L" role="upBLP">
        <node concept="2h3Zct" id="2DPo4JTTAc9" role="16NL0q">
          <property role="2h4Kg1" value="object" />
        </node>
      </node>
      <node concept="ucgPf" id="2DPo4JTTz6J" role="3aKz83">
        <node concept="3clFbS" id="2DPo4JTTz6L" role="2VODD2">
          <node concept="3clFbF" id="2DPo4JTTBzU" role="3cqZAp">
            <node concept="2pJPEk" id="2DPo4JTTBzQ" role="3clFbG">
              <node concept="2pJPED" id="2DPo4JTTBFc" role="2pJPEn">
                <ref role="2pJxaS" to="bw37:2DPo4JTRwsI" resolve="Object" />
                <node concept="2pJxcG" id="2DPo4JTTBNJ" role="2pJxcM">
                  <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                  <node concept="ub8z3" id="2DPo4JTTBU1" role="2pJxcZ" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="2DPo4JTTzaR" role="upBLP">
        <node concept="uGdhv" id="2DPo4JTTzeW" role="16NeZM">
          <node concept="3clFbS" id="2DPo4JTTzeY" role="2VODD2">
            <node concept="1QpiS5" id="2DPo4JTTzCi" role="3cqZAp">
              <node concept="1Qi9sc" id="2DPo4JTTzCk" role="1YN4dH">
                <node concept="1OClNT" id="2DPo4JTTZ2x" role="1QigWp">
                  <node concept="1SYyG9" id="2DPo4JTTRb8" role="1OLDsb">
                    <ref role="1SYXPG" to="tpfp:h5SUPxr" resolve="\p{Lower}" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2DPo4JTTzCm" role="1Qpmdr">
                <node concept="3cpWs6" id="2DPo4JTT$ar" role="3cqZAp">
                  <node concept="ub8z3" id="2DPo4JTT$rf" role="3cqZAk" />
                </node>
              </node>
              <node concept="ub8z3" id="2DPo4JTTzL0" role="1QpSPf" />
            </node>
            <node concept="3cpWs6" id="2DPo4JTT$Gx" role="3cqZAp">
              <node concept="Xl_RD" id="2DPo4JTT$XY" role="3cqZAk">
                <property role="Xl_RC" value="&lt;name&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="2DPo4JTTRkl">
    <property role="3GE5qa" value="sentence" />
    <ref role="aqKnT" to="bw37:2DPo4JTRwsM" resolve="Variable" />
    <node concept="3eGOop" id="2DPo4JTTRkm" role="3ft7WO">
      <node concept="16NL0t" id="2DPo4JTTRkn" role="upBLP">
        <node concept="2h3Zct" id="2DPo4JTTRko" role="16NL0q">
          <property role="2h4Kg1" value="variable" />
        </node>
      </node>
      <node concept="ucgPf" id="2DPo4JTTRkp" role="3aKz83">
        <node concept="3clFbS" id="2DPo4JTTRkq" role="2VODD2">
          <node concept="3clFbF" id="2DPo4JTTRkr" role="3cqZAp">
            <node concept="2pJPEk" id="2DPo4JTTRks" role="3clFbG">
              <node concept="2pJPED" id="2DPo4JTTRkt" role="2pJPEn">
                <ref role="2pJxaS" to="bw37:2DPo4JTRwsM" resolve="Variable" />
                <node concept="2pJxcG" id="2DPo4JTTRku" role="2pJxcM">
                  <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                  <node concept="ub8z3" id="2DPo4JTTRkv" role="2pJxcZ" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="2DPo4JTTRkw" role="upBLP">
        <node concept="uGdhv" id="2DPo4JTTRkx" role="16NeZM">
          <node concept="3clFbS" id="2DPo4JTTRky" role="2VODD2">
            <node concept="1QpiS5" id="2DPo4JTTRkz" role="3cqZAp">
              <node concept="1Qi9sc" id="2DPo4JTTRk$" role="1YN4dH">
                <node concept="1OClNT" id="2DPo4JTTYGr" role="1QigWp">
                  <node concept="1SYyG9" id="2DPo4JTTRE7" role="1OLDsb">
                    <ref role="1SYXPG" to="tpfp:h5SUTG3" resolve="\p{Upper}" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2DPo4JTTRkA" role="1Qpmdr">
                <node concept="3cpWs6" id="2DPo4JTTRkB" role="3cqZAp">
                  <node concept="ub8z3" id="2DPo4JTTRkC" role="3cqZAk" />
                </node>
              </node>
              <node concept="ub8z3" id="2DPo4JTTRkD" role="1QpSPf" />
            </node>
            <node concept="3cpWs6" id="2DPo4JTTRkE" role="3cqZAp">
              <node concept="Xl_RD" id="2DPo4JTTRkF" role="3cqZAk">
                <property role="Xl_RC" value="&lt;name&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="Vo$tzLCAJL">
    <property role="3GE5qa" value="sentence" />
    <ref role="aqKnT" to="bw37:2DPo4JTRwtx" resolve="Relation" />
  </node>
  <node concept="3p36aQ" id="Vo$tzLDB3M">
    <property role="3GE5qa" value="sentence" />
    <ref role="aqKnT" to="bw37:2DPo4JTRwsP" resolve="Function" />
  </node>
  <node concept="24kQdi" id="3w0n0hzhND_">
    <property role="3GE5qa" value="proof" />
    <ref role="1XX52x" to="bw37:3w0n0hzg5do" resolve="HerbrandProof" />
    <node concept="3EZMnI" id="3JXBM6C3URi" role="2wV5jI">
      <node concept="PMmxH" id="3w0n0hzhNuL" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0A7n" id="3JXBM6C4h$I" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="3JXBM6C4h$R" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2AfSc6Jvjpp" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="ljvvj" id="2AfSc6Jvjpq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2AfSc6Jvjoy" role="3EZMnx">
        <ref role="1NtTu8" to="jfgh:2AfSc6Jvjow" resolve="description" />
        <node concept="ljvvj" id="2AfSc6Jvjs0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="$u9BK__SIy" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="ljvvj" id="$u9BK__SJr" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="$u9BK__SDZ" role="3EZMnx">
        <node concept="ljvvj" id="$u9BK__SHA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="$u9BK__SE1" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="$u9BK__SFC" role="3EZMnx">
          <property role="3F0ifm" value="Goal:" />
        </node>
        <node concept="l2Vlx" id="$u9BK__SE4" role="2iSdaV" />
        <node concept="3F1sOY" id="$u9BK__SCz" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no goal&gt;" />
          <ref role="1NtTu8" to="jfgh:$u9BK__SAr" resolve="goal" />
        </node>
      </node>
      <node concept="3EZMnI" id="$u9BK__SGu" role="3EZMnx">
        <node concept="VPM3Z" id="$u9BK__SGw" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="ljvvj" id="$u9BK__SHv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="$u9BK__SHp" role="3EZMnx">
          <property role="3F0ifm" value="Proof:" />
        </node>
        <node concept="l2Vlx" id="$u9BK__SGz" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="$u9BK_yCN6" role="3EZMnx">
        <node concept="3EZMnI" id="$u9BK_z1QP" role="3EZMnx">
          <node concept="VPM3Z" id="$u9BK_z1QR" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="$u9BK_z1QU" role="2iSdaV" />
          <node concept="3EZMnI" id="$u9BK_z6et" role="3EZMnx">
            <node concept="l2Vlx" id="$u9BK_z6eu" role="2iSdaV" />
            <node concept="VPM3Z" id="$u9BK_z6ev" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F2HdR" id="$u9BK_z6ez" role="3EZMnx">
              <property role="2czwfO" value=" " />
              <ref role="1NtTu8" to="jfgh:3JXBM6C4wQA" resolve="content" />
              <node concept="l2Vlx" id="$u9BK_z6e$" role="2czzBx" />
              <node concept="tppnM" id="$u9BK_zt0T" role="sWeuL">
                <node concept="ljvvj" id="$u9BK_zt0V" role="3F10Kt">
                  <property role="VOm3f" value="true" />
                </node>
              </node>
              <node concept="2w$q5c" id="5RfK0kxj3Yz" role="78xua">
                <node concept="2aJ2om" id="5RfK0kxj3Y$" role="2w$qW5">
                  <ref role="2$4xQ3" to="8v9h:$u9BK_z27v" resolve="ID" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="$u9BK_yCN7" role="3EZMnx">
          <node concept="VPM3Z" id="$u9BK_yCN8" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="$u9BK_yCNa" role="2iSdaV" />
          <node concept="3EZMnI" id="3JXBM6C6j0E" role="3EZMnx">
            <node concept="VPM3Z" id="3JXBM6C6j0G" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="l2Vlx" id="3JXBM6C6j0J" role="2iSdaV" />
            <node concept="3F2HdR" id="3JXBM6C3URp" role="3EZMnx">
              <property role="2czwfO" value=" " />
              <ref role="1NtTu8" to="jfgh:3JXBM6C4wQA" resolve="content" />
              <node concept="l2Vlx" id="3JXBM6C3URr" role="2czzBx" />
              <node concept="tppnM" id="3JXBM6C3URw" role="sWeuL">
                <node concept="ljvvj" id="3JXBM6C3URy" role="3F10Kt">
                  <property role="VOm3f" value="true" />
                </node>
              </node>
              <node concept="3F0ifn" id="3JXBM6C3UR$" role="2czzBI">
                <property role="3F0ifm" value="" />
                <property role="ilYzB" value="&lt;no steps&gt;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="$u9BK_yCNb" role="2iSdaV" />
        <node concept="3EZMnI" id="$u9BK_zG5o" role="3EZMnx">
          <node concept="3EZMnI" id="$u9BK_$Qxk" role="3EZMnx">
            <node concept="l2Vlx" id="$u9BK_$Qxl" role="2iSdaV" />
            <node concept="VPM3Z" id="$u9BK_$Qxm" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F2HdR" id="$u9BK_$Qxn" role="3EZMnx">
              <property role="2czwfO" value=" " />
              <ref role="1NtTu8" to="jfgh:3JXBM6C4wQA" resolve="content" />
              <node concept="l2Vlx" id="$u9BK_$Qxo" role="2czzBx" />
              <node concept="tppnM" id="$u9BK_$Qxp" role="sWeuL">
                <node concept="ljvvj" id="$u9BK_$Qxq" role="3F10Kt">
                  <property role="VOm3f" value="true" />
                </node>
              </node>
              <node concept="2w$q5c" id="$u9BK_$QxA" role="78xua">
                <node concept="2aJ2om" id="$u9BK_$QxB" role="2w$qW5">
                  <ref role="2$4xQ3" to="8v9h:$u9BK_zG6f" resolve="BASIS" />
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="$u9BK_zG5q" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="$u9BK_zG5t" role="2iSdaV" />
        </node>
      </node>
      <node concept="l2Vlx" id="3JXBM6C3URl" role="2iSdaV" />
    </node>
  </node>
  <node concept="3p36aQ" id="3w0n0hzhNHg">
    <property role="3GE5qa" value="proof" />
    <ref role="aqKnT" to="bw37:3w0n0hzg5do" resolve="HerbrandProof" />
  </node>
  <node concept="PKFIW" id="4h0MmDW8b4o">
    <property role="3GE5qa" value="proof.rule" />
    <property role="TrG5h" value="ExistsElim_DOC" />
    <ref role="1XX52x" to="bw37:Vo$tzLEGtG" resolve="ExistsElim" />
    <node concept="3EZMnI" id="4h0MmDW8b4s" role="2wV5jI">
      <node concept="3F0ifn" id="4h0MmDW8b4z" role="3EZMnx">
        <property role="3F0ifm" value="Existential Elimination" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8b4A" role="3EZMnx" />
      <node concept="3F0ifn" id="4h0MmDW8b4D" role="3EZMnx">
        <property role="3F0ifm" value="Eliminator for existential quantifier (∃)." />
        <node concept="Vb9p2" id="4h0MmDW8b4H" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8b4J" role="3EZMnx">
        <property role="3F0ifm" value="Must have two bases (premises) : " />
        <node concept="Vb9p2" id="4h0MmDW8b4R" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8b4T" role="3EZMnx">
        <property role="3F0ifm" value="    first of the form (∃ X. SENTENCE)," />
        <node concept="Vb9p2" id="4h0MmDW8b4U" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8b53" role="3EZMnx">
        <property role="3F0ifm" value="    and second of the form (∀ Y. UNI_SENTENCE =&gt; CONCLUSION)," />
        <node concept="Vb9p2" id="4h0MmDW8b54" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8bOi" role="3EZMnx">
        <property role="3F0ifm" value="    where CONCLUSION is the judgement's conclusion." />
        <node concept="Vb9p2" id="4h0MmDW8bOu" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8bOw" role="3EZMnx">
        <property role="3F0ifm" value="SENTENCE must match UNI_SENTENCE after consistently replacing X with Y." />
        <node concept="Vb9p2" id="4h0MmDW8bPf" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8bOI" role="3EZMnx" />
      <node concept="3F0ifn" id="4h0MmDW8bOX" role="3EZMnx">
        <property role="3F0ifm" value="The variable must not occurr free in the conclusion." />
      </node>
      <node concept="2iRkQZ" id="4h0MmDW8b4v" role="2iSdaV" />
    </node>
    <node concept="1PE4EZ" id="4h0MmDW8b4q" role="1PM95z">
      <ref role="1PE7su" to="8v9h:4h0MmDW7NkU" resolve="Judgement_DOC" />
    </node>
  </node>
  <node concept="PKFIW" id="4h0MmDW8gM_">
    <property role="3GE5qa" value="proof.rule" />
    <property role="TrG5h" value="ExistsIntro_DOC" />
    <ref role="1XX52x" to="bw37:Vo$tzLEGtF" resolve="ExistsIntro" />
    <node concept="3EZMnI" id="4h0MmDW8gMD" role="2wV5jI">
      <node concept="3F0ifn" id="4h0MmDW8gMK" role="3EZMnx">
        <property role="3F0ifm" value="Existential Introduction" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8gMN" role="3EZMnx" />
      <node concept="3F0ifn" id="4h0MmDW8gMQ" role="3EZMnx">
        <property role="3F0ifm" value="Constructor for existential quantifier (∃)." />
        <node concept="Vb9p2" id="4h0MmDW8gMU" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8gMW" role="3EZMnx">
        <property role="3F0ifm" value="Must have one arbitrary basis (premise) : PREMISE." />
        <node concept="Vb9p2" id="4h0MmDW8gN2" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8gN4" role="3EZMnx">
        <property role="3F0ifm" value="Conclusion must match (∃ X. SENTENCE)," />
        <node concept="Vb9p2" id="4h0MmDW8gNl" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8gNc" role="3EZMnx">
        <property role="3F0ifm" value="    where SENTENCE must match PREMISE after consistently replacing X with a fresh variable." />
        <node concept="Vb9p2" id="4h0MmDW8gNn" role="3F10Kt" />
      </node>
      <node concept="2iRkQZ" id="4h0MmDW8gMG" role="2iSdaV" />
    </node>
    <node concept="1PE4EZ" id="4h0MmDW8gMB" role="1PM95z">
      <ref role="1PE7su" to="8v9h:4h0MmDW7NkU" resolve="Judgement_DOC" />
    </node>
  </node>
  <node concept="PKFIW" id="4h0MmDW8lQU">
    <property role="3GE5qa" value="proof.rule" />
    <property role="TrG5h" value="ForallElim_DOC" />
    <ref role="1XX52x" to="bw37:Vo$tzLEGtE" resolve="ForallElim" />
    <node concept="3EZMnI" id="4h0MmDW8lQY" role="2wV5jI">
      <node concept="3F0ifn" id="4h0MmDW8lX_" role="3EZMnx">
        <property role="3F0ifm" value="Universal Elimination" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8lXC" role="3EZMnx" />
      <node concept="3F0ifn" id="4h0MmDW8lXF" role="3EZMnx">
        <property role="3F0ifm" value="Eliminator for universal quantifier (∀)." />
        <node concept="Vb9p2" id="4h0MmDW8lXJ" role="3F10Kt">
          <property role="Vbekb" value="PLAIN" />
        </node>
      </node>
      <node concept="3F0ifn" id="4h0MmDW8lXL" role="3EZMnx">
        <property role="3F0ifm" value="Must have one basis (premise) : a universal sentence (∀ X.SENTENCE)," />
        <node concept="Vb9p2" id="4h0MmDW8lXY" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8lY0" role="3EZMnx">
        <property role="3F0ifm" value="    where SENTENCE must match the conclusion after consistently replacing X with a fresh variable." />
        <node concept="Vb9p2" id="4h0MmDW8lY9" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8lXR" role="3EZMnx" />
      <node concept="3F0ifn" id="4h0MmDW88XD" role="3EZMnx">
        <property role="3F0ifm" value="The following quotation describes what it means for a term to be free for a variable:" />
        <node concept="Vb9p2" id="4h0MmDW88Yj" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW88XQ" role="3EZMnx">
        <property role="3F0ifm" value="   &quot;a term t is free for a variable x in a sentence s if and only if" />
        <node concept="Vb9p2" id="4h0MmDW88Yl" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW88Y4" role="3EZMnx">
        <property role="3F0ifm" value="    no free occurrence of x occurs within the scope of a quantifier of some variable in t&quot;" />
        <node concept="Vb9p2" id="4h0MmDW88Yn" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8lYb" role="3EZMnx" />
      <node concept="2iRkQZ" id="4h0MmDW8lR1" role="2iSdaV" />
    </node>
    <node concept="1PE4EZ" id="4h0MmDW8lQW" role="1PM95z">
      <ref role="1PE7su" to="8v9h:4h0MmDW7NkU" resolve="Judgement_DOC" />
    </node>
  </node>
  <node concept="PKFIW" id="4h0MmDW8lZG">
    <property role="3GE5qa" value="proof.rule" />
    <property role="TrG5h" value="ForallIntro_DOC" />
    <ref role="1XX52x" to="bw37:Vo$tzLEGtD" resolve="ForallIntro" />
    <node concept="3EZMnI" id="4h0MmDW8lZK" role="2wV5jI">
      <node concept="3F0ifn" id="4h0MmDW8lZR" role="3EZMnx">
        <property role="3F0ifm" value="Universal Introduction" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8lZU" role="3EZMnx" />
      <node concept="3F0ifn" id="4h0MmDW8lZX" role="3EZMnx">
        <property role="3F0ifm" value="Constructor for universal quantifier (∀). " />
        <node concept="Vb9p2" id="4h0MmDW8m0$" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8m0l" role="3EZMnx">
        <property role="3F0ifm" value="Must have one basis (premise) PREMISE." />
        <node concept="Vb9p2" id="4h0MmDW8m1v" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8m0M" role="3EZMnx">
        <property role="3F0ifm" value="Conclusion must be of the form (∀ X.PREMISE)." />
        <node concept="Vb9p2" id="4h0MmDW8m1x" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8m0T" role="3EZMnx" />
      <node concept="3F0ifn" id="4h0MmDW8m1k" role="3EZMnx">
        <property role="3F0ifm" value="The following quote explains what it means for the quantified variable to be valid:" />
        <node concept="Vb9p2" id="4h0MmDW8m1B" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8m11" role="3EZMnx">
        <property role="3F0ifm" value="    &quot;if the variable being quantified appears in the sentence being quantified," />
        <node concept="Vb9p2" id="4h0MmDW8m1z" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW8m1a" role="3EZMnx">
        <property role="3F0ifm" value="    it must not appear free in any active assumption&quot;." />
        <node concept="Vb9p2" id="4h0MmDW8m1_" role="3F10Kt" />
      </node>
      <node concept="2iRkQZ" id="4h0MmDW8lZN" role="2iSdaV" />
    </node>
    <node concept="1PE4EZ" id="4h0MmDW8lZI" role="1PM95z">
      <ref role="1PE7su" to="8v9h:4h0MmDW7NkU" resolve="Judgement_DOC" />
    </node>
  </node>
</model>

