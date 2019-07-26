<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:72b177ed-1924-4265-b8f3-64e062fd2eed(samples.fitch.firstOrderLogic.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="jfgh" ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(samples.fitch.structure)" />
    <import index="bw37" ref="r:faa478da-573c-4c9e-99e4-b87297289505(samples.fitch.herbrandLogic.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
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
  <node concept="1TIwiD" id="3w0n0hzkN6G">
    <property role="EcuMT" value="4035326440039985580" />
    <property role="TrG5h" value="FirstOrderProof" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="First Order Proof" />
    <property role="3GE5qa" value="proof" />
    <ref role="1TJDcQ" to="jfgh:3w0n0hzgWvH" resolve="AbstractProof" />
  </node>
  <node concept="PlHQZ" id="3w0n0hzkORh">
    <property role="EcuMT" value="4035326440039992785" />
    <property role="TrG5h" value="EqualityRule" />
    <property role="3GE5qa" value="proof.rule" />
  </node>
  <node concept="1TIwiD" id="3w0n0hzkQ4g">
    <property role="EcuMT" value="4035326440039997712" />
    <property role="TrG5h" value="EqualityIntro" />
    <property role="34LRSv" value="=I" />
    <property role="R4oN_" value="Equality Introduction" />
    <property role="3GE5qa" value="proof.rule" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3w0n0hzkZKv" role="PzmwI">
      <ref role="PrY4T" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
    </node>
    <node concept="PrWs8" id="3w0n0hzkQ4h" role="PzmwI">
      <ref role="PrY4T" node="3w0n0hzkORh" resolve="EqualityRule" />
    </node>
  </node>
  <node concept="1TIwiD" id="3w0n0hzkQ4j">
    <property role="EcuMT" value="4035326440039997715" />
    <property role="TrG5h" value="EqualityElim" />
    <property role="34LRSv" value="=E" />
    <property role="R4oN_" value="Equality Elimination" />
    <property role="3GE5qa" value="proof.rule" />
    <ref role="1TJDcQ" to="jfgh:3JXBM6C3FsA" resolve="Judgement" />
    <node concept="PrWs8" id="3w0n0hzl3jq" role="PzmwI">
      <ref role="PrY4T" to="jfgh:3JXBM6C3OtS" resolve="Reasoning" />
    </node>
    <node concept="PrWs8" id="3w0n0hzl3jv" role="PzmwI">
      <ref role="PrY4T" node="3w0n0hzkORh" resolve="EqualityRule" />
    </node>
  </node>
  <node concept="1TIwiD" id="3w0n0hzkQZb">
    <property role="EcuMT" value="4035326440040001483" />
    <property role="TrG5h" value="Equality" />
    <property role="34LRSv" value="=" />
    <property role="R4oN_" value="Equality" />
    <property role="3GE5qa" value="sentence" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3w0n0hzkQZc" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="3w0n0hzkQZh" role="PzmwI">
      <ref role="PrY4T" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
    </node>
    <node concept="1TJgyj" id="3w0n0hzkQZl" role="1TKVEi">
      <property role="IQ2ns" value="4035326440040001493" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="left" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="bw37:2DPo4JTRwsJ" resolve="Term" />
    </node>
    <node concept="1TJgyj" id="3w0n0hzkQZn" role="1TKVEi">
      <property role="IQ2ns" value="4035326440040001495" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="right" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="bw37:2DPo4JTRwsJ" resolve="Term" />
    </node>
  </node>
</model>

