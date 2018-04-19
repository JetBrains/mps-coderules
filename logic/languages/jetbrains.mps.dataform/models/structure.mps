<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:575429ab-72f6-4385-a61f-a1f1f27e3490(jetbrains.mps.dataform.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="6" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="JOGAOsxanH">
    <property role="EcuMT" value="861509610434242029" />
    <property role="TrG5h" value="DataForm" />
    <ref role="1TJDcQ" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
    <node concept="1TJgyj" id="JOGAOsxaC6" role="1TKVEi">
      <property role="IQ2ns" value="861509610434243078" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="decl" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="JOGAOsxaC9" resolve="DataFormDeclaration" />
    </node>
    <node concept="1TJgyj" id="JOGAOsxaC4" role="1TKVEi">
      <property role="IQ2ns" value="861509610434243076" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="override" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="JOGAOsxTDl" resolve="DataFormFeatureOverride" />
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxaC9">
    <property role="EcuMT" value="861509610434243081" />
    <property role="TrG5h" value="DataFormDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="JOGAOsxaCc" role="1TKVEi">
      <property role="IQ2ns" value="861509610434243084" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="template" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="JOGAOsxiLy" resolve="DataFormTemplate" />
    </node>
    <node concept="PrWs8" id="JOGAOsxaCa" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="1TJgyj" id="JOGAOsxaCh" role="1TKVEi">
      <property role="IQ2ns" value="861509610434243089" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="prototype" />
      <ref role="20lvS9" node="JOGAOsxaC9" resolve="DataFormDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxaCw">
    <property role="EcuMT" value="861509610434243104" />
    <property role="TrG5h" value="DataFormTable" />
    <property role="34LRSv" value="DataForm Table" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="JOGAOsxaCx" role="1TKVEi">
      <property role="IQ2ns" value="861509610434243105" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="contents" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="JOGAOsxaC9" resolve="DataFormDeclaration" />
    </node>
    <node concept="PrWs8" id="JOGAOsxfAQ" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxiLy">
    <property role="EcuMT" value="861509610434276450" />
    <property role="TrG5h" value="DataFormTemplate" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="JOGAOsxiLz" role="1TKVEi">
      <property role="IQ2ns" value="861509610434276451" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="JOGAOsxiL_" resolve="DataFormFeature" />
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxiL_">
    <property role="EcuMT" value="861509610434276453" />
    <property role="TrG5h" value="DataFormFeature" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="feature" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="JOGAOsxiLC" role="1TKVEl">
      <property role="IQ2nx" value="861509610434276456" />
      <property role="TrG5h" value="final" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="JOGAOsxiLA" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="1TJgyj" id="JOGAOsxmrx" role="1TKVEi">
      <property role="IQ2ns" value="861509610434291425" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="getter" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="JOGAOsxm2z">
    <property role="EcuMT" value="861509610434289827" />
    <property role="TrG5h" value="ChildFeature" />
    <property role="34LRSv" value="child" />
    <property role="3GE5qa" value="feature" />
    <ref role="1TJDcQ" node="JOGAOsxiL_" resolve="DataFormFeature" />
  </node>
  <node concept="1TIwiD" id="JOGAOsxnj6">
    <property role="EcuMT" value="861509610434294982" />
    <property role="TrG5h" value="ValueFeature" />
    <property role="34LRSv" value="value" />
    <property role="3GE5qa" value="feature" />
    <ref role="1TJDcQ" node="JOGAOsxiL_" resolve="DataFormFeature" />
  </node>
  <node concept="1TIwiD" id="JOGAOsxpXw">
    <property role="EcuMT" value="861509610434305888" />
    <property role="3GE5qa" value="feature" />
    <property role="TrG5h" value="ListFeature" />
    <property role="34LRSv" value="list" />
    <ref role="1TJDcQ" node="JOGAOsxiL_" resolve="DataFormFeature" />
  </node>
  <node concept="1TIwiD" id="JOGAOsxTDl">
    <property role="EcuMT" value="861509610434435669" />
    <property role="3GE5qa" value="feature" />
    <property role="TrG5h" value="DataFormFeatureOverride" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="JOGAOsxTDo" role="1TKVEi">
      <property role="IQ2ns" value="861509610434435672" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="JOGAOsxiL_" resolve="DataFormFeature" />
    </node>
    <node concept="1TJgyj" id="JOGAOsxTDm" role="1TKVEi">
      <property role="IQ2ns" value="861509610434435670" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="getter" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="PlHQZ" id="JOGAOsIRhm">
    <property role="EcuMT" value="861509610437833814" />
    <property role="TrG5h" value="Capture" />
  </node>
</model>

