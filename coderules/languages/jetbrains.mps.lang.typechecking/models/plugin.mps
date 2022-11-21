<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:def76fd6-1aa7-4c6c-9d77-632f565496a5(jetbrains.mps.lang.typechecking.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f159adf4-3c93-40f9-9c5a-1f245a8697af" name="jetbrains.mps.lang.aspect" version="2" />
    <use id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="c9d137c4-3259-44f8-80ff-33ab2b506ee4" name="jetbrains.mps.lang.util.order" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports />
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="8974276187400029883" name="jetbrains.mps.lang.resources.structure.FileIcon" flags="ng" index="1QGGSu">
        <property id="2756621024541341363" name="file" index="1iqoE4" />
      </concept>
    </language>
    <language id="f159adf4-3c93-40f9-9c5a-1f245a8697af" name="jetbrains.mps.lang.aspect">
      <concept id="3433054418424672374" name="jetbrains.mps.lang.aspect.structure.SimpleLanguageAspectDescriptor" flags="ng" index="3vrhyV">
        <child id="6106419185511570295" name="mainLanguages" index="QG$2i" />
        <child id="6106419185511570301" name="additionalLanguages" index="QG$2o" />
        <child id="8222125370833980146" name="devkit" index="TkT64" />
        <child id="3433054418425083029" name="icon" index="3vqPLo" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="8222125370833354011" name="jetbrains.mps.lang.smodel.structure.DevkitPointer" flags="ng" index="T9mpH">
        <property id="8222125370833354012" name="devkitName" index="T9mpE" />
        <property id="8222125370833354013" name="devkitId" index="T9mpF" />
      </concept>
      <concept id="3542851458883438784" name="jetbrains.mps.lang.smodel.structure.LanguageId" flags="nn" index="2V$Bhx">
        <property id="3542851458883439831" name="namespace" index="2V$B1Q" />
        <property id="3542851458883439832" name="languageId" index="2V$B1T" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3vrhyV" id="7km57PkcIgQ">
    <property role="TrG5h" value="types" />
    <node concept="2V$Bhx" id="NKt6ynvOIJ" role="QG$2i">
      <property role="2V$B1T" value="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" />
      <property role="2V$B1Q" value="jetbrains.mps.lang.typechecking" />
    </node>
    <node concept="2V$Bhx" id="5MK8bDyOYCL" role="QG$2o">
      <property role="2V$B1T" value="c4803b19-6d89-4a3b-bf82-390769514add" />
      <property role="2V$B1Q" value="jetbrains.mps.lang.coderules" />
    </node>
    <node concept="T9mpH" id="C1f6iDDJI1" role="TkT64">
      <property role="T9mpF" value="888618cf-7697-4adc-80cd-8c6ea3486ef7" />
      <property role="T9mpE" value="jetbrains.mps.devkit.aspect.types" />
    </node>
    <node concept="1QGGSu" id="1PN9XOIV6mk" role="3vqPLo">
      <property role="1iqoE4" value="${module}/icons/typesModel.png" />
    </node>
  </node>
</model>

