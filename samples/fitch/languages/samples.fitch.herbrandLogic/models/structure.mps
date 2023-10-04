<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:faa478da-573c-4c9e-99e4-b87297289505(samples.fitch.herbrandLogic.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="27wh" ref="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(samples.fitch.propositionalLogic.structure)" />
    <import index="jfgh" ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(samples.fitch.structure)" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="2DPo4JTRwsI">
    <property role="EcuMT" value="3059457401299011374" />
    <property role="TrG5h" value="Object" />
    <property role="34LRSv" value="object" />
    <property role="3GE5qa" value="sentence" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2DPo4JTRwt9" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="2DPo4JTRwsK" role="PzmwI">
      <ref role="PrY4T" node="2DPo4JTRwsJ" resolve="Term" />
    </node>
  </node>
  <node concept="PlHQZ" id="2DPo4JTRwsJ">
    <property role="EcuMT" value="3059457401299011375" />
    <property role="TrG5h" value="Term" />
    <property role="3GE5qa" value="sentence" />
  </node>
  <node concept="1TIwiD" id="2DPo4JTRwsM">
    <property role="EcuMT" value="3059457401299011378" />
    <property role="TrG5h" value="Variable" />
    <property role="34LRSv" value="variable" />
    <property role="3GE5qa" value="sentence" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2DPo4JTRwt2" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="2DPo4JTRwsN" role="PzmwI">
      <ref role="PrY4T" node="2DPo4JTRwsJ" resolve="Term" />
    </node>
  </node>
  <node concept="1TIwiD" id="2DPo4JTRwsP">
    <property role="EcuMT" value="3059457401299011381" />
    <property role="TrG5h" value="Function" />
    <property role="34LRSv" value="function" />
    <property role="3GE5qa" value="sentence" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2DPo4JTRwtv" role="1TKVEi">
      <property role="IQ2ns" value="3059457401299011423" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="2DPo4JTRwsJ" resolve="Term" />
    </node>
    <node concept="PrWs8" id="2DPo4JTRwsV" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="2DPo4JTRwsQ" role="PzmwI">
      <ref role="PrY4T" node="2DPo4JTRwsJ" resolve="Term" />
    </node>
  </node>
  <node concept="1TIwiD" id="2DPo4JTRwtd">
    <property role="EcuMT" value="3059457401299011405" />
    <property role="TrG5h" value="Forall" />
    <property role="34LRSv" value="forall" />
    <property role="R4oN_" value="Universal Sentence" />
    <property role="3GE5qa" value="sentence" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2DPo4JTRwtr" role="1TKVEi">
      <property role="IQ2ns" value="3059457401299011419" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2DPo4JTRwsM" resolve="Variable" />
    </node>
    <node concept="1TJgyj" id="2DPo4JTRwts" role="1TKVEi">
      <property role="IQ2ns" value="3059457401299011420" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="sentence" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
    </node>
    <node concept="PrWs8" id="2DPo4JTSLdQ" role="PzmwI">
      <ref role="PrY4T" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
    </node>
  </node>
  <node concept="1TIwiD" id="2DPo4JTRwtj">
    <property role="EcuMT" value="3059457401299011411" />
    <property role="TrG5h" value="Exists" />
    <property role="34LRSv" value="exists" />
    <property role="R4oN_" value="Existentional Sentence" />
    <property role="3GE5qa" value="sentence" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2DPo4JTRwto" role="1TKVEi">
      <property role="IQ2ns" value="3059457401299011416" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2DPo4JTRwsM" resolve="Variable" />
    </node>
    <node concept="1TJgyj" id="2DPo4JTRwtm" role="1TKVEi">
      <property role="IQ2ns" value="3059457401299011414" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="sentence" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
    </node>
    <node concept="PrWs8" id="2DPo4JTSLdN" role="PzmwI">
      <ref role="PrY4T" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
    </node>
  </node>
  <node concept="1TIwiD" id="2DPo4JTRwtx">
    <property role="EcuMT" value="3059457401299011425" />
    <property role="TrG5h" value="Relation" />
    <property role="34LRSv" value="relation" />
    <property role="R4oN_" value="Relational" />
    <property role="3GE5qa" value="sentence" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2DPo4JTRwtF" role="1TKVEi">
      <property role="IQ2ns" value="3059457401299011435" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="member" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="2DPo4JTRwsJ" resolve="Term" />
    </node>
    <node concept="PrWs8" id="2DPo4JTRwtB" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="2DPo4JTSLdT" role="PzmwI">
      <ref role="PrY4T" to="jfgh:4LBPYGV4cY1" resolve="Sentence" />
    </node>
  </node>
  <node concept="1TIwiD" id="Vo$tzLEGtD">
    <property role="EcuMT" value="1069765272453957481" />
    <property role="TrG5h" value="ForallIntro" />
    <property role="34LRSv" value="∀I" />
    <property role="R4oN_" value="Universal Introduction" />
    <property role="3GE5qa" value="proof.rule" />
    <ref role="1TJDcQ" to="jfgh:3JXBM6C3FsA" resolve="Judgement" />
    <node concept="PrWs8" id="3w0n0hzjEBR" role="PzmwI">
      <ref role="PrY4T" node="3w0n0hziLce" resolve="QuantifierRule" />
    </node>
  </node>
  <node concept="1TIwiD" id="Vo$tzLEGtE">
    <property role="EcuMT" value="1069765272453957482" />
    <property role="TrG5h" value="ForallElim" />
    <property role="34LRSv" value="∀E" />
    <property role="R4oN_" value="Universal Elimination" />
    <property role="3GE5qa" value="proof.rule" />
    <ref role="1TJDcQ" to="jfgh:3JXBM6C3FsA" resolve="Judgement" />
    <node concept="PrWs8" id="3w0n0hzjEBP" role="PzmwI">
      <ref role="PrY4T" node="3w0n0hziLce" resolve="QuantifierRule" />
    </node>
  </node>
  <node concept="1TIwiD" id="Vo$tzLEGtF">
    <property role="EcuMT" value="1069765272453957483" />
    <property role="TrG5h" value="ExistsIntro" />
    <property role="34LRSv" value="∃I" />
    <property role="R4oN_" value="Existential Introduction" />
    <property role="3GE5qa" value="proof.rule" />
    <ref role="1TJDcQ" to="jfgh:3JXBM6C3FsA" resolve="Judgement" />
    <node concept="PrWs8" id="3w0n0hzjEBN" role="PzmwI">
      <ref role="PrY4T" node="3w0n0hziLce" resolve="QuantifierRule" />
    </node>
  </node>
  <node concept="1TIwiD" id="Vo$tzLEGtG">
    <property role="EcuMT" value="1069765272453957484" />
    <property role="TrG5h" value="ExistsElim" />
    <property role="34LRSv" value="∃E" />
    <property role="R4oN_" value="Existential Elimination" />
    <property role="3GE5qa" value="proof.rule" />
    <ref role="1TJDcQ" to="jfgh:3JXBM6C3FsA" resolve="Judgement" />
    <node concept="PrWs8" id="3w0n0hzjEBL" role="PzmwI">
      <ref role="PrY4T" node="3w0n0hziLce" resolve="QuantifierRule" />
    </node>
  </node>
  <node concept="1TIwiD" id="3w0n0hzg5do">
    <property role="EcuMT" value="4035326440038749016" />
    <property role="TrG5h" value="HerbrandProof" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Herbrand Proof" />
    <property role="3GE5qa" value="proof" />
    <ref role="1TJDcQ" to="jfgh:3w0n0hzgWvH" resolve="AbstractProof" />
    <node concept="PrWs8" id="3w0n0hzg5dp" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="3w0n0hzg5du" role="PzmwI">
      <ref role="PrY4T" to="jfgh:3JXBM6C5urr" resolve="Root" />
    </node>
  </node>
  <node concept="PlHQZ" id="3w0n0hziLce">
    <property role="EcuMT" value="4035326440039453454" />
    <property role="3GE5qa" value="proof.rule" />
    <property role="TrG5h" value="QuantifierRule" />
  </node>
</model>

