<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:39840d4e-f61c-4452-88c5-75b1eb10e892(jetbrains.mps.lang.typechecking.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="7lmP5gALJri">
    <property role="EcuMT" value="8455178808327599826" />
    <property role="TrG5h" value="TypecheckingQueries" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="typechecking queries" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7lmP5gALKoA" role="1TKVEi">
      <property role="IQ2ns" value="8455178808327603750" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="template" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7lmP5gALJP$" resolve="TypecheckingQueryTemplate" />
    </node>
  </node>
  <node concept="1TIwiD" id="7lmP5gALJP$">
    <property role="EcuMT" value="8455178808327601508" />
    <property role="TrG5h" value="TypecheckingQueryTemplate" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7lmP5gALJP_" role="1TKVEi">
      <property role="IQ2ns" value="8455178808327601509" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
  </node>
  <node concept="1TIwiD" id="7lmP5gALJQ1">
    <property role="EcuMT" value="8455178808327601537" />
    <property role="TrG5h" value="CheckQueryTemplate" />
    <property role="34LRSv" value="check" />
    <ref role="1TJDcQ" node="7lmP5gALJP$" resolve="TypecheckingQueryTemplate" />
  </node>
  <node concept="1TIwiD" id="7lmP5gALKDQ">
    <property role="EcuMT" value="8455178808327604854" />
    <property role="TrG5h" value="TypeofQueryTemplate" />
    <property role="34LRSv" value="typeOf" />
    <ref role="1TJDcQ" node="7lmP5gALJP$" resolve="TypecheckingQueryTemplate" />
  </node>
  <node concept="1TIwiD" id="7lmP5gAYc5S">
    <property role="EcuMT" value="8455178808330862968" />
    <property role="TrG5h" value="TypecheckingQueryParameter" />
    <property role="34LRSv" value="query" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="7lmP5gAYIZq">
    <property role="EcuMT" value="8455178808331005914" />
    <property role="TrG5h" value="ConvertsQueryTemplate" />
    <property role="34LRSv" value="convertsTo" />
    <ref role="1TJDcQ" node="7lmP5gALJP$" resolve="TypecheckingQueryTemplate" />
  </node>
  <node concept="1TIwiD" id="7lmP5gAYJev">
    <property role="EcuMT" value="8455178808331006879" />
    <property role="TrG5h" value="CoerceToQueryTemplate" />
    <property role="34LRSv" value="coerceTo" />
    <ref role="1TJDcQ" node="7lmP5gALJP$" resolve="TypecheckingQueryTemplate" />
  </node>
</model>

