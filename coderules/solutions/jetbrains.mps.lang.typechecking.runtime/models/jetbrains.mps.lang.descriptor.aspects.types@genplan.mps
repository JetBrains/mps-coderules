<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:32ed3462-7683-4dc2-8b0b-8bb7ef0f8860(jetbrains.mps.lang.descriptor.aspects.types@genplan)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="18" />
    <use id="7ab1a6fa-0a11-4b95-9e48-75f363d6cb00" name="jetbrains.mps.lang.generator.plan" version="1" />
  </languages>
  <imports>
    <import index="7j7i" ref="r:647e430d-4f1a-4d18-8ace-69f2d9711419(jetbrains.mps.lang.descriptor.aspects@genplan)" />
  </imports>
  <registry>
    <language id="7ab1a6fa-0a11-4b95-9e48-75f363d6cb00" name="jetbrains.mps.lang.generator.plan">
      <concept id="3705377275350227759" name="jetbrains.mps.lang.generator.plan.structure.IncludePlan" flags="ng" index="NozSJ">
        <reference id="3705377275350227762" name="plan" index="NozSM" />
      </concept>
      <concept id="1820634577908471803" name="jetbrains.mps.lang.generator.plan.structure.Plan" flags="ng" index="2VgMpV">
        <child id="1820634577908471815" name="steps" index="2VgMA7" />
      </concept>
      <concept id="1820634577908471810" name="jetbrains.mps.lang.generator.plan.structure.Transform" flags="ng" index="2VgMA2">
        <property id="2209292798354050154" name="individualStepPerGenerator" index="1s431M" />
        <child id="2944629966652439181" name="languages" index="1t_9vn" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
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
  <node concept="2VgMpV" id="C1f6iDJrPS">
    <property role="TrG5h" value="TypesAspect" />
    <node concept="2VgMA2" id="C1f6iDORpM" role="2VgMA7">
      <property role="1s431M" value="true" />
      <node concept="2V$Bhx" id="C1f6iDORpL" role="1t_9vn">
        <property role="2V$B1T" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c" />
        <property role="2V$B1Q" value="jetbrains.mps.lang.core" />
      </node>
    </node>
    <node concept="2VgMA2" id="C1f6iDORpO" role="2VgMA7">
      <property role="1s431M" value="true" />
      <node concept="2V$Bhx" id="C1f6iDORpN" role="1t_9vn">
        <property role="2V$B1T" value="3a13115c-633c-4c5c-bbcc-75c4219e9555" />
        <property role="2V$B1Q" value="jetbrains.mps.lang.quotation" />
      </node>
    </node>
    <node concept="2VgMA2" id="C1f6iDORpQ" role="2VgMA7">
      <property role="1s431M" value="true" />
      <node concept="2V$Bhx" id="C1f6iDORrM" role="1t_9vn">
        <property role="2V$B1T" value="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" />
        <property role="2V$B1Q" value="jetbrains.mps.lang.typechecking" />
      </node>
      <node concept="2V$Bhx" id="C1f6iDORrF" role="1t_9vn">
        <property role="2V$B1T" value="35320f26-77cb-4c55-be9f-a97a27770af1" />
        <property role="2V$B1Q" value="jetbrains.mps.logic" />
      </node>
      <node concept="2V$Bhx" id="C1f6iDORpP" role="1t_9vn">
        <property role="2V$B1T" value="c4803b19-6d89-4a3b-bf82-390769514add" />
        <property role="2V$B1Q" value="jetbrains.mps.lang.coderules" />
      </node>
    </node>
    <node concept="2VgMA2" id="C1f6iDORpS" role="2VgMA7">
      <property role="1s431M" value="true" />
      <node concept="2V$Bhx" id="C1f6iDORpR" role="1t_9vn">
        <property role="2V$B1T" value="f4ad079d-bc71-4ffb-9600-9328705cf998" />
        <property role="2V$B1Q" value="jetbrains.mps.lang.descriptor" />
      </node>
    </node>
    <node concept="2VgMA2" id="C1f6iDORpU" role="2VgMA7">
      <property role="1s431M" value="true" />
      <node concept="2V$Bhx" id="C1f6iDORpT" role="1t_9vn">
        <property role="2V$B1T" value="af65afd8-f0dd-4942-87d9-63a55f2a9db1" />
        <property role="2V$B1Q" value="jetbrains.mps.lang.behavior" />
      </node>
    </node>
    <node concept="2VgMA2" id="C1f6iDORpW" role="2VgMA7">
      <property role="1s431M" value="true" />
      <node concept="2V$Bhx" id="C1f6iDORpV" role="1t_9vn">
        <property role="2V$B1T" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1" />
        <property role="2V$B1Q" value="jetbrains.mps.lang.smodel" />
      </node>
    </node>
    <node concept="2VgMA2" id="C1f6iDORpY" role="2VgMA7">
      <property role="1s431M" value="true" />
      <node concept="2V$Bhx" id="C1f6iDORpX" role="1t_9vn">
        <property role="2V$B1T" value="35320f26-77cb-4c55-be9f-a97a27770af1" />
        <property role="2V$B1Q" value="jetbrains.mps.logic" />
      </node>
    </node>
    <node concept="NozSJ" id="C1f6iDORr0" role="2VgMA7">
      <ref role="NozSM" to="7j7i:2fM90Pxfljd" resolve="BaseLanguageWithExtensions" />
    </node>
  </node>
</model>

