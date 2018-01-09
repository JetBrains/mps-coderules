<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8762d21a-5bfe-45a2-8a7c-66fa5147f3db(jetbrains.mps.fitch.herbrand)">
  <persistence version="9" />
  <languages>
    <use id="06b7c5c7-e359-4f4b-a581-5d0c9323af39" name="jetbrains.mps.fitch" version="1" />
    <use id="748b3ba1-2791-4ee8-b985-a5598baa7112" name="jetbrains.mps.logic.herbrand" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="ec79e64d-4cbb-4f6c-b7b7-108dd125aba6" name="jetbrains.mps.logic.propositional">
      <concept id="4322786184247881316" name="jetbrains.mps.logic.propositional.structure.OrIntro" flags="ng" index="2jWz55" />
      <concept id="4322786184247817766" name="jetbrains.mps.logic.propositional.structure.Or" flags="ng" index="2jWM$7">
        <child id="4322786184247817796" name="disjunct" index="2jWM__" />
      </concept>
    </language>
    <language id="06b7c5c7-e359-4f4b-a581-5d0c9323af39" name="jetbrains.mps.fitch">
      <concept id="4322786184247854968" name="jetbrains.mps.fitch.structure.Reasoning" flags="ng" index="2jWHxp">
        <child id="2497161927181071993" name="conclusion" index="3MT$nN" />
      </concept>
      <concept id="4322786184247818020" name="jetbrains.mps.fitch.structure.Proof" flags="ng" index="2jWMw5">
        <property id="2994859399702197792" name="description" index="26WHrx" />
        <child id="4322786184248036774" name="content" index="2jVTa7" />
        <child id="657004910291159451" name="goal" index="GyqZB" />
      </concept>
      <concept id="4322786184247818022" name="jetbrains.mps.fitch.structure.Judgement" flags="ng" index="2jWMw7">
        <child id="4322786184247848320" name="premise" index="2jWFax" />
      </concept>
      <concept id="4322786184247818035" name="jetbrains.mps.fitch.structure.Basis" flags="ng" index="2jWMwi">
        <reference id="4322786184247818157" name="reasoning" index="2jWMyc" />
      </concept>
      <concept id="657004910291123662" name="jetbrains.mps.fitch.structure.Premise" flags="ng" index="GydIM" />
      <concept id="657004910291159432" name="jetbrains.mps.fitch.structure.Goal" flags="ng" index="GyqZO">
        <child id="657004910291159433" name="sentence" index="GyqZP" />
      </concept>
    </language>
    <language id="748b3ba1-2791-4ee8-b985-a5598baa7112" name="jetbrains.mps.logic.herbrand">
      <concept id="3059457401299011405" name="jetbrains.mps.logic.herbrand.structure.Forall" flags="ng" index="3jEQs6">
        <child id="3059457401299011419" name="variable" index="3jEQsg" />
        <child id="3059457401299011420" name="sentence" index="3jEQsn" />
      </concept>
      <concept id="3059457401299011411" name="jetbrains.mps.logic.herbrand.structure.Exists" flags="ng" index="3jEQso">
        <child id="3059457401299011416" name="variable" index="3jEQsj" />
        <child id="3059457401299011414" name="sentence" index="3jEQst" />
      </concept>
      <concept id="3059457401299011425" name="jetbrains.mps.logic.herbrand.structure.Relation" flags="ng" index="3jEQsE">
        <child id="3059457401299011435" name="member" index="3jEQsw" />
      </concept>
      <concept id="3059457401299011374" name="jetbrains.mps.logic.herbrand.structure.Object" flags="ng" index="3jEQt_" />
      <concept id="3059457401299011378" name="jetbrains.mps.logic.herbrand.structure.Variable" flags="ng" index="3jEQtT" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2jWMw5" id="2DPo4JTSM5F">
    <property role="TrG5h" value="Test1" />
    <property role="26WHrx" value="Proove EX.p(X) given AX.p(X)" />
    <node concept="GyqZO" id="Vo$tzLD0uS" role="GyqZB">
      <node concept="3jEQso" id="Vo$tzLD0uW" role="GyqZP">
        <node concept="3jEQtT" id="Vo$tzLD0uY" role="3jEQsj">
          <property role="TrG5h" value="X" />
        </node>
        <node concept="3jEQsE" id="Vo$tzLD0v7" role="3jEQst">
          <property role="TrG5h" value="p" />
          <node concept="3jEQtT" id="Vo$tzLD0vb" role="3jEQsw">
            <property role="TrG5h" value="X" />
          </node>
        </node>
      </node>
    </node>
    <node concept="GydIM" id="Vo$tzLD32O" role="2jVTa7">
      <node concept="3jEQs6" id="Vo$tzLD32S" role="3MT$nN">
        <node concept="3jEQtT" id="Vo$tzLD32U" role="3jEQsg">
          <property role="TrG5h" value="X" />
        </node>
        <node concept="3jEQsE" id="Vo$tzLD333" role="3jEQsn">
          <property role="TrG5h" value="p" />
          <node concept="3jEQtT" id="Vo$tzLD335" role="3jEQsw">
            <property role="TrG5h" value="X" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2jWz55" id="Vo$tzLD33x" role="2jVTa7">
      <node concept="2jWMwi" id="Vo$tzLD33I" role="2jWFax">
        <ref role="2jWMyc" node="Vo$tzLD32O" />
      </node>
      <node concept="2jWM$7" id="Vo$tzLD33T" role="3MT$nN">
        <node concept="3jEQsE" id="Vo$tzLD33O" role="2jWM__">
          <property role="TrG5h" value="q" />
          <node concept="3jEQtT" id="Vo$tzLD33Q" role="3jEQsw">
            <property role="TrG5h" value="X" />
          </node>
        </node>
        <node concept="3jEQs6" id="Vo$tzLD342" role="2jWM__">
          <node concept="3jEQtT" id="Vo$tzLD344" role="3jEQsg">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="3jEQsE" id="Vo$tzLDATB" role="3jEQsn">
            <property role="TrG5h" value="p" />
            <node concept="3jEQt_" id="Vo$tzLDDC2" role="3jEQsw">
              <property role="TrG5h" value="fun" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

