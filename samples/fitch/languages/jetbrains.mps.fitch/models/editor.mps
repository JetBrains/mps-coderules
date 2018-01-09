<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:873e37f0-b045-47b9-ae9e-db79c2628975(jetbrains.mps.fitch.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <use id="0272d3b4-4cc8-481e-9e2f-07793fbfcb41" name="jetbrains.mps.lang.editor.table" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="jfgh" ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
    <import index="qd7f" ref="r:6e0181fc-40ea-4aea-a8b0-3ba2d104ddef(jetbrains.mps.fitch.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ng" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="2597348684684069742" name="contextHints" index="CpUAK" />
      </concept>
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
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
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
      <concept id="8371900013785948369" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Parameter" flags="ig" index="2$S_p_" />
      <concept id="5944657839000868711" name="jetbrains.mps.lang.editor.structure.ConceptEditorContextHints" flags="ig" index="2ABfQD">
        <child id="5944657839000877563" name="hints" index="2ABdcP" />
      </concept>
      <concept id="5944657839003601246" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclaration" flags="ig" index="2BsEeg">
        <property id="168363875802087287" name="showInUI" index="2gpH_U" />
      </concept>
      <concept id="308059530142752797" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Parameterized" flags="ng" index="2F$Pav">
        <child id="8371900013785948359" name="part" index="2$S_pN" />
        <child id="8371900013785948365" name="parameterQuery" index="2$S_pT" />
      </concept>
      <concept id="1638911550608571617" name="jetbrains.mps.lang.editor.structure.TransformationMenu_Default" flags="ng" index="IW6AY" />
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
      </concept>
      <concept id="1630016958697286851" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_parameterObject" flags="ng" index="2ZBlsa" />
      <concept id="1630016958697057551" name="jetbrains.mps.lang.editor.structure.IMenuPartParameterized" flags="ng" index="2ZBHr6">
        <child id="1630016958697057552" name="parameterType" index="2ZBHrp" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="8998492695583125082" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_MatchingText" flags="ng" index="16NfWO">
        <child id="8998492695583129244" name="query" index="16NeZM" />
      </concept>
      <concept id="8998492695583129971" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_DescriptionText" flags="ng" index="16NL0t">
        <child id="8998492695583129972" name="query" index="16NL0q" />
      </concept>
      <concept id="7342352913006985483" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Action" flags="ng" index="3eGOop">
        <child id="8612453216082699922" name="substituteHandler" index="3aKz83" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="3308396621974580100" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_Default" flags="ng" index="3p36aQ" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1219226236603" name="jetbrains.mps.lang.editor.structure.DrawBracketsStyleClassItem" flags="ln" index="3vyZuw" />
      <concept id="5425882385312046132" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_CurrentTargetNode" flags="nn" index="1yR$tW" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="7667708318090725848" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentAnchorStyleClassItem" flags="ln" index="1Bsynf" />
      <concept id="7991336459489871999" name="jetbrains.mps.lang.editor.structure.IOutputConceptSubstituteMenuPart" flags="ng" index="3EoQpk">
        <reference id="7991336459489872009" name="outputConcept" index="3EoQqy" />
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
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="2722384699544370949" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Placeholder" flags="ng" index="3VyMlK" />
      <concept id="4307758654696938365" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_RefPresentation" flags="ig" index="1WAQ3h" />
      <concept id="4307758654696952957" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_ReferencedNode" flags="ng" index="1WAUZh" />
      <concept id="8428109087107030357" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_ReferenceScope" flags="ng" index="3XHNnq">
        <reference id="8428109087107339113" name="reference" index="3XGfJA" />
        <child id="1154858122099170744" name="visibleMatchingTextFunction" index="3PHfNJ" />
        <child id="4307758654694904293" name="matchingTextFunction" index="1WZ6D9" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt">
        <reference id="1139877738879" name="concept" index="1A0vxQ" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
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
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1522217801069396578" name="jetbrains.mps.baseLanguage.collections.structure.FoldLeftOperation" flags="nn" index="1MD8d$">
        <child id="1522217801069421796" name="seed" index="1MDeny" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="3JXBM6C3FsQ">
    <property role="3GE5qa" value="proof.reasoning" />
    <ref role="1XX52x" to="jfgh:3JXBM6C3FsN" resolve="Basis" />
    <node concept="3EZMnI" id="3JXBM6C3FsS" role="2wV5jI">
      <node concept="l2Vlx" id="3JXBM6C3FsV" role="2iSdaV" />
      <node concept="1iCGBv" id="3JXBM6C3FuJ" role="3EZMnx">
        <ref role="1NtTu8" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
        <node concept="1sVBvm" id="3JXBM6C3FuK" role="1sWHZn">
          <node concept="1HlG4h" id="3JXBM6C3FuS" role="2wV5jI">
            <node concept="1HfYo3" id="3JXBM6C3FuU" role="1HlULh">
              <node concept="3TQlhw" id="3JXBM6C3FuW" role="1Hhtcw">
                <node concept="3clFbS" id="3JXBM6C3FuY" role="2VODD2">
                  <node concept="3clFbF" id="3JXBM6C3Sn7" role="3cqZAp">
                    <node concept="2YIFZM" id="3JXBM6C5W$o" role="3clFbG">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.valueOf(int):java.lang.String" resolve="valueOf" />
                      <node concept="2OqwBi" id="3JXBM6C5W$p" role="37wK5m">
                        <node concept="pncrf" id="3JXBM6C5W$q" role="2Oq$k0" />
                        <node concept="3TrcHB" id="3JXBM6C5W$r" role="2OqNvi">
                          <ref role="3TsBF5" to="jfgh:3JXBM6C54BE" resolve="sequenceNum" />
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
  </node>
  <node concept="24kQdi" id="3JXBM6C3MQ3">
    <property role="3GE5qa" value="proof.reasoning" />
    <ref role="1XX52x" to="jfgh:3JXBM6C3FsA" resolve="Judgement" />
    <node concept="3EZMnI" id="3JXBM6C3MQ5" role="2wV5jI">
      <node concept="3F1sOY" id="2aBGSFggwfm" role="3EZMnx">
        <ref role="1NtTu8" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
      </node>
      <node concept="l2Vlx" id="3JXBM6C3MQ8" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3JXBM6C3Pwn">
    <property role="3GE5qa" value="proof.reasoning" />
    <ref role="1XX52x" to="jfgh:3JXBM6C3Pwi" resolve="Assumption" />
    <node concept="3EZMnI" id="3JXBM6C3Pwp" role="2wV5jI">
      <node concept="3F1sOY" id="2aBGSFggwf8" role="3EZMnx">
        <ref role="1NtTu8" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
      </node>
      <node concept="l2Vlx" id="3JXBM6C3Pws" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3JXBM6C3UQE">
    <property role="3GE5qa" value="proof" />
    <ref role="1XX52x" to="jfgh:3JXBM6C3UQ$" resolve="SubProof" />
    <node concept="3EZMnI" id="3JXBM6C3UQG" role="2wV5jI">
      <node concept="3F0ifn" id="3JXBM6C61T_" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="VPM3Z" id="$u9BK_$0wk" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="3JXBM6C63X3" role="3EZMnx">
        <node concept="VPM3Z" id="3JXBM6C63X5" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="3JXBM6C660x" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="3JXBM6C63X8" role="2iSdaV" />
        <node concept="3F2HdR" id="3JXBM6C3UQN" role="3EZMnx">
          <property role="2czwfO" value=" " />
          <ref role="1NtTu8" to="jfgh:3JXBM6C3UQ_" resolve="content" />
          <node concept="l2Vlx" id="3JXBM6C3UQP" role="2czzBx" />
          <node concept="tppnM" id="3JXBM6C3UQS" role="sWeuL">
            <node concept="lj46D" id="3JXBM6C6l4L" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="ljvvj" id="3JXBM6C3UQY" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="3JXBM6C3URA" role="2czzBI">
            <property role="3F0ifm" value="" />
            <property role="ilYzB" value="&lt;no steps&gt;" />
          </node>
          <node concept="1Bsynf" id="3JXBM6C63Xo" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="3JXBM6C6832" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3JXBM6C6zuf" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="VPM3Z" id="$u9BK_$0wm" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="l2Vlx" id="3JXBM6C3UQJ" role="2iSdaV" />
      <node concept="3vyZuw" id="3JXBM6C5ZS6" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3JXBM6C3URg">
    <property role="3GE5qa" value="proof" />
    <ref role="1XX52x" to="jfgh:3JXBM6C3Fs$" resolve="Proof" />
    <node concept="3EZMnI" id="3JXBM6C3URi" role="2wV5jI">
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
                  <ref role="2$4xQ3" node="$u9BK_z27v" resolve="ID" />
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
                  <ref role="2$4xQ3" node="$u9BK_zG6f" resolve="BASIS" />
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
  <node concept="3p36aQ" id="3JXBM6C6A54">
    <property role="3GE5qa" value="proof.reasoning" />
    <ref role="aqKnT" to="jfgh:3JXBM6C3FsN" resolve="Basis" />
    <node concept="3XHNnq" id="3JXBM6C6A55" role="3ft7WO">
      <ref role="3XGfJA" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
      <node concept="1WAQ3h" id="3JXBM6C6Adw" role="1WZ6D9">
        <node concept="3clFbS" id="3JXBM6C6Adx" role="2VODD2">
          <node concept="3clFbF" id="3JXBM6C6Am4" role="3cqZAp">
            <node concept="2YIFZM" id="3JXBM6C6BDU" role="3clFbG">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int):java.lang.String" resolve="valueOf" />
              <node concept="2OqwBi" id="3JXBM6C6AC_" role="37wK5m">
                <node concept="1WAUZh" id="3JXBM6C6Am3" role="2Oq$k0" />
                <node concept="3TrcHB" id="3JXBM6C6AXv" role="2OqNvi">
                  <ref role="3TsBF5" to="jfgh:3JXBM6C54BE" resolve="sequenceNum" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1WAQ3h" id="5jVx7S23o6W" role="3PHfNJ">
        <node concept="3clFbS" id="5jVx7S23o6Y" role="2VODD2">
          <node concept="3clFbF" id="5jVx7S23oit" role="3cqZAp">
            <node concept="3cpWs3" id="5jVx7S23rqt" role="3clFbG">
              <node concept="3cpWs3" id="5jVx7S23qlD" role="3uHU7B">
                <node concept="2OqwBi" id="5jVx7S23phj" role="3uHU7B">
                  <node concept="2OqwBi" id="5jVx7S23ozu" role="2Oq$k0">
                    <node concept="1WAUZh" id="5jVx7S23ois" role="2Oq$k0" />
                    <node concept="2yIwOk" id="5jVx7S23oPc" role="2OqNvi" />
                  </node>
                  <node concept="3n3YKJ" id="5jVx7S23pB0" role="2OqNvi" />
                </node>
                <node concept="Xl_RD" id="5jVx7S23quJ" role="3uHU7w">
                  <property role="Xl_RC" value=" " />
                </node>
              </node>
              <node concept="2YIFZM" id="5jVx7S23rqO" role="3uHU7w">
                <ref role="37wK5l" to="wyt6:~String.valueOf(int):java.lang.String" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="2OqwBi" id="5jVx7S23rqP" role="37wK5m">
                  <node concept="1WAUZh" id="5jVx7S23rqQ" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5jVx7S23rqR" role="2OqNvi">
                    <ref role="3TsBF5" to="jfgh:3JXBM6C54BE" resolve="sequenceNum" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="3JXBM6C6F7z">
    <property role="3GE5qa" value="proof" />
    <ref role="aqKnT" to="jfgh:3JXBM6C3Fs$" resolve="Proof" />
  </node>
  <node concept="3p36aQ" id="3JXBM6C6Hgb">
    <property role="3GE5qa" value="proof" />
    <ref role="aqKnT" to="jfgh:3JXBM6C3UQ$" resolve="SubProof" />
  </node>
  <node concept="3p36aQ" id="3JXBM6C6Jqd">
    <property role="3GE5qa" value="proof.reasoning" />
    <ref role="aqKnT" to="jfgh:3JXBM6C3Pwi" resolve="Assumption" />
    <node concept="3eGOop" id="3JXBM6C6Jqe" role="3ft7WO">
      <ref role="3EoQqy" to="jfgh:3JXBM6C3UQ$" resolve="SubProof" />
      <node concept="ucgPf" id="3JXBM6C6Jqf" role="3aKz83">
        <node concept="3clFbS" id="3JXBM6C6Jqg" role="2VODD2">
          <node concept="3cpWs8" id="3JXBM6C6LYE" role="3cqZAp">
            <node concept="3cpWsn" id="3JXBM6C6LYF" role="3cpWs9">
              <property role="TrG5h" value="sp" />
              <node concept="3Tqbb2" id="3JXBM6C6LYD" role="1tU5fm">
                <ref role="ehGHo" to="jfgh:3JXBM6C3UQ$" resolve="SubProof" />
              </node>
              <node concept="2ShNRf" id="3JXBM6C6LYG" role="33vP2m">
                <node concept="3zrR0B" id="3JXBM6C6LYH" role="2ShVmc">
                  <node concept="3Tqbb2" id="3JXBM6C6LYI" role="3zrR0E">
                    <ref role="ehGHo" to="jfgh:3JXBM6C3UQ$" resolve="SubProof" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3JXBM6C6Mhg" role="3cqZAp">
            <node concept="2OqwBi" id="3JXBM6C6NZc" role="3clFbG">
              <node concept="2OqwBi" id="3JXBM6C6Mr0" role="2Oq$k0">
                <node concept="37vLTw" id="3JXBM6C6Mhe" role="2Oq$k0">
                  <ref role="3cqZAo" node="3JXBM6C6LYF" resolve="sp" />
                </node>
                <node concept="3Tsc0h" id="3JXBM6C6MEd" role="2OqNvi">
                  <ref role="3TtcxE" to="jfgh:3JXBM6C3UQ_" resolve="content" />
                </node>
              </node>
              <node concept="WFELt" id="3JXBM6C6QOf" role="2OqNvi">
                <ref role="1A0vxQ" to="jfgh:3JXBM6C3Pwi" resolve="Assumption" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3JXBM6C6JuB" role="3cqZAp">
            <node concept="37vLTw" id="3JXBM6C6LYJ" role="3clFbG">
              <ref role="3cqZAo" node="3JXBM6C6LYF" resolve="sp" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="3JXBM6C6Rrb" role="upBLP">
        <node concept="2h3Zct" id="3JXBM6C6Rvc" role="16NeZM">
          <property role="2h4Kg1" value="assume" />
        </node>
      </node>
      <node concept="16NL0t" id="3JXBM6C6Wqh" role="upBLP">
        <node concept="2h3Zct" id="3JXBM6C6WEM" role="16NL0q">
          <property role="2h4Kg1" value="Assumption" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2ABfQD" id="$u9BK_z27u">
    <property role="TrG5h" value="Hints" />
    <node concept="2BsEeg" id="$u9BK_z27v" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="ID" />
    </node>
    <node concept="2BsEeg" id="$u9BK_zG6f" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="BASIS" />
    </node>
  </node>
  <node concept="24kQdi" id="$u9BK_z2Sb">
    <property role="3GE5qa" value="proof.reasoning" />
    <ref role="1XX52x" to="jfgh:3JXBM6C3Pwi" resolve="Assumption" />
    <node concept="3EZMnI" id="$u9BK_z3hm" role="2wV5jI">
      <node concept="1HlG4h" id="$u9BK_z3DP" role="3EZMnx">
        <node concept="1HfYo3" id="$u9BK_z3DQ" role="1HlULh">
          <node concept="3TQlhw" id="$u9BK_z3DR" role="1Hhtcw">
            <node concept="3clFbS" id="$u9BK_z3DS" role="2VODD2">
              <node concept="3clFbF" id="$u9BK_z3DT" role="3cqZAp">
                <node concept="2YIFZM" id="$u9BK_z3DU" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.valueOf(int):java.lang.String" resolve="valueOf" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="2OqwBi" id="$u9BK_z3DV" role="37wK5m">
                    <node concept="pncrf" id="$u9BK_z3DW" role="2Oq$k0" />
                    <node concept="3TrcHB" id="$u9BK_z3DX" role="2OqNvi">
                      <ref role="3TsBF5" to="jfgh:3JXBM6C54BE" resolve="sequenceNum" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="$u9BK_zzyD" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="l2Vlx" id="$u9BK_z3hp" role="2iSdaV" />
    </node>
    <node concept="2aJ2om" id="$u9BK_z3hk" role="CpUAK">
      <ref role="2$4xQ3" node="$u9BK_z27v" resolve="ID" />
    </node>
  </node>
  <node concept="24kQdi" id="$u9BK_zdtN">
    <property role="3GE5qa" value="proof.reasoning" />
    <ref role="1XX52x" to="jfgh:3JXBM6C3FsA" resolve="Judgement" />
    <node concept="2aJ2om" id="$u9BK_zdtP" role="CpUAK">
      <ref role="2$4xQ3" node="$u9BK_z27v" resolve="ID" />
    </node>
    <node concept="3EZMnI" id="$u9BK_zdQf" role="2wV5jI">
      <node concept="1HlG4h" id="$u9BK_zdQg" role="3EZMnx">
        <node concept="1HfYo3" id="$u9BK_zdQh" role="1HlULh">
          <node concept="3TQlhw" id="$u9BK_zdQi" role="1Hhtcw">
            <node concept="3clFbS" id="$u9BK_zdQj" role="2VODD2">
              <node concept="3clFbF" id="$u9BK_zdQk" role="3cqZAp">
                <node concept="2YIFZM" id="$u9BK_zdQl" role="3clFbG">
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <ref role="37wK5l" to="wyt6:~String.valueOf(int):java.lang.String" resolve="valueOf" />
                  <node concept="2OqwBi" id="$u9BK_zdQm" role="37wK5m">
                    <node concept="pncrf" id="$u9BK_zdQn" role="2Oq$k0" />
                    <node concept="3TrcHB" id="$u9BK_zdQo" role="2OqNvi">
                      <ref role="3TsBF5" to="jfgh:3JXBM6C54BE" resolve="sequenceNum" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="$u9BK_z$cO" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="l2Vlx" id="$u9BK_zdQp" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="$u9BK_zkwa">
    <property role="3GE5qa" value="proof" />
    <ref role="1XX52x" to="jfgh:3JXBM6C3UQ$" resolve="SubProof" />
    <node concept="2aJ2om" id="$u9BK_zkwc" role="CpUAK">
      <ref role="2$4xQ3" node="$u9BK_z27v" resolve="ID" />
    </node>
    <node concept="3EZMnI" id="$u9BK_zkwj" role="2wV5jI">
      <node concept="3F2HdR" id="$u9BK_zkwq" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="jfgh:3JXBM6C3UQ_" resolve="content" />
        <node concept="l2Vlx" id="$u9BK_zkws" role="2czzBx" />
        <node concept="tppnM" id="$u9BK_zkwv" role="sWeuL">
          <node concept="VPM3Z" id="$u9BK_$0wg" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="ljvvj" id="$u9BK_zkwx" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="$u9BK_zkwm" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="$u9BK_zG8E">
    <property role="3GE5qa" value="proof" />
    <ref role="1XX52x" to="jfgh:3JXBM6C3UQ$" resolve="SubProof" />
    <node concept="2aJ2om" id="$u9BK_zG8G" role="CpUAK">
      <ref role="2$4xQ3" node="$u9BK_zG6f" resolve="BASIS" />
    </node>
    <node concept="3EZMnI" id="$u9BK_$KkA" role="2wV5jI">
      <node concept="3F2HdR" id="$u9BK_$KkB" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="jfgh:3JXBM6C3UQ_" resolve="content" />
        <node concept="l2Vlx" id="$u9BK_$KkC" role="2czzBx" />
        <node concept="tppnM" id="$u9BK_$KkD" role="sWeuL">
          <node concept="VPM3Z" id="$u9BK_$KkE" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="ljvvj" id="$u9BK_$KkF" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2w$q5c" id="$u9BK_$KkO" role="78xua">
          <node concept="2aJ2om" id="$u9BK_$KkP" role="2w$qW5">
            <ref role="2$4xQ3" node="$u9BK_zG6f" resolve="BASIS" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="$u9BK_$KkG" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="$u9BK_zG8U">
    <property role="3GE5qa" value="proof.reasoning" />
    <ref role="1XX52x" to="jfgh:3JXBM6C3Pwi" resolve="Assumption" />
    <node concept="3EZMnI" id="5RfK0kxjn86" role="2wV5jI">
      <node concept="l2Vlx" id="5RfK0kxjn87" role="2iSdaV" />
      <node concept="3F0ifn" id="5RfK0kxjSf2" role="3EZMnx">
        <property role="3F0ifm" value="(A)" />
        <node concept="Vb9p2" id="5RfK0kxjSf4" role="3F10Kt" />
      </node>
    </node>
    <node concept="2aJ2om" id="$u9BK_zG8W" role="CpUAK">
      <ref role="2$4xQ3" node="$u9BK_zG6f" resolve="BASIS" />
    </node>
  </node>
  <node concept="24kQdi" id="$u9BK_zGGT">
    <property role="3GE5qa" value="proof.reasoning" />
    <ref role="1XX52x" to="jfgh:3JXBM6C3FsA" resolve="Judgement" />
    <node concept="3EZMnI" id="$u9BK_zHtD" role="2wV5jI">
      <node concept="3F0ifn" id="$u9BK_zTQU" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="VPxyj" id="5jVx7S21EvR" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11LMrY" id="$u9BK_zTRj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="5RfK0kxkpv9" role="3F10Kt" />
      </node>
      <node concept="PMmxH" id="$u9BK_zHtM" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="VPxyj" id="5jVx7S21Ew0" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="Vb9p2" id="5RfK0kxkpvl" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="$u9BK_zTRa" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="VPxyj" id="5jVx7S21Ewa" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="$u9BK_zTRl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="5RfK0kxkpvt" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="$u9BK_zHtN" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="VPM3Z" id="$u9BK_$jiU" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F2HdR" id="$u9BK_zHtO" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
        <node concept="l2Vlx" id="$u9BK_zHtP" role="2czzBx" />
        <node concept="3F0ifn" id="$u9BK_zHtQ" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="&lt;no premises&gt;" />
        </node>
      </node>
      <node concept="l2Vlx" id="$u9BK_zHtG" role="2iSdaV" />
    </node>
    <node concept="2aJ2om" id="$u9BK_zGGX" role="CpUAK">
      <ref role="2$4xQ3" node="$u9BK_zG6f" resolve="BASIS" />
    </node>
  </node>
  <node concept="24kQdi" id="$u9BK__JRm">
    <property role="3GE5qa" value="proof.reasoning" />
    <ref role="1XX52x" to="jfgh:$u9BK__JRe" resolve="Premise" />
    <node concept="3EZMnI" id="$u9BK__JRo" role="2wV5jI">
      <node concept="l2Vlx" id="$u9BK__JRq" role="2iSdaV" />
      <node concept="3F1sOY" id="2aBGSFggwff" role="3EZMnx">
        <ref role="1NtTu8" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="$u9BK__JRu">
    <property role="3GE5qa" value="proof.reasoning" />
    <ref role="1XX52x" to="jfgh:$u9BK__JRe" resolve="Premise" />
    <node concept="3EZMnI" id="5RfK0kxjn8e" role="2wV5jI">
      <node concept="l2Vlx" id="5RfK0kxjn8f" role="2iSdaV" />
      <node concept="3F0ifn" id="5RfK0kxjFjS" role="3EZMnx">
        <property role="3F0ifm" value="(P)" />
        <node concept="Vb9p2" id="5RfK0kxjFjU" role="3F10Kt" />
      </node>
    </node>
    <node concept="2aJ2om" id="$u9BK__JRw" role="CpUAK">
      <ref role="2$4xQ3" node="$u9BK_zG6f" resolve="BASIS" />
    </node>
  </node>
  <node concept="24kQdi" id="$u9BK__JR_">
    <property role="3GE5qa" value="proof.reasoning" />
    <ref role="1XX52x" to="jfgh:$u9BK__JRe" resolve="Premise" />
    <node concept="2aJ2om" id="$u9BK__JRB" role="CpUAK">
      <ref role="2$4xQ3" node="$u9BK_z27v" resolve="ID" />
    </node>
    <node concept="3EZMnI" id="$u9BK__JRD" role="2wV5jI">
      <node concept="1HlG4h" id="$u9BK__JRE" role="3EZMnx">
        <node concept="1HfYo3" id="$u9BK__JRF" role="1HlULh">
          <node concept="3TQlhw" id="$u9BK__JRG" role="1Hhtcw">
            <node concept="3clFbS" id="$u9BK__JRH" role="2VODD2">
              <node concept="3clFbF" id="$u9BK__JRI" role="3cqZAp">
                <node concept="2YIFZM" id="$u9BK__JRJ" role="3clFbG">
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <ref role="37wK5l" to="wyt6:~String.valueOf(int):java.lang.String" resolve="valueOf" />
                  <node concept="2OqwBi" id="$u9BK__JRK" role="37wK5m">
                    <node concept="pncrf" id="$u9BK__JRL" role="2Oq$k0" />
                    <node concept="3TrcHB" id="$u9BK__JRM" role="2OqNvi">
                      <ref role="3TsBF5" to="jfgh:3JXBM6C54BE" resolve="sequenceNum" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="$u9BK__JRN" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="l2Vlx" id="$u9BK__JRO" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="$u9BK__SAf">
    <property role="3GE5qa" value="proof" />
    <ref role="1XX52x" to="jfgh:$u9BK__SA8" resolve="Goal" />
    <node concept="3EZMnI" id="$u9BK__SAh" role="2wV5jI">
      <node concept="3F1sOY" id="$u9BK__SAo" role="3EZMnx">
        <ref role="1NtTu8" to="jfgh:$u9BK__SA9" resolve="sentence" />
      </node>
      <node concept="l2Vlx" id="$u9BK__SAk" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2aBGSFge6px">
    <ref role="1XX52x" to="jfgh:2aBGSFge6pw" resolve="Ok" />
    <node concept="3F0ifn" id="2aBGSFge6pG" role="2wV5jI">
      <property role="3F0ifm" value="OK" />
    </node>
  </node>
  <node concept="3p36aQ" id="5jVx7S1YuHD">
    <property role="3GE5qa" value="proof.reasoning" />
    <ref role="aqKnT" to="jfgh:5jVx7S1Yau5" resolve="Reiteration" />
    <node concept="2F$Pav" id="5jVx7S1YuHE" role="3ft7WO">
      <node concept="3eGOop" id="5jVx7S1ZzTI" role="2$S_pN">
        <node concept="ucgPf" id="5jVx7S1ZzTK" role="3aKz83">
          <node concept="3clFbS" id="5jVx7S1ZzTM" role="2VODD2">
            <node concept="3cpWs8" id="5jVx7S1Z$Hx" role="3cqZAp">
              <node concept="3cpWsn" id="5jVx7S1Z$Hy" role="3cpWs9">
                <property role="TrG5h" value="reit" />
                <node concept="3Tqbb2" id="5jVx7S1Z$Hw" role="1tU5fm">
                  <ref role="ehGHo" to="jfgh:5jVx7S1Yau5" resolve="Reiteration" />
                </node>
                <node concept="2ShNRf" id="5jVx7S1Z$Hz" role="33vP2m">
                  <node concept="3zrR0B" id="5jVx7S1Z$H$" role="2ShVmc">
                    <node concept="3Tqbb2" id="5jVx7S1Z$H_" role="3zrR0E">
                      <ref role="ehGHo" to="jfgh:5jVx7S1Yau5" resolve="Reiteration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5jVx7S1ZHTo" role="3cqZAp">
              <node concept="3cpWsn" id="5jVx7S1ZHTp" role="3cpWs9">
                <property role="TrG5h" value="b" />
                <node concept="3Tqbb2" id="5jVx7S1ZHTn" role="1tU5fm">
                  <ref role="ehGHo" to="jfgh:3JXBM6C3FsN" resolve="Basis" />
                </node>
                <node concept="2OqwBi" id="5jVx7S1ZHTq" role="33vP2m">
                  <node concept="2OqwBi" id="5jVx7S1ZHTr" role="2Oq$k0">
                    <node concept="37vLTw" id="5jVx7S1ZHTs" role="2Oq$k0">
                      <ref role="3cqZAo" node="5jVx7S1Z$Hy" resolve="reit" />
                    </node>
                    <node concept="3Tsc0h" id="5jVx7S1ZHTt" role="2OqNvi">
                      <ref role="3TtcxE" to="jfgh:3JXBM6C3MQ0" resolve="premise" />
                    </node>
                  </node>
                  <node concept="WFELt" id="5jVx7S1ZHTu" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5jVx7S1Z$mZ" role="3cqZAp">
              <node concept="2OqwBi" id="5jVx7S1ZIYw" role="3clFbG">
                <node concept="2OqwBi" id="5jVx7S1ZImq" role="2Oq$k0">
                  <node concept="37vLTw" id="5jVx7S1ZHTv" role="2Oq$k0">
                    <ref role="3cqZAo" node="5jVx7S1ZHTp" resolve="b" />
                  </node>
                  <node concept="3TrEf2" id="5jVx7S1ZI$B" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
                  </node>
                </node>
                <node concept="2oxUTD" id="5jVx7S1ZJj2" role="2OqNvi">
                  <node concept="2ZBlsa" id="5jVx7S1ZJOx" role="2oxUTC" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5jVx7S1ZK7I" role="3cqZAp">
              <node concept="2OqwBi" id="5jVx7S1ZLdA" role="3clFbG">
                <node concept="2OqwBi" id="5jVx7S1ZKkM" role="2Oq$k0">
                  <node concept="37vLTw" id="5jVx7S1ZK7G" role="2Oq$k0">
                    <ref role="3cqZAo" node="5jVx7S1Z$Hy" resolve="reit" />
                  </node>
                  <node concept="3TrEf2" id="5jVx7S1ZKFR" role="2OqNvi">
                    <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                  </node>
                </node>
                <node concept="2oxUTD" id="5jVx7S1ZLGl" role="2OqNvi">
                  <node concept="2OqwBi" id="5jVx7S1ZTqn" role="2oxUTC">
                    <node concept="2OqwBi" id="5jVx7S1ZSwB" role="2Oq$k0">
                      <node concept="2ZBlsa" id="5jVx7S1ZLTz" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5jVx7S1ZSTW" role="2OqNvi">
                        <ref role="3Tt5mk" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
                      </node>
                    </node>
                    <node concept="1$rogu" id="5jVx7S1ZTYD" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5jVx7S1ZUqm" role="3cqZAp">
              <node concept="37vLTw" id="5jVx7S1ZUqk" role="3clFbG">
                <ref role="3cqZAo" node="5jVx7S1Z$Hy" resolve="reit" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16NfWO" id="5jVx7S1ZUD4" role="upBLP">
          <node concept="uGdhv" id="5jVx7S1ZUXC" role="16NeZM">
            <node concept="3clFbS" id="5jVx7S1ZUXE" role="2VODD2">
              <node concept="3clFbF" id="5jVx7S1ZV64" role="3cqZAp">
                <node concept="3cpWs3" id="5jVx7S1ZWqG" role="3clFbG">
                  <node concept="2OqwBi" id="5jVx7S1ZWSf" role="3uHU7w">
                    <node concept="2ZBlsa" id="5jVx7S1ZWzl" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5jVx7S1ZXde" role="2OqNvi">
                      <ref role="3TsBF5" to="jfgh:3JXBM6C54BE" resolve="sequenceNum" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="5jVx7S1ZV63" role="3uHU7B">
                    <property role="Xl_RC" value="reiterate " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16NL0t" id="5jVx7S20Wi_" role="upBLP">
          <node concept="2h3Zct" id="5jVx7S20X4y" role="16NL0q">
            <property role="2h4Kg1" value="Reiterate assumption or premise" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5jVx7S1Yvxa" role="2ZBHrp">
        <ref role="ehGHo" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
      </node>
      <node concept="2$S_p_" id="5jVx7S1Yv_S" role="2$S_pT">
        <node concept="3clFbS" id="5jVx7S1Yv_T" role="2VODD2">
          <node concept="3clFbJ" id="5jVx7S1ZjSa" role="3cqZAp">
            <node concept="3clFbS" id="5jVx7S1ZjSc" role="3clFbx">
              <node concept="3cpWs8" id="5jVx7S2079z" role="3cqZAp">
                <node concept="3cpWsn" id="5jVx7S2079$" role="3cpWs9">
                  <property role="TrG5h" value="available" />
                  <node concept="2I9FWS" id="5jVx7S20byr" role="1tU5fm" />
                  <node concept="2OqwBi" id="5jVx7S208LG" role="33vP2m">
                    <node concept="2OqwBi" id="5jVx7S2079_" role="2Oq$k0">
                      <node concept="3zZkjj" id="5jVx7S2079F" role="2OqNvi">
                        <node concept="1bVj0M" id="5jVx7S2079G" role="23t8la">
                          <node concept="3clFbS" id="5jVx7S2079H" role="1bW5cS">
                            <node concept="3clFbF" id="5jVx7S2079I" role="3cqZAp">
                              <node concept="22lmx$" id="5jVx7S2079J" role="3clFbG">
                                <node concept="2OqwBi" id="5jVx7S2079K" role="3uHU7w">
                                  <node concept="37vLTw" id="5jVx7S2079L" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5jVx7S2079S" resolve="it" />
                                  </node>
                                  <node concept="1mIQ4w" id="5jVx7S2079M" role="2OqNvi">
                                    <node concept="chp4Y" id="5jVx7S2079N" role="cj9EA">
                                      <ref role="cht4Q" to="jfgh:$u9BK__JRe" resolve="Premise" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="5jVx7S2079O" role="3uHU7B">
                                  <node concept="37vLTw" id="5jVx7S2079P" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5jVx7S2079S" resolve="it" />
                                  </node>
                                  <node concept="1mIQ4w" id="5jVx7S2079Q" role="2OqNvi">
                                    <node concept="chp4Y" id="5jVx7S2079R" role="cj9EA">
                                      <ref role="cht4Q" to="jfgh:3JXBM6C3Pwi" resolve="Assumption" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="5jVx7S2079S" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5jVx7S2079T" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5jVx7S20JJD" role="2Oq$k0">
                        <node concept="1PxgMI" id="5jVx7S2079C" role="2Oq$k0">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="5jVx7S2079D" role="3oSUPX">
                            <ref role="cht4Q" to="jfgh:3JXBM6C3UQB" resolve="Node" />
                          </node>
                          <node concept="1yR$tW" id="2AfSc6JyrF7" role="1m5AlR" />
                        </node>
                        <node concept="2qgKlT" id="5jVx7S20KqM" role="2OqNvi">
                          <ref role="37wK5l" to="qd7f:5jVx7S20nJ_" resolve="allInScope" />
                        </node>
                      </node>
                    </node>
                    <node concept="ANE8D" id="5jVx7S209G$" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5jVx7S1Zz6l" role="3cqZAp">
                <node concept="2OqwBi" id="5jVx7S1Zz6m" role="3cqZAk">
                  <node concept="37vLTw" id="5jVx7S2079U" role="2Oq$k0">
                    <ref role="3cqZAo" node="5jVx7S2079$" resolve="available" />
                  </node>
                  <node concept="1MD8d$" id="5jVx7S1Zz6G" role="2OqNvi">
                    <node concept="1bVj0M" id="5jVx7S1Zz6H" role="23t8la">
                      <node concept="3clFbS" id="5jVx7S1Zz6I" role="1bW5cS">
                        <node concept="3clFbF" id="5jVx7S1Zz6J" role="3cqZAp">
                          <node concept="2OqwBi" id="5jVx7S1Zz6K" role="3clFbG">
                            <node concept="37vLTw" id="5jVx7S1Zz6L" role="2Oq$k0">
                              <ref role="3cqZAo" node="5jVx7S1Zz6O" resolve="s" />
                            </node>
                            <node concept="TSZUe" id="5jVx7S1Zz6M" role="2OqNvi">
                              <node concept="1PxgMI" id="5jVx7S1ZRjj" role="25WWJ7">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="5jVx7S1ZRJX" role="3oSUPX">
                                  <ref role="cht4Q" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
                                </node>
                                <node concept="37vLTw" id="5jVx7S1Zz6N" role="1m5AlR">
                                  <ref role="3cqZAo" node="5jVx7S1Zz6Q" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="5jVx7S20edd" role="3cqZAp">
                          <node concept="37vLTw" id="5jVx7S20edb" role="3clFbG">
                            <ref role="3cqZAo" node="5jVx7S1Zz6O" resolve="s" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="5jVx7S1Zz6O" role="1bW2Oz">
                        <property role="TrG5h" value="s" />
                        <node concept="2I9FWS" id="5jVx7S1Zz6P" role="1tU5fm">
                          <ref role="2I9WkF" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5jVx7S1Zz6Q" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5jVx7S1Zz6R" role="1tU5fm" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="5jVx7S1Zz6S" role="1MDeny">
                      <node concept="2T8Vx0" id="5jVx7S1Zz6T" role="2ShVmc">
                        <node concept="2I9FWS" id="5jVx7S1Zz6U" role="2T96Bj">
                          <ref role="2I9WkF" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5jVx7S1Zkfh" role="3clFbw">
              <node concept="1yR$tW" id="2AfSc6Jy_o6" role="2Oq$k0" />
              <node concept="1mIQ4w" id="5jVx7S1ZkAb" role="2OqNvi">
                <node concept="chp4Y" id="5jVx7S1ZkJ7" role="cj9EA">
                  <ref role="cht4Q" to="jfgh:3JXBM6C3UQB" resolve="Node" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jVx7S1ZzvI" role="3cqZAp">
            <node concept="10Nm6u" id="5jVx7S1ZzvG" role="3clFbG" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="5jVx7S20VFl" role="3ft7WO" />
  </node>
  <node concept="IW6AY" id="2DPo4JTQI2h">
    <ref role="aqKnT" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
  </node>
</model>

