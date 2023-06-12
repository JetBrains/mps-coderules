<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:32ed3462-7683-4dc2-8b0b-8bb7ef0f8860(jetbrains.mps.lang.descriptor.aspects.types@genplan)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="7ab1a6fa-0a11-4b95-9e48-75f363d6cb00" name="jetbrains.mps.lang.generator.plan" version="2" />
  </languages>
  <imports>
    <import index="7j7i" ref="r:647e430d-4f1a-4d18-8ace-69f2d9711419(jetbrains.mps.lang.descriptor.aspects@genplan)" />
  </imports>
  <registry>
    <language id="7ab1a6fa-0a11-4b95-9e48-75f363d6cb00" name="jetbrains.mps.lang.generator.plan">
      <concept id="869728027904920839" name="jetbrains.mps.lang.generator.plan.structure.CheckpointSynchronization" flags="ng" index="26qawf">
        <child id="3750601816087335480" name="checkpoint" index="3pRG92" />
      </concept>
      <concept id="3705377275350227759" name="jetbrains.mps.lang.generator.plan.structure.IncludePlan" flags="ng" index="NozSJ">
        <reference id="3705377275350227762" name="plan" index="NozSM" />
      </concept>
      <concept id="1152961914448136207" name="jetbrains.mps.lang.generator.plan.structure.LanguageEntry" flags="ng" index="2Qf6Nf">
        <child id="1152961914448136208" name="language" index="2Qf6Ng" />
      </concept>
      <concept id="1820634577908471803" name="jetbrains.mps.lang.generator.plan.structure.Plan" flags="ng" index="2VgMpV">
        <child id="1820634577908471815" name="steps" index="2VgMA7" />
      </concept>
      <concept id="1820634577908471809" name="jetbrains.mps.lang.generator.plan.structure.Checkpoint" flags="ng" index="2VgMA1">
        <child id="3750601816081740498" name="cpSpec" index="3ps6aC" />
      </concept>
      <concept id="1820634577908471810" name="jetbrains.mps.lang.generator.plan.structure.Transform" flags="ng" index="2VgMA2">
        <child id="1152961914448142326" name="entries" index="2Qf7GQ" />
      </concept>
      <concept id="6257322641293267918" name="jetbrains.mps.lang.generator.plan.structure.CheckpointDeclaration" flags="ng" index="19BiC4" />
      <concept id="3750601816081740541" name="jetbrains.mps.lang.generator.plan.structure.DeclaredCheckpointSpec" flags="ng" index="3ps6a7">
        <reference id="3750601816081740544" name="cpDecl" index="3ps6dU" />
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
    <node concept="19BiC4" id="4APe_wL1VPG" role="2VgMA7">
      <property role="TrG5h" value="TypecheckingSymbols" />
    </node>
    <node concept="2VgMA2" id="C1f6iDORpM" role="2VgMA7">
      <node concept="2Qf6Nf" id="6E5fMGvfKJ_" role="2Qf7GQ">
        <node concept="2V$Bhx" id="C1f6iDORpL" role="2Qf6Ng">
          <property role="2V$B1T" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c" />
          <property role="2V$B1Q" value="jetbrains.mps.lang.core" />
        </node>
      </node>
    </node>
    <node concept="2VgMA2" id="C1f6iDORpQ" role="2VgMA7">
      <node concept="2Qf6Nf" id="6E5fMGvfKJA" role="2Qf7GQ">
        <node concept="2V$Bhx" id="sL9MTQwOCW" role="2Qf6Ng">
          <property role="2V$B1T" value="afc17aaf-3a3d-4d69-a38d-db90d5e858c6" />
          <property role="2V$B1Q" value="jetbrains.mps.lang.types" />
        </node>
      </node>
    </node>
    <node concept="2VgMA2" id="sL9MTQwOzG" role="2VgMA7">
      <node concept="2Qf6Nf" id="6E5fMGvfKJB" role="2Qf7GQ">
        <node concept="2V$Bhx" id="sL9MTQwOzH" role="2Qf6Ng">
          <property role="2V$B1T" value="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" />
          <property role="2V$B1Q" value="jetbrains.mps.lang.typechecking" />
        </node>
      </node>
    </node>
    <node concept="2VgMA1" id="4APe_wL6Vf4" role="2VgMA7">
      <node concept="3ps6a7" id="4APe_wL6Vfs" role="3ps6aC">
        <ref role="3ps6dU" node="4APe_wL1VPG" resolve="TypecheckingSymbols" />
      </node>
    </node>
    <node concept="26qawf" id="4APe_wL9AqS" role="2VgMA7">
      <node concept="3ps6a7" id="4APe_wL9Ari" role="3pRG92">
        <ref role="3ps6dU" node="4APe_wL1VPG" resolve="TypecheckingSymbols" />
      </node>
    </node>
    <node concept="2VgMA2" id="sL9MTQwV_n" role="2VgMA7">
      <node concept="2Qf6Nf" id="6E5fMGvfKJC" role="2Qf7GQ">
        <node concept="2V$Bhx" id="sL9MTQwV_p" role="2Qf6Ng">
          <property role="2V$B1T" value="35320f26-77cb-4c55-be9f-a97a27770af1" />
          <property role="2V$B1Q" value="jetbrains.mps.logic" />
        </node>
      </node>
      <node concept="2Qf6Nf" id="6E5fMGvfKJD" role="2Qf7GQ">
        <node concept="2V$Bhx" id="sL9MTQwV_q" role="2Qf6Ng">
          <property role="2V$B1T" value="c4803b19-6d89-4a3b-bf82-390769514add" />
          <property role="2V$B1Q" value="jetbrains.mps.lang.coderules" />
        </node>
      </node>
    </node>
    <node concept="2VgMA2" id="C1f6iDORpO" role="2VgMA7">
      <node concept="2Qf6Nf" id="6E5fMGvfKJE" role="2Qf7GQ">
        <node concept="2V$Bhx" id="C1f6iDORpN" role="2Qf6Ng">
          <property role="2V$B1T" value="3a13115c-633c-4c5c-bbcc-75c4219e9555" />
          <property role="2V$B1Q" value="jetbrains.mps.lang.quotation" />
        </node>
      </node>
    </node>
    <node concept="2VgMA2" id="C1f6iDORpS" role="2VgMA7">
      <node concept="2Qf6Nf" id="6E5fMGvfKJF" role="2Qf7GQ">
        <node concept="2V$Bhx" id="C1f6iDORpR" role="2Qf6Ng">
          <property role="2V$B1T" value="f4ad079d-bc71-4ffb-9600-9328705cf998" />
          <property role="2V$B1Q" value="jetbrains.mps.lang.descriptor" />
        </node>
      </node>
    </node>
    <node concept="2VgMA2" id="C1f6iDORpU" role="2VgMA7">
      <node concept="2Qf6Nf" id="6E5fMGvfKJG" role="2Qf7GQ">
        <node concept="2V$Bhx" id="C1f6iDORpT" role="2Qf6Ng">
          <property role="2V$B1T" value="af65afd8-f0dd-4942-87d9-63a55f2a9db1" />
          <property role="2V$B1Q" value="jetbrains.mps.lang.behavior" />
        </node>
      </node>
    </node>
    <node concept="2VgMA2" id="C1f6iDORpW" role="2VgMA7">
      <node concept="2Qf6Nf" id="6E5fMGvfKJH" role="2Qf7GQ">
        <node concept="2V$Bhx" id="C1f6iDORpV" role="2Qf6Ng">
          <property role="2V$B1T" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1" />
          <property role="2V$B1Q" value="jetbrains.mps.lang.smodel" />
        </node>
      </node>
    </node>
    <node concept="NozSJ" id="C1f6iDORr0" role="2VgMA7">
      <ref role="NozSM" to="7j7i:2fM90Pxfljd" resolve="BaseLanguageWithExtensions" />
    </node>
  </node>
</model>

