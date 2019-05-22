<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c18170ff-96aa-486a-aea5-01ae6cdbba3f(samples.fitch.firstOrderLogic.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="12" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="8v9h" ref="r:873e37f0-b045-47b9-ae9e-db79c2628975(samples.fitch.editor)" />
    <import index="jfgh" ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(samples.fitch.structure)" />
    <import index="bw37" ref="r:faa478da-573c-4c9e-99e4-b87297289505(samples.fitch.herbrandLogic.structure)" />
    <import index="yhz9" ref="r:72b177ed-1924-4265-b8f3-64e062fd2eed(samples.fitch.firstOrderLogic.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
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
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="4242538589859161874" name="jetbrains.mps.lang.editor.structure.ExplicitHintsSpecification" flags="ng" index="2w$q5c">
        <child id="4242538589859162459" name="hints" index="2w$qW5" />
      </concept>
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW">
        <child id="7033942394258392116" name="overridenEditorComponent" index="1PM95z" />
      </concept>
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
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="3308396621974580100" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_Default" flags="ng" index="3p36aQ" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
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
      <concept id="7033942394256351208" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclarationReference" flags="ng" index="1PE4EZ">
        <reference id="7033942394256351817" name="editorComponent" index="1PE7su" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
  </registry>
  <node concept="24kQdi" id="3w0n0hzkN7k">
    <property role="3GE5qa" value="proof" />
    <ref role="1XX52x" to="yhz9:3w0n0hzkN6G" resolve="FirstOrderProof" />
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
  <node concept="3p36aQ" id="3w0n0hzkOyd">
    <property role="3GE5qa" value="proof" />
    <ref role="aqKnT" to="yhz9:3w0n0hzkN6G" resolve="FirstOrderProof" />
  </node>
  <node concept="24kQdi" id="3w0n0hzkQZq">
    <property role="3GE5qa" value="sentence" />
    <ref role="1XX52x" to="yhz9:3w0n0hzkQZb" resolve="Equality" />
    <node concept="3EZMnI" id="3w0n0hzkQZs" role="2wV5jI">
      <node concept="3F1sOY" id="3w0n0hzkQZA" role="3EZMnx">
        <ref role="1NtTu8" to="yhz9:3w0n0hzkQZl" resolve="left" />
      </node>
      <node concept="3F0ifn" id="3w0n0hzkQZG" role="3EZMnx">
        <property role="3F0ifm" value="=" />
        <node concept="11L4FC" id="3w0n0hzkQZY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="3w0n0hzkR03" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="3w0n0hzkQZT" role="3EZMnx">
        <ref role="1NtTu8" to="yhz9:3w0n0hzkQZn" resolve="right" />
      </node>
      <node concept="l2Vlx" id="3w0n0hzkQZv" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3w0n0hzkZKW">
    <property role="3GE5qa" value="proof.rule" />
    <ref role="1XX52x" to="yhz9:3w0n0hzkQ4g" resolve="EqualityIntro" />
    <node concept="3EZMnI" id="3JXBM6C3MQ5" role="2wV5jI">
      <node concept="3F1sOY" id="2aBGSFggwfm" role="3EZMnx">
        <ref role="1NtTu8" to="jfgh:2aBGSFggvpT" resolve="conclusion" />
      </node>
      <node concept="l2Vlx" id="3JXBM6C3MQ8" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3w0n0hzl0CX">
    <property role="3GE5qa" value="proof.rule" />
    <ref role="1XX52x" to="yhz9:3w0n0hzkQ4g" resolve="EqualityIntro" />
    <node concept="3EZMnI" id="3w0n0hzl0DW" role="2wV5jI">
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
      <node concept="l2Vlx" id="3w0n0hzl0DZ" role="2iSdaV" />
    </node>
    <node concept="2aJ2om" id="3w0n0hzl0DU" role="CpUAK">
      <ref role="2$4xQ3" to="8v9h:$u9BK_zG6f" resolve="BASIS" />
    </node>
  </node>
  <node concept="24kQdi" id="3w0n0hzl0Et">
    <property role="3GE5qa" value="proof.rule" />
    <ref role="1XX52x" to="yhz9:3w0n0hzkQ4g" resolve="EqualityIntro" />
    <node concept="2aJ2om" id="3w0n0hzl0Ex" role="CpUAK">
      <ref role="2$4xQ3" to="8v9h:$u9BK_z27v" resolve="ID" />
    </node>
    <node concept="3EZMnI" id="$u9BK_zdQf" role="2wV5jI">
      <node concept="1HlG4h" id="$u9BK_zdQg" role="3EZMnx">
        <node concept="1HfYo3" id="$u9BK_zdQh" role="1HlULh">
          <node concept="3TQlhw" id="$u9BK_zdQi" role="1Hhtcw">
            <node concept="3clFbS" id="$u9BK_zdQj" role="2VODD2">
              <node concept="3clFbF" id="$u9BK_zdQk" role="3cqZAp">
                <node concept="2YIFZM" id="$u9BK_zdQl" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
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
  <node concept="PKFIW" id="4h0MmDW88l0">
    <property role="3GE5qa" value="proof.rule" />
    <property role="TrG5h" value="EqualityElim_DOC" />
    <ref role="1XX52x" to="yhz9:3w0n0hzkQ4j" resolve="EqualityElim" />
    <node concept="3EZMnI" id="4h0MmDW88l4" role="2wV5jI">
      <node concept="3F0ifn" id="4h0MmDW88lb" role="3EZMnx">
        <property role="3F0ifm" value="Equality Elimination" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW88le" role="3EZMnx" />
      <node concept="3F0ifn" id="4h0MmDW88lh" role="3EZMnx">
        <property role="3F0ifm" value="Eliminator for equality relation." />
        <node concept="Vb9p2" id="4h0MmDW88ll" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW88ln" role="3EZMnx">
        <property role="3F0ifm" value="Must have two bases (premises) : PREMISE and an equality of the form (LEFT = RIGHT)." />
        <node concept="Vb9p2" id="4h0MmDW88X5" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW88X7" role="3EZMnx">
        <property role="3F0ifm" value="Conclusion must match PREMISE after consistently replacing LEFT with RIGHT (or the other way around)." />
        <node concept="Vb9p2" id="4h0MmDW88Xg" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="4h0MmDW88Xi" role="3EZMnx" />
      <node concept="3F0ifn" id="4h0MmDW88WY" role="3EZMnx">
        <property role="3F0ifm" value="Replacement must be substitutable for the term being replaced." />
      </node>
      <node concept="3F0ifn" id="4h0MmDW88Xt" role="3EZMnx" />
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
      <node concept="2iRkQZ" id="4h0MmDW88l7" role="2iSdaV" />
    </node>
    <node concept="1PE4EZ" id="4h0MmDW88l2" role="1PM95z">
      <ref role="1PE7su" to="8v9h:4h0MmDW7NkU" resolve="Judgement_DOC" />
    </node>
  </node>
</model>

