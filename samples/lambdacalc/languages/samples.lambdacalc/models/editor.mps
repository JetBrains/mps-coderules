<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a4cbccba-ea60-4d22-9e76-4b461414bf5b(samples.lambdacalc.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="-1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="8tt8" ref="r:e74c1bfc-387b-4b4b-abee-2eb77ee510ec(samples.lambdacalc.structure)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ng" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
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
      <concept id="6089045305654894366" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Default" flags="ng" index="2kknPJ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="1177327570013" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Substitute" flags="in" index="ucgPf" />
      <concept id="8478191136883534237" name="jetbrains.mps.lang.editor.structure.IExtensibleSubstituteMenuPart" flags="ng" index="upBLQ">
        <child id="8478191136883534238" name="features" index="upBLP" />
      </concept>
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
      </concept>
      <concept id="3473224453637651916" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder" flags="ng" index="CtIbL">
        <property id="3473224453637651917" name="placeInCell" index="CtIbK" />
      </concept>
      <concept id="1638911550608571617" name="jetbrains.mps.lang.editor.structure.TransformationMenu_Default" flags="ng" index="IW6AY" />
      <concept id="1638911550608610798" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute" flags="ig" index="IWg2L" />
      <concept id="1638911550608610278" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action" flags="ng" index="IWgqT">
        <child id="1638911550608610281" name="executeFunction" index="IWgqQ" />
        <child id="5692353713941573325" name="textFunction" index="1hCUd6" />
      </concept>
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="615427434521884870" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Subconcepts" flags="ng" index="2VfDsV" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
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
      <concept id="1896914160037421068" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_WrapSubstituteMenu" flags="ng" index="3c8P5G">
        <child id="1896914160037421069" name="menuReference" index="3c8P5H" />
        <child id="1896914160037423677" name="handler" index="3c8PHt" />
      </concept>
      <concept id="1896914160037423680" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_WrapperHandler" flags="ig" index="3c8PGw" />
      <concept id="1896914160037437306" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_CreatedNode" flags="ng" index="3c8USq" />
      <concept id="2896773699153795590" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform" flags="ng" index="3cWJ9i">
        <child id="3473224453637651919" name="placeInCell" index="CtIbM" />
      </concept>
      <concept id="7342352913006985483" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Action" flags="ng" index="3eGOop">
        <child id="8612453216082699922" name="substituteHandler" index="3aKz83" />
      </concept>
      <concept id="5692353713941573329" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText" flags="ig" index="1hCUdq" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1223386653097" name="jetbrains.mps.lang.editor.structure.StrikeOutStyleSheet" flags="ln" index="3nxI2P" />
      <concept id="3308396621974580100" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_Default" flags="ng" index="3p36aQ" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="7991336459489871999" name="jetbrains.mps.lang.editor.structure.IOutputConceptSubstituteMenuPart" flags="ng" index="3EoQpk">
        <reference id="7991336459489872009" name="outputConcept" index="3EoQqy" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
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
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
        <child id="7980428675268276159" name="parts" index="1Qtc8A" />
      </concept>
      <concept id="2722384699544370949" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Placeholder" flags="ng" index="3VyMlK" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872828" name="jetbrains.mps.lang.actions.structure.NF_Node_ReplaceWithNewOperation" flags="nn" index="2DeJnW" />
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC">
        <reference id="1139880128956" name="concept" index="1A9B2P" />
      </concept>
      <concept id="7504436213544206332" name="jetbrains.mps.lang.smodel.structure.Node_ContainingLinkOperation" flags="nn" index="2NL2c5" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1139867745658" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithNewOperation" flags="nn" index="1_qnLN">
        <reference id="1139867957129" name="concept" index="1_rbq0" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
    </language>
  </registry>
  <node concept="24kQdi" id="7_8aRkgDGQH">
    <ref role="1XX52x" to="8tt8:7_8aRkgDGQC" resolve="Doc" />
    <node concept="3EZMnI" id="7_8aRkgDGQJ" role="2wV5jI">
      <node concept="3F0A7n" id="7_8aRkgDGQU" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="7_8aRkgDGRh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7_8aRkgDGQX" role="3EZMnx">
        <property role="3F0ifm" value="--------" />
        <node concept="ljvvj" id="7_8aRkgDGRj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="7_8aRkgDGRl" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="8tt8:7_8aRkgDGQF" resolve="clause" />
        <node concept="l2Vlx" id="7_8aRkgDGRn" role="2czzBx" />
        <node concept="tppnM" id="7_8aRkgDGRu" role="sWeuL">
          <node concept="ljvvj" id="7_8aRkgDHAc" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="7_8aRkgDGRe" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7_8aRkgDHAk">
    <property role="3GE5qa" value="clause" />
    <ref role="1XX52x" to="8tt8:7_8aRkgDHAe" resolve="LetClause" />
    <node concept="3EZMnI" id="7_8aRkgDHAm" role="2wV5jI">
      <node concept="PMmxH" id="7_8aRkgDHAw" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F1sOY" id="2jleysRWVrR" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:2jleysRWVqE" resolve="binding" />
      </node>
      <node concept="l2Vlx" id="7_8aRkgDHAp" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7_8aRkgDHAX">
    <property role="3GE5qa" value="expr" />
    <ref role="1XX52x" to="8tt8:7_8aRkgDGPo" resolve="Var" />
    <node concept="3EZMnI" id="7_8aRkgDHAZ" role="2wV5jI">
      <node concept="3F0A7n" id="7_8aRkgDHB9" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="7_8aRkgDHB2" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7_8aRkgE07J">
    <property role="3GE5qa" value="expr.fun" />
    <ref role="1XX52x" to="8tt8:7_8aRkgDGQf" resolve="Lam" />
    <node concept="3EZMnI" id="7_8aRkgE07L" role="2wV5jI">
      <node concept="3F0ifn" id="7_8aRkgE07S" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="3mYdg7" id="492bFERnOR6" role="3F10Kt">
          <property role="1413C4" value="abs" />
        </node>
        <node concept="1X3_iC" id="1IKbs5Xpc7S" role="lGtFl">
          <property role="3V$3am" value="styleItem" />
          <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1219418625346/1219418656006" />
          <node concept="11LMrY" id="1IKbs5XoJv9" role="8Wnug">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="7_8aRkgF1Cc" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:7_8aRkgDGQg" resolve="binding" />
      </node>
      <node concept="3F0ifn" id="7_8aRkgE086" role="3EZMnx">
        <property role="3F0ifm" value="→" />
      </node>
      <node concept="3F1sOY" id="7_8aRkgE08J" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:7_8aRkgDGQl" resolve="expr" />
      </node>
      <node concept="3F0ifn" id="7_8aRkgE07Y" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="3mYdg7" id="492bFERnOVm" role="3F10Kt">
          <property role="1413C4" value="abs" />
        </node>
        <node concept="1X3_iC" id="1IKbs5Xpc7X" role="lGtFl">
          <property role="3V$3am" value="styleItem" />
          <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1219418625346/1219418656006" />
          <node concept="11L4FC" id="1IKbs5XoJvg" role="8Wnug">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="7_8aRkgE07O" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7_8aRkgE08o">
    <property role="3GE5qa" value="expr.fun" />
    <ref role="1XX52x" to="8tt8:7_8aRkgDGQi" resolve="LamVarBind" />
    <node concept="3EZMnI" id="7_8aRkgE08q" role="2wV5jI">
      <node concept="3F0ifn" id="492bFERnr4S" role="3EZMnx">
        <property role="3F0ifm" value="\" />
        <node concept="11LMrY" id="1IKbs5Xobo_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7_8aRkgE08x" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:7_8aRkgDGQj" resolve="var" />
      </node>
      <node concept="l2Vlx" id="7_8aRkgE08t" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7_8aRkgE08R">
    <property role="3GE5qa" value="expr.fun" />
    <ref role="1XX52x" to="8tt8:7_8aRkgDGPK" resolve="App" />
    <node concept="3EZMnI" id="7_8aRkgE08T" role="2wV5jI">
      <node concept="3F0ifn" id="7_8aRkgE2tK" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="3mYdg7" id="492bFERnM4N" role="3F10Kt">
          <property role="1413C4" value="app" />
        </node>
        <node concept="pkWqt" id="492bFERnRAy" role="pqm2j">
          <node concept="3clFbS" id="492bFERnRAz" role="2VODD2">
            <node concept="3clFbF" id="3GEs5q$Y1lK" role="3cqZAp">
              <node concept="17R0WA" id="3GEs5q$Y55P" role="3clFbG">
                <node concept="359W_D" id="3GEs5q$Y6bW" role="3uHU7w">
                  <ref role="359W_E" to="8tt8:7_8aRkgDGPK" resolve="App" />
                  <ref role="359W_F" to="8tt8:7_8aRkgDGPX" resolve="arg" />
                </node>
                <node concept="2OqwBi" id="3GEs5q$Y1$u" role="3uHU7B">
                  <node concept="pncrf" id="3GEs5q$Y1lI" role="2Oq$k0" />
                  <node concept="2NL2c5" id="3GEs5q$Y2gV" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="7_8aRkgE090" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:7_8aRkgDGPL" resolve="fun" />
      </node>
      <node concept="3F0ifn" id="4ZByBOoFhg_" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="11L4FC" id="1IKbs5Xoxaq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="1IKbs5Xoxav" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7_8aRkgE096" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:7_8aRkgDGPX" resolve="arg" />
      </node>
      <node concept="3F0ifn" id="7_8aRkgE2tU" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="3mYdg7" id="492bFERnM93" role="3F10Kt">
          <property role="1413C4" value="app" />
        </node>
        <node concept="pkWqt" id="492bFERo0eS" role="pqm2j">
          <node concept="3clFbS" id="492bFERo0eT" role="2VODD2">
            <node concept="3clFbF" id="3GEs5q$Y91p" role="3cqZAp">
              <node concept="17R0WA" id="3GEs5q$YbMB" role="3clFbG">
                <node concept="359W_D" id="3GEs5q$Ycuo" role="3uHU7w">
                  <ref role="359W_E" to="8tt8:7_8aRkgDGPK" resolve="App" />
                  <ref role="359W_F" to="8tt8:7_8aRkgDGPX" resolve="arg" />
                </node>
                <node concept="2OqwBi" id="3GEs5q$Y9g4" role="3uHU7B">
                  <node concept="pncrf" id="3GEs5q$Y91n" role="2Oq$k0" />
                  <node concept="2NL2c5" id="3GEs5q$Y9Wd" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="7_8aRkgE08W" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7_8aRkgEZ_Z">
    <property role="3GE5qa" value="clause" />
    <ref role="1XX52x" to="8tt8:7_8aRkgEZ_W" resolve="ExprClause" />
    <node concept="3EZMnI" id="7_8aRkgEZA1" role="2wV5jI">
      <node concept="3F1sOY" id="7_8aRkgEZA8" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:7_8aRkgEZ_X" resolve="expr" />
      </node>
      <node concept="l2Vlx" id="7_8aRkgEZA4" role="2iSdaV" />
    </node>
  </node>
  <node concept="3p36aQ" id="7_8aRkgF2KR">
    <property role="3GE5qa" value="expr" />
    <ref role="aqKnT" to="8tt8:7_8aRkgDGPJ" resolve="Expr" />
    <node concept="2VfDsV" id="3TFdEPZePt6" role="3ft7WO" />
    <node concept="3VyMlK" id="1IKbs5Xe$t0" role="3ft7WO" />
    <node concept="3eGOop" id="3TFdEPZevr9" role="3ft7WO">
      <ref role="3EoQqy" to="8tt8:7_8aRkgDGQf" resolve="Lam" />
      <node concept="ucgPf" id="3TFdEPZevra" role="3aKz83">
        <node concept="3clFbS" id="3TFdEPZevrb" role="2VODD2">
          <node concept="3cpWs8" id="3TFdEPZevrc" role="3cqZAp">
            <node concept="3cpWsn" id="3TFdEPZevrd" role="3cpWs9">
              <property role="TrG5h" value="lam" />
              <node concept="3Tqbb2" id="3TFdEPZevre" role="1tU5fm">
                <ref role="ehGHo" to="8tt8:7_8aRkgDGQf" resolve="Lam" />
              </node>
              <node concept="2ShNRf" id="3TFdEPZevrf" role="33vP2m">
                <node concept="3zrR0B" id="3TFdEPZevrg" role="2ShVmc">
                  <node concept="3Tqbb2" id="3TFdEPZevrh" role="3zrR0E">
                    <ref role="ehGHo" to="8tt8:7_8aRkgDGQf" resolve="Lam" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3TFdEPZevri" role="3cqZAp">
            <node concept="3cpWsn" id="3TFdEPZevrj" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3Tqbb2" id="3TFdEPZevrk" role="1tU5fm">
                <ref role="ehGHo" to="8tt8:7_8aRkgDGQi" resolve="LamVarBind" />
              </node>
              <node concept="2OqwBi" id="3TFdEPZevrl" role="33vP2m">
                <node concept="2OqwBi" id="3TFdEPZevrm" role="2Oq$k0">
                  <node concept="37vLTw" id="3TFdEPZevrn" role="2Oq$k0">
                    <ref role="3cqZAo" node="3TFdEPZevrd" resolve="lam" />
                  </node>
                  <node concept="3TrEf2" id="3TFdEPZevro" role="2OqNvi">
                    <ref role="3Tt5mk" to="8tt8:7_8aRkgDGQg" resolve="binding" />
                  </node>
                </node>
                <node concept="2DeJnY" id="3TFdEPZevrp" role="2OqNvi">
                  <ref role="1A9B2P" to="8tt8:7_8aRkgDGQi" resolve="LamVarBind" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3TFdEPZevrq" role="3cqZAp">
            <node concept="37vLTw" id="3TFdEPZevrr" role="3clFbG">
              <ref role="3cqZAo" node="3TFdEPZevrd" resolve="lam" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NL0t" id="3TFdEPZeEyZ" role="upBLP">
        <node concept="2h3Zct" id="3TFdEPZeEB3" role="16NL0q">
          <property role="2h4Kg1" value="lambda" />
        </node>
      </node>
      <node concept="16NfWO" id="3TFdEPZeEq0" role="upBLP">
        <node concept="2h3Zct" id="3TFdEPZeEu1" role="16NeZM">
          <property role="2h4Kg1" value="\\" />
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="1IKbs5X9ofz" role="3ft7WO" />
    <node concept="3eGOop" id="1IKbs5X9o79" role="3ft7WO">
      <ref role="3EoQqy" to="8tt8:JqEP$8fvqm" resolve="AnnExpr" />
      <node concept="ucgPf" id="1IKbs5X9o7b" role="3aKz83">
        <node concept="3clFbS" id="1IKbs5X9o7d" role="2VODD2">
          <node concept="3clFbF" id="1IKbs5X9oG6" role="3cqZAp">
            <node concept="2ShNRf" id="1IKbs5X9oG4" role="3clFbG">
              <node concept="3zrR0B" id="1IKbs5X9oUr" role="2ShVmc">
                <node concept="3Tqbb2" id="1IKbs5X9oUt" role="3zrR0E">
                  <ref role="ehGHo" to="8tt8:JqEP$8fvqm" resolve="AnnExpr" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NL0t" id="1IKbs5X9owg" role="upBLP">
        <node concept="2h3Zct" id="1IKbs5X9o$9" role="16NL0q">
          <property role="2h4Kg1" value="annotation" />
        </node>
      </node>
      <node concept="16NfWO" id="1IKbs5X9oC5" role="upBLP">
        <node concept="2h3Zct" id="1IKbs5X9oG1" role="16NeZM">
          <property role="2h4Kg1" value="::" />
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="1IKbs5X9onT" role="3ft7WO" />
    <node concept="3eGOop" id="1IKbs5X9n8j" role="3ft7WO">
      <ref role="3EoQqy" to="8tt8:JqEP$8sgV5" resolve="Pair" />
      <node concept="ucgPf" id="1IKbs5X9n8l" role="3aKz83">
        <node concept="3clFbS" id="1IKbs5X9n8n" role="2VODD2">
          <node concept="3clFbF" id="1IKbs5X9nhp" role="3cqZAp">
            <node concept="2ShNRf" id="1IKbs5X9nhn" role="3clFbG">
              <node concept="3zrR0B" id="1IKbs5X9nvY" role="2ShVmc">
                <node concept="3Tqbb2" id="1IKbs5X9nw0" role="3zrR0E">
                  <ref role="ehGHo" to="8tt8:JqEP$8sgV5" resolve="Pair" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NL0t" id="1IKbs5X9nGn" role="upBLP">
        <node concept="2h3Zct" id="1IKbs5X9nTn" role="16NL0q">
          <property role="2h4Kg1" value="pair" />
        </node>
      </node>
      <node concept="16NfWO" id="1IKbs5X9nXK" role="upBLP">
        <node concept="2h3Zct" id="1IKbs5X9o29" role="16NeZM">
          <property role="2h4Kg1" value="(" />
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="PORTCHQept" role="3ft7WO" />
  </node>
  <node concept="IW6AY" id="7_8aRkgF6Dj">
    <property role="3GE5qa" value="expr" />
    <ref role="aqKnT" to="8tt8:7_8aRkgDGPJ" resolve="Expr" />
    <node concept="1Qtc8_" id="7_8aRkgF6Dk" role="IW6Ez">
      <node concept="3cWJ9i" id="7_8aRkgF6Do" role="1Qtc8$">
        <node concept="CtIbL" id="7_8aRkgF6Dq" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="7_8aRkgFP5Q" role="1Qtc8A">
        <node concept="1hCUdq" id="7_8aRkgFP5R" role="1hCUd6">
          <node concept="3clFbS" id="7_8aRkgFP5S" role="2VODD2">
            <node concept="3clFbF" id="7_8aRkgFPeu" role="3cqZAp">
              <node concept="Xl_RD" id="7_8aRkgFPet" role="3clFbG">
                <property role="Xl_RC" value="application" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="7_8aRkgFP5T" role="IWgqQ">
          <node concept="3clFbS" id="7_8aRkgFP5U" role="2VODD2">
            <node concept="3cpWs8" id="7_8aRkgFQft" role="3cqZAp">
              <node concept="3cpWsn" id="7_8aRkgFQfu" role="3cpWs9">
                <property role="TrG5h" value="app" />
                <node concept="3Tqbb2" id="7_8aRkgFQfr" role="1tU5fm">
                  <ref role="ehGHo" to="8tt8:7_8aRkgDGPK" resolve="App" />
                </node>
                <node concept="2OqwBi" id="7_8aRkgFQfv" role="33vP2m">
                  <node concept="7Obwk" id="7_8aRkgFQfw" role="2Oq$k0" />
                  <node concept="2DeJnW" id="7_8aRkgGPqR" role="2OqNvi">
                    <ref role="1_rbq0" to="8tt8:7_8aRkgDGPK" resolve="App" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7_8aRkgFPCl" role="3cqZAp">
              <node concept="2OqwBi" id="7_8aRkgFQQn" role="3clFbG">
                <node concept="2OqwBi" id="7_8aRkgFQoa" role="2Oq$k0">
                  <node concept="37vLTw" id="7_8aRkgFQfy" role="2Oq$k0">
                    <ref role="3cqZAo" node="7_8aRkgFQfu" resolve="app" />
                  </node>
                  <node concept="3TrEf2" id="7_8aRkgFQyW" role="2OqNvi">
                    <ref role="3Tt5mk" to="8tt8:7_8aRkgDGPL" resolve="fun" />
                  </node>
                </node>
                <node concept="2oxUTD" id="7_8aRkgFRdw" role="2OqNvi">
                  <node concept="7Obwk" id="7_8aRkgFRe8" role="2oxUTC" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3c8P5G" id="7_8aRkgH0zp" role="1Qtc8A">
        <node concept="2kknPJ" id="7_8aRkgH0AM" role="3c8P5H">
          <ref role="2ZyFGn" to="8tt8:7_zMfd$ooor" resolve="VarRef" />
        </node>
        <node concept="3c8PGw" id="7_8aRkgH0zs" role="3c8PHt">
          <node concept="3clFbS" id="7_8aRkgH0zu" role="2VODD2">
            <node concept="3cpWs8" id="7_8aRkgHxhN" role="3cqZAp">
              <node concept="3cpWsn" id="7_8aRkgHxhO" role="3cpWs9">
                <property role="TrG5h" value="app" />
                <node concept="3Tqbb2" id="7_8aRkgHxhP" role="1tU5fm">
                  <ref role="ehGHo" to="8tt8:7_8aRkgDGPK" resolve="App" />
                </node>
                <node concept="2OqwBi" id="7_8aRkgHxhQ" role="33vP2m">
                  <node concept="7Obwk" id="7_8aRkgHxhR" role="2Oq$k0" />
                  <node concept="2DeJnW" id="7_8aRkgHxhS" role="2OqNvi">
                    <ref role="1_rbq0" to="8tt8:7_8aRkgDGPK" resolve="App" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7_8aRkgHxhT" role="3cqZAp">
              <node concept="2OqwBi" id="7_8aRkgHxhU" role="3clFbG">
                <node concept="2OqwBi" id="7_8aRkgHxhV" role="2Oq$k0">
                  <node concept="37vLTw" id="7_8aRkgHxhW" role="2Oq$k0">
                    <ref role="3cqZAo" node="7_8aRkgHxhO" resolve="app" />
                  </node>
                  <node concept="3TrEf2" id="7_8aRkgHxhX" role="2OqNvi">
                    <ref role="3Tt5mk" to="8tt8:7_8aRkgDGPL" resolve="fun" />
                  </node>
                </node>
                <node concept="2oxUTD" id="7_8aRkgHxhY" role="2OqNvi">
                  <node concept="7Obwk" id="7_8aRkgHxhZ" role="2oxUTC" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7_8aRkgHxo0" role="3cqZAp">
              <node concept="2OqwBi" id="7_8aRkgHycJ" role="3clFbG">
                <node concept="2OqwBi" id="7_8aRkgHxxS" role="2Oq$k0">
                  <node concept="37vLTw" id="7_8aRkgHxnY" role="2Oq$k0">
                    <ref role="3cqZAo" node="7_8aRkgHxhO" resolve="app" />
                  </node>
                  <node concept="3TrEf2" id="7_8aRkgHxTk" role="2OqNvi">
                    <ref role="3Tt5mk" to="8tt8:7_8aRkgDGPX" resolve="arg" />
                  </node>
                </node>
                <node concept="2oxUTD" id="7_8aRkgHyzQ" role="2OqNvi">
                  <node concept="3c8USq" id="7_8aRkgHyA6" role="2oxUTC" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7_8aRkgHyKD" role="3cqZAp">
              <node concept="2OqwBi" id="7_8aRkgHyZB" role="3clFbG">
                <node concept="3c8USq" id="7_8aRkgHyKB" role="2Oq$k0" />
                <node concept="1OKiuA" id="7_8aRkgHznQ" role="2OqNvi">
                  <node concept="1Q80Hx" id="7_8aRkgHzrr" role="lBI5i" />
                  <node concept="2B6iha" id="7_8aRkgHB0P" role="lGT1i">
                    <property role="1lyBwo" value="firstEditable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7_8aRkgFwkP">
    <property role="3GE5qa" value="expr.let" />
    <ref role="1XX52x" to="8tt8:7_8aRkgDGQo" resolve="LetExpr" />
    <node concept="3EZMnI" id="7_8aRkgFwkR" role="2wV5jI">
      <node concept="3F0ifn" id="7_8aRkgFwkY" role="3EZMnx">
        <property role="3F0ifm" value="let" />
      </node>
      <node concept="3F1sOY" id="7_8aRkgFwlQ" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:7_8aRkgDGQv" resolve="binding" />
        <node concept="3nxI2P" id="2jleysRW3xP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7_8aRkgFwlf" role="3EZMnx">
        <property role="3F0ifm" value="in" />
      </node>
      <node concept="3F1sOY" id="7_8aRkgFwlr" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:7_8aRkgDGQx" resolve="expr" />
      </node>
      <node concept="l2Vlx" id="7_8aRkgFwkU" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7_8aRkgFz03">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="8tt8:7_8aRkgDGQp" resolve="LetVarBind" />
    <node concept="3EZMnI" id="7_8aRkgFz05" role="2wV5jI">
      <node concept="3F1sOY" id="7_8aRkgFz0f" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:7_8aRkgDGQq" resolve="var" />
      </node>
      <node concept="3F0ifn" id="7_8aRkgFz0l" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F1sOY" id="7_8aRkgFz0y" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:7_8aRkgDGQs" resolve="expr" />
      </node>
      <node concept="l2Vlx" id="7_8aRkgFz08" role="2iSdaV" />
    </node>
  </node>
  <node concept="3p36aQ" id="7_8aRkgGm38">
    <property role="3GE5qa" value="clause" />
    <ref role="aqKnT" to="8tt8:7_8aRkgEZ_W" resolve="ExprClause" />
    <node concept="3N5dw7" id="7_8aRkgGm3e" role="3ft7WO">
      <node concept="3N5aqt" id="7_8aRkgGm3f" role="3Na0zg">
        <node concept="3clFbS" id="7_8aRkgGm3g" role="2VODD2">
          <node concept="3cpWs8" id="7_8aRkgGmEn" role="3cqZAp">
            <node concept="3cpWsn" id="7_8aRkgGmEo" role="3cpWs9">
              <property role="TrG5h" value="ec" />
              <node concept="3Tqbb2" id="7_8aRkgGmEm" role="1tU5fm">
                <ref role="ehGHo" to="8tt8:7_8aRkgEZ_W" resolve="ExprClause" />
              </node>
              <node concept="2ShNRf" id="7_8aRkgGmEp" role="33vP2m">
                <node concept="3zrR0B" id="7_8aRkgGmEq" role="2ShVmc">
                  <node concept="3Tqbb2" id="7_8aRkgGmEr" role="3zrR0E">
                    <ref role="ehGHo" to="8tt8:7_8aRkgEZ_W" resolve="ExprClause" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7_8aRkgGmeF" role="3cqZAp">
            <node concept="37vLTI" id="7_8aRkgGnLV" role="3clFbG">
              <node concept="3N4pyC" id="7_8aRkgGnVw" role="37vLTx" />
              <node concept="2OqwBi" id="7_8aRkgGn28" role="37vLTJ">
                <node concept="37vLTw" id="7_8aRkgGmEs" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_8aRkgGmEo" resolve="ec" />
                </node>
                <node concept="3TrEf2" id="7_8aRkgGngC" role="2OqNvi">
                  <ref role="3Tt5mk" to="8tt8:7_8aRkgEZ_X" resolve="expr" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7_8aRkgGocU" role="3cqZAp">
            <node concept="37vLTw" id="7_8aRkgGocS" role="3clFbG">
              <ref role="3cqZAo" node="7_8aRkgGmEo" resolve="ec" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2kknPJ" id="7_8aRkgGm77" role="2klrvf">
        <ref role="2ZyFGn" to="8tt8:7_8aRkgDGPJ" resolve="Expr" />
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="7_8aRkgHI81">
    <property role="3GE5qa" value="expr.fun" />
    <ref role="aqKnT" to="8tt8:7_8aRkgDGQf" resolve="Lam" />
  </node>
  <node concept="3p36aQ" id="7_8aRkgHI8t">
    <property role="3GE5qa" value="expr.fun" />
    <ref role="aqKnT" to="8tt8:7_8aRkgDGPK" resolve="App" />
  </node>
  <node concept="24kQdi" id="3_qfG1EP6Og">
    <property role="3GE5qa" value="type" />
    <ref role="1XX52x" to="8tt8:3_qfG1EP6Of" resolve="FunType" />
    <node concept="3EZMnI" id="3_qfG1EP6Oi" role="2wV5jI">
      <node concept="3F0ifn" id="4rRw8_AvxCu" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="pkWqt" id="4rRw8_AvxCL" role="pqm2j">
          <node concept="3clFbS" id="4rRw8_AvxCM" role="2VODD2">
            <node concept="3clFbF" id="3GEs5q$YtMx" role="3cqZAp">
              <node concept="17R0WA" id="3GEs5q$Ywqc" role="3clFbG">
                <node concept="359W_D" id="3GEs5q$Yx69" role="3uHU7w">
                  <ref role="359W_E" to="8tt8:3_qfG1EP6Of" resolve="FunType" />
                  <ref role="359W_F" to="8tt8:3_qfG1EP6Op" resolve="argType" />
                </node>
                <node concept="2OqwBi" id="3GEs5q$Yu0t" role="3uHU7B">
                  <node concept="pncrf" id="3GEs5q$YtMv" role="2Oq$k0" />
                  <node concept="2NL2c5" id="3GEs5q$YuOa" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3mYdg7" id="492bFERo4qM" role="3F10Kt">
          <property role="1413C4" value="fun" />
        </node>
      </node>
      <node concept="3F1sOY" id="3_qfG1EP6OC" role="3EZMnx">
        <property role="1$x2rV" value="?" />
        <ref role="1NtTu8" to="8tt8:3_qfG1EP6Op" resolve="argType" />
      </node>
      <node concept="3F0ifn" id="3_qfG1EP6OI" role="3EZMnx">
        <property role="3F0ifm" value="→" />
      </node>
      <node concept="3F1sOY" id="3_qfG1EP6OV" role="3EZMnx">
        <property role="1$x2rV" value="?" />
        <ref role="1NtTu8" to="8tt8:3_qfG1EP6O_" resolve="resType" />
      </node>
      <node concept="3F0ifn" id="4rRw8_AvxCE" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="pkWqt" id="4rRw8_Av_at" role="pqm2j">
          <node concept="3clFbS" id="4rRw8_Av_au" role="2VODD2">
            <node concept="3clFbF" id="3GEs5q$Yzjl" role="3cqZAp">
              <node concept="17R0WA" id="3GEs5q$Y_Oh" role="3clFbG">
                <node concept="359W_D" id="3GEs5q$YAGV" role="3uHU7w">
                  <ref role="359W_E" to="8tt8:3_qfG1EP6Of" resolve="FunType" />
                  <ref role="359W_F" to="8tt8:3_qfG1EP6Op" resolve="argType" />
                </node>
                <node concept="2OqwBi" id="3GEs5q$Yzxe" role="3uHU7B">
                  <node concept="pncrf" id="3GEs5q$Yzjj" role="2Oq$k0" />
                  <node concept="2NL2c5" id="3GEs5q$Y$o1" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3mYdg7" id="492bFERo4AB" role="3F10Kt">
          <property role="1413C4" value="fun" />
        </node>
      </node>
      <node concept="l2Vlx" id="3_qfG1EP6Ol" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="492bFERogng">
    <property role="3GE5qa" value="expr.const" />
    <ref role="1XX52x" to="8tt8:492bFERognf" resolve="True" />
    <node concept="3EZMnI" id="492bFERognr" role="2wV5jI">
      <node concept="PMmxH" id="492bFERogny" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="l2Vlx" id="492bFERognu" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="492bFERojSo">
    <property role="3GE5qa" value="expr.const" />
    <ref role="1XX52x" to="8tt8:492bFERojSn" resolve="False" />
    <node concept="3EZMnI" id="492bFERojSq" role="2wV5jI">
      <node concept="PMmxH" id="492bFERojSx" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="l2Vlx" id="492bFERojSt" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4dPZ2m2jEF0">
    <property role="3GE5qa" value="type" />
    <ref role="1XX52x" to="8tt8:492bFERodLp" resolve="BoolType" />
    <node concept="3EZMnI" id="4dPZ2m2jEF2" role="2wV5jI">
      <node concept="PMmxH" id="4dPZ2m2jEFc" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="l2Vlx" id="4dPZ2m2jEF5" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3g9UT2j9ItM">
    <property role="3GE5qa" value="type" />
    <ref role="1XX52x" to="8tt8:3g9UT2j9I06" resolve="VarType" />
    <node concept="3EZMnI" id="3g9UT2j9ItO" role="2wV5jI">
      <node concept="3F0A7n" id="3g9UT2j9ItV" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="3g9UT2j9ItR" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7_zMfd$ooou">
    <property role="3GE5qa" value="expr" />
    <ref role="1XX52x" to="8tt8:7_zMfd$ooor" resolve="VarRef" />
    <node concept="3EZMnI" id="7_zMfd$ooow" role="2wV5jI">
      <node concept="1iCGBv" id="7_zMfd$oooB" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:7_zMfd$ooos" resolve="def" />
        <node concept="1sVBvm" id="7_zMfd$oooD" role="1sWHZn">
          <node concept="3F0A7n" id="7_zMfd$oooK" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="7_zMfd$oooz" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="12dHl3ZCFav">
    <property role="3GE5qa" value="type" />
    <ref role="1XX52x" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
    <node concept="3EZMnI" id="12dHl3ZCFax" role="2wV5jI">
      <node concept="3F0ifn" id="48ZGLP8N$d2" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="pkWqt" id="48ZGLP8N$du" role="pqm2j">
          <node concept="3clFbS" id="48ZGLP8N$dv" role="2VODD2">
            <node concept="3clFbF" id="3GEs5q$YfH8" role="3cqZAp">
              <node concept="17R0WA" id="3GEs5q$YiCu" role="3clFbG">
                <node concept="359W_D" id="3GEs5q$YjH1" role="3uHU7w">
                  <ref role="359W_E" to="8tt8:3_qfG1EP6Of" resolve="FunType" />
                  <ref role="359W_F" to="8tt8:3_qfG1EP6Op" resolve="argType" />
                </node>
                <node concept="2OqwBi" id="3GEs5q$Yg1z" role="3uHU7B">
                  <node concept="pncrf" id="3GEs5q$YfH6" role="2Oq$k0" />
                  <node concept="2NL2c5" id="3GEs5q$YghD" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3mYdg7" id="1IKbs5XpCez" role="3F10Kt">
          <property role="1413C4" value="forallType" />
        </node>
        <node concept="11LMrY" id="1IKbs5XpDch" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="12dHl3ZCFaC" role="3EZMnx">
        <property role="3F0ifm" value="∀" />
      </node>
      <node concept="3F2HdR" id="48ZGLP7q1QZ" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="8tt8:48ZGLP7q1Qc" resolve="typeVars" />
        <node concept="2iRfu4" id="48ZGLP7q1R2" role="2czzBx" />
        <node concept="3F0ifn" id="2O9ahh6znK_" role="2czzBI">
          <property role="3F0ifm" value="#" />
          <node concept="11L4FC" id="2O9ahh6$Aef" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="2O9ahh6$8HT" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="48ZGLP7q1QP" role="3EZMnx">
        <property role="3F0ifm" value="." />
        <node concept="11L4FC" id="1IKbs5XoXAX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="1X3_iC" id="2O9ahh6pFz$" role="lGtFl">
          <property role="3V$3am" value="styleItem" />
          <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1219418625346/1219418656006" />
          <node concept="11LMrY" id="1IKbs5XHOf$" role="8Wnug">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2O9ahh6pli4" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="3mYdg7" id="2O9ahh6pGWd" role="3F10Kt">
          <property role="1413C4" value="forallConstraints" />
        </node>
        <node concept="pkWqt" id="2O9ahh6plyG" role="pqm2j">
          <node concept="3clFbS" id="2O9ahh6plyH" role="2VODD2">
            <node concept="3clFbF" id="2O9ahh6plE2" role="3cqZAp">
              <node concept="3eOSWO" id="2O9ahh6puDl" role="3clFbG">
                <node concept="3cmrfG" id="2O9ahh6puNL" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="2O9ahh6pouP" role="3uHU7B">
                  <node concept="2OqwBi" id="2O9ahh6plRh" role="2Oq$k0">
                    <node concept="pncrf" id="2O9ahh6plE1" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="2O9ahh6pmz$" role="2OqNvi">
                      <ref role="3TtcxE" to="8tt8:2O9ahh6mHw4" resolve="constraints" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="2O9ahh6psL7" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11L4FC" id="2O9ahh6pFzG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="2O9ahh6pFMs" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="2O9ahh6mHUN" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="8tt8:2O9ahh6mHw4" resolve="constraints" />
        <node concept="2iRfu4" id="2O9ahh6mIli" role="2czzBx" />
        <node concept="3F0ifn" id="2O9ahh6mIKo" role="2czzBI">
          <property role="3F0ifm" value="#" />
          <node concept="VPxyj" id="2O9ahh6pl1o" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11L4FC" id="2O9ahh6zTZs" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2O9ahh6pvFt" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="3mYdg7" id="2O9ahh6pHpJ" role="3F10Kt">
          <property role="1413C4" value="forallConstraints" />
        </node>
        <node concept="pkWqt" id="2O9ahh6pw25" role="pqm2j">
          <node concept="3clFbS" id="2O9ahh6pw26" role="2VODD2">
            <node concept="3clFbF" id="2O9ahh6pw9r" role="3cqZAp">
              <node concept="3eOSWO" id="2O9ahh6pEJs" role="3clFbG">
                <node concept="3cmrfG" id="2O9ahh6pETS" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="2O9ahh6p$RB" role="3uHU7B">
                  <node concept="2OqwBi" id="2O9ahh6pwmE" role="2Oq$k0">
                    <node concept="pncrf" id="2O9ahh6pw9q" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="2O9ahh6pxk2" role="2OqNvi">
                      <ref role="3TtcxE" to="8tt8:2O9ahh6mHw4" resolve="constraints" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="2O9ahh6pD9x" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="11L4FC" id="2O9ahh6pG1e" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="2O9ahh6pGuD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2O9ahh6mIKr" role="3EZMnx">
        <property role="3F0ifm" value="⇒" />
        <node concept="pkWqt" id="2O9ahh6mIXW" role="pqm2j">
          <node concept="3clFbS" id="2O9ahh6mIXX" role="2VODD2">
            <node concept="3clFbF" id="2O9ahh6mJ5i" role="3cqZAp">
              <node concept="3fqX7Q" id="2O9ahh6mOHR" role="3clFbG">
                <node concept="2OqwBi" id="2O9ahh6mOHT" role="3fr31v">
                  <node concept="2OqwBi" id="2O9ahh6mOHU" role="2Oq$k0">
                    <node concept="pncrf" id="2O9ahh6mOHV" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="2O9ahh6mOHW" role="2OqNvi">
                      <ref role="3TtcxE" to="8tt8:2O9ahh6mHw4" resolve="constraints" />
                    </node>
                  </node>
                  <node concept="1v1jN8" id="2O9ahh6mOHX" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="12dHl3ZCFaK" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:12dHl3ZCFaI" resolve="type" />
      </node>
      <node concept="l2Vlx" id="12dHl3ZCFa$" role="2iSdaV" />
      <node concept="3F0ifn" id="48ZGLP8N$di" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="pkWqt" id="48ZGLP8N$yl" role="pqm2j">
          <node concept="3clFbS" id="48ZGLP8N$ym" role="2VODD2">
            <node concept="3clFbF" id="3GEs5q$YnG3" role="3cqZAp">
              <node concept="17R0WA" id="3GEs5q$YqMj" role="3clFbG">
                <node concept="359W_D" id="3GEs5q$YrD_" role="3uHU7w">
                  <ref role="359W_E" to="8tt8:3_qfG1EP6Of" resolve="FunType" />
                  <ref role="359W_F" to="8tt8:3_qfG1EP6Op" resolve="argType" />
                </node>
                <node concept="2OqwBi" id="3GEs5q$YnTW" role="3uHU7B">
                  <node concept="pncrf" id="3GEs5q$YnG1" role="2Oq$k0" />
                  <node concept="2NL2c5" id="3GEs5q$YoHc" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3mYdg7" id="1IKbs5XpCqU" role="3F10Kt">
          <property role="1413C4" value="forallType" />
        </node>
        <node concept="11L4FC" id="1IKbs5XpCNz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1z4HGmnV7KW">
    <property role="3GE5qa" value="expr" />
    <ref role="1XX52x" to="8tt8:1z4HGmnV7K8" resolve="Fix" />
    <node concept="3EZMnI" id="1z4HGmnV7Lm" role="2wV5jI">
      <node concept="PMmxH" id="1z4HGmnV7Lz" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="l2Vlx" id="1z4HGmnV7Lp" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6_p$mL233Yl">
    <property role="3GE5qa" value="expr" />
    <ref role="1XX52x" to="8tt8:6_p$mL233Yk" resolve="IfThenElse" />
    <node concept="3EZMnI" id="6_p$mL233Yn" role="2wV5jI">
      <node concept="3F0ifn" id="6_p$mL233Yu" role="3EZMnx">
        <property role="3F0ifm" value="if" />
      </node>
      <node concept="3F1sOY" id="6_p$mL233Z9" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:6_p$mL233YL" resolve="cond" />
      </node>
      <node concept="3F0ifn" id="6_p$mL233Y$" role="3EZMnx">
        <property role="3F0ifm" value="then" />
      </node>
      <node concept="3F1sOY" id="6_p$mL233Zs" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:6_p$mL233YR" resolve="pos" />
      </node>
      <node concept="3F0ifn" id="6_p$mL233YG" role="3EZMnx">
        <property role="3F0ifm" value="else" />
      </node>
      <node concept="3F1sOY" id="6_p$mL233ZM" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:6_p$mL233YU" resolve="neg" />
      </node>
      <node concept="l2Vlx" id="6_p$mL233Yq" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="JqEP$8sgVj">
    <property role="3GE5qa" value="expr" />
    <ref role="1XX52x" to="8tt8:JqEP$8sgV5" resolve="Pair" />
    <node concept="3EZMnI" id="JqEP$8sgVl" role="2wV5jI">
      <node concept="3F0ifn" id="JqEP$8sgVC" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="3mYdg7" id="1IKbs5XpwYT" role="3F10Kt">
          <property role="1413C4" value="pair" />
        </node>
        <node concept="11LMrY" id="1IKbs5XmIX2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="JqEP$8sgWK" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:JqEP$8sgV6" resolve="fst" />
      </node>
      <node concept="3F0ifn" id="JqEP$8sgWv" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="1IKbs5XopKW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="JqEP$8sgVO" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:JqEP$8sgV8" resolve="snd" />
      </node>
      <node concept="3F0ifn" id="JqEP$8sgVI" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="3mYdg7" id="1IKbs5XpwZ0" role="3F10Kt">
          <property role="1413C4" value="pair" />
        </node>
        <node concept="11L4FC" id="1IKbs5XmIX5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="JqEP$8sgVo" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="JqEP$8fvqr">
    <property role="3GE5qa" value="expr" />
    <ref role="1XX52x" to="8tt8:JqEP$8fvqm" resolve="AnnExpr" />
    <node concept="3EZMnI" id="JqEP$8fvqt" role="2wV5jI">
      <node concept="3F0ifn" id="JqEP$8fvqB" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="3mYdg7" id="1IKbs5Xpq15" role="3F10Kt">
          <property role="1413C4" value="annExp" />
        </node>
        <node concept="11LMrY" id="1IKbs5Xpj3Y" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="JqEP$8fvr6" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:JqEP$8fvqp" resolve="expr" />
      </node>
      <node concept="3F0ifn" id="JqEP$8fvqZ" role="3EZMnx">
        <property role="3F0ifm" value="∷" />
      </node>
      <node concept="3F1sOY" id="JqEP$8fvrf" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:JqEP$8fvrd" resolve="ann" />
      </node>
      <node concept="3F0ifn" id="JqEP$8fvqJ" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="3mYdg7" id="1IKbs5Xpq1c" role="3F10Kt">
          <property role="1413C4" value="annExp" />
        </node>
        <node concept="11L4FC" id="1IKbs5Xpj40" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="JqEP$8fvqw" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="JqEP$8fvrr">
    <property role="3GE5qa" value="expr" />
    <ref role="1XX52x" to="8tt8:JqEP$8fvrm" resolve="AnnVar" />
    <node concept="3EZMnI" id="JqEP$8fvrt" role="2wV5jI">
      <node concept="3F0ifn" id="JqEP$8fvrK" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="3mYdg7" id="1IKbs5Xpq1j" role="3F10Kt">
          <property role="1413C4" value="annVar" />
        </node>
        <node concept="11LMrY" id="1IKbs5Xpj3U" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="JqEP$8gHP4" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:JqEP$8fvrp" resolve="var" />
      </node>
      <node concept="3F0ifn" id="JqEP$8fvsq" role="3EZMnx">
        <property role="3F0ifm" value="∷" />
      </node>
      <node concept="3F1sOY" id="JqEP$8fvsK" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:JqEP$8fvrd" resolve="ann" />
      </node>
      <node concept="3F0ifn" id="JqEP$8fvrQ" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="3mYdg7" id="1IKbs5Xpq1q" role="3F10Kt">
          <property role="1413C4" value="annVar" />
        </node>
        <node concept="11L4FC" id="1IKbs5Xpj3W" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="JqEP$8fvrw" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="JqEP$8shbp">
    <property role="3GE5qa" value="type" />
    <ref role="1XX52x" to="8tt8:JqEP$8shba" resolve="PairType" />
    <node concept="3EZMnI" id="JqEP$8shbr" role="2wV5jI">
      <node concept="3F0ifn" id="JqEP$8shbs" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="3mYdg7" id="1IKbs5XpwZ7" role="3F10Kt">
          <property role="1413C4" value="pairType" />
        </node>
        <node concept="11LMrY" id="1IKbs5Xp5bK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="JqEP$8shbt" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:JqEP$8shbd" resolve="fstType" />
      </node>
      <node concept="3F0ifn" id="JqEP$8shbu" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="1IKbs5Xp5bO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="JqEP$8shbv" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:JqEP$8shbb" resolve="sndType" />
      </node>
      <node concept="3F0ifn" id="JqEP$8shbw" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="3mYdg7" id="1IKbs5XpwZe" role="3F10Kt">
          <property role="1413C4" value="pairType" />
        </node>
        <node concept="11L4FC" id="1IKbs5Xp5bM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="JqEP$8shbx" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="48ZGLP8$3ct">
    <property role="3GE5qa" value="type" />
    <ref role="1XX52x" to="8tt8:48ZGLP8$3c6" resolve="VarTypeRef" />
    <node concept="3EZMnI" id="48ZGLP8$3c_" role="2wV5jI">
      <node concept="1iCGBv" id="48ZGLP8$3cG" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:48ZGLP8$3cj" resolve="def" />
        <node concept="1sVBvm" id="48ZGLP8$3cI" role="1sWHZn">
          <node concept="3F0A7n" id="48ZGLP8$3cP" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="48ZGLP8$3cC" role="2iSdaV" />
    </node>
  </node>
  <node concept="3p36aQ" id="1IKbs5Xa80E">
    <property role="3GE5qa" value="type" />
    <ref role="aqKnT" to="8tt8:3_qfG1EP6Nw" resolve="Type" />
    <node concept="2VfDsV" id="1IKbs5XdOMi" role="3ft7WO" />
    <node concept="3VyMlK" id="1IKbs5Xe$oh" role="3ft7WO" />
    <node concept="3eGOop" id="1IKbs5Xa80L" role="3ft7WO">
      <ref role="3EoQqy" to="8tt8:3_qfG1EP6Of" resolve="FunType" />
      <node concept="16NL0t" id="1IKbs5Xa8bO" role="upBLP">
        <node concept="2h3Zct" id="1IKbs5Xa8bP" role="16NL0q">
          <property role="2h4Kg1" value="fun type" />
        </node>
      </node>
      <node concept="16NfWO" id="1IKbs5Xa8bQ" role="upBLP">
        <node concept="2h3Zct" id="1IKbs5Xa8bR" role="16NeZM">
          <property role="2h4Kg1" value="-&gt;" />
        </node>
      </node>
      <node concept="ucgPf" id="1IKbs5Xa80N" role="3aKz83">
        <node concept="3clFbS" id="1IKbs5Xa80P" role="2VODD2">
          <node concept="3clFbF" id="1IKbs5Xa8hB" role="3cqZAp">
            <node concept="2ShNRf" id="1IKbs5Xa8h_" role="3clFbG">
              <node concept="3zrR0B" id="1IKbs5Xa8xU" role="2ShVmc">
                <node concept="3Tqbb2" id="1IKbs5Xa8xW" role="3zrR0E">
                  <ref role="ehGHo" to="8tt8:3_qfG1EP6Of" resolve="FunType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="1IKbs5Xa8WT" role="3ft7WO" />
    <node concept="1X3_iC" id="1IKbs5XjMNP" role="lGtFl">
      <property role="3V$3am" value="parts" />
      <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/2000375450116454183/414384289274416996" />
      <node concept="3eGOop" id="1IKbs5Xa8PK" role="8Wnug">
        <ref role="3EoQqy" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
        <node concept="16NL0t" id="1IKbs5Xa8PL" role="upBLP">
          <node concept="2h3Zct" id="1IKbs5Xa8PM" role="16NL0q">
            <property role="2h4Kg1" value="forall type" />
          </node>
        </node>
        <node concept="16NfWO" id="1IKbs5Xa8PN" role="upBLP">
          <node concept="2h3Zct" id="1IKbs5Xa8PO" role="16NeZM">
            <property role="2h4Kg1" value="forall" />
          </node>
        </node>
        <node concept="ucgPf" id="1IKbs5Xa8PP" role="3aKz83">
          <node concept="3clFbS" id="1IKbs5Xa8PQ" role="2VODD2">
            <node concept="3clFbF" id="1IKbs5Xa8PR" role="3cqZAp">
              <node concept="2ShNRf" id="1IKbs5Xa8PS" role="3clFbG">
                <node concept="3zrR0B" id="1IKbs5Xa8PT" role="2ShVmc">
                  <node concept="3Tqbb2" id="1IKbs5Xa8PU" role="3zrR0E">
                    <ref role="ehGHo" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="1IKbs5Xa8JG" role="3ft7WO" />
    <node concept="3eGOop" id="1IKbs5Xa9fQ" role="3ft7WO">
      <ref role="3EoQqy" to="8tt8:JqEP$8shba" resolve="PairType" />
      <node concept="16NL0t" id="1IKbs5Xa9fR" role="upBLP">
        <node concept="2h3Zct" id="1IKbs5Xa9fS" role="16NL0q">
          <property role="2h4Kg1" value="pair type" />
        </node>
      </node>
      <node concept="16NfWO" id="1IKbs5Xa9fT" role="upBLP">
        <node concept="2h3Zct" id="1IKbs5Xa9fU" role="16NeZM">
          <property role="2h4Kg1" value="(" />
        </node>
      </node>
      <node concept="ucgPf" id="1IKbs5Xa9fV" role="3aKz83">
        <node concept="3clFbS" id="1IKbs5Xa9fW" role="2VODD2">
          <node concept="3clFbF" id="1IKbs5Xa9fX" role="3cqZAp">
            <node concept="2ShNRf" id="1IKbs5Xa9fY" role="3clFbG">
              <node concept="3zrR0B" id="1IKbs5Xa9fZ" role="2ShVmc">
                <node concept="3Tqbb2" id="1IKbs5Xa9g0" role="3zrR0E">
                  <ref role="ehGHo" to="8tt8:JqEP$8shba" resolve="PairType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="1IKbs5Xa9fm" role="3ft7WO" />
  </node>
  <node concept="24kQdi" id="2O9ahh6mHon">
    <ref role="1XX52x" to="8tt8:2O9ahh6mHnE" resolve="Prototype" />
    <node concept="3EZMnI" id="2O9ahh6mHop" role="2wV5jI">
      <node concept="l2Vlx" id="2O9ahh6mHos" role="2iSdaV" />
      <node concept="1iCGBv" id="2O9ahh6x9DU" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:2O9ahh6mHnH" resolve="annVar" />
        <node concept="1sVBvm" id="2O9ahh6x9DV" role="1sWHZn">
          <node concept="3F1sOY" id="2O9ahh6x9Eh" role="2wV5jI">
            <ref role="1NtTu8" to="8tt8:JqEP$8fvrp" resolve="var" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2O9ahh6x9Eb" role="3EZMnx">
        <property role="3F0ifm" value="∷" />
      </node>
      <node concept="1iCGBv" id="2O9ahh6x9Ew" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:2O9ahh6mHnH" resolve="annVar" />
        <node concept="1sVBvm" id="2O9ahh6x9Ey" role="1sWHZn">
          <node concept="3F1sOY" id="2O9ahh6x9EH" role="2wV5jI">
            <ref role="1NtTu8" to="8tt8:JqEP$8fvrd" resolve="ann" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2O9ahh6mHpg">
    <property role="3GE5qa" value="clause" />
    <ref role="1XX52x" to="8tt8:2O9ahh6mHnA" resolve="Typeclass" />
    <node concept="3EZMnI" id="2O9ahh6mHpN" role="2wV5jI">
      <node concept="l2Vlx" id="2O9ahh6mHpQ" role="2iSdaV" />
      <node concept="3F0ifn" id="2O9ahh6mHpU" role="3EZMnx">
        <property role="3F0ifm" value="class" />
        <node concept="pVoyu" id="2O9ahh6mHqz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2O9ahh6mHpZ" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F1sOY" id="2O9ahh6mHq7" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:2O9ahh6mHnL" resolve="typeVar" />
      </node>
      <node concept="3F0ifn" id="2O9ahh6mHqh" role="3EZMnx">
        <property role="3F0ifm" value="where" />
      </node>
      <node concept="3F2HdR" id="2O9ahh6mHqN" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:2O9ahh6mHnJ" resolve="members" />
        <node concept="2iRkQZ" id="2O9ahh6mHHf" role="2czzBx" />
        <node concept="pVoyu" id="2O9ahh6mHr0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="2O9ahh6mHr2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2O9ahh6mHrn">
    <property role="3GE5qa" value="clause" />
    <ref role="1XX52x" to="8tt8:2O9ahh6mHnO" resolve="Instance" />
    <node concept="3EZMnI" id="2O9ahh6mHry" role="2wV5jI">
      <node concept="3F0ifn" id="2O9ahh6mHrF" role="3EZMnx">
        <property role="3F0ifm" value="instance" />
        <node concept="pVoyu" id="2O9ahh6mHrJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="2O9ahh6mHrP" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:2O9ahh6mHo2" resolve="typeclass" />
        <node concept="1sVBvm" id="2O9ahh6mHrR" role="1sWHZn">
          <node concept="3F0A7n" id="2O9ahh6mHs0" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="2O9ahh6mHsm" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:2O9ahh6mHnP" resolve="typeScheme" />
      </node>
      <node concept="3F0ifn" id="2O9ahh6mHsA" role="3EZMnx">
        <property role="3F0ifm" value="where" />
      </node>
      <node concept="3F2HdR" id="2O9ahh6mHti" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:2O9ahh6mHnR" resolve="impls" />
        <node concept="2iRkQZ" id="2O9ahh6mHHc" role="2czzBx" />
        <node concept="pVoyu" id="2O9ahh6mHtv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="2O9ahh6mHtx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="2O9ahh6mHr_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2O9ahh6mHu6">
    <ref role="1XX52x" to="8tt8:2O9ahh6mHnU" resolve="PrototypeImpl" />
    <node concept="3EZMnI" id="2O9ahh6mHu8" role="2wV5jI">
      <node concept="1iCGBv" id="2O9ahh6mHuf" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:2O9ahh6mHnX" resolve="proto" />
        <node concept="1sVBvm" id="2O9ahh6mHuh" role="1sWHZn">
          <node concept="3F0A7n" id="2O9ahh6GN9Y" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2O9ahh6mHuR" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F1sOY" id="2O9ahh6mHv7" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:2O9ahh6mHnZ" resolve="expr" />
      </node>
      <node concept="l2Vlx" id="2O9ahh6mHub" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2O9ahh6mHvu">
    <property role="3GE5qa" value="type" />
    <ref role="1XX52x" to="8tt8:2O9ahh6mHvg" resolve="Constraint" />
    <node concept="3EZMnI" id="2O9ahh6mHvw" role="2wV5jI">
      <node concept="1iCGBv" id="2O9ahh6mHvE" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:2O9ahh6mHvj" resolve="typeclass" />
        <node concept="1sVBvm" id="2O9ahh6mHvG" role="1sWHZn">
          <node concept="3F0A7n" id="2O9ahh6mHvQ" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="1iCGBv" id="2O9ahh6tFoz" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:2O9ahh6tFol" resolve="varRef" />
        <node concept="1sVBvm" id="2O9ahh6tFo_" role="1sWHZn">
          <node concept="3F0A7n" id="2O9ahh6tFoJ" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="2O9ahh6mHvz" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="47tET_WTDZz">
    <ref role="1XX52x" to="8tt8:47tET_WTDZo" resolve="ConstraintRepr" />
    <node concept="3EZMnI" id="47tET_WTF2U" role="2wV5jI">
      <node concept="3F0A7n" id="47tET_WTF3o" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:47tET_WTDZp" resolve="typeclassName" />
      </node>
      <node concept="3F0A7n" id="47tET_X0Jum" role="3EZMnx">
        <ref role="1NtTu8" to="8tt8:47tET_X0JtN" resolve="typeVarName" />
      </node>
      <node concept="l2Vlx" id="47tET_WTF31" role="2iSdaV" />
    </node>
  </node>
</model>

