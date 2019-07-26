<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:dbdd79b0-220d-41f0-b3ef-b9e8311cce7a(jetbrains.mps.lang.typechecking.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="4" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="3" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="zfi7" ref="r:39840d4e-f61c-4452-88c5-75b1eb10e892(jetbrains.mps.lang.typechecking.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
      <concept id="1174663118805" name="jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement" flags="nn" index="1ZobV4" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1YbPZF" id="oI9Yrc9SS">
    <property role="TrG5h" value="typeof_SNodeAssignTypeOperation" />
    <node concept="3clFbS" id="oI9Yrc9ST" role="18ibNy">
      <node concept="1Z5TYs" id="oI9Yrca4p" role="3cqZAp">
        <node concept="mw_s8" id="oI9Yrca4H" role="1ZfhKB">
          <node concept="2c44tf" id="oI9Yrca4D" role="mwGJk">
            <node concept="10P_77" id="oI9Yrca5G" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="oI9Yrca4s" role="1ZfhK$">
          <node concept="1Z2H0r" id="oI9Yrc9Vt" role="mwGJk">
            <node concept="1YBJjd" id="oI9Yrc9Xf" role="1Z2MuG">
              <ref role="1YBMHb" node="oI9Yrc9SV" resolve="ato" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1ZobV4" id="oI9YrcaYJ" role="3cqZAp">
        <node concept="mw_s8" id="oI9YrcaZ_" role="1ZfhKB">
          <node concept="2c44tf" id="oI9YrcaZx" role="mwGJk">
            <node concept="3Tqbb2" id="oI9Yrcb3x" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="oI9YrcaYM" role="1ZfhK$">
          <node concept="1Z2H0r" id="oI9Yrca6M" role="mwGJk">
            <node concept="2OqwBi" id="oI9YrcahM" role="1Z2MuG">
              <node concept="1YBJjd" id="oI9Yrca8F" role="2Oq$k0">
                <ref role="1YBMHb" node="oI9Yrc9SV" resolve="ato" />
              </node>
              <node concept="3TrEf2" id="oI9Yrcat9" role="2OqNvi">
                <ref role="3Tt5mk" to="zfi7:oI9Yrc9Ch" resolve="typeExpr" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="oI9Yrc9SV" role="1YuTPh">
      <property role="TrG5h" value="ato" />
      <ref role="1YaFvo" to="zfi7:oI9Yrc9wC" resolve="SNodeSetTypeOperation" />
    </node>
  </node>
</model>

