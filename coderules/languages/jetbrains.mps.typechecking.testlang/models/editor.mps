<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5e4e4f29-5632-41c5-a47c-40ca5e101249(jetbrains.mps.typechecking.testlang.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="12" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="qulx" ref="r:ec0979fb-ae37-4823-9eaa-8550d9f5c6fd(jetbrains.mps.typechecking.testlang.structure)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpfp" ref="r:00000000-0000-4000-0000-011c89590519(jetbrains.mps.baseLanguage.regexp.jetbrains.mps.regexp.accessory)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ng" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="6516520003787916624" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Condition" flags="ig" index="27VH4U" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1233141163694" name="separatorStyle" index="sWeuL" />
      </concept>
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
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
      <concept id="6718020819487620876" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Default" flags="ng" index="A1WHr" />
      <concept id="3473224453637651916" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder" flags="ng" index="CtIbL">
        <property id="3473224453637651917" name="placeInCell" index="CtIbK" />
      </concept>
      <concept id="1638911550608571617" name="jetbrains.mps.lang.editor.structure.TransformationMenu_Default" flags="ng" index="IW6AY" />
      <concept id="1638911550608610798" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute" flags="ig" index="IWg2L" />
      <concept id="1638911550608610278" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action" flags="ng" index="IWgqT">
        <child id="6202297022026447496" name="canExecuteFunction" index="2jiSrf" />
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
      <concept id="5692353713941573329" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText" flags="ig" index="1hCUdq" />
      <concept id="3308396621974580100" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_Default" flags="ng" index="3p36aQ" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp">
      <concept id="1175161264766" name="jetbrains.mps.baseLanguage.regexp.structure.LineStartRegexp" flags="ng" index="2t4tHJ" />
      <concept id="1175161300324" name="jetbrains.mps.baseLanguage.regexp.structure.LineEndRegexp" flags="ng" index="2t4AhP" />
      <concept id="1175169009571" name="jetbrains.mps.baseLanguage.regexp.structure.FindMatchStatement" flags="nn" index="2ty0qM">
        <child id="1175169023932" name="expr" index="2ty3UH" />
        <child id="1175169154112" name="body" index="2tyzPh" />
      </concept>
      <concept id="1174482753837" name="jetbrains.mps.baseLanguage.regexp.structure.StringLiteralRegexp" flags="ng" index="1OC9wW">
        <property id="1174482761807" name="text" index="1OCb_u" />
      </concept>
      <concept id="1174482804200" name="jetbrains.mps.baseLanguage.regexp.structure.PlusRegexp" flags="ng" index="1OClNT" />
      <concept id="1174482808826" name="jetbrains.mps.baseLanguage.regexp.structure.StarRegexp" flags="ng" index="1OCmVF" />
      <concept id="1174484562151" name="jetbrains.mps.baseLanguage.regexp.structure.SeqRegexp" flags="ng" index="1OJ37Q" />
      <concept id="1174485167097" name="jetbrains.mps.baseLanguage.regexp.structure.BinaryRegexp" flags="ng" index="1OLmFC">
        <child id="1174485176897" name="left" index="1OLpdg" />
        <child id="1174485181039" name="right" index="1OLqdY" />
      </concept>
      <concept id="1174485235885" name="jetbrains.mps.baseLanguage.regexp.structure.UnaryRegexp" flags="ng" index="1OLBAW">
        <child id="1174485243418" name="regexp" index="1OLDsb" />
      </concept>
      <concept id="1174491169200" name="jetbrains.mps.baseLanguage.regexp.structure.ParensRegexp" flags="ng" index="1P8g2x">
        <child id="1174491174779" name="expr" index="1P8hpE" />
      </concept>
      <concept id="1174510540317" name="jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression" flags="nn" index="1Qi9sc">
        <child id="1174510571016" name="regexp" index="1QigWp" />
      </concept>
      <concept id="1174512414484" name="jetbrains.mps.baseLanguage.regexp.structure.MatchRegexpStatement" flags="nn" index="1QpiS5">
        <child id="1174512427594" name="body" index="1Qpmdr" />
        <child id="1174512569438" name="expr" index="1QpSPf" />
      </concept>
      <concept id="1174554186090" name="jetbrains.mps.baseLanguage.regexp.structure.SymbolClassRegexp" flags="ng" index="1SSD1V">
        <child id="1174557628217" name="part" index="1T5LoC" />
      </concept>
      <concept id="1174554211468" name="jetbrains.mps.baseLanguage.regexp.structure.PositiveSymbolClassRegexp" flags="ng" index="1SSJmt" />
      <concept id="1174555732504" name="jetbrains.mps.baseLanguage.regexp.structure.PredefinedSymbolClassRegexp" flags="ng" index="1SYyG9">
        <reference id="1174555843709" name="symbolClass" index="1SYXPG" />
      </concept>
      <concept id="1174558792178" name="jetbrains.mps.baseLanguage.regexp.structure.PredefinedSymbolClassSymbolClassPart" flags="ng" index="1Tadzz">
        <reference id="1174558819022" name="declaration" index="1Takfv" />
      </concept>
      <concept id="1174653354106" name="jetbrains.mps.baseLanguage.regexp.structure.RegexpUsingConstruction" flags="ng" index="1YMW5F">
        <child id="1174653387388" name="regexp" index="1YN4dH" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="7mB3viLaASZ">
    <ref role="1XX52x" to="qulx:7lt0LtPHOlU" resolve="Root" />
    <node concept="3EZMnI" id="7mB3viLaAT1" role="2wV5jI">
      <node concept="3F0A7n" id="7mB3viLaATg" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="7mB3viLaATm" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="ljvvj" id="7mB3viLaAV6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="7mB3viLaATO" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="qulx:7lt0LtPHOme" resolve="stmt" />
        <node concept="l2Vlx" id="7mB3viLaATQ" role="2czzBx" />
        <node concept="tppnM" id="7mB3viLaATW" role="sWeuL">
          <node concept="ljvvj" id="7mB3viLaAV4" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="lj46D" id="7mB3viLaAV8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7mB3viLaATu" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="pVoyu" id="7mB3viLb9NT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7mB3viLaAT4" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7mB3viLb8Fo">
    <ref role="1XX52x" to="qulx:7lt0LtPHOm6" resolve="ExprStmt" />
    <node concept="3EZMnI" id="7mB3viLb8Fq" role="2wV5jI">
      <node concept="3F1sOY" id="7mB3viLb8Fx" role="3EZMnx">
        <ref role="1NtTu8" to="qulx:7lt0LtPHOmo" resolve="expr" />
      </node>
      <node concept="l2Vlx" id="7mB3viLb8Ft" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7mB3viLbaWC">
    <ref role="1XX52x" to="qulx:7mB3viLbaW_" resolve="VarDecl" />
    <node concept="3EZMnI" id="7mB3viLbaWE" role="2wV5jI">
      <node concept="3F0A7n" id="7mB3viLbaWL" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="7mB3viLbaWH" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7mB3viLbaWT">
    <ref role="1XX52x" to="qulx:7mB3viLbaW$" resolve="VarDeclStmt" />
    <node concept="3EZMnI" id="7mB3viLbaWV" role="2wV5jI">
      <node concept="3F0ifn" id="7mB3viLbaX8" role="3EZMnx">
        <property role="3F0ifm" value="var" />
      </node>
      <node concept="3F1sOY" id="7mB3viLbaX2" role="3EZMnx">
        <ref role="1NtTu8" to="qulx:7mB3viLbaWO" resolve="decl" />
        <node concept="A1WHr" id="7mB3viLbcxv" role="3vIgyS">
          <ref role="2ZyFGn" to="qulx:7mB3viLbaW_" resolve="VarDecl" />
        </node>
      </node>
      <node concept="3EZMnI" id="7mB3viLbaXg" role="3EZMnx">
        <node concept="VPM3Z" id="7mB3viLbaXi" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="7mB3viLbaXt" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="7mB3viLbaXz" role="3EZMnx">
          <ref role="1NtTu8" to="qulx:7mB3viLbaWQ" resolve="init" />
        </node>
        <node concept="l2Vlx" id="7mB3viLbaXl" role="2iSdaV" />
        <node concept="pkWqt" id="7mB3viLbaXB" role="pqm2j">
          <node concept="3clFbS" id="7mB3viLbaXC" role="2VODD2">
            <node concept="3clFbF" id="7mB3viLbaXJ" role="3cqZAp">
              <node concept="2OqwBi" id="7mB3viLbc2_" role="3clFbG">
                <node concept="2OqwBi" id="7mB3viLbbaX" role="2Oq$k0">
                  <node concept="pncrf" id="7mB3viLbaXI" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7mB3viLbbEf" role="2OqNvi">
                    <ref role="3Tt5mk" to="qulx:7mB3viLbaWQ" resolve="init" />
                  </node>
                </node>
                <node concept="3x8VRR" id="7mB3viLbcxn" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="7mB3viLbaWY" role="2iSdaV" />
    </node>
  </node>
  <node concept="IW6AY" id="7mB3viLbcyj">
    <ref role="aqKnT" to="qulx:7mB3viLbaW_" resolve="VarDecl" />
    <node concept="1Qtc8_" id="7mB3viLbcyk" role="IW6Ez">
      <node concept="3cWJ9i" id="7mB3viLbcyo" role="1Qtc8$">
        <node concept="CtIbL" id="7mB3viLbcyq" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="7mB3viLbcyu" role="1Qtc8A">
        <node concept="1hCUdq" id="7mB3viLbcyv" role="1hCUd6">
          <node concept="3clFbS" id="7mB3viLbcyw" role="2VODD2">
            <node concept="3clFbF" id="7mB3viLbcyI" role="3cqZAp">
              <node concept="Xl_RD" id="7mB3viLbcyH" role="3clFbG">
                <property role="Xl_RC" value="=" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="7mB3viLbcyx" role="IWgqQ">
          <node concept="3clFbS" id="7mB3viLbcyy" role="2VODD2">
            <node concept="3clFbF" id="7mB3viLbeSs" role="3cqZAp">
              <node concept="2OqwBi" id="7mB3viLbgEc" role="3clFbG">
                <node concept="2OqwBi" id="7mB3viLbg7r" role="2Oq$k0">
                  <node concept="1PxgMI" id="7mB3viLbfYa" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="7mB3viLbfYr" role="3oSUPX">
                      <ref role="cht4Q" to="qulx:7mB3viLbaW$" resolve="VarDeclStmt" />
                    </node>
                    <node concept="2OqwBi" id="7mB3viLbf5f" role="1m5AlR">
                      <node concept="7Obwk" id="7mB3viLbeSq" role="2Oq$k0" />
                      <node concept="1mfA1w" id="7mB3viLbfhs" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="7mB3viLbglz" role="2OqNvi">
                    <ref role="3Tt5mk" to="qulx:7mB3viLbaWQ" resolve="init" />
                  </node>
                </node>
                <node concept="2DeJnY" id="7mB3viLbh39" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="7mB3viLbcyP" role="2jiSrf">
          <node concept="3clFbS" id="7mB3viLbcyQ" role="2VODD2">
            <node concept="3clFbF" id="7mB3viLbcz0" role="3cqZAp">
              <node concept="2OqwBi" id="7mB3viLberK" role="3clFbG">
                <node concept="2OqwBi" id="7mB3viLbdJS" role="2Oq$k0">
                  <node concept="1PxgMI" id="7mB3viLbdx4" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="7mB3viLbdxo" role="3oSUPX">
                      <ref role="cht4Q" to="qulx:7mB3viLbaW$" resolve="VarDeclStmt" />
                    </node>
                    <node concept="2OqwBi" id="7mB3viLbcOA" role="1m5AlR">
                      <node concept="7Obwk" id="7mB3viLbcyZ" role="2Oq$k0" />
                      <node concept="1mfA1w" id="7mB3viLbd4m" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="7mB3viLbe1D" role="2OqNvi">
                    <ref role="3Tt5mk" to="qulx:7mB3viLbaWQ" resolve="init" />
                  </node>
                </node>
                <node concept="3w_OXm" id="7mB3viLbeSk" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7mB3viLbp30">
    <ref role="1XX52x" to="qulx:7mB3viLbp2X" resolve="Int" />
    <node concept="3EZMnI" id="7mB3viLbp32" role="2wV5jI">
      <node concept="3F0A7n" id="7mB3viLbp39" role="3EZMnx">
        <ref role="1NtTu8" to="qulx:7mB3viLbp2Y" resolve="val" />
      </node>
      <node concept="l2Vlx" id="7mB3viLbp35" role="2iSdaV" />
    </node>
  </node>
  <node concept="3p36aQ" id="7mB3viLbp3_">
    <ref role="aqKnT" to="qulx:7mB3viLbp2X" resolve="Int" />
    <node concept="3eGOop" id="7mB3viLbp3J" role="3ft7WO">
      <node concept="ucgPf" id="7mB3viLbp3K" role="3aKz83">
        <node concept="3clFbS" id="7mB3viLbp3L" role="2VODD2">
          <node concept="3cpWs8" id="7mB3viLbqzk" role="3cqZAp">
            <node concept="3cpWsn" id="7mB3viLbqzl" role="3cpWs9">
              <property role="TrG5h" value="node" />
              <node concept="3Tqbb2" id="7mB3viLbqzj" role="1tU5fm">
                <ref role="ehGHo" to="qulx:7mB3viLbp2X" resolve="Int" />
              </node>
              <node concept="2ShNRf" id="7mB3viLbqzm" role="33vP2m">
                <node concept="3zrR0B" id="7mB3viLbqzn" role="2ShVmc">
                  <node concept="3Tqbb2" id="7mB3viLbqzo" role="3zrR0E">
                    <ref role="ehGHo" to="qulx:7mB3viLbp2X" resolve="Int" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7mB3viLbxS1" role="3cqZAp">
            <node concept="2OqwBi" id="7mB3viLbzqQ" role="3clFbG">
              <node concept="2OqwBi" id="7mB3viLby1T" role="2Oq$k0">
                <node concept="37vLTw" id="7mB3viLbxRZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7mB3viLbqzl" resolve="node" />
                </node>
                <node concept="3TrcHB" id="7mB3viLbytZ" role="2OqNvi">
                  <ref role="3TsBF5" to="qulx:7mB3viLbp2Y" resolve="val" />
                </node>
              </node>
              <node concept="tyxLq" id="7mB3viLb$9F" role="2OqNvi">
                <node concept="2YIFZM" id="7mB3viLb$D4" role="tz02z">
                  <ref role="37wK5l" to="wyt6:~Integer.valueOf(java.lang.String):java.lang.Integer" resolve="valueOf" />
                  <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                  <node concept="ub8z3" id="7mB3viLb$Lt" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7mB3viLbp7G" role="3cqZAp">
            <node concept="37vLTw" id="7mB3viLbqzp" role="3clFbG">
              <ref role="3cqZAo" node="7mB3viLbqzl" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="7mB3viLbqCS" role="upBLP">
        <node concept="uGdhv" id="7mB3viLbqGX" role="16NeZM">
          <node concept="3clFbS" id="7mB3viLbqGZ" role="2VODD2">
            <node concept="2ty0qM" id="7mB3viLbr6M" role="3cqZAp">
              <node concept="1Qi9sc" id="7mB3viLbr6N" role="1YN4dH">
                <node concept="1OJ37Q" id="7mB3viLbrwX" role="1QigWp">
                  <node concept="2t4tHJ" id="7mB3viLbrog" role="1OLpdg" />
                  <node concept="1OJ37Q" id="7mB3viLbtoc" role="1OLqdY">
                    <node concept="1OClNT" id="7mB3viLbtfv" role="1OLpdg">
                      <node concept="1SSJmt" id="7mB3viLbrwW" role="1OLDsb">
                        <node concept="1Tadzz" id="7mB3viLbrDD" role="1T5LoC">
                          <ref role="1Takfv" to="tpfp:h5SUwpi" resolve="\d" />
                        </node>
                      </node>
                    </node>
                    <node concept="2t4AhP" id="7mB3viLbtob" role="1OLqdY" />
                  </node>
                </node>
              </node>
              <node concept="ub8z3" id="7mB3viLbrfA" role="2ty3UH" />
              <node concept="3clFbS" id="7mB3viLbr6Q" role="2tyzPh">
                <node concept="3cpWs6" id="7mB3viLbtwT" role="3cqZAp">
                  <node concept="ub8z3" id="7mB3viLbtM5" role="3cqZAk" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7mB3viLbu3L" role="3cqZAp">
              <node concept="10Nm6u" id="7mB3viLb$Uy" role="3cqZAk" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7mB3viLbCLs">
    <ref role="1XX52x" to="qulx:7mB3viLbCL0" resolve="Type" />
    <node concept="3EZMnI" id="7mB3viLbCLu" role="2wV5jI">
      <node concept="3F0A7n" id="7mB3viLbCLC" role="3EZMnx">
        <ref role="1NtTu8" to="qulx:7mB3viLbCL1" resolve="name" />
        <node concept="A1WHr" id="7mB3viLhj$X" role="3vIgyS">
          <ref role="2ZyFGn" to="qulx:7mB3viLbCL0" resolve="Type" />
        </node>
      </node>
      <node concept="3EZMnI" id="7mB3viLggsV" role="3EZMnx">
        <node concept="VPM3Z" id="7mB3viLggsX" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="7mB3viLgkNs" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <node concept="11L4FC" id="7mB3viLglp7" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="7mB3viLglpc" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="7mB3viLgl6e" role="3EZMnx">
          <ref role="1NtTu8" to="qulx:7mB3viLggsO" resolve="val" />
        </node>
        <node concept="3F0ifn" id="7mB3viLglfG" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <node concept="11L4FC" id="7mB3viLglpg" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="7mB3viLggt0" role="2iSdaV" />
        <node concept="pkWqt" id="7mB3viLggt8" role="pqm2j">
          <node concept="3clFbS" id="7mB3viLggt9" role="2VODD2">
            <node concept="3clFbF" id="7mB3viLgg$s" role="3cqZAp">
              <node concept="3y3z36" id="7mB3viLgkwp" role="3clFbG">
                <node concept="10Nm6u" id="7mB3viLgkDX" role="3uHU7w" />
                <node concept="2OqwBi" id="7mB3viLggKY" role="3uHU7B">
                  <node concept="pncrf" id="7mB3viLgg$r" role="2Oq$k0" />
                  <node concept="3TrcHB" id="7mB3viLghud" role="2OqNvi">
                    <ref role="3TsBF5" to="qulx:7mB3viLggsO" resolve="val" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="7mB3viLbCLx" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7mB3viLdltV">
    <ref role="1XX52x" to="qulx:7mB3viLdltS" resolve="StrConst" />
    <node concept="3EZMnI" id="7mB3viLdltX" role="2wV5jI">
      <node concept="3F0ifn" id="7mB3viLdlu4" role="3EZMnx">
        <property role="3F0ifm" value="'" />
        <node concept="11LMrY" id="7mB3viLdvn$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="7mB3viLdlui" role="3EZMnx">
        <ref role="1NtTu8" to="qulx:7mB3viLdltT" resolve="val" />
      </node>
      <node concept="3F0ifn" id="7mB3viLdlua" role="3EZMnx">
        <property role="3F0ifm" value="'" />
        <node concept="11L4FC" id="7mB3viLdvnA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7mB3viLdlu0" role="2iSdaV" />
    </node>
  </node>
  <node concept="3p36aQ" id="7mB3viLdluK">
    <ref role="aqKnT" to="qulx:7mB3viLdltS" resolve="StrConst" />
    <node concept="3eGOop" id="7mB3viLdluR" role="3ft7WO">
      <node concept="ucgPf" id="7mB3viLdluS" role="3aKz83">
        <node concept="3clFbS" id="7mB3viLdluT" role="2VODD2">
          <node concept="3clFbF" id="7mB3viLdlyO" role="3cqZAp">
            <node concept="2ShNRf" id="7mB3viLdlyM" role="3clFbG">
              <node concept="3zrR0B" id="7mB3viLdlIa" role="2ShVmc">
                <node concept="3Tqbb2" id="7mB3viLdlIc" role="3zrR0E">
                  <ref role="ehGHo" to="qulx:7mB3viLdltS" resolve="StrConst" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="7mB3viLdm6v" role="upBLP">
        <node concept="uGdhv" id="7mB3viLdmeQ" role="16NeZM">
          <node concept="3clFbS" id="7mB3viLdmeS" role="2VODD2">
            <node concept="3clFbF" id="7mB3viLdmnu" role="3cqZAp">
              <node concept="Xl_RD" id="7mB3viLdmnt" role="3clFbG">
                <property role="Xl_RC" value="'" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="7mB3viLdma_" role="3ft7WO" />
  </node>
  <node concept="IW6AY" id="7mB3viLgWoG">
    <ref role="aqKnT" to="qulx:7mB3viLbCL0" resolve="Type" />
    <node concept="1Qtc8_" id="7mB3viLgWoH" role="IW6Ez">
      <node concept="3cWJ9i" id="7mB3viLgWoL" role="1Qtc8$">
        <node concept="CtIbL" id="7mB3viLgWoN" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="7mB3viLgWoR" role="1Qtc8A">
        <node concept="1hCUdq" id="7mB3viLgWoS" role="1hCUd6">
          <node concept="3clFbS" id="7mB3viLgWoT" role="2VODD2">
            <node concept="1QpiS5" id="7mB3viLh3gF" role="3cqZAp">
              <node concept="1Qi9sc" id="7mB3viLh3gG" role="1YN4dH">
                <node concept="1OJ37Q" id="7mB3viLh89n" role="1QigWp">
                  <node concept="2t4tHJ" id="7mB3viLh7co" role="1OLpdg" />
                  <node concept="1OJ37Q" id="7mB3viLh8qx" role="1OLqdY">
                    <node concept="1OJ37Q" id="7mB3viLh9eh" role="1OLqdY">
                      <node concept="1P8g2x" id="7mB3viLh8z9" role="1OLpdg">
                        <node concept="1OCmVF" id="7mB3viLhpEo" role="1P8hpE">
                          <node concept="1SYyG9" id="7mB3viLh8WP" role="1OLDsb">
                            <ref role="1SYXPG" to="tpfp:h5SUJUw" resolve="\w" />
                          </node>
                        </node>
                      </node>
                      <node concept="2t4AhP" id="7mB3viLh9eg" role="1OLqdY" />
                    </node>
                    <node concept="1OC9wW" id="7mB3viLh89m" role="1OLpdg">
                      <property role="1OCb_u" value="(" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7mB3viLh3gI" role="1Qpmdr">
                <node concept="3cpWs6" id="7mB3viLh9mY" role="3cqZAp">
                  <node concept="ub8z3" id="7mB3viLh9Ca" role="3cqZAk" />
                </node>
              </node>
              <node concept="ub8z3" id="7mB3viLha_Y" role="1QpSPf" />
            </node>
            <node concept="3cpWs6" id="7mB3viLh9TW" role="3cqZAp">
              <node concept="10Nm6u" id="7mB3viLhabT" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="7mB3viLgWoU" role="IWgqQ">
          <node concept="3clFbS" id="7mB3viLgWoV" role="2VODD2">
            <node concept="3clFbF" id="7mB3viLgYO5" role="3cqZAp">
              <node concept="37vLTI" id="7mB3viLh0Xc" role="3clFbG">
                <node concept="2OqwBi" id="7mB3viLh1na" role="37vLTx">
                  <node concept="ub8z3" id="7mB3viLh13D" role="2Oq$k0" />
                  <node concept="liA8E" id="7mB3viLh2bE" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int):java.lang.String" resolve="substring" />
                    <node concept="3cmrfG" id="7mB3viLh2io" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7mB3viLgYVf" role="37vLTJ">
                  <node concept="7Obwk" id="7mB3viLgYO4" role="2Oq$k0" />
                  <node concept="3TrcHB" id="7mB3viLgZ5H" role="2OqNvi">
                    <ref role="3TsBF5" to="qulx:7mB3viLggsO" resolve="val" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7mB3viLhvtv" role="3cqZAp">
              <node concept="2OqwBi" id="7mB3viLhw1z" role="3clFbG">
                <node concept="1Q80Hx" id="7mB3viLhvtt" role="2Oq$k0" />
                <node concept="liA8E" id="7mB3viLhwvk" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.selectWRTFocusPolicy(org.jetbrains.mps.openapi.model.SNode):void" resolve="selectWRTFocusPolicy" />
                  <node concept="7Obwk" id="7mB3viLhx3z" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="7mB3viLgWN8" role="2jiSrf">
          <node concept="3clFbS" id="7mB3viLgWN9" role="2VODD2">
            <node concept="3clFbF" id="7mB3viLgWUy" role="3cqZAp">
              <node concept="3clFbC" id="7mB3viLgYoQ" role="3clFbG">
                <node concept="10Nm6u" id="7mB3viLgYEC" role="3uHU7w" />
                <node concept="2OqwBi" id="7mB3viLgX74" role="3uHU7B">
                  <node concept="7Obwk" id="7mB3viLgWUx" role="2Oq$k0" />
                  <node concept="3TrcHB" id="7mB3viLgXK6" role="2OqNvi">
                    <ref role="3TsBF5" to="qulx:7mB3viLggsO" resolve="val" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

