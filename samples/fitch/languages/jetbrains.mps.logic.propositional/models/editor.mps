<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2ca623f4-8f74-473f-b3b6-e9b637018c0b(jetbrains.mps.logic.propositional.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="27wh" ref="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpfp" ref="r:00000000-0000-4000-0000-011c89590519(jetbrains.mps.baseLanguage.regexp.jetbrains.mps.regexp.accessory)" />
    <import index="jfgh" ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
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
      <concept id="3459162043708467089" name="jetbrains.mps.lang.editor.structure.CellActionMap_CanExecuteFunction" flags="in" index="jK8Ss" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="1177327274449" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_pattern" flags="nn" index="ub8z3" />
      <concept id="1177327570013" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Substitute" flags="in" index="ucgPf" />
      <concept id="8478191136883534237" name="jetbrains.mps.lang.editor.structure.IExtensibleSubstituteMenuPart" flags="ng" index="upBLQ">
        <child id="8478191136883534238" name="features" index="upBLP" />
      </concept>
      <concept id="1177335944525" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_SubstituteString" flags="in" index="uGdhv" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="8329266386016608055" name="jetbrains.mps.lang.editor.structure.ApproveDelete_Operation" flags="ng" index="2xy62i">
        <child id="8329266386016685951" name="editorContext" index="2xHN3q" />
      </concept>
      <concept id="6718020819487620876" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Default" flags="ng" index="A1WHr" />
      <concept id="3473224453637651916" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder" flags="ng" index="CtIbL">
        <property id="3473224453637651917" name="placeInCell" index="CtIbK" />
      </concept>
      <concept id="1638911550608610798" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute" flags="ig" index="IWg2L" />
      <concept id="1638911550608610278" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action" flags="ng" index="IWgqT">
        <child id="1638911550608610281" name="executeFunction" index="IWgqQ" />
        <child id="5692353713941573325" name="textFunction" index="1hCUd6" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
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
      <concept id="3308396621974580100" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_Default" flags="ng" index="3p36aQ" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
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
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ng" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="5624877018228264944" name="jetbrains.mps.lang.editor.structure.TransformationMenuContribution" flags="ng" index="3INDKC">
        <child id="6718020819489956031" name="menuReference" index="AmTjC" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC" />
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1139867745658" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithNewOperation" flags="nn" index="1_qnLN">
        <reference id="1139867957129" name="concept" index="1_rbq0" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
    </language>
  </registry>
  <node concept="24kQdi" id="3JXBM6C3FnY">
    <property role="3GE5qa" value="sentence" />
    <ref role="1XX52x" to="27wh:3JXBM6C3FnV" resolve="And" />
    <node concept="3EZMnI" id="3JXBM6C3Fo0" role="2wV5jI">
      <node concept="3F0ifn" id="3JXBM6C3Fo7" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1ERwB7" node="3JXBM6C8NIn" resolve="And_Actions" />
        <node concept="11LMrY" id="3JXBM6C3Foh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="3JXBM6C3For" role="3EZMnx">
        <property role="2czwfO" value="&amp;" />
        <ref role="1NtTu8" to="27wh:3JXBM6C3FnW" resolve="conjunct" />
        <node concept="l2Vlx" id="3JXBM6C3Fot" role="2czzBx" />
        <node concept="3F0ifn" id="3JXBM6C3Fo$" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="&lt;no conjuncts&gt;" />
        </node>
        <node concept="tppnM" id="3JXBM6C4jyP" role="sWeuL">
          <node concept="VPM3Z" id="3JXBM6C8qcZ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11L4FC" id="3JXBM6C4jyQ" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="11LMrY" id="3JXBM6C4jyR" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3JXBM6C3Fod" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1ERwB7" node="3JXBM6C8NIn" resolve="And_Actions" />
        <node concept="11L4FC" id="3JXBM6C3Foj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3JXBM6C3Fo3" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="3JXBM6C8NIn">
    <property role="3GE5qa" value="sentence" />
    <property role="TrG5h" value="And_Actions" />
    <ref role="1h_SK9" to="27wh:3JXBM6C3FnV" resolve="And" />
    <node concept="1hA7zw" id="3JXBM6C8NIo" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="3JXBM6C8NIp" role="1hA7z_">
        <node concept="3clFbS" id="3JXBM6C8NIq" role="2VODD2">
          <node concept="3cpWs8" id="3JXBM6C8YI2" role="3cqZAp">
            <node concept="3cpWsn" id="3JXBM6C8YI3" role="3cpWs9">
              <property role="TrG5h" value="target" />
              <node concept="3Tqbb2" id="3JXBM6C8YHX" role="1tU5fm">
                <ref role="ehGHo" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
              </node>
              <node concept="2OqwBi" id="3JXBM6C8YI4" role="33vP2m">
                <node concept="2OqwBi" id="3JXBM6C8YI5" role="2Oq$k0">
                  <node concept="0IXxy" id="3JXBM6C8YI6" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3JXBM6C8YI7" role="2OqNvi">
                    <ref role="3TtcxE" to="27wh:3JXBM6C3FnW" resolve="conjunct" />
                  </node>
                </node>
                <node concept="1uHKPH" id="3JXBM6C8YI8" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3JXBM6C8YVV" role="3cqZAp">
            <node concept="2OqwBi" id="3JXBM6C8Z3Y" role="3clFbG">
              <node concept="0IXxy" id="3JXBM6C8YVT" role="2Oq$k0" />
              <node concept="1P9Npp" id="3JXBM6C8ZMz" role="2OqNvi">
                <node concept="2OqwBi" id="3JXBM6C8ZWA" role="1P9ThW">
                  <node concept="37vLTw" id="3JXBM6C8ZOH" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JXBM6C8YI3" resolve="target" />
                  </node>
                  <node concept="3YRAZt" id="3JXBM6C907X" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="3JXBM6C8NIA" role="jK8aL">
        <node concept="3clFbS" id="3JXBM6C8NIB" role="2VODD2">
          <node concept="3clFbF" id="3JXBM6C8NPK" role="3cqZAp">
            <node concept="3clFbC" id="3JXBM6C8V6B" role="3clFbG">
              <node concept="3cmrfG" id="3JXBM6C8V6T" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="3JXBM6C8PUM" role="3uHU7B">
                <node concept="2OqwBi" id="3JXBM6C8O2L" role="2Oq$k0">
                  <node concept="0IXxy" id="3JXBM6C8NPJ" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3JXBM6C8Olb" role="2OqNvi">
                    <ref role="3TtcxE" to="27wh:3JXBM6C3FnW" resolve="conjunct" />
                  </node>
                </node>
                <node concept="34oBXx" id="3JXBM6C8SN0" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3JXBM6C3Cnb">
    <property role="3GE5qa" value="sentence" />
    <ref role="1XX52x" to="27wh:3JXBM6C3Cn8" resolve="Proposition" />
    <node concept="3EZMnI" id="3JXBM6C3Cnd" role="2wV5jI">
      <node concept="3F0A7n" id="3JXBM6C3Cnk" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="3JXBM6C3Cng" role="2iSdaV" />
    </node>
  </node>
  <node concept="3p36aQ" id="3JXBM6C6Z0A">
    <property role="3GE5qa" value="sentence" />
    <ref role="aqKnT" to="27wh:3JXBM6C3Cn8" resolve="Proposition" />
    <node concept="3eGOop" id="3JXBM6C6Z0B" role="3ft7WO">
      <node concept="ucgPf" id="3JXBM6C6Z0C" role="3aKz83">
        <node concept="3clFbS" id="3JXBM6C6Z0D" role="2VODD2">
          <node concept="3cpWs8" id="3JXBM6C75mC" role="3cqZAp">
            <node concept="3cpWsn" id="3JXBM6C75mD" role="3cpWs9">
              <property role="TrG5h" value="cst" />
              <node concept="3Tqbb2" id="3JXBM6C75mA" role="1tU5fm">
                <ref role="ehGHo" to="27wh:3JXBM6C3Cn8" resolve="Proposition" />
              </node>
              <node concept="2ShNRf" id="3JXBM6C75mE" role="33vP2m">
                <node concept="3zrR0B" id="3JXBM6C75mF" role="2ShVmc">
                  <node concept="3Tqbb2" id="3JXBM6C75mG" role="3zrR0E">
                    <ref role="ehGHo" to="27wh:3JXBM6C3Cn8" resolve="Proposition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3JXBM6C74Xi" role="3cqZAp">
            <node concept="2OqwBi" id="3JXBM6C76$E" role="3clFbG">
              <node concept="2OqwBi" id="3JXBM6C75FT" role="2Oq$k0">
                <node concept="37vLTw" id="3JXBM6C75mH" role="2Oq$k0">
                  <ref role="3cqZAo" node="3JXBM6C75mD" resolve="cst" />
                </node>
                <node concept="3TrcHB" id="3JXBM6C75WM" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="tyxLq" id="3JXBM6C771k" role="2OqNvi">
                <node concept="ub8z3" id="3JXBM6C77t4" role="tz02z" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3JXBM6C77$Y" role="3cqZAp">
            <node concept="37vLTw" id="3JXBM6C77$W" role="3clFbG">
              <ref role="3cqZAo" node="3JXBM6C75mD" resolve="cst" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="3JXBM6C6Z4I" role="upBLP">
        <node concept="uGdhv" id="3JXBM6C6Z8N" role="16NeZM">
          <node concept="3clFbS" id="3JXBM6C6Z8P" role="2VODD2">
            <node concept="1QpiS5" id="3JXBM6C6Zn_" role="3cqZAp">
              <node concept="1Qi9sc" id="3JXBM6C6ZnA" role="1YN4dH">
                <node concept="1OClNT" id="3JXBM6C7hBm" role="1QigWp">
                  <node concept="1SYyG9" id="3JXBM6C7hK8" role="1OLDsb">
                    <ref role="1SYXPG" to="tpfp:h5SUJUw" resolve="\w" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3JXBM6C6ZnC" role="1Qpmdr">
                <node concept="3cpWs6" id="3JXBM6C6ZL6" role="3cqZAp">
                  <node concept="ub8z3" id="3JXBM6C71sX" role="3cqZAk" />
                </node>
              </node>
              <node concept="ub8z3" id="3JXBM6C6Zwd" role="1QpSPf" />
            </node>
            <node concept="3clFbF" id="3JXBM6C72hu" role="3cqZAp">
              <node concept="Xl_RD" id="3JXBM6C72ht" role="3clFbG">
                <property role="Xl_RC" value="&lt;name&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3JXBM6C3Fpn">
    <property role="3GE5qa" value="sentence" />
    <ref role="1XX52x" to="27wh:3JXBM6C3Fph" resolve="If" />
    <node concept="3EZMnI" id="3JXBM6C3Fpp" role="2wV5jI">
      <node concept="3F0ifn" id="3JXBM6C3FqW" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11LMrY" id="3JXBM6C3Fr2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="3JXBM6C3Fpw" role="3EZMnx">
        <ref role="1NtTu8" to="27wh:3JXBM6C3Fpi" resolve="antecedent" />
      </node>
      <node concept="3F0ifn" id="3JXBM6C3FpA" role="3EZMnx">
        <property role="3F0ifm" value="=&gt;" />
        <ref role="1ERwB7" node="3JXBM6C9alP" resolve="If_Actions" />
      </node>
      <node concept="3F1sOY" id="3JXBM6C3FpN" role="3EZMnx">
        <ref role="1NtTu8" to="27wh:3JXBM6C3Fpk" resolve="consequent" />
        <ref role="1ERwB7" node="3JXBM6C9alP" resolve="If_Actions" />
      </node>
      <node concept="3F0ifn" id="3JXBM6C3Frn" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="3JXBM6C3Frv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3JXBM6C3Fps" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="3JXBM6C9alP">
    <property role="3GE5qa" value="sentence" />
    <property role="TrG5h" value="If_Actions" />
    <ref role="1h_SK9" to="27wh:3JXBM6C3Fph" resolve="If" />
    <node concept="1hA7zw" id="3JXBM6C9alQ" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="3JXBM6C9alR" role="1hA7z_">
        <node concept="3clFbS" id="3JXBM6C9alS" role="2VODD2">
          <node concept="3clFbF" id="3JXBM6C9c2K" role="3cqZAp">
            <node concept="2OqwBi" id="3JXBM6C9cao" role="3clFbG">
              <node concept="0IXxy" id="3JXBM6C9c2J" role="2Oq$k0" />
              <node concept="1P9Npp" id="3JXBM6C9cwF" role="2OqNvi">
                <node concept="2OqwBi" id="3JXBM6C9dnd" role="1P9ThW">
                  <node concept="2OqwBi" id="3JXBM6C9cE7" role="2Oq$k0">
                    <node concept="0IXxy" id="3JXBM6C9cxl" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3JXBM6C9d2e" role="2OqNvi">
                      <ref role="3Tt5mk" to="27wh:3JXBM6C3Fpi" resolve="antecedent" />
                    </node>
                  </node>
                  <node concept="3YRAZt" id="3JXBM6C9dKp" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="3JXBM6C9am4" role="jK8aL">
        <node concept="3clFbS" id="3JXBM6C9am5" role="2VODD2">
          <node concept="3clFbF" id="3JXBM6C9FnB" role="3cqZAp">
            <node concept="2OqwBi" id="3JXBM6C9F$C" role="3clFbG">
              <node concept="0IXxy" id="3JXBM6C9FnA" role="2Oq$k0" />
              <node concept="2xy62i" id="3JXBM6C9JFD" role="2OqNvi">
                <node concept="1Q80Hx" id="3JXBM6C9JNi" role="2xHN3q" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3JXBM6C3Fry">
    <property role="3GE5qa" value="sentence" />
    <ref role="1XX52x" to="27wh:3JXBM6C3Frx" resolve="Iff" />
    <node concept="3EZMnI" id="3JXBM6C3Fs1" role="2wV5jI">
      <node concept="3F0ifn" id="3JXBM6C3Fs2" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11LMrY" id="3JXBM6C3Fs3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="3JXBM6C3Fs4" role="3EZMnx">
        <ref role="1NtTu8" to="27wh:3JXBM6C3FrF" resolve="antecedent" />
      </node>
      <node concept="3F0ifn" id="3JXBM6C3Fs5" role="3EZMnx">
        <property role="3F0ifm" value="&lt;=&gt;" />
        <ref role="1ERwB7" node="3JXBM6C9dQk" resolve="Iff_Actions" />
      </node>
      <node concept="3F1sOY" id="3JXBM6C3Fs6" role="3EZMnx">
        <ref role="1NtTu8" to="27wh:3JXBM6C3FrG" resolve="consequent" />
        <ref role="1ERwB7" node="3JXBM6C9dQk" resolve="Iff_Actions" />
      </node>
      <node concept="3F0ifn" id="3JXBM6C3Fs7" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="3JXBM6C3Fs8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3JXBM6C3Fs9" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="3JXBM6C9dQk">
    <property role="3GE5qa" value="sentence" />
    <property role="TrG5h" value="Iff_Actions" />
    <ref role="1h_SK9" to="27wh:3JXBM6C3Frx" resolve="Iff" />
    <node concept="1hA7zw" id="3JXBM6C9dQl" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="3JXBM6C9dQm" role="1hA7z_">
        <node concept="3clFbS" id="3JXBM6C9dQn" role="2VODD2">
          <node concept="3clFbF" id="3JXBM6C9f$R" role="3cqZAp">
            <node concept="2OqwBi" id="3JXBM6C9fGv" role="3clFbG">
              <node concept="0IXxy" id="3JXBM6C9f$Q" role="2Oq$k0" />
              <node concept="1P9Npp" id="3JXBM6C9g2M" role="2OqNvi">
                <node concept="2OqwBi" id="3JXBM6C9gce" role="1P9ThW">
                  <node concept="0IXxy" id="3JXBM6C9g3s" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3JXBM6C9gps" role="2OqNvi">
                    <ref role="3Tt5mk" to="27wh:3JXBM6C3FrF" resolve="antecedent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="3JXBM6C9dQz" role="jK8aL">
        <node concept="3clFbS" id="3JXBM6C9dQ$" role="2VODD2">
          <node concept="3clFbF" id="3JXBM6C9Piz" role="3cqZAp">
            <node concept="2OqwBi" id="3JXBM6C9Pi$" role="3clFbG">
              <node concept="0IXxy" id="3JXBM6C9Pi_" role="2Oq$k0" />
              <node concept="2xy62i" id="3JXBM6C9PiA" role="2OqNvi">
                <node concept="1Q80Hx" id="3JXBM6C9PiB" role="2xHN3q" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3JXBM6C3Cnr">
    <property role="3GE5qa" value="sentence" />
    <ref role="1XX52x" to="27wh:3JXBM6C3Cnn" resolve="Not" />
    <node concept="3EZMnI" id="3JXBM6C3Cnt" role="2wV5jI">
      <node concept="3F0ifn" id="3JXBM6C3Cn$" role="3EZMnx">
        <property role="3F0ifm" value="~" />
        <ref role="1ERwB7" node="3JXBM6C86ij" resolve="Not_Actions" />
        <node concept="11LMrY" id="3JXBM6C3FnT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="3JXBM6C3CnE" role="3EZMnx">
        <ref role="1NtTu8" to="27wh:3JXBM6C3Cno" resolve="target" />
      </node>
      <node concept="l2Vlx" id="3JXBM6C3Cnw" role="2iSdaV" />
    </node>
  </node>
  <node concept="3p36aQ" id="3JXBM6C7X38">
    <property role="3GE5qa" value="sentence" />
    <ref role="aqKnT" to="27wh:3JXBM6C3Cnn" resolve="Not" />
    <node concept="3eGOop" id="3JXBM6C7X39" role="3ft7WO">
      <node concept="ucgPf" id="3JXBM6C7X3a" role="3aKz83">
        <node concept="3clFbS" id="3JXBM6C7X3b" role="2VODD2">
          <node concept="3clFbF" id="3JXBM6C7X72" role="3cqZAp">
            <node concept="2ShNRf" id="3JXBM6C7X70" role="3clFbG">
              <node concept="3zrR0B" id="3JXBM6C7Xjl" role="2ShVmc">
                <node concept="3Tqbb2" id="3JXBM6C7Xjn" role="3zrR0E">
                  <ref role="ehGHo" to="27wh:3JXBM6C3Cnn" resolve="Not" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="3JXBM6C7Xzs" role="upBLP">
        <node concept="2h3Zct" id="3JXBM6C7XBu" role="16NeZM">
          <property role="2h4Kg1" value="~" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="3JXBM6C86ij">
    <property role="3GE5qa" value="sentence" />
    <property role="TrG5h" value="Not_Actions" />
    <ref role="1h_SK9" to="27wh:3JXBM6C3Cnn" resolve="Not" />
    <node concept="1hA7zw" id="3JXBM6C86ik" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="3JXBM6C86il" role="1hA7z_">
        <node concept="3clFbS" id="3JXBM6C86im" role="2VODD2">
          <node concept="3clFbF" id="3JXBM6C86iz" role="3cqZAp">
            <node concept="2OqwBi" id="3JXBM6C86qb" role="3clFbG">
              <node concept="0IXxy" id="3JXBM6C86iy" role="2Oq$k0" />
              <node concept="1P9Npp" id="3JXBM6C86Ku" role="2OqNvi">
                <node concept="2OqwBi" id="3JXBM6C86Vq" role="1P9ThW">
                  <node concept="0IXxy" id="3JXBM6C86MC" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3JXBM6C87i1" role="2OqNvi">
                    <ref role="3Tt5mk" to="27wh:3JXBM6C3Cno" resolve="target" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3JXBM6C3FoB">
    <property role="3GE5qa" value="sentence" />
    <ref role="1XX52x" to="27wh:3JXBM6C3FoA" resolve="Or" />
    <node concept="3EZMnI" id="3JXBM6C3FoD" role="2wV5jI">
      <node concept="3F0ifn" id="3JXBM6C3FoK" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1ERwB7" node="3JXBM6C8ul8" resolve="Or_Actions" />
        <node concept="11LMrY" id="3JXBM6C3FoU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="3JXBM6C3Fp6" role="3EZMnx">
        <property role="2czwfO" value="|" />
        <ref role="1NtTu8" to="27wh:3JXBM6C3Fp4" resolve="disjunct" />
        <node concept="l2Vlx" id="3JXBM6C3Fp8" role="2czzBx" />
        <node concept="3F0ifn" id="3JXBM6C3Fpf" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="&lt;no disjuncts&gt;" />
        </node>
        <node concept="tppnM" id="3JXBM6C4jyE" role="sWeuL">
          <node concept="VPM3Z" id="3JXBM6C8qd8" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11L4FC" id="3JXBM6C4jyG" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="11LMrY" id="3JXBM6C4jyL" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3JXBM6C3FoQ" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1ERwB7" node="3JXBM6C8ul8" resolve="Or_Actions" />
        <node concept="11L4FC" id="3JXBM6C3FoW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3JXBM6C3FoG" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="3JXBM6C8ul8">
    <property role="3GE5qa" value="sentence" />
    <property role="TrG5h" value="Or_Actions" />
    <ref role="1h_SK9" to="27wh:3JXBM6C3FoA" resolve="Or" />
    <node concept="1hA7zw" id="3JXBM6C8ul9" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="3JXBM6C8ula" role="1hA7z_">
        <node concept="3clFbS" id="3JXBM6C8ulb" role="2VODD2">
          <node concept="3cpWs8" id="3JXBM6C8HbR" role="3cqZAp">
            <node concept="3cpWsn" id="3JXBM6C8HbS" role="3cpWs9">
              <property role="TrG5h" value="target" />
              <node concept="3Tqbb2" id="3JXBM6C8HbO" role="1tU5fm">
                <ref role="ehGHo" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
              </node>
              <node concept="2OqwBi" id="3JXBM6C8HbT" role="33vP2m">
                <node concept="2OqwBi" id="3JXBM6C8HbU" role="2Oq$k0">
                  <node concept="0IXxy" id="3JXBM6C8HbV" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3JXBM6C8HbW" role="2OqNvi">
                    <ref role="3TtcxE" to="27wh:3JXBM6C3Fp4" resolve="disjunct" />
                  </node>
                </node>
                <node concept="1uHKPH" id="3JXBM6C8HbX" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3JXBM6C8HpI" role="3cqZAp">
            <node concept="2OqwBi" id="3JXBM6C8HxN" role="3clFbG">
              <node concept="0IXxy" id="3JXBM6C8HpG" role="2Oq$k0" />
              <node concept="1P9Npp" id="3JXBM6C8HUA" role="2OqNvi">
                <node concept="2OqwBi" id="3JXBM6C8I4D" role="1P9ThW">
                  <node concept="37vLTw" id="3JXBM6C8HWK" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JXBM6C8HbS" resolve="target" />
                  </node>
                  <node concept="3YRAZt" id="3JXBM6C8Ip3" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="3JXBM6C8ulF" role="jK8aL">
        <node concept="3clFbS" id="3JXBM6C8ulG" role="2VODD2">
          <node concept="3clFbF" id="3JXBM6C8usP" role="3cqZAp">
            <node concept="3clFbC" id="3JXBM6C8_TD" role="3clFbG">
              <node concept="3cmrfG" id="3JXBM6C8AkD" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="3JXBM6C8w_s" role="3uHU7B">
                <node concept="2OqwBi" id="3JXBM6C8uHv" role="2Oq$k0">
                  <node concept="0IXxy" id="3JXBM6C8usO" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3JXBM6C8uZP" role="2OqNvi">
                    <ref role="3TtcxE" to="27wh:3JXBM6C3Fp4" resolve="disjunct" />
                  </node>
                </node>
                <node concept="34oBXx" id="3JXBM6C8ztE" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="4LBPYGV20UT">
    <property role="3GE5qa" value="sentence" />
    <ref role="aqKnT" to="27wh:3JXBM6C3FnV" resolve="And" />
  </node>
  <node concept="3p36aQ" id="4LBPYGV21ly">
    <property role="3GE5qa" value="sentence" />
    <ref role="aqKnT" to="27wh:3JXBM6C3Fph" resolve="If" />
  </node>
  <node concept="3p36aQ" id="4LBPYGV21lW">
    <property role="3GE5qa" value="sentence" />
    <ref role="aqKnT" to="27wh:3JXBM6C3Frx" resolve="Iff" />
  </node>
  <node concept="3p36aQ" id="4LBPYGV21mm">
    <property role="3GE5qa" value="sentence" />
    <ref role="aqKnT" to="27wh:3JXBM6C3FoA" resolve="Or" />
  </node>
  <node concept="3p36aQ" id="4LBPYGV21nq">
    <property role="3GE5qa" value="sentence" />
    <ref role="aqKnT" to="27wh:3JXBM6C3Cnq" resolve="LogicalSentence" />
  </node>
  <node concept="3INDKC" id="2DPo4JTQJdi">
    <property role="3GE5qa" value="sentence" />
    <property role="TrG5h" value="LogicalSentence_Transforma" />
    <node concept="A1WHr" id="2DPo4JTQKqB" role="AmTjC">
      <ref role="2ZyFGn" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
    </node>
    <node concept="1Qtc8_" id="3JXBM6C7kDY" role="IW6Ez">
      <node concept="IWgqT" id="3JXBM6C7kEa" role="1Qtc8A">
        <node concept="1hCUdq" id="3JXBM6C7kEc" role="1hCUd6">
          <node concept="3clFbS" id="3JXBM6C7kEe" role="2VODD2">
            <node concept="3clFbF" id="3JXBM6C7kMR" role="3cqZAp">
              <node concept="Xl_RD" id="3JXBM6C7kMQ" role="3clFbG">
                <property role="Xl_RC" value="&amp;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="3JXBM6C7kEg" role="IWgqQ">
          <node concept="3clFbS" id="3JXBM6C7kEi" role="2VODD2">
            <node concept="3cpWs8" id="3JXBM6C7mak" role="3cqZAp">
              <node concept="3cpWsn" id="3JXBM6C7mal" role="3cpWs9">
                <property role="TrG5h" value="orig" />
                <node concept="3Tqbb2" id="3JXBM6C7maj" role="1tU5fm">
                  <ref role="ehGHo" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
                </node>
                <node concept="7Obwk" id="3JXBM6C7mam" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="3JXBM6C7mfU" role="3cqZAp">
              <node concept="3cpWsn" id="3JXBM6C7mfV" role="3cpWs9">
                <property role="TrG5h" value="and" />
                <node concept="3Tqbb2" id="3JXBM6C7mfR" role="1tU5fm">
                  <ref role="ehGHo" to="27wh:3JXBM6C3FnV" resolve="And" />
                </node>
                <node concept="2OqwBi" id="3JXBM6C7mfW" role="33vP2m">
                  <node concept="7Obwk" id="3JXBM6C7mfX" role="2Oq$k0" />
                  <node concept="1_qnLN" id="3JXBM6C7mfY" role="2OqNvi">
                    <ref role="1_rbq0" to="27wh:3JXBM6C3FnV" resolve="And" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3JXBM6C7lwX" role="3cqZAp">
              <node concept="2OqwBi" id="3JXBM6C7nRu" role="3clFbG">
                <node concept="2OqwBi" id="3JXBM6C7mqW" role="2Oq$k0">
                  <node concept="37vLTw" id="3JXBM6C7mfZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JXBM6C7mfV" resolve="and" />
                  </node>
                  <node concept="3Tsc0h" id="3JXBM6C7mAj" role="2OqNvi">
                    <ref role="3TtcxE" to="27wh:3JXBM6C3FnW" resolve="conjunct" />
                  </node>
                </node>
                <node concept="TSZUe" id="3JXBM6C7qCF" role="2OqNvi">
                  <node concept="37vLTw" id="3JXBM6C7qM8" role="25WWJ7">
                    <ref role="3cqZAo" node="3JXBM6C7mal" resolve="orig" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3JXBM6C7yTT" role="3cqZAp">
              <node concept="2OqwBi" id="3JXBM6C7_2A" role="3clFbG">
                <node concept="2OqwBi" id="3JXBM6C7z9E" role="2Oq$k0">
                  <node concept="37vLTw" id="3JXBM6C7yTR" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JXBM6C7mfV" resolve="and" />
                  </node>
                  <node concept="3Tsc0h" id="3JXBM6C7zyY" role="2OqNvi">
                    <ref role="3TtcxE" to="27wh:3JXBM6C3FnW" resolve="conjunct" />
                  </node>
                </node>
                <node concept="WFELt" id="3JXBM6C7Dm8" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="IWgqT" id="3JXBM6C7M16" role="1Qtc8A">
        <node concept="1hCUdq" id="3JXBM6C7M18" role="1hCUd6">
          <node concept="3clFbS" id="3JXBM6C7M1a" role="2VODD2">
            <node concept="3clFbF" id="3JXBM6C7M9N" role="3cqZAp">
              <node concept="Xl_RD" id="3JXBM6C7M9M" role="3clFbG">
                <property role="Xl_RC" value="|" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="3JXBM6C7M1c" role="IWgqQ">
          <node concept="3clFbS" id="3JXBM6C7M1e" role="2VODD2">
            <node concept="3cpWs8" id="3JXBM6C7Ocf" role="3cqZAp">
              <node concept="3cpWsn" id="3JXBM6C7Ocg" role="3cpWs9">
                <property role="TrG5h" value="orig" />
                <node concept="3Tqbb2" id="3JXBM6C7Och" role="1tU5fm">
                  <ref role="ehGHo" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
                </node>
                <node concept="7Obwk" id="3JXBM6C7Oci" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="3JXBM6C7Ocj" role="3cqZAp">
              <node concept="3cpWsn" id="3JXBM6C7Ock" role="3cpWs9">
                <property role="TrG5h" value="or" />
                <node concept="3Tqbb2" id="3JXBM6C7Ocl" role="1tU5fm">
                  <ref role="ehGHo" to="27wh:3JXBM6C3FoA" resolve="Or" />
                </node>
                <node concept="2OqwBi" id="3JXBM6C7Ocm" role="33vP2m">
                  <node concept="7Obwk" id="3JXBM6C7Ocn" role="2Oq$k0" />
                  <node concept="1_qnLN" id="3JXBM6C7Oco" role="2OqNvi">
                    <ref role="1_rbq0" to="27wh:3JXBM6C3FoA" resolve="Or" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3JXBM6C7Ocp" role="3cqZAp">
              <node concept="2OqwBi" id="3JXBM6C7Ocq" role="3clFbG">
                <node concept="2OqwBi" id="3JXBM6C7Ocr" role="2Oq$k0">
                  <node concept="37vLTw" id="3JXBM6C7Ocs" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JXBM6C7Ock" resolve="or" />
                  </node>
                  <node concept="3Tsc0h" id="3JXBM6C7QMJ" role="2OqNvi">
                    <ref role="3TtcxE" to="27wh:3JXBM6C3Fp4" resolve="disjunct" />
                  </node>
                </node>
                <node concept="TSZUe" id="3JXBM6C7Ocu" role="2OqNvi">
                  <node concept="37vLTw" id="3JXBM6C7Ocv" role="25WWJ7">
                    <ref role="3cqZAo" node="3JXBM6C7Ocg" resolve="orig" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3JXBM6C7Ocw" role="3cqZAp">
              <node concept="2OqwBi" id="3JXBM6C7Ocx" role="3clFbG">
                <node concept="2OqwBi" id="3JXBM6C7Ocy" role="2Oq$k0">
                  <node concept="37vLTw" id="3JXBM6C7Ocz" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JXBM6C7Ock" resolve="or" />
                  </node>
                  <node concept="3Tsc0h" id="3JXBM6C7R9X" role="2OqNvi">
                    <ref role="3TtcxE" to="27wh:3JXBM6C3Fp4" resolve="disjunct" />
                  </node>
                </node>
                <node concept="WFELt" id="3JXBM6C7Oc_" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="IWgqT" id="3JXBM6C8bwi" role="1Qtc8A">
        <node concept="1hCUdq" id="3JXBM6C8bwk" role="1hCUd6">
          <node concept="3clFbS" id="3JXBM6C8bwm" role="2VODD2">
            <node concept="3clFbF" id="3JXBM6C8cqn" role="3cqZAp">
              <node concept="Xl_RD" id="3JXBM6C8cqm" role="3clFbG">
                <property role="Xl_RC" value="=&gt;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="3JXBM6C8bwo" role="IWgqQ">
          <node concept="3clFbS" id="3JXBM6C8bwq" role="2VODD2">
            <node concept="3cpWs8" id="3JXBM6C8cFs" role="3cqZAp">
              <node concept="3cpWsn" id="3JXBM6C8cFt" role="3cpWs9">
                <property role="TrG5h" value="orig" />
                <node concept="3Tqbb2" id="3JXBM6C8cFu" role="1tU5fm">
                  <ref role="ehGHo" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
                </node>
                <node concept="7Obwk" id="3JXBM6C8cFv" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="3JXBM6C8cFw" role="3cqZAp">
              <node concept="3cpWsn" id="3JXBM6C8cFx" role="3cpWs9">
                <property role="TrG5h" value="_if" />
                <node concept="3Tqbb2" id="3JXBM6C8cFy" role="1tU5fm">
                  <ref role="ehGHo" to="27wh:3JXBM6C3Fph" resolve="If" />
                </node>
                <node concept="2OqwBi" id="3JXBM6C8cFz" role="33vP2m">
                  <node concept="7Obwk" id="3JXBM6C8cF$" role="2Oq$k0" />
                  <node concept="1_qnLN" id="3JXBM6C8cF_" role="2OqNvi">
                    <ref role="1_rbq0" to="27wh:3JXBM6C3Fph" resolve="If" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3JXBM6C8cFA" role="3cqZAp">
              <node concept="2OqwBi" id="3JXBM6C8cFB" role="3clFbG">
                <node concept="2OqwBi" id="3JXBM6C8cFC" role="2Oq$k0">
                  <node concept="37vLTw" id="3JXBM6C8cFD" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JXBM6C8cFx" resolve="_if" />
                  </node>
                  <node concept="3TrEf2" id="3JXBM6C8eLI" role="2OqNvi">
                    <ref role="3Tt5mk" to="27wh:3JXBM6C3Fpi" resolve="antecedent" />
                  </node>
                </node>
                <node concept="2oxUTD" id="3JXBM6C8f7p" role="2OqNvi">
                  <node concept="37vLTw" id="3JXBM6C8fa3" role="2oxUTC">
                    <ref role="3cqZAo" node="3JXBM6C8cFt" resolve="orig" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3JXBM6C8cFH" role="3cqZAp">
              <node concept="2OqwBi" id="3JXBM6C8cFI" role="3clFbG">
                <node concept="2OqwBi" id="3JXBM6C8cFJ" role="2Oq$k0">
                  <node concept="37vLTw" id="3JXBM6C8cFK" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JXBM6C8cFx" resolve="_if" />
                  </node>
                  <node concept="3TrEf2" id="3JXBM6C8fyt" role="2OqNvi">
                    <ref role="3Tt5mk" to="27wh:3JXBM6C3Fpk" resolve="consequent" />
                  </node>
                </node>
                <node concept="zfrQC" id="3JXBM6C8fCx" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="IWgqT" id="3JXBM6C8jXT" role="1Qtc8A">
        <node concept="1hCUdq" id="3JXBM6C8jXU" role="1hCUd6">
          <node concept="3clFbS" id="3JXBM6C8jXV" role="2VODD2">
            <node concept="3clFbF" id="3JXBM6C8jXW" role="3cqZAp">
              <node concept="Xl_RD" id="3JXBM6C8jXX" role="3clFbG">
                <property role="Xl_RC" value="&lt;=&gt;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="3JXBM6C8jXY" role="IWgqQ">
          <node concept="3clFbS" id="3JXBM6C8jXZ" role="2VODD2">
            <node concept="3cpWs8" id="3JXBM6C8jY0" role="3cqZAp">
              <node concept="3cpWsn" id="3JXBM6C8jY1" role="3cpWs9">
                <property role="TrG5h" value="orig" />
                <node concept="3Tqbb2" id="3JXBM6C8jY2" role="1tU5fm">
                  <ref role="ehGHo" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
                </node>
                <node concept="7Obwk" id="3JXBM6C8jY3" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="3JXBM6C8jY4" role="3cqZAp">
              <node concept="3cpWsn" id="3JXBM6C8jY5" role="3cpWs9">
                <property role="TrG5h" value="iff" />
                <node concept="3Tqbb2" id="3JXBM6C8jY6" role="1tU5fm">
                  <ref role="ehGHo" to="27wh:3JXBM6C3Frx" resolve="Iff" />
                </node>
                <node concept="2OqwBi" id="3JXBM6C8jY7" role="33vP2m">
                  <node concept="7Obwk" id="3JXBM6C8jY8" role="2Oq$k0" />
                  <node concept="1_qnLN" id="3JXBM6C8jY9" role="2OqNvi">
                    <ref role="1_rbq0" to="27wh:3JXBM6C3Frx" resolve="Iff" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3JXBM6C8jYa" role="3cqZAp">
              <node concept="2OqwBi" id="3JXBM6C8jYb" role="3clFbG">
                <node concept="2OqwBi" id="3JXBM6C8jYc" role="2Oq$k0">
                  <node concept="37vLTw" id="3JXBM6C8jYd" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JXBM6C8jY5" resolve="iff" />
                  </node>
                  <node concept="3TrEf2" id="3JXBM6C8lqg" role="2OqNvi">
                    <ref role="3Tt5mk" to="27wh:3JXBM6C3FrF" resolve="antecedent" />
                  </node>
                </node>
                <node concept="2oxUTD" id="3JXBM6C8jYf" role="2OqNvi">
                  <node concept="37vLTw" id="3JXBM6C8jYg" role="2oxUTC">
                    <ref role="3cqZAo" node="3JXBM6C8jY1" resolve="orig" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3JXBM6C8jYh" role="3cqZAp">
              <node concept="2OqwBi" id="3JXBM6C8jYi" role="3clFbG">
                <node concept="2OqwBi" id="3JXBM6C8jYj" role="2Oq$k0">
                  <node concept="37vLTw" id="3JXBM6C8jYk" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JXBM6C8jY5" resolve="iff" />
                  </node>
                  <node concept="3TrEf2" id="3JXBM6C8lBM" role="2OqNvi">
                    <ref role="3Tt5mk" to="27wh:3JXBM6C3FrG" resolve="consequent" />
                  </node>
                </node>
                <node concept="zfrQC" id="3JXBM6C8jYm" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="3JXBM6C7kE2" role="1Qtc8$">
        <node concept="CtIbL" id="3JXBM6C7kE4" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
    </node>
    <node concept="1Qtc8_" id="3JXBM6C7GZo" role="IW6Ez">
      <node concept="IWgqT" id="3JXBM6C7GZp" role="1Qtc8A">
        <node concept="1hCUdq" id="3JXBM6C7GZq" role="1hCUd6">
          <node concept="3clFbS" id="3JXBM6C7GZr" role="2VODD2">
            <node concept="3clFbF" id="3JXBM6C7GZs" role="3cqZAp">
              <node concept="Xl_RD" id="3JXBM6C7GZt" role="3clFbG">
                <property role="Xl_RC" value="&amp;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="3JXBM6C7GZu" role="IWgqQ">
          <node concept="3clFbS" id="3JXBM6C7GZv" role="2VODD2">
            <node concept="3cpWs8" id="3JXBM6C7GZw" role="3cqZAp">
              <node concept="3cpWsn" id="3JXBM6C7GZx" role="3cpWs9">
                <property role="TrG5h" value="orig" />
                <node concept="3Tqbb2" id="3JXBM6C7GZy" role="1tU5fm">
                  <ref role="ehGHo" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
                </node>
                <node concept="7Obwk" id="3JXBM6C7GZz" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="3JXBM6C7GZ$" role="3cqZAp">
              <node concept="3cpWsn" id="3JXBM6C7GZ_" role="3cpWs9">
                <property role="TrG5h" value="and" />
                <node concept="3Tqbb2" id="3JXBM6C7GZA" role="1tU5fm">
                  <ref role="ehGHo" to="27wh:3JXBM6C3FnV" resolve="And" />
                </node>
                <node concept="2OqwBi" id="3JXBM6C7GZB" role="33vP2m">
                  <node concept="7Obwk" id="3JXBM6C7GZC" role="2Oq$k0" />
                  <node concept="1_qnLN" id="3JXBM6C7GZD" role="2OqNvi">
                    <ref role="1_rbq0" to="27wh:3JXBM6C3FnV" resolve="And" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3JXBM6C7GZL" role="3cqZAp">
              <node concept="2OqwBi" id="3JXBM6C7GZM" role="3clFbG">
                <node concept="2OqwBi" id="3JXBM6C7GZN" role="2Oq$k0">
                  <node concept="37vLTw" id="3JXBM6C7GZO" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JXBM6C7GZ_" resolve="and" />
                  </node>
                  <node concept="3Tsc0h" id="3JXBM6C7GZP" role="2OqNvi">
                    <ref role="3TtcxE" to="27wh:3JXBM6C3FnW" resolve="conjunct" />
                  </node>
                </node>
                <node concept="WFELt" id="3JXBM6C7GZQ" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="3JXBM6C7GZE" role="3cqZAp">
              <node concept="2OqwBi" id="3JXBM6C7GZF" role="3clFbG">
                <node concept="2OqwBi" id="3JXBM6C7GZG" role="2Oq$k0">
                  <node concept="37vLTw" id="3JXBM6C7GZH" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JXBM6C7GZ_" resolve="and" />
                  </node>
                  <node concept="3Tsc0h" id="3JXBM6C7GZI" role="2OqNvi">
                    <ref role="3TtcxE" to="27wh:3JXBM6C3FnW" resolve="conjunct" />
                  </node>
                </node>
                <node concept="TSZUe" id="3JXBM6C7GZJ" role="2OqNvi">
                  <node concept="37vLTw" id="3JXBM6C7GZK" role="25WWJ7">
                    <ref role="3cqZAo" node="3JXBM6C7GZx" resolve="orig" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="IWgqT" id="3JXBM6C7RN1" role="1Qtc8A">
        <node concept="1hCUdq" id="3JXBM6C7RN2" role="1hCUd6">
          <node concept="3clFbS" id="3JXBM6C7RN3" role="2VODD2">
            <node concept="3clFbF" id="3JXBM6C7RN4" role="3cqZAp">
              <node concept="Xl_RD" id="3JXBM6C7RN5" role="3clFbG">
                <property role="Xl_RC" value="|" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="3JXBM6C7RN6" role="IWgqQ">
          <node concept="3clFbS" id="3JXBM6C7RN7" role="2VODD2">
            <node concept="3cpWs8" id="3JXBM6C7RN8" role="3cqZAp">
              <node concept="3cpWsn" id="3JXBM6C7RN9" role="3cpWs9">
                <property role="TrG5h" value="orig" />
                <node concept="3Tqbb2" id="3JXBM6C7RNa" role="1tU5fm">
                  <ref role="ehGHo" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
                </node>
                <node concept="7Obwk" id="3JXBM6C7RNb" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="3JXBM6C7RNc" role="3cqZAp">
              <node concept="3cpWsn" id="3JXBM6C7RNd" role="3cpWs9">
                <property role="TrG5h" value="or" />
                <node concept="3Tqbb2" id="3JXBM6C7RNe" role="1tU5fm">
                  <ref role="ehGHo" to="27wh:3JXBM6C3FoA" resolve="Or" />
                </node>
                <node concept="2OqwBi" id="3JXBM6C7RNf" role="33vP2m">
                  <node concept="7Obwk" id="3JXBM6C7RNg" role="2Oq$k0" />
                  <node concept="1_qnLN" id="3JXBM6C7RNh" role="2OqNvi">
                    <ref role="1_rbq0" to="27wh:3JXBM6C3FoA" resolve="Or" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3JXBM6C7RNp" role="3cqZAp">
              <node concept="2OqwBi" id="3JXBM6C7RNq" role="3clFbG">
                <node concept="2OqwBi" id="3JXBM6C7RNr" role="2Oq$k0">
                  <node concept="37vLTw" id="3JXBM6C7RNs" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JXBM6C7RNd" resolve="or" />
                  </node>
                  <node concept="3Tsc0h" id="3JXBM6C7RNt" role="2OqNvi">
                    <ref role="3TtcxE" to="27wh:3JXBM6C3Fp4" resolve="disjunct" />
                  </node>
                </node>
                <node concept="WFELt" id="3JXBM6C7RNu" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="3JXBM6C7RNi" role="3cqZAp">
              <node concept="2OqwBi" id="3JXBM6C7RNj" role="3clFbG">
                <node concept="2OqwBi" id="3JXBM6C7RNk" role="2Oq$k0">
                  <node concept="37vLTw" id="3JXBM6C7RNl" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JXBM6C7RNd" resolve="or" />
                  </node>
                  <node concept="3Tsc0h" id="3JXBM6C7RNm" role="2OqNvi">
                    <ref role="3TtcxE" to="27wh:3JXBM6C3Fp4" resolve="disjunct" />
                  </node>
                </node>
                <node concept="TSZUe" id="3JXBM6C7RNn" role="2OqNvi">
                  <node concept="37vLTw" id="3JXBM6C7RNo" role="25WWJ7">
                    <ref role="3cqZAo" node="3JXBM6C7RN9" resolve="orig" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="IWgqT" id="3JXBM6C7ZTg" role="1Qtc8A">
        <node concept="1hCUdq" id="3JXBM6C7ZTi" role="1hCUd6">
          <node concept="3clFbS" id="3JXBM6C7ZTk" role="2VODD2">
            <node concept="3clFbF" id="3JXBM6C80Nd" role="3cqZAp">
              <node concept="Xl_RD" id="3JXBM6C80Nc" role="3clFbG">
                <property role="Xl_RC" value="~" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="3JXBM6C7ZTm" role="IWgqQ">
          <node concept="3clFbS" id="3JXBM6C7ZTo" role="2VODD2">
            <node concept="3cpWs8" id="3JXBM6C814i" role="3cqZAp">
              <node concept="3cpWsn" id="3JXBM6C814j" role="3cpWs9">
                <property role="TrG5h" value="orig" />
                <node concept="3Tqbb2" id="3JXBM6C814k" role="1tU5fm">
                  <ref role="ehGHo" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
                </node>
                <node concept="7Obwk" id="3JXBM6C814l" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="3JXBM6C814m" role="3cqZAp">
              <node concept="3cpWsn" id="3JXBM6C814n" role="3cpWs9">
                <property role="TrG5h" value="not" />
                <node concept="3Tqbb2" id="3JXBM6C814o" role="1tU5fm">
                  <ref role="ehGHo" to="27wh:3JXBM6C3Cnn" resolve="Not" />
                </node>
                <node concept="2OqwBi" id="3JXBM6C814p" role="33vP2m">
                  <node concept="7Obwk" id="3JXBM6C814q" role="2Oq$k0" />
                  <node concept="1_qnLN" id="3JXBM6C814r" role="2OqNvi">
                    <ref role="1_rbq0" to="27wh:3JXBM6C3Cnn" resolve="Not" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3JXBM6C81aD" role="3cqZAp">
              <node concept="2OqwBi" id="3JXBM6C81M8" role="3clFbG">
                <node concept="2OqwBi" id="3JXBM6C81iG" role="2Oq$k0">
                  <node concept="37vLTw" id="3JXBM6C81aB" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JXBM6C814n" resolve="not" />
                  </node>
                  <node concept="3TrEf2" id="3JXBM6C81uc" role="2OqNvi">
                    <ref role="3Tt5mk" to="27wh:3JXBM6C3Cno" resolve="target" />
                  </node>
                </node>
                <node concept="2oxUTD" id="3JXBM6C829D" role="2OqNvi">
                  <node concept="37vLTw" id="3JXBM6C82ah" role="2oxUTC">
                    <ref role="3cqZAo" node="3JXBM6C814j" resolve="orig" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="3JXBM6C7GZR" role="1Qtc8$">
        <node concept="CtIbL" id="3JXBM6C7GZS" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
      </node>
    </node>
  </node>
</model>

