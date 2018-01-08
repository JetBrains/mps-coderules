<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:459ba7ac-2a61-40fc-bcc4-f13a7956cbeb(jetbrains.mps.logic.propositional.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="6" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="jfgh" ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
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
  <node concept="1TIwiD" id="3JXBM6C3FnV">
    <property role="EcuMT" value="4322786184247817723" />
    <property role="TrG5h" value="And" />
    <property role="34LRSv" value="and" />
    <property role="3GE5qa" value="sentence" />
    <property role="R4oN_" value="Conjunction" />
    <node concept="1TJgyj" id="3JXBM6C3FnW" role="1TKVEi">
      <property role="IQ2ns" value="4322786184247817724" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="conjunct" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
    <node concept="PrWs8" id="3JXBM6C3Fsj" role="PzmwI">
      <ref role="PrY4T" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
  </node>
  <node concept="1TIwiD" id="3JXBM6C3Cn8">
    <property role="EcuMT" value="4322786184247805384" />
    <property role="TrG5h" value="Constant" />
    <property role="3GE5qa" value="sentence" />
    <property role="R4oN_" value="Constant" />
    <node concept="PrWs8" id="3JXBM6C3Fso" role="PzmwI">
      <ref role="PrY4T" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
    <node concept="PrWs8" id="3JXBM6C3Cn9" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3JXBM6C3Fph">
    <property role="EcuMT" value="4322786184247817809" />
    <property role="TrG5h" value="If" />
    <property role="34LRSv" value="if" />
    <property role="3GE5qa" value="sentence" />
    <property role="R4oN_" value="Implication" />
    <node concept="1TJgyj" id="3JXBM6C3Fpi" role="1TKVEi">
      <property role="IQ2ns" value="4322786184247817810" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="antecedent" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
    <node concept="1TJgyj" id="3JXBM6C3Fpk" role="1TKVEi">
      <property role="IQ2ns" value="4322786184247817812" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="consequent" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
    <node concept="PrWs8" id="3JXBM6C3Fss" role="PzmwI">
      <ref role="PrY4T" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
  </node>
  <node concept="1TIwiD" id="3JXBM6C3Frx">
    <property role="EcuMT" value="4322786184247817953" />
    <property role="TrG5h" value="Iff" />
    <property role="34LRSv" value="iff" />
    <property role="3GE5qa" value="sentence" />
    <property role="R4oN_" value="Biconditional" />
    <node concept="1TJgyj" id="3JXBM6C3FrF" role="1TKVEi">
      <property role="IQ2ns" value="4322786184247817963" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="antecedent" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
    <node concept="1TJgyj" id="3JXBM6C3FrG" role="1TKVEi">
      <property role="IQ2ns" value="4322786184247817964" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="consequent" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
    <node concept="PrWs8" id="3JXBM6C3Fsu" role="PzmwI">
      <ref role="PrY4T" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
  </node>
  <node concept="1TIwiD" id="3JXBM6C3Cnn">
    <property role="EcuMT" value="4322786184247805399" />
    <property role="TrG5h" value="Not" />
    <property role="34LRSv" value="not" />
    <property role="3GE5qa" value="sentence" />
    <property role="R4oN_" value="Negation" />
    <node concept="1TJgyj" id="3JXBM6C3Cno" role="1TKVEi">
      <property role="IQ2ns" value="4322786184247805400" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
    <node concept="PrWs8" id="3JXBM6C3Fsw" role="PzmwI">
      <ref role="PrY4T" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
  </node>
  <node concept="1TIwiD" id="3JXBM6C3FoA">
    <property role="EcuMT" value="4322786184247817766" />
    <property role="TrG5h" value="Or" />
    <property role="34LRSv" value="or" />
    <property role="3GE5qa" value="sentence" />
    <property role="R4oN_" value="Disjunction" />
    <node concept="1TJgyj" id="3JXBM6C3Fp4" role="1TKVEi">
      <property role="IQ2ns" value="4322786184247817796" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="disjunct" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
    <node concept="PrWs8" id="3JXBM6C3Fsy" role="PzmwI">
      <ref role="PrY4T" node="3JXBM6C3Cnq" resolve="Sentence" />
    </node>
  </node>
  <node concept="PlHQZ" id="3JXBM6C3Cnq">
    <property role="EcuMT" value="4322786184247805402" />
    <property role="TrG5h" value="Sentence" />
    <property role="3GE5qa" value="sentence" />
    <node concept="PrWs8" id="4LBPYGV4d_8" role="PrDN$">
      <ref role="PrY4T" to="jfgh:4LBPYGV4cY1" resolve="LogicalSentence" />
    </node>
  </node>
</model>

